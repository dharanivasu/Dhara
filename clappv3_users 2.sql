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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` json NOT NULL,
  `userName` varchar(100) NOT NULL,
  `project` json NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `team` json NOT NULL,
  `forms` json NOT NULL,
  `module` json NOT NULL,
  `created_at` date DEFAULT NULL,
  `userId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'{\"roleName\": \"admin\", \"permissions\": [\"read\", \"write\", \"delete\"]}','johndoe','{\"details\": \"Details about Project A\", \"projectId\": 1, \"projectName\": \"Project A\"}','$2a$10$ALuobtoR0N0jQcimj1oh..weteP44whaaCAH/GzegOeUGkuwnoXoO','{\"teamId\": 10, \"members\": [\"member1\", \"member2\"], \"teamName\": \"Team Alpha\"}','[{\"fields\": [\"field1\", \"field2\"], \"formId\": 101, \"formName\": \"Form A\"}, {\"fields\": [\"field3\", \"field4\"], \"formId\": 102, \"formName\": \"Form B\"}]','{\"features\": [\"feature1\", \"feature2\"], \"moduleId\": 202, \"moduleName\": \"Module X\"}','2024-05-22',NULL),(3,'{\"roleName\": \"admin\", \"permissions\": [\"read\", \"write\", \"delete\"]}','johndoe','{\"details\": \"Details about Project A\", \"projectId\": 1, \"projectName\": \"Project A\"}','$2a$10$Mt4R7nYLuX1spozWZgE4J.9JS6iNbHdasq6OfWcf92BuPB80Id8eS','{\"teamId\": 10, \"members\": [\"member1\", \"member2\"], \"teamName\": \"Team Alpha\"}','[{\"fields\": [\"field1\", \"field2\"], \"formId\": 101, \"formName\": \"Form A\"}, {\"fields\": [\"field3\", \"field4\"], \"formId\": 102, \"formName\": \"Form B\"}]','{\"features\": [\"feature1\", \"feature2\"], \"moduleId\": 202, \"moduleName\": \"Module X\"}','2024-05-22','USER123'),(4,'{\"roleName\": \"admin\"}','johndoe','{\"details\": \"Details about Project A\", \"projectId\": 1, \"projectName\": \"Project A\"}','$2a$10$HDO4meW/Hf96YXUtOzTC.ebsAWKWtWLqkQ5yqaKPyKPQMyv5RG.Ki','{\"teamId\": 10, \"members\": [\"member1\", \"member2\"], \"teamName\": \"Team Alpha\"}','[{\"fields\": [\"field1\", \"field2\"], \"formId\": 101, \"formName\": \"Form A\"}, {\"fields\": [\"field3\", \"field4\"], \"formId\": 102, \"formName\": \"Form B\"}]','{\"features\": [\"feature1\", \"feature2\"], \"moduleId\": 202, \"moduleName\": \"Module X\"}','2024-05-22','USER123'),(5,'{\"roleName\": \"admin\"}','johndoe','{\"projectId\": 1, \"projectName\": \"Project A\"}','$2a$10$eOcamnpn8/m9NF7soha0OODXFi2qkFNv14D7zOmNF2exAMlDUBEZa','{\"teamId\": 10, \"teamName\": \"Team Alpha\"}','[{\"formId\": 101, \"formName\": \"Form A\"}, {\"formId\": 102, \"formName\": \"Form B\"}]','{\"modules\": [\"feature1\", \"feature2\"], \"moduleId\": 202}','2024-05-22','USER123');
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

-- Dump completed on 2024-05-23 15:31:25
