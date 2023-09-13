CREATE DATABASE  IF NOT EXISTS `base_datos_biblioteca` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `base_datos_biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: base_datos_biblioteca
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `autores`
--

DROP TABLE IF EXISTS `autores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autores` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autores`
--

LOCK TABLES `autores` WRITE;
/*!40000 ALTER TABLE `autores` DISABLE KEYS */;
INSERT INTO `autores` VALUES (50,'Luisa González'),(51,'Carlos Pérez'),(52,'Isabel Ramírez'),(53,'Roberto Fernández'),(54,'María López'),(55,'Pedro Sánchez'),(56,'Ana Rodríguez'),(57,'Javier Martínez'),(58,'Carmen García'),(59,'Juan Rivera'),(60,'Laura Torres'),(61,'Miguel Reyes'),(62,'Sofía Herrera'),(63,'Daniel Castro'),(64,'Lucía Silva'),(65,'Andrés Cruz'),(66,'Valentina Morales'),(67,'Diego Ortiz'),(68,'Paula Pérez'),(69,'Felipe Rodríguez'),(70,'Natalia García'),(71,'Alejandro Fernández'),(72,'Isabella Martínez'),(73,'Mateo López'),(74,'Camila Sánchez'),(75,'Leo Tolstoy');
/*!40000 ALTER TABLE `autores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ejemplares`
--

DROP TABLE IF EXISTS `ejemplares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ejemplares` (
  `id` int NOT NULL AUTO_INCREMENT,
  `localizacion` varchar(80) DEFAULT NULL,
  `libros_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_ejemplares_libros1_idx` (`libros_id`),
  CONSTRAINT `fk_ejemplares_libros1` FOREIGN KEY (`libros_id`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ejemplares`
--

LOCK TABLES `ejemplares` WRITE;
/*!40000 ALTER TABLE `ejemplares` DISABLE KEYS */;
INSERT INTO `ejemplares` VALUES (1,'Estantería A-1',7),(2,'Estantería B-2',13),(3,'Estantería C-3',19),(4,'Estantería D-4',5),(5,'Estantería E-5',27),(6,'Estantería F-6',14),(7,'Estantería G-7',22),(8,'Estantería H-8',2),(9,'Estantería I-9',6),(10,'Estantería J-10',16),(11,'Estantería K-11',3),(12,'Estantería L-12',29),(13,'Estantería M-13',21),(14,'Estantería N-14',12),(15,'Estantería O-15',24),(16,'Estantería P-16',11),(17,'Estantería Q-17',18),(18,'Estantería R-18',4),(19,'Estantería S-19',8),(20,'Estantería T-20',10),(21,'Estantería U-21',17),(22,'Estantería V-22',28),(23,'Estantería W-23',15),(24,'Estantería X-24',9),(25,'Estantería Y-25',20),(26,'Estantería Z-26',30),(27,'Estantería A-27',25),(28,'Estantería B-28',1),(29,'Estantería C-29',26),(30,'Estantería D-30',23);
/*!40000 ALTER TABLE `ejemplares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escribir`
--

DROP TABLE IF EXISTS `escribir`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escribir` (
  `año-mes-dia` date NOT NULL,
  `autores_id` int NOT NULL,
  `libros_id` int NOT NULL,
  KEY `fk_escribir_autores1_idx` (`autores_id`),
  KEY `fk_escribir_libros1_idx` (`libros_id`),
  CONSTRAINT `fk_escribir_autores1` FOREIGN KEY (`autores_id`) REFERENCES `autores` (`id`),
  CONSTRAINT `fk_escribir_libros1` FOREIGN KEY (`libros_id`) REFERENCES `libros` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escribir`
--

LOCK TABLES `escribir` WRITE;
/*!40000 ALTER TABLE `escribir` DISABLE KEYS */;
INSERT INTO `escribir` VALUES ('2005-12-25',50,1),('2001-10-14',51,2),('2005-11-03',53,3),('2008-01-01',54,4),('2013-02-25',55,5),('2015-05-29',56,6),('2009-03-19',57,7),('2003-09-13',58,8),('2008-10-31',59,9),('2010-02-28',60,10),('2010-05-12',61,11),('2017-12-31',62,12),('2011-03-19',63,13),('2014-05-25',64,14),('2016-12-03',65,15),('2007-06-30',66,16),('2002-03-21',67,17),('2004-06-25',68,19),('2000-09-10',69,20),('2006-07-22',70,21),('2012-04-12',71,22),('2001-10-01',72,23),('2005-11-13',73,24),('2008-01-21',74,25),('2013-03-25',75,26),('2015-02-22',50,27),('2009-12-19',51,28),('2003-01-13',52,29),('2008-11-30',53,30),('2010-09-28',54,31),('2010-01-12',55,32),('2017-05-31',56,33),('2011-03-11',57,34),('2014-05-12',58,35),('2016-12-09',59,36),('2007-06-05',60,37),('2002-03-26',61,38),('2004-06-22',62,39),('2000-09-17',63,40),('2006-07-20',64,41),('2012-04-12',65,42),('2001-07-01',66,43),('2005-03-13',67,44),('2008-01-21',68,45),('2013-03-02',69,46),('2015-12-05',70,47),('2009-09-09',71,48),('2003-01-13',72,49),('2008-11-30',73,50);
/*!40000 ALTER TABLE `escribir` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libros` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(150) NOT NULL,
  `numero_pagina` int NOT NULL,
  `editorial` varchar(45) NOT NULL,
  `ISBN` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'el jardin secreto',250,'editorial x','978-0-440-94840-2'),(2,'crimen y castigo',430,'editorial y','978-0-486-61268-7'),(3,'La Sombra del Viento',487,'Editorial Z','978-0-14-303490-2'),(4,'Harry Potter y la Piedra Filosofal',309,'Editorial W','978-0-439-82774-2'),(5,'1984',328,'Editorial V','978-0-45-152493-5'),(6,'Matar a un Ruiseñor',324,'Editorial U','978-0-06-112008-4'),(7,'Los Juegos del Hambre',374,'Editorial T','978-0-439-02352-8'),(8,'El Gran Gatsby',180,'Editorial S','978-0-7432-7356-2'),(9,'El Hobbit',366,'Editorial R','978-0-618-00221-4'),(10,'cien años de soledad',417,'editorial Q','978-0-06-088328-7'),(11,'El Código Da Vinci',454,'Editorial P','978-0-385-50420-5'),(12,'To Kill a Mockingbird',281,'Editorial O','978-0-06-112008-4'),(13,'Don Quijote de la Mancha',863,'Editorial N','978-0-486-29369-9'),(14,'Orgullo y Prejuicio',279,'Editorial M','978-0-486-21139-3'),(15,'Rayuela',578,'Editorial L','978-0-14-025971-6'),(16,'Moby-Dick',624,'Editorial K','978-0-14-243724-7'),(17,'La Metamorfosis',55,'Editorial J','978-84-939625-0-4'),(18,'Crimen en la Calle Morgue',32,'Editorial I','978-0-486-44421-7'),(19,'Cazadores de Sombras: Ciudad de Hueso',485,'Editorial H','978-84-203-0309-1'),(20,'La Odisea',372,'Editorial G','978-84-460-1282-0'),(21,'Frankenstein',166,'Editorial F','978-0-486-28273-3'),(22,'La Iliada',464,'Editorial E','978-0-14-044592-3'),(23,'Las Aventuras de Sherlock Holmes',340,'Editorial D','978-84-670-3661-7'),(24,'La Catedral del Mar',696,'Editorial C','978-84-233-3792-4'),(25,'Los Miserables',1488,'Editorial B','978-84-663-2587-4'),(26,'El Perfume',272,'Editorial A','978-84-339-6012-2'),(27,'Las Crónicas de Narnia: El León, la Bruja y el Armario',206,'Editorial X','978-84-460-0820-4'),(28,'Memorias de una Geisha',532,'Editorial Y','978-0-679-78158-2'),(29,'El Silmarillion',384,'Editorial Z','978-0-547-97015-7'),(30,'La Carretera',287,'Editorial W','978-84-339-2599-8'),(31,'El Cazador de Libros',528,'Editorial V','978-84-9918-198-2'),(32,'La Casa de los Espíritus',460,'Editorial U','978-84-8306-008-6'),(33,'Canción de Hielo y Fuego: Juego de Tronos',694,'Editorial T','978-84-672-0379-0'),(34,'La Historia Interminable',448,'Editorial S','978-84-663-1062-9'),(35,'La Ciudad de las Bestias',396,'Editorial R','978-84-9759-116-2'),(36,'El Nombre del Viento',672,'Editorial Q','978-84-480-6080-6'),(37,'Los Pilares de la Tierra',973,'Editorial P','978-84-322-5272-6'),(38,'Crónica de una Muerte Anunciada',120,'Editorial O','978-84-339-1314-9'),(39,'El Clan del Oso Cavernario',544,'Editorial M','978-84-08-04982-2'),(40,'El Círculo',504,'Editorial L','978-84-253-4586-9'),(41,'El Cuervo',240,'Editorial K','978-0-553-21078-3'),(42,'Drácula',488,'Editorial J','978-84-487-2386-9'),(43,'Crimen y Castigo',672,'Editorial I','978-84-608-7691-5'),(44,'La Sombra del Viento',488,'Editorial H','978-84-672-0017-8'),(45,'1984',352,'Editorial G','978-84-670-0670-4'),(46,'Matar a un Ruiseñor',336,'Editorial F','978-84-8109-367-3'),(47,'Los Juegos del Hambre',400,'Editorial A','978-84-123456-7'),(48,'El Gran Gatsby',248,'Editorial B','978-84-234567-8'),(49,'El Hobbit',288,'Editorial C','978-84-345678-9'),(50,'Los Juegos del Hambre: En Llamas',391,'Editorial X','978-0-123456-7');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestar`
--

DROP TABLE IF EXISTS `prestar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestar` (
  `fecha_devolucion` date NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `usuario_id` int NOT NULL,
  `ejemplares_id` int NOT NULL,
  KEY `fk_prestar_usuario1_idx` (`usuario_id`),
  KEY `fk_prestar_ejemplares1_idx` (`ejemplares_id`),
  CONSTRAINT `fk_prestar_ejemplares1` FOREIGN KEY (`ejemplares_id`) REFERENCES `ejemplares` (`id`),
  CONSTRAINT `fk_prestar_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestar`
--

LOCK TABLES `prestar` WRITE;
/*!40000 ALTER TABLE `prestar` DISABLE KEYS */;
INSERT INTO `prestar` VALUES ('2023-09-10','2023-08-23',5,13),('2023-07-23','2023-07-27',15,23),('2023-08-29','2023-09-04',12,1),('2023-08-28','2023-09-02',4,3),('2023-07-27','2023-08-01',13,2),('2023-09-05','2023-09-09',14,4),('2023-06-22','2023-06-27',10,6),('2023-07-23','2023-07-27',9,7),('2023-08-23','2023-08-27',7,5),('2023-08-23','2023-08-27',9,8),('2023-08-29','2023-09-04',2,10),('2023-08-28','2023-09-02',7,11),('2023-07-27','2023-08-01',3,9),('2023-09-05','2023-09-09',7,12),('2023-06-22','2023-06-27',8,14),('2023-07-23','2023-07-27',6,15),('2023-08-23','2023-08-27',7,16),('2023-05-25','2023-05-27',4,20),('2023-07-23','2023-07-27',6,17),('2023-02-08','2023-02-02',1,18),('2023-09-06','2023-09-10',14,19),('2023-03-23','2023-03-27',10,21),('2023-05-29','2023-05-04',11,25),('2023-08-28','2023-09-02',6,23),('2023-06-27','2023-06-01',3,22),('2023-09-05','2023-09-09',7,24),('2023-02-22','2023-02-27',9,26),('2023-04-23','2023-04-27',1,30),('2023-05-23','2023-05-27',1,27),('2023-04-25','2023-04-27',1,29),('2023-01-23','2023-01-27',2,28);
/*!40000 ALTER TABLE `prestar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) NOT NULL,
  `direccion` varchar(45) NOT NULL,
  `telefono` char(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'maria ','lopez ','calle34#21-43','3003456789'),(2,'juan','rodriguez','cra12#23-12','3044567890'),(3,'ana','martinez','calle15 #5-31','3175678901'),(4,'luis','gonzalez ','calle34#5-32','3016789012'),(5,'carmen','perez ','calle22#3-54','3187890123'),(6,'jorge','hernandez ','calle67#45-32','3101234567'),(7,'laura','torres ','calle24#3-45','3152345678'),(8,'pedro','diaz','calle22#22-43','3198901234'),(9,'sofia','ramirez','calle12#45-32','3029012345'),(10,'alejandro','ruiz','calle23#45-12','3130123456'),(11,'andrea','castro','calle16#20-43','3016789012'),(12,'diego','morales','calle34#45-45','3211234567'),(13,'isabel','fernandez','calle12#11-34','3222345678'),(14,'manuel','silva','cra7h#26-45','3233456889'),(15,'lucia','ortiz','cra7h#24-25','3244567890');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'base_datos_biblioteca'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 11:56:18
