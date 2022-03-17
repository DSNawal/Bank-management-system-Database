-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bankk mangement system
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `Account_Id` int NOT NULL,
  `Account_Type` varchar(45) NOT NULL,
  `IBAN_number` int NOT NULL,
  `Password` varchar(65) NOT NULL,
  `Opened_date` varchar(70) DEFAULT NULL,
  `Client_ID` int NOT NULL,
  PRIMARY KEY (`Account_Id`),
  UNIQUE KEY `IBAN_number_UNIQUE` (`IBAN_number`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1026381,'Saving account',1926346092,'1423','23-3-2020',172345678),(1028938,'Saving account',1367296901,'3849','25-6-2019',1118463904),(1209646,'Saving account',1456789658,'8798','07-01-2020',1118463904),(1255587,'Current account',1675298973,'0394','11-5-2010',1523456654),(1345985,'Saving account',1448094380,'7658','06-03-2007',1029456782),(1384573,'Current account',1006572532,'7773','19-7-2018',1029456782),(1390477,'Saving account',1479898673,'3667','09-05-2017',1523456654),(1450984,'Saving account',1123876530,'0945','09-05-2008',1083457894),(1736287,'Current account',1736489373,'8897','01-11-2003',1118463904),(1752985,'Current account',1237642757,'2206','08-2-2009',1028463802),(1836835,'Saving account',1123661289,'5445','27-8-2007',1126452708),(1882769,'Current account',1927353162,'8902','16-01-2011',1623456781),(1926736,'Current account',1572691062,'8974','03-3-2000',1123042980),(1928472,'Current account',1739172398,'7398','02-6-2005',1126452708),(1935485,'Saving account',1823447833,'1283','06-02-2019',1028463802),(1938462,'Current account',1828343992,'2372','05-08-2018',172345678);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avrageincome`
--

DROP TABLE IF EXISTS `avrageincome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avrageincome` (
  `clientt_ID` int NOT NULL,
  `income` varchar(45) DEFAULT NULL,
  `silver_card` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`clientt_ID`),
  CONSTRAINT `clientt_ID` FOREIGN KEY (`clientt_ID`) REFERENCES `client` (`Client_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avrageincome`
--

LOCK TABLES `avrageincome` WRITE;
/*!40000 ALTER TABLE `avrageincome` DISABLE KEYS */;
INSERT INTO `avrageincome` VALUES (1028463802,'4000','avrage income'),(1118463904,'5000','avrage income');
/*!40000 ALTER TABLE `avrageincome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `Branch_ID` int NOT NULL,
  `Branch_name` varchar(100) DEFAULT NULL,
  `Telphone_Number` int DEFAULT NULL,
  `Street` varchar(50) DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `neighborhood` varchar(50) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  PRIMARY KEY (`Branch_ID`),
  UNIQUE KEY `Telphone_Number` (`Telphone_Number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (92,'Althlia',128421,'20','jeddah','althlia',2966),(352,'Althlia',126629,'30','jeddah','althlia',2905),(391,'Alnsem',123493,'60','jeddah','althlia',4907),(392,'Althlia',128493,'60','jeddah','althlia',2907),(394,'flstin',127493,'90','jeddah','althlia',2987),(396,'Almrwa',123403,'40','jeddah','althlia',2904),(795,'Alhmra',128490,'70','jeddah','althlia',2936),(802,'Albasaten',1200493,'88','jeddah','Albasaten',7003);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `client` (
  `Client_ID` int NOT NULL,
  `Client_name` varchar(50) DEFAULT NULL,
  `Date_of_birth` varchar(50) DEFAULT NULL,
  `Client_nationality` varchar(100) DEFAULT NULL,
  `Street` int DEFAULT NULL,
  `City` varchar(50) DEFAULT NULL,
  `neighborhood` varchar(50) DEFAULT NULL,
  `postalcode` int DEFAULT NULL,
  `phone_Number` int DEFAULT NULL,
  `Client_email` varchar(200) DEFAULT NULL,
  `income` int DEFAULT NULL,
  `employee_id` int DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  KEY `employee_id_idx` (`employee_id`),
  CONSTRAINT `employee_id` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (101087691,'Jana','3-9-1980','saudi',7,'Makkah','Al-Aziziz',25470,501499807,'jana77@gmail.com',15000,4012),(111223278,'Ohood Alshikh','2-6-1996','Saudi',5,'Jeddah','Al-Marwa',25534,567106690,'Ot@gmail.com',15000,4013),(172345678,'Raghad','18-2-2000','Saudi',12,'Jeddah','Alnasem',1321,59335682,'r.1@gmail.com',15000,4014),(1028463802,'Ghada','13-2-2000','Saudi',19,'Riyadh','Alworod',217,531129943,'rajv0@gmail.com',4000,4015),(1029456782,'Ohod','19-1-2000','Saudi',13,'Asir','Alslam',1363,521093678,'hi99@icloud.com',1500,4016),(1118463904,'Layla','18-8-1990','Saudi',13,'Taif','Alshfa',2190,542189430,'o1fv3@yahoo.com',5000,4017),(1123042980,'Wed','11-11-1999','Saudi',14,'Jeddah','Alhamra',9636,591295290,'napoe166@icloud.com',12000,4018),(1126452708,'Nuha','10-5-1990','Saudi',16,'Abha','Almrwa',9638,500552792,'mgaohc2@hotmail.com',9000,4019),(1523456654,'Nawal','13-6-2000','Saudi',11,'Riydh','Altahlia',1678,532873094,'hagx11@gmail.com',1000,NULL),(1623456781,'Joud','1-3-2000','Saudi',17,'Jeddah','Alfyhaa',5438,559310053,'now32@yahoo.com',8500,NULL);
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `current_account`
--

DROP TABLE IF EXISTS `current_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `current_account` (
  `Account_Id` int NOT NULL,
  `Account_Type` varchar(65) NOT NULL,
  `Check_Book` varchar(45) DEFAULT NULL,
  KEY `Account_ID_idx` (`Account_Id`),
  CONSTRAINT `Account_ID` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Account_Id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `current_account`
--

LOCK TABLES `current_account` WRITE;
/*!40000 ALTER TABLE `current_account` DISABLE KEYS */;
INSERT INTO `current_account` VALUES (1255587,'Current account','Receive it'),(1384573,'Current account','didn\'t ask'),(1736287,'Current account','didn\'t ask'),(1752985,'Current account','Receive it'),(1882769,'Current account','Receive it'),(1926736,'Current account','didn\'t ask'),(1928472,'Current account','didn\'t ask'),(1938462,'Current account','Receive it');
/*!40000 ALTER TABLE `current_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `descriptionloan`
--

DROP TABLE IF EXISTS `descriptionloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `descriptionloan` (
  `Loan_Type` varchar(50) NOT NULL,
  `Description` varchar(600) NOT NULL,
  PRIMARY KEY (`Loan_Type`,`Description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `descriptionloan`
--

LOCK TABLES `descriptionloan` WRITE;
/*!40000 ALTER TABLE `descriptionloan` DISABLE KEYS */;
INSERT INTO `descriptionloan` VALUES (' Credit card loans',' the loan is used in both sales and short-term financial financing'),(' Investment loan','  a loan to be repaid over a period of thirty years, or more. And this type of loan is long-term.'),(' Personal loans',' It is a loan that the customer pay the loan amount after adding the cost of financing in monthly installments for a period not exceeding 5 years'),(' Real estate loans',' It is a loan for individuals wishing to buy, rent or restore a property'),(' Study loan',' A type of loan designed to help students pay for post-secondary education and associated fees'),(' Travel loan',' Travel loans are a type of loan provided by the bank, which are requested in order to meet the large expenses that travel requires.');
/*!40000 ALTER TABLE `descriptionloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `Employee_Id` int NOT NULL,
  `Employee_Name` varchar(80) NOT NULL,
  `Salary` double NOT NULL,
  `Years_of_Experience` int NOT NULL,
  `Employee_nationality` varchar(60) NOT NULL,
  `Date_of_Birth` varchar(80) NOT NULL,
  `Employee_gender` varchar(45) NOT NULL,
  `Department` varchar(80) NOT NULL,
  `Contact_number` int NOT NULL,
  `Employee_email` varchar(90) NOT NULL,
  `Street` varchar(90) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Postal_code` varchar(45) NOT NULL,
  `Branch_ID` int DEFAULT NULL,
  `Manger_ID` int NOT NULL,
  PRIMARY KEY (`Employee_Id`),
  KEY `Branch_ID_idx` (`Branch_ID`),
  KEY `Date_of_Birth_UNIQUE` (`Date_of_Birth`),
  CONSTRAINT `Branch_ID` FOREIGN KEY (`Branch_ID`) REFERENCES `branch` (`Branch_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (4012,'Nawal ',5000,2,'Saudi','20-02-1988','Female','Credit Department',583782822,'Nawal.aw1432@gmail.com','Althlia','Jeedah','9389',352,4018),(4013,'Amal',6000,3,'Saudi','10-04-1990','Female','Credit Department',593810243,'Aml12aw@gmail.com','almaroh','Jeedah','1136',391,4016),(4014,'Ali',3500,0,'Saudi','21-05-1991','male','Financial Department',592610229,'aliahmad@gmail.com','alsilmani','Jeedah','9734',391,4016),(4015,'Ahmad',7000,4,'Saudi','15-03-1987','male','Financial Department',572821321,'Ahmm12@gmail.com','aljmah','Jeedah','9253',394,4018),(4016,'Salwa',9000,6,'Saudi','03-05-1996','Female','Credit Department',539918938,'Salwall22@gmail.com','Albgddeh','Jeedah','8437',802,4019),(4017,'Khalid',4000,1,'Saudi','03-05-1982','Male','Financial Department',591487321,'Kali98@gmail.com','Almiah','Jeedah','8711',795,4019),(4018,'Raghed',20000,12,'Saudi','30-02-1972','Female','IT DEPARTMENT',553918746,'RRaghed074@gmail.com','alsten','Jeedah','9283',391,4018),(4019,'Ohod',20000,9,'Saudi','20-07-1988','Female','Credit Department',527991279,'ohodalsh5@gmail.com','almgbrah','Jeedah','1662',394,4019);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `highincome`
--

DROP TABLE IF EXISTS `highincome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `highincome` (
  `Client_ID` int NOT NULL,
  `income` int NOT NULL,
  `gold_card` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`income`,`Client_ID`),
  KEY `client_ID_idx` (`Client_ID`),
  KEY `Client_ID` (`Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `highincome`
--

LOCK TABLES `highincome` WRITE;
/*!40000 ALTER TABLE `highincome` DISABLE KEYS */;
INSERT INTO `highincome` VALUES (101087691,50000,'high income'),(111223278,50000,'high income');
/*!40000 ALTER TABLE `highincome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loan`
--

DROP TABLE IF EXISTS `loan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loan` (
  `Loan_ID` int NOT NULL,
  `Loan_Type` varchar(100) DEFAULT NULL,
  `Date_Of_Loan` varchar(100) DEFAULT NULL,
  `Duration` varchar(100) DEFAULT NULL,
  `Total_Amount` int DEFAULT NULL,
  `Statue` varchar(600) DEFAULT NULL,
  `Loan_interest` int DEFAULT NULL,
  `Employee_Id` int DEFAULT NULL,
  `Client_Id` int DEFAULT NULL,
  `Branch_Id` int DEFAULT NULL,
  PRIMARY KEY (`Loan_ID`),
  UNIQUE KEY `Client_Id` (`Client_Id`),
  KEY `Loan_Type` (`Loan_Type`),
  KEY `Employee_Id` (`Employee_Id`),
  KEY `Branch_Id` (`Branch_Id`),
  CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`Loan_Type`) REFERENCES `descriptionloan` (`Loan_Type`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Employee_Id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_ibfk_3` FOREIGN KEY (`Client_Id`) REFERENCES `client` (`Client_ID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `loan_ibfk_4` FOREIGN KEY (`Branch_Id`) REFERENCES `branch` (`Branch_ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loan`
--

LOCK TABLES `loan` WRITE;
/*!40000 ALTER TABLE `loan` DISABLE KEYS */;
INSERT INTO `loan` VALUES (100,' Personal loans','2-4-2015','2 years',50000,'The amount has been repaid ',5000,4012,172345678,392),(101,' Personal loans','11-11-2013','5 years',300000,'The amount has been repaid ',60000,4013,1523456654,396),(102,' Real estate loans','11-6-2011','25 years',500000,'continuous',200000,4014,1029456782,394),(103,' Study loan','6-10-2019','3 years',40000,'continuous',10000,4015,1623456781,391),(104,' Real estate loans','6-6-1988','30 years',300000,'The amount has been repaid ',60000,4016,1123042980,795),(105,' Credit card loans','2-3-2018','1 years',20000,'Late in payment',1000,4017,1028463802,92),(106,' Credit card loans','1-10-2020','1 years',20000,'continuous',1000,4018,1126452708,352),(107,' Investment loan','1-1-2016','10 years',150000,'continuous',15000,4019,1118463904,802),(108,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(109,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(110,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(111,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(112,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(113,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(114,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(115,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(116,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(117,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(118,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(119,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(120,' Study loan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(121,' Real estate loans',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `loan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lowincome`
--

DROP TABLE IF EXISTS `lowincome`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lowincome` (
  `Client_ID` int NOT NULL,
  `income` int DEFAULT NULL,
  `bronze_card` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Client_ID`),
  CONSTRAINT `Client_ID` FOREIGN KEY (`Client_ID`) REFERENCES `client` (`Client_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lowincome`
--

LOCK TABLES `lowincome` WRITE;
/*!40000 ALTER TABLE `lowincome` DISABLE KEYS */;
INSERT INTO `lowincome` VALUES (1029456782,1500,'low income'),(1523456654,1000,'low income');
/*!40000 ALTER TABLE `lowincome` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realestateloan`
--

DROP TABLE IF EXISTS `realestateloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realestateloan` (
  `Loan_ID` int NOT NULL,
  `Loan_Type` varchar(50) NOT NULL,
  `mortgaaes` varchar(600) DEFAULT NULL,
  PRIMARY KEY (`Loan_ID`,`Loan_Type`),
  KEY `Loan_Type` (`Loan_Type`),
  CONSTRAINT `realestateloan_ibfk_1` FOREIGN KEY (`Loan_ID`) REFERENCES `loan` (`Loan_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `realestateloan_ibfk_2` FOREIGN KEY (`Loan_Type`) REFERENCES `descriptionloan` (`Loan_Type`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realestateloan`
--

LOCK TABLES `realestateloan` WRITE;
/*!40000 ALTER TABLE `realestateloan` DISABLE KEYS */;
INSERT INTO `realestateloan` VALUES (102,' Real estate loans',' House '),(108,' Real estate loans',' House '),(109,' Real estate loans',' Residential Building'),(110,' Real estate loans',' Residential Building'),(111,' Real estate loans',' House '),(112,' Real estate loans',' Residential Building'),(114,' Real estate loans',' House '),(115,' Real estate loans',' Residential Building'),(121,' Real estate loans',' Residential Building');
/*!40000 ALTER TABLE `realestateloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `saving_account`
--

DROP TABLE IF EXISTS `saving_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `saving_account` (
  `Account_Id` int NOT NULL,
  `Account_Type` varchar(65) NOT NULL,
  `Interst` double NOT NULL,
  KEY `Acccount_Id_idx` (`Account_Id`),
  CONSTRAINT `Acccount_Id` FOREIGN KEY (`Account_Id`) REFERENCES `account` (`Account_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `saving_account`
--

LOCK TABLES `saving_account` WRITE;
/*!40000 ALTER TABLE `saving_account` DISABLE KEYS */;
INSERT INTO `saving_account` VALUES (1026381,'Saving account',0.05),(1028938,'Saving account',0.02),(1209646,'Saving account',0.01),(1345985,'Saving account',0.05),(1390477,'Saving account',0.02),(1450984,'Saving account',0.03),(1836835,'Saving account',0.03),(1935485,'Saving account',0.01);
/*!40000 ALTER TABLE `saving_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_Id` int NOT NULL,
  `SchoolName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`student_Id`),
  UNIQUE KEY `student_Id` (`student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1112,' University of Business and Technologe '),(1134,' University of Business and Technologe '),(1190,' Al Faisal University '),(1712,' Effat University '),(1982,' Al Faisal University '),(3411,' dar Al hekma University '),(3455,' dar Al hekma University '),(5612,' Effat University ');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studyloan`
--

DROP TABLE IF EXISTS `studyloan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studyloan` (
  `Loan_ID` int NOT NULL,
  `Loan_Type` varchar(50) NOT NULL,
  `student_Id` int NOT NULL,
  PRIMARY KEY (`Loan_ID`,`Loan_Type`),
  KEY `Loan_Type` (`Loan_Type`),
  KEY `student_Id` (`student_Id`),
  CONSTRAINT `studyloan_ibfk_1` FOREIGN KEY (`Loan_ID`) REFERENCES `loan` (`Loan_ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `studyloan_ibfk_2` FOREIGN KEY (`Loan_Type`) REFERENCES `descriptionloan` (`Loan_Type`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `studyloan_ibfk_3` FOREIGN KEY (`student_Id`) REFERENCES `student` (`student_Id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studyloan`
--

LOCK TABLES `studyloan` WRITE;
/*!40000 ALTER TABLE `studyloan` DISABLE KEYS */;
INSERT INTO `studyloan` VALUES (120,' Study loan',1112),(121,' Study loan',1134),(118,' Study loan',1190),(114,' Study loan',1712),(119,' Study loan',1712),(104,' Study loan',1982),(117,' Study loan',3411),(116,' Study loan',5612);
/*!40000 ALTER TABLE `studyloan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `the_loan_amount`
--

DROP TABLE IF EXISTS `the_loan_amount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `the_loan_amount` (
  `Loan_ID` int NOT NULL,
  `Total_Amount` int NOT NULL,
  `RemainingAmount` int NOT NULL,
  PRIMARY KEY (`Loan_ID`,`Total_Amount`),
  CONSTRAINT `the_loan_amount_ibfk_1` FOREIGN KEY (`Loan_ID`) REFERENCES `loan` (`Loan_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `the_loan_amount`
--

LOCK TABLES `the_loan_amount` WRITE;
/*!40000 ALTER TABLE `the_loan_amount` DISABLE KEYS */;
INSERT INTO `the_loan_amount` VALUES (100,50000,0),(101,300000,0),(102,500000,10000),(103,500000,10000),(104,40000,20000),(105,300000,0),(106,20000,6000),(107,20000,10000),(108,150000,9000);
/*!40000 ALTER TABLE `the_loan_amount` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-01 23:08:25
