-- MariaDB dump 10.19  Distrib 10.7.3-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: orbe
-- ------------------------------------------------------
-- Server version	10.7.3-MariaDB

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
-- Table structure for table `color_ropa`
--

DROP TABLE IF EXISTS `color_ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `color_ropa` (
  `id_color` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_color` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_color`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `color_ropa`
--

LOCK TABLES `color_ropa` WRITE;
/*!40000 ALTER TABLE `color_ropa` DISABLE KEYS */;
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (1,'Rojo');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (2,'Amarillo');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (3,'Verder');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (4,'Azul');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (5,'Rosa');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (6,'Violeta');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (7,'Cafe');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (8,'Celeste');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (9,'Gris');
INSERT INTO `color_ropa` (`id_color`, `tipo_color`) VALUES (10,'Negro');
/*!40000 ALTER TABLE `color_ropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilo_ropa`
--

DROP TABLE IF EXISTS `estilo_ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estilo_ropa` (
  `id_estilo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_estilo` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilo_ropa`
--

LOCK TABLES `estilo_ropa` WRITE;
/*!40000 ALTER TABLE `estilo_ropa` DISABLE KEYS */;
INSERT INTO `estilo_ropa` (`id_estilo`, `tipo_estilo`) VALUES (1,'Vintage');
INSERT INTO `estilo_ropa` (`id_estilo`, `tipo_estilo`) VALUES (2,'Urbano');
INSERT INTO `estilo_ropa` (`id_estilo`, `tipo_estilo`) VALUES (3,'Etiqueta');
INSERT INTO `estilo_ropa` (`id_estilo`, `tipo_estilo`) VALUES (4,'Aesthetic');
INSERT INTO `estilo_ropa` (`id_estilo`, `tipo_estilo`) VALUES (5,'Old');
/*!40000 ALTER TABLE `estilo_ropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nombre_ropa`
--

DROP TABLE IF EXISTS `nombre_ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nombre_ropa` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_ropa` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nombre_ropa`
--

LOCK TABLES `nombre_ropa` WRITE;
/*!40000 ALTER TABLE `nombre_ropa` DISABLE KEYS */;
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (1,'jogger');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (2,'Jogger');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (3,'Short');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (4,'Solera');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (5,'Gorra');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (6,'Hoodie');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (7,'Abrigo');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (8,'Camisa');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (9,'Boxer');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (10,'Bufanda');
INSERT INTO `nombre_ropa` (`id_tipo`, `nombre_ropa`) VALUES (11,'Tanga');
/*!40000 ALTER TABLE `nombre_ropa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ropa`
--

DROP TABLE IF EXISTS `ropa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ropa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_color` int(11) DEFAULT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `id_estilo` int(11) DEFAULT NULL,
  `talla` varchar(15) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `disponibilidad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_color` (`id_color`),
  KEY `id_tipo` (`id_tipo`),
  KEY `id_estilo` (`id_estilo`),
  CONSTRAINT `ropa_ibfk_1` FOREIGN KEY (`id_color`) REFERENCES `color_ropa` (`id_color`),
  CONSTRAINT `ropa_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `nombre_ropa` (`id_tipo`),
  CONSTRAINT `ropa_ibfk_3` FOREIGN KEY (`id_estilo`) REFERENCES `estilo_ropa` (`id_estilo`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ropa`
--

LOCK TABLES `ropa` WRITE;
/*!40000 ALTER TABLE `ropa` DISABLE KEYS */;
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (1,3,2,4,'FM',40.5,10,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (2,1,5,3,'PPM',20.99,22,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (3,6,4,1,'XL',50,0,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (4,9,6,3,'XL',60.3,10,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (5,7,4,5,'S',25,27,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (6,8,4,4,'M',30.5,50,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (7,9,9,3,'M',15.2,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (8,5,3,2,'S',60,1,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (9,8,1,1,'XL',22.99,40,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (10,2,2,2,'M',22,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (11,1,2,3,'XL',5.5,0,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (12,4,9,1,'S',15,7,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (13,9,2,1,'M',30.5,42,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (14,4,6,4,'S',30000,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (15,1,1,1,'S',8200000,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (16,1,1,1,'S',8200000,2,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (17,1,1,1,'S',8200000,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (18,9,9,5,'XL',4,2,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (46,1,1,1,'S',56646,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (47,1,1,1,'',8797,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (60,1,1,1,'S',60000000000,3,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (61,1,1,1,'S',90,3,'no');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (62,1,10,1,'S',6,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (63,1,1,1,'S',1,1,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (64,1,1,1,'S',0,2,'si');
INSERT INTO `ropa` (`id`, `id_color`, `id_tipo`, `id_estilo`, `talla`, `precio`, `stock`, `disponibilidad`) VALUES (65,10,1,5,'FFQ',45,1,'si');
/*!40000 ALTER TABLE `ropa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-30 23:28:30
