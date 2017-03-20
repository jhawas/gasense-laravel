-- MySQL dump 10.13  Distrib 5.7.17, for Linux (x86_64)
--
-- Host: localhost    Database: homestead
-- ------------------------------------------------------
-- Server version	5.7.17-0ubuntu0.16.04.1

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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (59,'2014_10_12_000000_create_users_table',1),(60,'2014_10_12_100000_create_password_resets_table',1),(61,'2017_03_15_140320_create_skill_categories_table',1),(62,'2017_03_15_140338_create_skills_table',1),(63,'2017_03_15_155231_create_user_skill_rates_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skill_categories`
--

DROP TABLE IF EXISTS `skill_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skill_categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skill_categories`
--

LOCK TABLES `skill_categories` WRITE;
/*!40000 ALTER TABLE `skill_categories` DISABLE KEYS */;
INSERT INTO `skill_categories` VALUES (1,'Category 1','Category 1 description',0,NULL,NULL),(2,'Category 2','Category 2 description',0,NULL,NULL),(3,'Category 3','Category 3 description',0,NULL,NULL),(4,'Category 4','Category 4 description',0,NULL,NULL),(5,'Category 5','Category 5 description',0,NULL,NULL),(6,'Category 6','Category 6 description',0,NULL,NULL),(7,'Category 7','Category 7 description',0,NULL,NULL),(8,'Category 8','Category 8 description',0,NULL,NULL),(9,'Category 9','Category 9 description',0,NULL,NULL),(10,'Category 10','Category 10 description',0,NULL,NULL);
/*!40000 ALTER TABLE `skill_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills`
--

DROP TABLE IF EXISTS `skills`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill_category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills`
--

LOCK TABLES `skills` WRITE;
/*!40000 ALTER TABLE `skills` DISABLE KEYS */;
INSERT INTO `skills` VALUES (1,'skill 1','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,NULL,NULL),(2,'skill 2','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',1,NULL,NULL),(3,'skill 3','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',2,NULL,NULL),(4,'skill 4','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',6,NULL,NULL),(5,'skill 5','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',9,NULL,NULL),(6,'skill 6','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',3,NULL,NULL),(7,'skill 7','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',2,NULL,NULL),(8,'skill 8','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',5,NULL,NULL);
/*!40000 ALTER TABLE `skills` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_skill_rates`
--

DROP TABLE IF EXISTS `user_skill_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_skill_rates` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_skill_rates`
--

LOCK TABLES `user_skill_rates` WRITE;
/*!40000 ALTER TABLE `user_skill_rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_skill_rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `appartment_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps_lattitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gps_longhitude` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirmation_code` int(11) DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','admin','admin@gasense.com','$2y$10$KV0h4m0OqhXADjvL/YhCDeQ4vn3koX/1CMyswWweIpL566DGezHEe','Powlowski Group',NULL,'Ireland',NULL,NULL,'http://lorempixel.com/160/160/?79618',NULL,NULL,0,NULL,'admin','s5evn1QFvK',NULL,NULL),(2,'Lonny','Parisian','kamryn.parisian@berge.com','$2y$10$oDLZbAlM9dkeAoBisYU/BuhFjf.K5SDUXo3pcRfYPX.83MmNAwDD6','Ferry-Schneider',NULL,'United States of America',NULL,NULL,'http://lorempixel.com/160/160/?29854',NULL,NULL,0,NULL,'client','nkTOrVmlO2',NULL,NULL),(3,'Clemens','Wiegand','eloise.kunze@hotmail.com','$2y$10$yWDs4R5JvJ1KQxVgow88RuI6fN0hd.skUTQht4FD/38As7Jg6YVFi','Barrows-Botsford',NULL,'Somalia',NULL,NULL,'http://lorempixel.com/160/160/?95497',NULL,NULL,0,NULL,'technician','ZFNU7q8jJ0',NULL,NULL),(4,'Whitney','Funk','ujacobi@nikolaus.biz','$2y$10$jL9ccKuDbFMzSUspDNrGUOKFPeyu75An/OEgBGqrZGB0x9q/Jr/La','Kertzmann PLC',NULL,'Liberia',NULL,NULL,'http://lorempixel.com/160/160/?80919',NULL,NULL,0,NULL,'client','Z2Dz6KR0hu',NULL,NULL),(5,'Alverta','Fay','jdavis@hotmail.com','$2y$10$JOHZ./ZmyqZ571Nww4C2xu0bIeEAhyO9OI2lstRsuI.cjRafjtSoe','Homenick-Green',NULL,'United States of America',NULL,NULL,'http://lorempixel.com/160/160/?11964',NULL,NULL,0,NULL,'client','Ui4N58bB0D',NULL,NULL),(6,'Gina','Vandervort','freeda.streich@hirthe.com','$2y$10$fV.b/ZxF24GksIBn038ZleGviS281oN6K0c2LAJxG06.FLMMi8JBy','Krajcik, Gerhold and Dach',NULL,'Saudi Arabia',NULL,NULL,'http://lorempixel.com/160/160/?12438',NULL,NULL,0,NULL,'client','9Z6xmGQXGd',NULL,NULL),(7,'George','Herzog','kub.destiney@batz.net','$2y$10$xHAJ8YgnRmOeH23aiJYm5eU75YxAZ84YzCXWlOEC1UCvP9JIkuc.C','Barton-Farrell',NULL,'Tokelau',NULL,NULL,'http://lorempixel.com/160/160/?42154',NULL,NULL,0,NULL,'technician','8awyd8TkpV',NULL,NULL),(8,'Antonetta','Beahan','trantow.bertha@bergnaum.com','$2y$10$/bZ3KKNpNyq.xDobVk3edO8ueB6ZEqyI/zVIKBvrJA9bwECom1Ub2','Goodwin-Blick',NULL,'Eritrea',NULL,NULL,'http://lorempixel.com/160/160/?18356',NULL,NULL,0,NULL,'client','SyM3BWhGcb',NULL,NULL),(9,'Rosalinda','Wisoky','homenick.tabitha@yahoo.com','$2y$10$N17xaWM2Tgip3qCryw4PHeqfsih3QuzynwhDdsndx0hijWNnYgIBO','O\'Conner LLC',NULL,'Burundi',NULL,NULL,'http://lorempixel.com/160/160/?50498',NULL,NULL,0,NULL,'technician','1SvNw0oO06',NULL,NULL),(10,'Jaleel','Schultz','morar.taylor@parker.com','$2y$10$gMw4vq8kY5/52cJjYf/uhOGqKIh2Fdk4qqR/TjrbHyEjSNQg5gBMq','Waelchi Group',NULL,'Slovenia',NULL,NULL,'http://lorempixel.com/160/160/?91840',NULL,NULL,0,NULL,'client','Fw7oUP9k6o',NULL,NULL),(11,'Minerva','Klein','kerluke.elissa@rau.com','$2y$10$TIOtXPUbM5h4BwWt174msuqQmy9Qv.RgfqTtT8rn1I3AsDg3fbw0e','Hermann Group',NULL,'Cape Verde',NULL,NULL,'http://lorempixel.com/160/160/?37418',NULL,NULL,0,NULL,'client','zElnjXDYgn',NULL,NULL),(12,'Gaetano','Howe','rhett.raynor@abernathy.com','$2y$10$YwWojdVDJJxd03CXzlgnjeItfQ/7tLW/Huz84LpESM9hS23NcN6S.','Wunsch-Bauch',NULL,'Cape Verde',NULL,NULL,'http://lorempixel.com/160/160/?63566',NULL,NULL,0,NULL,'client','K2S8Gg8lhM',NULL,NULL),(13,'Guadalupe','Kuhlman','aniya.pollich@gmail.com','$2y$10$fNz0j5ryZO.n/JhOswUTPuk1lHhwZFA98Jscm/duw2211HpdwEz/u','Weimann Group',NULL,'Netherlands',NULL,NULL,'http://lorempixel.com/160/160/?74138',NULL,NULL,0,NULL,'technician','qrzH1Vlqm6',NULL,NULL),(14,'Trenton','Tremblay','garfield17@hotmail.com','$2y$10$cqZ35yHVXLr1zKXJpLl19.sJ5uSYnLQaJpbK.LJ5ihZFqC.hZBl9e','Graham, Weimann and Crona',NULL,'China',NULL,NULL,'http://lorempixel.com/160/160/?31289',NULL,NULL,0,NULL,'client','rfgkWdYOyi',NULL,NULL),(15,'Isaac','Abbott','bart.runolfsson@ledner.com','$2y$10$Mdlq6e2JfzyrqiiuEF8iPO9IeiDmoSuAgPU45LCggVthq8oFVWoaC','Kihn and Sons',NULL,'Tanzania',NULL,NULL,'http://lorempixel.com/160/160/?55175',NULL,NULL,0,NULL,'technician','mElmMzkJUo',NULL,NULL),(16,'Aubree','Kilback','zmacejkovic@hotmail.com','$2y$10$FOo5fOqJzIcypwnbA/82SuEDqGiIE.2CxH.e5pF7uSjClpbl2MsC.','Mills LLC',NULL,'Bosnia and Herzegovina',NULL,NULL,'http://lorempixel.com/160/160/?91134',NULL,NULL,0,NULL,'client','AhvY0BZMUK',NULL,NULL),(17,'Aileen','Emard','fern.nikolaus@hotmail.com','$2y$10$5Wc4etLM68De5nXHw.vlWOLtydjNtFEufT/qSOlo5z0K9L.RIqN9C','Braun-Steuber',NULL,'Malta',NULL,NULL,'http://lorempixel.com/160/160/?10299',NULL,NULL,0,NULL,'client','HCYNGVZFmL',NULL,NULL),(18,'Maynard','Rosenbaum','magnus29@yahoo.com','$2y$10$E6yrEH1ZS3xFjxL713lOieNvIcLQVhFcnn9B.bINjPAUPAU2OGTc.','Mraz, Lakin and Baumbach',NULL,'Latvia',NULL,NULL,'http://lorempixel.com/160/160/?20190',NULL,NULL,0,NULL,'client','n4mTDSplHk',NULL,NULL),(19,'Tomas','Farrell','anderson.bridgette@hills.biz','$2y$10$rBu2KQzxjo1njlPMWg582.Rr3xdn8ngBUNqWT9wNTA2KhUg.XQAXW','Hintz Group',NULL,'Samoa',NULL,NULL,'http://lorempixel.com/160/160/?80338',NULL,NULL,0,NULL,'technician','YverBXTD66',NULL,NULL),(20,'Kavon','Buckridge','braun.jordane@hotmail.com','$2y$10$pleXWnmG6xjycGgXPkvXOO9sqp9lq2v8YvHJBND2P9DnXM69Qi.Sy','Leffler-Kilback',NULL,'Ukraine',NULL,NULL,'http://lorempixel.com/160/160/?73196',NULL,NULL,0,NULL,'client','5DUalXIGAG',NULL,NULL);
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

-- Dump completed on 2017-03-20  9:51:29
