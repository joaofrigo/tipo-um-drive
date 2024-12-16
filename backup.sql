-- MySQL dump 10.13  Distrib 8.0.35, for Win64 (x86_64)
--
-- Host: localhost    Database: escalas
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255) NOT NULL,
  `departamento_id` int DEFAULT NULL,
  `carga_horaria` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departamento_id` (`departamento_id`),
  CONSTRAINT `cargos_ibfk_1` FOREIGN KEY (`departamento_id`) REFERENCES `departamentos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Contador',1,40);
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamentos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `departamento` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,'Contabilidade');
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escalas`
--

DROP TABLE IF EXISTS `escalas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escalas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `semana_id` int DEFAULT NULL,
  `funcionario_id` int DEFAULT NULL,
  `turno_id` int DEFAULT NULL,
  `data` date NOT NULL,
  `observacao` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `semana_id` (`semana_id`),
  KEY `funcionario_id` (`funcionario_id`),
  KEY `turno_id` (`turno_id`),
  CONSTRAINT `escalas_ibfk_1` FOREIGN KEY (`semana_id`) REFERENCES `semanas` (`id`),
  CONSTRAINT `escalas_ibfk_2` FOREIGN KEY (`funcionario_id`) REFERENCES `funcionarios` (`id`),
  CONSTRAINT `escalas_ibfk_3` FOREIGN KEY (`turno_id`) REFERENCES `turnos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escalas`
--

LOCK TABLES `escalas` WRITE;
/*!40000 ALTER TABLE `escalas` DISABLE KEYS */;
INSERT INTO `escalas` VALUES (1,1,1,1,'2024-01-01',''),(2,1,1,1,'2024-01-02',''),(3,1,1,1,'2024-01-03',''),(4,1,1,1,'2024-01-04',''),(5,1,1,1,'2024-01-05',''),(6,1,1,4,'2024-01-06',''),(7,1,1,4,'2024-01-07',''),(8,2,1,2,'2024-01-08',''),(9,2,1,2,'2024-01-09',''),(10,2,1,2,'2024-01-10',''),(11,2,1,2,'2024-01-11',''),(12,2,1,2,'2024-01-12',''),(13,2,1,4,'2024-01-13',''),(14,2,1,4,'2024-01-14',''),(15,1,1,3,'2024-01-01',''),(16,1,1,3,'2024-01-02',''),(17,1,1,3,'2024-01-03',''),(18,1,1,3,'2024-01-04',''),(19,1,1,3,'2024-01-05',''),(20,1,1,4,'2024-01-06',''),(21,1,1,4,'2024-01-07','');
/*!40000 ALTER TABLE `escalas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `cargo_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cargo_id` (`cargo_id`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (1,'Jonga',1);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semanas`
--

DROP TABLE IF EXISTS `semanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semanas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `data_inicio` date NOT NULL,
  `data_fim` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semanas`
--

LOCK TABLES `semanas` WRITE;
/*!40000 ALTER TABLE `semanas` DISABLE KEYS */;
INSERT INTO `semanas` VALUES (1,'2024-01-01','2024-01-07'),(2,'2024-01-08','2024-01-14'),(3,'2024-01-15','2024-01-21'),(4,'2024-01-22','2024-01-28'),(5,'2024-01-29','2024-02-04'),(6,'2024-02-05','2024-02-11'),(7,'2024-02-12','2024-02-18'),(8,'2024-02-19','2024-02-25'),(9,'2024-02-26','2024-03-03'),(10,'2024-03-04','2024-03-10'),(11,'2024-03-11','2024-03-17'),(12,'2024-03-18','2024-03-24'),(13,'2024-03-25','2024-03-31'),(14,'2024-04-01','2024-04-07'),(15,'2024-04-08','2024-04-14'),(16,'2024-04-15','2024-04-21'),(17,'2024-04-22','2024-04-28'),(18,'2024-04-29','2024-05-05'),(19,'2024-05-06','2024-05-12'),(20,'2024-05-13','2024-05-19'),(21,'2024-05-20','2024-05-26'),(22,'2024-05-27','2024-06-02'),(23,'2024-06-03','2024-06-09'),(24,'2024-06-10','2024-06-16'),(25,'2024-06-17','2024-06-23'),(26,'2024-06-24','2024-06-30'),(27,'2024-07-01','2024-07-07'),(28,'2024-07-08','2024-07-14'),(29,'2024-07-15','2024-07-21'),(30,'2024-07-22','2024-07-28'),(31,'2024-07-29','2024-08-04'),(32,'2024-08-05','2024-08-11'),(33,'2024-08-12','2024-08-18'),(34,'2024-08-19','2024-08-25'),(35,'2024-08-26','2024-09-01'),(36,'2024-09-02','2024-09-08'),(37,'2024-09-09','2024-09-15'),(38,'2024-09-16','2024-09-22'),(39,'2024-09-23','2024-09-29'),(40,'2024-09-30','2024-10-06'),(41,'2024-10-07','2024-10-13'),(42,'2024-10-14','2024-10-20'),(43,'2024-10-21','2024-10-27'),(44,'2024-10-28','2024-11-03'),(45,'2024-11-04','2024-11-10'),(46,'2024-11-11','2024-11-17'),(47,'2024-11-18','2024-11-24'),(48,'2024-11-25','2024-12-01'),(49,'2024-12-02','2024-12-08'),(50,'2024-12-09','2024-12-15'),(51,'2024-12-16','2024-12-22');
/*!40000 ALTER TABLE `semanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo` varchar(255) NOT NULL,
  `horario_inicio` time NOT NULL,
  `horario_fim` time NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'manha','08:00:00','12:00:00'),(2,'tarde','13:00:00','17:00:00'),(3,'noite','18:00:00','22:00:00'),(4,'nao_trabalha','00:00:00','00:00:00');
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-15 23:30:57
