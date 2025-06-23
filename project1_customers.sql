-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: project1
-- ------------------------------------------------------
-- Server version	8.0.39

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
  `customer_id` int NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `location` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Sneha Verma','F',44,'Ahmedabad','2025-01-06'),(2,'Amit Kapoor','F',34,'Pune','2024-12-29'),(3,'Sneha Kapoor','F',35,'Ahmedabad','2024-12-30'),(4,'Neha Bansal','F',22,'Mumbai','2025-05-09'),(5,'Isha Joshi','M',36,'Chennai','2024-08-19'),(6,'Rahul Kapoor','M',41,'Delhi','2024-12-17'),(7,'Amit Joshi','F',35,'Ahmedabad','2025-02-18'),(8,'Nikhil Kapoor','F',23,'Delhi','2024-07-05'),(9,'Sneha Sharma','M',20,'Mumbai','2025-02-27'),(10,'Nikhil Verma','M',27,'Pune','2024-11-22'),(11,'Neha Sharma','M',43,'Hyderabad','2024-08-20'),(12,'Manav Bansal','F',44,'Hyderabad','2024-08-05'),(13,'Amit Sharma','F',32,'Pune','2024-08-16'),(14,'Rahul Verma','M',28,'Pune','2025-02-23'),(15,'Amit Sharma','M',41,'Pune','2024-07-16'),(16,'Neha Verma','F',21,'Pune','2025-05-04'),(17,'Karan Kapoor','M',29,'Mumbai','2025-04-09'),(18,'Karan Joshi','M',45,'Kolkata','2024-06-30'),(19,'Manav Kapoor','M',36,'Bangalore','2025-05-09'),(20,'Riya Kapoor','F',32,'Chennai','2024-06-30'),(21,'Riya Bansal','M',20,'Mumbai','2024-09-01'),(22,'Karan Verma','F',41,'Pune','2024-09-02'),(23,'Karan Joshi','F',21,'Delhi','2024-11-28'),(24,'Deepa Sharma','M',40,'Hyderabad','2025-02-15'),(25,'Priya Kapoor','M',22,'Mumbai','2024-09-23'),(26,'Riya Bansal','F',27,'Pune','2024-07-23'),(27,'Rahul Kapoor','M',43,'Hyderabad','2024-08-27'),(28,'Sneha Kapoor','M',24,'Delhi','2025-04-28'),(29,'Sneha Joshi','F',26,'Delhi','2024-10-06'),(30,'Rahul Joshi','F',42,'Mumbai','2024-10-15'),(31,'Neha Kapoor','F',42,'Pune','2024-07-23'),(32,'Rahul Verma','F',30,'Delhi','2024-07-16'),(33,'Manav Bansal','M',36,'Ahmedabad','2025-01-30'),(34,'Sneha Joshi','F',29,'Mumbai','2024-12-22'),(35,'Nikhil Verma','F',30,'Pune','2024-09-02'),(36,'Nikhil Joshi','M',42,'Kolkata','2024-12-12'),(37,'Riya Bansal','M',32,'Delhi','2024-09-28'),(38,'Sneha Sharma','M',27,'Delhi','2025-05-20'),(39,'Deepa Joshi','F',28,'Ahmedabad','2024-11-14'),(40,'Isha Verma','F',33,'Hyderabad','2024-07-29'),(41,'Nikhil Kapoor','M',39,'Pune','2024-07-14'),(42,'Manav Sharma','M',35,'Chennai','2024-11-09'),(43,'Deepa Verma','F',24,'Bangalore','2024-11-20'),(44,'Riya Verma','F',37,'Mumbai','2024-08-11'),(45,'Priya Joshi','F',25,'Kolkata','2025-02-20'),(46,'Kapil Bansal','M',31,'Ahmedabad','2025-05-07'),(47,'Kapil Verma','M',30,'Mumbai','2025-03-21'),(48,'Sneha Kapoor','F',40,'Delhi','2024-07-17'),(49,'Kapil Sharma','M',41,'Bangalore','2024-10-26'),(50,'Priya Bansal','F',38,'Pune','2024-08-13');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-23 19:02:16
