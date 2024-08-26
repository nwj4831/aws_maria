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

-- 테이블 데이터 sola.role:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `role` (`id`, `name`) VALUES
	(1, 'ROLE_USER'),
	(2, 'ROLE_ADMIN');

-- 테이블 데이터 sola.user:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `user` (`id`, `username`, `password`, `enabled`) VALUES
	(1, 'a', '$2a$10$WVOfnLAZID1gfKD/64FjN.bk16qcW0SENDlwHew.gjk13EhnK8FEa', b'1'),
	(2, 'b', '$2a$10$v3HzZvRwVULzgHXBJsOvIOpedvQQUULvGmHOKL7ErFti.5TuMuqHO', b'1');

-- 테이블 데이터 sola.user_role:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `user_role` (`user_id`, `role_id`) VALUES
	(1, 1),
	(2, 1),
	(1, 2);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
