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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `status` enum('delivered','cancelled','returned') DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (201,33,'2025-06-09','Cash on Delivery','returned'),(202,13,'2025-06-16','UPI','returned'),(203,12,'2025-06-10','Credit Card','cancelled'),(204,3,'2025-06-05','Net Banking','cancelled'),(205,13,'2025-06-11','UPI','cancelled'),(206,45,'2025-06-03','Cash on Delivery','cancelled'),(207,17,'2025-06-01','Net Banking','cancelled'),(208,46,'2025-06-02','Cash on Delivery','returned'),(209,23,'2025-06-06','UPI','cancelled'),(210,2,'2025-06-20','Credit Card','cancelled'),(211,34,'2025-06-17','Wallet','cancelled'),(212,19,'2025-06-15','Wallet','delivered'),(213,4,'2025-06-05','Wallet','cancelled'),(214,24,'2025-06-06','Wallet','cancelled'),(215,34,'2025-06-09','Cash on Delivery','returned'),(216,38,'2025-06-08','Wallet','returned'),(217,47,'2025-06-18','Cash on Delivery','delivered'),(218,40,'2025-06-18','Net Banking','delivered'),(219,14,'2025-06-06','Net Banking','delivered'),(220,36,'2025-06-10','UPI','cancelled'),(221,25,'2025-06-21','Cash on Delivery','returned'),(222,48,'2025-06-19','Wallet','returned'),(223,10,'2025-06-07','UPI','returned'),(224,38,'2025-06-19','Cash on Delivery','cancelled'),(225,8,'2025-06-09','Cash on Delivery','delivered'),(226,22,'2025-06-03','UPI','cancelled'),(227,36,'2025-06-09','Wallet','delivered'),(228,6,'2025-06-12','Wallet','returned'),(229,23,'2025-06-07','Credit Card','delivered'),(230,27,'2025-06-12','Wallet','cancelled'),(231,47,'2025-06-05','UPI','cancelled'),(232,49,'2025-06-16','Cash on Delivery','cancelled'),(233,38,'2025-06-09','Net Banking','returned'),(234,48,'2025-06-07','Credit Card','returned'),(235,37,'2025-06-15','Net Banking','cancelled'),(236,39,'2025-06-09','Cash on Delivery','delivered'),(237,17,'2025-06-10','Net Banking','cancelled'),(238,43,'2025-06-11','Net Banking','returned'),(239,25,'2025-06-10','Net Banking','returned'),(240,7,'2025-06-11','Cash on Delivery','delivered'),(241,10,'2025-06-18','Wallet','cancelled'),(242,18,'2025-06-07','Cash on Delivery','returned'),(243,29,'2025-06-13','UPI','cancelled'),(244,11,'2025-06-03','Credit Card','cancelled'),(245,20,'2025-06-17','Credit Card','cancelled'),(246,26,'2025-06-11','UPI','delivered'),(247,21,'2025-06-16','Cash on Delivery','cancelled'),(248,44,'2025-06-19','UPI','delivered'),(249,15,'2025-06-05','Wallet','delivered'),(250,42,'2025-06-08','Credit Card','cancelled'),(251,1,'2025-06-06','Wallet','cancelled'),(252,32,'2025-06-11','UPI','cancelled'),(253,16,'2025-06-04','UPI','returned'),(254,5,'2025-06-14','Wallet','delivered'),(255,9,'2025-06-13','Wallet','returned'),(256,41,'2025-06-17','Cash on Delivery','delivered'),(257,35,'2025-06-04','UPI','cancelled'),(258,28,'2025-06-08','Credit Card','delivered'),(259,31,'2025-06-18','Credit Card','delivered'),(260,50,'2025-06-15','Cash on Delivery','cancelled'),(261,30,'2025-06-06','UPI','returned'),(262,3,'2025-06-14','UPI','cancelled'),(263,19,'2025-06-12','Net Banking','delivered'),(264,31,'2025-06-10','Wallet','cancelled'),(265,11,'2025-06-20','Credit Card','cancelled'),(266,6,'2025-06-13','Wallet','delivered'),(267,29,'2025-06-07','Wallet','cancelled'),(268,9,'2025-06-04','Net Banking','cancelled'),(269,20,'2025-06-03','Credit Card','returned'),(270,21,'2025-06-15','Cash on Delivery','delivered'),(271,12,'2025-06-08','Wallet','delivered'),(272,26,'2025-06-06','Wallet','cancelled'),(273,46,'2025-06-14','Wallet','cancelled'),(274,16,'2025-06-12','Credit Card','returned'),(275,15,'2025-06-16','Wallet','cancelled'),(276,27,'2025-06-20','Wallet','returned'),(277,30,'2025-06-17','Cash on Delivery','delivered'),(278,7,'2025-06-05','UPI','delivered'),(279,8,'2025-06-14','Wallet','cancelled'),(280,4,'2025-06-09','UPI','returned'),(281,32,'2025-06-15','Wallet','delivered'),(282,5,'2025-06-06','Wallet','returned'),(283,22,'2025-06-04','UPI','delivered'),(284,35,'2025-06-07','Wallet','cancelled'),(285,1,'2025-06-13','Credit Card','cancelled'),(286,39,'2025-06-10','UPI','returned'),(287,28,'2025-06-16','Wallet','delivered'),(288,44,'2025-06-15','Cash on Delivery','delivered'),(289,18,'2025-06-11','Credit Card','returned'),(290,27,'2025-06-12','Wallet','cancelled'),(291,43,'2025-06-04','Wallet','returned'),(292,24,'2025-06-07','UPI','delivered'),(293,14,'2025-06-05','UPI','cancelled'),(294,10,'2025-06-03','Wallet','delivered'),(295,34,'2025-06-14','Net Banking','returned'),(296,13,'2025-06-08','Cash on Delivery','delivered'),(297,42,'2025-06-05','UPI','returned'),(298,37,'2025-06-13','UPI','cancelled'),(299,33,'2025-06-18','Wallet','cancelled'),(300,49,'2025-06-19','UPI','delivered');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
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
