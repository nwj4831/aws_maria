package com.boot.board_240718.controller;

import com.boot.board_240718.repository.BoardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api")
public class BoardApiController {
    @Autowired
    private BoardRepository boardRepository;

    @Secured("ROLE_ADMIN")
    @DeleteMapping("/boards/{id}")
    public void deleteBoard(@PathVariable Long id){

        boardRepository.deleteById(id);
    }

}
