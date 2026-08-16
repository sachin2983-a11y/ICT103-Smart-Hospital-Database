-- MySQL dump 10.13  Distrib 8.0.46, for Linux (x86_64)
--
-- Host: localhost    Database: ICT103DATABASE_SACHINgILL
-- ------------------------------------------------------
-- Server version	8.0.46-0ubuntu0.24.04.3

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Administrative_Staff`
--

DROP TABLE IF EXISTS `Administrative_Staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Administrative_Staff` (
  `Employee_ID` int NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Office_Number` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Employee_ID`),
  CONSTRAINT `Administrative_Staff_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrative_Staff`
--

LOCK TABLES `Administrative_Staff` WRITE;
/*!40000 ALTER TABLE `Administrative_Staff` DISABLE KEYS */;
INSERT INTO `Administrative_Staff` VALUES (21,'Hospital Administrator','A101'),(22,'Reception Manager','A102'),(23,'Finance Officer','A103'),(24,'HR Officer','A104'),(25,'Admissions Officer','A105'),(26,'Medical Records Officer','A106'),(27,'Billing Officer','A107'),(28,'Scheduling Officer','A108'),(29,'IT Support Officer','A109'),(30,'Operations Coordinator','A110');
/*!40000 ALTER TABLE `Administrative_Staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Appointment`
--

DROP TABLE IF EXISTS `Appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Appointment` (
  `Appointment_ID` int NOT NULL,
  `Patient_ID` int NOT NULL,
  `Doctor_ID` int NOT NULL,
  `Appointment_Date` date NOT NULL,
  `Appointment_Time` time NOT NULL,
  `Status` varchar(30) NOT NULL,
  PRIMARY KEY (`Appointment_ID`),
  KEY `Patient_ID` (`Patient_ID`),
  KEY `Doctor_ID` (`Doctor_ID`),
  CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`Patient_ID`) REFERENCES `Patient` (`Patient_ID`),
  CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`Doctor_ID`) REFERENCES `Doctor` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Appointment`
--

LOCK TABLES `Appointment` WRITE;
/*!40000 ALTER TABLE `Appointment` DISABLE KEYS */;
INSERT INTO `Appointment` VALUES (1,1,1,'2026-08-01','09:00:00','Completed'),(2,1,2,'2026-08-05','10:30:00','Completed'),(3,2,3,'2026-08-02','11:00:00','Completed'),(4,3,4,'2026-08-03','14:00:00','Completed'),(5,3,5,'2026-08-07','09:30:00','Completed'),(6,4,6,'2026-08-04','15:00:00','Completed'),(7,5,7,'2026-08-06','13:00:00','Completed'),(8,6,8,'2026-08-08','10:00:00','Scheduled'),(9,7,9,'2026-08-09','11:30:00','Completed'),(10,8,10,'2026-08-10','16:00:00','Scheduled');
/*!40000 ALTER TABLE `Appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Billing`
--

DROP TABLE IF EXISTS `Billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Billing` (
  `Bill_ID` int NOT NULL,
  `Appointment_ID` int NOT NULL,
  `Charges` decimal(10,2) NOT NULL,
  `Payment_Date` date DEFAULT NULL,
  `Payment_Method` varchar(30) DEFAULT NULL,
  `Payment_Status` varchar(30) NOT NULL,
  PRIMARY KEY (`Bill_ID`),
  UNIQUE KEY `Appointment_ID` (`Appointment_ID`),
  CONSTRAINT `Billing_ibfk_1` FOREIGN KEY (`Appointment_ID`) REFERENCES `Appointment` (`Appointment_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Billing`
--

LOCK TABLES `Billing` WRITE;
/*!40000 ALTER TABLE `Billing` DISABLE KEYS */;
INSERT INTO `Billing` VALUES (1,1,250.00,'2026-08-01','Card','Paid'),(2,2,280.00,'2026-08-05','Card','Paid'),(3,3,220.00,'2026-08-02','Cash','Paid'),(4,4,260.00,'2026-08-03','Card','Paid'),(5,5,230.00,'2026-08-07','Online','Paid'),(6,6,300.00,'2026-08-04','Card','Paid'),(7,7,210.00,'2026-08-06','Cash','Paid'),(8,8,275.00,NULL,NULL,'Pending'),(9,9,240.00,'2026-08-09','Online','Paid'),(10,10,200.00,NULL,NULL,'Pending');
/*!40000 ALTER TABLE `Billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Department`
--

DROP TABLE IF EXISTS `Department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Department` (
  `Department_ID` int NOT NULL,
  `Department_Name` varchar(100) NOT NULL,
  `Department_Details` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Department`
--

LOCK TABLES `Department` WRITE;
/*!40000 ALTER TABLE `Department` DISABLE KEYS */;
INSERT INTO `Department` VALUES (1,'Cardiology','Diagnosis and treatment of heart conditions'),(2,'Neurology','Treatment of disorders of the nervous system'),(3,'Emergency','Emergency and urgent medical care'),(4,'Orthopaedics','Treatment of bones, joints and muscles'),(5,'Paediatrics','Medical care for children'),(6,'Oncology','Diagnosis and treatment of cancer'),(7,'Dermatology','Treatment of skin conditions'),(8,'Gastroenterology','Treatment of digestive system disorders'),(9,'Radiology','Medical imaging and diagnostic services'),(10,'General Medicine','General medical diagnosis and treatment');
/*!40000 ALTER TABLE `Department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Doctor` (
  `Employee_ID` int NOT NULL,
  `Medical_Registration_No` varchar(50) NOT NULL,
  `Specialization` varchar(100) NOT NULL,
  `Consultation_Fee` decimal(10,2) NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  UNIQUE KEY `Medical_Registration_No` (`Medical_Registration_No`),
  CONSTRAINT `FK_Doctor_Employee` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'MED10001','Cardiology',250.00),(2,'MED10002','Neurology',280.00),(3,'MED10003','Emergency Medicine',220.00),(4,'MED10004','Orthopaedics',260.00),(5,'MED10005','Paediatrics',230.00),(6,'MED10006','Oncology',300.00),(7,'MED10007','Dermatology',210.00),(8,'MED10008','Gastroenterology',275.00),(9,'MED10009','Radiology',240.00),(10,'MED10010','General Medicine',200.00);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Employee`
--

DROP TABLE IF EXISTS `Employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Employee` (
  `Employee_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Department_ID` int NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  KEY `Department_ID` (`Department_ID`),
  CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `Department` (`Department_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Employee`
--

LOCK TABLES `Employee` WRITE;
/*!40000 ALTER TABLE `Employee` DISABLE KEYS */;
INSERT INTO `Employee` VALUES (1,'James','Anderson','0411000001','james.anderson@hospital.com','1980-03-15',1),(2,'Sarah','Williams','0411000002','sarah.williams@hospital.com','1982-07-21',2),(3,'Michael','Brown','0411000003','michael.brown@hospital.com','1978-11-09',3),(4,'Emily','Taylor','0411000004','emily.taylor@hospital.com','1985-01-27',4),(5,'Daniel','Wilson','0411000005','daniel.wilson@hospital.com','1979-05-18',5),(6,'Olivia','Martin','0411000006','olivia.martin@hospital.com','1983-09-12',6),(7,'William','Thompson','0411000007','william.thompson@hospital.com','1981-12-03',7),(8,'Sophia','Moore','0411000008','sophia.moore@hospital.com','1986-04-25',8),(9,'Matthew','Clark','0411000009','matthew.clark@hospital.com','1977-08-30',9),(10,'Charlotte','Lewis','0411000010','charlotte.lewis@hospital.com','1984-06-14',10),(11,'Ethan','Harris','0411000011','ethan.harris@hospital.com','1988-02-11',1),(12,'Grace','Walker','0411000012','grace.walker@hospital.com','1990-05-16',2),(13,'Lucas','Hall','0411000013','lucas.hall@hospital.com','1987-08-22',3),(14,'Amelia','Allen','0411000014','amelia.allen@hospital.com','1991-03-09',4),(15,'Alexander','Young','0411000015','alexander.young@hospital.com','1989-11-25',5),(16,'Ella','King','0411000016','ella.king@hospital.com','1992-07-14',6),(17,'Benjamin','Wright','0411000017','benjamin.wright@hospital.com','1986-12-18',7),(18,'Chloe','Scott','0411000018','chloe.scott@hospital.com','1993-04-28',8),(19,'Jack','Green','0411000019','jack.green@hospital.com','1985-09-06',9),(20,'Lily','Baker','0411000020','lily.baker@hospital.com','1994-01-30',10),(21,'Henry','Adams','0411000021','henry.adams@hospital.com','1980-06-12',1),(22,'Sophie','Nelson','0411000022','sophie.nelson@hospital.com','1988-10-03',2),(23,'Daniel','Carter','0411000023','daniel.carter@hospital.com','1983-02-19',3),(24,'Ruby','Mitchell','0411000024','ruby.mitchell@hospital.com','1991-08-07',4),(25,'Thomas','Perez','0411000025','thomas.perez@hospital.com','1982-04-15',5),(26,'Isabella','Roberts','0411000026','isabella.roberts@hospital.com','1987-11-21',6),(27,'James','Turner','0411000027','james.turner@hospital.com','1985-05-10',7),(28,'Mia','Phillips','0411000028','mia.phillips@hospital.com','1990-09-17',8),(29,'Samuel','Campbell','0411000029','samuel.campbell@hospital.com','1984-12-05',9),(30,'Emily','Parker','0411000030','emily.parker@hospital.com','1992-06-26',10);
/*!40000 ALTER TABLE `Employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nurse`
--

DROP TABLE IF EXISTS `Nurse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Nurse` (
  `Employee_ID` int NOT NULL,
  `Shift` varchar(50) NOT NULL,
  `Qualification` varchar(100) NOT NULL,
  PRIMARY KEY (`Employee_ID`),
  CONSTRAINT `Nurse_ibfk_1` FOREIGN KEY (`Employee_ID`) REFERENCES `Employee` (`Employee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nurse`
--

LOCK TABLES `Nurse` WRITE;
/*!40000 ALTER TABLE `Nurse` DISABLE KEYS */;
INSERT INTO `Nurse` VALUES (11,'Morning','Registered Nurse'),(12,'Evening','Bachelor of Nursing'),(13,'Night','Registered Nurse'),(14,'Morning','Bachelor of Nursing'),(15,'Evening','Registered Nurse'),(16,'Night','Master of Nursing'),(17,'Morning','Registered Nurse'),(18,'Evening','Bachelor of Nursing'),(19,'Night','Registered Nurse'),(20,'Morning','Bachelor of Nursing');
/*!40000 ALTER TABLE `Nurse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Patient` (
  `Patient_ID` int NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Patient_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Liam','Smith','1995-02-14','Male','0422000001','liam.smith@email.com','12 King Street'),(2,'Emma','Johnson','1990-06-22','Female','0422000002','emma.johnson@email.com','25 Park Road'),(3,'Noah','Williams','1988-09-10','Male','0422000003','noah.williams@email.com','31 Victoria Avenue'),(4,'Ava','Brown','1997-11-05','Female','0422000004','ava.brown@email.com','44 George Street'),(5,'Oliver','Jones','1985-04-18','Male','0422000005','oliver.jones@email.com','8 Queen Street'),(6,'Mia','Davis','1992-07-30','Female','0422000006','mia.davis@email.com','17 Albert Road'),(7,'William','Miller','1979-12-12','Male','0422000007','william.miller@email.com','52 Edward Street'),(8,'Isla','Wilson','2000-03-27','Female','0422000008','isla.wilson@email.com','9 Elizabeth Street'),(9,'Henry','Moore','1993-06-08','Male','0422000009','henry.moore@email.com','63 Collins Street'),(10,'Sophia','Taylor','1987-10-19','Female','0422000010','sophia.taylor@email.com','21 Market Street');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ICT103DATABASE_SACHINgILL'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-16 10:18:27
