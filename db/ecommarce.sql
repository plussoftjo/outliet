-- MySQL dump 10.13  Distrib 5.7.35, for Linux (x86_64)
--
-- Host: localhost    Database: ecommarce
-- ------------------------------------------------------
-- Server version	5.7.35-0ubuntu0.18.04.1

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
-- Table structure for table `addresses`
--

DROP TABLE IF EXISTS `addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `addresses` (
  `city` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `area` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `lat` double DEFAULT '0',
  `long` double DEFAULT '0',
  `user_id` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_addresses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addresses`
--

LOCK TABLES `addresses` WRITE;
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` VALUES ('','','٣','',0,0,0,1,'2021-08-16 17:13:18','2021-08-16 17:13:18',NULL);
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ads_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
INSERT INTO `ads` VALUES ('Coming Soon','','البداية',1,'75db6e9b-7010-4783-a695-24b6b965c7f3.jpeg',1,'2021-07-13 19:08:28','2021-07-13 19:09:05',NULL),('Coming Soon 2','','البداية',1,'4014b3de-ffed-427b-b58a-33faf1051d91.jpeg',2,'2021-07-13 19:10:23','2021-07-18 11:32:46',NULL),('Shopping Online','','البداية',1,'c7ca9ac0-f6f1-4792-9eab-ba8a23a85fa2.jpeg',3,'2021-07-13 19:11:48','2021-07-18 11:34:40',NULL),('Online Shopping 2','','البداية',1,'19d17d2e-1fa5-4591-bf44-2ea915350913.jpeg',4,'2021-07-13 19:13:21','2021-07-13 19:13:21',NULL),('Coming Soon 3','','البداية',1,'2264b97e-8cd3-41e5-aeaf-ff70a7ba63c7.jpeg',5,'2021-07-13 19:16:02','2021-07-13 19:16:02',NULL);
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_items`
--

DROP TABLE IF EXISTS `ads_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_items` (
  `ads_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_ads_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_items`
--

LOCK TABLES `ads_items` WRITE;
/*!40000 ALTER TABLE `ads_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_clients`
--

DROP TABLE IF EXISTS `auth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `secret` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_auth_clients_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_clients`
--

LOCK TABLES `auth_clients` WRITE;
/*!40000 ALTER TABLE `auth_clients` DISABLE KEYS */;
INSERT INTO `auth_clients` VALUES (1,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL,'Server','XVlBzgbaiCMRAjWwhTHctcuAxhxKQFDaFpLSjFbcXoEFfRsWxP',1);
/*!40000 ALTER TABLE `auth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `client_id` int(10) unsigned DEFAULT NULL,
  `expires_at` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_auth_tokens_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
INSERT INTO `auth_tokens` VALUES (1,'2021-07-13 11:55:28','2021-07-13 11:55:28',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTcyODEzMjgsInVzZXJfaWQiOjF9.3sCJyBOloHRTH23G_LdIoONADXF1YlJf1teig40XyiM',1,1,''),(2,'2021-07-13 19:15:33','2021-07-13 19:15:33',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczMDc3MzMsInVzZXJfaWQiOjF9.Gbwg2HiGQ3ze-kF3YjeLs2oHQ5FhRRUABNnpQrj--aU',1,1,''),(3,'2021-07-13 19:18:01','2021-07-13 19:18:01',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczMDc4ODAsInVzZXJfaWQiOjJ9.ACEBuXWDZilSxulCyaqpwm8QmvF8XIQ9wgK1tM9a7Ss',2,1,''),(4,'2021-07-14 09:34:36','2021-07-14 09:34:36',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNTkyNzUsInVzZXJfaWQiOjF9.sMdJ80MZalrjU_A3Xh6txADVnCESU5s2HYA5j9yhN_w',1,1,''),(5,'2021-07-14 09:36:32','2021-07-14 09:36:32',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNTkzOTIsInVzZXJfaWQiOjR9.TZlLG7R0ApijpnrJduDsL1n_9mE9VtmkdOFP0kyJvK8',4,1,''),(6,'2021-07-14 09:37:32','2021-07-14 09:37:32',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNTk0NTEsInVzZXJfaWQiOjV9.KgkDvKZhL-rvYUf4SCAPyiHMRy68m1ds0_9GdweNrS4',5,1,''),(7,'2021-07-14 09:41:45','2021-07-14 09:41:45',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNTk3MDUsInVzZXJfaWQiOjZ9.RP-seaqAa_KijFqg4iVKVQUKCtSvc9xsKI3jLj8GZJg',6,1,''),(8,'2021-07-14 09:45:48','2021-07-14 09:45:48',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNTk5NDgsInVzZXJfaWQiOjd9.DGWccTeA47cZC1gBPVsKplz-V61Pr-6b2ymkOuPHLYU',7,1,''),(9,'2021-07-14 09:48:36','2021-07-14 09:48:36',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNjAxMTYsInVzZXJfaWQiOjh9.KrffC240bf1f6p7gqvv12hcurMrKiRNQSbL3gdUXyl4',8,1,''),(10,'2021-07-14 13:39:50','2021-07-14 13:39:50',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNzM5ODksInVzZXJfaWQiOjF9.LV_90youendJ_NwQBqMagL1AFmjoCBbsL8VPCJTo34E',1,1,''),(11,'2021-07-14 13:57:01','2021-07-14 13:57:01',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTczNzUwMjEsInVzZXJfaWQiOjl9.48onhYNCjj_jWCja5BZIipBjaeiS0P_Xp1fIDoXWPYk',9,1,''),(12,'2021-07-15 10:51:02','2021-07-15 10:51:02',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc0NTAyNjIsInVzZXJfaWQiOjF9.qUsNXe3ddS6xfD9Xwa4RDUplR5hKId8eoi-CTICFUQo',1,1,''),(13,'2021-07-15 15:47:59','2021-07-15 15:47:59',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc0NjgwNzksInVzZXJfaWQiOjF9._fu3US_UdIN1DRbvhzDIAfcoYRVQ2bI9ktrhkl4t5RI',1,1,''),(14,'2021-07-15 16:45:06','2021-07-15 16:45:06',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc0NzE1MDUsInVzZXJfaWQiOjF9.F6tJGRxAZ0pRq6BB6nTwsJPVi7vfqIqMKMuExPSSoBw',1,1,''),(15,'2021-07-15 18:28:40','2021-07-15 18:28:40',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc0Nzc3MjAsInVzZXJfaWQiOjF9.8pRRMyEDTmhu90V0nvbnINnbvAGb8Es51l3BtpiHMiY',1,1,''),(16,'2021-07-17 08:39:08','2021-07-17 08:39:08',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc2MTUxNDgsInVzZXJfaWQiOjF9.cwZUClshP4fmriaA4S2dRdLfV5nfiFmp4Dy9HOXSXtc',1,1,''),(17,'2021-07-17 12:09:27','2021-07-17 12:09:27',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc2Mjc3NjcsInVzZXJfaWQiOjF9.skf01d4xw3acySf_x3o1-fOnFPnlWHt-L5wHn1UQJ-Q',1,1,''),(18,'2021-07-18 05:57:54','2021-07-18 05:57:54',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc2OTE4NzMsInVzZXJfaWQiOjF9.3mGcgnL1GqTReWKxPAjS1G30gc8JcN6JQsSPUN3U6j4',1,1,''),(19,'2021-07-18 11:39:01','2021-07-18 11:39:01',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc3MTIzNDEsInVzZXJfaWQiOjF9.fZM0G6koOQJaZdPM-VbO_o2IT8435vOI-ZvLQfsfByM',1,1,''),(20,'2021-07-18 11:39:02','2021-07-18 11:39:02',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc3MTIzNDEsInVzZXJfaWQiOjF9.fZM0G6koOQJaZdPM-VbO_o2IT8435vOI-ZvLQfsfByM',1,1,''),(21,'2021-07-18 11:39:24','2021-07-18 11:39:24',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTc3MTIzNjQsInVzZXJfaWQiOjF9.ACeBdX4rctt7nEw1xEqq6FZdHWdahH8rnnfHADJQUO8',1,1,''),(22,'2021-07-26 11:03:43','2021-07-26 11:03:43',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTg0MDE0MjIsInVzZXJfaWQiOjF9.tztOjiVBAOxFWlr9GJQmv8MdE3bk6LUNfgo7RoLw56Q',1,1,''),(23,'2021-07-27 09:51:48','2021-07-27 09:51:48',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTg0ODM1MDgsInVzZXJfaWQiOjF9.YGiIRDcE1lvgr-8e_okxpg6agdqNFtRxMClHE71N1_o',1,1,''),(24,'2021-08-06 23:01:29','2021-08-06 23:01:29',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTkzOTQ4ODksInVzZXJfaWQiOjF9.KxTMYOLNxgZLoN1A0YFejB7zIXLlQDb39Vp4TItsXyI',1,1,''),(25,'2021-08-07 13:31:40','2021-08-07 13:31:40',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk0NDcwOTksInVzZXJfaWQiOjF9.vMg6iqY2_XHrmR4n-7J73NcIetb_8bdrTfz1zlTlXmk',1,1,''),(26,'2021-08-09 05:59:58','2021-08-09 05:59:58',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk1OTI3OTcsInVzZXJfaWQiOjF9.eP1KlwK_F8k16W0xyOtZ3yJeFolHkZVB3Ln2O8zt9GU',1,1,''),(27,'2021-08-09 11:26:14','2021-08-09 11:26:14',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk2MTIzNzMsInVzZXJfaWQiOjF9.3IOXj8W0leo32jK-H2xOcBLETmSdDZzJhiK4EeDwq0c',1,1,''),(28,'2021-08-09 11:31:13','2021-08-09 11:31:13',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk2MTI2NzMsInVzZXJfaWQiOjZ9.JmmbQES_7Iu_AM6FYiAOM3n9zNIySVfly8neRlMA_D4',6,1,''),(29,'2021-08-09 12:23:34','2021-08-09 12:23:34',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk2MTU4MTQsInVzZXJfaWQiOjZ9.s79s_PUcXaqU3xMPLHq8oDJizecmDrq7NVtE_8SN2wY',6,1,''),(30,'2021-08-10 12:30:35','2021-08-10 12:30:35',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk3MDI2MzUsInVzZXJfaWQiOjZ9.9VrRyCw3YIpbxdFZ267x-4PkExFkxXiGoV3eXg_7928',6,1,''),(31,'2021-08-10 23:16:00','2021-08-10 23:16:00',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk3NDEzNjAsInVzZXJfaWQiOjF9.Hl14702G_S82NfgC6paYynhvVCWips006nIN5mUXF2s',1,1,''),(32,'2021-08-12 05:17:15','2021-08-12 05:17:15',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk4NDk0MzQsInVzZXJfaWQiOjF9.UMnHH28cNK70Sj3HrkXizYYj4Hq6PU7unNW5cuu0a8I',1,1,''),(33,'2021-08-13 17:32:45','2021-08-13 17:32:45',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NTk5Nzk5NjQsInVzZXJfaWQiOjF9.PsUzJnSoqkVFI2IpqXeTh6bbb1XkdSkVlCm20calUJk',1,1,''),(34,'2021-08-14 08:41:34','2021-08-14 08:41:34',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjAwMzQ0OTQsInVzZXJfaWQiOjF9.UH9GOF3sbMIdBeF4AyZA0tY6XiVaAq1DNTVM3oABX0w',1,1,''),(35,'2021-08-15 20:28:24','2021-08-15 20:28:24',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjAxNjMzMDQsInVzZXJfaWQiOjF9.lUVyz_6HzblYH7wACBWBHmmdj9EhKcpQRygaFOhXA6U',1,1,''),(36,'2021-08-16 03:31:32','2021-08-16 03:31:32',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjAxODg2OTEsInVzZXJfaWQiOjF9.IGBuI83XF_bRztBxZy9cRnYDUgKjVgfOlk6jAb0Z9h4',1,1,''),(37,'2021-08-18 08:40:24','2021-08-18 08:40:24',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjAzODAwMjQsInVzZXJfaWQiOjF9.y2E96ul7ToX6FNwV0aPwlsr63TXJxc9SHgpt6aP9BBM',1,1,''),(38,'2021-08-21 11:00:44','2021-08-21 11:00:44',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA2NDc2NDQsInVzZXJfaWQiOjF9.wsdl7ECEHcJaFL3Gm-k7mIwo_yGEwqWHnmpCMAGs8wc',1,1,''),(39,'2021-08-21 16:09:06','2021-08-21 16:09:06',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA2NjYxNDYsInVzZXJfaWQiOjF9.kVNBp6MfCHXmAwo84E4moiBU8FH0vgiPr-CFhPucQqk',1,1,''),(40,'2021-08-23 09:27:14','2021-08-23 09:27:14',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA4MTQ4MzQsInVzZXJfaWQiOjZ9.bzD67jvhT4KQGKWXby12WQnAYx40AGTWlobr9tNohKY',6,1,''),(41,'2021-08-25 06:06:48','2021-08-25 06:06:48',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5NzU2MDgsInVzZXJfaWQiOjF9.slkp3vAvlWlPl3unvxjzIqJyRIzew_3H1d69vNweyP0',1,1,''),(42,'2021-08-25 06:16:35','2021-08-25 06:16:35',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5NzYxOTQsInVzZXJfaWQiOjF9.UHSCZcDPMWvFOauqxtZ8fXRWDGIjziyKx9aYsNv_klw',1,1,''),(43,'2021-08-25 06:42:59','2021-08-25 06:42:59',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5Nzc3NzksInVzZXJfaWQiOjF9.4lj9YLkhgpkUC-vOjMIh7CRV7heW-7ZIZ-NHiql_fHQ',1,1,''),(44,'2021-08-25 06:43:12','2021-08-25 06:43:12',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5Nzc3OTIsInVzZXJfaWQiOjF9.vxv9M1tm6DNa7HqGljRRpkeCb2Q--LhdYwKp2VH3tq4',1,1,''),(45,'2021-08-25 06:44:24','2021-08-25 06:44:24',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5Nzc4NjMsInVzZXJfaWQiOjF9.FWhmPWVB47cwe31N0zizJv-6krf5QUET5orVo989574',1,1,''),(46,'2021-08-25 06:47:08','2021-08-25 06:47:08',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjA5NzgwMjgsInVzZXJfaWQiOjF9.y1rxCwB1qwMdmDYv1jg7EPrYM9vkAMce-L5qBRReLOA',1,1,''),(47,'2021-08-25 19:04:41','2021-08-25 19:04:41',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEwMjIyODAsInVzZXJfaWQiOjF9.MvCni0cpDU0PDlhjwtNLi8-tKyujynkQqDHWQys4-bM',1,1,''),(48,'2021-08-25 19:10:54','2021-08-25 19:10:54',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEwMjI2NTMsInVzZXJfaWQiOjF9.2XNitmBrF2XYZ-0FmxZso6vnvb8y8bgs3Di7IBCu_Dc',1,1,''),(49,'2021-08-26 02:04:46','2021-08-26 02:04:46',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEwNDc0ODUsInVzZXJfaWQiOjF9.W_-_rLSXtr4J81aoVrUVZ9L_rXtVgcAh8RXCtBgIcFQ',1,1,''),(50,'2021-08-26 07:05:20','2021-08-26 07:05:20',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEwNjU1MTksInVzZXJfaWQiOjF9.z7j4iUiHoAx_rGDQq9RJd9yAbqilpJTOhjejntDPilE',1,1,''),(51,'2021-08-28 08:25:29','2021-08-28 08:25:29',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEyNDMxMjksInVzZXJfaWQiOjEwfQ.dhYZNNvKD-ocBF8cfYONUeGfT0oL_COjq6ucYB67MWI',10,1,''),(52,'2021-08-28 15:56:42','2021-08-28 15:56:42',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEyNzAyMDIsInVzZXJfaWQiOjE1fQ.wB4bBqlIuzpqBYGPWBxUwjrcW8vbW1iZbSOyZ9boRm8',15,1,''),(53,'2021-08-28 15:58:36','2021-08-28 15:58:36',NULL,'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdXRob3JpemVzIjp0cnVlLCJleHAiOjE2NjEyNzAzMTUsInVzZXJfaWQiOjE1fQ.9IGDsahqBCaWYCONv6gasmXxHZKOCqQrE8D8neGHtew',15,1,'');
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `catch_receipts`
--

DROP TABLE IF EXISTS `catch_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `catch_receipts` (
  `clients_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price_text` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(10) unsigned DEFAULT '0',
  `check_no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_catch_receipts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `catch_receipts`
--

LOCK TABLES `catch_receipts` WRITE;
/*!40000 ALTER TABLE `catch_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `catch_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_categories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES ('مستلزمات                   التنظيف','كل ما يتعلق بالمعقمات و لوازم التنظيف ','77e1b1cc-b47e-4a72-be6e-91cb75b5c3e0.png','#1661F7D5',1,'2021-07-13 18:27:34','2021-08-25 19:34:00',NULL),('المستهلكات                   و لوازم المناسبات','كل ما يتعق بالمستهلكات و لوازم المناسبات .','dd63ad7f-f9b8-4b28-aac8-c56a86acdc5e.png','#00D7FFB7',2,'2021-07-13 18:31:09','2021-08-26 04:09:17',NULL),('لوازم اساسية                   و معدات','كل ما يتعلق بالاساسيات اليومية ','f198927a-aa5d-4864-9119-fe9a9581e4f8.png','#B8BABAC2',3,'2021-07-14 09:53:19','2021-08-26 07:50:24',NULL),('المنزل                                     و المطبخ','كل مل يتعلق بالمنزل و المطبخ','1b500499-0ef4-407b-bc93-37667cc71935.png','#E9EDEBD4',4,'2021-07-14 09:54:36','2021-08-26 07:46:17',NULL),('الحديقة و                 الجلسات الخارجية','كل ما يتعلق بالحديقة و الجلسات الخارجية','ef52c912-8e73-4338-ae28-552db5498435.jpeg','#07EA28F0',5,'2021-07-14 10:06:37','2021-08-25 21:53:10',NULL),('الجمال و                           العناية الشخصية','كل ما يتعلق بالصحة و الجمال','64317c37-fa7a-4d41-b034-428290de1ebb.png','#06FF96A3',6,'2021-07-14 10:15:52','2021-08-26 14:01:42',NULL),('المكياج و                   مواد التجميل','كل ما يتعلق بالمكياج و التزيين','a5f17fee-fdbd-45cf-98be-eaaa624294f4.png','#C800FFE2',7,'2021-07-14 10:18:32','2021-08-26 11:49:38',NULL),(' اكسسوارات                نسائية		','كل ما يتعلق بالاكسسوارات النسائية .','f1a3dcb2-03a8-4383-ab1b-81a0e6fe79df.png','#FF00CCCA',8,'2021-07-14 10:23:18','2021-08-29 11:02:52',NULL),('اكسسوارات            رجالي','كل ما يتعلق باكسسوارات الرجال .','ba478a44-7f88-4dcb-a08a-3217e69cd39f.png','#A2D1E8AE',9,'2021-07-14 10:26:03','2021-08-25 22:23:00',NULL),('حديثي الولادة                و الاطفال','كا ما يتعلق بالاطفال و حديثي الولادة','1e36cb64-d7bd-45f4-82a8-875d02f655e2.png','#06FF0885',10,'2021-07-14 10:32:20','2021-08-30 12:46:28',NULL),('الالكترونيات                      و الطرائف','كل ما يتعلق بالحاسوب و الهواتف .','85eb78de-051c-45ff-b538-5b5b4684842f.png','#2A2A2BAE',11,'2021-07-14 10:36:14','2021-08-29 12:55:39',NULL),('ادوات الفن                      و القرطاسية','كل ما يتعلق بالفن و القرطاسية .','e82168cc-aa5b-41db-8bb5-b329cabca060.png','#FFFF00B7',12,'2021-07-14 10:40:06','2021-08-31 12:41:04',NULL),('الالعاب                                   و العاب الطاولة','كل ما يتعلق بالالعاب و الهوايات .','fded48fe-e1f3-46c1-9807-a76602379e82.png','#00FFEECF',13,'2021-07-14 10:42:12','2021-08-26 10:02:44',NULL),('الرياضة و                الهوايات الخارجية','كل ما يتعلق بالرياضات الخارجية .','f686544e-f7cc-4356-916b-2022e6b3367b.png','#DCFF00FF',14,'2021-07-14 10:44:14','2021-08-26 09:44:08',NULL),('اكسسوارات             الحيونات الاليفة','كل ما يتعلق بالحيوانات الاليفة .','ff1061c2-555f-4251-b1c5-51aae76e00b0.png','#FE1524CA',15,'2021-07-14 10:57:39','2021-08-09 06:06:22',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tax_id` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `boss` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `boss_phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `starter_balance` double DEFAULT NULL,
  `limit` double DEFAULT NULL,
  `balance` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price_type` int(10) unsigned DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_clients_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colors` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_colors_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `companies`
--

DROP TABLE IF EXISTS `companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companies` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_companies_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `companies`
--

LOCK TABLES `companies` WRITE;
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegates`
--

DROP TABLE IF EXISTS `delegates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delegates` (
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `emergency_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `tier1` double DEFAULT NULL,
  `tier2` double DEFAULT NULL,
  `tier3` double DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_delegates_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delegates`
--

LOCK TABLES `delegates` WRITE;
/*!40000 ALTER TABLE `delegates` DISABLE KEYS */;
/*!40000 ALTER TABLE `delegates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delegates_storages`
--

DROP TABLE IF EXISTS `delegates_storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delegates_storages` (
  `delegates_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_delegates_storages_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delegates_storages`
--

LOCK TABLES `delegates_storages` WRITE;
/*!40000 ALTER TABLE `delegates_storages` DISABLE KEYS */;
/*!40000 ALTER TABLE `delegates_storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discount_codes`
--

DROP TABLE IF EXISTS `discount_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discount_codes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_discount_codes_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discount_codes`
--

LOCK TABLES `discount_codes` WRITE;
/*!40000 ALTER TABLE `discount_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `discount_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `salary` double DEFAULT NULL,
  `emergency_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_employees_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'2021-07-14 09:36:32','2021-07-14 13:40:19',NULL,4,'27/09/1988','ABDOUN',500,'0795112211'),(2,'2021-07-14 09:37:32','2021-07-14 13:40:55',NULL,5,'06/03/1962','ABDOUN',0,'0795995995'),(3,'2021-07-14 09:37:56','2021-07-14 09:37:56',NULL,0,'','',0,''),(4,'2021-07-14 09:41:45','2021-08-09 12:25:30',NULL,6,'16/12/1997','MARJ ALHAMAM',300,'0792121401'),(5,'2021-07-14 09:45:48','2021-07-14 13:41:03',NULL,7,'01/01/2000','TEL\'A AL ALI',200,'079'),(6,'2021-07-14 09:47:15','2021-07-14 09:47:15',NULL,0,'','',0,''),(7,'2021-07-14 09:48:36','2021-07-14 09:48:36',NULL,8,'01/01/2000','MARJ ALHAMAM',250,'079');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_receipts`
--

DROP TABLE IF EXISTS `exchange_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_receipts` (
  `major_expenses_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price_text` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(10) unsigned DEFAULT '0',
  `check_no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_exchange_receipts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_receipts`
--

LOCK TABLES `exchange_receipts` WRITE;
/*!40000 ALTER TABLE `exchange_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `discount` double DEFAULT '0',
  `original_price` double DEFAULT '0',
  `new` tinyint(1) DEFAULT '0',
  `barcode` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `weight` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `packing` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `categories_id` int(10) unsigned DEFAULT NULL,
  `sub_categories_id` int(10) unsigned DEFAULT NULL,
  `section` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `stand` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `row` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `part` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `buy_price` double DEFAULT NULL,
  `jomla_price` double DEFAULT NULL,
  `jomlt_aljomla_price` double DEFAULT NULL,
  `reorder` double DEFAULT NULL,
  `pay_on_app` tinyint(1) DEFAULT '1',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES ('صحون بلاستيك الأهرام','صحون بلاستيك الأهرام 50 قطعة','166b74e3-cf4e-4288-b275-581270820236.png',0.75,0,1,0,'6253803291067','#FF000000','16.5سم','','50',2,5,'2','2','1','1',0,0,0,0,1,1,'2021-08-16 10:44:32','2021-08-21 16:22:31',NULL),('كاسات ثلج بلاستيك','كاسات بلاستيك 50 قطعة','c7d411ca-5072-4a67-960a-722257ad7e16.jpeg',0.4,0,0.5,0,'6253803290374','#00CBFF0A','صغير','','50',2,5,'2','2','3','1',0.2,0.35,0.3,10,1,2,'2021-08-16 11:05:03','2021-08-21 17:11:35',NULL),('رول كلينيست الصحي','رول كلينيست الصحي متعدد الاستخدامات','bf270664-608a-4705-bbf9-747ae41f7f58.png',0.8,0,1,0,'6251015101174','#0044FF93','205×125مم','400 غم','1',2,6,'1','1','1','1',0,0.75,0.65,10,1,3,'2021-08-16 11:49:29','2021-08-21 17:06:50',NULL),('ميدي كير لاصق جروح','ميدي كير لاصق جروح طبي معقم','cab8cf48-aa80-4d07-bdab-f1c9d27b59d8.jpeg',0.8,0,1,0,'3416702548257','#FF0000FF','','','100',3,10,'5','1','1','2',0,0.7,0.6,10,1,4,'2021-08-16 12:56:18','2021-08-21 17:04:42',NULL),('قصدير RZ','قصدير ار ..زي يستخدم لتغليف الطعام وحفظه طازجا','a8083d38-cfa7-4e47-a724-dc776caecbcf.jpeg',0.2,0,0.5,0,'6253012600070','#FF6D00FF','30سم×3م','','1',2,8,'2','1','4','2',0,0,0,0,1,5,'2021-08-17 11:06:42','2021-08-17 11:27:03',NULL),('قصدير RZ','قصدير ار..زي يستخدملتغليف الطعام وحفظه طازجا','92dd6e42-ea41-4ecb-a09c-169581ee99e1.png',0.5,0,0.75,0,'6253012600841','#FF0000FF','30سم×5م','','1',2,8,'2','1','4','1',0,0,0,0,1,6,'2021-08-17 11:15:25','2021-08-17 11:26:42',NULL),('قصدير RZ','يستخدم لتغليف الطعام وحفظه طازجا','3e66d5ea-1b88-4bfb-8c22-6108b9d20f44.png',1,0,1.5,0,'6253012600506','#FF0000FF','60سم×5م','','1',2,8,'2','1','4','4',0,0,0,0,1,7,'2021-08-17 11:26:17','2021-08-17 11:26:17',NULL),('قصديرRZ','يستخدم لتغليف الطعام وحفظه طازجا','f5093506-4199-4cbd-bfdc-bbe00d0c03bc.jpeg',0.75,0,1,0,'6253012600094','#FF5F00FF','60سم×3م','','1',2,8,'2','1','4','3',0,0,0,0,1,8,'2021-08-17 11:30:50','2021-08-17 11:30:50',NULL),('لاصق جروح','ضمادات قماشية مرنة','e68eaf28-4fd4-4ee6-93c0-1cd69872c10a.png',0.75,0,1,0,'6932799700011','#FFD100BD','','','50',3,10,'5','1','1','1',0,0,0,0,1,9,'2021-08-17 12:45:31','2021-08-21 16:06:32',NULL),('مجموعة مفكات دقيقة','مجموعة مفكات دقيقة   ذات شفرات صلبة ومقاومة للصدأ','1640bb3e-1c04-404e-8f2b-0e8b77f203a9.jpeg',0.95,0,1.25,0,'6985672016006','#FF0000B4','','','6',3,13,'7','1','3','2',0,0,0,0,1,10,'2021-08-17 13:07:28','2021-08-17 13:07:28',NULL),('صحون بلاستيك','صحون بلاستيك بيضاء','dee118d3-23d6-4d87-b0dc-78f4a5804406.png',0.95,0,1.29,0,'2212','#FF000000','18.5','','50',2,5,'2','2','1','2',0,0,0,0,1,11,'2021-08-18 08:37:21','2021-08-18 08:37:21',NULL),('شوك بلاستيك القلعة','شوك بلاستيك بيضاء القلعة','1cef203d-3a0e-4877-9830-263e88fd10f1.jpeg',0.4,0,0.5,0,'2313','#FF000000','','','25',2,5,'2','3','1','3',0,0.35,0.3,10,1,12,'2021-08-18 12:16:01','2021-08-21 17:17:54',NULL),('معالق بلاستيك الأهرام','الأهرام معالق بلاستيك بيضاء','c811e73d-b3e5-4d5e-81ce-ebc6d5b6bf3a.png',0.4,0,0.5,0,'2312','#0044FF13','','','25',2,5,'2','3','1','2',0,0.35,0.3,10,1,13,'2021-08-18 12:21:03','2021-08-21 17:24:33',NULL),('معالق بلاستيك FLEXY','FLEXY معالق بلاستيك شفاف','e7526c8c-d593-443c-acaa-25752a0a35b6.jpeg',0.5,0,1,0,'2311','#0044FF00','','','25',2,5,'2','3','1','1',0,0,0,0,1,14,'2021-08-18 12:24:44','2021-08-18 12:24:44',NULL),('قفازات بلاستكية','قفازات يد بلاستيكية شفاف','71951d6d-5508-456c-9d23-8e9ce1a7330b.png',0.5,0,1,0,'2321','#0044FF25','كبير','','100',2,9,'2','3','2','1',0.2,0.4,0.3,0,1,15,'2021-08-18 13:26:43','2021-08-21 16:24:50',NULL),('سوبر جلو نك اوفيس','سوبر جلو نك اوفيس تأثير فوري متعدد الاستعمال','0f9705d7-8c34-4440-a0b6-5793e39066cf.jpeg',0.4,0,0.75,0,'8033593025978','#0019FFB7','صغير','3 جرام','1',3,11,'3','1','1','2',0.08,0.35,0.3,10,1,16,'2021-08-18 14:05:43','2021-08-26 07:34:18',NULL),('سوبر جلو WILL REACH','سوبر جلو WILL REACH لكافة الاستعمالات','5a867df3-1a38-40d2-b6dd-2494853ad938.jpeg',0.25,0,0.6,0,'6943218800038','#FFFC00B2','','3 جرام','1',3,11,'3','1','2','1',0,0,0,0,1,17,'2021-08-18 14:13:58','2021-08-18 14:13:58',NULL),('سوبر جلو','سوبر جلو متعدد الاستعمال','73523a40-4a99-46d3-8e4b-3a1abf8b04cc.jpeg',0.25,0,0.6,0,'4719867214517','#F4FF00FF','','3 جرام','1',3,11,'3','1','1','3',0,0,0,0,1,18,'2021-08-18 14:18:45','2021-08-18 14:18:45',NULL),('سليكون حراري ','سيلكون حراري حجم كبير','d028e476-463c-49eb-a285-9342829dfcc0.png',0.1,0,0.15,0,'3111','#F4FF000D','كبير','','1',3,11,'3','1','1','1',0,0,0,0,1,19,'2021-08-18 14:29:26','2021-08-21 16:55:34',NULL),('Flash Light حجم وسط','Flash Light حجم وسط لون أصفر','536e02c9-85d3-4b21-a5d7-14bbe9e9b56c.png',0.5,0,1,0,'7118','#FFD100FF','','','1',3,12,'7','1','1','8',0,0,0,0,1,20,'2021-08-19 08:53:26','2021-08-19 08:53:26',NULL),('محول ثنائي','محول ثنائي ثلاث منافذ','8a835ceb-2dcd-4bfc-adfe-bbe422bfbaf6.jpeg',0.35,0,0.85,0,'7117','#FFD1002E','','','1',3,12,'7','1','1','7',0,0,0,0,1,21,'2021-08-19 09:05:08','2021-08-19 09:05:08',NULL),('مجول كهربائي','محول كهربائي من نظام ثلاثي الى ثنائي منفذ 1','6221bc76-a578-4a8c-9192-a07e574d2563.jpeg',0.85,0,1.3,0,'7116','#FFD1002E','','','1',3,12,'7','1','1','6',0,0,0,0,1,22,'2021-08-19 09:09:41','2021-08-19 09:09:41',NULL),('محول كهربائي ','محول كهربائي ثنائي 5 منافذ ','3a656522-a804-4c02-99ea-453b24843252.png',0.55,0,0.9,0,'7127','#FFD10028','','','1',3,12,'7','1','2','7',0,0,0,0,1,23,'2021-08-19 09:27:32','2021-08-19 09:27:32',NULL),('مفك 2 في 1','مفك مصلب وعادي 2في 1 مقبض بلاستيك','a9563371-8ec5-4874-abc3-1509eeb0aab4.png',0.6,0,1,0,'7138','#FFD100FF','6mm×100mm','-','1',3,12,'7','1','3','8',0,0.5,0.4,10,1,24,'2021-08-19 09:47:22','2021-08-26 07:27:27',NULL),('مفك فحص كهرباء','مفك فحص الكهرباء - تستر','7ac44fa8-39a7-4b28-8917-b0ba14163fd3.png',0.4,0,0.5,0,'7137','#FFD100FF','-','-','1',3,12,'7','1','3','7',0,0.35,0.3,10,1,25,'2021-08-19 09:50:53','2021-08-26 07:30:31',NULL),('مفك عادي','مفك براغي عادي مقبض اسود واصفر','bb32c2ba-8691-4552-8036-687aadbbec84.png',0.35,0,0.65,0,'7899842201576','#FFD100FF','6×100','','1',3,12,'7','1','3','9',0,0,0,0,1,26,'2021-08-19 10:08:09','2021-08-19 10:13:51',NULL),('Taigong مفك عادي','مفك براغي بمقبض خشبي','9aa9f9b1-94f6-4e65-853a-da1b4f28ae1c.png',0.35,0,0.65,0,'7135','#FFB400FF','5×75','','1',3,12,'7','1','3','5',0,0,0,10,1,27,'2021-08-19 10:12:04','2021-08-26 05:49:48',NULL),('دبوس مكتب','دبوس مكتب حديد','5cc5289e-1ce7-41d6-964c-96f1f9315e7d.png',0.4,0,0.5,0,'6934672380108','#1DFF00FF','','','50',3,13,'7','1','4','6',0,0.3,0.25,10,1,28,'2021-08-19 10:37:32','2021-08-26 07:31:54',NULL),('مقص حاد متعدد الاستعمالات','مقص حاد مع مقبض مطاطي مريح متعدد الاستعمالات','390b0eb1-f609-4d15-94ba-116f6b06603a.png',0.75,0,1.25,0,'7131','#FF0000C6','','','1',3,13,'7','1','3','1',0,0.6,0.5,10,1,29,'2021-08-19 10:46:33','2021-08-26 07:37:27',NULL),('مصفاي سليكون طوي','مصفاي فواكة و خضار سليكون دائرية ','ea2f0a98-b4e0-493f-a3ef-cd81b5cc5caa.jpeg',0.65,0,1,0,'12121','#16FF00FF','29.5*23.5*9.5cm','141 G','1',4,18,'12','1','2','1',0.5,0.6,0.55,10,1,30,'2021-08-19 11:03:10','2021-08-26 04:51:05',NULL),('مصفاي سيليكون طوي','مصفاي فواكة و خضار سيليكون مربعة','5dbea253-60e4-4c6a-ad66-b1708527cef1.png',0.65,0,1,0,'12122','#16FF00FF','-','141 G - غرام','1',4,18,'12','1','2','2',0.5,0.6,0.55,10,1,31,'2021-08-19 11:04:48','2021-08-26 04:46:08',NULL),('كبجاي بلاستيك','كبجاي سودا بلاستيك','16ca1af4-1b3a-4eaa-aa48-012904c568c6.png',0.5,0,1,0,'12111','#002EFF00','','','1',4,18,'12','1','1','1',0,0,0,0,1,32,'2021-08-19 11:11:09','2021-08-19 11:26:17',NULL),('معلقة مسطحة','معلقة مسطحة سودا بلاستيك','e9e96f7a-c8e3-4a73-8720-93efa614edcd.png',0.5,0,1,0,'12112','#002EFF00','','','1',4,18,'12','1','1','2',0,0,0,0,1,33,'2021-08-19 11:17:24','2021-08-23 09:30:21',NULL),('حامي حرارة','حامي حرارة للطاولة','839e8aa9-5f1f-4175-a65c-ddc220974fd9.jpeg',0.2,0,0.5,0,'12123','#2CFF00FF','-','-','1',4,20,'12','1','2','3',0,0.15,0.1,10,1,34,'2021-08-19 13:07:15','2021-08-26 07:44:50',NULL),('حامي حرارة','حاميحرارة سليكون لون ازرق','475a8772-5a2e-4e6d-a2fb-058b86dbca63.png',0.2,0,0.5,0,'12124','#0092FFFF','-','-','1',4,20,'12','1','2','4',0,0.15,0.1,10,1,35,'2021-08-19 13:10:32','2021-08-26 07:43:06',NULL),('أداة تقشير','أداة تقشير حادة لكافة الاستعمالات ','b748827a-ea5d-4f2a-8fa0-805231a0026e.jpeg',0.35,0,1.9,0,'6937612200075','#0060FF1C','-','-','1',4,21,'11','1','2','3',0.13,0.3,0.25,10,1,36,'2021-08-21 10:31:32','2021-08-26 07:46:17',NULL),('معلقة مسطحة','معلقة مسطحة ستيل','8670ca3f-bba5-437a-854e-ba665e47c626.png',1,0,2,0,'12114','#0060FF1C','','','1',4,20,'12','1','1','4',0,0,0,0,1,37,'2021-08-21 10:35:15','2021-08-21 10:35:15',NULL),('خفاقة يدوية','خفاقة يدوية ستيل','53f4e682-0077-4542-b2ba-f88f92dae8c9.png',0.35,0,0.6,0,'14127','#0060FF1C','','','1',4,20,'14','1','2','7',0,0,0,0,1,38,'2021-08-21 10:55:36','2021-08-21 11:10:12',NULL),('خفاقة يدوية','خفاقة يدوية بلاستيك قوي','70380b10-7440-41dc-a1e4-90848751c4c8.png',0.45,0,0.85,0,'8697837978231','#00FFF9E1','','','1',4,20,'14','1','2','6',0,0,0,0,1,39,'2021-08-21 11:03:43','2021-08-21 11:09:50',NULL),('مبشرة ستيل','مبشرة ستيل متعددة الاستعمال','8affe33d-0568-4c86-9c36-c165f114657c.png',0.6,0,1.4,0,'6944128624158','#00FFF923','','','1',4,21,'14','1','2','5',0,0,0,0,1,40,'2021-08-21 11:09:28','2021-08-21 11:09:28',NULL),('حفارة كوسا','حفارة كوسا يد خشب','d2ecc717-e390-46aa-901d-70a0c8ed913a.png',0.25,0,0.6,0,'14123','#00FFEB25','','','1',4,21,'14','1','2','3',0,0,0,0,1,41,'2021-08-21 11:20:44','2021-08-21 11:20:44',NULL),('منصب غاز','منصب غاز حديد','0dddaeea-889a-4a8e-b86b-a682f8ce3cae.png',0.2,0,0.5,0,'12123','#FF000001','','','1',4,20,'12','1','2','3',0,0,0,0,1,42,'2021-08-22 09:05:05','2021-08-22 09:05:05',NULL),('عصارة ليمون','عصارة ليمون','76e20f00-84a2-4911-8e99-7abff28464d7.jpeg',0.69,0,2,0,'14132','#9EFF00FF','','','1',4,20,'14','1','3','2',0,0,0,0,1,43,'2021-08-22 09:09:50','2021-08-22 09:09:50',NULL),('نكاشات تزين الطعام','نكاشات تزين الطعام على شكل عصفور بألوان مميزة','d30b2f3a-2c13-46de-b723-b58b0d0f149e.png',0.6,0,2,0,'8697512624118','#FF007F5A','','','12',4,20,'14','1','3','4',0,0,0,0,1,44,'2021-08-22 09:22:17','2021-08-22 09:24:08',NULL),('زبدية بلاستيك','زبدية بلاستيك ملونة','97dd5b5b-71c7-4340-a3bb-52e11c961b58.png',0.1,0,0.5,0,'11111','#FF0000A8','','','1',4,17,'11','1','1','1',0,0,0,0,1,45,'2021-08-22 09:28:27','2021-08-22 09:28:27',NULL),('زبدية بيضاء','زبدية بيضاء صغيرة','0f9b2db3-36d1-4d33-b21e-cdf9a17d6bd5.png',0.35,0,1,0,'13141','#FF000006','','','1',4,17,'13','1','4','1',0,0,0,0,1,46,'2021-08-22 11:19:41','2021-08-22 11:19:41',NULL),('قوالب تقطيع','قوالب تقطيع العجين على شكل وردة','0ad72e8f-22d3-42c4-a6d8-c51415270e76.png',0.35,0,0.45,0,'8697950733212','#FFD10070','','','4',4,20,'14','1','2','1',0,0,0,0,1,47,'2021-08-22 11:51:28','2021-08-22 11:51:28',NULL),('قوالب تقطيع حديد','قوالب تقطيع حديد','bbdad98f-64da-4e06-a235-e136c0c72a4e.png',0.55,0,1,0,'4856985895522','#FF17008A','','','3',4,20,'14','1','2','2',0,0,0,0,1,48,'2021-08-22 11:54:56','2021-08-22 11:54:56',NULL),('مشحاف حلويات','مشحاف حديد للحلويات','af76de04-6603-49a9-8d34-ed08204f8d9d.jpeg',0.15,0,0.5,0,'14124','#FF17000B','','','1',4,20,'14','1','2','4',0,0,0,0,1,49,'2021-08-22 11:59:51','2021-08-22 11:59:51',NULL),('سدادة زجاج','سدادة زجاج سليكون','1b9a9e0c-a24a-4cce-b6aa-6c6b978e8724.jpeg',0.25,0,0.35,0,'14131','#00FF3889','','','1',4,20,'14','1','3','1',0,0.2,0.15,10,1,50,'2021-08-22 12:03:37','2021-08-26 04:26:53',NULL),('مسن سكاكين ','مسن سكاكين حجري','3e2efcb8-f5de-4595-8dcd-2413f7a90793.png',0.65,0,1.25,0,'14133','#16FF00FF','-','-','1',4,20,'14','1','3','3',0,0.55,0.45,10,1,51,'2021-08-22 12:07:54','2021-08-26 04:14:38',NULL),('كيس هدايا','كيس هدايا لون زهري','d3c43731-2b90-4488-a731-1af73d8c12b2.jpeg',0.1,0,0.5,0,'10114','#FF00B85B','L','-','1',2,7,'10','1','1','4',0,0.05,0.05,10,1,52,'2021-08-22 12:12:24','2021-08-26 04:09:17',NULL),('سدادة باب','سدادة باب بلاستيك','d2bdf925-6c60-400d-ab5a-2890aaf976f0.png',0.6,0,1,0,'8122','#0067FFFF','-','-','2',3,13,'8','1','2','2',0.2,0.5,0.4,10,1,53,'2021-08-22 12:30:09','2021-08-26 04:07:24',NULL),('علاقة فراشي الاسنان','علاقة فراشي اسنان بلاستيك - 3 فراشي','870c0477-463b-4c37-969d-8de811b29266.png',0.7,0,1,0,'6970225510216','#FF9F00C5','','','1',3,13,'6','1','4','2',0,0.6,0.5,10,1,54,'2021-08-22 12:37:26','2021-08-26 04:06:25',NULL),('ملاقط غسيل','ملاقط غسيل خشب','69ca45e9-039e-42f8-b1bd-d4c93cf41aff.png',0.5,0,1,0,'6934578359175','#33FF00FF','6.1×1.1 CM','-','20',3,13,'6','1','1','4',0.2,0.4,0.3,10,1,55,'2021-08-22 12:55:52','2021-08-26 04:03:16',NULL),('نكاشات للأسنان ','نكاشات أسنان خشب','0bbe5c7e-8197-40ec-9793-30902eb5a47d.png',0.1,0,0.5,0,'6131','#FFFC0000','6.1×1.1 CM','','100',3,13,'6','1','3','1',0,0,0,0,1,56,'2021-08-22 12:58:30','2021-08-22 12:58:30',NULL),('صابونة dove','صابونة dove لبشرة مثالية','32d8e850-1fa3-4677-b4bc-235564348a56.png',0.55,0,1.5,0,'8000700000005','#0044FFC7','100غ','','1',6,28,'21','','2','12',0,0,0,0,1,57,'2021-08-22 13:11:34','2021-08-26 14:01:42',NULL),('صابون نابلسي','صابون نابلسي بخلاصة زيت الزيتون','7e1428b3-1d74-4c2d-b7bd-5021c56fa365.png',0.35,0,0.75,0,'6254000340039','#0044FFC7','140غ','','1',6,28,'21','1','2','11',0,0,0,0,1,58,'2021-08-22 13:14:11','2021-08-25 11:41:54',NULL),('طبع حماية العفش','طبع حماية العفش- مانع انزلاق و خدوش','3c0689cd-6f38-4f77-a9ad-cf8290968dd5.jpeg',0.8,0,1,0,'1111','#FFE600FF','','','16',3,13,'','','','',0,0.7,0.6,10,1,59,'2021-08-23 09:39:07','2021-08-26 03:55:59',NULL),('علاقة مطبخ ','علاقة مطبخ بلاستيك - قلب','0ae694ce-ee35-475f-85c1-71fe32604f29.jpeg',0.5,0,0.85,0,'1111','#00FF47F0','-','-','1',3,13,'','','','',0.2,0.4,0.3,10,1,60,'2021-08-23 09:42:16','2021-08-26 04:00:37',NULL),('مجرود ومكنسة','مجرود بلاستيك ومكنسة صغيرة لتنظيف سطح المكتب','9477c329-d79d-4714-afcb-06999764fbdc.jpeg',0.4,0,0.5,0,'11111','#33FF00FF','صغير','','1',3,10,'','','','',0.2,0.35,0.3,10,1,61,'2021-08-23 09:45:28','2021-08-26 03:45:11',NULL),('مجرود ومكنسة','مجرود ومكنسة بلاستيك صغيرة لتنظيف سطح المكتب','80114f7b-b6ba-410e-8100-5b26ff0688af.png',0.4,0,0.5,0,'1111','#0099FFFF','صغير','','1',3,10,'','','','',0.2,0.35,0.3,10,1,62,'2021-08-23 09:47:51','2021-08-26 03:45:33',NULL),('حامل دش','حامل دش سليكون مثبت على الحائط','a2062b5e-fcdd-47b9-afd2-4dc66659045c.png',0.8,0,2,0,'6892247962869','#FF000000','','','1',3,13,'8','1','2','2',0,0.7,0.6,10,1,63,'2021-08-24 09:11:28','2021-08-26 03:42:45',NULL),('نكاشات أسنان','نكاشات أسنان خشب','3ce923df-60a4-4993-8966-0e2d6ef144a1.png',0.3,0,0.3,0,'6931575111232','#FF0000C2','','','100',3,10,'6','1','2','1',0.15,0.25,0.2,10,1,64,'2021-08-24 09:25:02','2021-08-26 03:37:06',NULL),('خاتم التسبيح','خاتم التسبيح عداد','37f93a4d-b703-4ba4-8988-eb8daab0c237.jpeg',0.4,0,0.5,0,'8121','#A100FFC2','S','-','1',3,10,'8','1','2','1',0.2,0.35,0.3,10,1,65,'2021-08-24 09:28:37','2021-08-26 03:32:07',NULL),('علاقة موفرة للمساحة','علاقة بلاستيك متينة موفرة 3 أضعاف من المساحة لون أبيض','49c49308-28dd-40c0-b223-5c97f2ae284d.png',0.75,0,1,0,'6121','#A100FF05','33cm×17.5cm','','1',3,10,'6','1','2','1',0,0.65,0.55,10,1,66,'2021-08-24 09:56:03','2021-08-26 07:49:18',NULL),('علاقة موفرة للمساحة','علاقة بلاستيك متينة موفرة 3 أضعاف من المساحة لون ازرق','49cf3b6a-fc85-4cdc-abd8-b1c6d6a975c6.png',0.75,0,1,0,'6121','#00A8FF80','33cm×17.5cm','','1',3,10,'6','1','2','1',0,0.65,0.55,10,1,67,'2021-08-24 10:00:03','2021-08-26 07:48:56',NULL),('علاقة موفرة للمساحة','علاقة بلاستيك متينة موفرة 3 أضعاف من المساحة لون زهري','fe7001a5-899a-4fde-9468-373692c5d0e4.png',0.85,0,1.5,0,'6121','#FF00EA58','33cm×17.5cm','','1',3,10,'6','1','2','1',0,0.75,0.65,10,1,68,'2021-08-24 10:01:53','2021-08-26 03:26:37',NULL),('علاقة موفرة للمساحة','علاقة بلاستيك متينة موفرة 3 أضعافمن المساحة لون سكني','6bad9aac-7ac1-4d93-8922-ba7187cae8ae.png',0.75,0,1,0,'6121','#7E00FF36','33cm×17.5cm','','1',3,10,'6','1','2','1',0,0.65,0.55,10,1,69,'2021-08-24 10:04:50','2021-08-26 07:50:24',NULL),('حجر القدم ','حجر القدم يزيل نسيج الجلد ويتركه ناعم ','59669256-7bc3-4560-9269-892ec147f4a0.png',1,0,1.5,0,'6006875294234','#FF0000BE','33cm×17.5cm','','1',6,32,'19','1','2','4',0,0.9,0.8,0,1,70,'2021-08-24 10:52:42','2021-08-26 03:23:23',NULL),('مقص أظافر','مقص أظافر رويال','02b938b3-c584-42c0-a8dc-c7206a3bf8f9.jpeg',0.55,0,1.35,0,'18114','#FF00000A','','','1',6,32,'18','1','1','4',0,0,0,0,1,71,'2021-08-24 11:20:11','2021-08-26 11:46:37',NULL),('ديتول صابون','صابون ديتول للبشرة الحساسة','e1846f6b-744d-49dd-85f9-5d6cb05ba69c.png',0.25,0,0.45,0,'8993560025069','#BE00FF82','','','1',6,28,'21','1','2','16',0,0,0,0,1,72,'2021-08-25 08:51:01','2021-08-25 08:51:01',NULL),('لوكس صابون','لوكس صابون لبشرة ناعمة','32eebe6d-2bcd-4a30-a615-078db45941e9.png',0.45,0,0.65,0,'8999999527563','#FF0086C4','80غ','','1',6,28,'21','1','2','17',0,0,0,0,1,73,'2021-08-25 08:55:03','2021-08-25 08:55:03',NULL),('جونسون صابون','صتبونة بخلاصة التوت','b6165778-a3e3-4c12-9b2a-9ea4c8d0da07.png',0.5,0,0.69,0,'3574661093864','#F700FFC4','125غ','','1',6,28,'21','1','2','15',0,0,0,0,1,74,'2021-08-25 09:07:27','2021-08-25 09:07:27',NULL),('جانسون صابون','صابونة بخلاصة ماء الورد','8000a124-6dde-4406-ae7c-e126311837dd.jpeg',0.5,0,0.69,0,'3574661094113','#FF0086E3','125غ','','1',6,28,'21','1','2','15',0,0,0,0,1,75,'2021-08-25 09:09:24','2021-08-25 09:09:24',NULL),('روجيكس صابون ','صابون الجمال','a66cc2b4-6ff1-4c94-8f3e-cf1c73132bb6.png',0.5,0,1,0,'8681725021109','#00FF4071','125غ','','1',6,28,'21','1','2','18',0,0,0,0,1,76,'2021-08-25 09:14:38','2021-08-25 09:14:38',NULL),('صابون التبيض','صابون التبيض للمناطق الحساسة بخلاصة الكولاجين والحليب','30014f65-6d00-47b6-a999-eb8ee61cfb24.png',0.85,0,1.5,0,'6932511215908','#FF0063A0','100غ','','1',6,29,'21','1','2','2',0,0,0,0,1,77,'2021-08-25 09:21:04','2021-08-25 09:21:04',NULL),('صابون تبيض البشرة','صابون تبيض البشرة بخلاصة الزيتون','11824b43-865d-45bf-9dd0-b8e900eab581.jpeg',0.65,0,1,0,'6932511207941','#73FF00FF','100غ','','1',6,29,'21','1','2','9',0,0,0,0,1,78,'2021-08-25 09:27:21','2021-08-25 09:27:21',NULL),('صابون الكولاجين','صابون الكولاجين مبيض ومنفخ','6f9ef309-0b66-4c2e-ad45-85b7fcb575f2.png',0.75,0,1.5,0,'6946440409727','#FFCA00A8','100غ','','1',6,29,'21','1','2','3',0,0,0,0,1,79,'2021-08-25 09:42:57','2021-08-25 09:42:57',NULL),('صابونة زيت الأرغان','صابون زيت الأرغان وفيتامين Eيقوي البشرة ويجعلها رطبة وناعمة','8afb59c5-c5e5-4bba-98b6-3b67111f95ec.png',1,0,1.5,0,'6946440410051','#FFCA00EF','100غ','','1',6,29,'21','1','2','1',0,0,0,0,1,80,'2021-08-25 09:46:57','2021-08-25 09:46:57',NULL),('الصابون المطور','الصابون المطور لنفخ وتكبير الوجه','8c589778-1576-40e7-abbd-719a00071f08.png',0.65,0,1,0,'6932511207293','#FFBC00FF','100غ','','1',6,29,'21','1','2','8',0,0,0,0,1,81,'2021-08-25 09:51:28','2021-08-25 09:51:28',NULL),('كنزة كريم الجمال','منفخ ومبيض يزيل الدوائر السوداء وحب الشباب والتجاعيد وغيرها ','608ad249-413f-4ff8-9813-2597ba58eb71.png',0.9,0,2,0,'639072226553','#1DFF0098','100غ','','1',6,29,'21','1','1','11',0,0,0,0,1,82,'2021-08-25 09:56:26','2021-08-25 09:56:26',NULL),('خيط تنظيف الأسنان','خيط تنظيف الأسنان متعدد الوظائف','e7ea9934-e711-42f5-a3bb-26cf08844df1.png',0.85,0,1,0,'16115','#000AFFB5','','','20',6,31,'16','1','1','5',0.2,0.75,0.65,10,1,83,'2021-08-25 10:15:45','2021-08-26 03:19:40',NULL),('فرشاة أسنان ','فرشاة أسنان White Glo','d9fcceeb-cf63-4878-b315-b092d1d88f2b.png',0.85,0,1.6,0,'16113','#000AFF2A','','','1',6,31,'16','1','1','3',0,0,0,0,1,84,'2021-08-25 10:19:52','2021-08-25 10:19:52',NULL),('فرشاة أسنان','فرشاة أسنان وسط','cc132414-5da1-4018-81f7-b4ca397038b4.png',0.45,0,0.95,0,'16114','#000AFF2A','','','1',6,31,'16','1','1','4',0,0,0,0,1,85,'2021-08-25 10:22:41','2021-08-25 10:22:41',NULL),('شفرات حلاقة نسائية','شفرات حلاقة للبشرة العادية والحساسة','d929b711-3bd7-4da0-ad75-7e4afabaec96.png',1,0,1.45,0,'6970675700007','#FF00A3F7','','','3',6,33,'19','1','1','1',0,0,0,0,1,86,'2021-08-25 10:47:07','2021-08-25 10:47:07',NULL),('شفرات الوجه','شفرات الحواجب والوجه','f1896f49-d725-4624-920f-3c934d03b580.png',0.65,0,1,0,'6971091793321','#FFF500F7','','','4',6,33,'19','1','1','6',0,0,0,0,1,87,'2021-08-25 10:51:58','2021-08-25 10:51:58',NULL),('جويل مزيل الشعر','مزيل الشعر الفوري','9b344176-0ef5-408a-a58b-52797923ede3.jpeg',0.1,0,0.35,0,'6254000373358','#E900FF79','65غ','','1',6,33,'16','1','3','2',0,0,0,0,1,88,'2021-08-25 10:56:49','2021-08-25 10:56:49',NULL),('زبدة الجسم','رطوبة ونعومة عالية للبشرة','581e5a2a-eabe-4a77-a116-a9cb8e7b8816.png',0.85,0,2.5,0,'5060315044286','#E900FFFF','','','1',6,29,'19','1','1','5',0,0,0,0,1,89,'2021-08-25 11:01:38','2021-08-25 11:01:38',NULL),('بودرة للجسم','بودرة للجسم حجم صغير','318c876c-0da4-40b6-8cb7-7812259c9940.png',0.45,0,1,0,'6921612102187','#FFC3007F','','','1',6,29,'19','1','1','3',0,0,0,0,1,90,'2021-08-25 11:05:01','2021-08-25 11:05:01',NULL),('شفرة للحلاقة ','شفرةحلاقة لون اسود للرجال','b440cfbe-7dad-4198-a873-cd7809821bbe.jpeg',1,0,1,0,'20114','#FFC30000','كبير','50 غرام','1',6,34,'20','1','1','4',0.2,0.75,0.5,10,1,91,'2021-08-25 11:11:45','2021-08-26 03:12:58',NULL),('شفرة للحلاقة','شفرة للحلاقة لون أبيض','5b60a057-18bd-4cb1-b003-533f48cea44f.png',0.45,0,1,0,'20113','#FFC30017','','','1',6,34,'20','1','1','3',0,0,0,0,1,92,'2021-08-25 11:14:40','2021-08-25 11:14:40',NULL),('شفرات حلاقة للرجال','شفرات حلاقة للبشرة العادية والحساسة ','7e2fbc01-0fc9-4e97-9667-722c4d21898f.png',1,0,1.45,0,'6970675700007','#0035FFCC','','','3',6,34,'20','1','1','1',0,0,0,0,1,93,'2021-08-25 11:25:51','2021-08-25 11:25:51',NULL),('شفرات حلاقة sharp','شفرات حلاقة برؤس متحركة','8371eabb-a678-4294-874e-3c4219ced482.png',1,0,1.45,0,'9780201379624','#0035FFCC','','','5',6,34,'20','1','1','2',0,0,0,0,1,94,'2021-08-25 11:29:46','2021-08-25 11:29:46',NULL),('fujika لاصق جروح','fujika  لاصق جروح صغير','36a610a0-c9ca-40ca-ac48-d7ff7283bc90.png',0.05,0,0.25,0,'8697412471645','#0035FF58','','','10',6,34,'18','1','1','2',0,0,0,0,1,95,'2021-08-25 11:36:04','2021-08-25 11:36:04',NULL),('Jourin sense مشقر للجسم','لتشقير وتفتيح الوجه والجسم','38836df8-4243-4f36-a13c-4e3087135efb.jpeg',0.9,0,3,0,'8033162575194','#FF0000FF','30غ','','1',6,33,'21','1','1','1',0,0,0,0,1,96,'2021-08-25 11:50:37','2021-08-25 11:50:37',NULL),('مشقر سكر بنات','مشقر سكر بنات للوجه والجسم','688c314f-f57a-4186-88d0-1263987afa43.png',0.9,0,2.5,0,'6253505982577','#FF0000FF','10غ','','1',6,33,'21','1','1','3',0,0,0,0,1,97,'2021-08-25 11:53:10','2021-08-25 11:53:10',NULL),('كريم أساس سليكون','كريم أساس سليكون منفخ للخدود','294bceca-4b7d-46c1-befe-9ea1b22ff10e.png',1,0,4,0,'6991586422055','#FFC30076','72ml ','','1',7,35,'21','1','1','6',0,0,0,0,1,98,'2021-08-25 12:36:01','2021-08-25 12:36:01',NULL),('كريم أساس صبوحة الذهبية','كريم أساس لنفخ الوجه','214b5db1-b716-4c62-85be-953458414242.png',1,0,4,0,'6942257020339','#FFC30076','65 ml','','1',7,35,'21','1','1','4',0,0,0,0,1,99,'2021-08-25 12:40:30','2021-08-25 12:40:30',NULL),('كريم أساس بحب اللوز','كريم أساس بحب اللوز مغذي منعم للبشرة','3f35bea1-9ba4-4519-bec3-fac8262dbfcc.png',1,0,5.5,0,'6991586422161','#FFC30076','60ml','','1',7,35,'21','1','1','5',0,0,0,0,1,100,'2021-08-25 12:44:22','2021-08-25 12:44:22',NULL),('كريم أساس يومي','كريم أساس يومي يحمي البشرة من التحسس','ab82a9b8-c2cc-4ece-b288-4b4916f3cbfa.png',1,0,5,0,'6991586422215','#FF007FFF','60ml','','1',7,35,'21','1','1','7',0,0,0,0,1,101,'2021-08-25 12:48:05','2021-08-25 12:48:05',NULL),('كريم أساس ضد الماء','كريم أساس ضد الماء','af8dbead-b850-4543-a898-a966297f11c3.png',1,0,5,0,'6915567201910','#FFC300A7','80ml','','1',7,35,'21','1','1','8',0,0,0,0,1,102,'2021-08-25 12:52:33','2021-08-25 12:52:33',NULL),('كريم أساس سينمائي','كريم أساس سنمائي لنفخ الخدود','40516b79-c4e4-464f-9584-33689be2a6dd.png',1,0,6,0,'6991586421843','#F000FFFF','60ml','','1',7,35,'21','1','1','9',0,0,0,0,1,103,'2021-08-25 12:55:43','2021-08-25 12:55:43',NULL),('dream velvet كريم أساس','dream velvet كريم أساس طبي يعالج العيوب','a8c49276-12d5-4ee7-942d-8e484688437e.png',1,0,6,0,'6291106063080','#FFD10082','30ml','','1',7,35,'21','1','1','10',0,0,0,0,1,104,'2021-08-25 12:59:44','2021-08-25 12:59:44',NULL),('kylie كحل العين','كحل للعين وتحديد للحواجب ضد الماء','5990a31f-c335-4be1-b75b-782dfea42545.png',0.95,0,3.5,0,'6978599880737','#FFD10000','','','1',7,36,'22','1','1','3',0,0,0,0,1,105,'2021-08-25 13:13:14','2021-08-25 13:13:14',NULL),('M.N قلم للحواجب','M.N قلم حواجب مع فرشاة لون بني نمرة 03','7b92b691-fcad-4ae2-807a-c310991565f6.png',0.75,0,1,0,'6923859254223','#C500FFCE','','','1',7,36,'22','1','1','4',0,0.65,0.55,0,1,106,'2021-08-25 13:17:29','2021-08-26 08:42:25',NULL),('M.Nقلم للحواجب','M.Nقلم للحواجب مع فرشاة لون بني نمرة0.02','c4f16cc9-a667-4697-8647-a9f92257a2d2.png',0.95,0,1.5,0,'6923859254223','#C500FFCE','','','1',7,36,'22','1','1','5',0,0,0,0,1,107,'2021-08-25 13:20:55','2021-08-25 13:20:55',NULL),('essence مسكارا','essence مسكارا أكثر كثافة لون زهري','de034048-9420-46ba-b022-3a0319ecc42e.png',1,0,4,0,'6923589179612','#FF00CECE','','','1',7,36,'22','1','2','1',0,0,0,0,1,108,'2021-08-25 13:27:59','2021-08-25 13:27:59',NULL),('essence مسكار ','essence مسكار ضد الماء لون نهدي','7572f3da-24f3-4a52-8a32-207628f1a80b.png',1,0,4,0,'6923589179612','#7E00FFFF','','','1',7,36,'22','1','2','2',0,0,0,0,1,109,'2021-08-25 13:30:06','2021-08-25 13:30:06',NULL),('essence مسكارا','essence مسكارا ','32a6b7ce-2617-4740-a11c-ac648ac59ff4.jpeg',1,0,4,0,'6923589179612','#7E00FF00','','','1',7,36,'22','1','2','3',0,0,0,0,1,110,'2021-08-25 13:37:09','2021-08-26 11:49:38',NULL),('lip stick الصبار','lip stick بخلاصة الصبار لترطيب الشفاه','52cd9f3a-75ea-4022-a7e0-11561a3dd64c.png',0.5,0,1,0,'6922946005793','#6CFF00FF','','','1',7,37,'23','1','1','2',0,0,0,0,1,111,'2021-08-25 13:50:34','2021-08-25 19:05:55',NULL),('MAF PEN كحلة بيضاء','كحلة بيضاء لتوسيع العين','a8f379de-35f8-4c9e-9f11-a970da640c9a.png',0.75,0,1,0,'22129','#FF000000','','','1',7,36,'22','1','2','9',0,0,0,10,1,112,'2021-08-26 12:17:27','2021-08-26 12:17:27',NULL),('أحمر الشفاه HUDA BEAUTY','أحمر الشفاه من HUDA BEAUTY ','82921f6a-96d2-43b6-9d79-00740a4d8e9d.png',0.8,0,1,0,'23112','#FF00B1FF','','','1',7,37,'23','1','1','2',0,0,0,0,1,113,'2021-08-28 09:51:07','2021-08-28 09:51:07',NULL),('أحمر الشفاه HUDA BEAUTY','أحمر الشفاه من HUDA BEAUTY','e2ee0258-19b0-4cee-9bbc-8ef9ededfb59.png',0.8,0,1,0,'21312','#00FF9500','','','1',7,37,'23','1','1','2',0,0,0,0,1,114,'2021-08-28 09:58:25','2021-08-28 09:58:25',NULL),('أحمر الشفاه HUDA BEAUTY','أحمر الشفاه من HUDA BEAUTY','6aba1c73-d4a6-4a7f-a8bb-d1adee08bd08.png',0.8,0,1,0,'23112','#FF910018','','','1',7,37,'23','1','1','2',0,0,0,0,1,115,'2021-08-28 10:09:33','2021-08-28 10:09:33',NULL),('أحمر الشفاه HUDA BEAUTY','أحمر الشفاه من HUDA BEAUTY','b1681447-1a6e-43f1-827b-4d38543a536d.jpeg',0.8,0,1,0,'23112','#FF910068','','','1',7,37,'23','1','1','2',0,0,0,0,1,116,'2021-08-28 10:19:34','2021-08-28 10:19:34',NULL),('أحمر الشفاه HUDA BEAUTY','أحمر الشفاه من  HUDA BEAUTY','1ce92af4-dce9-48f4-97da-b6c55e4f3f2a.png',0.8,0,1,0,'23112','#FF4200FF','','','1',7,37,'23','1','1','2',0,0,0,0,1,117,'2021-08-28 10:35:45','2021-08-28 10:35:45',NULL),('أسفنج مكياج KYLIE','مجموعة أسفنج مكياج من KYLIE','09811ede-34d0-40f2-a9d6-aefd007f97c4.jpeg',0.4,0,0.5,0,'6958748546783','#FF00E389','','','6',7,39,'23','1','3','2',0,0,0,0,1,118,'2021-08-28 10:50:21','2021-08-28 10:50:21',NULL),('BEAUTY BLENDER سيليكون','BEAUTY BLENDER سيليكون لدمج المكياج','6fa3f9f2-2f3c-4d97-99e6-827846866f89.jpeg',0.8,0,1,0,'748252952035','#FF00E31A','','','1',7,39,'23','1','4','3',0,0,0,0,1,119,'2021-08-28 10:59:38','2021-08-28 10:59:38',NULL),('حلق اذن ','حلق اذن لون زهري','7c9001ac-1f6c-403d-b519-7f554b5c094f.png',0.8,0,1,0,'281310','#FF00E3A7','','','1',8,40,'28','1','3','10',0,0,0,0,1,120,'2021-08-28 12:15:49','2021-08-28 12:15:49',NULL),('حلق فضي','حلق فضي شكل وردة','bc9c9de1-aa51-4736-8f7a-3884a54df8bc.png',0.35,0,0.5,0,'28141','#FF00E328','','','1',8,40,'28','1','4','1',0,0,0,0,1,121,'2021-08-28 12:18:39','2021-08-28 12:18:39',NULL),('أسوار دهبي ','أسوار دهبي مطاط','94f9263d-f74a-45e1-ae29-e737a7ba4639.png',0.35,0,0.5,0,'26132','#FFA6007F','','','1',8,42,'26','1','3','2',0,0,0,0,1,122,'2021-08-28 12:25:10','2021-08-28 12:25:10',NULL),('خاتم ذهبي','خاتم ذهبي ','0c942947-0383-47a7-a140-151eed3572cb.png',0.35,0,0.5,0,'111','#FFA6007F','','','1',8,43,'','','','',0,0,0,0,1,123,'2021-08-28 12:29:36','2021-08-28 12:29:36',NULL),('خاتم ذهبي','خاتم ذهبي مع حجر أسود','1d517953-64f0-48b2-a46b-5b8b2a38e9dd.png',0.35,0,0.5,0,'111','#FFA6007F','','','1',8,43,'','','','',0,0,0,0,1,124,'2021-08-28 12:33:09','2021-08-28 12:33:09',NULL),('خاتم ذهبي','خاتم ذهبي مع حجر خمري','c46a2581-895e-46ff-afd7-af822ac78484.png',0.35,0,0.5,0,'11111','#FF340099','','','1',8,43,'','','','',0,0,0,0,1,125,'2021-08-28 12:34:36','2021-08-28 12:34:36',NULL),('خانم وردة','خاتم وردة مع احجار اللؤلؤ','49c04ffe-e20f-4155-a584-a7e23522dd54.png',0.25,0,0.5,0,'25122','#FF9F0047','','','1',8,43,'25','1','2','2',0,0,0,0,1,126,'2021-08-28 12:39:13','2021-08-28 12:39:13',NULL),('حلق دائري','حلق دائري ','483c2262-df4b-4ddb-b111-a9a30da2bc56.png',0.2,0,0.3,0,'28114','#00B6FFC5','','','1',8,40,'28','1','1','4',0,0,0,0,1,127,'2021-08-28 12:43:53','2021-08-28 12:43:53',NULL),('طوق شعر','طوق شعر لؤلؤ سكري','e9c382f8-8535-4949-a472-c8b1263f5485.png',0.3,0,0.5,0,'32126','#FF980020','','','1',8,45,'32','1','2','6',0,0,0,0,1,128,'2021-08-29 10:28:16','2021-08-29 10:28:16',NULL),('بكلة شعر ','بكاة شعر وردة','b1996bed-9acb-4d05-93c7-94212a826683.png',0.1,0,0.25,0,'34127','#6F00FF2E','','','2',8,45,'34','1','2','7',0,0,0,0,1,129,'2021-08-29 10:39:03','2021-08-29 10:40:45',NULL),('اسوارة ذهبي وأسود','اسوارة ذهبي وأسود ','9aac9e69-e2bb-459a-980e-779baec30b20.png',0.5,0,1,0,'26122','#FFD10057','','','1',8,42,'26','1','2','2',0,0,0,0,1,130,'2021-08-29 10:48:43','2021-08-29 10:48:43',NULL),('حلق فضي','حلق فضي','f67a6f9c-4058-4b00-bc69-b9652421d904.png',0.5,0,1,0,'281315','#FFD1001F','','','1',8,42,'28','1','3','15',0,0,0,0,1,131,'2021-08-29 11:02:35','2021-08-29 11:02:52',NULL),('حلق أسود','حلق أسود','6d514526-d9aa-443b-9962-da702fc3f208.png',0.5,0,1,0,'281315','#FF000000','','','1',8,40,'28','1','3','15',0,0,0,0,1,132,'2021-08-29 11:06:00','2021-08-29 11:06:00',NULL),('حلق أذن','حلق أذن','36024c98-fac7-447b-b859-37ec9fcd72b8.png',0.5,0,1,0,'281315','#FF000000','','','1',8,40,'28','1','3','15',0,0,0,0,1,133,'2021-08-29 11:10:16','2021-08-29 11:10:16',NULL),('خاتم ذهبي','خاتم ذهبي','d84e1b55-67d2-4783-8093-f173582d691c.png',0.5,0,1,0,'25124','#FFD1006D','','','1',8,43,'25','1','2','4',0,0,0,0,1,134,'2021-08-29 11:16:44','2021-08-29 11:16:44',NULL),('وشم مؤقت','وشم مؤقت بأشكال مميزة','1cfd426a-71ab-48a9-be6a-4779e5dfe212.png',0.5,0,1,0,'11111','#FFD1006D','','','1',8,46,'','','','',0,0,0,0,1,135,'2021-08-29 11:33:45','2021-08-29 11:33:45',NULL),('خاتم فضي','خاتم فضي مع حجر ','005dfb38-a095-4130-b31f-46abd72887d9.png',0.5,0,1,0,'1111','#00EFFFA7','','','1',9,56,'','','','',0,0,0,0,1,136,'2021-08-29 11:37:32','2021-08-29 11:37:32',NULL),('خاتم فضي','خاتم فضي مع حجر أحمر','7d2f77a3-591f-430e-b7bc-30c8c975b5f3.png',0.5,0,1,0,'1111','#FF0000B4','','','1',9,56,'','','','',0,0,0,0,1,137,'2021-08-29 11:40:15','2021-08-29 11:40:15',NULL),('خاتم فضي و أسود','خاتم فضي وأسود','9a6fb767-0e16-4154-8371-27b3386e5d9f.png',0.5,0,1,0,'111111','#FF000000','','','1',9,56,'','','','',0,0,0,0,1,138,'2021-08-29 11:43:53','2021-08-29 11:43:53',NULL),('وشم مؤقت','وشم مؤقت بأشكال مميزة','a0ed0558-0286-4e38-90cc-b00321b9cced.png',0.5,0,1,0,'11111','#FF000000','','','1',9,57,'','','','',0,0,0,0,1,139,'2021-08-29 11:50:33','2021-08-29 11:50:33',NULL),('وصلة USB','وصلة USB','93c10b03-4fe9-406e-b78f-a8ad5e2cd6ee.png',0.8,0,2.5,0,'6969201904194','#FF000000','','','1',11,64,'40','1','2','1',0,0,0,0,1,140,'2021-08-29 12:44:03','2021-08-29 12:55:39',NULL),('وصلة AUX','وصلة AUX لون أحمر ','e74cb9b4-504f-461e-94d9-2587ba20d9c7.png',1,0,3,0,'6969201904187','#FF0000FF','','','1',11,66,'40','1','3','7',0,0,0,0,1,141,'2021-08-29 12:59:10','2021-08-29 12:59:10',NULL),('وصلة AUX','وصلة AUX لون أزرق','80ef2caa-dd26-49a8-ad2b-034dd2f5fdc2.png',1,0,3,0,'6969201904187','#0084FFFF','','','1',11,66,'40','1','3','5',0,0,0,0,1,142,'2021-08-30 09:15:23','2021-08-30 09:15:23',NULL),('وصلة AUX','وصلة AUX لون أصفر','1c532245-4ca6-42c6-a078-abc3cab63e9c.png',1,0,3,0,'6969201904187','#FFFC00FF','','','1',11,66,'40','1','3','5',0,0,0,0,1,143,'2021-08-30 09:17:29','2021-08-30 09:17:29',NULL),('وصلة USB','وصلة USB','90f34dd3-9c9d-4d75-81a0-37c1d58271e2.png',1,0,3,0,'40134','#FF0000FF','','','1',11,64,'40','1','3','4',0,0,0,0,1,144,'2021-08-30 11:08:51','2021-08-30 11:08:51',NULL),('خاتم الهاتف','حمالة الهاتف بتصميم خاتم مع قاعدة تثبيت','518b5baf-88fc-46c2-a368-ec1c6270ad59.png',1,0,3,0,'40133','#FFA600C4','','','1',11,64,'40','1','3','3',0,0,0,0,1,145,'2021-08-30 11:13:42','2021-08-30 11:13:42',NULL),('خاتم الهاتف','حمالة الهاتف بتصميم خاتم مع قاعدة تثبيت','34533f9f-676b-4cef-af35-01e05acb3cc3.png',1,0,3,0,'40133','#FFA60000','','','1',11,64,'40','1','3','3',0,0,0,0,1,146,'2021-08-30 11:17:21','2021-08-30 11:17:21',NULL),('خاتم للهاتف','حمالة الهاتف بتصميم خاتم مع قاعدة تثبيت','1f3faf80-2f8e-43c0-a706-ca5a265445dd.png',1,0,3,0,'40133','#0099FF09','','','1',11,64,'40','1','3','3',0,0,0,0,1,147,'2021-08-30 11:20:24','2021-08-30 11:20:24',NULL),('خاتم هاتف ','حمالة هاتف بتصميم خاتم مع قاعدة تثبيت','39ffff21-18f4-4f9c-bcc1-a4c007ab1cbd.png',1,0,3,0,'40133','#FFD100C4','','','1',11,64,'40','1','3','3',0,0,0,0,1,148,'2021-08-30 11:23:13','2021-08-30 11:23:13',NULL),('حاما هاتف','حامل هاتف قابل للطي ','e5868b56-bd03-4006-a0d4-afa3cee8acaa.png',1,0,3,0,'859184004010','#FFB4003E','','','1',11,64,'40','1','3','2',0,0,0,0,1,149,'2021-08-30 11:56:50','2021-08-30 11:56:50',NULL),('سلسلة لهاية','سلسلة لهاية خشبية بنقشة صاروخ','717d1922-3243-4712-97a8-e3788e038536.png',1,0,2.5,0,'4010355771230','#00B6FFEA','','','1',10,62,'39','1','3','5',0,0,0,0,1,150,'2021-08-30 12:14:08','2021-08-30 12:46:28',NULL),('سلسلة لهاية ','سلسلة لهاية خشبية ','87c251ed-d490-4d13-88d3-6397d615f8af.png',1,0,2.5,0,'4010355771230','#00AFFFEA','','','1',10,62,'39','1','3','5',0,0,0,0,1,151,'2021-08-30 12:16:20','2021-08-30 12:46:18',NULL),('سلسلة لهاية','سلسلة لههاية خشبية ','be9e25d3-a194-40b0-b59d-33b5942d9d0d.png',1,0,2.5,0,'4010355771230','#FF3400D3','','','1',10,62,'39','1','3','5',0,0,0,0,1,152,'2021-08-30 12:18:01','2021-08-30 12:44:31',NULL),('مقص أظافر للأطفال','مقص أفاظر للأطفال مع رسوم كرتونية','81c84f9c-b490-4504-93b5-2a72b3c5b441.png',0.5,0,1,0,'39122','#00BDFFDC','','','1',10,63,'39','1','2','2',0,0,0,0,1,153,'2021-08-30 12:25:37','2021-08-30 12:25:37',NULL),('مقص أظافر للأطفال ','مقص أظافر للأطفال مع رسوم كرتونية','77274bc3-514d-4293-a428-33daae0ff3b5.png',0.5,0,1,0,'39122','#FF000092','','','1',10,63,'39','1','2','2',0,0,0,0,1,154,'2021-08-30 12:30:15','2021-08-30 12:31:13',NULL),('لهاية SMART BABY','لهالية SMART BABY','3dda5f89-29fb-4e5c-a817-59bb91978231.png',0.8,0,1,0,'6971233880629','#00AFFF8E','','','1',10,62,'39','1','3','2',0,0,0,0,1,155,'2021-08-30 12:43:16','2021-08-30 12:43:16',NULL),('لهاية SMART BABY','لهاية SMART BABY','342b5510-42e8-4dd9-b7a0-6f279dee5072.png',0.8,0,1,0,'6971233880629','#FF00A344','','','1',10,62,'39','1','3','1',0,0,0,0,1,156,'2021-08-30 12:50:54','2021-08-30 12:50:54',NULL),('ساعة يد ','ساعة يد رقمية للأطفال','bd20a80d-6a75-4e4c-8b37-9440f3d54183.png',0.9,0,3,0,'111','#1DFF00D8','','','1',10,63,'39','1','1','',0,0,0,0,1,157,'2021-08-30 13:14:17','2021-08-30 13:14:17',NULL),('ساعة يد','ساعة يد رقمية للأطفال','5ee71b55-8f21-451f-9284-2160829888e2.png',0.9,0,3,0,'1111','#FF7400F8','','','1',10,63,'39','1','1','',0,0,0,0,1,158,'2021-08-30 13:17:05','2021-08-30 13:17:05',NULL),('ساعة يد ','ساعة يد رقمية للأطفال','5c43ce19-5c0c-45f7-96b1-ab2d7c805b98.png',0.9,0,3,0,'1111','#CC00FFB5','','','1',10,63,'39','1','1','',0,0,0,0,1,159,'2021-08-30 13:19:19','2021-08-30 13:19:19',NULL),('ساعة يد','ساعة يد رقمية للأطفال','65239333-efb0-4e14-a7bf-e3f261acd0d4.png',0.9,0,3,0,'1111','#FF009598','','','1',10,63,'39','1','1','',0,0,0,0,1,160,'2021-08-30 13:20:45','2021-08-30 13:20:45',NULL),('ساعة يد ','ساعة يد رقمية للأطفال','eedaa932-500c-4044-83e9-e6dfb4071089.png',0.9,0,3,0,'1111','#000AFFBB','','','1',10,63,'39','1','1','',0,0,0,0,1,161,'2021-08-30 13:22:00','2021-08-30 13:22:00',NULL),('صمغ ورق','صمغ ورق سائل','9b5f23dd-2fc9-49db-b71e-b3207278c027.png',0.9,0,1,0,'6901234660029','#FFEE00FF','50 ml','','1',12,71,'','','','',0,0,0,0,1,162,'2021-08-31 12:38:07','2021-08-31 12:41:04',NULL),('صمغ ورق','صمغ ورق سائل','e2836278-d944-4234-b74f-98684590a669.png',0.9,0,1,0,'6901234660029','#0084FFFF',' 50 ml','','1',12,71,'','','','',0,0,0,0,1,163,'2021-08-31 12:40:49','2021-08-31 12:40:49',NULL),('دفتر 100 ورقة','دفتر عربي 100 ورقة','c5792d50-3217-4682-8bc1-1a949f29de9e.png',0.5,0,1,0,'6251668013107','#81FF00DF','','','1',12,68,'','','','',0,0,0,0,1,164,'2021-08-31 12:52:02','2021-08-31 12:52:02',NULL),('قلم رصاص','قلم رصاص','dcf8f1a5-bed9-4e84-a25e-297c1c0ade07.png',0.05,0,0.5,0,'9636635001016','#FFEE00DF','','','1',12,70,'','','','',0,0,0,0,1,165,'2021-08-31 12:59:10','2021-08-31 12:59:10',NULL),('قلم رصاص','قلم رصاص','9185eb18-0897-4816-bfc5-bbf3ff1bbda1.png',0.05,0,0.5,0,'9636635001023','#E6FF0000','','','1',12,70,'','','','',0,0,0,0,1,166,'2021-08-31 13:06:11','2021-08-31 13:06:11',NULL),('قلم رصاص','قلم رصاص','8274fd0f-5a5b-49aa-ac55-6aa6094f1937.png',0.05,0,0.5,0,'9636635001023','#006EFFAD','','','1',12,70,'','','','',0,0,0,0,1,167,'2021-08-31 13:07:29','2021-08-31 13:07:29',NULL),('قلم رصاص','قلم رصاص','283e23b2-9a14-46cd-b11d-6a3c3851dd8d.png',0.05,0,0.5,0,'9636635001023','#FF0095E6','','','1',12,70,'','','','',0,0,0,0,1,168,'2021-08-31 13:10:08','2021-08-31 13:10:08',NULL),('قلم رصاص','قلم رصاص','a82ba462-bec0-47cc-b36d-c0075ceddec8.png',0.05,0,0.5,0,'9636635001023','#E900FFED','','','1',12,70,'','','','',0,0,0,0,1,169,'2021-08-31 13:14:04','2021-08-31 13:14:04',NULL),('قلم رصاص ','قلم رصاص','8159fcd1-0fa2-44c1-b229-e9a53a8bff9a.png',0.05,0,0.5,0,'9636635001023','#65FF00ED','','','1',12,70,'','','','',0,0,0,0,1,170,'2021-08-31 13:16:22','2021-08-31 13:16:22',NULL),('قلم رصاص ','قلم رصاص','29dcad9f-ad51-4b9d-b019-02fbc87d9eb2.png',0.05,0,0.5,0,'9636635001023','#FFBC00FF','','','1',12,70,'','','','',0,0,0,0,1,171,'2021-08-31 13:20:05','2021-08-31 13:20:05',NULL),('دفتر تلوين','دفتر تلوين SUPER MAN','40bafc92-babd-46be-a9ff-90884742e8a6.png',0.3,0,0.5,0,'11111','#00AFFFFF','','','1',12,69,'','','','',0,0,0,0,1,172,'2021-08-31 13:29:00','2021-08-31 13:29:00',NULL),('دفتر تلوين','دفتر تلوين STRAWBERRT','9391cf39-a61e-4121-9e0a-760edea5ee89.png',0.3,0,0.5,0,'1111','#81FF00CD','','','1',12,69,'','','','',0,0,0,0,1,173,'2021-08-31 13:33:38','2021-08-31 13:33:38',NULL),('شريط لازق لامع','شريط لازق لامع للديكور ثلاثي الأبعاد','7c86de4c-a538-4b4e-88b3-ea9c85d0bb16.png',0.3,0,0.5,0,'1111','#FF0000CD','','','1',12,71,'','','','',0,0,0,0,1,174,'2021-08-31 13:37:49','2021-08-31 13:37:49',NULL),('HELLO KITTY دفتر مذكرات','HELLO   KITTY دفتر مذكرات زهري','ffe09ae0-2d9b-4a21-abd9-4104cb6d092e.png',0.3,0,0.5,0,'1111','#FF00D5CD','','','1',12,68,'','','','',0,0,0,0,1,175,'2021-08-31 13:40:46','2021-08-31 13:40:46',NULL),('HELLO KITTY دفتر مذكرات','HELLO KITTY دفتر مذكرات لون أزرق','0f1a17b7-1713-4a34-83bd-9bbda23335dc.png',0.3,0,0.5,0,'1111','#007DFFAE','','','1',12,68,'','','','',0,0,0,0,1,176,'2021-08-31 13:42:46','2021-08-31 13:42:46',NULL),('مقص ورق','مقص ورق','b8dc82ab-46bc-471e-9cce-a6b1a8e7b531.png',0.3,0,0.5,0,'111','#FF00EAAE','','','1',12,70,'','','','',0,0,0,0,1,177,'2021-08-31 13:44:11','2021-08-31 13:44:11',NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items_to_delegates`
--

DROP TABLE IF EXISTS `items_to_delegates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items_to_delegates` (
  `delegates_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_items_to_delegates_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items_to_delegates`
--

LOCK TABLES `items_to_delegates` WRITE;
/*!40000 ALTER TABLE `items_to_delegates` DISABLE KEYS */;
/*!40000 ALTER TABLE `items_to_delegates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major_expenses`
--

DROP TABLE IF EXISTS `major_expenses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major_expenses` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_major_expenses_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major_expenses`
--

LOCK TABLES `major_expenses` WRITE;
/*!40000 ALTER TABLE `major_expenses` DISABLE KEYS */;
/*!40000 ALTER TABLE `major_expenses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_tokens`
--

DROP TABLE IF EXISTS `notification_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notification_tokens` (
  `user_id` int(10) unsigned DEFAULT '0',
  `token` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `all_notification` tinyint(1) DEFAULT '1',
  `orders_notification` tinyint(1) DEFAULT '1',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_notification_tokens_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_tokens`
--

LOCK TABLES `notification_tokens` WRITE;
/*!40000 ALTER TABLE `notification_tokens` DISABLE KEYS */;
INSERT INTO `notification_tokens` VALUES (0,'ExponentPushToken[y9Y_TiPN68W1t-33Aphy8w]',1,1,1,'2021-07-13 22:13:17','2021-07-13 22:13:17',NULL),(0,'',1,1,2,'2021-07-17 05:43:05','2021-07-17 05:43:05',NULL),(0,'ExponentPushToken[qLhZoENhKkNRSW_kjO9u-j]',1,1,3,'2021-08-30 19:18:00','2021-08-30 19:18:00',NULL);
/*!40000 ALTER TABLE `notification_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_items` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `order_id` int(10) unsigned DEFAULT NULL,
  `qty` bigint(20) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_items`
--

LOCK TABLES `order_items` WRITE;
/*!40000 ALTER TABLE `order_items` DISABLE KEYS */;
INSERT INTO `order_items` VALUES (4,1,1,0.45,1,'2021-08-16 17:13:18','2021-08-16 17:13:18',NULL),(2,1,1,0.25,2,'2021-08-16 17:13:18','2021-08-16 17:13:18',NULL),(3,1,2,1.4,3,'2021-08-16 17:13:18','2021-08-16 17:13:18',NULL);
/*!40000 ALTER TABLE `order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `total` double DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `address_id` int(10) unsigned DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `employee_id` int(10) unsigned DEFAULT '0',
  `driver_id` int(10) unsigned DEFAULT NULL,
  `discount_id` int(10) unsigned DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `status` int(10) unsigned DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_orders_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (2.1,'Application',1,2,0,0,0,'','Cash On Delivery',0,1,'2021-08-16 17:13:18','2021-08-16 17:13:18',NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_receipts`
--

DROP TABLE IF EXISTS `payment_receipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_receipts` (
  `clients_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` int(10) unsigned DEFAULT '0',
  `check_no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_payment_receipts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_receipts`
--

LOCK TABLES `payment_receipts` WRITE;
/*!40000 ALTER TABLE `payment_receipts` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_receipts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases` (
  `clients_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `total` double DEFAULT NULL,
  `tax_value` double DEFAULT NULL,
  `net` double DEFAULT NULL,
  `bill_type` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_purchases_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases`
--

LOCK TABLES `purchases` WRITE;
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchases_items`
--

DROP TABLE IF EXISTS `purchases_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchases_items` (
  `purchase_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `purchase_price` double DEFAULT NULL,
  `tax` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_purchases_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchases_items`
--

LOCK TABLES `purchases_items` WRITE;
/*!40000 ALTER TABLE `purchases_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `pages` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `scopes` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_roles_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'2021-07-13 11:53:22','2021-08-25 06:11:48',NULL,'Admin','المسؤول الوحيد الذي له كامل الصلاحية فس كل ما يتعلق بالبرنامج','الطلبات ,المبيعات,نقطة البيع,دعاية وتسويق,المخازن والمواد,المشتريات,سندات القبض ,سندات الدفع ,سندات الصرف,التقارير,العملاء والموردين,ادارة الموظفين والاعدادات','Orders,Receipts,Pos,Advance,StoragesAndItems,BillsGet,BillsForGet,Bills,Expenses,Reports,Clients,HrMain'),(2,'2021-07-13 12:02:58','2021-07-13 12:02:58',NULL,'المدير التنفيذي','صاحب القرار الاول و الاخير في كل ما يتعلق بالشركة .','الطلبات ,المبيعات,نقطة البيع,دعاية وتسويق,المخازن والمواد,المشتريات,سندات القبض ,سندات الدفع ,سندات الصرف,التقارير,العملاء والموردين,ادارة الموظفين والاعدادات,سائق','Orders,Receipts,Pos,Advance,StoragesAndItems,BillsGet,BillsForGet,Bills,Expenses,Reports,Clients,HrMain,driver'),(3,'2021-07-13 12:08:14','2021-07-13 17:53:09',NULL,'مستشار و مدير العلاقات العامة ','مستشار تجاري و مدير العلاقات العامة , و ينوب عن المدير التنفيذي في حال غيابه . و يعتبر قراره تحت التنفيذ في حال عدم الاضرار بالشركة .','الطلبات ,المبيعات,نقطة البيع,المخازن والمواد,المشتريات,سندات القبض ,سندات الدفع ,سندات الصرف,التقارير,العملاء والموردين','Orders,Receipts,Pos,StoragesAndItems,BillsGet,BillsForGet,Bills,Expenses,Reports,Clients'),(4,'2021-07-13 12:15:52','2021-08-09 11:31:47',NULL,'المديرة العامة','صاحبة القرار الاول و الاخير في كل ما يتعلق بالعمليات التجارية و الغير تجارية في داخل و خارج الشركة و على ان يكون القرار لا يضر بالشركة بل يصب في مصلحة الشركة من الناحية المادية , المعنوية او النفسية .','الطلبات ,المبيعات,دعاية وتسويق,المخازن والمواد,المشتريات,سندات القبض ,سندات الدفع ,سندات الصرف,العملاء والموردين','Orders,Receipts,Advance,StoragesAndItems,BillsGet,BillsForGet,Bills,Expenses,Clients'),(5,'2021-07-13 12:24:22','2021-07-13 12:24:22',NULL,'المدير المالي','المسؤول الاول و الاخير عن الحسابات الداخلية و الخارجية التابعة للحكومة . و هو المسؤول عن رفع و تقديم الاقرارات الضربية الى ضريبة الدخل .','المخازن والمواد,المشتريات,سندات القبض ,سندات الدفع ,سندات الصرف,التقارير','StoragesAndItems,BillsGet,BillsForGet,Bills,Expenses,Reports'),(6,'2021-07-13 17:40:30','2021-07-13 17:46:41',NULL,'مدير التسويق ','القرار الاول و الاخير في كل ما يتعلق بالتسويق و الدعاية و الاعلان من خلال البرنامج او من خارجه و هدفه الاول و الاخير زيادة المبيعات من الناحية الدعائية .','دعاية وتسويق','Advance'),(7,'2021-07-13 17:44:24','2021-07-13 17:50:00',NULL,'مدير المتجر الالكتروني','المسؤول الاول و الاخير في رفع المبيعات الشهرية و اتخاذ القرارات بناء\" على ذلك . و هذا عن طريق عرض البضائع التي ستزيد نسبة البيع من قبل المستخدميين .','الطلبات ,المخازن والمواد,التقارير','Orders,StoragesAndItems,Reports'),(8,'2021-07-13 17:52:15','2021-07-13 17:52:15',NULL,'مدير المبيعات','القرار الاول و الاخير في اتخاذ القرارات التي تزيد من نسبة البيع . ','المبيعات','Receipts'),(9,'2021-07-13 17:58:13','2021-07-13 17:58:13',NULL,'سكيرتارية / مسؤولة تعبة طلبات الاونلاين','مسؤولة عن العمل الذي يتعلق بالسكيرتارية و المسؤولة الاولى و الاخيرة عن تعبئة طلبات الاونلاين و تجهيز الطلبات لتسليمها لشركة التوصيل حتى يتم ايصالها الى الزبائن .','الطلبات ','Orders');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales` (
  `clients_id` int(10) unsigned DEFAULT NULL,
  `delegates_id` int(10) unsigned DEFAULT NULL,
  `date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `no` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `discount` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `total` double DEFAULT NULL,
  `tax_value` double DEFAULT NULL,
  `net` double DEFAULT NULL,
  `bill_type` int(10) unsigned DEFAULT NULL,
  `due_date` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `check_number` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `payment_collected` tinyint(1) DEFAULT NULL,
  `wanted` double DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sales_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_items`
--

DROP TABLE IF EXISTS `sales_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_items` (
  `sales_id` int(10) unsigned DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sales_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_items`
--

LOCK TABLES `sales_items` WRITE;
/*!40000 ALTER TABLE `sales_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `sales_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storage_items_logs`
--

DROP TABLE IF EXISTS `storage_items_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storage_items_logs` (
  `item_id` int(10) unsigned DEFAULT NULL,
  `actions` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_storage_items_logs_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storage_items_logs`
--

LOCK TABLES `storage_items_logs` WRITE;
/*!40000 ALTER TABLE `storage_items_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `storage_items_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `scope` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_storages_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES ('الكل','All',1,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL),('جملة الجملة','GGlobal',2,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL),('الجملة','Global',3,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL),('المفرق','Parts',4,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL),('متجر الكتروني','Ecommarce',5,'2021-07-13 11:53:22','2021-07-13 11:53:22',NULL);
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages_items`
--

DROP TABLE IF EXISTS `storages_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storages_items` (
  `storage_scope` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `item_id` int(10) unsigned DEFAULT NULL,
  `qty` double DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_storages_items_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages_items`
--

LOCK TABLES `storages_items` WRITE;
/*!40000 ALTER TABLE `storages_items` DISABLE KEYS */;
INSERT INTO `storages_items` VALUES ('All',1,40,1,'2021-08-16 10:44:32','2021-08-21 16:22:31',NULL),('All',2,40,2,'2021-08-16 11:05:03','2021-08-21 17:11:35',NULL),('All',3,6,3,'2021-08-16 11:49:29','2021-08-21 17:06:50',NULL),('All',4,60,4,'2021-08-16 12:56:18','2021-08-21 17:04:42',NULL),('All',5,12,5,'2021-08-17 11:06:42','2021-08-17 11:27:03',NULL),('All',6,12,6,'2021-08-17 11:15:25','2021-08-17 11:26:42',NULL),('All',7,13,7,'2021-08-17 11:26:17','2021-08-17 11:26:17',NULL),('All',8,13,8,'2021-08-17 11:30:50','2021-08-17 11:30:50',NULL),('All',9,400,9,'2021-08-17 12:45:31','2021-08-21 16:06:32',NULL),('All',10,12,10,'2021-08-17 13:07:28','2021-08-17 13:07:28',NULL),('All',11,20,11,'2021-08-18 08:37:21','2021-08-18 08:37:21',NULL),('All',12,78,12,'2021-08-18 12:16:01','2021-08-21 17:17:54',NULL),('All',13,78,13,'2021-08-18 12:21:03','2021-08-21 17:24:33',NULL),('All',14,76,14,'2021-08-18 12:24:44','2021-08-18 12:24:44',NULL),('All',15,100,15,'2021-08-18 13:26:43','2021-08-21 16:24:50',NULL),('All',16,1653,16,'2021-08-18 14:05:43','2021-08-26 07:34:18',NULL),('All',17,228,17,'2021-08-18 14:13:58','2021-08-18 14:13:58',NULL),('All',18,720,18,'2021-08-18 14:18:45','2021-08-18 14:18:45',NULL),('All',19,40,19,'2021-08-18 14:29:26','2021-08-21 16:55:34',NULL),('All',20,12,20,'2021-08-19 08:53:26','2021-08-19 08:53:26',NULL),('All',21,72,21,'2021-08-19 09:05:08','2021-08-19 09:05:08',NULL),('All',22,143,22,'2021-08-19 09:09:41','2021-08-19 09:09:41',NULL),('All',23,5,23,'2021-08-19 09:27:32','2021-08-19 09:27:32',NULL),('All',24,59,24,'2021-08-19 09:47:22','2021-08-26 07:27:27',NULL),('All',25,48,25,'2021-08-19 09:50:53','2021-08-26 07:30:31',NULL),('All',26,59,26,'2021-08-19 10:08:09','2021-08-19 10:13:51',NULL),('All',27,59,27,'2021-08-19 10:12:04','2021-08-26 05:49:48',NULL),('All',28,270,28,'2021-08-19 10:37:32','2021-08-26 07:31:54',NULL),('All',29,23,29,'2021-08-19 10:46:33','2021-08-26 07:37:27',NULL),('All',30,6,30,'2021-08-19 11:03:10','2021-08-26 04:51:05',NULL),('All',31,6,31,'2021-08-19 11:04:48','2021-08-26 04:46:08',NULL),('All',32,61,32,'2021-08-19 11:11:09','2021-08-19 11:26:17',NULL),('All',33,60,33,'2021-08-19 11:17:24','2021-08-23 09:30:21',NULL),('All',34,12,34,'2021-08-19 13:07:15','2021-08-26 07:44:50',NULL),('All',35,12,35,'2021-08-19 13:10:32','2021-08-26 07:43:06',NULL),('All',36,1032,36,'2021-08-21 10:31:32','2021-08-26 07:46:17',NULL),('All',37,6,37,'2021-08-21 10:35:15','2021-08-21 10:35:15',NULL),('All',38,60,38,'2021-08-21 10:55:36','2021-08-21 11:10:12',NULL),('All',39,6,39,'2021-08-21 11:03:43','2021-08-21 11:09:50',NULL),('All',40,6,40,'2021-08-21 11:09:28','2021-08-21 11:09:28',NULL),('All',41,72,41,'2021-08-21 11:20:44','2021-08-21 11:20:44',NULL),('All',42,11,42,'2021-08-22 09:05:05','2021-08-22 09:05:05',NULL),('All',43,6,43,'2021-08-22 09:09:50','2021-08-22 09:09:50',NULL),('All',44,4,44,'2021-08-22 09:22:17','2021-08-22 09:24:08',NULL),('All',45,12,45,'2021-08-22 09:28:27','2021-08-22 09:28:27',NULL),('All',46,135,46,'2021-08-22 11:19:41','2021-08-22 11:19:41',NULL),('All',47,5,47,'2021-08-22 11:51:28','2021-08-22 11:51:28',NULL),('All',48,6,48,'2021-08-22 11:54:56','2021-08-22 11:54:56',NULL),('All',49,12,49,'2021-08-22 11:59:51','2021-08-22 11:59:51',NULL),('All',50,6,50,'2021-08-22 12:03:37','2021-08-26 04:26:53',NULL),('All',51,5,51,'2021-08-22 12:07:54','2021-08-26 04:14:38',NULL),('All',52,200,52,'2021-08-22 12:12:24','2021-08-26 04:09:17',NULL),('All',53,9,53,'2021-08-22 12:30:09','2021-08-26 04:07:24',NULL),('All',54,60,54,'2021-08-22 12:37:26','2021-08-26 04:06:25',NULL),('All',55,12,55,'2021-08-22 12:55:52','2021-08-26 04:03:16',NULL),('All',56,1199,56,'2021-08-22 12:58:30','2021-08-22 12:58:30',NULL),('All',57,1,57,'2021-08-22 13:11:34','2021-08-26 14:01:42',NULL),('All',58,6,58,'2021-08-22 13:14:11','2021-08-25 11:41:54',NULL),('All',59,362,59,'2021-08-23 09:39:07','2021-08-26 03:55:59',NULL),('All',60,10,60,'2021-08-23 09:42:16','2021-08-26 04:00:37',NULL),('All',61,13,61,'2021-08-23 09:45:28','2021-08-26 03:45:11',NULL),('All',62,13,62,'2021-08-23 09:47:51','2021-08-26 03:45:33',NULL),('All',63,6,63,'2021-08-24 09:11:28','2021-08-26 03:42:45',NULL),('All',64,328,64,'2021-08-24 09:25:02','2021-08-26 03:37:06',NULL),('All',65,24,65,'2021-08-24 09:28:37','2021-08-26 03:32:07',NULL),('All',66,2,66,'2021-08-24 09:56:03','2021-08-26 07:49:18',NULL),('All',67,14,67,'2021-08-24 10:00:03','2021-08-26 07:48:56',NULL),('All',68,3,68,'2021-08-24 10:01:53','2021-08-26 03:26:37',NULL),('All',69,29,69,'2021-08-24 10:04:50','2021-08-26 07:50:24',NULL),('All',70,107,70,'2021-08-24 10:52:42','2021-08-26 03:23:23',NULL),('All',71,228,71,'2021-08-24 11:20:11','2021-08-26 11:46:37',NULL),('All',72,3,72,'2021-08-25 08:51:01','2021-08-25 08:51:01',NULL),('All',73,6,73,'2021-08-25 08:55:03','2021-08-25 08:55:03',NULL),('All',74,5,74,'2021-08-25 09:07:27','2021-08-25 09:07:27',NULL),('All',75,1,75,'2021-08-25 09:09:24','2021-08-25 09:09:24',NULL),('All',76,10,76,'2021-08-25 09:14:38','2021-08-25 09:14:38',NULL),('All',77,3,77,'2021-08-25 09:21:04','2021-08-25 09:21:04',NULL),('All',78,2,78,'2021-08-25 09:27:21','2021-08-25 09:27:21',NULL),('All',79,2,79,'2021-08-25 09:42:57','2021-08-25 09:42:57',NULL),('All',80,5,80,'2021-08-25 09:46:57','2021-08-25 09:46:57',NULL),('All',81,8,81,'2021-08-25 09:51:28','2021-08-25 09:51:28',NULL),('All',82,3,82,'2021-08-25 09:56:26','2021-08-25 09:56:26',NULL),('All',83,60,83,'2021-08-25 10:15:45','2021-08-26 03:19:40',NULL),('All',84,20,84,'2021-08-25 10:19:52','2021-08-25 10:19:52',NULL),('All',85,34,85,'2021-08-25 10:22:41','2021-08-25 10:22:41',NULL),('All',86,59,86,'2021-08-25 10:47:07','2021-08-25 10:47:07',NULL),('All',87,6,87,'2021-08-25 10:51:58','2021-08-25 10:51:58',NULL),('All',88,11,88,'2021-08-25 10:56:49','2021-08-25 10:56:49',NULL),('All',89,5,89,'2021-08-25 11:01:38','2021-08-25 11:01:38',NULL),('All',90,11,90,'2021-08-25 11:05:01','2021-08-25 11:05:01',NULL),('All',91,7,91,'2021-08-25 11:11:45','2021-08-26 03:12:58',NULL),('All',92,7,92,'2021-08-25 11:14:40','2021-08-25 11:14:40',NULL),('All',93,60,93,'2021-08-25 11:25:51','2021-08-25 11:25:51',NULL),('All',94,11,94,'2021-08-25 11:29:46','2021-08-25 11:29:46',NULL),('All',95,300,95,'2021-08-25 11:36:04','2021-08-25 11:36:04',NULL),('All',96,6,96,'2021-08-25 11:50:37','2021-08-25 11:50:37',NULL),('All',97,2,97,'2021-08-25 11:53:10','2021-08-25 11:53:10',NULL),('All',98,4,98,'2021-08-25 12:36:01','2021-08-25 12:36:01',NULL),('All',99,5,99,'2021-08-25 12:40:30','2021-08-25 12:40:30',NULL),('All',100,5,100,'2021-08-25 12:44:22','2021-08-25 12:44:22',NULL),('All',101,6,101,'2021-08-25 12:48:05','2021-08-25 12:48:05',NULL),('All',102,6,102,'2021-08-25 12:52:33','2021-08-25 12:52:33',NULL),('All',103,2,103,'2021-08-25 12:55:43','2021-08-25 12:55:43',NULL),('All',104,5,104,'2021-08-25 12:59:44','2021-08-25 12:59:44',NULL),('All',105,2,105,'2021-08-25 13:13:14','2021-08-25 13:13:14',NULL),('All',106,129,106,'2021-08-25 13:17:29','2021-08-26 08:42:25',NULL),('All',107,132,107,'2021-08-25 13:20:55','2021-08-25 13:20:55',NULL),('All',108,20,108,'2021-08-25 13:27:59','2021-08-25 13:27:59',NULL),('All',109,21,109,'2021-08-25 13:30:06','2021-08-25 13:30:06',NULL),('All',110,16,110,'2021-08-25 13:37:09','2021-08-26 11:49:38',NULL),('All',111,10,111,'2021-08-25 13:50:34','2021-08-25 19:05:55',NULL),('All',112,300,112,'2021-08-26 12:17:27','2021-08-26 12:17:27',NULL),('All',113,2,113,'2021-08-28 09:51:07','2021-08-28 09:51:07',NULL),('All',114,2,114,'2021-08-28 09:58:25','2021-08-28 09:58:25',NULL),('All',115,3,115,'2021-08-28 10:09:33','2021-08-28 10:09:33',NULL),('All',116,3,116,'2021-08-28 10:19:34','2021-08-28 10:19:34',NULL),('All',117,6,117,'2021-08-28 10:35:45','2021-08-28 10:35:45',NULL),('All',118,2,118,'2021-08-28 10:50:21','2021-08-28 10:50:21',NULL),('All',119,5,119,'2021-08-28 10:59:38','2021-08-28 10:59:38',NULL),('All',120,0,120,'2021-08-28 12:15:49','2021-08-28 12:15:49',NULL),('All',121,0,121,'2021-08-28 12:18:39','2021-08-28 12:18:39',NULL),('All',122,600,122,'2021-08-28 12:25:10','2021-08-28 12:25:10',NULL),('All',123,0,123,'2021-08-28 12:29:36','2021-08-28 12:29:36',NULL),('All',124,50,124,'2021-08-28 12:33:09','2021-08-28 12:33:09',NULL),('All',125,50,125,'2021-08-28 12:34:36','2021-08-28 12:34:36',NULL),('All',126,100,126,'2021-08-28 12:39:13','2021-08-28 12:39:13',NULL),('All',127,48,127,'2021-08-28 12:43:53','2021-08-28 12:43:53',NULL),('All',128,12,128,'2021-08-29 10:28:16','2021-08-29 10:28:16',NULL),('All',129,10,129,'2021-08-29 10:39:03','2021-08-29 10:40:45',NULL),('All',130,12,130,'2021-08-29 10:48:43','2021-08-29 10:48:43',NULL),('All',131,4,131,'2021-08-29 11:02:35','2021-08-29 11:02:52',NULL),('All',132,4,132,'2021-08-29 11:06:00','2021-08-29 11:06:00',NULL),('All',133,4,133,'2021-08-29 11:10:16','2021-08-29 11:10:16',NULL),('All',134,10,134,'2021-08-29 11:16:44','2021-08-29 11:16:44',NULL),('All',135,60,135,'2021-08-29 11:33:45','2021-08-29 11:33:45',NULL),('All',136,15,136,'2021-08-29 11:37:32','2021-08-29 11:37:32',NULL),('All',137,15,137,'2021-08-29 11:40:15','2021-08-29 11:40:15',NULL),('All',138,8,138,'2021-08-29 11:43:53','2021-08-29 11:43:53',NULL),('All',139,42,139,'2021-08-29 11:50:33','2021-08-29 11:50:33',NULL),('All',140,6,140,'2021-08-29 12:44:03','2021-08-29 12:55:39',NULL),('All',141,6,141,'2021-08-29 12:59:10','2021-08-29 12:59:10',NULL),('All',142,4,142,'2021-08-30 09:15:23','2021-08-30 09:15:23',NULL),('All',143,4,143,'2021-08-30 09:17:29','2021-08-30 09:17:29',NULL),('All',144,6,144,'2021-08-30 11:08:51','2021-08-30 11:08:51',NULL),('All',145,38,145,'2021-08-30 11:13:42','2021-08-30 11:13:42',NULL),('All',146,30,146,'2021-08-30 11:17:21','2021-08-30 11:17:21',NULL),('All',147,20,147,'2021-08-30 11:20:24','2021-08-30 11:20:24',NULL),('All',148,30,148,'2021-08-30 11:23:13','2021-08-30 11:23:13',NULL),('All',149,4,149,'2021-08-30 11:56:50','2021-08-30 11:56:50',NULL),('All',150,44,150,'2021-08-30 12:14:08','2021-08-30 12:46:28',NULL),('All',151,46,151,'2021-08-30 12:16:20','2021-08-30 12:46:18',NULL),('All',152,53,152,'2021-08-30 12:18:01','2021-08-30 12:44:31',NULL),('All',153,5,153,'2021-08-30 12:25:37','2021-08-30 12:25:37',NULL),('All',154,3,154,'2021-08-30 12:30:15','2021-08-30 12:31:13',NULL),('All',155,12,155,'2021-08-30 12:43:16','2021-08-30 12:43:16',NULL),('All',156,12,156,'2021-08-30 12:50:54','2021-08-30 12:50:54',NULL),('All',157,10,157,'2021-08-30 13:14:17','2021-08-30 13:14:17',NULL),('All',158,10,158,'2021-08-30 13:17:05','2021-08-30 13:17:05',NULL),('All',159,10,159,'2021-08-30 13:19:19','2021-08-30 13:19:19',NULL),('All',160,10,160,'2021-08-30 13:20:45','2021-08-30 13:20:45',NULL),('All',161,10,161,'2021-08-30 13:22:00','2021-08-30 13:22:00',NULL),('All',162,15,162,'2021-08-31 12:38:07','2021-08-31 12:41:04',NULL),('All',163,16,163,'2021-08-31 12:40:49','2021-08-31 12:40:49',NULL),('All',164,5,164,'2021-08-31 12:52:02','2021-08-31 12:52:02',NULL),('All',165,24,165,'2021-08-31 12:59:10','2021-08-31 12:59:10',NULL),('All',166,4,166,'2021-08-31 13:06:11','2021-08-31 13:06:11',NULL),('All',167,4,167,'2021-08-31 13:07:29','2021-08-31 13:07:29',NULL),('All',168,4,168,'2021-08-31 13:10:08','2021-08-31 13:10:08',NULL),('All',169,4,169,'2021-08-31 13:14:04','2021-08-31 13:14:04',NULL),('All',170,4,170,'2021-08-31 13:16:22','2021-08-31 13:16:22',NULL),('All',171,4,171,'2021-08-31 13:20:05','2021-08-31 13:20:05',NULL),('All',172,12,172,'2021-08-31 13:29:00','2021-08-31 13:29:00',NULL),('All',173,12,173,'2021-08-31 13:33:38','2021-08-31 13:33:38',NULL),('All',174,22,174,'2021-08-31 13:37:49','2021-08-31 13:37:49',NULL),('All',175,34,175,'2021-08-31 13:40:46','2021-08-31 13:40:46',NULL),('All',176,23,176,'2021-08-31 13:42:46','2021-08-31 13:42:46',NULL),('All',177,4,177,'2021-08-31 13:44:11','2021-08-31 13:44:11',NULL);
/*!40000 ALTER TABLE `storages_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_categories`
--

DROP TABLE IF EXISTS `sub_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_categories` (
  `title` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `categories_id` int(10) unsigned DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_sub_categories_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_categories`
--

LOCK TABLES `sub_categories` WRITE;
/*!40000 ALTER TABLE `sub_categories` DISABLE KEYS */;
INSERT INTO `sub_categories` VALUES ('مواد  التنظيف','','29dd2ee6-85d7-4906-8c01-687ba1d6cd00.png',1,1,'2021-07-17 17:30:19','2021-08-09 06:06:56',NULL),('ادوات التنظيف','','339a36f0-d7a2-47d1-84c1-2bc3345a533d.jpeg',1,2,'2021-07-17 20:01:03','2021-08-09 06:07:33',NULL),('معطرات الجو','','76689ea2-9270-4773-89ad-e13b197d029e.png',1,3,'2021-07-17 20:33:38','2021-08-09 06:08:09',NULL),('الشموع','','f1635367-ab77-40f6-8485-9448df268c70.png',1,4,'2021-07-17 20:33:59','2021-08-09 06:07:56',NULL),('ادوات المائدة','','d74fb883-9aca-4aa9-809f-4055b9ee070f.png',2,5,'2021-07-18 07:29:48','2021-08-21 17:24:33',NULL),('المناديل','','1d811867-e001-4ded-a3af-585bd017fce0.png',2,6,'2021-07-18 07:30:51','2021-08-21 17:06:50',NULL),('الاكياس','','c55cf0cd-8738-43da-81a2-cf5091d14308.png',2,7,'2021-07-18 07:32:39','2021-08-26 04:09:17',NULL),('ورق التغليف','','3aad6e94-7d7d-41cf-8524-e84885554ffa.png',2,8,'2021-07-18 07:33:10','2021-08-17 11:27:03',NULL),('لوازم المناسبات','','',2,9,'2021-07-18 07:34:18','2021-08-21 16:24:50',NULL),('لوازم اساسية','','fa8b271e-2dc7-4a62-aad7-573356715b0a.png',3,10,'2021-07-18 07:40:41','2021-08-26 07:50:24',NULL),('معدات','','a7ea1bb8-5661-4bae-a40d-3a41cc7f7843.png',3,11,'2021-07-18 07:44:59','2021-08-26 07:34:18',NULL),('لوازم كهربائية','','53a42357-f105-4266-a57f-75e77c5399f5.png',3,12,'2021-07-18 07:45:34','2021-08-26 07:30:31',NULL),('نثريات','','',3,13,'2021-07-18 07:49:44','2021-08-26 07:37:27',NULL),('اكسسوارات منزلية','','5e8cb93c-ba4b-492c-ad1e-c336a24fd841.png',4,14,'2021-07-18 07:52:39','2021-08-15 10:16:18',NULL),('ادوات الطعام','','58fc7449-b409-4187-9e80-09a4163dabd3.png',4,15,'2021-07-18 07:58:42','2021-08-15 10:18:18',NULL),('الاكواب و الاباريق','','',4,16,'2021-07-18 08:02:35','2021-07-18 08:09:54',NULL),('الصحون و الزبادي','','',4,17,'2021-07-18 08:08:49','2021-08-12 05:26:00',NULL),('حافظات الطعام و المرطبنات','','',4,18,'2021-07-18 08:13:10','2021-08-26 04:51:05',NULL),('الصواني و ادوات التقديم','','',4,19,'2021-07-18 08:19:28','2021-07-18 08:19:28',NULL),('لوازم و ادوات الطبخ','','',4,20,'2021-07-18 08:20:20','2021-08-26 07:44:50',NULL),('السكاكين و الواح التقطيع','','',4,21,'2021-07-18 08:22:34','2021-08-26 07:46:17',NULL),('بذور و اسمدة','','',5,22,'2021-07-18 09:26:32','2021-07-18 09:53:46',NULL),('مستلزمات زراعية','','',5,23,'2021-07-18 09:27:07','2021-07-18 09:27:07',NULL),('احواض زراعية','','',5,24,'2021-07-18 09:27:51','2021-08-12 05:29:54',NULL),('ديكورات خارجية','','',5,25,'2021-07-18 09:29:48','2021-08-12 05:30:16',NULL),('الانارة الخارجية','','',5,26,'2021-07-18 09:31:48','2021-08-12 05:30:57',NULL),('اكسسوارات الشواه','','',5,27,'2021-07-18 09:32:36','2021-08-12 05:31:33',NULL),('منتجات الغسيل و الاستحمام','','',6,28,'2021-07-18 09:39:55','2021-08-26 14:01:42',NULL),('العناية بالجسم و البشرة','','',6,29,'2021-07-18 09:40:25','2021-08-12 06:21:19',NULL),('العناية بالشعر','','',6,30,'2021-07-18 09:40:47','2021-08-12 06:05:49',NULL),('العناية بالاسنان','','',6,31,'2021-07-18 09:42:56','2021-08-26 03:19:40',NULL),('العناية باليد و القدم','','',6,32,'2021-07-18 09:43:24','2021-08-26 11:46:37',NULL),('عناية النساء','','',6,33,'2021-07-18 09:50:26','2021-08-12 06:20:20',NULL),('عناية الرجال','','',6,34,'2021-07-18 09:50:41','2021-08-26 03:12:58',NULL),('مستحضرات الوجه','','',7,35,'2021-07-18 10:01:15','2021-07-18 10:01:15',NULL),('مستحضرات العين','','',7,36,'2021-07-18 10:01:30','2021-08-26 11:49:38',NULL),('مستحضرات الشفاه','','',7,37,'2021-07-18 10:01:51','2021-08-25 19:05:55',NULL),('مستحضرات اليدين و القدم','','',7,38,'2021-07-18 10:02:22','2021-07-18 10:03:36',NULL),('اكسسوارات المكياج','','',7,39,'2021-07-18 10:07:39','2021-08-12 06:22:04',NULL),('حلق اذن','','',8,40,'2021-07-18 10:13:11','2021-08-12 06:22:37',NULL),('سناسل','','',8,41,'2021-07-18 10:17:42','2021-08-12 06:22:31',NULL),('اساور','','',8,42,'2021-07-18 10:18:02','2021-08-29 11:02:52',NULL),('خواتم','','',8,43,'2021-07-18 10:18:16','2021-07-18 10:18:16',NULL),('خلاخيل','','',8,44,'2021-07-18 10:24:45','2021-07-18 10:24:45',NULL),('اكسسوارات شعر','','',8,45,'2021-07-18 10:26:27','2021-08-29 10:40:45',NULL),('اوشام مؤقته','','',8,46,'2021-07-18 10:26:42','2021-08-12 06:24:11',NULL),('ساعات','','',8,47,'2021-07-18 10:27:10','2021-08-12 06:24:23',NULL),('نظارات شمسية','','',8,48,'2021-07-18 10:27:24','2021-08-12 06:24:37',NULL),('شالات و لفحات','','',8,49,'2021-07-18 10:27:57','2021-08-14 10:35:06',NULL),('قبعات','','',8,50,'2021-07-18 11:26:58','2021-08-12 06:25:51',NULL),('حقائب و شنط','','',8,51,'2021-07-18 12:12:40','2021-08-14 15:41:31',NULL),('ملابس و احذية','','',8,52,'2021-07-18 12:15:35','2021-08-12 06:25:27',NULL),('اخرى','','',8,53,'2021-07-18 12:24:57','2021-08-12 06:26:10',NULL),('سناسل','','',9,54,'2021-07-18 12:25:40','2021-07-18 12:25:40',NULL),('اساور','','',9,55,'2021-07-18 12:25:52','2021-07-18 12:28:45',NULL),('خواتم','','',9,56,'2021-07-18 12:26:20','2021-07-18 12:28:54',NULL),('اوشمة مؤقتة','','',9,57,'2021-07-18 12:26:49','2021-07-18 12:37:30',NULL),('ساعات','','',9,58,'2021-07-18 12:27:16','2021-07-18 12:34:08',NULL),('نظارات شمسية و قبعات','','',9,59,'2021-07-18 12:27:44','2021-08-14 17:56:12',NULL),('قداحات و علاقات مفاتيح','','',9,60,'2021-07-18 12:28:06','2021-08-14 17:56:30',NULL),('اخرى','','',9,61,'2021-07-18 12:29:46','2021-08-14 17:56:43',NULL),('حديثي الولادة','','',10,62,'2021-07-18 12:41:25','2021-08-30 12:46:28',NULL),('الاطفال','','',10,63,'2021-07-18 12:41:40','2021-08-30 12:31:13',NULL),('اكسسوارات موبايل - تابلت','','',11,64,'2021-07-18 13:04:57','2021-08-29 12:55:39',NULL),('اكسسوارات لابتوب - كومبيوتر','','',11,65,'2021-07-18 13:16:53','2021-07-18 13:16:53',NULL),('الكترونيات منزلية - مكتبية','','',11,66,'2021-07-18 14:07:59','2021-07-18 14:07:59',NULL),('طرائف','','',11,67,'2021-07-18 14:08:49','2021-07-18 14:08:49',NULL),('الكتابة','','',12,68,'2021-08-07 00:12:21','2021-08-14 17:58:19',NULL),('التلوين','','',12,69,'2021-08-07 03:37:00','2021-08-14 17:58:30',NULL),('ادوات المقلمة','','',12,70,'2021-08-07 03:37:42','2021-08-14 17:58:51',NULL),('غراء و لاصق','','',12,71,'2021-08-07 03:38:37','2021-08-31 12:41:04',NULL),('الورق و الكرتون','','',12,72,'2021-08-07 14:14:20','2021-08-14 18:41:09',NULL),('ادوات الفن و الرسم','','',12,73,'2021-08-07 18:43:36','2021-08-14 18:42:21',NULL),('العاب الاطفال','','',13,74,'2021-08-09 06:10:11','2021-08-14 18:43:11',NULL),('الدمى و اكسسواراتها','','',13,75,'2021-08-09 06:11:41','2021-08-14 18:52:47',NULL),('العاب البناء','','',13,76,'2021-08-09 06:11:56','2021-08-14 18:55:26',NULL),('ازياء تنكرية','','',13,77,'2021-08-09 06:12:14','2021-08-14 18:56:08',NULL),('العاب الطاولة','','',13,78,'2021-08-09 06:12:33','2021-08-09 06:20:44',NULL),('طرائف','','',13,79,'2021-08-09 06:13:25','2021-08-09 06:20:24',NULL),('ادوات رياضية','','',14,80,'2021-08-09 06:14:13','2021-08-09 06:20:01',NULL),('معدات السباحة و الشاطئ		','','',14,81,'2021-08-09 06:15:10','2021-08-14 19:04:07',NULL),('مستلزمات الرحل و التخييم','','',14,82,'2021-08-09 06:15:41','2021-08-14 19:02:38',NULL);
/*!40000 ALTER TABLE `sub_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `table_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_translations_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=549 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES ('categories','title',1,'en',' Cleaning                               Supplies',1,'2021-07-13 18:27:34','2021-08-25 19:34:00',NULL),('categories','description',1,'en',' Cleaning Related Items',2,'2021-07-13 18:27:34','2021-08-25 19:34:00',NULL),('categories','title',2,'en','Disposables & Event Supplies',3,'2021-07-13 18:31:09','2021-08-25 22:30:30',NULL),('categories','description',2,'en','Disposables & Event Supplies Related Items',4,'2021-07-13 18:31:09','2021-08-25 22:30:30',NULL),('categories','title',3,'en','Necessities                  & Tools',5,'2021-07-14 09:53:19','2021-08-25 21:48:14',NULL),('categories','description',3,'en','Necessities & Tools Related Items',6,'2021-07-14 09:53:19','2021-08-25 21:48:14',NULL),('categories','title',4,'en','Home                              & Kitchen',7,'2021-07-14 09:54:36','2021-07-17 13:12:58',NULL),('categories','description',4,'en','Home & Kitchen Supplies Related Items',8,'2021-07-14 09:54:36','2021-07-17 13:12:58',NULL),('categories','title',5,'en',' Garden                          & Outdoors ',9,'2021-07-14 10:06:37','2021-08-25 21:53:10',NULL),('categories','description',5,'en','Garden & Outdoors Related Items',10,'2021-07-14 10:06:37','2021-08-25 21:53:10',NULL),('categories','title',6,'en','Beauty &      Personal Care',11,'2021-07-14 10:15:52','2021-08-25 21:59:04',NULL),('categories','description',6,'en','Beauty & Personal Care Related Items',12,'2021-07-14 10:15:52','2021-08-25 21:59:04',NULL),('categories','title',7,'en','Makeup  &            Body Art',13,'2021-07-14 10:18:32','2021-08-25 22:08:05',NULL),('categories','description',7,'en','',14,'2021-07-14 10:18:32','2021-08-25 22:08:05',NULL),('categories','title',8,'en','Women\'s               Accessories',15,'2021-07-14 10:23:18','2021-08-25 22:16:04',NULL),('categories','description',8,'en','Women\'s Fashion & Accessories Related Items',16,'2021-07-14 10:23:18','2021-08-25 22:16:04',NULL),('categories','title',9,'en','Men\'s                                  Accessories',17,'2021-07-14 10:26:03','2021-08-25 22:23:00',NULL),('categories','description',9,'en','Men\'s Fashion & Accessories Related Items',18,'2021-07-14 10:26:03','2021-08-25 22:23:00',NULL),('categories','title',10,'en','Baby                                       & Kids ',19,'2021-07-14 10:32:20','2021-08-25 22:23:17',NULL),('categories','description',10,'en','Baby & Kids Related Items',20,'2021-07-14 10:32:20','2021-08-25 22:23:17',NULL),('categories','title',11,'en','Electronics                  & Gadgets',21,'2021-07-14 10:36:14','2021-07-17 12:58:47',NULL),('categories','description',11,'en','Electronics & Gadgets Related Items',22,'2021-07-14 10:36:14','2021-07-17 12:58:47',NULL),('categories','title',12,'en','Art Supplies                 & Stationary',23,'2021-07-14 10:40:06','2021-08-26 09:40:53',NULL),('categories','description',12,'en','Art & Stationary Related Items',24,'2021-07-14 10:40:06','2021-08-26 09:40:53',NULL),('categories','title',13,'en','Toys &                  Board Games',25,'2021-07-14 10:42:12','2021-08-26 10:02:44',NULL),('categories','description',13,'en','Toys & Board Games Related Items',26,'2021-07-14 10:42:12','2021-08-26 10:02:44',NULL),('categories','title',14,'en','Sports & Outdoor Hobbies',27,'2021-07-14 10:44:14','2021-08-26 09:44:08',NULL),('categories','description',14,'en','Sports & Outdoor Hobbies Related Items ',28,'2021-07-14 10:44:14','2021-08-26 09:44:08',NULL),('categories','title',15,'en','Pets                                    Accessories',29,'2021-07-14 10:57:39','2021-08-09 06:06:22',NULL),('categories','description',15,'en','Pets Supplies & Accessories Related Items',30,'2021-07-14 10:57:39','2021-08-09 06:06:22',NULL),('subCategories','title',1,'en','Cleaning Detergents',31,'2021-07-17 17:30:19','2021-08-09 06:06:56',NULL),('subCategories','description',1,'en','',32,'2021-07-17 17:30:19','2021-08-09 06:06:56',NULL),('subCategories','title',2,'en','Cleaning Tools',33,'2021-07-17 20:01:03','2021-08-09 06:07:33',NULL),('subCategories','description',2,'en','',34,'2021-07-17 20:01:03','2021-08-09 06:07:33',NULL),('subCategories','title',3,'en','Air Freshners',35,'2021-07-17 20:33:38','2021-08-09 06:08:09',NULL),('subCategories','description',3,'en','',36,'2021-07-17 20:33:38','2021-08-09 06:08:09',NULL),('subCategories','title',4,'en','Candles',37,'2021-07-17 20:33:59','2021-08-09 06:07:56',NULL),('subCategories','description',4,'en','',38,'2021-07-17 20:33:59','2021-08-09 06:07:56',NULL),('subCategories','title',5,'en','',39,'2021-07-18 07:29:48','2021-08-14 15:16:25',NULL),('subCategories','description',5,'en','',40,'2021-07-18 07:29:48','2021-08-14 15:16:25',NULL),('subCategories','title',6,'en','',41,'2021-07-18 07:30:51','2021-08-15 09:34:19',NULL),('subCategories','description',6,'en','',42,'2021-07-18 07:30:51','2021-08-15 09:34:19',NULL),('subCategories','title',7,'en','',43,'2021-07-18 07:32:39','2021-08-15 09:34:37',NULL),('subCategories','description',7,'en','',44,'2021-07-18 07:32:39','2021-08-15 09:34:37',NULL),('subCategories','title',8,'en','',45,'2021-07-18 07:33:10','2021-08-15 09:35:01',NULL),('subCategories','description',8,'en','',46,'2021-07-18 07:33:10','2021-08-15 09:35:01',NULL),('subCategories','title',9,'en','',47,'2021-07-18 07:34:18','2021-07-18 07:34:18',NULL),('subCategories','description',9,'en','',48,'2021-07-18 07:34:18','2021-07-18 07:34:18',NULL),('subCategories','title',10,'en','Necessities',49,'2021-07-18 07:40:41','2021-08-21 12:10:11',NULL),('subCategories','description',10,'en','',50,'2021-07-18 07:40:41','2021-08-21 12:10:11',NULL),('subCategories','title',11,'en','Tools',51,'2021-07-18 07:44:59','2021-08-21 12:12:41',NULL),('subCategories','description',11,'en','',52,'2021-07-18 07:44:59','2021-08-21 12:12:41',NULL),('subCategories','title',12,'en','Electric Supplies',53,'2021-07-18 07:45:34','2021-08-15 09:58:14',NULL),('subCategories','description',12,'en','',54,'2021-07-18 07:45:34','2021-08-15 09:58:14',NULL),('subCategories','title',13,'en','Miscellaneous',55,'2021-07-18 07:49:44','2021-08-12 05:19:51',NULL),('subCategories','description',13,'en','',56,'2021-07-18 07:49:44','2021-08-12 05:19:51',NULL),('subCategories','title',14,'en','Home Accessories',57,'2021-07-18 07:52:39','2021-08-15 10:16:18',NULL),('subCategories','description',14,'en','',58,'2021-07-18 07:52:39','2021-08-15 10:16:18',NULL),('subCategories','title',15,'en','',59,'2021-07-18 07:58:42','2021-08-15 10:18:18',NULL),('subCategories','description',15,'en','',60,'2021-07-18 07:58:42','2021-08-15 10:18:18',NULL),('subCategories','title',16,'en','',61,'2021-07-18 08:02:35','2021-07-18 08:09:54',NULL),('subCategories','description',16,'en','',62,'2021-07-18 08:02:35','2021-07-18 08:09:54',NULL),('subCategories','title',17,'en','Plates & Bowls',63,'2021-07-18 08:08:49','2021-08-12 05:26:00',NULL),('subCategories','description',17,'en','',64,'2021-07-18 08:08:49','2021-08-12 05:26:00',NULL),('subCategories','title',18,'en','',65,'2021-07-18 08:13:10','2021-07-18 08:18:58',NULL),('subCategories','description',18,'en','',66,'2021-07-18 08:13:10','2021-07-18 08:18:58',NULL),('subCategories','title',19,'en','',67,'2021-07-18 08:19:28','2021-07-18 08:19:28',NULL),('subCategories','description',19,'en','',68,'2021-07-18 08:19:28','2021-07-18 08:19:28',NULL),('subCategories','title',20,'en','Cooking Tools & Supplies',69,'2021-07-18 08:20:20','2021-08-12 05:27:02',NULL),('subCategories','description',20,'en','',70,'2021-07-18 08:20:20','2021-08-12 05:27:02',NULL),('subCategories','title',21,'en','Knives & Chopping Boards',71,'2021-07-18 08:22:34','2021-08-12 05:27:25',NULL),('subCategories','description',21,'en','',72,'2021-07-18 08:22:34','2021-08-12 05:27:25',NULL),('subCategories','title',22,'en','',73,'2021-07-18 09:26:32','2021-07-18 09:53:46',NULL),('subCategories','description',22,'en','',74,'2021-07-18 09:26:32','2021-07-18 09:53:46',NULL),('subCategories','title',23,'en','',75,'2021-07-18 09:27:07','2021-07-18 09:27:07',NULL),('subCategories','description',23,'en','',76,'2021-07-18 09:27:07','2021-07-18 09:27:07',NULL),('subCategories','title',24,'en','Planting Pots',77,'2021-07-18 09:27:51','2021-08-12 05:29:54',NULL),('subCategories','description',24,'en','',78,'2021-07-18 09:27:51','2021-08-12 05:29:54',NULL),('subCategories','title',25,'en','Outdoor Decor',79,'2021-07-18 09:29:48','2021-08-12 05:30:16',NULL),('subCategories','description',25,'en','',80,'2021-07-18 09:29:48','2021-08-12 05:30:16',NULL),('subCategories','title',26,'en','Outdoor Lighting',81,'2021-07-18 09:31:48','2021-08-12 05:30:57',NULL),('subCategories','description',26,'en','',82,'2021-07-18 09:31:48','2021-08-12 05:30:57',NULL),('subCategories','title',27,'en','BBQ Supplies',83,'2021-07-18 09:32:36','2021-08-12 05:31:33',NULL),('subCategories','description',27,'en','',84,'2021-07-18 09:32:36','2021-08-12 05:31:33',NULL),('subCategories','title',28,'en','',85,'2021-07-18 09:39:55','2021-07-18 10:05:02',NULL),('subCategories','description',28,'en','',86,'2021-07-18 09:39:55','2021-07-18 10:05:02',NULL),('subCategories','title',29,'en','Body & Skin Care',87,'2021-07-18 09:40:25','2021-08-12 06:21:19',NULL),('subCategories','description',29,'en','',88,'2021-07-18 09:40:25','2021-08-12 06:21:19',NULL),('subCategories','title',30,'en','Hair Care',89,'2021-07-18 09:40:47','2021-08-12 06:05:49',NULL),('subCategories','description',30,'en','',90,'2021-07-18 09:40:47','2021-08-12 06:05:49',NULL),('subCategories','title',31,'en','Dental Care',91,'2021-07-18 09:42:56','2021-08-12 06:06:02',NULL),('subCategories','description',31,'en','',92,'2021-07-18 09:42:56','2021-08-12 06:06:02',NULL),('subCategories','title',32,'en','Hand & Foot Care',93,'2021-07-18 09:43:24','2021-08-21 12:03:07',NULL),('subCategories','description',32,'en','',94,'2021-07-18 09:43:24','2021-08-21 12:03:07',NULL),('subCategories','title',33,'en','Women Care',95,'2021-07-18 09:50:26','2021-08-12 06:20:20',NULL),('subCategories','description',33,'en','',96,'2021-07-18 09:50:26','2021-08-12 06:20:20',NULL),('subCategories','title',34,'en','Men Care',97,'2021-07-18 09:50:41','2021-08-12 06:20:33',NULL),('subCategories','description',34,'en','',98,'2021-07-18 09:50:41','2021-08-12 06:20:33',NULL),('subCategories','title',35,'en','',99,'2021-07-18 10:01:15','2021-07-18 10:01:15',NULL),('subCategories','description',35,'en','',100,'2021-07-18 10:01:15','2021-07-18 10:01:15',NULL),('subCategories','title',36,'en','',101,'2021-07-18 10:01:30','2021-07-18 10:01:30',NULL),('subCategories','description',36,'en','',102,'2021-07-18 10:01:30','2021-07-18 10:01:30',NULL),('subCategories','title',37,'en','',103,'2021-07-18 10:01:51','2021-07-18 10:01:51',NULL),('subCategories','description',37,'en','',104,'2021-07-18 10:01:51','2021-07-18 10:01:51',NULL),('subCategories','title',38,'en','',105,'2021-07-18 10:02:22','2021-07-18 10:03:36',NULL),('subCategories','description',38,'en','',106,'2021-07-18 10:02:22','2021-07-18 10:03:36',NULL),('subCategories','title',39,'en','Makeup Accessories',107,'2021-07-18 10:07:39','2021-08-12 06:22:04',NULL),('subCategories','description',39,'en','',108,'2021-07-18 10:07:39','2021-08-12 06:22:04',NULL),('subCategories','title',40,'en','Earings',109,'2021-07-18 10:13:11','2021-08-12 06:22:37',NULL),('subCategories','description',40,'en','',110,'2021-07-18 10:13:11','2021-08-12 06:22:37',NULL),('subCategories','title',41,'en','Necklaces',111,'2021-07-18 10:17:42','2021-08-12 06:22:31',NULL),('subCategories','description',41,'en','',112,'2021-07-18 10:17:42','2021-08-12 06:22:31',NULL),('subCategories','title',42,'en','Bracelets',113,'2021-07-18 10:18:02','2021-08-12 06:22:49',NULL),('subCategories','description',42,'en','',114,'2021-07-18 10:18:02','2021-08-12 06:22:49',NULL),('subCategories','title',43,'en','',115,'2021-07-18 10:18:16','2021-07-18 10:18:16',NULL),('subCategories','description',43,'en','',116,'2021-07-18 10:18:16','2021-07-18 10:18:16',NULL),('subCategories','title',44,'en','',117,'2021-07-18 10:24:45','2021-07-18 10:24:45',NULL),('subCategories','description',44,'en','',118,'2021-07-18 10:24:45','2021-07-18 10:24:45',NULL),('subCategories','title',45,'en','Hair Accessories',119,'2021-07-18 10:26:27','2021-08-12 06:23:10',NULL),('subCategories','description',45,'en','',120,'2021-07-18 10:26:27','2021-08-12 06:23:10',NULL),('subCategories','title',46,'en','Temporary  Tattoos',121,'2021-07-18 10:26:42','2021-08-12 06:24:11',NULL),('subCategories','description',46,'en','',122,'2021-07-18 10:26:42','2021-08-12 06:24:11',NULL),('subCategories','title',47,'en','Watches',123,'2021-07-18 10:27:10','2021-08-12 06:24:23',NULL),('subCategories','description',47,'en','',124,'2021-07-18 10:27:10','2021-08-12 06:24:23',NULL),('subCategories','title',48,'en','Sunglasses',125,'2021-07-18 10:27:24','2021-08-12 06:24:37',NULL),('subCategories','description',48,'en','',126,'2021-07-18 10:27:24','2021-08-12 06:24:37',NULL),('subCategories','title',49,'en','Shawls & Scarves',127,'2021-07-18 10:27:57','2021-08-14 10:35:06',NULL),('subCategories','description',49,'en','',128,'2021-07-18 10:27:57','2021-08-14 10:35:06',NULL),('subCategories','title',50,'en','Hats',129,'2021-07-18 11:26:58','2021-08-12 06:25:51',NULL),('subCategories','description',50,'en','',130,'2021-07-18 11:26:58','2021-08-12 06:25:51',NULL),('subCategories','title',51,'en','Bags & Purses',131,'2021-07-18 12:12:40','2021-08-14 15:41:31',NULL),('subCategories','description',51,'en','',132,'2021-07-18 12:12:40','2021-08-14 15:41:31',NULL),('subCategories','title',52,'en','Apparels & Footwear',133,'2021-07-18 12:15:35','2021-08-12 06:25:27',NULL),('subCategories','description',52,'en','',134,'2021-07-18 12:15:35','2021-08-12 06:25:27',NULL),('subCategories','title',53,'en','Other',135,'2021-07-18 12:24:57','2021-08-12 06:26:10',NULL),('subCategories','description',53,'en','',136,'2021-07-18 12:24:57','2021-08-12 06:26:10',NULL),('subCategories','title',54,'en','',137,'2021-07-18 12:25:40','2021-07-18 12:25:40',NULL),('subCategories','description',54,'en','',138,'2021-07-18 12:25:40','2021-07-18 12:25:40',NULL),('subCategories','title',55,'en','',139,'2021-07-18 12:25:52','2021-07-18 12:28:45',NULL),('subCategories','description',55,'en','',140,'2021-07-18 12:25:52','2021-07-18 12:28:45',NULL),('subCategories','title',56,'en','',141,'2021-07-18 12:26:20','2021-07-18 12:28:54',NULL),('subCategories','description',56,'en','',142,'2021-07-18 12:26:20','2021-07-18 12:28:54',NULL),('subCategories','title',57,'en','',143,'2021-07-18 12:26:49','2021-07-18 12:37:30',NULL),('subCategories','description',57,'en','',144,'2021-07-18 12:26:49','2021-07-18 12:37:30',NULL),('subCategories','title',58,'en','',145,'2021-07-18 12:27:16','2021-07-18 12:34:08',NULL),('subCategories','description',58,'en','',146,'2021-07-18 12:27:16','2021-07-18 12:34:08',NULL),('subCategories','title',59,'en','Sunglasses & Hats',147,'2021-07-18 12:27:44','2021-08-14 17:56:12',NULL),('subCategories','description',59,'en','',148,'2021-07-18 12:27:44','2021-08-14 17:56:12',NULL),('subCategories','title',60,'en','Lighters & Keychains',149,'2021-07-18 12:28:06','2021-08-14 17:56:30',NULL),('subCategories','description',60,'en','',150,'2021-07-18 12:28:06','2021-08-14 17:56:30',NULL),('subCategories','title',61,'en','Other',151,'2021-07-18 12:29:46','2021-08-14 17:56:43',NULL),('subCategories','description',61,'en','',152,'2021-07-18 12:29:46','2021-08-14 17:56:43',NULL),('subCategories','title',62,'en','Baby',153,'2021-07-18 12:41:25','2021-08-14 17:56:59',NULL),('subCategories','description',62,'en','',154,'2021-07-18 12:41:25','2021-08-14 17:57:00',NULL),('subCategories','title',63,'en','Kids            ',155,'2021-07-18 12:41:40','2021-08-14 17:57:30',NULL),('subCategories','description',63,'en','',156,'2021-07-18 12:41:40','2021-08-14 17:57:30',NULL),('subCategories','title',64,'en','',157,'2021-07-18 13:04:57','2021-07-18 13:04:57',NULL),('subCategories','description',64,'en','',158,'2021-07-18 13:04:57','2021-07-18 13:04:57',NULL),('subCategories','title',65,'en','',159,'2021-07-18 13:16:53','2021-07-18 13:16:53',NULL),('subCategories','description',65,'en','',160,'2021-07-18 13:16:53','2021-07-18 13:16:53',NULL),('subCategories','title',66,'en','',161,'2021-07-18 14:07:59','2021-07-18 14:07:59',NULL),('subCategories','description',66,'en','',162,'2021-07-18 14:07:59','2021-07-18 14:07:59',NULL),('subCategories','title',67,'en','',163,'2021-07-18 14:08:49','2021-07-18 14:08:49',NULL),('subCategories','description',67,'en','',164,'2021-07-18 14:08:49','2021-07-18 14:08:49',NULL),('subCategories','title',68,'en','Writing',165,'2021-08-07 00:12:21','2021-08-14 17:58:19',NULL),('subCategories','description',68,'en','',166,'2021-08-07 00:12:21','2021-08-14 17:58:19',NULL),('subCategories','title',69,'en','Coloring',167,'2021-08-07 03:37:00','2021-08-14 17:58:30',NULL),('subCategories','description',69,'en','',168,'2021-08-07 03:37:00','2021-08-14 17:58:30',NULL),('subCategories','title',70,'en','Pencil Case Tools',169,'2021-08-07 03:37:42','2021-08-14 17:58:51',NULL),('subCategories','description',70,'en','',170,'2021-08-07 03:37:42','2021-08-14 17:58:51',NULL),('subCategories','title',71,'en','Glue & Tape',171,'2021-08-07 03:38:37','2021-08-14 17:59:10',NULL),('subCategories','description',71,'en','',172,'2021-08-07 03:38:37','2021-08-14 17:59:10',NULL),('subCategories','title',72,'en','Paper & Cardboards',173,'2021-08-07 14:14:20','2021-08-14 18:41:09',NULL),('subCategories','description',72,'en','',174,'2021-08-07 14:14:20','2021-08-14 18:41:09',NULL),('subCategories','title',73,'en','Art Supplies',175,'2021-08-07 18:43:36','2021-08-14 18:42:21',NULL),('subCategories','description',73,'en','',176,'2021-08-07 18:43:36','2021-08-14 18:42:21',NULL),('subCategories','title',74,'en','Kids Toys',177,'2021-08-09 06:10:11','2021-08-14 18:43:11',NULL),('subCategories','description',74,'en','',178,'2021-08-09 06:10:11','2021-08-14 18:43:11',NULL),('subCategories','title',75,'en','Dolls & Accessories',179,'2021-08-09 06:11:41','2021-08-14 18:52:47',NULL),('subCategories','description',75,'en','',180,'2021-08-09 06:11:41','2021-08-14 18:52:47',NULL),('subCategories','title',76,'en','Assembly Games',181,'2021-08-09 06:11:56','2021-08-14 18:55:26',NULL),('subCategories','description',76,'en','',182,'2021-08-09 06:11:56','2021-08-14 18:55:26',NULL),('subCategories','title',77,'en','Costumes',183,'2021-08-09 06:12:14','2021-08-14 18:56:08',NULL),('subCategories','description',77,'en','',184,'2021-08-09 06:12:14','2021-08-14 18:56:08',NULL),('subCategories','title',78,'en','Board Games',185,'2021-08-09 06:12:33','2021-08-09 06:20:44',NULL),('subCategories','description',78,'en','',186,'2021-08-09 06:12:33','2021-08-09 06:20:44',NULL),('subCategories','title',79,'en','Gadgets',187,'2021-08-09 06:13:25','2021-08-09 06:20:24',NULL),('subCategories','description',79,'en','',188,'2021-08-09 06:13:25','2021-08-09 06:20:24',NULL),('subCategories','title',80,'en','Sport Equipment',189,'2021-08-09 06:14:13','2021-08-09 06:20:01',NULL),('subCategories','description',80,'en','',190,'2021-08-09 06:14:13','2021-08-09 06:20:01',NULL),('subCategories','title',81,'en','Swimming & Beach',191,'2021-08-09 06:15:10','2021-08-14 19:04:07',NULL),('subCategories','description',81,'en','',192,'2021-08-09 06:15:10','2021-08-14 19:04:07',NULL),('subCategories','title',82,'en','Picnics &  Camping',193,'2021-08-09 06:15:41','2021-08-14 19:02:38',NULL),('subCategories','description',82,'en','',194,'2021-08-09 06:15:41','2021-08-14 19:02:38',NULL),('items','title',1,'en','AL-Ahram Plastic Plates',195,'2021-08-16 10:44:32','2021-08-21 16:22:31',NULL),('items','description',1,'en','AL-Ahram Plastic Plates 50 pieces\n',196,'2021-08-16 10:44:32','2021-08-21 16:22:31',NULL),('items','title',2,'en','Ice Cups ',197,'2021-08-16 11:05:03','2021-08-21 17:11:35',NULL),('items','description',2,'en','Ice Cups - 50 Pieces',198,'2021-08-16 11:05:03','2021-08-21 17:11:35',NULL),('items','title',3,'en','Klenist Paper Towel',199,'2021-08-16 11:49:29','2021-08-21 17:06:50',NULL),('items','description',3,'en','High Absorbing Paper Towel',200,'2021-08-16 11:49:29','2021-08-21 17:06:50',NULL),('items','title',4,'en','Medicare Plaster',201,'2021-08-16 12:56:18','2021-08-21 17:04:42',NULL),('items','description',4,'en',' Medicare Sterile Medical Plaster',202,'2021-08-16 12:56:18','2021-08-21 17:04:42',NULL),('items','title',5,'en','RZ FOIL',203,'2021-08-17 11:06:42','2021-08-17 11:27:03',NULL),('items','description',5,'en','',204,'2021-08-17 11:06:42','2021-08-17 11:27:03',NULL),('items','title',6,'en','RZ FOIL',205,'2021-08-17 11:15:25','2021-08-17 11:26:42',NULL),('items','description',6,'en','',206,'2021-08-17 11:15:25','2021-08-17 11:26:42',NULL),('items','title',7,'en','RZ FOIL',207,'2021-08-17 11:26:17','2021-08-17 11:26:17',NULL),('items','description',7,'en','',208,'2021-08-17 11:26:17','2021-08-17 11:26:17',NULL),('items','title',8,'en','RZ FOIL',209,'2021-08-17 11:30:50','2021-08-17 11:30:50',NULL),('items','description',8,'en','',210,'2021-08-17 11:30:50','2021-08-17 11:30:50',NULL),('items','title',9,'en','',211,'2021-08-17 12:45:31','2021-08-21 16:06:32',NULL),('items','description',9,'en','',212,'2021-08-17 12:45:31','2021-08-21 16:06:32',NULL),('items','title',10,'en','',213,'2021-08-17 13:07:28','2021-08-17 13:07:28',NULL),('items','description',10,'en','',214,'2021-08-17 13:07:28','2021-08-17 13:07:28',NULL),('items','title',11,'en','plastic plates',215,'2021-08-18 08:37:21','2021-08-18 08:37:21',NULL),('items','description',11,'en','white plastic plates',216,'2021-08-18 08:37:21','2021-08-18 08:37:21',NULL),('items','title',12,'en','Plastic Forks',217,'2021-08-18 12:16:01','2021-08-21 17:17:54',NULL),('items','description',12,'en','AlQalaa Plastic Forks',218,'2021-08-18 12:16:01','2021-08-21 17:17:54',NULL),('items','title',13,'en','AlAhram Plastic Spoons',219,'2021-08-18 12:21:03','2021-08-21 17:24:33',NULL),('items','description',13,'en','Al-Ahram Plastic Spoons',220,'2021-08-18 12:21:03','2021-08-21 17:24:33',NULL),('items','title',14,'en','',221,'2021-08-18 12:24:44','2021-08-18 12:24:44',NULL),('items','description',14,'en','',222,'2021-08-18 12:24:44','2021-08-18 12:24:44',NULL),('items','title',15,'en','',223,'2021-08-18 13:26:43','2021-08-21 16:24:50',NULL),('items','description',15,'en','',224,'2021-08-18 13:26:43','2021-08-21 16:24:50',NULL),('items','title',16,'en','Nik Office Super Glue',225,'2021-08-18 14:05:43','2021-08-26 07:34:18',NULL),('items','description',16,'en','Multi - Use Super Glue',226,'2021-08-18 14:05:43','2021-08-26 07:34:18',NULL),('items','title',17,'en','SUPER GLUE WILL REACH',227,'2021-08-18 14:13:58','2021-08-18 14:13:58',NULL),('items','description',17,'en','',228,'2021-08-18 14:13:58','2021-08-18 14:13:58',NULL),('items','title',18,'en','SUPER GLUE',229,'2021-08-18 14:18:45','2021-08-18 14:18:45',NULL),('items','description',18,'en','',230,'2021-08-18 14:18:45','2021-08-18 14:18:45',NULL),('items','title',19,'en',' Silicone Stick',231,'2021-08-18 14:29:26','2021-08-21 16:55:34',NULL),('items','description',19,'en',' Large Silicone Stick',232,'2021-08-18 14:29:26','2021-08-21 16:55:34',NULL),('items','title',20,'en','',233,'2021-08-19 08:53:26','2021-08-19 08:53:26',NULL),('items','description',20,'en','',234,'2021-08-19 08:53:26','2021-08-19 08:53:26',NULL),('items','title',21,'en','',235,'2021-08-19 09:05:08','2021-08-19 09:05:08',NULL),('items','description',21,'en','',236,'2021-08-19 09:05:08','2021-08-19 09:05:08',NULL),('items','title',22,'en','',237,'2021-08-19 09:09:41','2021-08-19 09:09:41',NULL),('items','description',22,'en','',238,'2021-08-19 09:09:41','2021-08-19 09:09:41',NULL),('items','title',23,'en','',239,'2021-08-19 09:27:32','2021-08-19 09:27:32',NULL),('items','description',23,'en','',240,'2021-08-19 09:27:32','2021-08-19 09:27:32',NULL),('items','title',24,'en',' Screwdriver 2 in 1',241,'2021-08-19 09:47:22','2021-08-26 07:27:27',NULL),('items','description',24,'en','',242,'2021-08-19 09:47:22','2021-08-26 07:27:27',NULL),('items','title',25,'en','',243,'2021-08-19 09:50:53','2021-08-26 07:30:31',NULL),('items','description',25,'en','',244,'2021-08-19 09:50:53','2021-08-26 07:30:31',NULL),('items','title',26,'en','',245,'2021-08-19 10:08:09','2021-08-19 10:13:51',NULL),('items','description',26,'en','',246,'2021-08-19 10:08:09','2021-08-19 10:13:51',NULL),('items','title',27,'en','',247,'2021-08-19 10:12:04','2021-08-26 05:49:48',NULL),('items','description',27,'en','',248,'2021-08-19 10:12:04','2021-08-26 05:49:48',NULL),('items','title',28,'en','Metal Tacks',249,'2021-08-19 10:37:32','2021-08-26 07:31:54',NULL),('items','description',28,'en','Metal Thumb Tacks',250,'2021-08-19 10:37:32','2021-08-26 07:31:54',NULL),('items','title',29,'en','Multiuse Scissor ',251,'2021-08-19 10:46:33','2021-08-26 07:37:27',NULL),('items','description',29,'en','Sharp Multiuse Scissor',252,'2021-08-19 10:46:33','2021-08-26 07:37:27',NULL),('items','title',30,'en','Folding Draining Basket',253,'2021-08-19 11:03:10','2021-08-26 04:51:05',NULL),('items','description',30,'en','Fruits / Vegetables Folding Silicone Draining Basket',254,'2021-08-19 11:03:10','2021-08-26 04:51:05',NULL),('items','title',31,'en','Folding Draining Basket',255,'2021-08-19 11:04:48','2021-08-26 04:46:08',NULL),('items','description',31,'en','Fruit / Vegetables Folding Silicone Draining Basket',256,'2021-08-19 11:04:48','2021-08-26 04:46:08',NULL),('items','title',32,'en','',257,'2021-08-19 11:11:09','2021-08-19 11:26:17',NULL),('items','description',32,'en','',258,'2021-08-19 11:11:09','2021-08-19 11:26:17',NULL),('items','title',33,'en','',259,'2021-08-19 11:17:24','2021-08-23 09:30:21',NULL),('items','description',33,'en','',260,'2021-08-19 11:17:24','2021-08-23 09:30:21',NULL),('items','title',34,'en','',261,'2021-08-19 13:07:15','2021-08-26 07:44:50',NULL),('items','description',34,'en','',262,'2021-08-19 13:07:15','2021-08-26 07:44:50',NULL),('items','title',35,'en','Heat Resistance Mat',263,'2021-08-19 13:10:32','2021-08-26 07:43:06',NULL),('items','description',35,'en','Table Heat Resistance Mat',264,'2021-08-19 13:10:32','2021-08-26 07:43:06',NULL),('items','title',36,'en','',265,'2021-08-21 10:31:32','2021-08-26 07:46:17',NULL),('items','description',36,'en','',266,'2021-08-21 10:31:32','2021-08-26 07:46:17',NULL),('items','title',37,'en','',267,'2021-08-21 10:35:15','2021-08-21 10:35:15',NULL),('items','description',37,'en','',268,'2021-08-21 10:35:15','2021-08-21 10:35:15',NULL),('items','title',38,'en','',269,'2021-08-21 10:55:36','2021-08-21 11:10:12',NULL),('items','description',38,'en','',270,'2021-08-21 10:55:36','2021-08-21 11:10:12',NULL),('items','title',39,'en','',271,'2021-08-21 11:03:43','2021-08-21 11:09:50',NULL),('items','description',39,'en','',272,'2021-08-21 11:03:43','2021-08-21 11:09:50',NULL),('items','title',40,'en','',273,'2021-08-21 11:09:28','2021-08-21 11:09:28',NULL),('items','description',40,'en','',274,'2021-08-21 11:09:28','2021-08-21 11:09:28',NULL),('items','title',41,'en','',275,'2021-08-21 11:20:44','2021-08-21 11:20:44',NULL),('items','description',41,'en','',276,'2021-08-21 11:20:44','2021-08-21 11:20:44',NULL),('items','title',42,'en','',277,'2021-08-22 09:05:05','2021-08-22 09:05:05',NULL),('items','description',42,'en','',278,'2021-08-22 09:05:05','2021-08-22 09:05:05',NULL),('items','title',43,'en','',279,'2021-08-22 09:09:50','2021-08-22 09:09:50',NULL),('items','description',43,'en','',280,'2021-08-22 09:09:50','2021-08-22 09:09:50',NULL),('items','title',44,'en','',281,'2021-08-22 09:22:17','2021-08-22 09:24:08',NULL),('items','description',44,'en','',282,'2021-08-22 09:22:17','2021-08-22 09:24:08',NULL),('items','title',45,'en','',283,'2021-08-22 09:28:27','2021-08-22 09:28:27',NULL),('items','description',45,'en','',284,'2021-08-22 09:28:27','2021-08-22 09:28:27',NULL),('items','title',46,'en','',285,'2021-08-22 11:19:41','2021-08-22 11:19:41',NULL),('items','description',46,'en','',286,'2021-08-22 11:19:41','2021-08-22 11:19:41',NULL),('items','title',47,'en','',287,'2021-08-22 11:51:28','2021-08-22 11:51:28',NULL),('items','description',47,'en','',288,'2021-08-22 11:51:28','2021-08-22 11:51:28',NULL),('items','title',48,'en','',289,'2021-08-22 11:54:56','2021-08-22 11:54:56',NULL),('items','description',48,'en','',290,'2021-08-22 11:54:56','2021-08-22 11:54:56',NULL),('items','title',49,'en','',291,'2021-08-22 11:59:51','2021-08-22 11:59:51',NULL),('items','description',49,'en','',292,'2021-08-22 11:59:51','2021-08-22 11:59:51',NULL),('items','title',50,'en','',293,'2021-08-22 12:03:37','2021-08-26 04:26:53',NULL),('items','description',50,'en','',294,'2021-08-22 12:03:37','2021-08-26 04:26:53',NULL),('items','title',51,'en','Knife Sharpener',295,'2021-08-22 12:07:54','2021-08-26 04:14:38',NULL),('items','description',51,'en',' Knife Sharpener Stone Wheel',296,'2021-08-22 12:07:54','2021-08-26 04:14:38',NULL),('items','title',52,'en','Gift Bag',297,'2021-08-22 12:12:24','2021-08-26 04:09:17',NULL),('items','description',52,'en','Plastic Gift Bag',298,'2021-08-22 12:12:24','2021-08-26 04:09:17',NULL),('items','title',53,'en','Door Stopper',299,'2021-08-22 12:30:09','2021-08-26 04:07:24',NULL),('items','description',53,'en','Plastic Door Stopper ',300,'2021-08-22 12:30:09','2021-08-26 04:07:24',NULL),('items','title',54,'en','Toothbrush Holder',301,'2021-08-22 12:37:26','2021-08-26 04:06:25',NULL),('items','description',54,'en','Toothbrush Hanging Holder - 3 Brushes',302,'2021-08-22 12:37:26','2021-08-26 04:06:25',NULL),('items','title',55,'en','Wooden Clips',303,'2021-08-22 12:55:52','2021-08-26 04:03:16',NULL),('items','description',55,'en','Wooden Cloth Clips',304,'2021-08-22 12:55:52','2021-08-26 04:03:16',NULL),('items','title',56,'en','',305,'2021-08-22 12:58:30','2021-08-22 12:58:30',NULL),('items','description',56,'en','',306,'2021-08-22 12:58:30','2021-08-22 12:58:30',NULL),('items','title',57,'en','',307,'2021-08-22 13:11:34','2021-08-26 14:01:42',NULL),('items','description',57,'en','',308,'2021-08-22 13:11:34','2021-08-26 14:01:42',NULL),('items','title',58,'en','',309,'2021-08-22 13:14:11','2021-08-25 11:41:54',NULL),('items','description',58,'en','',310,'2021-08-22 13:14:11','2021-08-25 11:41:54',NULL),('items','title',59,'en','Furniture Protecting Pads',311,'2021-08-23 09:39:07','2021-08-26 03:55:59',NULL),('items','description',59,'en','Anti-Slip & Anti-Scratch Protecting Pads',312,'2021-08-23 09:39:07','2021-08-26 03:55:59',NULL),('items','title',60,'en','Kitchen Hanger',313,'2021-08-23 09:42:16','2021-08-26 04:00:37',NULL),('items','description',60,'en','Plastic Kitchen Hanger - Heart ',314,'2021-08-23 09:42:16','2021-08-26 04:00:37',NULL),('items','title',61,'en','Dustpan & Broom',315,'2021-08-23 09:45:28','2021-08-26 03:45:11',NULL),('items','description',61,'en','Small Desk Dustpan & Broom ',316,'2021-08-23 09:45:28','2021-08-26 03:45:11',NULL),('items','title',62,'en','Dustpan & Broom',317,'2021-08-23 09:47:51','2021-08-26 03:45:33',NULL),('items','description',62,'en','Small Desk Dustpan & Broom ',318,'2021-08-23 09:47:51','2021-08-26 03:45:33',NULL),('items','title',63,'en','Shower Head Hanger ',319,'2021-08-24 09:11:28','2021-08-26 03:42:45',NULL),('items','description',63,'en','Removable Silicone Shower Head Hanger',320,'2021-08-24 09:11:28','2021-08-26 03:42:45',NULL),('items','title',64,'en','Toothpicks',321,'2021-08-24 09:25:02','2021-08-26 03:37:06',NULL),('items','description',64,'en','Wooden Toothpicks ',322,'2021-08-24 09:25:02','2021-08-26 03:37:06',NULL),('items','title',65,'en','Tasbih Finger Counter',323,'2021-08-24 09:28:37','2021-08-26 03:32:07',NULL),('items','description',65,'en','Islamic Tasbih Finger Counter ',324,'2021-08-24 09:28:37','2021-08-26 03:32:07',NULL),('items','title',66,'en','Folding Hangers',325,'2021-08-24 09:56:03','2021-08-26 07:49:18',NULL),('items','description',66,'en','Magic Hangers - Space Saving Holders',326,'2021-08-24 09:56:03','2021-08-26 07:49:18',NULL),('items','title',67,'en','Folding Hangers',327,'2021-08-24 10:00:03','2021-08-26 07:48:56',NULL),('items','description',67,'en','Magic Hangers - Space Saving Holders',328,'2021-08-24 10:00:03','2021-08-26 07:48:56',NULL),('items','title',68,'en','Folding Hangers',329,'2021-08-24 10:01:53','2021-08-26 03:26:37',NULL),('items','description',68,'en','Magic Hangers - Space Saving Holders',330,'2021-08-24 10:01:53','2021-08-26 03:26:37',NULL),('items','title',69,'en','',331,'2021-08-24 10:04:50','2021-08-26 07:50:24',NULL),('items','description',69,'en','',332,'2021-08-24 10:04:50','2021-08-26 07:50:24',NULL),('items','title',70,'en','Feet Remover Stone',333,'2021-08-24 10:52:42','2021-08-26 03:23:23',NULL),('items','description',70,'en','Feet Callus Remover Stone',334,'2021-08-24 10:52:42','2021-08-26 03:23:23',NULL),('items','title',71,'en','',335,'2021-08-24 11:20:11','2021-08-26 11:46:37',NULL),('items','description',71,'en','',336,'2021-08-24 11:20:11','2021-08-26 11:46:37',NULL),('items','title',72,'en','',337,'2021-08-25 08:51:01','2021-08-25 08:51:01',NULL),('items','description',72,'en','',338,'2021-08-25 08:51:01','2021-08-25 08:51:01',NULL),('items','title',73,'en','',339,'2021-08-25 08:55:03','2021-08-25 08:55:03',NULL),('items','description',73,'en','',340,'2021-08-25 08:55:03','2021-08-25 08:55:03',NULL),('items','title',74,'en','',341,'2021-08-25 09:07:27','2021-08-25 09:07:27',NULL),('items','description',74,'en','',342,'2021-08-25 09:07:27','2021-08-25 09:07:27',NULL),('items','title',75,'en','',343,'2021-08-25 09:09:24','2021-08-25 09:09:24',NULL),('items','description',75,'en','',344,'2021-08-25 09:09:24','2021-08-25 09:09:24',NULL),('items','title',76,'en','',345,'2021-08-25 09:14:38','2021-08-25 09:14:38',NULL),('items','description',76,'en','',346,'2021-08-25 09:14:38','2021-08-25 09:14:38',NULL),('items','title',77,'en','',347,'2021-08-25 09:21:04','2021-08-25 09:21:04',NULL),('items','description',77,'en','',348,'2021-08-25 09:21:04','2021-08-25 09:21:04',NULL),('items','title',78,'en','',349,'2021-08-25 09:27:21','2021-08-25 09:27:21',NULL),('items','description',78,'en','',350,'2021-08-25 09:27:21','2021-08-25 09:27:21',NULL),('items','title',79,'en','',351,'2021-08-25 09:42:57','2021-08-25 09:42:57',NULL),('items','description',79,'en','',352,'2021-08-25 09:42:57','2021-08-25 09:42:57',NULL),('items','title',80,'en','',353,'2021-08-25 09:46:57','2021-08-25 09:46:57',NULL),('items','description',80,'en','',354,'2021-08-25 09:46:57','2021-08-25 09:46:57',NULL),('items','title',81,'en','',355,'2021-08-25 09:51:28','2021-08-25 09:51:28',NULL),('items','description',81,'en','',356,'2021-08-25 09:51:28','2021-08-25 09:51:28',NULL),('items','title',82,'en','kenza beauty cream',357,'2021-08-25 09:56:26','2021-08-25 09:56:26',NULL),('items','description',82,'en','',358,'2021-08-25 09:56:26','2021-08-25 09:56:26',NULL),('items','title',83,'en','Floss Picks',359,'2021-08-25 10:15:45','2021-08-26 03:19:40',NULL),('items','description',83,'en','Floss Picks - 20 Pieces',360,'2021-08-25 10:15:45','2021-08-26 03:19:40',NULL),('items','title',84,'en','',361,'2021-08-25 10:19:52','2021-08-25 10:19:52',NULL),('items','description',84,'en','',362,'2021-08-25 10:19:52','2021-08-25 10:19:52',NULL),('items','title',85,'en','',363,'2021-08-25 10:22:41','2021-08-25 10:22:41',NULL),('items','description',85,'en','',364,'2021-08-25 10:22:41','2021-08-25 10:22:41',NULL),('items','title',86,'en','',365,'2021-08-25 10:47:07','2021-08-25 10:47:07',NULL),('items','description',86,'en','',366,'2021-08-25 10:47:07','2021-08-25 10:47:07',NULL),('items','title',87,'en','',367,'2021-08-25 10:51:58','2021-08-25 10:51:58',NULL),('items','description',87,'en','',368,'2021-08-25 10:51:58','2021-08-25 10:51:58',NULL),('items','title',88,'en','',369,'2021-08-25 10:56:49','2021-08-25 10:56:49',NULL),('items','description',88,'en','',370,'2021-08-25 10:56:49','2021-08-25 10:56:49',NULL),('items','title',89,'en','',371,'2021-08-25 11:01:38','2021-08-25 11:01:38',NULL),('items','description',89,'en','',372,'2021-08-25 11:01:38','2021-08-25 11:01:38',NULL),('items','title',90,'en','',373,'2021-08-25 11:05:01','2021-08-25 11:05:01',NULL),('items','description',90,'en','',374,'2021-08-25 11:05:01','2021-08-25 11:05:01',NULL),('items','title',91,'en','Shaving Razor Blade',375,'2021-08-25 11:11:45','2021-08-26 03:12:58',NULL),('items','description',91,'en','Men Black Shaving Razor',376,'2021-08-25 11:11:45','2021-08-26 03:12:58',NULL),('items','title',92,'en','',377,'2021-08-25 11:14:40','2021-08-25 11:14:40',NULL),('items','description',92,'en','',378,'2021-08-25 11:14:40','2021-08-25 11:14:40',NULL),('items','title',93,'en','',379,'2021-08-25 11:25:51','2021-08-25 11:25:51',NULL),('items','description',93,'en','',380,'2021-08-25 11:25:51','2021-08-25 11:25:51',NULL),('items','title',94,'en','',381,'2021-08-25 11:29:46','2021-08-25 11:29:46',NULL),('items','description',94,'en','',382,'2021-08-25 11:29:46','2021-08-25 11:29:46',NULL),('items','title',95,'en','',383,'2021-08-25 11:36:04','2021-08-25 11:36:04',NULL),('items','description',95,'en','',384,'2021-08-25 11:36:04','2021-08-25 11:36:04',NULL),('items','title',96,'en','',385,'2021-08-25 11:50:38','2021-08-25 11:50:38',NULL),('items','description',96,'en','',386,'2021-08-25 11:50:38','2021-08-25 11:50:38',NULL),('items','title',97,'en','',387,'2021-08-25 11:53:10','2021-08-25 11:53:10',NULL),('items','description',97,'en','',388,'2021-08-25 11:53:10','2021-08-25 11:53:10',NULL),('items','title',98,'en','',389,'2021-08-25 12:36:01','2021-08-25 12:36:01',NULL),('items','description',98,'en','',390,'2021-08-25 12:36:01','2021-08-25 12:36:01',NULL),('items','title',99,'en','golden sbouhh cosmetics',391,'2021-08-25 12:40:30','2021-08-25 12:40:30',NULL),('items','description',99,'en','',392,'2021-08-25 12:40:30','2021-08-25 12:40:30',NULL),('items','title',100,'en','',393,'2021-08-25 12:44:22','2021-08-25 12:44:22',NULL),('items','description',100,'en','',394,'2021-08-25 12:44:22','2021-08-25 12:44:22',NULL),('items','title',101,'en','',395,'2021-08-25 12:48:05','2021-08-25 12:48:05',NULL),('items','description',101,'en','',396,'2021-08-25 12:48:05','2021-08-25 12:48:05',NULL),('items','title',102,'en','',397,'2021-08-25 12:52:33','2021-08-25 12:52:33',NULL),('items','description',102,'en','',398,'2021-08-25 12:52:33','2021-08-25 12:52:33',NULL),('items','title',103,'en','',399,'2021-08-25 12:55:43','2021-08-25 12:55:43',NULL),('items','description',103,'en','',400,'2021-08-25 12:55:43','2021-08-25 12:55:43',NULL),('items','title',104,'en','',401,'2021-08-25 12:59:44','2021-08-25 12:59:44',NULL),('items','description',104,'en','',402,'2021-08-25 12:59:44','2021-08-25 12:59:44',NULL),('items','title',105,'en','',403,'2021-08-25 13:13:14','2021-08-25 13:13:14',NULL),('items','description',105,'en','',404,'2021-08-25 13:13:14','2021-08-25 13:13:14',NULL),('items','title',106,'en','',405,'2021-08-25 13:17:29','2021-08-26 08:42:25',NULL),('items','description',106,'en','',406,'2021-08-25 13:17:29','2021-08-26 08:42:25',NULL),('items','title',107,'en','',407,'2021-08-25 13:20:55','2021-08-25 13:20:55',NULL),('items','description',107,'en','',408,'2021-08-25 13:20:55','2021-08-25 13:20:55',NULL),('items','title',108,'en','',409,'2021-08-25 13:27:59','2021-08-25 13:27:59',NULL),('items','description',108,'en','',410,'2021-08-25 13:27:59','2021-08-25 13:27:59',NULL),('items','title',109,'en','',411,'2021-08-25 13:30:07','2021-08-25 13:30:07',NULL),('items','description',109,'en','',412,'2021-08-25 13:30:07','2021-08-25 13:30:07',NULL),('items','title',110,'en','',413,'2021-08-25 13:37:09','2021-08-26 11:49:38',NULL),('items','description',110,'en','',414,'2021-08-25 13:37:09','2021-08-26 11:49:38',NULL),('items','title',111,'en','',415,'2021-08-25 13:50:34','2021-08-25 19:05:55',NULL),('items','description',111,'en','',416,'2021-08-25 13:50:34','2021-08-25 19:05:55',NULL),('items','title',112,'en','',417,'2021-08-26 12:17:27','2021-08-26 12:17:27',NULL),('items','description',112,'en','',418,'2021-08-26 12:17:27','2021-08-26 12:17:27',NULL),('items','title',113,'en','',419,'2021-08-28 09:51:07','2021-08-28 09:51:07',NULL),('items','description',113,'en','',420,'2021-08-28 09:51:07','2021-08-28 09:51:07',NULL),('items','title',114,'en','',421,'2021-08-28 09:58:25','2021-08-28 09:58:25',NULL),('items','description',114,'en','',422,'2021-08-28 09:58:25','2021-08-28 09:58:25',NULL),('items','title',115,'en','',423,'2021-08-28 10:09:33','2021-08-28 10:09:33',NULL),('items','description',115,'en','',424,'2021-08-28 10:09:33','2021-08-28 10:09:33',NULL),('items','title',116,'en','',425,'2021-08-28 10:19:34','2021-08-28 10:19:34',NULL),('items','description',116,'en','',426,'2021-08-28 10:19:34','2021-08-28 10:19:34',NULL),('items','title',117,'en','',427,'2021-08-28 10:35:45','2021-08-28 10:35:45',NULL),('items','description',117,'en','',428,'2021-08-28 10:35:45','2021-08-28 10:35:45',NULL),('items','title',118,'en','',429,'2021-08-28 10:50:21','2021-08-28 10:50:21',NULL),('items','description',118,'en','',430,'2021-08-28 10:50:21','2021-08-28 10:50:21',NULL),('items','title',119,'en','',431,'2021-08-28 10:59:38','2021-08-28 10:59:38',NULL),('items','description',119,'en','',432,'2021-08-28 10:59:38','2021-08-28 10:59:38',NULL),('items','title',120,'en','',433,'2021-08-28 12:15:49','2021-08-28 12:15:49',NULL),('items','description',120,'en','',434,'2021-08-28 12:15:49','2021-08-28 12:15:49',NULL),('items','title',121,'en','',435,'2021-08-28 12:18:39','2021-08-28 12:18:39',NULL),('items','description',121,'en','',436,'2021-08-28 12:18:39','2021-08-28 12:18:39',NULL),('items','title',122,'en','',437,'2021-08-28 12:25:10','2021-08-28 12:25:10',NULL),('items','description',122,'en','',438,'2021-08-28 12:25:10','2021-08-28 12:25:10',NULL),('items','title',123,'en','',439,'2021-08-28 12:29:36','2021-08-28 12:29:36',NULL),('items','description',123,'en','',440,'2021-08-28 12:29:36','2021-08-28 12:29:36',NULL),('items','title',124,'en','',441,'2021-08-28 12:33:09','2021-08-28 12:33:09',NULL),('items','description',124,'en','',442,'2021-08-28 12:33:09','2021-08-28 12:33:09',NULL),('items','title',125,'en','',443,'2021-08-28 12:34:36','2021-08-28 12:34:36',NULL),('items','description',125,'en','',444,'2021-08-28 12:34:36','2021-08-28 12:34:36',NULL),('items','title',126,'en','',445,'2021-08-28 12:39:13','2021-08-28 12:39:13',NULL),('items','description',126,'en','',446,'2021-08-28 12:39:13','2021-08-28 12:39:13',NULL),('items','title',127,'en','',447,'2021-08-28 12:43:53','2021-08-28 12:43:53',NULL),('items','description',127,'en','',448,'2021-08-28 12:43:53','2021-08-28 12:43:53',NULL),('items','title',128,'en','',449,'2021-08-29 10:28:16','2021-08-29 10:28:16',NULL),('items','description',128,'en','',450,'2021-08-29 10:28:16','2021-08-29 10:28:16',NULL),('items','title',129,'en','',451,'2021-08-29 10:39:03','2021-08-29 10:40:45',NULL),('items','description',129,'en','',452,'2021-08-29 10:39:03','2021-08-29 10:40:45',NULL),('items','title',130,'en','',453,'2021-08-29 10:48:43','2021-08-29 10:48:43',NULL),('items','description',130,'en','',454,'2021-08-29 10:48:43','2021-08-29 10:48:43',NULL),('items','title',131,'en','',455,'2021-08-29 11:02:35','2021-08-29 11:02:53',NULL),('items','description',131,'en','',456,'2021-08-29 11:02:35','2021-08-29 11:02:53',NULL),('items','title',132,'en','',457,'2021-08-29 11:06:00','2021-08-29 11:06:00',NULL),('items','description',132,'en','',458,'2021-08-29 11:06:00','2021-08-29 11:06:00',NULL),('items','title',133,'en','',459,'2021-08-29 11:10:16','2021-08-29 11:10:16',NULL),('items','description',133,'en','',460,'2021-08-29 11:10:16','2021-08-29 11:10:16',NULL),('items','title',134,'en','',461,'2021-08-29 11:16:44','2021-08-29 11:16:44',NULL),('items','description',134,'en','',462,'2021-08-29 11:16:44','2021-08-29 11:16:44',NULL),('items','title',135,'en','',463,'2021-08-29 11:33:45','2021-08-29 11:33:45',NULL),('items','description',135,'en','',464,'2021-08-29 11:33:45','2021-08-29 11:33:45',NULL),('items','title',136,'en','',465,'2021-08-29 11:37:32','2021-08-29 11:37:32',NULL),('items','description',136,'en','',466,'2021-08-29 11:37:32','2021-08-29 11:37:32',NULL),('items','title',137,'en','',467,'2021-08-29 11:40:15','2021-08-29 11:40:15',NULL),('items','description',137,'en','',468,'2021-08-29 11:40:15','2021-08-29 11:40:15',NULL),('items','title',138,'en','',469,'2021-08-29 11:43:53','2021-08-29 11:43:53',NULL),('items','description',138,'en','',470,'2021-08-29 11:43:53','2021-08-29 11:43:53',NULL),('items','title',139,'en','',471,'2021-08-29 11:50:33','2021-08-29 11:50:33',NULL),('items','description',139,'en','',472,'2021-08-29 11:50:33','2021-08-29 11:50:33',NULL),('items','title',140,'en','',473,'2021-08-29 12:44:03','2021-08-29 12:55:39',NULL),('items','description',140,'en','',474,'2021-08-29 12:44:03','2021-08-29 12:55:39',NULL),('items','title',141,'en','',475,'2021-08-29 12:59:10','2021-08-29 12:59:10',NULL),('items','description',141,'en','',476,'2021-08-29 12:59:10','2021-08-29 12:59:10',NULL),('items','title',142,'en','',477,'2021-08-30 09:15:23','2021-08-30 09:15:23',NULL),('items','description',142,'en','',478,'2021-08-30 09:15:23','2021-08-30 09:15:23',NULL),('items','title',143,'en','',479,'2021-08-30 09:17:29','2021-08-30 09:17:29',NULL),('items','description',143,'en','',480,'2021-08-30 09:17:29','2021-08-30 09:17:29',NULL),('items','title',144,'en','',481,'2021-08-30 11:08:51','2021-08-30 11:08:51',NULL),('items','description',144,'en','',482,'2021-08-30 11:08:51','2021-08-30 11:08:51',NULL),('items','title',145,'en','',483,'2021-08-30 11:13:42','2021-08-30 11:13:42',NULL),('items','description',145,'en','',484,'2021-08-30 11:13:42','2021-08-30 11:13:42',NULL),('items','title',146,'en','',485,'2021-08-30 11:17:21','2021-08-30 11:17:21',NULL),('items','description',146,'en','',486,'2021-08-30 11:17:21','2021-08-30 11:17:21',NULL),('items','title',147,'en','',487,'2021-08-30 11:20:24','2021-08-30 11:20:24',NULL),('items','description',147,'en','',488,'2021-08-30 11:20:24','2021-08-30 11:20:24',NULL),('items','title',148,'en','',489,'2021-08-30 11:23:13','2021-08-30 11:23:13',NULL),('items','description',148,'en','',490,'2021-08-30 11:23:13','2021-08-30 11:23:13',NULL),('items','title',149,'en','',491,'2021-08-30 11:56:50','2021-08-30 11:56:50',NULL),('items','description',149,'en','',492,'2021-08-30 11:56:50','2021-08-30 11:56:50',NULL),('items','title',150,'en','',493,'2021-08-30 12:14:08','2021-08-30 12:46:28',NULL),('items','description',150,'en','',494,'2021-08-30 12:14:08','2021-08-30 12:46:28',NULL),('items','title',151,'en','',495,'2021-08-30 12:16:20','2021-08-30 12:46:18',NULL),('items','description',151,'en','',496,'2021-08-30 12:16:20','2021-08-30 12:46:18',NULL),('items','title',152,'en','',497,'2021-08-30 12:18:01','2021-08-30 12:44:31',NULL),('items','description',152,'en','',498,'2021-08-30 12:18:01','2021-08-30 12:44:31',NULL),('items','title',153,'en','',499,'2021-08-30 12:25:37','2021-08-30 12:25:37',NULL),('items','description',153,'en','',500,'2021-08-30 12:25:37','2021-08-30 12:25:37',NULL),('items','title',154,'en','',501,'2021-08-30 12:30:15','2021-08-30 12:31:13',NULL),('items','description',154,'en','',502,'2021-08-30 12:30:15','2021-08-30 12:31:13',NULL),('items','title',155,'en','',503,'2021-08-30 12:43:16','2021-08-30 12:43:16',NULL),('items','description',155,'en','',504,'2021-08-30 12:43:16','2021-08-30 12:43:16',NULL),('items','title',156,'en','',505,'2021-08-30 12:50:54','2021-08-30 12:50:54',NULL),('items','description',156,'en','',506,'2021-08-30 12:50:54','2021-08-30 12:50:54',NULL),('items','title',157,'en','',507,'2021-08-30 13:14:17','2021-08-30 13:14:17',NULL),('items','description',157,'en','',508,'2021-08-30 13:14:17','2021-08-30 13:14:17',NULL),('items','title',158,'en','',509,'2021-08-30 13:17:05','2021-08-30 13:17:05',NULL),('items','description',158,'en','',510,'2021-08-30 13:17:05','2021-08-30 13:17:05',NULL),('items','title',159,'en','',511,'2021-08-30 13:19:19','2021-08-30 13:19:19',NULL),('items','description',159,'en','',512,'2021-08-30 13:19:19','2021-08-30 13:19:19',NULL),('items','title',160,'en','',513,'2021-08-30 13:20:45','2021-08-30 13:20:45',NULL),('items','description',160,'en','',514,'2021-08-30 13:20:45','2021-08-30 13:20:45',NULL),('items','title',161,'en','',515,'2021-08-30 13:22:00','2021-08-30 13:22:00',NULL),('items','description',161,'en','',516,'2021-08-30 13:22:00','2021-08-30 13:22:00',NULL),('items','title',162,'en','',517,'2021-08-31 12:38:07','2021-08-31 12:41:04',NULL),('items','description',162,'en','',518,'2021-08-31 12:38:07','2021-08-31 12:41:04',NULL),('items','title',163,'en','',519,'2021-08-31 12:40:49','2021-08-31 12:40:49',NULL),('items','description',163,'en','',520,'2021-08-31 12:40:49','2021-08-31 12:40:49',NULL),('items','title',164,'en','',521,'2021-08-31 12:52:02','2021-08-31 12:52:02',NULL),('items','description',164,'en','',522,'2021-08-31 12:52:02','2021-08-31 12:52:02',NULL),('items','title',165,'en','',523,'2021-08-31 12:59:10','2021-08-31 12:59:10',NULL),('items','description',165,'en','',524,'2021-08-31 12:59:10','2021-08-31 12:59:10',NULL),('items','title',166,'en','',525,'2021-08-31 13:06:11','2021-08-31 13:06:11',NULL),('items','description',166,'en','',526,'2021-08-31 13:06:11','2021-08-31 13:06:11',NULL),('items','title',167,'en','',527,'2021-08-31 13:07:29','2021-08-31 13:07:29',NULL),('items','description',167,'en','',528,'2021-08-31 13:07:29','2021-08-31 13:07:29',NULL),('items','title',168,'en','',529,'2021-08-31 13:10:08','2021-08-31 13:10:08',NULL),('items','description',168,'en','',530,'2021-08-31 13:10:08','2021-08-31 13:10:08',NULL),('items','title',169,'en','',531,'2021-08-31 13:14:04','2021-08-31 13:14:04',NULL),('items','description',169,'en','',532,'2021-08-31 13:14:04','2021-08-31 13:14:04',NULL),('items','title',170,'en','',533,'2021-08-31 13:16:22','2021-08-31 13:16:22',NULL),('items','description',170,'en','',534,'2021-08-31 13:16:22','2021-08-31 13:16:22',NULL),('items','title',171,'en','',535,'2021-08-31 13:20:05','2021-08-31 13:20:05',NULL),('items','description',171,'en','',536,'2021-08-31 13:20:05','2021-08-31 13:20:05',NULL),('items','title',172,'en','',537,'2021-08-31 13:29:00','2021-08-31 13:29:00',NULL),('items','description',172,'en','',538,'2021-08-31 13:29:00','2021-08-31 13:29:00',NULL),('items','title',173,'en','',539,'2021-08-31 13:33:38','2021-08-31 13:33:38',NULL),('items','description',173,'en','',540,'2021-08-31 13:33:38','2021-08-31 13:33:38',NULL),('items','title',174,'en','',541,'2021-08-31 13:37:49','2021-08-31 13:37:49',NULL),('items','description',174,'en','',542,'2021-08-31 13:37:49','2021-08-31 13:37:49',NULL),('items','title',175,'en','',543,'2021-08-31 13:40:46','2021-08-31 13:40:46',NULL),('items','description',175,'en','',544,'2021-08-31 13:40:46','2021-08-31 13:40:46',NULL),('items','title',176,'en','',545,'2021-08-31 13:42:46','2021-08-31 13:42:46',NULL),('items','description',176,'en','',546,'2021-08-31 13:42:46','2021-08-31 13:42:46',NULL),('items','title',177,'en','',547,'2021-08-31 13:44:11','2021-08-31 13:44:11',NULL),('items','description',177,'en','',548,'2021-08-31 13:44:11','2021-08-31 13:44:11',NULL);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `roles_id` int(10) unsigned DEFAULT NULL,
  `points` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`),
  KEY `idx_users_deleted_at` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'2021-07-13 11:53:22','2021-07-14 09:47:15',NULL,'Admin','00962','$2a$10$uV1Scu6it4/WrqAeMpioL.yGAJtsvInMkigpKngvi1cxJjVb3kgZW',1,0),(2,'2021-07-13 19:18:01','2021-07-13 19:18:01',NULL,'Nasir Saheb','0795995995','$2a$10$iyd7nl5J31AeHpBrPCHABu/F84Bx13xZZ1kyOHblWYakLtff84OCK',0,0),(4,'2021-07-14 09:36:32','2021-07-14 13:40:19',NULL,'Nasir Saheb','795995995','$2a$10$lXGqWd8ZCkMOCvZkCiU78OQ9t.KKsSRhEjuO89iTAmcon4PcNXLaG',2,0),(5,'2021-07-14 09:37:32','2021-07-14 13:40:55',NULL,'Nashat Saheb','795112211','$2a$10$dtSVVtHYzwkLC78.LvDAMe4GQ9y56CWXbWjyKsy0vViNxhHItmE7C',3,0),(6,'2021-07-14 09:41:45','2021-08-09 12:25:30',NULL,'Haya Ramadan','798115838','$2a$10$fFfnjiYndX/d9X9h3myZH.Q.FVvGoKF2HHDOpTXk47Mzyr4rxqt3u',4,0),(7,'2021-07-14 09:45:48','2021-07-14 13:41:03',NULL,'Mokhles','796589966','$2a$10$Hp7plV8YmBsbTJjcFik1reC348dEnRy1LJuLach8eZ7CIPdbERO2q',5,0),(8,'2021-07-14 09:48:36','2021-07-14 09:48:36',NULL,'a','79','$2a$10$PxMdpPLtb6MMGbSBHq/KtOIQDdR2elJOhll25S0Dh30PUGRCrIrfy',9,0),(9,'2021-07-14 13:57:01','2021-07-14 13:57:01',NULL,'Hayaramadan','0798115838','$2a$10$w5L6y2dOIw8YjRBQuG0bcOSZky0w.KlP/NDOogv02s2dmTH2ldz42',0,0),(10,'2021-08-28 08:25:29','2021-08-28 08:25:29',NULL,'بلقيس','0775688962','$2a$10$YkaRVF1wngRrQvBUMgQuK.M/2h4IF4.0XLchuxiwUCZfeVV7YB//2',0,0),(15,'2021-08-28 15:56:42','2021-08-28 15:56:42',NULL,'ريم','0775651412','$2a$10$5L7F1xvMLWozCOcnv.QlLuPAeULHF6fuQmqTkYHJ43pU6jhilstju',0,0);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-31 21:00:45
