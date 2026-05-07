CREATE DATABASE  IF NOT EXISTS `cp363_assignment` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cp363_assignment`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: cp363_assignment
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `cus_order`
--

DROP TABLE IF EXISTS `cus_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_order` (
  `cus_order_id` int NOT NULL AUTO_INCREMENT,
  `cus_order_cus_id` int NOT NULL,
  `cus_order_deli_id` int NOT NULL,
  `cus_order_prod` int NOT NULL,
  `cus_order_ware` int NOT NULL,
  PRIMARY KEY (`cus_order_id`,`cus_order_prod`),
  KEY `cus_order_deli_id` (`cus_order_deli_id`),
  KEY `cus_order_prod` (`cus_order_prod`),
  KEY `cus_order_cus_id` (`cus_order_cus_id`),
  KEY `cus_order_ware` (`cus_order_ware`),
  CONSTRAINT `cus_order_cus_id` FOREIGN KEY (`cus_order_cus_id`) REFERENCES `customers` (`cus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_deli_id` FOREIGN KEY (`cus_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_prod` FOREIGN KEY (`cus_order_prod`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_ware` FOREIGN KEY (`cus_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_order`
--

LOCK TABLES `cus_order` WRITE;
/*!40000 ALTER TABLE `cus_order` DISABLE KEYS */;
INSERT INTO `cus_order` VALUES (1,2,3,1,1),(2,3,4,19,2);
/*!40000 ALTER TABLE `cus_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_order_info`
--

DROP TABLE IF EXISTS `cus_order_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_order_info` (
  `cus_order_id` int NOT NULL AUTO_INCREMENT,
  `cus_order_cus_id` int NOT NULL,
  `cus_order_deli_id` int NOT NULL,
  `cus_order_ware` int NOT NULL,
  PRIMARY KEY (`cus_order_id`),
  KEY `cus_order_deli_id_fk` (`cus_order_deli_id`),
  KEY `cus_order_cus_id_fk` (`cus_order_cus_id`),
  KEY `cus_order_ware_fk` (`cus_order_ware`),
  CONSTRAINT `cus_order_cus_id_fk` FOREIGN KEY (`cus_order_cus_id`) REFERENCES `customers` (`cus_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_deli_id_fk` FOREIGN KEY (`cus_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_ware_fk` FOREIGN KEY (`cus_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_order_info`
--

LOCK TABLES `cus_order_info` WRITE;
/*!40000 ALTER TABLE `cus_order_info` DISABLE KEYS */;
INSERT INTO `cus_order_info` VALUES (1,2,3,1),(2,3,4,2);
/*!40000 ALTER TABLE `cus_order_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_order_products`
--

DROP TABLE IF EXISTS `cus_order_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_order_products` (
  `cus_order_id` int NOT NULL AUTO_INCREMENT,
  `cus_order_prod` int NOT NULL,
  PRIMARY KEY (`cus_order_id`,`cus_order_prod`),
  KEY `cus_order_products_fk` (`cus_order_prod`),
  CONSTRAINT `cus_order_id_fk` FOREIGN KEY (`cus_order_id`) REFERENCES `cus_order_info` (`cus_order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cus_order_products_fk` FOREIGN KEY (`cus_order_prod`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_order_products`
--

LOCK TABLES `cus_order_products` WRITE;
/*!40000 ALTER TABLE `cus_order_products` DISABLE KEYS */;
INSERT INTO `cus_order_products` VALUES (1,1),(2,19);
/*!40000 ALTER TABLE `cus_order_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cus_name` varchar(50) NOT NULL,
  `cus_id` int NOT NULL AUTO_INCREMENT,
  `cus_street` varchar(20) NOT NULL,
  `cus_city` varchar(20) NOT NULL,
  `cus_province` varchar(10) NOT NULL,
  `cus_country` varchar(15) NOT NULL,
  `cus_postal_code` varchar(10) NOT NULL,
  `cus_phone_number` varchar(15) NOT NULL,
  `cus_email` varchar(100) NOT NULL,
  PRIMARY KEY (`cus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES ('Emma Johnson',2,'123 Maple St','Toronto','ON','Canada','M4B 1B3','647-555-1023','emma.johnson13@gmail.com'),('Liam Brown',3,'45 Oak Avenue','Vancouver','BC','Canada','V6E 2Y1','604-555-2198','liam.brown32@gmail.com'),('Olivia Martin',4,'89 King St W','Ottawa','ON','Canada','K1P 5G8','613-555-7744','olivia.martin23@gmail.com'),('Noah Thompson',5,'302 Pine Crescent','Calgary','Canada','AB','T2P 3H8','403-555-9823','noah.56thompson@gmail.com'),('Ava Wilson',6,'15 Elmwood Dr','Halifax','NS','Canada','B3J 1Z7','902-555-6372','ava.wilson64@gmail.com'),('William Anderson',7,'78 Cedar Lane','Winnipeg','MB','Canada','R3C 2E1','204-555-4509','william.anderson30@gmail.com'),('Sophia Clark',8,'210 Birch Blvd','Montreal','QC','Canada','H3B 2S8','514-555-7320','sophia.clark50@gmail.com'),('James Lewis',9,'55 Spruce St','Edmonton','AB','Canada','T5J 4P3','780-555-6641','james.lewis11@gmail.com'),('Isabella Hall',10,'99 Ashgrove Rd','Regina','SK','Canada','S4P 3Y2','306-555-2284','isabella.hall36@gmail.com'),('Benjamin Young',11,'67 Willow Way','Quebec City','QC','Canada','G1R 2W8','418-555-3490','benjamin.young90@gmail.com');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveries` (
  `deli_id` int NOT NULL AUTO_INCREMENT,
  `deli_logi_id` int NOT NULL,
  `deli_from_street` varchar(20) NOT NULL,
  `deli_from_city` varchar(20) NOT NULL,
  `deli_from_province` varchar(10) NOT NULL,
  `deli_from_country` varchar(15) NOT NULL,
  `deli_from_postal_code` varchar(10) NOT NULL,
  `deli_to_street` varchar(20) NOT NULL,
  `deli_to_city` varchar(20) NOT NULL,
  `deli_to_province` varchar(10) NOT NULL,
  `deli_to_country` varchar(15) NOT NULL,
  `deli_to_postal_code` varchar(10) NOT NULL,
  `deli_send_date` date NOT NULL,
  `deli_status` enum('Arrived','Arriving') NOT NULL,
  `deli_arrived_date` date DEFAULT NULL,
  PRIMARY KEY (`deli_id`),
  KEY `fk_deli_logi_id` (`deli_logi_id`),
  CONSTRAINT `fk_deli_logi_id` FOREIGN KEY (`deli_logi_id`) REFERENCES `logistic_companies` (`logi_id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `arriveornot` CHECK ((((`deli_status` = _utf8mb4'Arrived') and (`deli_arrived_date` is not null)) or ((`deli_status` = _utf8mb4'Arriving') and (`deli_arrived_date` is null))))
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (3,11,'12 Bay St','Toronto','ON','Canada','M5J 2N8','123 Maple St','Toronto','ON','Canada','M4B 1B3','2025-01-30','Arrived','2025-02-05'),(4,12,'45 Main Rd','Winnipeg','MB','Canada','R3C 3A5','45 Oak Avenue','Vancouver','BC','Canada','V6E 2Y1','2025-09-30','Arriving',NULL),(9,13,'78 King St','Vancouver','BC','Canada','V6B 2L1','120 Bay St','Toronto','ON','Canada','M5J 2N8','2025-01-30','Arrived','2025-02-05'),(10,14,'33 Pine St','Calgary','AB','Canada','T2P 2S5','45 Wellington Ave','Winnipeg','MB','Canada','R3C 4B2','2025-09-30','Arriving',NULL),(13,17,'45 Main Rd','Winnipeg','MB','Canada','R3C 3A5','33 Main St','Winnipeg','MB','Canada','R3C 2E1','2025-01-30','Arrived','2025-02-05'),(14,18,'78 King St','Vancouver','BC','Canada','V6B 2L1','55 Burrard St','Vancouver','BC','Canada','V6C 3E5','2025-09-30','Arriving',NULL),(15,15,'10 Front St','Toronto','ON','Canada','M5J 1E3','20 Duke St','Halifax','NS','Canada','B3J 3M5','2025-01-30','Arrived','2025-02-05'),(16,16,'24 King Rd','Mississauga','ON','Canada','L5B 2V3','12 Bay St','Toronto','ON','Canada','M5J 2N8','2025-09-30','Arriving',NULL),(17,19,'120 King St','Toronto','ON','Canada','M5H 1A1','33 Pine St','Calgary','AB','Canada','T2P 2S5','2025-01-30','Arrived','2025-02-05'),(18,20,'45 Main St','Winnipeg','MB','Canada','R3C 4B2','20 Duke St','Halifax','NS','Canada','B3J 3M5','2025-09-30','Arriving',NULL),(19,11,'98 Burrard St','Vancouver','BC','Canada','V6C 1A1','12 Bay St','Toronto','ON','Canada','M5J 2N8','2025-01-30','Arrived','2025-02-05'),(20,12,'22 Jasper Ave','Edmonton','AB','Canada','T5J 3L4','45 Main Rd','Winnipeg','MB','Canada','R3C 3A5','2025-09-30','Arriving',NULL);
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependants`
--

DROP TABLE IF EXISTS `dependants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependants` (
  `dep_name` varchar(50) NOT NULL,
  `dep_dob` date NOT NULL,
  `dep_emp_id` int NOT NULL,
  PRIMARY KEY (`dep_emp_id`,`dep_name`),
  CONSTRAINT `dep_emp_id` FOREIGN KEY (`dep_emp_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependants`
--

LOCK TABLES `dependants` WRITE;
/*!40000 ALTER TABLE `dependants` DISABLE KEYS */;
INSERT INTO `dependants` VALUES ('Ethan Parker','1987-03-22',1),('Lucas Bennett','1990-10-05',2),('Mia Richardson','1994-06-11',3),('Jack Nguyen','1996-08-27',4),('Harper Collins','1992-01-19',6),('Ella Foster','1989-12-13',7),('Alexander Hughes','1993-04-07',10),('Chloe Ramirez','1995-11-25',10),('Nathan Brooks','1988-02-16',15),('Zoe Patel','1991-09-30',15);
/*!40000 ALTER TABLE `dependants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `emp_name` varchar(50) NOT NULL,
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_dob` date NOT NULL,
  `emp_phone_number` varchar(15) NOT NULL,
  `emp_contact_email` varchar(100) NOT NULL,
  `emp_address` varchar(150) NOT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES ('Emma Johnson',1,'1992-04-15','647-555-1023','emma.johnson@example.com','123 Maple Street, Toronto, ON, Canada M4B 1B3'),('Liam Brown',2,'1988-09-22','604-555-2198','liam.brown@example.com','45 Oak Avenue, Vancouver, BC, Canada V6E 2Y1'),('Olivia Martin',3,'1995-12-05','613-555-7744','olivia.martin@example.com','89 King Street West, Ottawa, ON, Canada K1P 5G8'),('Noah Thompson',4,'1990-02-17','403-555-9823','noah.thompson@example.com','302 Pine Crescent, Calgary, AB, Canada T2P 3H8'),('Ava Wilson',5,'1993-11-03','902-555-6372','ava.wilson@example.com','15 Elmwood Drive, Halifax, NS, Canada B3J 1Z7'),('William Anderson',6,'1985-08-12','204-555-4509','william.anderson@example.com','78 Cedar Lane, Winnipeg, MB, Canada R3C 2E1'),('Sophia Clark',7,'1994-07-29','514-555-7320','sophia.clark@example.com','210 Birch Boulevard, Montreal, QC, Canada H3B 2S8'),('James Lewis',8,'1989-03-04','780-555-6641','james.lewis@example.com','55 Spruce Street, Edmonton, AB, Canada T5J 4P3'),('Isabella Hall',9,'1996-05-21','306-555-2284','isabella.hall@example.com','99 Ashgrove Road, Regina, SK, Canada S4P 3Y2'),('Benjamin Young',10,'1991-01-30','418-555-3490','benjamin.young@example.com','67 Willow Way, Quebec City, QC, Canada G1R 2W8'),('Charlotte Adams',11,'1990-06-18','905-555-8211','charlotte.adams@example.com','120 Dundas Street, Mississauga, ON, Canada L5A 1W9'),('Ethan Roberts',12,'1987-10-27','587-555-4420','ethan.roberts@example.com','340 Heritage Drive, Calgary, AB, Canada T2H 1M9'),('Amelia Perez',13,'1998-02-09','604-555-9355','amelia.perez@example.com','22 Cambie Street, Vancouver, BC, Canada V5Z 2Y1'),('Mason Taylor',14,'1986-07-14','613-555-7439','mason.taylor@example.com','175 Preston Street, Ottawa, ON, Canada K1R 7P8'),('Harper Green',15,'1993-09-11','506-555-2990','harper.green@example.com','80 Queen Street, Moncton, NB, Canada E1C 1G5'),('Lucas King',16,'1984-05-25','709-555-8742','lucas.king@example.com','200 Water Street, St. John\'s, NL, Canada A1C 1A9'),('Evelyn Wright',17,'1997-03-13','807-555-6405','evelyn.wright@example.com','95 Red River Road, Thunder Bay, ON, Canada P7B 1A3'),('Henry Scott',18,'1992-08-07','867-555-2298','henry.scott@example.com','12 Franklin Avenue, Whitehorse, YT, Canada Y1A 2B6'),('Grace Mitchell',19,'1994-12-01','867-555-4110','grace.mitchell@example.com','14 Range Road, Yellowknife, NT, Canada X1A 3E9'),('Logan Campbell',20,'1989-11-20','416-555-7782','logan.campbell@example.com','350 Bloor Street East, Toronto, ON, Canada M4W 1H7'),('demo',22,'1995-01-06','1231231231','123@gmail.com','123123aaaaaaaaaaaaaa'),('Demo',23,'1995-01-01','123456789','123@gmail.com','75 University Ave'),('demo emp123',24,'1995-01-01','123456789','123456@gmail.com','75 University Ave');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `example`
--

DROP TABLE IF EXISTS `example`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `example` (
  `att1` int NOT NULL,
  `att2` varchar(100) NOT NULL,
  PRIMARY KEY (`att1`,`att2`),
  UNIQUE KEY `att1` (`att1`),
  CONSTRAINT `example_ibfk_1` FOREIGN KEY (`att1`) REFERENCES `cus_order_info` (`cus_order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `example`
--

LOCK TABLES `example` WRITE;
/*!40000 ALTER TABLE `example` DISABLE KEYS */;
/*!40000 ALTER TABLE `example` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_product`
--

DROP TABLE IF EXISTS `inventory_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_product` (
  `inv_prod_ware_id` int NOT NULL,
  `inv_prod_id` int NOT NULL,
  `inv_quantity` float NOT NULL,
  `inv_unit` enum('KG','METERCUBE','NUMBER') DEFAULT NULL,
  PRIMARY KEY (`inv_prod_ware_id`,`inv_prod_id`),
  KEY `inv_prod_id` (`inv_prod_id`),
  CONSTRAINT `inv_prod_id` FOREIGN KEY (`inv_prod_id`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inv_prod_ware_id` FOREIGN KEY (`inv_prod_ware_id`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_product`
--

LOCK TABLES `inventory_product` WRITE;
/*!40000 ALTER TABLE `inventory_product` DISABLE KEYS */;
INSERT INTO `inventory_product` VALUES (1,1,100,'NUMBER'),(1,2,100,'NUMBER'),(1,3,200,'NUMBER'),(1,4,1000,'NUMBER'),(2,5,100,'NUMBER'),(2,6,200,'NUMBER'),(2,7,1000,'NUMBER'),(2,8,200,'NUMBER'),(3,9,1000,'NUMBER'),(3,10,100,'NUMBER'),(3,11,200,'NUMBER'),(3,12,1000,'NUMBER'),(4,13,200,'NUMBER'),(4,14,100,'NUMBER'),(4,15,100,'NUMBER'),(4,16,1000,'NUMBER'),(5,17,100,'NUMBER'),(5,18,200,'NUMBER'),(5,19,200,'NUMBER'),(5,20,1000,'NUMBER');
/*!40000 ALTER TABLE `inventory_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory_rm`
--

DROP TABLE IF EXISTS `inventory_rm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory_rm` (
  `inv_rm_ware_id` int NOT NULL,
  `inv_rm_id` int NOT NULL,
  `inv_quantity` float NOT NULL,
  `inv_unit` enum('KG','METERCUBE','NUMBER') DEFAULT NULL,
  PRIMARY KEY (`inv_rm_ware_id`,`inv_rm_id`),
  KEY `inv_rm_id` (`inv_rm_id`),
  CONSTRAINT `inv_rm_id` FOREIGN KEY (`inv_rm_id`) REFERENCES `raw_materials` (`raw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `inv_rm_ware_id` FOREIGN KEY (`inv_rm_ware_id`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory_rm`
--

LOCK TABLES `inventory_rm` WRITE;
/*!40000 ALTER TABLE `inventory_rm` DISABLE KEYS */;
INSERT INTO `inventory_rm` VALUES (1,6,200,'NUMBER'),(1,7,1000,'NUMBER'),(1,14,100,'NUMBER'),(1,16,1000,'NUMBER'),(2,2,100,'NUMBER'),(2,5,100,'NUMBER'),(2,13,200,'NUMBER'),(2,19,200,'NUMBER'),(3,4,1000,'NUMBER'),(3,8,200,'NUMBER'),(3,15,100,'NUMBER'),(3,20,1000,'NUMBER'),(4,3,200,'NUMBER'),(4,9,1000,'NUMBER'),(4,12,1000,'NUMBER'),(4,17,100,'NUMBER'),(5,1,100,'NUMBER'),(5,10,100,'NUMBER'),(5,11,200,'NUMBER'),(5,18,200,'NUMBER');
/*!40000 ALTER TABLE `inventory_rm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logistic_companies`
--

DROP TABLE IF EXISTS `logistic_companies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logistic_companies` (
  `logi_name` varchar(50) NOT NULL,
  `logi_id` int NOT NULL AUTO_INCREMENT,
  `logi_street` varchar(20) NOT NULL,
  `logi_city` varchar(20) NOT NULL,
  `logi_province` varchar(10) NOT NULL,
  `logi_country` varchar(15) NOT NULL,
  `logi_postal_code` varchar(10) NOT NULL,
  `logi_contact_name` varchar(50) NOT NULL,
  `logi_contact_phone_number` varchar(15) NOT NULL,
  `logi_contact_email` varchar(100) NOT NULL,
  `logi_tax` varchar(20) NOT NULL,
  PRIMARY KEY (`logi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logistic_companies`
--

LOCK TABLES `logistic_companies` WRITE;
/*!40000 ALTER TABLE `logistic_companies` DISABLE KEYS */;
INSERT INTO `logistic_companies` VALUES ('Northern Freight Solutions',11,'120 King St','Toronto','ON','Canada','M5V 1L7','Ethan Johnson','647-555-3248','ethan.johnson@northernfreight.ca','BN125478963RT0001'),('Prairie Logistics Inc.',12,'89 Main St','Winnipeg','MB','Canada','R3B 0S8','Mia Thompson','204-555-9182','mia.thompson@prairielogistics.ca','BN987321654RT0002'),('Pacific Haulage Ltd.',13,'1025 Elm St','Vancouver','BC','Canada','V6E 1Z7','Liam Roberts','604-555-6619','liam.roberts@pacifichaulage.ca','BN112578964RT0003'),('TransNorth Distribution',14,'75 104 Ave','Edmonton','AB','Canada','T5J 0K3','Charlotte Davis','780-555-7224','charlotte.davis@transnorth.ca','BN554433221RT0004'),('Capital Freight Carriers',15,'160 York St','Ottawa','ON','Canada','K1P 5J9','James Wilson','613-555-3445','james.wilson@capitalfreight.ca','BN667788990RT0005'),('Atlantic Cargo Express',16,'55 Duke St','Halifax','NS','Canada','B3J 1T8','Ava Martin','902-555-6642','ava.martin@atlanticcargo.ca','BN223344556RT0006'),('Great Lakes Transport',17,'310 Pine St','Barrie','ON','Canada','L4M 3C1','William Anderson','705-555-9012','william.anderson@greatlakes.ca','BN778899001RT0007'),('Mountain Movers Logistics',18,'22 9 Ave','Calgary','AB','Canada','T2P 1J3','Olivia Chen','403-555-8472','olivia.chen@mountainmovers.ca','BN889900112RT0008'),('Quebec Transit Group',19,'90 King Rd','Quebec City','QC','Canada','G1K 3G4','Noah Tremblay','418-555-2309','noah.tremblay@quebectransit.ca','BN334455667RT0009'),('True North Freightlines',20,'180 Park Ave','Winnipeg','MB','Canada','R3C 0C8','Sophia Clark','204-555-6720','sophia.clark@truenorthfreight.ca','BN445566778RT0010');
/*!40000 ALTER TABLE `logistic_companies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_deliver_product`
--

DROP TABLE IF EXISTS `manufacturer_deliver_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer_deliver_product` (
  `mdp_deli_id` int NOT NULL AUTO_INCREMENT,
  `mdp_deli_manu_id` int NOT NULL,
  `mdp_order_deli_id` int NOT NULL,
  `mdp_order_prod` int NOT NULL,
  `mdp_order_ware` int NOT NULL,
  PRIMARY KEY (`mdp_deli_id`,`mdp_order_prod`),
  KEY `mdp_order_deli_id` (`mdp_order_deli_id`),
  KEY `mdp_order_prod` (`mdp_order_prod`),
  KEY `mdp_deli_manu_id` (`mdp_deli_manu_id`),
  KEY `mdp_order_ware` (`mdp_order_ware`),
  CONSTRAINT `mdp_deli_manu_id` FOREIGN KEY (`mdp_deli_manu_id`) REFERENCES `manufacturers` (`manu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mdp_order_deli_id` FOREIGN KEY (`mdp_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mdp_order_prod` FOREIGN KEY (`mdp_order_prod`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `mdp_order_ware` FOREIGN KEY (`mdp_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_deliver_product`
--

LOCK TABLES `manufacturer_deliver_product` WRITE;
/*!40000 ALTER TABLE `manufacturer_deliver_product` DISABLE KEYS */;
INSERT INTO `manufacturer_deliver_product` VALUES (3,1,15,1,5),(4,2,16,19,1);
/*!40000 ALTER TABLE `manufacturer_deliver_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturer_emp`
--

DROP TABLE IF EXISTS `manufacturer_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturer_emp` (
  `wk_manu_id` int NOT NULL,
  `wk_manu_emp_id` int NOT NULL,
  PRIMARY KEY (`wk_manu_id`,`wk_manu_emp_id`),
  KEY `wk_manu_emp_id` (`wk_manu_emp_id`),
  CONSTRAINT `wk_manu_emp_id` FOREIGN KEY (`wk_manu_emp_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wk_manu_id` FOREIGN KEY (`wk_manu_id`) REFERENCES `manufacturers` (`manu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturer_emp`
--

LOCK TABLES `manufacturer_emp` WRITE;
/*!40000 ALTER TABLE `manufacturer_emp` DISABLE KEYS */;
INSERT INTO `manufacturer_emp` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(3,17),(7,19),(5,20);
/*!40000 ALTER TABLE `manufacturer_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manufacturers`
--

DROP TABLE IF EXISTS `manufacturers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manufacturers` (
  `manu_name` varchar(50) NOT NULL,
  `manu_id` int NOT NULL AUTO_INCREMENT,
  `manu_street` varchar(20) NOT NULL,
  `manu_city` varchar(20) NOT NULL,
  `manu_province` varchar(10) NOT NULL,
  `manu_country` varchar(15) NOT NULL,
  `manu_postal_code` varchar(10) NOT NULL,
  `manu_contact_name` varchar(50) NOT NULL,
  `manu_contact_phone_number` varchar(15) NOT NULL,
  `manu_contact_email` varchar(100) NOT NULL,
  `manu_tax` varchar(20) NOT NULL,
  `manu_manager_id` int NOT NULL,
  PRIMARY KEY (`manu_id`),
  KEY `manu_manager_id` (`manu_manager_id`),
  CONSTRAINT `manu_manager_id` FOREIGN KEY (`manu_manager_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manufacturers`
--

LOCK TABLES `manufacturers` WRITE;
/*!40000 ALTER TABLE `manufacturers` DISABLE KEYS */;
INSERT INTO `manufacturers` VALUES ('Northern Machines Ltd.',1,'10 Front St','Toronto','ON','Canada','M5J 1E3','Liam Robinson','416-555-8120','liam.robinson@nmltd.ca','BN123450001RT0001',1),('MapleTech Manufacturing',2,'24 King Rd','Mississauga','ON','Canada','L5B 2V3','Sophia Evans','905-555-9332','sophia.evans@mapletech.ca','BN223450002RT0002',2),('Prairie Fabrication',3,'33 Main St','Winnipeg','MB','Canada','R3C 2E1','Noah Mitchell','204-555-4167','noah.mitchell@prairiefab.ca','BN323450003RT0003',3),('WestCoast AutoParts',4,'55 Burrard St','Vancouver','BC','Canada','V6C 3E5','Olivia Chen','604-555-7299','olivia.chen@wcautoparts.ca','BN423450004RT0004',4),('Atlantic SteelWorks',5,'14 Duke St','Halifax','NS','Canada','B3J 1P2','Ethan Carter','902-555-2678','ethan.carter@atlsteel.ca','BN523450005RT0005',5),('Capital Plastics Inc.',6,'70 Elgin St','Ottawa','ON','Canada','K1P 5L5','Ava Johnson','613-555-4802','ava.johnson@capplast.ca','BN623450006RT0006',6),('Polar Furniture Co.',7,'42 Jasper Ave','Edmonton','AB','Canada','T5J 2K1','William Lee','780-555-3170','william.lee@polarfur.ca','BN723450007RT0007',7),('TrueNorth Motors',8,'81 Pine St','Calgary','AB','Canada','T2P 3G5','Emma White','403-555-6824','emma.white@tnmotors.ca','BN823450008RT0008',8),('Central Paper Prod.',9,'39 King St','Regina','SK','Canada','S4P 2M1','Benjamin Brown','306-555-9753','benjamin.brown@cpprod.ca','BN923450009RT0009',9),('Quebec Electronics',10,'60 Saint St','Montreal','QC','Canada','H3A 1A2','Charlotte Gagnon','514-555-4820','charlotte.gagnon@qcelec.ca','BN023450010RT0010',10);
/*!40000 ALTER TABLE `manufacturers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `prod_name` varchar(50) NOT NULL,
  `prod_id` int NOT NULL AUTO_INCREMENT,
  `prod_price` float NOT NULL,
  PRIMARY KEY (`prod_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('Wireless Mouse',1,24.99),('Mechanical Keyboard',2,89.5),('USB-C Charging Cable',3,12.75),('27-inch LED Monitor',4,219.99),('External Hard Drive 1TB',5,79.99),('Bluetooth Speaker',6,45.9),('Smartphone Stand',7,14.2),('Laptop Backpack',8,59.95),('Noise Cancelling Headphones',9,129.99),('Webcam 1080p',10,39.5),('Office Desk Lamp',11,29.8),('Ergonomic Chair',12,189),('Portable SSD 500GB',13,99.49),('HDMI Cable 2m',14,10.99),('Wireless Keyboard',15,54.25),('Smartwatch',16,199.99),('USB Flash Drive 64GB',17,17.85),('Power Bank 10000mAh',18,34.6),('Graphic Tablet',19,139.99),('Mini Projector',20,249);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `products_per_warehouse`
--

DROP TABLE IF EXISTS `products_per_warehouse`;
/*!50001 DROP VIEW IF EXISTS `products_per_warehouse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `products_per_warehouse` AS SELECT 
 1 AS `ware_id`,
 1 AS `ware_name`,
 1 AS `total_product_types`,
 1 AS `total_items`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `raw_material_receive`
--

DROP TABLE IF EXISTS `raw_material_receive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_material_receive` (
  `rmr_deli_id` int NOT NULL AUTO_INCREMENT,
  `rmr_deli_manu_id` int NOT NULL,
  `rmr_order_deli_id` int NOT NULL,
  `rmr_order_rm` int NOT NULL,
  `rmr_order_ware` int NOT NULL,
  PRIMARY KEY (`rmr_deli_id`,`rmr_order_rm`),
  KEY `rmr_order_deli_id` (`rmr_order_deli_id`),
  KEY `rmr_order_rm` (`rmr_order_rm`),
  KEY `rmr_deli_manu_id` (`rmr_deli_manu_id`),
  KEY `rmr_order_ware` (`rmr_order_ware`),
  CONSTRAINT `rmr_deli_manu_id` FOREIGN KEY (`rmr_deli_manu_id`) REFERENCES `manufacturers` (`manu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rmr_order_deli_id` FOREIGN KEY (`rmr_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rmr_order_rm` FOREIGN KEY (`rmr_order_rm`) REFERENCES `raw_materials` (`raw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `rmr_order_ware` FOREIGN KEY (`rmr_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_material_receive`
--

LOCK TABLES `raw_material_receive` WRITE;
/*!40000 ALTER TABLE `raw_material_receive` DISABLE KEYS */;
INSERT INTO `raw_material_receive` VALUES (1,3,13,1,2),(2,4,14,19,3);
/*!40000 ALTER TABLE `raw_material_receive` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_materials`
--

DROP TABLE IF EXISTS `raw_materials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_materials` (
  `raw_name` varchar(50) NOT NULL,
  `raw_id` int NOT NULL AUTO_INCREMENT,
  `raw_price` float NOT NULL,
  PRIMARY KEY (`raw_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_materials`
--

LOCK TABLES `raw_materials` WRITE;
/*!40000 ALTER TABLE `raw_materials` DISABLE KEYS */;
INSERT INTO `raw_materials` VALUES ('Silicon Wafer 300mm',1,45.5),('Copper Wire 1kg',2,12.3),('Lithium Carbonate 1kg',3,39.8),('Nickel Powder 1kg',4,22.6),('Graphite Powder 1kg',5,14.9),('Polycarbonate Resin 1kg',6,8.75),('Epoxy Resin 1kg',7,9.4),('Solder Paste 500g',8,17.25),('Gold Plating Solution 100ml',9,55),('Aluminum Sheet 1kg',10,6.9),('Ceramic Substrate 10pcs',11,28.4),('Tantalum Capacitor Core',12,42.75),('Rare Earth Magnet Set',13,31.6),('PCB Base Material FR4',14,18.5),('Conductive Silver Ink 100ml',15,24.99),('Insulated Copper Coil',16,19.7),('Carbon Fiber Sheet 1m²',17,34.2),('Thermal Paste Tube',18,7.8),('Titanium Rod 1kg',19,65),('Plastic Pellet ABS 1kg',20,5.95);
/*!40000 ALTER TABLE `raw_materials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retail_order`
--

DROP TABLE IF EXISTS `retail_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retail_order` (
  `retail_order_id` int NOT NULL AUTO_INCREMENT,
  `retail_order_retail_id` int NOT NULL,
  `retail_order_deli_id` int NOT NULL,
  `retail_order_prod` int NOT NULL,
  `retail_order_ware` int NOT NULL,
  PRIMARY KEY (`retail_order_id`,`retail_order_prod`),
  KEY `retail_order_deli_id` (`retail_order_deli_id`),
  KEY `retail_order_prod` (`retail_order_prod`),
  KEY `retail_order_retail_id` (`retail_order_retail_id`),
  KEY `retail_order_ware` (`retail_order_ware`),
  CONSTRAINT `retail_order_deli_id` FOREIGN KEY (`retail_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `retail_order_prod` FOREIGN KEY (`retail_order_prod`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `retail_order_retail_id` FOREIGN KEY (`retail_order_retail_id`) REFERENCES `retailers` (`retail_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `retail_order_ware` FOREIGN KEY (`retail_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retail_order`
--

LOCK TABLES `retail_order` WRITE;
/*!40000 ALTER TABLE `retail_order` DISABLE KEYS */;
INSERT INTO `retail_order` VALUES (1,1,9,1,3),(2,2,10,19,4);
/*!40000 ALTER TABLE `retail_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `retailers`
--

DROP TABLE IF EXISTS `retailers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailers` (
  `retail_name` varchar(50) NOT NULL,
  `retail_id` int NOT NULL AUTO_INCREMENT,
  `retail_street` varchar(20) NOT NULL,
  `retail_city` varchar(20) NOT NULL,
  `retail_province` varchar(10) NOT NULL,
  `retail_country` varchar(15) NOT NULL,
  `retail_postal_code` varchar(10) NOT NULL,
  `retail_contact_name` varchar(50) NOT NULL,
  `retail_contact_phone_number` varchar(15) NOT NULL,
  `retail_contact_email` varchar(100) NOT NULL,
  `retail_tax` varchar(20) NOT NULL,
  PRIMARY KEY (`retail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailers`
--

LOCK TABLES `retailers` WRITE;
/*!40000 ALTER TABLE `retailers` DISABLE KEYS */;
INSERT INTO `retailers` VALUES ('Maple Electronics',1,'120 Bay St','Toronto','ON','Canada','M5J 2N8','Daniel Roberts','647-555-1823','daniel.roberts@mapleelectronics.ca','BN123456789RT0001'),('Prairie Home Goods',2,'45 Wellington Ave','Winnipeg','MB','Canada','R3C 4B2','Samantha White','204-555-7764','samantha.white@prairiehome.ca','BN987654321RT0002'),('Pacific Outdoor Supply',3,'321 Robson St','Vancouver','BC','Canada','V6B 5R9','Liam Anderson','604-555-3366','liam.anderson@pacificoutdoor.ca','BN112233445RT0003'),('Northern Apparel Co.',4,'88 Jasper Ave','Edmonton','AB','Canada','T5J 1Y7','Olivia Davis','780-555-9102','olivia.davis@northernapparel.ca','BN556677889RT0004'),('Capital Kitchenware',5,'67 Elgin St','Ottawa','ON','Canada','K1P 5B2','Michael Chen','613-555-7432','michael.chen@capitalkitchenware.ca','BN223344556RT0005'),('Atlantic Books & Gifts',6,'19 Barrington St','Halifax','NS','Canada','B3J 1Y2','Sophia Martin','902-555-1942','sophia.martin@atlanticbooks.ca','BN667788990RT0006'),('Golden Harvest Market',7,'2445 Main St','Kelowna','BC','Canada','V1Y 1Z4','Benjamin Clarke','250-555-8421','benjamin.clarke@goldenharvest.ca','BN778899001RT0007'),('Lakeside Sports Gear',8,'502 Queen St','Kingston','ON','Canada','K7L 2Y8','Emma Johnson','613-555-5403','emma.johnson@lakesidesports.ca','BN889900112RT0008'),('Prairieland Furniture',9,'90 Circle Dr','Saskatoon','SK','Canada','S7K 3T7','Noah Wilson','306-555-3779','noah.wilson@prairielandfurniture.ca','BN334455667RT0009'),('Quebec Fine Foods',10,'125 Rue Saint-Paul','Quebec City','QC','Canada','G1K 3V9','Isabella Tremblay','418-555-2014','isabella.tremblay@quebecfinefoods.ca','BN445566778RT0010');
/*!40000 ALTER TABLE `retailers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_supply_product`
--

DROP TABLE IF EXISTS `supplier_supply_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_supply_product` (
  `ssp_deli_id` int NOT NULL AUTO_INCREMENT,
  `ssp_deli_sup_id` int NOT NULL,
  `ssp_order_deli_id` int NOT NULL,
  `ssp_order_prod` int NOT NULL,
  `ssp_order_ware` int NOT NULL,
  PRIMARY KEY (`ssp_deli_id`,`ssp_order_prod`),
  KEY `ssp_order_deli_id` (`ssp_order_deli_id`),
  KEY `ssp_order_prod` (`ssp_order_prod`),
  KEY `ssp_deli_sup_id` (`ssp_deli_sup_id`),
  KEY `ssp_order_ware` (`ssp_order_ware`),
  CONSTRAINT `ssp_deli_sup_id` FOREIGN KEY (`ssp_deli_sup_id`) REFERENCES `suppliers` (`sup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssp_order_deli_id` FOREIGN KEY (`ssp_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssp_order_prod` FOREIGN KEY (`ssp_order_prod`) REFERENCES `products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssp_order_ware` FOREIGN KEY (`ssp_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_supply_product`
--

LOCK TABLES `supplier_supply_product` WRITE;
/*!40000 ALTER TABLE `supplier_supply_product` DISABLE KEYS */;
INSERT INTO `supplier_supply_product` VALUES (1,1,17,1,4),(2,2,18,19,5);
/*!40000 ALTER TABLE `supplier_supply_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_supply_raw_material`
--

DROP TABLE IF EXISTS `supplier_supply_raw_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_supply_raw_material` (
  `ssrm_deli_id` int NOT NULL AUTO_INCREMENT,
  `ssrm_deli_sup_id` int NOT NULL,
  `ssrm_order_deli_id` int NOT NULL,
  `ssrm_order_rm` int NOT NULL,
  `ssrm_order_ware` int NOT NULL,
  PRIMARY KEY (`ssrm_deli_id`,`ssrm_order_rm`),
  KEY `ssrm_order_deli_id` (`ssrm_order_deli_id`),
  KEY `ssrm_order_rm` (`ssrm_order_rm`),
  KEY `ssrm_deli_sup_id` (`ssrm_deli_sup_id`),
  KEY `ssrm_order_ware` (`ssrm_order_ware`),
  CONSTRAINT `ssrm_deli_sup_id` FOREIGN KEY (`ssrm_deli_sup_id`) REFERENCES `suppliers` (`sup_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssrm_order_deli_id` FOREIGN KEY (`ssrm_order_deli_id`) REFERENCES `deliveries` (`deli_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssrm_order_rm` FOREIGN KEY (`ssrm_order_rm`) REFERENCES `raw_materials` (`raw_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ssrm_order_ware` FOREIGN KEY (`ssrm_order_ware`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_supply_raw_material`
--

LOCK TABLES `supplier_supply_raw_material` WRITE;
/*!40000 ALTER TABLE `supplier_supply_raw_material` DISABLE KEYS */;
INSERT INTO `supplier_supply_raw_material` VALUES (1,3,19,1,1),(2,4,20,19,2);
/*!40000 ALTER TABLE `supplier_supply_raw_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `sup_name` varchar(50) NOT NULL,
  `sup_id` int NOT NULL AUTO_INCREMENT,
  `sup_street` varchar(20) NOT NULL,
  `sup_city` varchar(20) NOT NULL,
  `sup_province` varchar(10) NOT NULL,
  `sup_country` varchar(15) NOT NULL,
  `sup_postal_code` varchar(10) NOT NULL,
  `sup_contact_name` varchar(50) NOT NULL,
  `sup_contact_phone_number` varchar(15) NOT NULL,
  `sup_contact_email` varchar(100) NOT NULL,
  `sup_tax` varchar(20) NOT NULL,
  PRIMARY KEY (`sup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES ('Maple Industrial Co.',1,'120 King St','Toronto','ON','Canada','M5H 1A1','Olivia Scott','647-555-2104','olivia.scott@mapleind.ca','BN123456789RT0001'),('Prairie Metals Ltd.',2,'45 Main St','Winnipeg','MB','Canada','R3C 4B2','Ethan Turner','204-555-3478','ethan.turner@prairiemetal.ca','BN987654321RT0002'),('Pacific Supplies Inc.',3,'98 Burrard St','Vancouver','BC','Canada','V6C 1A1','Sophia Nguyen','604-555-8832','sophia.nguyen@pacificsup.ca','BN112233445RT0003'),('Northern Plastics',4,'22 Jasper Ave','Edmonton','AB','Canada','T5J 3L4','Liam Walker','780-555-5621','liam.walker@nplastics.ca','BN223344556RT0004'),('Capital Paper Co.',5,'75 Elgin St','Ottawa','ON','Canada','K1P 5B2','Emma Carter','613-555-7190','emma.carter@capitalpaper.ca','BN334455667RT0005'),('Atlantic Hardware',6,'18 Duke St','Halifax','NS','Canada','B3J 1M2','James Parker','902-555-6734','james.parker@atlantichard.ca','BN445566778RT0006'),('Golden Foods Ltd.',7,'88 Pine St','Kelowna','BC','Canada','V1Y 1T5','Ava Mitchell','250-555-4108','ava.mitchell@goldenfoods.ca','BN556677889RT0007'),('Prairieland Steel',8,'65 King Rd','Regina','SK','Canada','S4P 3Y2','William Adams','306-555-9921','william.adams@prairiesteel.ca','BN667788990RT0008'),('Quebec Textiles',9,'90 Saint St','Quebec City','QC','Canada','G1R 3V9','Charlotte Tremblay','418-555-3142','charlotte.tremblay@qctextiles.ca','BN778899001RT0009'),('True North Tools',10,'50 Front St','Thunder Bay','ON','Canada','P7B 1Y7','Benjamin Ross','807-555-9023','benjamin.ross@truenorthtools.ca','BN889900112RT0010');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_value_per_customer_order`
--

DROP TABLE IF EXISTS `total_value_per_customer_order`;
/*!50001 DROP VIEW IF EXISTS `total_value_per_customer_order`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_value_per_customer_order` AS SELECT 
 1 AS `cus_name`,
 1 AS `total_order`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_value_per_warehouse`
--

DROP TABLE IF EXISTS `total_value_per_warehouse`;
/*!50001 DROP VIEW IF EXISTS `total_value_per_warehouse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_value_per_warehouse` AS SELECT 
 1 AS `ware_id`,
 1 AS `ware_name`,
 1 AS `total_value`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_product_stock_overview`
--

DROP TABLE IF EXISTS `v_product_stock_overview`;
/*!50001 DROP VIEW IF EXISTS `v_product_stock_overview`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_product_stock_overview` AS SELECT 
 1 AS `prod_id`,
 1 AS `prod_name`,
 1 AS `prod_price`,
 1 AS `total_units`,
 1 AS `pct_of_all_units`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `v_products_per_warehouse`
--

DROP TABLE IF EXISTS `v_products_per_warehouse`;
/*!50001 DROP VIEW IF EXISTS `v_products_per_warehouse`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `v_products_per_warehouse` AS SELECT 
 1 AS `ware_id`,
 1 AS `ware_name`,
 1 AS `total_product_types`,
 1 AS `total_items`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `warehouse_emp`
--

DROP TABLE IF EXISTS `warehouse_emp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse_emp` (
  `wk_ware_id` int NOT NULL,
  `wk_ware_emp_id` int NOT NULL,
  PRIMARY KEY (`wk_ware_id`,`wk_ware_emp_id`),
  KEY `wk_ware_emp_id` (`wk_ware_emp_id`),
  CONSTRAINT `wk_ware_emp_id` FOREIGN KEY (`wk_ware_emp_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wk_ware_id` FOREIGN KEY (`wk_ware_id`) REFERENCES `warehouses` (`ware_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse_emp`
--

LOCK TABLES `warehouse_emp` WRITE;
/*!40000 ALTER TABLE `warehouse_emp` DISABLE KEYS */;
INSERT INTO `warehouse_emp` VALUES (5,11),(4,12),(3,13),(2,14),(1,15),(2,16),(3,18);
/*!40000 ALTER TABLE `warehouse_emp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouses` (
  `ware_name` varchar(50) NOT NULL,
  `ware_id` int NOT NULL AUTO_INCREMENT,
  `ware_street` varchar(20) NOT NULL,
  `ware_city` varchar(20) NOT NULL,
  `ware_province` varchar(10) NOT NULL,
  `ware_country` varchar(15) NOT NULL,
  `ware_postal_code` varchar(10) NOT NULL,
  `ware_contact_name` varchar(50) NOT NULL,
  `ware_contact_phone_number` varchar(15) NOT NULL,
  `ware_contact_email` varchar(100) NOT NULL,
  `ware_tax` varchar(20) NOT NULL,
  `ware_manager_id` int NOT NULL,
  PRIMARY KEY (`ware_id`),
  KEY `ware_manager_id` (`ware_manager_id`),
  CONSTRAINT `ware_manager_id` FOREIGN KEY (`ware_manager_id`) REFERENCES `employees` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouses`
--

LOCK TABLES `warehouses` WRITE;
/*!40000 ALTER TABLE `warehouses` DISABLE KEYS */;
INSERT INTO `warehouses` VALUES ('GreatNorth Storage',1,'12 Bay St','Toronto','ON','Canada','M5J 2N8','Emma Taylor','416-555-2387','emma.taylor@gnstorage.ca','BN135790001RT0001',15),('PrairieCold Depot',2,'45 Main Rd','Winnipeg','MB','Canada','R3C 3A5','Liam Martin','204-555-6732','liam.martin@prairiecold.ca','BN246880002RT0002',14),('WestHub Logistics',3,'78 King St','Vancouver','BC','Canada','V6B 2L1','Olivia Harris','604-555-9145','olivia.harris@westhub.ca','BN357990003RT0003',13),('TrueNorth Storage',4,'33 Pine St','Calgary','AB','Canada','T2P 2S5','Noah Campbell','403-555-7219','noah.campbell@tnstorage.ca','BN468100004RT0004',12),('Atlantic Warehouses',5,'20 Duke St','Halifax','NS','Canada','B3J 3M5','Sophia Clark','902-555-6854','sophia.clark@atlware.ca','BN579210005RT0005',11);
/*!40000 ALTER TABLE `warehouses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `products_per_warehouse`
--

/*!50001 DROP VIEW IF EXISTS `products_per_warehouse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cp363group29`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `products_per_warehouse` AS select `w`.`ware_id` AS `ware_id`,`w`.`ware_name` AS `ware_name`,count(distinct `ip`.`inv_prod_id`) AS `total_product_types`,sum(`ip`.`inv_quantity`) AS `total_items` from (`warehouses` `w` join `inventory_product` `ip` on((`w`.`ware_id` = `ip`.`inv_prod_ware_id`))) group by `w`.`ware_id`,`w`.`ware_name` order by `total_product_types` desc,`total_items` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_value_per_customer_order`
--

/*!50001 DROP VIEW IF EXISTS `total_value_per_customer_order`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cp363group29`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_value_per_customer_order` AS select `customers`.`cus_name` AS `cus_name`,round(sum((`products`.`prod_price` * 1.0)),2) AS `total_order` from ((`customers` join `cus_order` on((`customers`.`cus_id` = `cus_order`.`cus_order_cus_id`))) join `products` on((`cus_order`.`cus_order_prod` = `products`.`prod_id`))) group by `customers`.`cus_name` order by `total_order` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_value_per_warehouse`
--

/*!50001 DROP VIEW IF EXISTS `total_value_per_warehouse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cp363group29`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `total_value_per_warehouse` AS select `w`.`ware_id` AS `ware_id`,`w`.`ware_name` AS `ware_name`,round(sum((`p`.`prod_price` * `ip`.`inv_quantity`)),2) AS `total_value` from ((`warehouses` `w` join `inventory_product` `ip` on((`w`.`ware_id` = `ip`.`inv_prod_ware_id`))) join `products` `p` on((`p`.`prod_id` = `ip`.`inv_prod_id`))) group by `w`.`ware_id`,`w`.`ware_name` order by `total_value` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_product_stock_overview`
--

/*!50001 DROP VIEW IF EXISTS `v_product_stock_overview`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_product_stock_overview` AS select `p`.`prod_id` AS `prod_id`,`p`.`prod_name` AS `prod_name`,`p`.`prod_price` AS `prod_price`,(select coalesce(sum(`ip`.`inv_quantity`),0) from `inventory_product` `ip` where (`ip`.`inv_prod_id` = `p`.`prod_id`)) AS `total_units`,(case when (((select sum(`ip2`.`inv_quantity`) from `inventory_product` `ip2`) is null) or ((select sum(`ip2`.`inv_quantity`) from `inventory_product` `ip2`) = 0)) then 0 else round(((100.0 * (select coalesce(sum(`ip`.`inv_quantity`),0) from `inventory_product` `ip` where (`ip`.`inv_prod_id` = `p`.`prod_id`))) / (select sum(`ip2`.`inv_quantity`) from `inventory_product` `ip2`)),2) end) AS `pct_of_all_units` from `products` `p` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_products_per_warehouse`
--

/*!50001 DROP VIEW IF EXISTS `v_products_per_warehouse`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`cp363group29`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `v_products_per_warehouse` AS select `w`.`ware_id` AS `ware_id`,`w`.`ware_name` AS `ware_name`,count(distinct `ip`.`inv_prod_id`) AS `total_product_types`,sum(`ip`.`inv_quantity`) AS `total_items` from (`warehouses` `w` join `inventory_product` `ip` on((`w`.`ware_id` = `ip`.`inv_prod_ware_id`))) group by `w`.`ware_id`,`w`.`ware_name` order by `total_product_types` desc,`total_items` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-07  0:59:56
