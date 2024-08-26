-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.4.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- sola 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `sola` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `sola`;

-- 테이블 sola.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `title` varchar(50) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_board_user_id` (`user_id`),
  CONSTRAINT `fk_board_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='게시판';

-- 테이블 데이터 sola.board:~19 rows (대략적) 내보내기
INSERT IGNORE INTO `board` (`id`, `user_id`, `title`, `content`) VALUES
	(2, 1, '헬로2', '홍길동2'),
	(3, 1, 'a', 'a'),
	(4, 1, 'aa', 'aa'),
	(5, 1, 'aa', 'aa'),
	(6, 1, 'bb', 'bb'),
	(7, 1, '제목223', '내용23'),
	(8, 1, 'ㅇㅇㄹ', 'ㅇㅇㅇ'),
	(9, 1, '페이징', '처리도 배우나요\r\n'),
	(10, 1, '딜리트', '삭제도 배울거죠?'),
	(11, 1, '업데이트는 배우고 있응께', 'ㅇㅈ?\r\n'),
	(13, 1, '이게 왜 되누', 'ㄴ'),
	(14, 1, '이건 안도ㅟㅁ', 'ㅁㅁ'),
	(15, 1, 'aaa', 'aaaaaaa'),
	(19, 1, 'a', ''),
	(20, 1, 'aa', ''),
	(21, 1, '1', '11'),
	(22, 1, '잠온다', '졸리다'),
	(24, 1, 'qq', 'qq'),
	(25, 1, 'qq', 'qq');

-- 테이블 sola.role 구조 내보내기
CREATE TABLE IF NOT EXISTS `role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='관리자,사용자';

-- 테이블 데이터 sola.role:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `role` (`id`, `name`) VALUES
	(1, 'ROLE_USER'),
	(2, 'ROLE_ADMIN');

-- 테이블 sola.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `enabled` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='사용자';

-- 테이블 데이터 sola.user:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `user` (`id`, `username`, `password`, `enabled`) VALUES
	(1, 'a', '$2a$10$WVOfnLAZID1gfKD/64FjN.bk16qcW0SENDlwHew.gjk13EhnK8FEa', b'1'),
	(2, 'b', '$2a$10$v3HzZvRwVULzgHXBJsOvIOpedvQQUULvGmHOKL7ErFti.5TuMuqHO', b'1');

-- 테이블 sola.user_role 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_role` (
  `user_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_user_role_role_id` (`role_id`),
  CONSTRAINT `fk_user_role_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_role_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 sola.user_role:~3 rows (대략적) 내보내기
INSERT IGNORE INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(1, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
