-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: registromaquinas
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `alu_boleta` int NOT NULL,
  `alu_nombre` varchar(25) NOT NULL,
  `alu_appat` varchar(25) NOT NULL,
  `alu_apmat` varchar(25) NOT NULL,
  `alu_sexo` varchar(6) NOT NULL,
  `alu_fnacimiento` varchar(10) NOT NULL,
  `grup_id` int NOT NULL,
  `alu_reporte` varchar(40) DEFAULT NULL,
  `alu_contraseña` varchar(30) NOT NULL,
  PRIMARY KEY (`alu_boleta`),
  KEY `grup_id` (`grup_id`),
  CONSTRAINT `alumno_ibfk_1` FOREIGN KEY (`grup_id`) REFERENCES `grupo` (`grup_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `asi_id` int NOT NULL AUTO_INCREMENT,
  `asi_nom` varchar(30) NOT NULL,
  PRIMARY KEY (`asi_id`),
  KEY `asi_nom` (`asi_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (13,'ADP'),(2,'APTI'),(7,'APTI2'),(5,'BD'),(11,'IIP'),(17,'ISB'),(12,'ISD'),(3,'LPTI'),(6,'LPTI2'),(10,'LPTI3'),(15,'LPTI4'),(14,'MAP'),(18,'PN'),(1,'POO'),(4,'PSW'),(16,'SdS'),(9,'SWA'),(8,'TPPC');
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `configuracion`
--

DROP TABLE IF EXISTS `configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `configuracion` (
  `con_id` varchar(20) NOT NULL,
  `con_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`con_id`),
  KEY `con_descripcion` (`con_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `configuracion`
--

LOCK TABLES `configuracion` WRITE;
/*!40000 ALTER TABLE `configuracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cpu`
--

DROP TABLE IF EXISTS `cpu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cpu` (
  `cpu_id` varchar(20) NOT NULL,
  `cpu_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`cpu_id`),
  KEY `cpu_descripcion` (`cpu_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cpu`
--

LOCK TABLES `cpu` WRITE;
/*!40000 ALTER TABLE `cpu` DISABLE KEYS */;
/*!40000 ALTER TABLE `cpu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `equ_etiqueta` varchar(10) NOT NULL,
  `cpu_id` varchar(20) DEFAULT NULL,
  `mon_id` varchar(20) DEFAULT NULL,
  `mou_id` varchar(20) DEFAULT NULL,
  `tec_id` varchar(20) DEFAULT NULL,
  `con_id` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`equ_etiqueta`),
  KEY `cpu_id` (`cpu_id`),
  KEY `mon_id` (`mon_id`),
  KEY `mou_id` (`mou_id`),
  KEY `tec_id` (`tec_id`),
  KEY `con_id` (`con_id`),
  CONSTRAINT `equipo_ibfk_1` FOREIGN KEY (`cpu_id`) REFERENCES `cpu` (`cpu_id`),
  CONSTRAINT `equipo_ibfk_2` FOREIGN KEY (`mon_id`) REFERENCES `monitor` (`mon_id`),
  CONSTRAINT `equipo_ibfk_3` FOREIGN KEY (`mou_id`) REFERENCES `mouse` (`mou_id`),
  CONSTRAINT `equipo_ibfk_4` FOREIGN KEY (`tec_id`) REFERENCES `teclado` (`tec_id`),
  CONSTRAINT `equipo_ibfk_5` FOREIGN KEY (`con_id`) REFERENCES `configuracion` (`con_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupo`
--

DROP TABLE IF EXISTS `grupo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grupo` (
  `grup_id` int NOT NULL AUTO_INCREMENT,
  `grup_nom` varchar(5) NOT NULL,
  PRIMARY KEY (`grup_id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupo`
--

LOCK TABLES `grupo` WRITE;
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
INSERT INTO `grupo` VALUES (1,'3IV7'),(2,'3IV8'),(3,'3IV9'),(4,'3IV10'),(5,'4IV7'),(6,'4IV8'),(7,'4IV9'),(8,'4IV10'),(9,'5IV7'),(10,'5IV8'),(11,'5IV9'),(12,'5IV10'),(13,'6IV7'),(14,'6IV8'),(15,'6IV9'),(16,'6IV10'),(17,'3IM7'),(18,'3IM8'),(19,'3IM9'),(20,'3IM10'),(21,'4IM7'),(22,'4IM8'),(23,'4IM9'),(24,'4IM10'),(25,'5IM7'),(26,'5IM8'),(27,'5IM9'),(28,'5IM10'),(29,'6IM7'),(30,'6IM8'),(31,'6IM9'),(32,'6IM10');
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `laboratorio` (
  `lab_id` int NOT NULL AUTO_INCREMENT,
  `lab_nom` varchar(4) NOT NULL,
  PRIMARY KEY (`lab_id`),
  KEY `lab_nom` (`lab_nom`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (4,'A4.0'),(1,'LBD'),(3,'LDS'),(2,'LNT');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monitor`
--

DROP TABLE IF EXISTS `monitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monitor` (
  `mon_id` varchar(20) NOT NULL,
  `mon_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`mon_id`),
  KEY `mon_descripcion` (`mon_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monitor`
--

LOCK TABLES `monitor` WRITE;
/*!40000 ALTER TABLE `monitor` DISABLE KEYS */;
/*!40000 ALTER TABLE `monitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mouse`
--

DROP TABLE IF EXISTS `mouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mouse` (
  `mou_id` varchar(20) NOT NULL,
  `mou_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`mou_id`),
  KEY `mou_descripcion` (`mou_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mouse`
--

LOCK TABLES `mouse` WRITE;
/*!40000 ALTER TABLE `mouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `mouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reporte`
--

DROP TABLE IF EXISTS `reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reporte` (
  `rep_id` int NOT NULL AUTO_INCREMENT,
  `rep_fecha` varchar(10) NOT NULL,
  `rep_hora` varchar(10) NOT NULL,
  `lab_id` int NOT NULL,
  `equ_etiqueta` varchar(10) NOT NULL,
  `alu_boleta` int NOT NULL,
  `asi_id` int NOT NULL,
  `rep_estado` varchar(20) NOT NULL,
  `rep_rpfecha` varchar(10) NOT NULL,
  `rep_rphora` varchar(10) NOT NULL,
  PRIMARY KEY (`rep_id`),
  KEY `lab_id` (`lab_id`),
  KEY `equ_etiqueta` (`equ_etiqueta`),
  KEY `alu_boleta` (`alu_boleta`),
  KEY `asi_id` (`asi_id`),
  CONSTRAINT `reporte_ibfk_1` FOREIGN KEY (`lab_id`) REFERENCES `laboratorio` (`lab_id`),
  CONSTRAINT `reporte_ibfk_2` FOREIGN KEY (`equ_etiqueta`) REFERENCES `equipo` (`equ_etiqueta`),
  CONSTRAINT `reporte_ibfk_3` FOREIGN KEY (`alu_boleta`) REFERENCES `alumno` (`alu_boleta`),
  CONSTRAINT `reporte_ibfk_4` FOREIGN KEY (`asi_id`) REFERENCES `asignatura` (`asi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reporte`
--

LOCK TABLES `reporte` WRITE;
/*!40000 ALTER TABLE `reporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `reporte` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teclado`
--

DROP TABLE IF EXISTS `teclado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teclado` (
  `tec_id` varchar(20) NOT NULL,
  `tec_descripcion` varchar(255) NOT NULL,
  PRIMARY KEY (`tec_id`),
  KEY `tec_descripcion` (`tec_descripcion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teclado`
--

LOCK TABLES `teclado` WRITE;
/*!40000 ALTER TABLE `teclado` DISABLE KEYS */;
/*!40000 ALTER TABLE `teclado` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-18 21:20:38
