CREATE DATABASE  IF NOT EXISTS `dbpirates` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dbpirates`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: dbpirates
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `crew`
--

DROP TABLE IF EXISTS `crew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `crew` (
  `crewid` int NOT NULL AUTO_INCREMENT,
  `piratename` varchar(150) NOT NULL,
  `givenname` varchar(150) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `bounty` double NOT NULL,
  `prgid` int DEFAULT NULL,
  PRIMARY KEY (`crewid`),
  KEY `prgid` (`prgid`),
  CONSTRAINT `crew_ibfk_1` FOREIGN KEY (`prgid`) REFERENCES `pirategroup` (`prgid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crew`
--

LOCK TABLES `crew` WRITE;
/*!40000 ALTER TABLE `crew` DISABLE KEYS */;
INSERT INTO `crew` (`crewid`, `piratename`, `givenname`, `age`, `bounty`, `prgid`) VALUES (1,'Straw Hat Luffy','Monkey D. Luffy',19,3000000000,1),(2,'Pirate Hunter','Roronoa Zoro',21,1111000000,1),(3,'Cat Burglar','Nami',20,366000000,1),(4,'God Usopp','Usopp',19,500000000,1),(5,'Black Leg','Vinsmoke Sanji',21,1032000000,1),(6,'Cotton Candy Lover','Tony Tony Chopper',17,1000,1),(7,'Devil Child','Nico Robin',30,930000000,1),(8,'Iron Man','Franky',36,394000000,1),(9,'Sou King','Brook',90,383000000,1),(10,'Knight of the Sea','Jinbei',46,1100000000,1),(11,'Vivi','Nefertari Vivi',18,0,1),(12,'Surgeon of Death','Trafalgar D. Water Law',26,3000000000,2);
/*!40000 ALTER TABLE `crew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pirategroup`
--

DROP TABLE IF EXISTS `pirategroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pirategroup` (
  `prgid` int NOT NULL AUTO_INCREMENT,
  `prgname` varchar(150) NOT NULL,
  `shipname` varchar(150) NOT NULL,
  PRIMARY KEY (`prgid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pirategroup`
--

LOCK TABLES `pirategroup` WRITE;
/*!40000 ALTER TABLE `pirategroup` DISABLE KEYS */;
INSERT INTO `pirategroup` (`prgid`, `prgname`, `shipname`) VALUES (1,'Straw Hat Pirates','Thousand Sunny'),(2,'Heart Pirates','Polar Tang');
/*!40000 ALTER TABLE `pirategroup` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-13  0:22:32

select * from crew;
select * from pirategroup;

Select * from crew c join pirategroup p on c.prgid = p.prgid;