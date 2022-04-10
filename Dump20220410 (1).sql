CREATE DATABASE  IF NOT EXISTS `inventory` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `inventory`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: inventory
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `customertable`
--

DROP TABLE IF EXISTS `customertable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customertable` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  `mobile_no` int DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customertable`
--

LOCK TABLES `customertable` WRITE;
/*!40000 ALTER TABLE `customertable` DISABLE KEYS */;
INSERT INTO `customertable` VALUES (1,'siva','priya','priya@gmail.com',9486686),(2,'harry','potter','harry@gmail.com',222345);
/*!40000 ALTER TABLE `customertable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (1);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_admin_tbl`
--

DROP TABLE IF EXISTS `inventory_admin_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_admin_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_admin_tbl`
--

LOCK TABLES `inventory_admin_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_admin_tbl` DISABLE KEYS */;
/*!40000 ALTER TABLE `inventory_admin_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_customer_tbl`
--

DROP TABLE IF EXISTS `inventory_customer_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_customer_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `contact_no` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tgts4c152mb38i7n2lqaa39un` (`contact_no`),
  UNIQUE KEY `UK_f90347htruet5qboo5dlfmish` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_customer_tbl`
--

LOCK TABLES `inventory_customer_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_customer_tbl` DISABLE KEYS */;
INSERT INTO `inventory_customer_tbl` VALUES (1,'25B,kk Nagar,ossur.','9486689561','sam@gmail.com','sam','andreson'),(2,'12b,adayar,chennai.','9865463562','haris@gmail.com','haris','richard'),(3,'3rd,street,cheppakkam,chennai.','9700362098','saranya@gmail.com','saranya','kumar'),(4,'5th,sector,kolicode.','89056327190','shakthi@gmail.com','shakthi','priya'),(5,'6thcrosss road,gandhinagar.','9684861655','radha@gmail.com','meena','krishnan'),(7,'18,rainbow colony,trissur.','8905636291','magesh@gmail.com','magesh','moorthy');
/*!40000 ALTER TABLE `inventory_customer_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_invoice_tbl`
--

DROP TABLE IF EXISTS `inventory_invoice_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_invoice_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `customerid` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `cust_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK38ybufwe5691ihtbsjomj1drr` (`cust_id`),
  CONSTRAINT `FK38ybufwe5691ihtbsjomj1drr` FOREIGN KEY (`cust_id`) REFERENCES `inventory_customer_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_invoice_tbl`
--

LOCK TABLES `inventory_invoice_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_invoice_tbl` DISABLE KEYS */;
INSERT INTO `inventory_invoice_tbl` VALUES (1,'101','22.01.2022','1000',NULL),(3,'102','10.01.2019','500',NULL),(4,'103','12.04.2022','12500',NULL),(5,'104','17.03.2022','899',NULL),(6,'105','21.03.2022','2500',NULL),(8,'107','21.01.2022','25000',NULL);
/*!40000 ALTER TABLE `inventory_invoice_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_product_tbl`
--

DROP TABLE IF EXISTS `inventory_product_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_product_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `product_category` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_price` bigint DEFAULT NULL,
  `supplier_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKjh8m9tbwl557qpxpr5tkaqxhk` (`supplier_id`),
  CONSTRAINT `FKjh8m9tbwl557qpxpr5tkaqxhk` FOREIGN KEY (`supplier_id`) REFERENCES `inventory_supplier_tbl` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_product_tbl`
--

LOCK TABLES `inventory_product_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_product_tbl` DISABLE KEYS */;
INSERT INTO `inventory_product_tbl` VALUES (1,'mobile','silver glass mi pro','mi910',10000,NULL),(2,'mobile','creamy red xi01','xi01',12000,NULL),(3,'laptop','11thGen Intelcore','vostro 3510',41000,NULL),(4,'powerbank','10mm ultra slim 2 pack','QTshine powerbank',2500,NULL),(5,'mobile charger','ROYAAL  3.4A wall charger','Royaal charger',269,NULL),(6,'pendrive','16GB USB ','Adata UV250',449,NULL),(7,'pen drive','32 GB USB flash','sandisk cruzer blade',1300,NULL),(8,'laptop','pure silver 4GB-256GB','Acer aspire',34000,NULL),(10,'laptop','11thGen Intelcore','vostro 3510',45499,NULL),(12,'pendrive','32GB Black','pendrive Sony',1290,NULL);
/*!40000 ALTER TABLE `inventory_product_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_supplier_tbl`
--

DROP TABLE IF EXISTS `inventory_supplier_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_supplier_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `contact_no` bigint DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_supplier_tbl`
--

LOCK TABLES `inventory_supplier_tbl` WRITE;
/*!40000 ALTER TABLE `inventory_supplier_tbl` DISABLE KEYS */;
INSERT INTO `inventory_supplier_tbl` VALUES (1,9500742901,'jhon@gmail.com','jhon','doe'),(2,9002341071,'hennry@gmail.com','hennry','chris'),(3,9626236190,'krishnan@gmail.com','krishnan','kumar'),(4,890546739,'ramya@gmail.com','ramya','ganesh'),(5,9626122403,'bharathi@gmail.com','sai','bharathi'),(6,9132065894,'alendra@gmail.com','alendra','gupta'),(9,8709213465,'george@gmail.com','george','mike');
/*!40000 ALTER TABLE `inventory_supplier_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventorytable`
--

DROP TABLE IF EXISTS `inventorytable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventorytable` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(25) DEFAULT NULL,
  `email` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventorytable`
--

LOCK TABLES `inventorytable` WRITE;
/*!40000 ALTER TABLE `inventorytable` DISABLE KEYS */;
INSERT INTO `inventorytable` VALUES (1,NULL,NULL,NULL),(2,NULL,NULL,NULL),(3,NULL,NULL,NULL),(4,NULL,NULL,NULL),(5,NULL,NULL,NULL),(6,NULL,NULL,NULL),(7,'sam','vishal','sam@gmail.com'),(8,'nadha','kumar','nandha@gmail.com'),(9,'ravi','gupta','ravi@gmail.com'),(10,'magesh','varma','varma@gmail.com');
/*!40000 ALTER TABLE `inventorytable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_customer`
--

DROP TABLE IF EXISTS `product_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_customer` (
  `customer_id` bigint DEFAULT NULL,
  `product_id` bigint NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FK7av81qtv8ph62p8thmsag5ah9` (`customer_id`),
  CONSTRAINT `FK7av81qtv8ph62p8thmsag5ah9` FOREIGN KEY (`customer_id`) REFERENCES `inventory_customer_tbl` (`id`),
  CONSTRAINT `FKasxthw9racy0vc1250nd6kqjm` FOREIGN KEY (`product_id`) REFERENCES `inventory_product_tbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_customer`
--

LOCK TABLES `product_customer` WRITE;
/*!40000 ALTER TABLE `product_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `active` bit(1) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,_binary '','admin','ROLE_ADMIN','admin'),(2,_binary '','jhon','ROLE_USER','jhon');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10 10:41:51
