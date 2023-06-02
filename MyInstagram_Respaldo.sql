-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: myInstagram
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `fotos`
--

DROP TABLE IF EXISTS `fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fotos` (
  `PK_FOTO` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_USER` int(11) DEFAULT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`PK_FOTO`),
  KEY `FK_ID_USER` (`FK_ID_USER`),
  CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`FK_ID_USER`) REFERENCES `users` (`PK_ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fotos`
--

LOCK TABLES `fotos` WRITE;
/*!40000 ALTER TABLE `fotos` DISABLE KEYS */;
INSERT INTO `fotos` VALUES (1,1,'Meet me at midnight.'),(2,1,'Anti hero but make ir acoustic'),(3,2,NULL),(4,2,NULL),(5,2,'<3'),(6,3,'Great team spirit!'),(7,4,NULL),(8,4,NULL),(9,4,NULL),(10,4,NULL),(11,4,NULL);
/*!40000 ALTER TABLE `fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidores`
--

DROP TABLE IF EXISTS `seguidores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguidores` (
  `PK_ID_SEGUIDORES` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_USER` int(11) DEFAULT NULL,
  `seguidores` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PK_ID_SEGUIDORES`),
  KEY `FK_ID_USER` (`FK_ID_USER`),
  CONSTRAINT `seguidores_ibfk_1` FOREIGN KEY (`FK_ID_USER`) REFERENCES `users` (`PK_ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidores`
--

LOCK TABLES `seguidores` WRITE;
/*!40000 ALTER TABLE `seguidores` DISABLE KEYS */;
INSERT INTO `seguidores` VALUES (1,1,'selenagomez'),(2,1,'gigihadid'),(3,2,'j.m'),(4,2,'uarmyhope'),(5,2,'bts.bighitofficial'),(6,3,'waynerooney'),(7,3,'leomessi'),(8,4,'toni.starr');
/*!40000 ALTER TABLE `seguidores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seguidos`
--

DROP TABLE IF EXISTS `seguidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seguidos` (
  `PK_ID_SEGUIDOS` int(11) NOT NULL AUTO_INCREMENT,
  `FK_ID_USER` int(11) DEFAULT NULL,
  `seguidos` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`PK_ID_SEGUIDOS`),
  KEY `FK_ID_USER` (`FK_ID_USER`),
  CONSTRAINT `seguidos_ibfk_1` FOREIGN KEY (`FK_ID_USER`) REFERENCES `users` (`PK_ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seguidos`
--

LOCK TABLES `seguidos` WRITE;
/*!40000 ALTER TABLE `seguidos` DISABLE KEYS */;
INSERT INTO `seguidos` VALUES (1,2,'j.m'),(2,2,'rkive'),(3,2,'thv'),(4,3,'earling.haaland'),(5,3,'xavi'),(6,4,'eminem'),(7,4,'bryancranston');
/*!40000 ALTER TABLE `seguidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `PK_ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(25) DEFAULT NULL,
  `nombre` varchar(25) DEFAULT NULL,
  `telefono` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`PK_ID_USER`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Taylorswift','Taylor Swift','5526487953'),(2,'Jin','Jin of BTS','5548731648'),(3,'cristiano','Cristiano Ronaldo','5545879996'),(4,'robertpattinsonv','Robert Pattinson','5578963452');
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

-- Dump completed on 2023-06-01 22:45:32
