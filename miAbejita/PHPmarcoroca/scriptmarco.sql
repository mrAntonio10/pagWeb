-- MariaDB dump 10.19  Distrib 10.5.9-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: datosmiabejita
-- ------------------------------------------------------
-- Server version	10.5.9-MariaDB

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
-- Table structure for table `abeja`
--

DROP TABLE IF EXISTS `abeja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abeja` (
  `tipo_abeja` varchar(30) NOT NULL,
  `tamano_cm_abeja` double DEFAULT NULL,
  `region_abeja` varchar(30) DEFAULT NULL,
  `tonalidad_miel` varchar(30) DEFAULT NULL,
  `calidad_miel` varchar(30) DEFAULT NULL,
  `mes_colecta` int(11) NOT NULL,
  UNIQUE KEY `tipo_abeja` (`tipo_abeja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abeja`
--

LOCK TABLES `abeja` WRITE;
/*!40000 ALTER TABLE `abeja` DISABLE KEYS */;
INSERT INTO `abeja` VALUES ('Cephalotrigona',2.6,'Amazon&iacute;a SC/Beni','Amber','Pura',6),('Flavolineata',2.1,'Bosque Andino','Dark Amber','Pura',7),('Friesomelitta',3.2,'Gran Chaco','Amber','de Castilla',3),('Geotrigona',3.2,'Gran Chaco','White','de Castilla',5),('Hypogea',2.7,'Amazon&iacute;a SC/Beni','Amber','Pura',10),('Lestrimelitta',2,'Amaz&oacute;nico Andino','Amber','Pura',9),('Melipona',2.3,'Bosque Chiquitano','Water White','de Castilla',3),('Nannotrigona',1.8,'Yungas','Dark Amber','Pura',7),('Oxitrigona',2.3,'Bosque Chiquitano','Light Amber','de Castilla',11),('Partamona',1.6,'Amaz&oacute;nico Andino','Dark Amber','Pura',11),('Plebeia',1.5,'Amazon&iacute;a SC/Beni','Extra Light Amber','Pura',4),('Scaptotrigona',2.6,'Bosque Andino','Water White','de Castilla',5),('Scaptotrigona Postica',2.3,'Amaz&oacute;nico Andino','Whater White','de Castilla',3),('Scaura Latirasis',2.1,'Yungas','Light Amber','Pura',10),('Tetragona Clavipes',1.9,'Amaz&oacute;nico Andino','Amber','Pura',5);
/*!40000 ALTER TABLE `abeja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `abejas_empresa`
--

DROP TABLE IF EXISTS `abejas_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `abejas_empresa` (
  `NIT_Empresa` int(11) DEFAULT NULL,
  `Tipo_Abeja` varchar(30) DEFAULT NULL,
  KEY `NIT_Empresa` (`NIT_Empresa`),
  KEY `Tipo_Abeja` (`Tipo_Abeja`),
  CONSTRAINT `abejas_empresa_ibfk_1` FOREIGN KEY (`NIT_Empresa`) REFERENCES `datos_empresa` (`NIT_empresa`),
  CONSTRAINT `abejas_empresa_ibfk_2` FOREIGN KEY (`Tipo_Abeja`) REFERENCES `abeja` (`tipo_abeja`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `abejas_empresa`
--

LOCK TABLES `abejas_empresa` WRITE;
/*!40000 ALTER TABLE `abejas_empresa` DISABLE KEYS */;
INSERT INTO `abejas_empresa` VALUES (10252505,'Melipona'),(10252505,'Flavolineata'),(10252505,'Scaura Latirasis'),(10260525,'Oxitrigona'),(11273505,'Hypogea'),(11273505,'Nannotrigona'),(11273505,'Lestrimelitta'),(2781568,'Cephalotrigona'),(2781568,'Tetragona Clavipes'),(4878989,'Cephalotrigona'),(4878989,'Friesomelitta'),(4003578,'Scaura Latirasis'),(5895451,'Melipona'),(5895451,'Hypogea'),(45552505,'Cephalotrigona'),(6867678,'Tetragona Clavipes'),(10253708,'Nannotrigona'),(25102505,'Plebeia'),(54587950,'Friesomelitta'),(54587950,'Melipona'),(64052118,'Cephalotrigona'),(89578234,'Lestrimelitta'),(35487920,'Scaura Latirasis'),(700048763,'Cephalotrigona'),(3687210,'Partamona'),(3687210,'Oxitrigona'),(70548972,'Scaptotrigona Postica');
/*!40000 ALTER TABLE `abejas_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datos_empresa`
--

DROP TABLE IF EXISTS `datos_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datos_empresa` (
  `NIT_empresa` int(11) NOT NULL,
  `nombre_empresa` varchar(50) DEFAULT NULL,
  `pob_abeja` varchar(50) DEFAULT NULL,
  UNIQUE KEY `NIT_empresa` (`NIT_empresa`),
  UNIQUE KEY `nombre_empresa` (`nombre_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datos_empresa`
--

LOCK TABLES `datos_empresa` WRITE;
/*!40000 ALTER TABLE `datos_empresa` DISABLE KEYS */;
INSERT INTO `datos_empresa` VALUES (10,'prueba2aÃ±adir','78'),(2781568,'El Panal','2055'),(3687210,'Dulce Maria','1405'),(4003578,'N&eacute;ctar','1200'),(4878989,'El Bosque','855'),(5895451,'Del Bosque S.A','3650'),(6867678,'Queen_B-BOL','1650'),(10252505,'El Man&aacute;','2055'),(10253708,'Chaco Real','3657'),(10260525,'Arboleda','1800'),(11273505,'Miel S.A','3000'),(25102505,'Margarita','520'),(35487920,'Melaza','2055'),(45552505,'Reina Abeja','2450'),(54587950,'La Granja','1800'),(55485558,'Sweet Child','1980'),(64052118,'Yunguitas','950'),(70548972,'Honey Bol','2055'),(89578234,'Prop&oacute;leo Vida','1645'),(700048763,'Purita es','5000');
/*!40000 ALTER TABLE `datos_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `derivados_precio`
--

DROP TABLE IF EXISTS `derivados_precio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `derivados_precio` (
  `Derivados_miel` varchar(30) NOT NULL,
  `precio` int(11) DEFAULT NULL,
  UNIQUE KEY `Derivados_miel` (`Derivados_miel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `derivados_precio`
--

LOCK TABLES `derivados_precio` WRITE;
/*!40000 ALTER TABLE `derivados_precio` DISABLE KEYS */;
INSERT INTO `derivados_precio` VALUES ('Apitoxina',210),('Jalea Real',155),('Miel',180),('P&oacute;len',380),('Prop&oacute;leos',250);
/*!40000 ALTER TABLE `derivados_precio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `CI` int(11) NOT NULL,
  `nombre_empleado` varchar(20) DEFAULT NULL,
  `apellido_empleado` varchar(20) DEFAULT NULL,
  `fecha_contr` date DEFAULT NULL,
  PRIMARY KEY (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` VALUES (700478,'Constantina','Guess','2018-02-19'),(987564,'Ariana','Barba','2006-10-17'),(1135781,'Carlos','Ortiz','2001-04-18'),(2006489,'Arianne','Pozo','2013-07-07'),(4576186,'Johnny','Montenegro','2003-04-06'),(5678910,'Flory','Caballero','1999-01-05'),(5997112,'Nicole','Anez','2001-11-01'),(6003288,'Sorel','Suarez','2020-06-30'),(6203057,'Gustavo','Garc&iacute;a','1999-07-05'),(6603057,'Agustina','Morales','2009-07-12'),(7984641,'Claudia','Montenegro','2021-03-22'),(9406547,'Andres','Heredia','2000-12-05'),(10032487,'Maria','Velasco','2006-08-10'),(10657983,'Hugo','Rocha','1997-04-09'),(12413105,'Marco','Roca','2021-03-22'),(13547865,'Peter','Roca','2020-03-22'),(14416503,'Marco','Costas','2016-12-12'),(15687923,'Fernanda','Gonz&aacute;les','2003-10-10'),(17543105,'Luis','Seas','2005-12-22'),(18792648,'Juan','Vaca','2002-03-20'),(19786541,'Valeria','Borda','2008-06-30'),(20034578,'Lesly','Ch&aacute;vez','2004-07-01'),(26247803,'Juliana','Alvarez','2002-10-04'),(63345487,'Josue','Salas','1995-01-29');
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_empresa`
--

DROP TABLE IF EXISTS `empleados_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleados_empresa` (
  `NIT_Empresa` int(11) DEFAULT NULL,
  `CI` int(11) DEFAULT NULL,
  `Turno` varchar(10) DEFAULT NULL,
  `Ocupacion` varchar(20) DEFAULT NULL,
  KEY `NIT_Empresa` (`NIT_Empresa`),
  KEY `CI` (`CI`),
  KEY `Turno` (`Turno`),
  KEY `Ocupacion` (`Ocupacion`),
  CONSTRAINT `empleados_empresa_ibfk_1` FOREIGN KEY (`NIT_Empresa`) REFERENCES `datos_empresa` (`NIT_empresa`),
  CONSTRAINT `empleados_empresa_ibfk_2` FOREIGN KEY (`CI`) REFERENCES `empleado` (`CI`),
  CONSTRAINT `empleados_empresa_ibfk_3` FOREIGN KEY (`Turno`) REFERENCES `turno` (`turno`),
  CONSTRAINT `empleados_empresa_ibfk_4` FOREIGN KEY (`Ocupacion`) REFERENCES `ocupacion` (`ocupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_empresa`
--

LOCK TABLES `empleados_empresa` WRITE;
/*!40000 ALTER TABLE `empleados_empresa` DISABLE KEYS */;
INSERT INTO `empleados_empresa` VALUES (10252505,12413105,'D&iacute;a','Guardia'),(10260525,13547865,'Tarde','Guardia'),(10260525,4576186,'Noche','Gerente'),(11273505,17543105,'Tarde','Recolector'),(2781568,987564,'Noche','Secretari@'),(4878989,19786541,'D&iacute;a','Veterinario'),(4878989,14416503,'D&iacute;a','Transportista'),(4003578,15687923,'Noche','RRHH'),(5895451,20034578,'D&iacute;a','Gerente'),(45552505,26247803,'Tarde','Transportista'),(6867678,1135781,'Noche','Jardinero'),(10253708,18792648,'Noche','Jardinero'),(10253708,7984641,'Tarde','Supervisor'),(25102505,5678910,'D&iacute;a','Recolector'),(54587950,10657983,'Tarde','Gerente'),(64052118,6203057,'Noche','Supervisor'),(89578234,9406547,'Tarde','Administrador'),(35487920,700478,'D&iacute;a','Transportista'),(700048763,6603057,'D&iacute;a','Transportista'),(700048763,10032487,'Noche','Recolector'),(3687210,6003288,'D&iacute;a','Recolector'),(55485558,6003288,'D&iacute;a','Recolector'),(55485558,5997112,'Tarde','Veterinario'),(70548972,63345487,'Noche','Transportista'),(70548972,2006489,'D&iacute;a','RRHH');
/*!40000 ALTER TABLE `empleados_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa_contactos`
--

DROP TABLE IF EXISTS `empresa_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresa_contactos` (
  `empresa` int(11) DEFAULT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `Telefono` varchar(50) DEFAULT NULL,
  `ubicacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa_contactos`
--

LOCK TABLES `empresa_contactos` WRITE;
/*!40000 ALTER TABLE `empresa_contactos` DISABLE KEYS */;
INSERT INTO `empresa_contactos` VALUES (10252505,'elmanasito@gmail.com','7167715','Santa Cruz'),(10252505,'elmanasito_w@gmail.com','70032583','Warnes'),(10252505,'elmanasitocb@gmail.com','70098753','Cochabamba'),(10260525,'ArboledaLP@gmail.com','6515124','La Paz'),(11273505,'Miel_SC_S.A@gmail.com','33515424','Santa Cruz'),(11273505,'Miel_SC12_S.A@gmail.com','30518789','Warnes'),(11273505,'Miel_SC15_S.A@gmail.com','32115424','La Guardia'),(2781568,'PanalBOL@gmail.com','33337895','Beni'),(2781568,'PanalBOL_QL@gmail.com','702548956','Cochabamba'),(4878989,'BosqueAbeja@hotmail.com','70098765','Cochabamba'),(4878989,'BosqueAbeja_BOLSC@hotmail.com','72198765','La Guardia'),(4003578,'Nectar@outlook.com','30248796','El Alto'),(5895451,'DelBosqueBOL@outlook.com','36448796','Yungas'),(5895451,'DelBosqueBOLCB@outlook.com','33064796','Quillacollo'),(45552505,'ReinaAbeja@gmail.com','79157800','Quillacollo'),(6867678,'Queen_MIEL_es@hotmail.com','62188920','Tarija'),(10253708,'Chaco_real@hotmail.com','33568876','Beni'),(25102505,'camposMargarita12@outlook.com','33567970','La Paz'),(54587950,'Lagranga_apicultora@outlook.com','61109867','Cochabamba'),(54587950,'Granga_apicultora@gmail.com','62209867','Cochabamba'),(64052118,'BOL_YunguitasA@gmail.com','3515424','Cochabamba'),(89578234,'Vida_miel@gmail.com','3505424','El Alto'),(35487920,'melazademiel@gmail.com','3395424','Tarija'),(700048763,'puramiel@outlook.com','38768904','Yungas'),(3687210,'DulceMaria@outlook.com','63402388','Cochabamba'),(3687210,'Sweetes@gmail.com','70987465','Santa Cruz'),(70548972,'HoneyfromBOL@gmail.com','70968065','Santa Cruz');
/*!40000 ALTER TABLE `empresa_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercado`
--

DROP TABLE IF EXISTS `mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercado` (
  `NIT_mercado` int(11) NOT NULL,
  `nombre_mercado` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NIT_mercado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercado`
--

LOCK TABLES `mercado` WRITE;
/*!40000 ALTER TABLE `mercado` DISABLE KEYS */;
INSERT INTO `mercado` VALUES (41,'marco'),(65578,'A.R S.A'),(67895,'Puerta Sol'),(82004,'ZyOne'),(97100,'Benito'),(98795,'Fidalga'),(100385,'T&iacute;o Nacho'),(385810,'Ya Libre'),(387920,'Per&uacute; P'),(678972,'Arriero'),(798433,'Tienda Peque'),(800057,'Dona Pola'),(989723,'Public Store'),(1105487,'Portal'),(2658720,'Sketch T'),(4545487,'QUINA'),(9732137,'IkerSan'),(9879232,'Per-fium');
/*!40000 ALTER TABLE `mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercado_contacto`
--

DROP TABLE IF EXISTS `mercado_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercado_contacto` (
  `NIT_Mercado` int(11) DEFAULT NULL,
  `Region_Pais` varchar(30) DEFAULT NULL,
  `Telefono_Mercado` int(11) DEFAULT NULL,
  KEY `NIT_Mercado` (`NIT_Mercado`),
  CONSTRAINT `mercado_contacto_ibfk_1` FOREIGN KEY (`NIT_Mercado`) REFERENCES `mercado` (`NIT_mercado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercado_contacto`
--

LOCK TABLES `mercado_contacto` WRITE;
/*!40000 ALTER TABLE `mercado_contacto` DISABLE KEYS */;
INSERT INTO `mercado_contacto` VALUES (4545487,'Santa Cruz',71677715),(4545487,'Warnes',3525996),(67895,'Sucre',35087923),(67895,'Tarija',35005786),(67895,'Pando',37568900),(98795,'Santa Cruz',7548906),(98795,'Montero',7088906),(98795,'Montero',35251048),(98795,'La Guardia',35351048),(678972,' Argentina',546120387),(798433,'Oruro',62508779),(97100,'Oruro',60008779),(800057,'Cochabamba',616508779),(9732137,'Cotoca',685508779),(989723,'Virgen de Cotoca',625508779),(82004,'El Alto',33879820),(2658720,'El Alto',33879820),(387920,'Desagüadero',78521987),(65578,'Salta',54900786),(9879232,'Santa Cruz',70865771),(385810,'Santa Cruz',70032583);
/*!40000 ALTER TABLE `mercado_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercado_empresa`
--

DROP TABLE IF EXISTS `mercado_empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercado_empresa` (
  `NIT_Mercado` int(11) DEFAULT NULL,
  `NIT_Empresa` int(11) DEFAULT NULL,
  `Producto` varchar(50) DEFAULT NULL,
  `Fecha_Venta` date DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  KEY `NIT_Mercado` (`NIT_Mercado`),
  KEY `NIT_Empresa` (`NIT_Empresa`),
  KEY `Producto` (`Producto`),
  CONSTRAINT `mercado_empresa_ibfk_1` FOREIGN KEY (`NIT_Mercado`) REFERENCES `mercado` (`NIT_mercado`),
  CONSTRAINT `mercado_empresa_ibfk_2` FOREIGN KEY (`NIT_Empresa`) REFERENCES `datos_empresa` (`NIT_empresa`),
  CONSTRAINT `mercado_empresa_ibfk_3` FOREIGN KEY (`Producto`) REFERENCES `derivados_precio` (`Derivados_miel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercado_empresa`
--

LOCK TABLES `mercado_empresa` WRITE;
/*!40000 ALTER TABLE `mercado_empresa` DISABLE KEYS */;
INSERT INTO `mercado_empresa` VALUES (4545487,10252505,'Miel','2003-04-06',15),(4545487,10252505,'Miel','2016-08-06',27),(4545487,10252505,'Jalea Real','2000-04-29',30),(1105487,10260525,'Jalea Real','2005-11-06',10),(67895,11273505,'Miel','2020-09-29',20),(67895,11273505,'Prop&oacute;leos','2013-02-06',15),(67895,11273505,'P&oacute;len','1998-11-24',1),(98795,2781568,'Apitoxina','2018-03-05',60),(98795,2781568,'Miel','2009-12-10',24),(98795,4878989,'P&oacute;len','1996-01-01',18),(98795,4878989,'Jalea Real','1999-10-30',31),(678972,4003578,'Miel','2007-04-15',48),(798433,5895451,'Apitoxina','2003-04-06',50),(97100,5895451,'Apitoxina','2015-04-17',20),(800057,45552505,'P&oacute;len','2021-04-26',10),(9732137,6867678,'Jalea Real','2003-04-06',10),(989723,10253708,'Apitoxina','2015-07-01',10),(82004,25102505,'Apitoxina','2001-07-06',32),(2658720,54587950,'Miel','1957-10-27',20),(65578,64052118,'Jalea Real','2003-04-06',50),(100385,35487920,'Miel','2009-11-01',34),(100385,700048763,'Miel','2015-01-06',10),(9879232,3687210,'Apitoxina','2021-04-06',60),(385810,3687210,'Apitoxina','2012-07-06',70),(385810,70548972,'Miel','2003-04-06',85);
/*!40000 ALTER TABLE `mercado_empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ocupacion`
--

DROP TABLE IF EXISTS `ocupacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ocupacion` (
  `ocupacion` varchar(50) NOT NULL,
  `sueldo` int(11) NOT NULL,
  PRIMARY KEY (`ocupacion`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ocupacion`
--

LOCK TABLES `ocupacion` WRITE;
/*!40000 ALTER TABLE `ocupacion` DISABLE KEYS */;
INSERT INTO `ocupacion` VALUES ('Administrador',2400),('Gerente',2340),('Guardia',1200),('Jardinero',1300),('Recolector',1600),('RRHH',1600),('Secretari@',2000),('Supervisor',1200),('Transportista',1800),('Veterinario',1000);
/*!40000 ALTER TABLE `ocupacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacion_abeja_derivado`
--

DROP TABLE IF EXISTS `relacion_abeja_derivado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relacion_abeja_derivado` (
  `tipo_abeja` varchar(30) DEFAULT NULL,
  `derivados_miel` varchar(30) DEFAULT NULL,
  KEY `tipo_abeja` (`tipo_abeja`),
  KEY `derivados_miel` (`derivados_miel`),
  CONSTRAINT `relacion_abeja_derivado_ibfk_1` FOREIGN KEY (`tipo_abeja`) REFERENCES `abeja` (`tipo_abeja`),
  CONSTRAINT `relacion_abeja_derivado_ibfk_2` FOREIGN KEY (`derivados_miel`) REFERENCES `derivados_precio` (`Derivados_miel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacion_abeja_derivado`
--

LOCK TABLES `relacion_abeja_derivado` WRITE;
/*!40000 ALTER TABLE `relacion_abeja_derivado` DISABLE KEYS */;
INSERT INTO `relacion_abeja_derivado` VALUES ('Melipona','P&oacute;len'),('Melipona','Prop&oacute;leos'),('Melipona','Jalea Real'),('Melipona','Miel'),('Geotrigona','Miel'),('Geotrigona','P&oacute;len'),('Geotrigona','Prop&oacute;leos'),('Lestrimelitta','Prop&oacute;leos'),('Lestrimelitta','P&oacute;len'),('Lestrimelitta','Jalea Real'),('Lestrimelitta','Apitoxina'),('Lestrimelitta','Miel'),('Partamona','Miel'),('Partamona','P&oacute;len'),('Plebeia','P&oacute;len'),('Plebeia','Miel'),('Plebeia','Prop&oacute;leos'),('Plebeia','Jalea Real'),('Plebeia','Apitoxina'),('Friesomelitta','Miel'),('Friesomelitta','P&oacute;len'),('Friesomelitta','Prop&oacute;leos'),('Flavolineata','Miel'),('Flavolineata','P&oacute;len'),('Scaptotrigona','Prop&oacute;leos'),('Scaptotrigona','P&oacute;len'),('Scaptotrigona','Jalea Real'),('Scaptotrigona','Apitoxina'),('Scaptotrigona','Miel'),('Oxitrigona','Prop&oacute;leos'),('Oxitrigona','P&oacute;len'),('Oxitrigona','Jalea Real'),('Oxitrigona','Apitoxina'),('Oxitrigona','Miel'),('Cephalotrigona','Prop&oacute;leos'),('Cephalotrigona','P&oacute;len'),('Cephalotrigona','Jalea Real'),('Cephalotrigona','Apitoxina'),('Cephalotrigona','Miel'),('Nannotrigona','Prop&oacute;leos'),('Nannotrigona','P&oacute;len'),('Nannotrigona','Jalea Real'),('Nannotrigona','Apitoxina'),('Nannotrigona','Miel'),('Scaptotrigona Postica','Miel'),('Scaptotrigona Postica','P&oacute;len'),('Scaptotrigona Postica','Prop&oacute;leos'),('Scaura Latirasis','Prop&oacute;leos'),('Scaura Latirasis','P&oacute;len'),('Scaura Latirasis','Jalea Real'),('Scaura Latirasis','Apitoxina'),('Scaura Latirasis','Miel'),('Tetragona Clavipes','Prop&oacute;leos'),('Tetragona Clavipes','P&oacute;len'),('Tetragona Clavipes','Jalea Real'),('Tetragona Clavipes','Apitoxina'),('Tetragona Clavipes','Miel'),('Hypogea','Prop&oacute;leos'),('Hypogea','P&oacute;len'),('Hypogea','Jalea Real'),('Hypogea','Apitoxina'),('Hypogea','Miel');
/*!40000 ALTER TABLE `relacion_abeja_derivado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefonos_empleado`
--

DROP TABLE IF EXISTS `telefonos_empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `telefonos_empleado` (
  `CI` int(11) DEFAULT NULL,
  `Telefono_Empleado` int(11) DEFAULT NULL,
  KEY `CI` (`CI`),
  CONSTRAINT `telefonos_empleado_ibfk_1` FOREIGN KEY (`CI`) REFERENCES `empleado` (`CI`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefonos_empleado`
--

LOCK TABLES `telefonos_empleado` WRITE;
/*!40000 ALTER TABLE `telefonos_empleado` DISABLE KEYS */;
INSERT INTO `telefonos_empleado` VALUES (12413105,71677715),(12413105,70852615),(13547865,70032583),(4576186,70632583),(4576186,71691607),(17543105,72154240),(987564,72198737),(19786541,75154243),(14416503,63507893),(14416503,72124674),(15687923,72784674),(20034578,79884674),(26247803,67884674),(1135781,6084074),(1135781,6004784),(1135781,6784784),(18792648,79152584),(7984641,70821426),(5678910,77788120),(10657983,NULL),(6203057,NULL),(9406547,69231963),(700478,77431375),(6603057,75686278),(10032487,NULL),(6003288,78592397),(5997112,74175340),(63345487,60678198),(2006489,69192072);
/*!40000 ALTER TABLE `telefonos_empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turno`
--

DROP TABLE IF EXISTS `turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turno` (
  `turno` varchar(10) NOT NULL,
  `horario_ingreso` time DEFAULT NULL,
  `horario_salida` time DEFAULT NULL,
  UNIQUE KEY `turno` (`turno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turno`
--

LOCK TABLES `turno` WRITE;
/*!40000 ALTER TABLE `turno` DISABLE KEYS */;
INSERT INTO `turno` VALUES ('D&iacute;a','06:00:00','12:00:00'),('Noche','18:30:00','00:30:00'),('Tarde','12:20:00','18:20:00');
/*!40000 ALTER TABLE `turno` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-27 10:20:32
