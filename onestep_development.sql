-- MySQL dump 10.13  Distrib 5.5.29, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: onestep_development
-- ------------------------------------------------------
-- Server version	5.5.29-0ubuntu0.12.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `activities`
--

DROP TABLE IF EXISTS `activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `trackable_id` int(11) DEFAULT NULL,
  `trackable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_activities_on_user_id` (`user_id`),
  KEY `index_activities_on_course_id` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activities`
--

LOCK TABLES `activities` WRITE;
/*!40000 ALTER TABLE `activities` DISABLE KEYS */;
INSERT INTO `activities` VALUES (1,'create',2,1,'Course','2015-09-16 13:31:55','2015-09-16 13:31:55',1),(2,'create',2,1,'Message','2015-09-17 13:45:38','2015-09-17 13:45:38',1),(3,'create',2,2,'Message','2015-09-17 13:48:06','2015-09-17 13:48:06',2),(4,'create',2,3,'Message','2015-09-17 13:52:23','2015-09-17 13:52:23',3),(5,'create',2,4,'Message','2015-09-17 14:07:55','2015-09-17 14:07:55',4),(6,'create',2,2,'Course','2015-09-17 14:18:24','2015-09-17 14:18:24',2),(7,'create',2,5,'Message','2015-09-17 14:24:44','2015-09-17 14:24:44',5),(8,'create',2,6,'Message','2015-09-18 02:22:08','2015-09-18 02:22:08',6),(9,'create',2,7,'Message','2015-09-18 02:23:51','2015-09-18 02:23:51',7),(10,'create',2,8,'Message','2015-09-18 02:27:27','2015-09-18 02:27:27',8),(11,'create',2,9,'Message','2015-09-18 02:31:03','2015-09-18 02:31:03',9),(12,'create',2,10,'Message','2015-09-18 02:36:55','2015-09-18 02:36:55',10),(13,'create',2,11,'Message','2015-09-18 02:38:43','2015-09-18 02:38:43',11),(14,'create',2,12,'Message','2015-09-18 02:40:36','2015-09-18 02:40:36',12),(15,'create',2,3,'Course','2015-09-19 08:11:52','2015-09-19 08:11:52',3),(16,'create',7,4,'Course','2015-09-23 11:43:21','2015-09-23 11:43:21',4),(17,'create',7,1,'Video','2015-09-23 13:59:43','2015-09-23 13:59:43',4),(18,'create',7,1,'SickCase','2015-09-24 13:40:23','2015-09-24 13:40:23',1),(19,'create',7,2,'SickCase','2015-09-24 13:43:22','2015-09-24 13:43:22',2),(20,'create',7,2,'Video','2015-09-25 07:49:01','2015-09-25 07:49:01',4),(21,'create',7,3,'Video','2015-09-26 08:08:45','2015-09-26 08:08:45',4),(22,'destroy',7,11,'SickHist','2015-09-26 10:18:59','2015-09-26 10:18:59',2),(23,'destroy',7,2,'Video','2015-09-26 14:56:40','2015-09-26 14:56:40',4),(24,'create',7,4,'Video','2015-09-26 14:56:49','2015-09-26 14:56:49',4),(25,'create',7,5,'Video','2015-09-26 14:57:59','2015-09-26 14:57:59',4);
/*!40000 ALTER TABLE `activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_cases`
--

DROP TABLE IF EXISTS `basic_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `main_desc` text COLLATE utf8_unicode_ci,
  `detail_desc` text COLLATE utf8_unicode_ci,
  `treat_desc` text COLLATE utf8_unicode_ci,
  `now_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `process` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `has_reply` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_cases`
--

LOCK TABLES `basic_cases` WRITE;
/*!40000 ALTER TABLE `basic_cases` DISABLE KEYS */;
INSERT INTO `basic_cases` VALUES (7,'huangzhe','huangzhe','huangzhe',NULL,'2015-10-03 14:40:57','2015-10-03 14:41:11',NULL,18,1,NULL,NULL,0),(8,NULL,NULL,NULL,NULL,'2015-10-03 14:44:37','2015-10-03 14:44:37',NULL,18,1,NULL,NULL,0),(9,NULL,NULL,NULL,NULL,'2015-10-03 14:45:49','2015-10-03 14:45:49',NULL,19,1,NULL,NULL,0),(10,NULL,NULL,NULL,NULL,'2015-10-03 14:47:31','2015-10-03 14:47:31',NULL,20,1,NULL,NULL,0),(11,NULL,NULL,NULL,NULL,'2015-10-06 13:12:10','2015-10-06 13:12:10',NULL,21,1,NULL,NULL,0),(12,NULL,NULL,NULL,NULL,'2015-10-06 13:15:07','2015-10-06 13:15:07',NULL,22,1,NULL,NULL,0),(13,'test13','ewqwe','','better','2015-10-06 13:20:04','2015-10-13 16:08:46',NULL,23,1,NULL,NULL,0),(14,'test2','','','better','2015-10-07 05:39:33','2015-10-07 12:41:38',NULL,24,1,NULL,NULL,0),(15,'test','','','better','2015-10-07 12:41:46','2015-10-07 12:47:18',NULL,24,1,NULL,NULL,0),(16,'test2','','','better','2015-10-07 12:47:23','2015-10-07 12:49:57',NULL,24,1,NULL,NULL,0),(17,'test3','','','better','2015-10-07 12:50:02','2015-10-07 12:52:42',NULL,24,1,NULL,NULL,0),(18,'test5','','','better','2015-10-07 12:52:52','2015-10-07 12:56:04',NULL,24,1,NULL,NULL,0),(19,'test6','','','better','2015-10-07 12:56:07','2015-10-07 12:59:31',NULL,24,1,NULL,NULL,0),(20,'test6','','','better','2015-10-07 12:59:37','2015-10-07 13:00:08',NULL,24,1,NULL,NULL,0),(21,NULL,NULL,NULL,NULL,'2015-10-07 13:00:12','2015-10-07 13:58:39',NULL,24,1,NULL,NULL,0),(22,'test','','','better','2015-10-07 13:58:41','2015-10-08 06:02:08',NULL,24,1,NULL,NULL,0),(23,'tesd','                                                              \r\n\r\n\r\n\r\n\r\n','','better','2015-10-10 15:46:34','2015-10-11 03:31:17',NULL,23,1,NULL,NULL,0),(24,'yrdyr','','','better','2015-10-11 03:32:03','2015-10-11 07:22:16',NULL,23,1,NULL,NULL,0),(25,'test13','ewqwe','','better','2015-10-14 13:24:09','2015-10-14 13:24:09',NULL,23,1,NULL,NULL,0),(26,'test13','ewqwe','','better','2015-10-14 13:24:10','2015-10-14 13:24:10',NULL,23,1,NULL,NULL,0),(27,'test13','ewqwe','','better','2015-10-14 13:24:19','2015-10-14 13:24:19',NULL,23,1,NULL,NULL,0),(28,'test13','ewqwe','','better','2015-10-14 13:24:19','2015-10-14 13:24:19',NULL,23,1,NULL,NULL,0),(29,'test13','ewqwe','','better','2015-10-14 13:26:33','2015-10-14 13:26:33',NULL,23,1,NULL,NULL,0),(30,'test13','ewqwe','','better','2015-10-14 13:26:36','2015-10-14 13:26:36',NULL,23,1,NULL,NULL,0),(31,'tesd','                                                              \r\n\r\n\r\n\r\n\r\n','','better','2015-10-14 13:26:46','2015-10-14 13:26:46',NULL,23,1,NULL,NULL,0),(32,'tesd','                                                              \r\n\r\n\r\n\r\n\r\n','','better','2015-10-14 13:26:48','2015-10-14 13:26:48',NULL,23,1,NULL,NULL,0),(33,'yrdyr1','','','better','2015-10-14 13:28:22','2015-10-14 13:29:25',NULL,23,1,NULL,NULL,0),(34,'yrdyr','','','better','2015-10-14 13:28:23','2015-10-14 13:28:23',NULL,23,1,NULL,NULL,0),(35,'yrdyr1','','','better','2015-10-14 14:18:01','2015-10-14 14:18:01',NULL,23,1,NULL,NULL,0),(36,'yrdyr1','','','better','2015-10-14 14:18:02','2015-10-14 14:18:02',NULL,23,1,NULL,NULL,0),(37,NULL,NULL,NULL,NULL,'2015-10-14 14:19:07','2015-10-14 14:19:07',NULL,25,1,NULL,NULL,0),(38,'tee','','','better','2015-10-14 14:20:06','2015-10-14 14:21:03',NULL,26,1,NULL,NULL,0),(39,'tee1','','','better','2015-10-14 14:21:11','2015-10-14 14:21:16',NULL,26,1,NULL,NULL,0),(40,'tee','','','better','2015-10-14 14:21:13','2015-10-14 14:21:13',NULL,26,1,NULL,NULL,0),(41,'tee1','','','better','2015-10-14 14:24:41','2015-10-14 14:24:41',NULL,26,1,NULL,NULL,0),(42,'tee1','','','better','2015-10-14 14:24:43','2015-10-14 14:24:43',NULL,26,1,NULL,NULL,0),(43,'tee','','','better','2015-10-14 14:51:30','2015-10-14 14:51:30',NULL,26,1,NULL,NULL,0),(44,'tee','','','better','2015-10-14 14:51:32','2015-10-14 14:51:32',NULL,26,1,NULL,NULL,0),(45,'tewet','','','better','2015-10-14 14:52:21','2015-10-19 03:17:26',NULL,27,1,1,'fee',0),(46,'tewet','','','better','2015-10-14 14:53:09','2015-10-14 14:54:36',NULL,27,1,NULL,NULL,0),(47,'tewet','','','better','2015-10-14 14:53:11','2015-10-18 02:02:43',NULL,27,1,1,'fee',0),(48,NULL,NULL,NULL,NULL,'2015-10-14 14:54:40','2015-10-14 14:54:40',NULL,27,1,NULL,NULL,0),(49,'tewet','','','better','2015-10-14 14:55:43','2015-10-19 14:13:43',NULL,27,1,1,'fee',0),(50,'tewet','','','better','2015-10-14 14:55:45','2015-10-14 14:55:45',NULL,27,1,NULL,NULL,0),(51,'tewet','','','better','2015-10-14 15:12:57','2015-10-19 03:22:07',NULL,27,1,NULL,NULL,0),(52,'hello1323','test123','test1232','better','2015-10-14 15:32:38','2015-10-14 15:34:45',NULL,28,1,NULL,NULL,0),(53,'hello2','test123','test1232','better','2015-10-14 15:34:01','2015-10-17 12:27:39',NULL,28,1,NULL,'free',0),(54,'hello1355','test123','test1232','normal','2015-10-14 15:34:59','2015-10-17 11:05:33',NULL,28,1,1,NULL,0),(55,'huang1355','test123','test1232','better','2015-10-15 12:56:04','2015-10-17 12:26:45',NULL,28,1,NULL,'free',0),(56,'hello thank','','','better','2015-10-17 08:43:17','2015-10-17 08:43:32',NULL,28,1,NULL,NULL,0),(57,'thank you','','','better','2015-10-17 09:02:43','2015-10-17 09:02:50',NULL,28,1,NULL,NULL,0),(58,NULL,NULL,NULL,NULL,'2015-10-17 09:36:40','2015-10-17 09:36:40',NULL,28,1,NULL,NULL,0),(59,NULL,NULL,NULL,NULL,'2015-10-17 09:36:52','2015-10-17 09:36:52',NULL,28,1,NULL,NULL,0),(60,NULL,NULL,NULL,NULL,'2015-10-17 09:40:34','2015-10-17 09:40:34',NULL,28,1,NULL,NULL,0),(61,'helloweq','','','better','2015-10-17 12:27:52','2015-10-17 12:27:59',NULL,28,1,NULL,NULL,0),(62,NULL,NULL,NULL,NULL,'2015-10-17 12:29:42','2015-10-17 12:29:42',NULL,28,1,NULL,NULL,0),(63,NULL,NULL,NULL,NULL,'2015-10-17 12:29:46','2015-10-17 12:29:46',NULL,28,1,NULL,NULL,0),(64,'ewqwe','','','better','2015-10-17 12:35:40','2015-10-17 12:35:46',NULL,28,1,NULL,NULL,0),(65,'ewwqe','dew','','better','2015-10-17 12:38:20','2015-10-17 12:38:27',NULL,28,1,NULL,NULL,0),(66,'huangzhe','','','better','2015-10-17 12:40:36','2015-10-17 12:47:15',NULL,28,1,1,'fee',0),(67,'ewqqwff','','','better','2015-10-17 12:47:24','2015-10-17 12:47:37',NULL,28,1,NULL,'free',0),(68,'hello huang','','','better','2015-10-17 13:41:17','2015-10-17 13:41:57',NULL,28,1,2,'fee',0),(69,'ok huang','','','better','2015-10-17 13:50:46','2015-10-17 14:29:40',NULL,28,1,2,'fee',0),(70,'hello zhe','','','better','2015-10-18 01:38:46','2015-10-18 01:39:30',NULL,28,1,NULL,NULL,0),(71,NULL,NULL,NULL,NULL,'2015-10-18 01:59:41','2015-10-18 01:59:41',NULL,29,1,NULL,NULL,0),(72,'yrer','rewer','erwer','better','2015-10-18 02:08:18','2015-10-18 02:22:46',NULL,27,1,1,'fee',0),(73,'yrer4342','rewer','erwer','better','2015-10-18 02:21:13','2015-10-19 03:17:58',NULL,27,1,NULL,'free',0),(74,'yrry','','','better','2015-10-19 03:18:32','2015-10-19 03:18:57',NULL,27,1,1,'fee',0),(75,'tewetewqe','','','better','2015-10-19 03:20:20','2015-10-19 03:20:29',NULL,27,1,NULL,NULL,0),(76,'tewet2','','','better','2015-10-19 03:30:01','2015-10-19 13:33:06',NULL,27,1,NULL,'free',0),(77,NULL,NULL,NULL,NULL,'2015-10-19 14:15:43','2015-10-19 14:15:43',NULL,30,1,NULL,NULL,0),(78,NULL,NULL,NULL,NULL,'2015-10-19 14:16:04','2015-10-19 14:16:04',NULL,30,1,NULL,NULL,0),(79,'hhlew','','','better','2015-10-19 14:24:46','2015-10-19 14:26:09',NULL,30,1,2,'fee',0),(80,'hewqw','','','better','2015-10-19 14:29:29','2015-10-19 14:30:50',NULL,30,1,NULL,'free',0),(81,'hee','','','better','2015-10-19 14:32:34','2015-10-19 14:33:02',NULL,30,1,1,'fee',0),(82,'ewq','','','better','2015-10-19 14:35:00','2015-10-19 14:37:25',NULL,30,1,NULL,'free',0),(83,'','','','better','2015-10-19 14:37:35','2015-10-19 14:37:53',NULL,30,1,2,'fee',0),(84,'','','','better','2015-10-19 14:42:34','2015-10-19 14:46:49',NULL,30,1,1,'fee',0),(85,'','','','better','2015-10-19 14:46:21','2015-10-19 14:46:32',NULL,30,1,1,'fee',0),(86,'      ewq','','','better','2015-10-19 14:47:03','2015-10-20 12:23:40',NULL,30,1,2,'fee',0),(87,NULL,NULL,NULL,NULL,'2015-10-20 12:28:38','2015-10-20 12:28:38',NULL,30,1,NULL,NULL,0),(88,NULL,NULL,NULL,NULL,'2015-10-20 12:31:02','2015-10-20 12:31:02',NULL,30,1,NULL,NULL,0),(89,NULL,NULL,NULL,NULL,'2015-10-20 14:00:23','2015-10-20 14:00:23',NULL,30,1,NULL,NULL,0),(90,'hewqle','','','better','2015-10-20 14:00:29','2015-10-20 14:00:34',NULL,30,1,NULL,NULL,0),(91,'eqw','','','normal','2015-10-20 14:21:04','2015-10-20 14:21:25',NULL,31,1,NULL,NULL,0),(92,'hi','heqwe','','normal','2015-10-21 12:30:38','2015-10-22 11:38:05',NULL,32,1,1,'fee',0),(93,'hewq','','','better','2015-10-22 14:12:34','2015-10-23 02:54:59',NULL,32,1,NULL,'free',0),(94,'ewqw','','','better','2015-10-23 02:55:44','2015-10-23 03:09:18',NULL,32,1,NULL,'free',0),(95,'fdsdfewer','','','better','2015-10-23 03:09:40','2015-10-24 07:19:57',NULL,32,1,1,'fee',0),(96,'heelo','','','better','2015-10-24 10:15:09','2015-10-24 10:15:28',NULL,32,1,NULL,'free',0),(97,'头痛','wqe','wqe','better','2015-10-24 10:16:55','2015-10-25 02:09:01',NULL,32,1,NULL,'free',0),(98,'eqw','','','better','2015-10-24 12:12:33','2015-10-24 12:24:13',NULL,32,1,12,'fee',0),(99,'test','','','better','2015-10-25 02:09:08','2015-10-25 03:32:08',NULL,32,1,NULL,'free',0),(100,'hewqle2','','','better','2015-10-25 03:33:17','2015-10-26 13:56:28',NULL,32,1,10,'love',0),(101,'31223','','','better','2015-10-26 13:57:13','2015-10-30 02:23:08',NULL,32,1,23,'fee',1),(102,'test','','','better','2015-10-26 13:57:55','2015-10-26 13:58:09',NULL,32,1,1,'fee',0),(103,'hllo','','','better','2015-10-26 13:58:49','2015-10-26 13:59:13',NULL,32,1,1,'plus',0),(104,'fee','','','better','2015-10-29 13:43:14','2015-10-29 13:44:00',NULL,32,1,23,'plus',0),(105,'ct1','','','better','2015-10-29 14:10:12','2015-10-30 02:17:21',NULL,32,1,23,'plus',1),(106,'ewqe','','','better','2015-10-31 13:10:33','2015-10-31 16:17:05',NULL,32,1,16,'love',1),(107,'qwew','','','better','2015-10-31 16:01:07','2015-10-31 16:01:45',NULL,32,1,16,'fee',0),(108,'kknd','','','better','2015-10-31 16:03:05','2015-10-31 16:20:41',NULL,32,1,16,'plus',1),(109,'xxqwe','','','better','2015-10-31 16:03:37','2015-10-31 16:04:04',NULL,32,1,16,'fee',0),(110,'xsa','','','better','2015-10-31 16:04:09','2015-10-31 16:04:22',NULL,32,1,NULL,'free',0),(111,'plusto','','','better','2015-10-31 16:09:25','2015-11-01 02:28:30',NULL,32,1,16,'plus',1),(112,NULL,NULL,NULL,NULL,'2015-10-31 16:29:54','2015-10-31 16:29:54',NULL,33,1,NULL,NULL,0),(113,'teqeqw','','','better','2015-11-01 02:33:10','2015-11-01 02:34:29',NULL,32,1,NULL,'free',0),(114,'dsa','','','better','2015-11-01 02:34:41','2015-11-01 02:36:18',NULL,32,1,16,'fee',0),(115,'tewewr','','','better','2015-11-01 02:37:01','2015-11-01 02:37:26',NULL,32,1,16,'fee',0),(116,'ewqe','','','better','2015-11-01 02:39:20','2015-11-01 02:39:41',NULL,32,1,27,'love',0),(117,'tewtw','','','better','2015-11-01 03:03:53','2015-11-01 03:04:25',NULL,32,1,NULL,'free',0);
/*!40000 ALTER TABLE `basic_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `basic_infos`
--

DROP TABLE IF EXISTS `basic_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `basic_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` float DEFAULT NULL,
  `weight` float DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edited` tinyint(1) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `smokeinfo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `drink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `smoke_account` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basic_infos`
--

LOCK TABLES `basic_infos` WRITE;
/*!40000 ALTER TABLE `basic_infos` DISABLE KEYS */;
INSERT INTO `basic_infos` VALUES (1,'黄壮壮',175,65,'male',0,4,'2015-09-21 12:26:23','2015-09-22 14:21:17',NULL,NULL,NULL,NULL),(2,'王小妞',175,64,'female',0,5,'2015-09-22 14:52:01','2015-09-22 14:52:59',NULL,NULL,NULL,NULL),(3,'李刚',175,64,'male',1,7,'2015-09-23 11:32:05','2015-09-23 14:08:32',31,NULL,NULL,NULL),(4,'李刚',175,64,'male',1,8,'2015-09-23 14:09:09','2015-09-23 14:09:18',31,NULL,NULL,NULL),(5,'李刚',175,64,'male',1,9,'2015-09-26 15:30:10','2015-09-26 15:31:06',31,NULL,NULL,NULL),(6,'李刚',175,64,'male',1,10,'2015-09-26 16:00:09','2015-09-26 16:00:18',31,NULL,NULL,NULL),(7,'李刚',175,64,'male',1,11,'2015-09-27 01:44:06','2015-09-27 01:44:30',30,NULL,NULL,NULL),(8,'黄哲',175,64,'male',1,12,'2015-09-27 01:45:13','2015-09-28 13:42:46',35,'never','sometimes',NULL),(9,'李刚',175,64,'male',0,13,'2015-09-29 12:27:13','2015-09-29 12:27:13',30,NULL,NULL,NULL),(10,'李刚',175,64,'male',0,14,'2015-09-29 12:30:06','2015-09-29 12:30:06',30,NULL,NULL,NULL),(11,'李刚',175,64,'male',0,15,'2015-09-30 07:51:45','2015-09-30 07:51:45',30,NULL,NULL,NULL),(12,'李刚',175,64,'male',0,16,'2015-09-30 07:52:34','2015-09-30 07:52:34',30,NULL,NULL,NULL),(13,'李刚',175,64,'male',0,17,'2015-09-30 08:18:57','2015-09-30 08:18:57',30,NULL,NULL,NULL),(14,'李刚',175,64,'male',1,18,'2015-09-30 08:19:32','2015-10-01 15:41:25',30,'never','never',NULL),(15,'李刚',175,64,'male',0,19,'2015-10-03 14:45:49','2015-10-03 14:45:49',30,NULL,NULL,NULL),(16,'李刚',175,64,'male',0,20,'2015-10-03 14:47:31','2015-10-03 14:47:31',30,NULL,NULL,NULL),(17,'李刚',175,64,'male',0,21,'2015-10-06 13:12:10','2015-10-06 13:12:10',30,NULL,NULL,NULL),(18,'李刚',175,64,'male',0,22,'2015-10-06 13:15:07','2015-10-06 13:15:07',30,NULL,NULL,NULL),(19,'李刚',175,64,'male',0,23,'2015-10-06 13:20:04','2015-10-06 13:20:04',30,NULL,NULL,NULL),(20,'李刚',175,64,'male',0,24,'2015-10-07 05:39:33','2015-10-07 05:39:33',30,NULL,NULL,NULL),(21,'李刚',175,64,'male',0,25,'2015-10-14 14:19:07','2015-10-14 14:19:07',30,NULL,NULL,NULL),(22,'李刚',175,64,'male',0,26,'2015-10-14 14:20:06','2015-10-14 14:20:06',30,NULL,NULL,NULL),(23,'李刚',175,64,'male',0,27,'2015-10-14 14:52:21','2015-10-14 14:52:21',30,NULL,NULL,NULL),(24,'李刚',175,64,'male',0,28,'2015-10-14 15:32:38','2015-10-14 15:32:38',30,NULL,NULL,NULL),(25,'李刚',175,64,'male',0,29,'2015-10-18 01:59:41','2015-10-18 01:59:41',30,NULL,NULL,NULL),(26,'李刚',175,64,'male',0,30,'2015-10-19 14:15:43','2015-10-19 14:15:43',30,NULL,NULL,NULL),(27,'李刚',175,64,'male',0,31,'2015-10-20 14:21:04','2015-10-20 14:21:04',30,NULL,NULL,NULL),(28,'李明达',175,64,'male',1,32,'2015-10-21 12:30:38','2015-10-22 11:50:02',35,'sometimes','never',5),(29,'李刚',175,64,'male',0,33,'2015-10-31 16:29:54','2015-10-31 16:29:54',30,NULL,NULL,NULL);
/*!40000 ALTER TABLE `basic_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_images`
--

DROP TABLE IF EXISTS `blog_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `blog_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_images`
--

LOCK TABLES `blog_images` WRITE;
/*!40000 ALTER TABLE `blog_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `body_signs`
--

DROP TABLE IF EXISTS `body_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `body_signs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `temperature` int(11) DEFAULT NULL,
  `pulse` int(11) DEFAULT NULL,
  `high_pressure` int(11) DEFAULT NULL,
  `low_pressure` int(11) DEFAULT NULL,
  `swelling` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basic_case_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status_name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `body_signs`
--

LOCK TABLES `body_signs` WRITE;
/*!40000 ALTER TABLE `body_signs` DISABLE KEYS */;
INSERT INTO `body_signs` VALUES (1,45,60,120,80,'no',10,'2015-10-06 05:49:03','2015-10-06 12:22:08',NULL),(2,37,56,11,0,'noswelling',13,'2015-10-06 13:20:04','2015-10-13 14:17:25','xiongmen huxikunnan '),(3,57,NULL,NULL,NULL,'no',14,'2015-10-07 05:39:33','2015-10-07 05:56:20','xiongmen huxikunnan yanqianfahei '),(4,NULL,NULL,NULL,NULL,'no',15,'2015-10-07 12:41:46','2015-10-07 12:47:16',''),(5,NULL,NULL,NULL,NULL,'no',16,'2015-10-07 12:47:23','2015-10-07 12:49:43','xiongmen fare '),(6,NULL,NULL,NULL,NULL,'no',17,'2015-10-07 12:50:02','2015-10-07 12:52:40',''),(7,NULL,NULL,NULL,NULL,'no',18,'2015-10-07 12:52:52','2015-10-07 12:56:03',''),(8,NULL,NULL,NULL,NULL,'',19,'2015-10-07 12:56:07','2015-10-07 12:56:07',''),(9,NULL,NULL,NULL,NULL,'no',20,'2015-10-07 12:59:37','2015-10-07 13:00:06',''),(10,NULL,NULL,NULL,NULL,'',21,'2015-10-07 13:00:12','2015-10-07 13:00:12',''),(11,NULL,NULL,NULL,NULL,'no',22,'2015-10-07 13:58:41','2015-10-08 06:02:19','xiongmen xinji fare '),(12,43,NULL,NULL,NULL,'no',23,'2015-10-10 15:46:34','2015-10-11 03:30:41','xiongmen xiongtong yanqianfahei '),(13,NULL,NULL,NULL,NULL,'worseswelling',24,'2015-10-11 03:32:03','2015-10-13 15:32:13',''),(14,37,56,11,0,'noswelling',29,'2015-10-14 13:26:33','2015-10-14 13:26:33','xiongmen huxikunnan '),(15,37,56,11,0,'noswelling',30,'2015-10-14 13:26:36','2015-10-14 13:26:36','xiongmen huxikunnan '),(16,43,NULL,NULL,NULL,'no',31,'2015-10-14 13:26:46','2015-10-14 13:26:46','xiongmen xiongtong yanqianfahei '),(17,43,NULL,NULL,NULL,'no',32,'2015-10-14 13:26:48','2015-10-14 13:26:48','xiongmen xiongtong yanqianfahei '),(18,NULL,NULL,NULL,NULL,'worseswelling',33,'2015-10-14 13:28:22','2015-10-14 13:28:22',''),(19,NULL,NULL,NULL,NULL,'worseswelling',34,'2015-10-14 13:28:23','2015-10-14 13:28:23',''),(20,NULL,NULL,NULL,NULL,'worseswelling',35,'2015-10-14 14:18:01','2015-10-14 14:18:01',''),(21,NULL,NULL,NULL,NULL,'worseswelling',36,'2015-10-14 14:18:02','2015-10-14 14:18:02',''),(22,NULL,NULL,NULL,NULL,'',37,'2015-10-14 14:19:07','2015-10-14 14:19:07',''),(23,0,0,32,45,'noswelling',38,'2015-10-14 14:20:06','2015-10-14 14:20:58','yanqianfahei '),(24,0,0,32,45,'noswelling',39,'2015-10-14 14:21:11','2015-10-14 14:21:11','yanqianfahei '),(25,0,0,32,45,'noswelling',40,'2015-10-14 14:21:13','2015-10-14 14:21:13','yanqianfahei '),(26,0,0,32,45,'noswelling',41,'2015-10-14 14:24:41','2015-10-14 14:24:41','yanqianfahei '),(27,0,0,32,45,'noswelling',42,'2015-10-14 14:24:43','2015-10-14 14:24:43','yanqianfahei '),(28,0,0,32,45,'noswelling',43,'2015-10-14 14:51:30','2015-10-14 14:51:30','yanqianfahei '),(29,0,0,32,45,'noswelling',44,'2015-10-14 14:51:32','2015-10-14 14:51:32','yanqianfahei '),(30,38,33,33,33,'littleswelling',45,'2015-10-14 14:52:21','2015-10-14 14:52:51','huxikunnan xinji '),(31,38,33,33,33,'noswelling',46,'2015-10-14 14:53:09','2015-10-14 14:54:31','huxikunnan xinji '),(32,38,33,33,33,'noswelling',47,'2015-10-14 14:53:11','2015-10-14 14:54:13','huxikunnan xinji '),(33,NULL,NULL,NULL,NULL,'',48,'2015-10-14 14:54:40','2015-10-14 14:54:40',''),(34,38,33,33,33,'noswelling',49,'2015-10-14 14:55:43','2015-10-14 14:55:43','huxikunnan xinji '),(35,38,33,33,33,'noswelling',50,'2015-10-14 14:55:45','2015-10-14 14:55:45','huxikunnan xinji '),(36,38,33,33,33,'noswelling',51,'2015-10-14 15:15:08','2015-10-14 15:15:08','huxikunnan xinji '),(37,43,NULL,NULL,NULL,'noswelling',52,'2015-10-14 15:32:38','2015-10-14 15:33:44','yanqianfahei '),(38,43,NULL,NULL,NULL,'noswelling',53,'2015-10-14 15:34:01','2015-10-15 13:46:37','xinji yanqianfahei '),(39,43,NULL,NULL,NULL,'noswelling',54,'2015-10-14 15:34:59','2015-10-14 15:34:59','yanqianfahei '),(40,43,NULL,NULL,NULL,'noswelling',55,'2015-10-15 12:56:04','2015-10-15 12:56:04','yanqianfahei '),(41,NULL,NULL,NULL,NULL,'',56,'2015-10-17 08:43:17','2015-10-17 08:43:17',''),(42,NULL,NULL,NULL,NULL,'noswelling',57,'2015-10-17 09:02:43','2015-10-17 09:02:53',''),(43,NULL,NULL,NULL,NULL,'',58,'2015-10-17 09:36:40','2015-10-17 09:36:40',''),(44,NULL,NULL,NULL,NULL,'',59,'2015-10-17 09:36:52','2015-10-17 09:36:52',''),(45,NULL,NULL,NULL,NULL,'',60,'2015-10-17 09:40:34','2015-10-17 09:40:34',''),(46,0,NULL,NULL,NULL,'noswelling',61,'2015-10-17 12:27:52','2015-10-17 12:28:04',''),(47,NULL,NULL,NULL,NULL,'',62,'2015-10-17 12:29:42','2015-10-17 12:29:42',''),(48,NULL,NULL,NULL,NULL,'',63,'2015-10-17 12:29:46','2015-10-17 12:29:46',''),(49,NULL,NULL,NULL,NULL,'noswelling',64,'2015-10-17 12:35:40','2015-10-17 12:35:49',''),(50,NULL,NULL,NULL,NULL,'noswelling',65,'2015-10-17 12:38:20','2015-10-17 12:38:28',''),(51,NULL,NULL,NULL,NULL,'noswelling',66,'2015-10-17 12:40:36','2015-10-17 12:40:47',''),(52,NULL,NULL,NULL,NULL,'noswelling',67,'2015-10-17 12:47:25','2015-10-17 12:47:32',''),(53,NULL,NULL,NULL,NULL,'noswelling',68,'2015-10-17 13:41:17','2015-10-17 13:41:32',''),(54,NULL,NULL,NULL,NULL,'noswelling',69,'2015-10-17 13:50:46','2015-10-17 13:51:16',''),(55,NULL,NULL,NULL,NULL,'noswelling',70,'2015-10-18 01:38:46','2015-10-18 01:38:57','xiongmen xinji '),(56,NULL,NULL,NULL,NULL,'',71,'2015-10-18 01:59:41','2015-10-18 01:59:41',''),(57,NULL,NULL,NULL,NULL,'noswelling',72,'2015-10-18 02:08:18','2015-10-18 02:17:23','xiongmen xiongtong '),(58,NULL,NULL,NULL,NULL,'noswelling',73,'2015-10-18 02:21:13','2015-10-18 02:21:13','xiongmen xiongtong '),(59,NULL,NULL,NULL,NULL,'noswelling',74,'2015-10-19 03:18:33','2015-10-19 03:18:41','xiongtong '),(60,38,33,33,33,'noswelling',75,'2015-10-19 03:20:20','2015-10-19 03:20:27','huxikunnan xinji '),(61,38,33,33,33,'noswelling',76,'2015-10-19 03:30:01','2015-10-19 13:32:17','huxikunnan xinji '),(62,NULL,NULL,NULL,NULL,'',77,'2015-10-19 14:15:43','2015-10-19 14:15:43',''),(63,NULL,NULL,NULL,NULL,'',78,'2015-10-19 14:16:04','2015-10-19 14:16:04',''),(64,NULL,NULL,NULL,NULL,'noswelling',79,'2015-10-19 14:24:46','2015-10-19 14:24:56',''),(65,32,NULL,NULL,NULL,'noswelling',80,'2015-10-19 14:29:29','2015-10-19 14:29:48',''),(66,NULL,NULL,NULL,NULL,'noswelling',81,'2015-10-19 14:32:34','2015-10-19 14:32:41',''),(67,NULL,NULL,NULL,NULL,'noswelling',82,'2015-10-19 14:35:00','2015-10-19 14:35:06',''),(68,NULL,NULL,NULL,NULL,'noswelling',83,'2015-10-19 14:37:35','2015-10-19 14:37:45',''),(69,NULL,NULL,NULL,NULL,'noswelling',84,'2015-10-19 14:42:34','2015-10-19 14:42:37',''),(70,NULL,NULL,NULL,NULL,'noswelling',85,'2015-10-19 14:46:21','2015-10-19 14:46:26',''),(71,NULL,NULL,NULL,NULL,'noswelling',86,'2015-10-19 14:47:03','2015-10-19 14:47:08',''),(72,NULL,NULL,NULL,NULL,'',87,'2015-10-20 12:28:38','2015-10-20 12:28:38',''),(73,NULL,NULL,NULL,NULL,'',88,'2015-10-20 12:31:02','2015-10-20 12:31:02',''),(74,NULL,NULL,NULL,NULL,'',89,'2015-10-20 14:00:23','2015-10-20 14:00:23',''),(75,NULL,NULL,NULL,NULL,'noswelling',90,'2015-10-20 14:00:29','2015-10-20 14:00:36',''),(76,NULL,NULL,NULL,NULL,'',91,'2015-10-20 14:21:04','2015-10-20 14:21:04',''),(77,0,0,30,60,'littleswelling',92,'2015-10-21 12:30:38','2015-10-22 11:36:57','xiongmen yanqianfahei '),(78,NULL,NULL,NULL,NULL,'noswelling',93,'2015-10-22 14:12:34','2015-10-23 02:12:00',''),(79,NULL,NULL,NULL,NULL,'noswelling',94,'2015-10-23 02:55:44','2015-10-23 02:56:05',''),(80,NULL,NULL,NULL,NULL,'noswelling',95,'2015-10-23 03:09:40','2015-10-23 03:09:49',''),(81,NULL,NULL,NULL,NULL,'noswelling',96,'2015-10-24 10:15:09','2015-10-24 10:15:18',''),(82,NULL,NULL,NULL,NULL,'noswelling',97,'2015-10-24 10:16:55','2015-10-25 02:08:38',''),(83,NULL,NULL,NULL,NULL,'noswelling',98,'2015-10-24 12:12:33','2015-10-24 12:23:44',''),(84,NULL,NULL,NULL,NULL,'noswelling',99,'2015-10-25 02:09:08','2015-10-25 03:29:59',''),(85,NULL,NULL,NULL,NULL,'noswelling',100,'2015-10-25 03:33:17','2015-10-25 03:33:32',''),(86,NULL,NULL,NULL,NULL,'noswelling',101,'2015-10-26 13:57:13','2015-10-26 15:27:03',''),(87,NULL,NULL,NULL,NULL,'noswelling',102,'2015-10-26 13:57:55','2015-10-26 13:58:04',''),(88,NULL,NULL,NULL,NULL,'noswelling',103,'2015-10-26 13:58:49','2015-10-26 13:58:58',''),(89,NULL,NULL,NULL,NULL,'noswelling',104,'2015-10-29 13:43:14','2015-10-29 13:43:21',''),(90,NULL,NULL,NULL,NULL,'noswelling',105,'2015-10-29 14:10:12','2015-10-29 14:10:20',''),(91,NULL,NULL,NULL,NULL,'noswelling',106,'2015-10-31 13:10:33','2015-10-31 13:10:51',''),(92,NULL,NULL,NULL,NULL,'noswelling',107,'2015-10-31 16:01:07','2015-10-31 16:01:15',''),(93,NULL,NULL,NULL,NULL,'noswelling',108,'2015-10-31 16:03:05','2015-10-31 16:03:12',''),(94,NULL,NULL,NULL,NULL,'noswelling',109,'2015-10-31 16:03:37','2015-10-31 16:03:46',''),(95,NULL,NULL,NULL,NULL,'noswelling',110,'2015-10-31 16:04:09','2015-10-31 16:04:16',''),(96,NULL,NULL,NULL,NULL,'noswelling',111,'2015-10-31 16:09:25','2015-10-31 16:28:55',''),(97,NULL,NULL,NULL,NULL,'',112,'2015-10-31 16:29:54','2015-10-31 16:29:54',''),(98,0,NULL,NULL,NULL,'noswelling',113,'2015-11-01 02:33:10','2015-11-01 02:33:23',''),(99,NULL,NULL,NULL,NULL,'noswelling',114,'2015-11-01 02:34:41','2015-11-01 02:34:54',''),(100,NULL,NULL,NULL,NULL,'noswelling',115,'2015-11-01 02:37:01','2015-11-01 02:37:14',''),(101,NULL,NULL,NULL,NULL,'noswelling',116,'2015-11-01 02:39:20','2015-11-01 02:39:28',''),(102,NULL,NULL,NULL,NULL,'noswelling',117,'2015-11-01 03:03:53','2015-11-01 03:04:19','');
/*!40000 ALTER TABLE `body_signs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `collaboratings`
--

DROP TABLE IF EXISTS `collaboratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `collaboratings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_collaboratings_on_course_id` (`course_id`),
  KEY `index_collaboratings_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collaboratings`
--

LOCK TABLES `collaboratings` WRITE;
/*!40000 ALTER TABLE `collaboratings` DISABLE KEYS */;
/*!40000 ALTER TABLE `collaboratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `commentable_id` int(11) DEFAULT NULL,
  `commentable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_commentable_id_and_commentable_type` (`commentable_id`,`commentable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'helloworld',NULL,'2015-09-16 13:31:55','2015-09-16 13:31:55','helloworld','49effcb75c5.jpg',2,NULL,NULL),(2,'hua',NULL,'2015-09-17 14:18:24','2015-09-17 14:18:24','hua','3aa70b42f13.png',2,NULL,NULL),(3,'xhuang',NULL,'2015-09-19 08:11:52','2015-09-19 08:11:52','xhuang','84d105f6e33.png',2,NULL,NULL),(4,'xixi',NULL,'2015-09-23 11:43:21','2015-09-26 14:58:01','xixi','21e8c90f8f0.jpg',7,NULL,NULL);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diabetes`
--

DROP TABLE IF EXISTS `diabetes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diabetes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ishave` tinyint(1) DEFAULT NULL,
  `limosis` int(11) DEFAULT NULL,
  `after_meal` int(11) DEFAULT NULL,
  `diagnosis_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diabetes`
--

LOCK TABLES `diabetes` WRITE;
/*!40000 ALTER TABLE `diabetes` DISABLE KEYS */;
INSERT INTO `diabetes` VALUES (1,0,60,120,'2001-02-26 16:00:00',16,'2015-09-30 07:52:34','2015-09-30 08:20:41'),(2,0,60,120,'2001-02-03 00:00:00',17,'2015-09-30 08:18:57','2015-09-30 08:18:57'),(3,0,60,120,'2001-02-20 16:00:00',18,'2015-09-30 08:19:32','2015-09-30 08:20:22'),(4,0,60,120,'2001-02-03 00:00:00',19,'2015-10-03 14:45:49','2015-10-03 14:45:49'),(5,0,60,120,'2001-02-03 00:00:00',20,'2015-10-03 14:47:31','2015-10-03 14:47:31'),(6,0,60,120,'2001-02-03 00:00:00',21,'2015-10-06 13:12:10','2015-10-06 13:12:10'),(7,0,60,120,'2001-02-03 00:00:00',22,'2015-10-06 13:15:07','2015-10-06 13:15:07'),(8,0,60,120,'2001-02-03 00:00:00',23,'2015-10-06 13:20:04','2015-10-06 13:20:04'),(9,0,60,120,'2001-02-03 00:00:00',24,'2015-10-07 05:39:33','2015-10-07 05:39:33'),(10,0,60,120,'2001-02-03 00:00:00',25,'2015-10-14 14:19:07','2015-10-14 14:19:07'),(11,0,60,120,'2001-02-03 00:00:00',26,'2015-10-14 14:20:06','2015-10-14 14:20:06'),(12,0,60,120,'2001-02-03 00:00:00',27,'2015-10-14 14:52:21','2015-10-14 14:52:21'),(13,0,60,120,'2001-02-03 00:00:00',28,'2015-10-14 15:32:38','2015-10-14 15:32:38'),(14,0,60,120,'2001-02-03 00:00:00',29,'2015-10-18 01:59:41','2015-10-18 01:59:41'),(15,0,60,120,'2001-02-03 00:00:00',30,'2015-10-19 14:15:43','2015-10-19 14:15:43'),(16,0,60,120,'2001-02-03 00:00:00',31,'2015-10-20 14:21:04','2015-10-20 14:21:04'),(17,1,60,120,'2001-02-02 16:00:00',32,'2015-10-21 12:30:38','2015-10-22 11:34:42'),(18,0,60,120,'2001-02-03 00:00:00',33,'2015-10-31 16:29:54','2015-10-31 16:29:54');
/*!40000 ALTER TABLE `diabetes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doctors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `use_gravatar` tinyint(1) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `hospital` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `room` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `rank` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `sex` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (16,'zhenghong',NULL,'testtest','2015-10-27 11:54:10','2015-10-27 11:54:10',NULL,'http://www.sina.com',31,'fuwai','xinxueguan','zhuren',0,'male',NULL),(23,'Jack',NULL,'test','2015-10-28 13:24:21','2015-10-28 13:24:21',NULL,'http://www.sina.com',23,'fuwai','xinxueguan','yishi',0,'male',NULL),(24,'Rose',NULL,'test','2015-10-28 13:33:14','2015-10-28 13:33:14',NULL,'http://www.sina.com',24,'fuwai','xinxueguan','yishi',0,'male',NULL),(27,'Huangzhe',NULL,'test','2015-11-01 02:21:18','2015-11-01 02:21:18',NULL,'http://www.sina.com',33,'fuwai','xinxueguan','yishi',0,'male',NULL);
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hyperlipidemia`
--

DROP TABLE IF EXISTS `hyperlipidemia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hyperlipidemia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ishave` tinyint(1) DEFAULT NULL,
  `diagnosis_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hyperlipidemia`
--

LOCK TABLES `hyperlipidemia` WRITE;
/*!40000 ALTER TABLE `hyperlipidemia` DISABLE KEYS */;
INSERT INTO `hyperlipidemia` VALUES (1,1,'2008-03-12 16:00:00',18,'2015-09-30 08:19:32','2015-09-30 08:24:15'),(2,0,'2001-02-03 00:00:00',19,'2015-10-03 14:45:49','2015-10-03 14:45:49'),(3,0,'2001-02-03 00:00:00',20,'2015-10-03 14:47:31','2015-10-03 14:47:31'),(4,0,'2001-02-03 00:00:00',21,'2015-10-06 13:12:10','2015-10-06 13:12:10'),(5,0,'2001-02-03 00:00:00',22,'2015-10-06 13:15:07','2015-10-06 13:15:07'),(6,0,'2001-02-03 00:00:00',23,'2015-10-06 13:20:04','2015-10-06 13:20:04'),(7,0,'2001-02-03 00:00:00',24,'2015-10-07 05:39:33','2015-10-07 05:39:33'),(8,0,'2001-02-03 00:00:00',25,'2015-10-14 14:19:07','2015-10-14 14:19:07'),(9,0,'2001-02-03 00:00:00',26,'2015-10-14 14:20:06','2015-10-14 14:20:06'),(10,0,'2001-02-03 00:00:00',27,'2015-10-14 14:52:21','2015-10-14 14:52:21'),(11,0,'2001-02-03 00:00:00',28,'2015-10-14 15:32:38','2015-10-14 15:32:38'),(12,0,'2001-02-03 00:00:00',29,'2015-10-18 01:59:41','2015-10-18 01:59:41'),(13,0,'2001-02-03 00:00:00',30,'2015-10-19 14:15:43','2015-10-19 14:15:43'),(14,0,'2001-02-03 00:00:00',31,'2015-10-20 14:21:04','2015-10-20 14:21:04'),(15,0,'2001-02-03 00:00:00',32,'2015-10-21 12:30:38','2015-10-21 12:30:38'),(16,0,'2001-02-03 00:00:00',33,'2015-10-31 16:29:54','2015-10-31 16:29:54');
/*!40000 ALTER TABLE `hyperlipidemia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hypertensions`
--

DROP TABLE IF EXISTS `hypertensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hypertensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ishave` tinyint(1) DEFAULT NULL,
  `before_high` int(11) DEFAULT NULL,
  `before_low` int(11) DEFAULT NULL,
  `now_high` int(11) DEFAULT NULL,
  `now_low` int(11) DEFAULT NULL,
  `diagnosis_date` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hypertensions`
--

LOCK TABLES `hypertensions` WRITE;
/*!40000 ALTER TABLE `hypertensions` DISABLE KEYS */;
INSERT INTO `hypertensions` VALUES (1,0,140,60,120,60,'2006-11-10 16:00:00',14,'2015-09-29 12:30:06','2015-09-29 13:55:07'),(2,0,120,60,120,60,'2001-02-03 00:00:00',15,'2015-09-30 07:51:45','2015-09-30 07:51:45'),(3,0,120,60,120,60,'2001-02-03 00:00:00',16,'2015-09-30 07:52:34','2015-09-30 07:52:34'),(4,0,120,60,120,60,'2001-02-03 00:00:00',17,'2015-09-30 08:18:57','2015-09-30 08:18:57'),(5,0,120,60,120,60,'2001-02-03 00:00:00',18,'2015-09-30 08:19:32','2015-09-30 08:19:32'),(6,0,120,60,120,60,'2001-02-03 00:00:00',19,'2015-10-03 14:45:49','2015-10-03 14:45:49'),(7,0,120,60,120,60,'2001-02-03 00:00:00',20,'2015-10-03 14:47:31','2015-10-03 14:47:31'),(8,0,120,60,120,60,'2001-02-03 00:00:00',21,'2015-10-06 13:12:10','2015-10-06 13:12:10'),(9,0,120,60,120,60,'2001-02-03 00:00:00',22,'2015-10-06 13:15:07','2015-10-06 13:15:07'),(10,0,120,60,120,60,'2001-02-03 00:00:00',23,'2015-10-06 13:20:04','2015-10-06 13:20:04'),(11,0,120,60,120,60,'2001-02-03 00:00:00',24,'2015-10-07 05:39:33','2015-10-07 05:39:33'),(12,0,120,60,120,60,'2001-02-03 00:00:00',25,'2015-10-14 14:19:07','2015-10-14 14:19:07'),(13,0,120,60,120,60,'2001-02-03 00:00:00',26,'2015-10-14 14:20:06','2015-10-14 14:20:06'),(14,0,120,60,120,60,'2001-02-03 00:00:00',27,'2015-10-14 14:52:21','2015-10-14 14:52:21'),(15,0,120,60,120,60,'2001-02-03 00:00:00',28,'2015-10-14 15:32:38','2015-10-14 15:32:38'),(16,0,120,60,120,60,'2001-02-03 00:00:00',29,'2015-10-18 01:59:41','2015-10-18 01:59:41'),(17,0,120,60,120,60,'2001-02-03 00:00:00',30,'2015-10-19 14:15:43','2015-10-19 14:15:43'),(18,0,120,60,120,60,'2001-02-03 00:00:00',31,'2015-10-20 14:21:04','2015-10-20 14:21:04'),(19,1,120,60,120,60,'2001-02-02 16:00:00',32,'2015-10-21 12:30:38','2015-10-22 11:34:35'),(20,0,120,60,120,60,'2001-02-03 00:00:00',33,'2015-10-31 16:29:54','2015-10-31 16:29:54');
/*!40000 ALTER TABLE `hypertensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
INSERT INTO `messages` VALUES (1,'hleee',NULL,'2015-09-17 13:45:38','2015-09-17 13:45:38','hleee','36b69f4413a.png',2,NULL,NULL),(2,'xhi',NULL,'2015-09-17 13:48:06','2015-09-17 13:48:06','xhi','7d7521f0ac4.png',2,NULL,NULL),(3,'xhix',NULL,'2015-09-17 13:52:22','2015-09-17 13:52:22','xhix','5e2b7ff9fa3.jpg',2,NULL,NULL),(4,'hilxx',NULL,'2015-09-17 14:07:55','2015-09-17 14:07:55','hilxx','e39fa1cc78b.png',2,NULL,NULL),(5,'huzhi',NULL,'2015-09-17 14:24:44','2015-09-17 14:24:44','huzhi','b7c4b5c7f1a.png',2,NULL,NULL),(6,'hellotest',NULL,'2015-09-18 02:22:08','2015-09-18 02:22:08','hellotest','43bfc6b165d.jpg',2,NULL,NULL),(7,'hellotestl',NULL,'2015-09-18 02:23:51','2015-09-18 02:23:51','hellotestl','59c738c9e50.jpg',2,NULL,NULL),(8,'hellotestl2',NULL,'2015-09-18 02:27:27','2015-09-18 02:27:27','hellotestl2','38ec8017981.jpg',2,NULL,NULL),(9,'lew',NULL,'2015-09-18 02:31:03','2015-09-18 02:31:03','lew','ea15193c82c.png',2,NULL,NULL),(10,'lewk',NULL,'2015-09-18 02:36:55','2015-09-18 02:36:55','lewk','b2f76e51bd2.png',2,NULL,NULL),(11,'lewk1',NULL,'2015-09-18 02:38:43','2015-09-18 02:38:43','lewk1','0fcaa67765e.png',2,NULL,NULL),(12,'lewk1x',NULL,'2015-09-18 02:40:36','2015-09-18 02:40:36','lewk1x','d34cbe82c3c.png',2,NULL,NULL),(13,'zheye',NULL,'2015-09-18 03:29:19','2015-09-18 03:29:19','zheye','01383aaad4c.png',2,NULL,NULL),(14,'zheye1',NULL,'2015-09-18 03:30:18','2015-09-18 03:30:18','zheye1','35f326dac1c.jpg',2,NULL,NULL),(15,'zixun1',NULL,'2015-09-19 13:51:51','2015-09-19 13:51:51','zixun1','85e4d622f5a.png',2,NULL,NULL),(16,'xwewq',NULL,'2015-09-19 14:47:20','2015-09-19 14:47:20','xwewq','69f9e60e091.png',2,NULL,NULL),(17,'huangzhe1213',NULL,'2015-09-20 02:18:56','2015-09-20 02:18:56','huangzhe1213','ef609af4271.jpg',2,NULL,NULL),(18,'hello',NULL,'2015-09-20 03:51:23','2015-09-20 03:51:23','hello','1d466dc8bbe.png',2,NULL,NULL),(19,'helo',NULL,'2015-09-24 14:27:24','2015-09-24 14:27:24','helo','e138c685c08.png',7,NULL,NULL),(20,'tew',NULL,'2015-10-17 14:14:29','2015-10-17 14:14:29','tew','1065b0a1ace.png',28,NULL,NULL);
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `unread` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notifiable_id` int(11) DEFAULT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `executor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_notifications_on_unread` (`unread`),
  KEY `index_notifications_on_user_id` (`user_id`),
  KEY `index_notifications_on_notifiable_id_and_notifiable_type` (`notifiable_id`,`notifiable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES (10,32,0,'2015-10-30 02:23:08','2015-10-30 02:23:08','reply',14,'Reply',23),(11,32,0,'2015-10-31 16:17:05','2015-10-31 16:17:05','reply',15,'Reply',16),(12,32,0,'2015-10-31 16:20:41','2015-10-31 16:20:41','reply',16,'Reply',16),(13,32,0,'2015-11-01 02:28:30','2015-11-01 02:28:30','reply',17,'Reply',16);
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operations`
--

DROP TABLE IF EXISTS `operations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `operations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `sick_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operations`
--

LOCK TABLES `operations` WRITE;
/*!40000 ALTER TABLE `operations` DISABLE KEYS */;
INSERT INTO `operations` VALUES (1,NULL,NULL,'2015-10-11 15:06:43','2015-10-11 15:06:43',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',23,85146,'factory1.jpg','image/jpeg',1,NULL),(4,'zhihu1','ewq2','2015-10-11 15:14:05','2015-10-11 15:16:52',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',23,85146,'factory1.jpg','image/jpeg',2,'2015-10-19 16:00:00'),(5,'eqwe','eee','2015-10-22 11:35:27','2015-10-22 11:35:34',NULL,NULL,NULL,'FuP0n2bDalakqHmm4rI3Pgg18k5n',32,64135,'xulie1.jpg','image/jpeg',1,'2015-10-22 16:00:00');
/*!40000 ALTER TABLE `operations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `notify_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total_fee` float DEFAULT NULL,
  `trade_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `out_trade_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `notify_time` datetime DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationships`
--

DROP TABLE IF EXISTS `relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `follower_id` int(11) DEFAULT NULL,
  `followed_user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_relationships_on_follower_id_and_followed_user_id` (`follower_id`,`followed_user_id`),
  KEY `index_relationships_on_follower_id` (`follower_id`),
  KEY `index_relationships_on_followed_user_id` (`followed_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationships`
--

LOCK TABLES `relationships` WRITE;
/*!40000 ALTER TABLE `relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `replies`
--

DROP TABLE IF EXISTS `replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sick_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basic_case_id` int(11) DEFAULT NULL,
  `main_desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `sick_sub_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_plus` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `replies`
--

LOCK TABLES `replies` WRITE;
/*!40000 ALTER TABLE `replies` DISABLE KEYS */;
INSERT INTO `replies` VALUES (14,'heelo',101,'test','2015-10-30 02:23:08','2015-10-30 02:23:08',23,'ewqw',0),(15,'hew',106,'test','2015-10-31 16:17:05','2015-10-31 16:17:05',16,'hello',0),(16,'hewl',108,'test','2015-10-31 16:20:41','2015-10-31 16:22:38',16,'hello',1),(17,'heelo',111,'test','2015-11-01 02:28:30','2015-11-01 02:29:30',16,'heelo',1);
/*!40000 ALTER TABLE `replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `support_number` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `doctor_id` int(11) DEFAULT NULL,
  `price_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
INSERT INTO `reservations` VALUES (1,5,5,NULL,'2015-10-27 12:16:07','2015-10-27 12:16:07',16,'fee'),(2,5,NULL,NULL,'2015-10-27 12:19:25','2015-10-27 12:21:20',16,'love'),(4,5,NULL,NULL,'2015-10-28 13:21:05','2015-10-28 13:21:05',NULL,'love'),(5,5,5,NULL,'2015-10-28 13:21:05','2015-10-28 13:21:05',NULL,'fee'),(6,5,25,NULL,'2015-10-28 13:21:05','2015-10-28 13:21:05',NULL,'plus'),(7,5,NULL,NULL,'2015-10-28 13:24:21','2015-10-28 13:24:21',23,'love'),(8,20,25,'hi','2015-10-28 13:24:21','2015-10-28 14:23:49',23,'fee'),(9,5,25,NULL,'2015-10-28 13:24:21','2015-10-28 13:24:21',23,'plus'),(10,5,NULL,NULL,'2015-10-28 13:33:14','2015-10-28 14:06:11',24,'love'),(11,5,5,NULL,'2015-10-28 13:33:14','2015-10-28 13:33:14',24,'fee'),(12,5,25,NULL,'2015-10-28 13:33:14','2015-10-28 13:33:14',24,'plus'),(13,20,25,'hi','2015-10-28 14:25:53','2015-10-28 14:25:53',16,'plus'),(14,5,NULL,NULL,'2015-10-31 16:11:24','2015-10-31 16:11:24',26,'love'),(15,20,88,'hi','2015-10-31 16:11:24','2015-10-31 16:14:04',26,'fee'),(16,5,25,NULL,'2015-10-31 16:11:24','2015-10-31 16:11:24',26,'plus'),(17,5,NULL,NULL,'2015-11-01 02:21:18','2015-11-01 02:21:18',27,'love'),(18,20,88,'hi','2015-11-01 02:21:18','2015-11-01 02:27:22',27,'fee'),(19,5,25,NULL,'2015-11-01 02:21:18','2015-11-01 02:21:18',27,'plus');
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20120917145220'),('20120926010858'),('20120926020347'),('20120930143203'),('20121001090323'),('20121001132402'),('20121005141503'),('20121120012827'),('20121120150109'),('20121120151034'),('20121121001904'),('20121121073049'),('20121129084000'),('20121129093038'),('20121129093252'),('20121130061759'),('20121130135953'),('20121130140154'),('20121212033953'),('20121228095218'),('20121229090529'),('20130103144746'),('20130108144735'),('20130201070958'),('20130201073750'),('20130325135101'),('20130329140324'),('20130331015402'),('20130331232036'),('20130401014141'),('20130401035222'),('20130403082429'),('20130404130439'),('20130425131156'),('20130426153000'),('20130504060626'),('20130528081032'),('20130704065315'),('20130706011558'),('20130707031521'),('20130707031754'),('20130723050933'),('20130723132700'),('20130723140208'),('20130724144759'),('20130724145346'),('20130724151535'),('20130724152251'),('20130724152414'),('20130725120455'),('20130725124053'),('20130727124352'),('20130806014343'),('20130809034045'),('20130809150806'),('20130904014218'),('20130904024600'),('20130909060450'),('20130911061307'),('20130915031332'),('20131022142315'),('20131023024341'),('20131030021443'),('20140107032853'),('20140109152651'),('20140322080035'),('20140521052220'),('20150915132900'),('20150917123655'),('20150921120944'),('20150923105056'),('20150923110830'),('20150924111038'),('20150924114038'),('20150925064817'),('20150925071244'),('20150925072252'),('20150928133003'),('20150929112908'),('20150930072046'),('20150930075950'),('20151001004120'),('20151001005804'),('20151003094516'),('20151004073048'),('20151005024754'),('20151006022136'),('20151007031349'),('20151007031648'),('20151007074609'),('20151007094357'),('20151011064327'),('20151011081035'),('20151011142737'),('20151015140627'),('20151016014849'),('20151016021157'),('20151016025311'),('20151016031036'),('20151017090851'),('20151017114705'),('20151019113554'),('20151021132518'),('20151022133213'),('20151024062916'),('20151027101419'),('20151027105418'),('20151027105708'),('20151027110641'),('20151027120855'),('20151027121221'),('20151029115854'),('20151029120951'),('20151029154617');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sick_assets`
--

DROP TABLE IF EXISTS `sick_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sick_assets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `basic_case_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `asset_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sick_assets`
--

LOCK TABLES `sick_assets` WRITE;
/*!40000 ALTER TABLE `sick_assets` DISABLE KEYS */;
INSERT INTO `sick_assets` VALUES (3,'rer','ree','2015-10-07 10:03:15','2015-10-07 10:03:19',NULL,'Fgax8uwEFDwmX7EMFQHK4OL9nGFY',14,32744,'bg2013033103.jpg','image/jpeg',1,NULL),(4,'hewlo','dere','2015-10-07 10:13:37','2015-10-07 10:14:02',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',2,NULL),(5,'redq','re','2015-10-07 10:16:35','2015-10-07 11:46:37',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',3,NULL),(6,'zhihuq','test','2015-10-07 10:37:01','2015-10-07 11:43:45',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',4,NULL),(7,'ok','ok','2015-10-07 10:45:14','2015-10-07 10:45:21',NULL,'FmLBwXW98K9EULqiP6P29I0-8c0h',14,188665,'02cabea6815b0048.jpg','image/jpeg',5,NULL),(8,'xee','ew','2015-10-07 10:46:47','2015-10-07 10:46:52',NULL,'FtcF-XxvaHpkHq1hcQYRtLbSWsRI',14,5925,'2logo_130726@2x (1).png','image/png',6,NULL),(9,'zhi','zhi','2015-10-07 10:58:20','2015-10-07 10:58:25',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',7,NULL),(10,'ewewe','eweqwe','2015-10-07 11:02:13','2015-10-07 11:02:16',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',8,NULL),(11,'rewe','k\'k\'re','2015-10-07 11:09:42','2015-10-07 11:09:43',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',9,NULL),(12,'rexx','rereere\'erreer','2015-10-07 11:09:48','2015-10-07 11:09:56',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',14,85146,'factory1.jpg','image/jpeg',10,NULL),(13,'re','rewe','2015-10-07 12:49:50','2015-10-07 12:49:54',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',16,85146,'factory1.jpg','image/jpeg',1,NULL),(14,'test23','hewlo','2015-10-09 13:23:29','2015-10-13 16:08:46',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',13,85146,'factory1.jpg','image/jpeg',1,'heart'),(15,'hewlo','test','2015-10-11 07:22:06','2015-10-11 07:22:16',NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',24,85146,'factory1.jpg','image/jpeg',1,'heart'),(16,'hewqw','rqew','2015-10-13 15:35:48','2015-10-13 15:39:14',NULL,'FuQvmkZzo9SoIYl7Upoy5XgQoPZM',13,2235999,'2015-09-25 092352.jpg','image/jpeg',2,'exper'),(17,'test1','hehlo','2015-10-18 01:39:09','2015-10-18 01:39:16',NULL,'FlGrr1uk5bD3R3lqbSbpKe9aSwsL',70,363212,'5-trend-sul-mobile-advertising_mobile-ad-network(1).jpg','image/jpeg',1,'CT'),(18,'heelo','get','2015-10-18 01:39:23','2015-10-18 01:39:30',NULL,'FlGrr1uk5bD3R3lqbSbpKe9aSwsL',70,363212,'5-trend-sul-mobile-advertising_mobile-ad-network(1).jpg','image/jpeg',2,'exper'),(19,'hrewr','rewe','2015-10-18 02:17:42','2015-10-18 02:17:51',NULL,'Fj8iAsSlKGnGa5s8aRJea2AiHqDz',72,1396198,'二维码宣传--20151015.jpg','image/jpeg',1,'exper'),(20,'hllo','eqw','2015-10-22 11:37:40','2015-10-22 11:37:47',NULL,'Fggf_Cnom43OEGZVB7wFS7id3SsP',92,785915,'chan.jpg','image/jpeg',1,'CT'),(21,'hewqe','eqwe','2015-10-23 02:18:04','2015-10-23 02:19:13',NULL,'FhSlf9p12l5WmRnTW89INRhDy_4o',93,109975,'2015-05-03 13.08.28.jpg','image/jpeg',1,'heart'),(22,NULL,NULL,'2015-10-24 12:54:44','2015-10-24 12:54:44',NULL,'Foa3nS-Gs-X5EWXyBYHW4BmH9ZCy',97,116229,'2015-05-03 13.08.17.jpg','image/jpeg',1,NULL),(23,NULL,NULL,'2015-10-24 13:14:25','2015-10-24 13:14:25',NULL,'Foa3nS-Gs-X5EWXyBYHW4BmH9ZCy',97,116229,'2015-05-03 13.08.17.jpg','image/jpeg',2,NULL),(24,'test_ct','','2015-10-29 14:10:34','2015-10-29 14:10:38',NULL,'Fhq457rBDUHrylds9vjvGAkUoFtE',105,33413,'broadlink.jpg','image/jpeg',1,'CT'),(25,'re','tewr','2015-10-31 15:44:06','2015-10-31 15:44:15',NULL,'Fhq457rBDUHrylds9vjvGAkUoFtE',106,33413,'broadlink.jpg','image/jpeg',1,'CT'),(26,'dwe','ewq','2015-10-31 16:01:21','2015-10-31 16:01:27',NULL,'Fhq457rBDUHrylds9vjvGAkUoFtE',107,33413,'broadlink.jpg','image/jpeg',1,'CT'),(27,'ewqe','ew','2015-10-31 16:03:21','2015-10-31 16:03:26',NULL,'Foo8RGyyHiQjQPfK5fTZBvwKjZIM',108,130555,'0.png','image/png',1,'CT');
/*!40000 ALTER TABLE `sick_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sick_cases`
--

DROP TABLE IF EXISTS `sick_cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sick_cases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sick_cases`
--

LOCK TABLES `sick_cases` WRITE;
/*!40000 ALTER TABLE `sick_cases` DISABLE KEYS */;
INSERT INTO `sick_cases` VALUES (1,'hewlo','','2015-09-24 13:40:23','2015-09-26 13:45:32','hewlo','52bdb16b649.png',7,0,NULL),(2,'hewlo1',NULL,'2015-09-24 13:43:22','2015-09-26 15:19:18','hewlo1','a962bff4679.png',7,NULL,NULL),(3,'hewlo2',NULL,'2015-09-24 13:44:55','2015-09-24 13:44:55','hewlo2','b8e2279078b.png',7,NULL,NULL),(4,'hewlo3',NULL,'2015-09-24 13:45:28','2015-09-24 13:45:28','hewlo3','7cad926b4c1.png',7,NULL,NULL),(5,'hewlo4',NULL,'2015-09-24 13:53:21','2015-09-25 06:27:00','hewlo4','47a04f21d9d.png',7,NULL,NULL),(6,'hewlo5',NULL,'2015-09-24 14:04:52','2015-09-24 14:04:52','hewlo5','76aac5fb4e7.png',7,NULL,NULL),(7,'hewlo6',NULL,'2015-09-24 14:06:34','2015-09-24 14:06:34','hewlo6','4c2c63b5bcb.jpg',7,NULL,NULL),(8,'heelo',NULL,'2015-09-25 03:15:52','2015-09-25 03:15:52','heelo','89c0b38cc57.png',8,NULL,NULL),(9,'heelo',NULL,'2015-09-25 08:02:38','2015-09-25 08:02:38','heelo','4f992ea7bda.png',7,NULL,NULL),(10,'huxi','huxzihixxzx','2015-09-26 15:31:16','2015-09-26 15:59:30','huxi','fe565017d02.png',9,0,NULL),(11,'huxixx','zhide','2015-09-26 16:00:27','2015-09-26 16:01:40','huxixx','242fb5a7a4c.png',10,0,NULL),(12,'test','teTEE','2015-09-27 01:44:49','2015-09-27 02:01:58','test','564d9a39b9f.png',11,0,NULL),(13,'test','test1','2015-09-27 01:47:59','2015-09-27 01:50:00','test','4acd07559af.png',12,0,NULL),(14,'hexrre',NULL,'2015-10-01 15:41:34','2015-10-01 15:56:29','hexrre','da55b764892.png',18,NULL,NULL);
/*!40000 ALTER TABLE `sick_cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sick_hists`
--

DROP TABLE IF EXISTS `sick_hists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sick_hists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sick_case_id` int(11) DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `integer` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sick_hists`
--

LOCK TABLES `sick_hists` WRITE;
/*!40000 ALTER TABLE `sick_hists` DISABLE KEYS */;
INSERT INTO `sick_hists` VALUES (1,NULL,NULL,'2015-09-25 07:36:25','2015-09-25 07:36:25',NULL,NULL,NULL,NULL,'FpO4DpdqkWC-DqgWEjOFSvPGjy-k','7',NULL,6720,'huaxiang.png','image/png',1),(2,NULL,NULL,'2015-09-25 07:37:24','2015-09-25 07:37:24',NULL,NULL,NULL,NULL,'Fum9s9RcIQXAlhSP7JfCNoCyuZGd','7',NULL,1371392,'dpi.png','image/png',2),(3,NULL,NULL,'2015-09-25 07:41:54','2015-09-25 07:41:54',NULL,NULL,NULL,NULL,'FpO4DpdqkWC-DqgWEjOFSvPGjy-k','7',NULL,6720,'huaxiang.png','image/png',3),(4,NULL,NULL,'2015-09-25 07:57:11','2015-09-25 07:57:11',NULL,NULL,NULL,NULL,'FpO4DpdqkWC-DqgWEjOFSvPGjy-k','7',NULL,6720,'huaxiang.png','image/png',4),(5,NULL,NULL,'2015-09-25 08:03:22','2015-09-25 08:03:22',NULL,NULL,NULL,NULL,'Ft0LXosPO8xN0aBCCA6TtovlaZwO','7',NULL,23259,'20150427060633399_easyicon_net_512.png','image/png',5),(6,NULL,NULL,'2015-09-26 07:23:39','2015-09-26 07:23:39',NULL,NULL,NULL,NULL,'FpO4DpdqkWC-DqgWEjOFSvPGjy-k','7',NULL,6720,'huaxiang.png','image/png',6),(7,NULL,NULL,'2015-09-26 08:05:47','2015-09-26 08:05:47',NULL,NULL,NULL,NULL,'FosEuW7ZwjK9Y1oSVE_KW0arhPzH','7',NULL,19480,'0023ae917a0914a4575602.jpg','image/jpeg',7),(8,NULL,NULL,'2015-09-26 08:06:38','2015-09-26 08:06:38',NULL,NULL,NULL,NULL,'Fsm2JvutWL8dYbU5IhE5IfARs8A1','7',NULL,3264659,'out3_1.mp4','video/mp4',8),(9,NULL,NULL,'2015-09-26 08:07:02','2015-09-26 08:07:02',NULL,NULL,NULL,NULL,'Fv0N-Ir4p0IKFPRAAL4arOE8v7c8','7',NULL,14050,'爱Wi-Fi.png','image/png',9),(16,'hello','kew','2015-09-26 10:49:36','2015-09-26 10:49:50',NULL,2,NULL,NULL,'Fp_HFbLlv7S9LYfVOoEcNNFCTLai','7',NULL,36257,'ECharts.png','image/png',1),(20,'heelo1','test','2015-09-26 12:09:25','2015-09-26 15:19:17',NULL,2,NULL,NULL,'Fum9s9RcIQXAlhSP7JfCNoCyuZGd','7',NULL,1371392,'dpi.png','image/png',2),(21,'zhihu','xme','2015-09-26 15:59:05','2015-09-26 15:59:18',NULL,10,NULL,NULL,'Fu_m5Um5ZH6tv7pSFshjA3Sd9clQ','9',NULL,37401,'屏幕截图 2015-09-06 20.10.47.png','image/png',1),(22,'xme','xdw','2015-09-26 15:59:29','2015-09-26 15:59:30',NULL,10,NULL,NULL,'Fum9s9RcIQXAlhSP7JfCNoCyuZGd','9',NULL,1371392,'dpi.png','image/png',2),(23,'chaonv','2323','2015-09-26 16:00:53','2015-09-26 16:01:21',NULL,11,NULL,NULL,'FmLBwXW98K9EULqiP6P29I0-8c0h','10',NULL,188665,'02cabea6815b0048.jpg','image/jpeg',1),(24,'xqew','www','2015-09-26 16:01:39','2015-09-26 16:01:40',NULL,11,NULL,NULL,'FtoZwWnHxkB8p4J8zWAKufuCuJkR','10',NULL,258443,'2-Choosing-your-mobile-advertising-technology1.jpg','image/jpeg',2),(25,'12233','test','2015-09-27 01:46:04','2015-09-27 01:46:08',NULL,12,NULL,NULL,'FtE2VMI9Y9v1n1k12MgUSW7KsWAn','11',NULL,306452,'公积金1.PNG','image/png',1),(26,'test1','test1','2015-09-27 01:49:04','2015-09-27 01:49:04',NULL,13,NULL,NULL,'Fp_HFbLlv7S9LYfVOoEcNNFCTLai','12',NULL,36257,'ECharts.png','image/png',1),(27,'heelo','xewte','2015-09-27 01:49:20','2015-09-27 01:49:34',NULL,13,NULL,NULL,'FgwDt-F0CrB09XnzjRgYdXV5j9ry','12',NULL,19873,'潮女-4.jpg','image/jpeg',2),(28,'zhihu','zhixu','2015-09-27 01:49:52','2015-09-27 01:50:00',NULL,13,NULL,NULL,'FmLBwXW98K9EULqiP6P29I0-8c0h','12',NULL,188665,'02cabea6815b0048.jpg','image/jpeg',3),(29,'heelo','test','2015-10-01 12:43:17','2015-10-01 12:43:27',NULL,NULL,NULL,NULL,'FgwDt-F0CrB09XnzjRgYdXV5j9ry','18',NULL,19873,'潮女-4.jpg','image/jpeg',10),(30,NULL,NULL,'2015-10-01 12:44:45','2015-10-01 12:44:45',NULL,NULL,NULL,NULL,'Fum9s9RcIQXAlhSP7JfCNoCyuZGd','18',NULL,1371392,'dpi.png','image/png',11),(31,NULL,NULL,'2015-10-01 12:55:04','2015-10-01 12:55:04',NULL,NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8','18',NULL,85146,'factory1.jpg','image/jpeg',12),(32,NULL,NULL,'2015-10-01 15:42:06','2015-10-01 15:42:06',NULL,14,NULL,NULL,'FuQvmkZzo9SoIYl7Upoy5XgQoPZM','18',NULL,2235999,'2015-09-25 092352.jpg','image/jpeg',1),(33,NULL,NULL,'2015-10-01 15:56:29','2015-10-01 15:56:29',NULL,14,NULL,NULL,'FgwDt-F0CrB09XnzjRgYdXV5j9ry','18',NULL,19873,'潮女-4.jpg','image/jpeg',2);
/*!40000 ALTER TABLE `sick_hists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sicknesses`
--

DROP TABLE IF EXISTS `sicknesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sicknesses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `poster` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `public` tinyint(1) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `sick_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sicknesses`
--

LOCK TABLES `sicknesses` WRITE;
/*!40000 ALTER TABLE `sicknesses` DISABLE KEYS */;
INSERT INTO `sicknesses` VALUES (8,'xwew','hewqe','2015-10-02 00:57:08','2015-10-02 01:44:21',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',18,85146,'factory1.jpg','image/jpeg',1,NULL),(9,'hewlw','dwqe','2015-10-02 00:57:22','2015-10-02 01:21:10',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',18,85146,'factory1.jpg','image/jpeg',2,NULL),(10,'xwew2','test','2015-10-02 01:50:24','2015-10-02 01:50:30',NULL,NULL,NULL,'FuQvmkZzo9SoIYl7Upoy5XgQoPZM',18,2235999,'2015-09-25 092352.jpg','image/jpeg',3,NULL),(11,'ww2','ew','2015-10-02 01:50:51','2015-10-02 01:50:56',NULL,NULL,NULL,'FmLBwXW98K9EULqiP6P29I0-8c0h',18,188665,'02cabea6815b0048.jpg','image/jpeg',4,NULL),(14,'hewl','teste','2015-10-07 10:09:16','2015-10-07 10:09:51',NULL,NULL,NULL,'FuQvmkZzo9SoIYl7Upoy5XgQoPZM',24,2235999,'2015-09-25 092352副本.jpg','image/jpeg',1,NULL),(15,'reewr','yry','2015-10-07 10:10:32','2015-10-07 10:10:41',NULL,NULL,NULL,'Fgax8uwEFDwmX7EMFQHK4OL9nGFY',24,32744,'bg2013033103.jpg','image/jpeg',2,NULL),(16,'一次冠心病检查','的权威','2015-10-08 06:01:30','2015-10-08 06:01:43',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',24,85146,'factory1.jpg','image/jpeg',3,NULL),(20,'ewqe','ewqe','2015-10-11 13:40:29','2015-10-11 13:40:30',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',23,85146,'factory1.jpg','image/jpeg',1,'2015-09-30 16:00:00'),(21,'huzhi','test','2015-10-11 13:40:48','2015-10-11 13:40:49',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',23,85146,'factory1.jpg','image/jpeg',2,'2015-10-18 16:00:00'),(22,'helloew','ewqe','2015-10-11 13:52:25','2015-10-11 13:52:31',NULL,NULL,NULL,'FuQvmkZzo9SoIYl7Upoy5XgQoPZM',23,2235999,'2015-09-25 092352.jpg','image/jpeg',3,'2015-10-06 16:00:00'),(23,'test','test','2015-10-11 14:08:42','2015-10-11 14:08:48',NULL,NULL,NULL,'FvfWFzKoUHaFd8yqWLsEt9mCQqz8',23,85146,'factory1.jpg','image/jpeg',4,'2015-09-30 16:00:00'),(24,'heelo','min','2015-10-22 11:35:46','2015-10-22 11:35:55',NULL,NULL,NULL,'Fob0C1KawzlWP6-7UV-sleO9-Rn2',32,53224,'android1.jpg','image/jpeg',1,'2015-10-22 16:00:00'),(25,'gggggggggg','jjjjjjjj','2015-10-23 02:24:46','2015-10-23 02:25:37',NULL,NULL,NULL,'Foa3nS-Gs-X5EWXyBYHW4BmH9ZCy',32,116229,'2015-05-03 13.08.17.jpg','image/jpeg',2,'2015-10-05 16:00:00'),(26,'hihu','iji','2015-11-01 02:45:03','2015-11-01 02:45:23',NULL,NULL,NULL,'Foo8RGyyHiQjQPfK5fTZBvwKjZIM',32,130555,'0.png','image/png',3,'2015-09-30 16:00:00');
/*!40000 ALTER TABLE `sicknesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_signs`
--

DROP TABLE IF EXISTS `status_signs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_signs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_signs`
--

LOCK TABLES `status_signs` WRITE;
/*!40000 ALTER TABLE `status_signs` DISABLE KEYS */;
INSERT INTO `status_signs` VALUES (1,'xiongmen','2015-10-07 03:42:05','2015-10-07 03:42:05'),(2,'huxikunnan','2015-10-07 03:42:21','2015-10-07 03:42:21'),(3,'xinji','2015-10-07 03:42:31','2015-10-07 03:42:31'),(4,'xiongtong','2015-10-07 03:45:00','2015-10-07 03:45:00'),(5,'fare','2015-10-07 03:45:04','2015-10-07 03:45:04'),(6,'yanqianfahei','2015-10-07 03:45:12','2015-10-07 03:45:12'),(7,'yundao','2015-10-07 03:45:19','2015-10-07 03:45:19'),(8,'yisixingyishisangshi','2015-10-07 03:45:29','2015-10-07 03:45:29');
/*!40000 ALTER TABLE `status_signs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_digest` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_sent_at` datetime DEFAULT NULL,
  `use_gravatar` tinyint(1) DEFAULT NULL,
  `phonenum` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'huangzhe1218@163.com','$2a$10$pxENIkLywsHnTr1EN/Ve6OVcXbgNTp9LZhNU7RvOPAvV4On9tASYW','2015-09-15 13:42:15','2015-09-15 13:42:15','Li-XCLsz7qwaZtUIy8ilEg',NULL,'huangzhe1218',NULL,NULL,NULL,NULL,'18911786285'),(4,'huangzhe1211@163.com','$2a$10$iZhdYmvm9/GMee4tuFLT9eiPHXRr5zdn844Ec1QXR1foEYNqKoC6K','2015-09-21 12:26:23','2015-09-21 12:26:23','HqajfvjJOOc73MT6i0QolA',NULL,'huangzhe1211',NULL,NULL,NULL,NULL,'13811912092'),(5,'huangzhe1212@163.com','$2a$10$06CIqWbdz7xuCTm4KmEjlOb4dBFCUAHLjVYsG4l2Lw/HnFFUPpSxS','2015-09-22 14:52:01','2015-09-22 14:52:01','kiN2eZj2sUs9E6BtYjtjQg',NULL,'huangzhe1212',NULL,NULL,NULL,NULL,'12345678901'),(6,'huangzhe1213@163.com','$2a$10$ZdcGJfdrkRrOOz/FRHM6m.3UgCBFuUVML9857YahwlZuzlsvMlj4e','2015-09-23 11:30:56','2015-09-23 11:30:56','_DawDDMi9Y6p1H5YGlJscg',NULL,'huangzhe1213',NULL,NULL,NULL,NULL,'11122233344'),(7,'huangzhe1214@163.com','$2a$10$DvaEqBMyUMu0mm92340mGeXgFJ2q0TIqR4ckL.ULwJKN6PSTG.0QO','2015-09-23 11:32:05','2015-09-23 11:32:05','3a19E47fh3YMnmpdE7u1fg',NULL,'huangzhe1214',NULL,NULL,NULL,NULL,'11122233355'),(8,'huangzhe1215@163.com','$2a$10$IhXTLt9WeO9LO1inX8lZGO0p5AKEuiohI8k01dDiApNGPVIBR/ewK','2015-09-23 14:09:09','2015-09-23 14:09:09','95K5TFf8YgZGj16U080ukA',NULL,'huangzhe1215',NULL,NULL,NULL,NULL,'12345678999'),(9,'huangzhe1217@163.com','$2a$10$NiL6eLpeYMRcqY1fOmrjleFVQx1boPi04Afeg.T1CXZpa06D29kTq','2015-09-26 15:30:09','2015-09-26 15:30:09','8EQaop_qzOufWJa5HS2GYg',NULL,'huangzhe1217',NULL,NULL,NULL,NULL,'13811912032'),(10,'huangzhe1219@163.com','$2a$10$PVy5I8XbKdegZ46YfnYaIuBgUbwobZ3kuzgbLVnKcvcLxgBHFd1Ta','2015-09-26 16:00:09','2015-09-26 16:00:09','shBOyvL7014x9P7JBo_yOw',NULL,'huangzhe1219',NULL,NULL,NULL,NULL,'13811912312'),(11,'chenfw0923@163.com','$2a$10$f5cAC3mr4rgfOCW2e6000eJc4R/My28eT5wJzFe4yB9uqIEX4htr2','2015-09-27 01:44:06','2015-09-27 01:44:06','M-kSPPz8v1TQ3-jmvZGitA',NULL,'chenfw233',NULL,NULL,NULL,NULL,'13810139056'),(12,'huangzhe1310@163.com','$2a$10$AlSjUfEjDHTHWBU6VzcCtuAfGLgVJJ0s7QuSqakm5fkByM1BtOhXO','2015-09-27 01:45:13','2015-09-27 01:45:13','SzUn9PpmnD9H171DTzOPPA',NULL,'huangzhe1310',NULL,NULL,NULL,NULL,'13811369814'),(13,'huangzhe1311@163.com','$2a$10$WW31um6rgPkpURMZcgD/OOgYyedudthIYUaDqKousM2yipnZFkarK','2015-09-29 12:27:13','2015-09-29 12:27:13','of7K4_suhNgEuxYeIyyNxw',NULL,'huangzhe1311',NULL,NULL,NULL,NULL,'13811367814'),(14,'huangzhe1312@163.com','$2a$10$6PWA4s0H3JfKKRt93K8CIeOcbDgye9FF3ImTKv5vM4fpudElAux7y','2015-09-29 12:30:05','2015-09-29 12:30:05','lBmiy_iuciP0QU7HleHzdA',NULL,'huangzhe1312',NULL,NULL,NULL,NULL,'13811367815'),(15,'huangzhe1313@163.com','$2a$10$kEsN7bHzVJO2hhwevnLKy.LnC2.sgmr77xTsF80bkr1jxUQVF4CCy','2015-09-30 07:51:45','2015-09-30 07:51:45','W_uCoAxeNGsJOO6FHnnTcA',NULL,'huangzhe1313',NULL,NULL,NULL,NULL,'18311786254'),(16,'huangzhe1314@163.com','$2a$10$UBHKzmSm5C8xqH8GjIYVWuxFEbso8P.YU8IsQvyhrE16ZAZwYCWdu','2015-09-30 07:52:34','2015-09-30 07:52:34','4-T5CWM8voU-cIEBkboipg',NULL,'huangzhe1314',NULL,NULL,NULL,NULL,'13711772456'),(17,'huangzhe1315@163.com','$2a$10$T7.vTYKOsmmZlDGLlKSD5ucp9CQ1PeVk0XUUnoA1JMS6i8szxLfGC','2015-09-30 08:18:56','2015-09-30 08:18:56','MX2D7jXG4djmN6PpOyYO7w',NULL,'huangzhe1315',NULL,NULL,NULL,NULL,'13581162265'),(18,'huangzhe1316@163.com','$2a$10$q5J9n3J4pdpWPu3zeOeT6Oa6RihUn.1/Kq.VHrbn5W5ucc0D0Mul6','2015-09-30 08:19:31','2015-10-02 02:32:20','6bkhDd3vrZen_zbM9pqMuA',NULL,'huangzhe1316',NULL,NULL,NULL,NULL,'13581174532'),(19,'huangzhe1317@163.com','$2a$10$xl9qQgdhAfEKcfcH39lHo.nZbJB3EiZQ3VPpl/uZ3ksVAFTV1fq7W','2015-10-03 14:45:48','2015-10-03 14:45:48','5ytHk4gAPJs0dWe6bmZrEg',NULL,'huangzhe1317',NULL,NULL,NULL,NULL,'137133334567'),(20,'huangzhe1318@163.com','$2a$10$n1x2RNXtRhhOpWN0j2kTDe7ktz0CHVVXQivKRakKkXkG1DzJbfo.G','2015-10-03 14:47:31','2015-10-03 14:47:31','XeyzeJAjzZITi0ZLlA8ctA',NULL,'huangzhe1318',NULL,NULL,NULL,NULL,'13811111113'),(21,'huangzhe1319@163.com','$2a$10$57q.Jfm77rflaBvhPHpmfuzwAv.5jCCej8vmPiBAiO5Ss548lsTP2','2015-10-06 13:12:10','2015-10-06 13:12:10','lCrJkDDXuPL5AMmmqC7F7Q',NULL,'huangzhe1319',NULL,NULL,NULL,NULL,'13901214511'),(22,'huangzhe1410@163.com','$2a$10$W97T2hccW9aiRdsXo8Xcyu0oMPZn.qxFje3XPPWprDVY5PBNBwf4a','2015-10-06 13:15:07','2015-10-06 13:15:07','hechriiB8w8rRX-XTfEjcA',NULL,'huangzhe1410',NULL,NULL,NULL,NULL,'13811712345'),(23,'huangzhe1411@163.com','$2a$10$HAl7YK7PYlVg5cZBoQu.9.rzxjlSl.LZAT.O35rLH4lVsOBdUZVX2','2015-10-06 13:20:04','2015-10-11 15:17:13','U39Xw5DB8lt_Gz-VePzhXQ',NULL,'huangzhe1411',NULL,NULL,NULL,NULL,'13811713456'),(24,'huangzhe1412@163.com','$2a$10$YYhcGr.QyPs3Wg9J4IoTWeZGQ4Versl771pb7b6VC3fx2tikhssGu','2015-10-07 05:39:33','2015-10-08 06:01:43','ZDDI5_NNlXNzcutxa9pJJg',NULL,'huangzhe1412',NULL,NULL,NULL,NULL,'13811912345'),(25,'huangzhe1414@163.com','$2a$10$QMiyXHjj.iHgVSO.xPShdOXrKscL0fpZJgYVDiMgVuChyLrV1DrSq','2015-10-14 14:19:07','2015-10-14 14:19:07','Kx-dTvm5YEshx80sryxUMw',NULL,'huangzhe1414',NULL,NULL,NULL,NULL,'12345678911'),(26,'huangzhe1515@163.com','$2a$10$x5o221Z3B/..Ag/OV8IeMuaDY.svgF05nGtpy/4EJH6Lh1ATT8ElO','2015-10-14 14:20:06','2015-10-14 14:20:06','UCyYFanxJNQeYXEXE_3wmA',NULL,'huangzhe1515',NULL,NULL,NULL,NULL,'12345678922'),(27,'huangzhe1415@163.com','$2a$10$7dJ/UAscw47ZQnFsh5uQ7eFjjrfEz3GoZjVi3g6RZJCWCyQ.7IA8m','2015-10-14 14:52:21','2015-10-14 14:52:21','1OBG8KkjO0DiVtHrzwVz9w',NULL,'huangzhe1415',NULL,NULL,NULL,NULL,'12345678933'),(28,'huangzhe1416@163.com','$2a$10$7u0dNILza9FXfSzX1bMyRe6WX5e2p1QpouvUTqhFB3cn.jPow.P3C','2015-10-14 15:32:38','2015-10-14 15:32:38','h1ByQnCyz4SU1_GyguMFpw',NULL,'huangzhe1416',NULL,NULL,NULL,NULL,'12345678955'),(29,'huangzhe1417@163.com','$2a$10$dxBk9cMXy0LkdtVqLeq/6eRTk9gvWX0WPdsQgrlsH588HMz9xBZo6','2015-10-18 01:59:41','2015-10-18 01:59:41','kN4rWP9DYvya0pmCcDyR1A',NULL,'huangzhe1417',NULL,NULL,NULL,NULL,'12345678913'),(30,'huangzhe1418@163.com','$2a$10$kB6jQlRIStLDKP.ubTt/EOySoZ4MaukGfJ5eq5Cw/If4kG9A.jOIu','2015-10-19 14:15:43','2015-10-19 14:15:43','0saJvThy_oz-u0ps-bpQkQ',NULL,'huangzhe1418',NULL,NULL,NULL,NULL,'123456789555'),(31,'huangzhe1419@163.com','$2a$10$u5jLVWXFBRsVuYGvfiy46eZ7HJnkyauZqzj78Y5KiZ/QzmBs1iiUm','2015-10-20 14:21:04','2015-10-20 14:21:04','O4vT-II-t7J-BqoYLkRF4Q',NULL,'huangzhe1419',NULL,NULL,NULL,NULL,'123456789666'),(32,'huangzhe1513@163.com','$2a$10$SVwXmdbHn6VCPZkqhGSxN.UoApoHYHgUELaVaZsrfPz/4urXDCgGK','2015-10-21 12:30:38','2015-11-01 02:45:23','UTdK8niIteTFTHUkU_2Erg',NULL,'huangzhe1513',NULL,NULL,NULL,NULL,'123456789000'),(33,'huangzhe1514@163.com','$2a$10$/OII0PUU0NXhQOXwOv4f6ecbzUav2QDZZZL1XQkMuIyfYk2.gsqia','2015-10-31 16:29:53','2015-10-31 16:29:53','sZcevK06gR3yFgubk2mz6A',NULL,'huangzhe1514',NULL,NULL,NULL,NULL,'13811912023');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `desc` text COLLATE utf8_unicode_ci,
  `user_id` int(11) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `free` tinyint(1) DEFAULT NULL,
  `ratio` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videos`
--

LOCK TABLES `videos` WRITE;
/*!40000 ALTER TABLE `videos` DISABLE KEYS */;
INSERT INTO `videos` VALUES (1,NULL,'2015-09-23 13:59:43','2015-09-23 13:59:43',4,1,NULL,7,227064,'cats-short.mp4','video/mp4','FvMRNJG6HpmO3fJJor3OH1zfjwr8',NULL,1.33333),(3,NULL,'2015-09-26 08:08:45','2015-09-26 08:08:45',4,2,NULL,7,188665,'02cabea6815b0048.jpg','image/jpeg','FmLBwXW98K9EULqiP6P29I0-8c0h',NULL,1.77865),(4,'hhelo','2015-09-26 14:56:49','2015-09-26 14:56:58',4,3,'kewx',7,3264659,'out3_1.mp4','video/mp4','Fsm2JvutWL8dYbU5IhE5IfARs8A1',NULL,1.69444),(5,'wifi','2015-09-26 14:57:59','2015-09-26 14:58:01',4,4,'xs',7,19547136,'wi.mp4','video/mp4','lsZl2OwyG1g0BQO2pl9Av-J47UVf',NULL,1.79167);
/*!40000 ALTER TABLE `videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `watchings`
--

DROP TABLE IF EXISTS `watchings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `watchings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `course_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_watchings_on_course_id` (`course_id`),
  KEY `index_watchings_on_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `watchings`
--

LOCK TABLES `watchings` WRITE;
/*!40000 ALTER TABLE `watchings` DISABLE KEYS */;
/*!40000 ALTER TABLE `watchings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-01 14:16:32
