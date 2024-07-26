-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: clappv3
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (10,'bharathi','2024-06-03 08:59:24','2024-06-03 08:59:24'),(11,'bharu','2024-06-03 08:59:28','2024-06-03 08:59:28'),(12,'barathimohan','2024-06-03 08:59:36','2024-06-03 08:59:36'),(13,'newly added','2024-06-03 09:36:59','2024-06-03 09:36:59'),(14,'red','2024-06-03 09:40:17','2024-06-03 09:40:17'),(15,'think','2024-06-03 09:40:37','2024-06-03 09:40:37'),(16,'do','2024-06-03 09:40:55','2024-06-03 09:40:55'),(17,'do','2024-06-04 10:40:49','2024-06-04 10:40:49'),(18,'thinker','2024-06-04 10:42:16','2024-06-04 10:42:16'),(19,'testing','2024-06-05 11:07:33','2024-06-05 11:07:33'),(20,'bharathi mohan','2024-06-07 06:20:30','2024-06-07 06:20:30');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamicselects`
--

DROP TABLE IF EXISTS `dynamicselects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dynamicselects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `label` varchar(255) NOT NULL,
  `options` json NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamicselects`
--

LOCK TABLES `dynamicselects` WRITE;
/*!40000 ALTER TABLE `dynamicselects` DISABLE KEYS */;
/*!40000 ALTER TABLE `dynamicselects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enginetypes`
--

DROP TABLE IF EXISTS `enginetypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enginetypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enginetypes`
--

LOCK TABLES `enginetypes` WRITE;
/*!40000 ALTER TABLE `enginetypes` DISABLE KEYS */;
INSERT INTO `enginetypes` VALUES (2,'engine type 2','2024-05-27 06:01:57','2024-05-27 06:02:12'),(6,'redddd','2024-06-05 04:30:53','2024-06-05 04:30:53');
/*!40000 ALTER TABLE `enginetypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formallocations`
--

DROP TABLE IF EXISTS `formallocations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formallocations` (
  `id` int NOT NULL AUTO_INCREMENT,
  `teamId` int NOT NULL,
  `projectId` int NOT NULL,
  `formId` int NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `teamId` (`teamId`),
  KEY `projectId` (`projectId`),
  KEY `formId` (`formId`),
  CONSTRAINT `formallocations_ibfk_1` FOREIGN KEY (`teamId`) REFERENCES `team` (`id`) ON DELETE CASCADE,
  CONSTRAINT `formallocations_ibfk_2` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  CONSTRAINT `formallocations_ibfk_3` FOREIGN KEY (`formId`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formallocations`
--

LOCK TABLES `formallocations` WRITE;
/*!40000 ALTER TABLE `formallocations` DISABLE KEYS */;
/*!40000 ALTER TABLE `formallocations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formdefinitions`
--

DROP TABLE IF EXISTS `formdefinitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formdefinitions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `formName` varchar(255) NOT NULL,
  `fields` json NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formdefinitions`
--

LOCK TABLES `formdefinitions` WRITE;
/*!40000 ALTER TABLE `formdefinitions` DISABLE KEYS */;
INSERT INTO `formdefinitions` VALUES (1,'Sample dummy Form new updated','[{\"name\": \"Name\", \"type\": \"text\", \"required\": true}, {\"name\": \"Email\", \"type\": \"email\", \"required\": true}, {\"name\": \"Age\", \"type\": \"number\", \"required\": false}, {\"name\": \"DOB\", \"type\": \"date\", \"required\": false}]','2024-05-23 08:53:04','2024-05-23 08:53:54'),(2,'Sample dummy Form','[{\"name\": \"Name\", \"type\": \"text\", \"required\": true}, {\"name\": \"Email\", \"type\": \"email\", \"required\": true}, {\"name\": \"Age\", \"type\": \"number\", \"required\": false}]','2024-05-31 06:10:07','2024-05-31 06:10:07');
/*!40000 ALTER TABLE `formdefinitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forms`
--

DROP TABLE IF EXISTS `forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `userId` int DEFAULT NULL,
  `fields` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms`
--

LOCK TABLES `forms` WRITE;
/*!40000 ALTER TABLE `forms` DISABLE KEYS */;
INSERT INTO `forms` VALUES (19,'bio data','datails about your self','2024-06-13 05:58:26','2024-06-13 06:01:13',18,'[{\"type\": \"text\", \"label\": \"name\"}, {\"type\": \"number\", \"label\": \"number\"}, {\"type\": \"radio\", \"label\": \"gender\", \"options\": [\"male\", \"female\", \"others\"]}, {\"type\": \"checkbox\", \"label\": \"qualification\", \"options\": [\"UG\", \"PG\", \"10th / 12th / Dip\", \"Phd\", \"Others\"]}, {\"type\": \"file\", \"label\": \"CV\"}, {\"type\": \"file\", \"label\": \"Profile\"}, {\"type\": \"select\", \"label\": \"State\", \"options\": [\"Tamilnadu\", \"Kerala\", \"Andra\"]}, {\"type\": \"textarea\", \"label\": \"Describe Your self\"}, {\"type\": \"date\", \"label\": \"Date of Birth\"}, {\"type\": \"time\", \"label\": \"Prefered time for interview\"}]');
/*!40000 ALTER TABLE `forms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fueltypes`
--

DROP TABLE IF EXISTS `fueltypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fueltypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fueltypes`
--

LOCK TABLES `fueltypes` WRITE;
/*!40000 ALTER TABLE `fueltypes` DISABLE KEYS */;
INSERT INTO `fueltypes` VALUES (2,'rer','2024-06-05 04:31:09','2024-06-05 04:31:09'),(5,'4rw','2024-06-05 06:16:43','2024-06-05 06:16:43');
/*!40000 ALTER TABLE `fueltypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumentallocation`
--

DROP TABLE IF EXISTS `instrumentallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrumentallocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectId` int NOT NULL,
  `vehicle` json NOT NULL,
  `fromDate` date NOT NULL,
  `toDate` date NOT NULL,
  `modelData` json NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumentallocation`
--

LOCK TABLES `instrumentallocation` WRITE;
/*!40000 ALTER TABLE `instrumentallocation` DISABLE KEYS */;
INSERT INTO `instrumentallocation` VALUES (15,11,'{\"id\": 4, \"vinNumber\": \"rwerwe\"}','2024-06-01','2024-06-15','{\"red\": \"paithiyam\", \"redd\": \"re\"}','2024-06-07 05:50:39','2024-06-07 12:25:51'),(16,11,'{\"id\": 4, \"vinNumber\": \"rwerwe\"}','2024-06-04','2024-06-28','{\"red\": \"booost\", \"redd\": \"123123\"}','2024-06-07 05:51:44','2024-06-07 12:25:40');
/*!40000 ALTER TABLE `instrumentallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instruments`
--

DROP TABLE IF EXISTS `instruments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instruments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `instrumentName` varchar(255) NOT NULL,
  `instrumentType` json NOT NULL,
  `instrumentCode` varchar(255) NOT NULL,
  `capcpCode` varchar(255) DEFAULT NULL,
  `calibrationDate` date NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` enum('allocated','unallocated') NOT NULL DEFAULT 'unallocated',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instruments`
--

LOCK TABLES `instruments` WRITE;
/*!40000 ALTER TABLE `instruments` DISABLE KEYS */;
INSERT INTO `instruments` VALUES (17,'watches','{\"id\": 1, \"name\": \"red\"}','GTR123','CAPCP-ASSET-00017','2023-05-01',0,'2024-06-04 11:27:38','2024-06-07 05:50:40','allocated'),(19,'zonee','{\"id\": 3, \"name\": \"redd\"}','codeex','CAPCP-ASSET-00019','2024-07-01',1,'2024-06-04 12:30:40','2024-06-07 05:45:54','allocated');
/*!40000 ALTER TABLE `instruments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `instrumenttypes`
--

DROP TABLE IF EXISTS `instrumenttypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `instrumenttypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `instrumenttypes`
--

LOCK TABLES `instrumenttypes` WRITE;
/*!40000 ALTER TABLE `instrumenttypes` DISABLE KEYS */;
INSERT INTO `instrumenttypes` VALUES (1,'red','2024-06-04 11:17:17','2024-06-04 11:17:17'),(2,'red','2024-06-04 11:20:29','2024-06-04 11:20:29'),(3,'redd','2024-06-04 11:22:59','2024-06-04 11:22:59'),(4,'bharu','2024-06-04 11:25:40','2024-06-04 11:25:40'),(5,'adda','2024-06-04 11:46:36','2024-06-04 11:46:36'),(6,'addada','2024-06-04 11:46:49','2024-06-04 11:46:49'),(7,'zone','2024-06-04 12:30:27','2024-06-04 12:30:27'),(8,'something','2024-06-04 12:31:41','2024-06-04 12:31:41');
/*!40000 ALTER TABLE `instrumenttypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `part`
--

DROP TABLE IF EXISTS `part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `part` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `part`
--

LOCK TABLES `part` WRITE;
/*!40000 ALTER TABLE `part` DISABLE KEYS */;
INSERT INTO `part` VALUES (1,'{\"name\": \"Parent Node\", \"children\": [{\"name\": \"Child Node 1\"}, {\"name\": \"Child Node 2\", \"children\": [{\"name\": \"Grandchild Node 1\"}, {\"name\": \"Grandchild Node 2\"}, {\"name\": \"Grandchild Node 3\"}, {\"name\": \"Grandchild Node 4\"}]}]}'),(3,'{\"name\": \"Parent Node\", \"children\": [{\"name\": \"Child Node 1\"}, {\"name\": \"Child Node 2\", \"children\": [{\"name\": \"Grandchild Node 1\"}, {\"name\": \"Grandchild Node 2\"}]}]}'),(4,'{\"name\": \"Parent Node\", \"children\": [{\"name\": \"Child Node 1\"}, {\"name\": \"Child Node 2\", \"children\": [{\"name\": \"Grandchild Node 1\"}, {\"name\": \"Grandchild Node 2\"}]}]}');
/*!40000 ALTER TABLE `part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` int NOT NULL AUTO_INCREMENT,
  `projectname` varchar(255) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `customer` json NOT NULL,
  `actualplanned` int NOT NULL,
  `cityplanned` int NOT NULL,
  `highplanned` int NOT NULL,
  `hillplanned` int NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phases` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (11,'bharathi','2023-02-01','2023-11-30','{\"id\": 11, \"name\": \"bharu\"}',1111,222,33333,44444,'2024-06-05 11:14:32','2024-06-06 05:09:40','[{\"endDate\": \"2023-11-30\", \"vehicle\": [], \"plannedKM\": 1111, \"startDate\": \"2023-02-01\"}, {\"endDate\": \"2024-06-01\", \"remarks\": \"111hh\", \"vehicle\": [{\"id\": 4, \"endDate\": \"2025-06-01\", \"startDate\": \"2024-06-01\", \"vinNumber\": \"rwerwe\", \"cityPlannedKM\": \"222\", \"hillPlannedKM\": \"33422\", \"highwayPlannedKM\": \"2322\"}], \"plannedKM\": \"234\", \"startDate\": \"2024-06-01\"}]'),(12,'new','2025-06-01','2025-06-29','{\"id\": 20, \"name\": \"bharathi mohan\"}',111,222,2333,4444,'2024-06-07 06:20:41','2024-06-07 06:21:22','[{\"endDate\": \"2025-06-29\", \"vehicle\": [], \"plannedKM\": 111, \"startDate\": \"2025-06-01\"}, {\"endDate\": \"2025-06-21\", \"remarks\": \"read\", \"vehicle\": [{\"id\": 6, \"endDate\": \"2024-06-30\", \"startDate\": \"2025-06-27\", \"vinNumber\": \"NEW1231\", \"cityPlannedKM\": \"222\", \"hillPlannedKM\": \"444\", \"highwayPlannedKM\": \"333\"}], \"plannedKM\": \"111\", \"startDate\": \"2025-06-14\"}]');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `question` varchar(255) NOT NULL,
  `type` varchar(50) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `formId` (`formId`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`formId`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responses`
--

DROP TABLE IF EXISTS `responses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `responses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `questionId` int NOT NULL,
  `response` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `formId` (`formId`),
  KEY `questionId` (`questionId`),
  CONSTRAINT `responses_ibfk_1` FOREIGN KEY (`formId`) REFERENCES `forms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `responses_ibfk_2` FOREIGN KEY (`questionId`) REFERENCES `questions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responses`
--

LOCK TABLES `responses` WRITE;
/*!40000 ALTER TABLE `responses` DISABLE KEYS */;
/*!40000 ALTER TABLE `responses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `routes`
--

DROP TABLE IF EXISTS `routes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `routes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `from` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `hillKM` float NOT NULL,
  `highwayKM` float NOT NULL,
  `cityKM` float NOT NULL,
  `totalKM` float GENERATED ALWAYS AS (((`hillKM` + `highwayKM`) + `cityKM`)) STORED,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `routes`
--

LOCK TABLES `routes` WRITE;
/*!40000 ALTER TABLE `routes` DISABLE KEYS */;
INSERT INTO `routes` (`id`, `from`, `to`, `hillKM`, `highwayKM`, `cityKM`, `createdAt`, `updatedAt`) VALUES (2,'City C','City D',50.5,100.2,30.3,'2024-05-23 04:53:01','2024-05-23 04:54:37');
/*!40000 ALTER TABLE `routes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `submissions`
--

DROP TABLE IF EXISTS `submissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `submissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `formId` int NOT NULL,
  `responses` json NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `submittedBy` int NOT NULL,
  `forWhom` int NOT NULL,
  `vehicleNumber` varchar(255) DEFAULT NULL,
  `authorizationStatus` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `authorizationBy` int DEFAULT NULL,
  `authorizationAt` datetime DEFAULT NULL,
  `approvalStatus` enum('Pending','Approved','Rejected') DEFAULT 'Pending',
  `approvalBy` int DEFAULT NULL,
  `approvalAt` datetime DEFAULT NULL,
  `submittedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `engineer` int DEFAULT NULL,
  `vehicleModel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `formId` (`formId`),
  CONSTRAINT `submissions_ibfk_1` FOREIGN KEY (`formId`) REFERENCES `forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `submissions`
--

LOCK TABLES `submissions` WRITE;
/*!40000 ALTER TABLE `submissions` DISABLE KEYS */;
INSERT INTO `submissions` VALUES (71,19,'{\"name\": \"bharathi\", \"State\": \"\", \"gender\": \"female\", \"number\": \"9361323572\", \"Date of Birth\": \"2000-02-03\", \"qualification\": [\"UG\"], \"Describe Your self\": \"Testing dawww\", \"Prefered time for interview\": \"08:30:00 GMT+0530 (India Standard Time)\"}','2024-06-13 06:03:47','2024-06-13 06:32:35',18,18,'rwerwe','Approved',NULL,NULL,'Pending',NULL,NULL,'2024-06-13 06:03:47',12,'reddddddddd'),(72,19,'{\"name\": \"Rathna\", \"State\": \"Kerala\", \"gender\": \"female\", \"number\": \"9874563210\", \"Date of Birth\": \"2000-02-03\", \"qualification\": [\"PG\", \"10th / 12th / Dip\", \"UG\"], \"Describe Your self\": \"testtterr\", \"Prefered time for interview\": \"17:30:00 GMT+0530 (India Standard Time)\"}','2024-06-13 06:09:32','2024-06-13 06:33:58',18,1,'NEW1231','Approved',NULL,NULL,'Pending',NULL,NULL,'2024-06-13 06:09:32',12,'Fortuner'),(73,19,'{\"CV\": \"uploads\\\\1718263141630-Task for graphics design.xlsx\", \"name\": \"unique\", \"State\": \"Tamilnadu\", \"gender\": \"female\", \"number\": \"9874563210\", \"Profile\": \"uploads\\\\1718263011140-Can We Count on you as a friend ð.jpg\", \"Date of Birth\": \"2000-01-02\", \"qualification\": [\"PG\", \"10th / 12th / Dip\"], \"Describe Your self\": \"Described my self\", \"Prefered time for interview\": \"14:30:00 GMT+0530 (India Standard Time)\"}','2024-06-13 06:36:39','2024-06-13 07:19:01',18,1,'rwerwe','Approved',18,'2024-06-13 07:19:01','Pending',NULL,NULL,'2024-06-13 06:36:39',12,'reddddddddd'),(74,19,'{\"CV\": \"uploads\\\\1718358270788-When We Forgive, We Heal.jpg\", \"name\": \"dsfdsf\", \"State\": \"Tamilnadu\", \"gender\": \"female\", \"number\": \"345353\", \"Profile\": \"uploads\\\\1718358270793-RBI COMPLAINT.pdf\", \"Date of Birth\": \"7897-09-08\", \"qualification\": [\"UG\", \"PG\"], \"Describe Your self\": \"2343\", \"Prefered time for interview\": \"04:30:00 GMT+0530 (India Standard Time)\"}','2024-06-14 09:44:30','2024-06-14 09:44:46',18,1,'rwerwe','Approved',18,'2024-06-14 09:44:46','Pending',NULL,NULL,'2024-06-14 09:44:30',12,'reddddddddd');
/*!40000 ALTER TABLE `submissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'IT TEAM','active','2024-06-01 16:34:36','2024-06-01 16:34:36'),(3,'Marketing Teama','active','2024-06-01 16:34:36','2024-06-01 16:34:36'),(4,'Marketing Teama','active','2024-06-01 16:34:36','2024-06-01 16:34:36'),(5,'ghgh','active','2024-06-01 16:34:36','2024-06-01 16:34:36'),(6,'ghgh','active','2024-06-01 16:34:36','2024-06-01 16:34:36'),(7,'new','active','2024-06-01 11:04:43','2024-06-01 11:04:43');
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transmissiontypes`
--

DROP TABLE IF EXISTS `transmissiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transmissiontypes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transmissiontypes`
--

LOCK TABLES `transmissiontypes` WRITE;
/*!40000 ALTER TABLE `transmissiontypes` DISABLE KEYS */;
INSERT INTO `transmissiontypes` VALUES (6,'tra','2024-06-05 05:11:28','2024-06-05 05:11:28'),(7,'dfsdf','2024-06-05 06:16:47','2024-06-05 06:16:47');
/*!40000 ALTER TABLE `transmissiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `userId` varchar(100) DEFAULT NULL,
  `project` json DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `team` json DEFAULT NULL,
  `forms` json DEFAULT NULL,
  `module` json DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` enum('allocated','unallocated') NOT NULL DEFAULT 'unallocated',
  `role` varchar(255) NOT NULL,
  `active` enum('active','inactive') NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'driver2','CAE000234',NULL,'$2a$10$H3k4jDAiDuWBYlGgCVq3NuJ8SujGg/pdu04D/RqMjWSck7p8ubtfu','{\"teamId\": \"1\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"]}','2024-05-29 10:02:42','allocated','driver','active'),(2,'driver1','CAE000234',NULL,'$2a$10$cGQmqYT6JTDr605x8M6jr.j6h/K.D/fx0IaZbxdpTIsFrPIWcTN3G','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:04:52','unallocated','','active'),(3,'engineer','CAE000234',NULL,'$2a$10$/BPYpkwzyNa4iQiCtU6Ky.rfl1wqBahM.5cGHHbfPuQeTWL8uhkJK','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:06:01','unallocated','','active'),(4,'super admin','CAE000234',NULL,'$2a$10$VMfGebLCECNcUDqtqxQDQ.f/rVGHzSntuE4HzAKF.Ojzoxims2YbW','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:06:18','unallocated','','active'),(5,'manager','CAE000234',NULL,'$2a$10$3I/PcTF96g2dZjInA1LZUuS/K2d3N31duE7m9hDKWa8QY7r.5EAFe','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:07:11','unallocated','','active'),(6,'manager','CAE000234',NULL,'$2a$10$WnMob.HVn8eJdSr4bOt.guNOXQqJd5R06QGFOrEzku7f8ttC5590C','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:11:22','unallocated','','active'),(7,'manager','CAE000234',NULL,'$2a$10$ak3UtQJMFsuc5AthkWu0zed4Jf8zAbxZ4vD0EWqikTPdryDNi/Odq','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 10:50:44','unallocated','manager','active'),(8,'admin','CAE000234',NULL,'$2a$10$mthF2UoLtFZCfb3ibTfos.nmVAqAM.I0Rjyka./QizltmFvZxZI0G','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-29 12:17:44','unallocated','manager','active'),(9,'admin','CAE000234',NULL,'$2a$10$iTbIgv3yac.xYUuEeWemDO.Yf3ugsEN2YC7xmVo24HwiWbk9IPFe2','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-30 05:16:25','unallocated','admin','active'),(10,'super admin','CAE000234',NULL,'$2a$10$CxmHgIPivrQ0xHU2QWn87.xP6iMzS62Rdd5YWL/E8yYJ0YvfXMfKm','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-30 05:16:39','unallocated','super admin','active'),(11,'driver1','CAE000234',NULL,'$2a$10$MUdMQTwTZBYMC7VZBWHoUuujUXnbHTC1fk4niwE2i.O4abKwO3CUK','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-30 05:17:27','allocated','Driver','active'),(12,'engineer','CAE000234',NULL,'$2a$10$Bzy2gaMuKNusjZxcMRUkdeC9XsleQ1V9hAv13Pf15r/9Nv0ca5XwG','{\"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"]}','2024-05-30 05:17:44','allocated','Engineer','active'),(13,'driver2','CAE000234',NULL,'$2a$10$sfwjlZUJqo4feQw.1BAQF.ptu6oLvBmXjvusDZJ7q4Tunr58hf9FO','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-30 05:17:57','unallocated','driver','active'),(14,'driver2','CAE000234',NULL,'$2a$10$WrBwsF/2ZVGj/qXW.vZZ3Ob1hMlacnwjWf9ixLt0Eg2hPi.8hywNu','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"], \"moduleId\": \"\"}','2024-05-30 07:06:32','unallocated','driver','active'),(15,'driver2','CAE000234',NULL,'$2a$10$QKkksCUEYduHzupzmd9g9Okcuhr/9Evzsx69BIgnZRIKmds/aq39C','{\"teamId\": \"1\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"users\", \"Monitoring\", \"Survey\"]}','2024-05-30 07:19:42','unallocated','driver','inactive'),(16,'driver2','CAE000234',NULL,'$2a$10$7Ps2dItKb5V6i6bQP8XAzebTq580xmQtM4xJrFjmpG3sb/aMmIsL2','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"Dash Board\", \"Monitoring\", \"Survey\"]}','2024-05-30 08:52:40','unallocated','driver','active'),(17,'bharathi','CAE0170',NULL,'$2a$10$1wCzu3g8mYBKRqZDZz85tun4ALh3YpS3p6Yc10l1dmD1cRDnUhwHy','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"\", \"Dash Board\", \"Project\", \"Project Plan\", \"Vehicle\", \"Intrumentation\", \"Parts\", \"Routes\", \"Teams\", \"Master List\", \"Monitoring\", \"Vehicle Allocation\", \"Intrument Allocation\", \"Form Creating\", \"Form Allocation\", \"Form Responses\", \"Authorization\", \"Approval\", \"User\", \"Overall Report\", \"Individual Report\"]}','2024-06-03 04:50:09','unallocated','Super Admin','active'),(18,'bharathi','ABC123',NULL,'$2a$10$cnaPHPnCbVRYFrOxtHKhceJiQ/6nI8QtvAT7j4jSbY1aWOP5oUYvW','{\"teamId\": \"\", \"teamName\": \"Concern Team\"}',NULL,'{\"modules\": [\"\", \"Dash Board\", \"Project\", \"Project Plan\", \"Vehicle\", \"Intrumentation\", \"Parts\", \"Routes\", \"Master List\", \"Teams\", \"Monitoring\", \"Vehicle Allocation\", \"Intrument Allocation\", \"Form Creating\", \"Form Allocation\", \"Form Responses\", \"Authorization\", \"Approval\", \"User\", \"Overall Report\", \"Individual Report\"]}','2024-06-06 10:46:11','unallocated','Driver','active');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicleallocation`
--

DROP TABLE IF EXISTS `vehicleallocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicleallocation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Driver1` json NOT NULL,
  `Driver2` json DEFAULT NULL,
  `Driver3` json DEFAULT NULL,
  `Engineer` json NOT NULL,
  `Route` json NOT NULL,
  `LoadPattern` varchar(255) NOT NULL,
  `FromDate` date NOT NULL,
  `ToDate` date NOT NULL,
  `Time` time NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `VINNumber` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicleallocation`
--

LOCK TABLES `vehicleallocation` WRITE;
/*!40000 ALTER TABLE `vehicleallocation` DISABLE KEYS */;
INSERT INTO `vehicleallocation` VALUES (28,'{\"id\": \"16\", \"name\": \"driver2\"}','{\"id\": \"16\", \"name\": \"driver2\"}',NULL,'{\"id\": 0, \"name\": \"\"}','{\"id\": \"2\", \"name\": \"City C-City D\"}','Driver Only','2025-06-01','2025-06-30','08:30:00','2024-06-07 10:38:34','2024-06-07 10:39:21','NEW1231'),(30,'{\"id\": \"11\", \"name\": \"driver1\"}','{\"id\": \"16\", \"name\": \"driver2\"}',NULL,'{\"id\": \"12\", \"name\": \"engineer\"}','{\"id\": \"2\", \"name\": \"City C-City D\"}','Full Load','2025-06-01','2025-06-29','07:30:00','2024-06-07 10:40:57','2024-06-07 10:40:57','NEW1231'),(31,'{\"id\": \"11\", \"name\": \"driver1\"}','{\"id\": \"1\", \"name\": \"driver2\"}',NULL,'{\"id\": \"12\", \"name\": \"engineer\"}','{\"id\": \"2\", \"name\": \"City C-City D\"}','Half Load','2024-06-01','2024-06-30','08:30:00','2024-06-07 11:47:09','2024-06-07 11:47:09','NEW1231');
/*!40000 ALTER TABLE `vehicleallocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicles`
--

DROP TABLE IF EXISTS `vehicles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vehicleBrand` varchar(255) NOT NULL,
  `vehicleModel` varchar(255) NOT NULL,
  `variant` varchar(255) NOT NULL,
  `registrationNumber` varchar(255) NOT NULL,
  `insuranceValidTill` date NOT NULL,
  `vinNumber` varchar(255) NOT NULL,
  `engineNum` varchar(255) NOT NULL,
  `transmissionNum` varchar(255) NOT NULL,
  `chassisNum` varchar(255) NOT NULL,
  `engineType` json NOT NULL,
  `engineCapacity` varchar(255) NOT NULL,
  `loadPattern` varchar(255) NOT NULL,
  `fastagID` varchar(255) NOT NULL,
  `fuelType` json NOT NULL,
  `transmissionType` json NOT NULL,
  `vehicleConfig` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `createdAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(255) NOT NULL DEFAULT 'unallocated',
  `projectId` int DEFAULT NULL,
  `phaseId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_Vehicles_Projects` (`projectId`),
  CONSTRAINT `FK_Vehicles_Projects` FOREIGN KEY (`projectId`) REFERENCES `projects` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicles`
--

LOCK TABLES `vehicles` WRITE;
/*!40000 ALTER TABLE `vehicles` DISABLE KEYS */;
INSERT INTO `vehicles` VALUES (4,'redddd','reddddddddd','redd','redddddd','2024-06-01','rwerwe','werwe','wer','rwer','{\"id\": 6, \"name\": \"redddd\"}','erwrw','Driver Only','rwrw','{\"id\": 5, \"name\": \"4rw\"}','{\"id\": 6, \"name\": \"tra\"}','tret',1,'2024-06-05 06:20:10','2024-06-06 05:09:40','allocated',11,2),(6,'Toyota','Fortuner','VX','AB1234','2025-05-27','NEW1231','ENG123','TR123','CH123','{\"id\": 1, \"name\": \"Diesel\"}','2.5L','4x4','FASTAG123','{\"id\": 1, \"name\": \"Petrol\"}','{\"id\": 1, \"name\": \"Petrol\"}','Standard',1,'2024-06-05 12:17:21','2024-06-07 06:21:22','unallocated',12,2);
/*!40000 ALTER TABLE `vehicles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-14 15:32:31
