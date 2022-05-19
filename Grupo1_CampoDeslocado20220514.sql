CREATE DATABASE  IF NOT EXISTS `campodeslocados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `campodeslocados`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: campodeslocados
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
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `codAdmin` int NOT NULL,
  `nome` varchar(34) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  PRIMARY KEY (`codAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
INSERT INTO `administrador` VALUES (30000,'INGD','ingd@gmail.com'),(30001,'ACRIMO','aacrimo@gmail.com'),(30002,'A.M.J.J','anenane2004@yahoo.com.br'),(30003,'HLUVUKA','hluvukamoz@yahoo.com.br'),(30004,'ADE','ade.geral@gmail.com');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `antigamorada`
--

DROP TABLE IF EXISTS `antigamorada`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `antigamorada` (
  `codDeslocado` int NOT NULL,
  `distrito` varchar(35) DEFAULT NULL,
  `localidade` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`codDeslocado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `antigamorada`
--

LOCK TABLES `antigamorada` WRITE;
/*!40000 ALTER TABLE `antigamorada` DISABLE KEYS */;
INSERT INTO `antigamorada` VALUES (10003,'Macomia',NULL),(10004,'Metuge',NULL),(10001,'Palma','Tungue'),(10002,'Quissanga','Nangade'),(10005,'Macomia','Ulungue'),(10006,'Palma','Quirinde');
/*!40000 ALTER TABLE `antigamorada` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `consulta`
--

DROP TABLE IF EXISTS `consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `consulta` (
  `codDeslocado` int NOT NULL,
  `codEnfermaria` int NOT NULL,
  `dataconsulta` date NOT NULL,
  `num_consulta` int NOT NULL,
  PRIMARY KEY (`codDeslocado`,`codEnfermaria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `consulta`
--

LOCK TABLES `consulta` WRITE;
/*!40000 ALTER TABLE `consulta` DISABLE KEYS */;
INSERT INTO `consulta` VALUES (10000,11111,'2021-08-06',1),(11111,12000,'2022-10-30',2),(11001,12300,'2019-09-15',3),(11104,12005,'2021-08-21',4),(11105,12006,'2017-04-22',5);
/*!40000 ALTER TABLE `consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deslocado`
--

DROP TABLE IF EXISTS `deslocado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deslocado` (
  `nome` varchar(35) DEFAULT NULL,
  `sexo` enum('F','M') NOT NULL,
  `ocupacao` varchar(20) DEFAULT NULL,
  `codDeslocado` int NOT NULL AUTO_INCREMENT,
  `deficiencia` varchar(20) DEFAULT NULL,
  `anoNascimento` int NOT NULL,
  PRIMARY KEY (`codDeslocado`)
) ENGINE=MyISAM AUTO_INCREMENT=100011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deslocado`
--

LOCK TABLES `deslocado` WRITE;
/*!40000 ALTER TABLE `deslocado` DISABLE KEYS */;
INSERT INTO `deslocado` VALUES ('Valter Boa','M','Designer',100000,NULL,1975),('Jennyfer Thole','F','Pescador',100009,NULL,2003),('Jaime Pelembe','M','Professor',100001,NULL,2007),('Enoque Mandlate','M','Operario',100002,NULL,1989),('Geraldo Niuare','M','Pescador',100003,'',1967),('Raimundo Thole','M','Operario',100004,'cegueira',1976),('Ludmila Pelembe','F','Monitora',100005,'',2007),('Marta Boa','F','Estudante',100008,NULL,1999),('Estevao Niuare','M','Estudante',100010,NULL,2000);
/*!40000 ALTER TABLE `deslocado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deslocadofamilia`
--

DROP TABLE IF EXISTS `deslocadofamilia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deslocadofamilia` (
  `codDeslocado` int NOT NULL,
  `codFam` int NOT NULL,
  PRIMARY KEY (`codDeslocado`,`codFam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deslocadofamilia`
--

LOCK TABLES `deslocadofamilia` WRITE;
/*!40000 ALTER TABLE `deslocadofamilia` DISABLE KEYS */;
INSERT INTO `deslocadofamilia` VALUES (100000,90002),(100001,90004),(100002,90003),(100003,90000),(100004,90001),(100005,90004),(100006,90001),(100008,90002),(100010,90000);
/*!40000 ALTER TABLE `deslocadofamilia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuicaotenda`
--

DROP TABLE IF EXISTS `distribuicaotenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuicaotenda` (
  `codAdmin` int NOT NULL,
  `codTenda` int NOT NULL,
  `dataentrega` date NOT NULL,
  `quantDistribuida` int NOT NULL,
  PRIMARY KEY (`codAdmin`,`codTenda`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuicaotenda`
--

LOCK TABLES `distribuicaotenda` WRITE;
/*!40000 ALTER TABLE `distribuicaotenda` DISABLE KEYS */;
INSERT INTO `distribuicaotenda` VALUES (30000,90000,'2022-10-04',100),(30001,90002,'0000-00-00',500),(30002,90001,'2020-12-23',200),(30004,90004,'2019-09-21',20);
/*!40000 ALTER TABLE `distribuicaotenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermaria`
--

DROP TABLE IF EXISTS `enfermaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enfermaria` (
  `codEnfermaria` int NOT NULL,
  `num_macas` int DEFAULT NULL,
  `num_medicos` int DEFAULT NULL,
  `stock_Medicamento` float(6,2) DEFAULT NULL,
  `capacidade` int DEFAULT NULL,
  PRIMARY KEY (`codEnfermaria`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermaria`
--

LOCK TABLES `enfermaria` WRITE;
/*!40000 ALTER TABLE `enfermaria` DISABLE KEYS */;
INSERT INTO `enfermaria` VALUES (50000,20,4,500.00,50),(50001,40,6,400.00,50),(50002,30,4,300.00,35),(50003,25,8,150.00,45),(50004,50,10,200.00,30);
/*!40000 ALTER TABLE `enfermaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fam_produto`
--

DROP TABLE IF EXISTS `fam_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fam_produto` (
  `codProd` int NOT NULL,
  `codFam` int NOT NULL,
  `datadistribuicao` date NOT NULL,
  `quant` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`codProd`,`codFam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fam_produto`
--

LOCK TABLES `fam_produto` WRITE;
/*!40000 ALTER TABLE `fam_produto` DISABLE KEYS */;
INSERT INTO `fam_produto` VALUES (101,90001,'2022-10-23',27.00),(102,90002,'2022-12-26',30.00),(103,90003,'2021-10-25',29.00),(104,90004,'2020-08-26',40.00),(105,90005,'2019-08-28',50.00);
/*!40000 ALTER TABLE `fam_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia`
--

DROP TABLE IF EXISTS `familia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familia` (
  `codFam` int NOT NULL,
  `apelido` varchar(20) DEFAULT NULL,
  `numMembros` int DEFAULT NULL,
  `codRepresentante` int DEFAULT NULL,
  PRIMARY KEY (`codFam`),
  KEY `codRepresentante` (`codRepresentante`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia`
--

LOCK TABLES `familia` WRITE;
/*!40000 ALTER TABLE `familia` DISABLE KEYS */;
INSERT INTO `familia` VALUES (90000,'Niuare',9,10000),(90001,'Thole',5,10003),(90004,'Pelembe',4,10002),(90003,'Mandlate',3,10004),(90002,'Boa',8,10001);
/*!40000 ALTER TABLE `familia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia_tem_tenda`
--

DROP TABLE IF EXISTS `familia_tem_tenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familia_tem_tenda` (
  `codTenda` int NOT NULL,
  `codFam` int NOT NULL,
  PRIMARY KEY (`codTenda`,`codFam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia_tem_tenda`
--

LOCK TABLES `familia_tem_tenda` WRITE;
/*!40000 ALTER TABLE `familia_tem_tenda` DISABLE KEYS */;
INSERT INTO `familia_tem_tenda` VALUES (90000,100001),(90001,100002),(90002,100000),(90003,100004),(90004,100003);
/*!40000 ALTER TABLE `familia_tem_tenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `famnrtendas`
--

DROP TABLE IF EXISTS `famnrtendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `famnrtendas` (
  `codFam` int NOT NULL,
  `numTendas` int DEFAULT NULL,
  PRIMARY KEY (`codFam`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `famnrtendas`
--

LOCK TABLES `famnrtendas` WRITE;
/*!40000 ALTER TABLE `famnrtendas` DISABLE KEYS */;
INSERT INTO `famnrtendas` VALUES (90000,50),(90001,70),(90002,100),(90003,80),(90004,20),(0,0);
/*!40000 ALTER TABLE `famnrtendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paciente`
--

DROP TABLE IF EXISTS `paciente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paciente` (
  `codDeslocado` int NOT NULL,
  `diagnostico` varchar(35) DEFAULT NULL,
  PRIMARY KEY (`codDeslocado`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paciente`
--

LOCK TABLES `paciente` WRITE;
/*!40000 ALTER TABLE `paciente` DISABLE KEYS */;
INSERT INTO `paciente` VALUES (10000,'Malaria'),(10001,'Febre'),(10002,'Colera'),(10003,'Malaria'),(10004,'Febre');
/*!40000 ALTER TABLE `paciente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `codProd` int NOT NULL,
  `nome` varchar(20) NOT NULL,
  `marca` varchar(20) DEFAULT NULL,
  `validade` date NOT NULL,
  `quantStock` float(6,2) NOT NULL,
  `dataDistribuicao` date NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `quantDistribuida` float(6,2) NOT NULL,
  PRIMARY KEY (`codProd`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (50000,'Arroz','Saseka','2022-09-28',9999.99,'2022-03-10','Cereal',200.00),(50001,'Farinha','Top Score','2022-08-18',9999.99,'2022-04-19','Cereal',150.00),(50002,'Massa','Bela','2022-12-20',5000.00,'2022-05-10','Cereal',300.00),(50003,'Carne','','2025-10-10',600.00,'2022-06-19','Carne',100.00),(5004,'Peixe','Carapau','2026-05-11',300.00,'2021-08-10','Peixe',200.00);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quant_tenda_distribuida`
--

DROP TABLE IF EXISTS `quant_tenda_distribuida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quant_tenda_distribuida` (
  `codAdmin` int NOT NULL,
  `quantDistribuida` float(5,2) DEFAULT NULL,
  PRIMARY KEY (`codAdmin`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quant_tenda_distribuida`
--

LOCK TABLES `quant_tenda_distribuida` WRITE;
/*!40000 ALTER TABLE `quant_tenda_distribuida` DISABLE KEYS */;
INSERT INTO `quant_tenda_distribuida` VALUES (30000,999.99),(30001,999.99),(30002,999.99),(30004,999.99),(30003,999.99),(30005,999.99);
/*!40000 ALTER TABLE `quant_tenda_distribuida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `codDeslocado` int NOT NULL,
  `cell` int NOT NULL,
  PRIMARY KEY (`codDeslocado`,`cell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (30000,82000000),(30001,847777777),(30002,869998887),(30003,2147483647),(30004,830000987);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenda`
--

DROP TABLE IF EXISTS `tenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenda` (
  `codTenda` int NOT NULL,
  `tamanho` float(5,2) DEFAULT NULL,
  `formato` varchar(12) DEFAULT NULL,
  `localFabrico` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`codTenda`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenda`
--

LOCK TABLES `tenda` WRITE;
/*!40000 ALTER TABLE `tenda` DISABLE KEYS */;
INSERT INTO `tenda` VALUES (90000,25.00,'Rectangular','China'),(90001,50.00,'Circular','Mocambique'),(90002,100.00,'Rectangular','Mocambique'),(90003,36.00,'Circular','China'),(9004,50.00,'Rectangular','Mocambique'),(9005,100.00,'Circular','China');
/*!40000 ALTER TABLE `tenda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-14 20:43:57
