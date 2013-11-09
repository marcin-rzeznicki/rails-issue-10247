-- MySQL dump 10.13  Distrib 5.6.14, for Linux (x86_64)
--
-- Host: localhost    Database: rails_issue_10247_development
-- ------------------------------------------------------
-- Server version	5.6.14-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `PRODUCTS_`
--

DROP TABLE IF EXISTS `PRODUCTS_`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCTS_` (
  `ID_`   INT(11) NOT NULL AUTO_INCREMENT,
  `NAME_` VARCHAR(255)
          COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
)
  ENGINE =InnoDB
  DEFAULT CHARSET =utf8
  COLLATE =utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `products`
--

DROP TABLE IF EXISTS `products`;
/*!50001 DROP VIEW IF EXISTS `products`*/;
SET @saved_cs_client = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `products` (
  `id`   TINYINT NOT NULL,
  `name` TINYINT NOT NULL
)
  ENGINE =MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` VARCHAR(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
)
  ENGINE =InnoDB
  DEFAULT CHARSET =utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `products`
--

/*!50001 DROP TABLE IF EXISTS `products`*/;
/*!50001 DROP VIEW IF EXISTS `products`*/;
/*!50001 SET @saved_cs_client = @@character_set_client */;
/*!50001 SET @saved_cs_results = @@character_set_results */;
/*!50001 SET @saved_col_connection = @@collation_connection */;
/*!50001 SET character_set_client = utf8 */;
/*!50001 SET character_set_results = utf8 */;
/*!50001 SET collation_connection = utf8_general_ci */;
/*!50001 CREATE ALGORITHM = UNDEFINED */
/*!50013 DEFINER =`root`@`localhost`
  SQL SECURITY DEFINER */
/*!50001 VIEW `products` AS
  SELECT
    `PRODUCTS_`.`ID_`   AS `id`,
    `PRODUCTS_`.`NAME_` AS `name`
  FROM `PRODUCTS_` */;
/*!50001 SET character_set_client = @saved_cs_client */;
/*!50001 SET character_set_results = @saved_cs_results */;
/*!50001 SET collation_connection = @saved_col_connection */;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2013-11-09  1:30:59
INSERT INTO schema_migrations (version) VALUES ('20131109000217');
