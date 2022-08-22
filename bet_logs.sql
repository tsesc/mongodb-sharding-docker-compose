-- MySQL dump 10.13  Distrib 5.7.37, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: fatgame_lab
-- ------------------------------------------------------
-- Server version	5.7.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bet_logs`
--

DROP TABLE IF EXISTS `bet_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bet_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `secret_key_id` int(11) NOT NULL,
  `merchant_game_id` int(11) DEFAULT NULL,
  `game_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_account` varchar(255) DEFAULT NULL COMMENT '在遊戲商的玩家帳號(user_account)',
  `category` varchar(255) DEFAULT NULL COMMENT '遊戲館(partner)',
  `match_id` varchar(255) DEFAULT NULL COMMENT '局號(game_id)',
  `game_bet_num` varchar(255) NOT NULL COMMENT '遊戲商的單號',
  `status` int(11) DEFAULT NULL COMMENT '注單狀態(status)',
  `bet_amount` decimal(20,6) DEFAULT NULL COMMENT '投注金額(bet_amount)',
  `net_income` decimal(20,6) DEFAULT NULL COMMENT '淨收入',
  `bet_return` decimal(20,6) DEFAULT NULL COMMENT '返回金額',
  `valid_amount` decimal(20,6) DEFAULT NULL COMMENT '有效投注(valid_amount)',
  `game_type` varchar(255) DEFAULT NULL COMMENT '遊戲種類(game_type)',
  `is_settled` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已結算(is_settled)',
  `raw_data` json DEFAULT NULL COMMENT '遊戲商原始資料(raw_data)',
  `bet_at` datetime NOT NULL COMMENT '投注時間(start_time)',
  `settled_at` datetime DEFAULT NULL COMMENT '結算時間(settled_at)',
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`,`bet_at`),
  UNIQUE KEY `index_bet_logs_on_secret_key_id_and_game_bet_num` (`game_bet_num`,`secret_key_id`,`bet_at`),
  KEY `index_bet_logs_on_created_at_and_merchant_game_id` (`merchant_game_id`,`category`,`user_account`,`created_at`),
  KEY `index_bet_logs_on_merchant_game_id_and_created_at` (`merchant_game_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4358413569 DEFAULT CHARSET=utf8mb4 COMMENT='遊戲紀錄';
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-21 23:04:17
