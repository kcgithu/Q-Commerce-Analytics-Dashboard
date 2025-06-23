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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL,
  `product_name` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (101,'Amul Milk 1L','Dairy',56.50,'Amul'),(102,'Parle-G Biscuits 250g','Snacks',20.00,'Parle'),(103,'Colgate Toothpaste 100g','Personal Care',55.00,'Colgate'),(104,'Tata Salt 1kg','Grocery',28.00,'Tata'),(105,'Surf Excel Detergent 500g','Cleaning',65.00,'HUL'),(106,'Mother Dairy Curd 400g','Dairy',45.00,'Mother Dairy'),(107,'Maggi Noodles 70g','Snacks',14.00,'Nestle'),(108,'Dettol Handwash 200ml','Personal Care',60.00,'Dettol'),(109,'Fortune Sunflower Oil 1L','Grocery',135.00,'Fortune'),(110,'Pepsi 750ml','Beverages',40.00,'PepsiCo'),(111,'Amul Butter 100g','Dairy',52.00,'Amul'),(112,'Tropicana Orange Juice 1L','Beverages',110.00,'PepsiCo'),(113,'Harpic Toilet Cleaner 500ml','Cleaning',89.00,'HUL'),(114,'Dove Soap 100g','Personal Care',38.00,'HUL'),(115,'Bournvita Health Drink 500g','Grocery',199.00,'Cadbury'),(116,'Aashirvaad Atta 5kg','Grocery',280.00,'ITC'),(117,'Good Day Cashew Cookies 200g','Snacks',35.00,'Britannia'),(118,'Red Label Tea 250g','Grocery',75.00,'HUL'),(119,'Real Mixed Fruit Juice 1L','Beverages',105.00,'Dabur'),(120,'Clinic Plus Shampoo 175ml','Personal Care',85.00,'HUL'),(121,'Nestle Dahi 400g','Dairy',42.00,'Nestle'),(122,'Kissan Mixed Fruit Jam 200g','Grocery',65.00,'HUL'),(123,'Lays Classic Salted 90g','Snacks',30.00,'PepsiCo'),(124,'Nivea Body Lotion 200ml','Personal Care',120.00,'Nivea'),(125,'Tide Detergent 1kg','Cleaning',97.00,'P&G'),(126,'Sprite 750ml','Beverages',42.00,'Coca-Cola'),(127,'Brooke Bond Taaza Tea 500g','Grocery',95.00,'HUL'),(128,'Patanjali Ghee 500ml','Grocery',270.00,'Patanjali'),(129,'Nestle Milkmaid 400g','Dairy',129.00,'Nestle'),(130,'Coca-Cola 750ml','Beverages',42.00,'Coca-Cola');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-23 19:02:17
