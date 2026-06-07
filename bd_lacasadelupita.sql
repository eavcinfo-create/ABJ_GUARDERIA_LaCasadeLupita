-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: bd_lacasadelupita
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `info_juego2`
--

DROP TABLE IF EXISTS `info_juego2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_juego2` (
  `id_palabra` int NOT NULL,
  `palabra` varchar(45) DEFAULT NULL,
  `completa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_palabra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_juego2`
--

LOCK TABLES `info_juego2` WRITE;
/*!40000 ALTER TABLE `info_juego2` DISABLE KEYS */;
INSERT INTO `info_juego2` VALUES (1,'V | _ | C | _','VACA'),(2,'Z | _ | R | R | _','ZORRO'),(3,'M | _ | D | _ | S | _','MEDUSA'),(4,'_ | B | _ | J | _','ABEJA'),(5,'K | _ | _ | L | _','KOALA'),(6,'_ | N | _ | C | _ | N | D | _','ANACONDA'),(7,'_ | V | _ | J | _','OVEJA'),(8,'C | _ | M | _ | L | L | _','CAMELLO'),(9,'S | _ | C | _ | D | _ | R | _','SECADORA'),(10,'C | _ | M | P | _ | N | _','CAMPANA'),(11,'R | _ | B | _ | T','ROBOT'),(12,'_ | S | C | _ | B | _','ESCOBA'),(13,'C | _ | B | _','CUBO'),(14,'_ | V | N | _','OVNI'),(15,'S | _ | N | D | _ | L | _ | _ | S','SANDALIAS'),(16,'L | _ | V | _ | D | _ | R | _','LAVADORA'),(17,'B | _ | T | _ | S','BOTAS'),(18,'V | _ | S | T | _ | D | _','VESTIDO'),(19,'S | _ | M | B | R | _ | R | _','SOMBRERO'),(20,'C | _ | R | B | _ | T | _','CORBATA'),(21,'F | _ | L | D | _','FALDA'),(22,'M | _ | R | _ | P | _ | S | _','MARIPOSA'),(23,'_ | B | _ | N | _ | C | _','ABANICO'),(24,'C | _ | S | _','CASA'),(25,'H | _ | R | M | _ | G | _','HORMIGA'),(26,'P | L | _ | Y | _','PLAYA'),(27,'P | _ | L | _ | T | _','PELOTA'),(28,'P | _ | Z | _ | R | R | _','PIZARRA'),(29,'M | _ | C | H | _ | L | _','MOCHILA'),(30,'R | _ | L | _ | J','RELOJ'),(31,'P | _ | R | R | _','PERRO'),(32,'M | _ | N | Z | _ | N | _','MANZANA'),(33,'Z | _ | N | _ | H | _ | R | _ | _','ZANAHORIA'),(34,'T | _ | M | _ | T | _','TOMATE'),(35,'C | _ | M | _','CAMA'),(36,'C | _ | M | P | _ | T | _ | D | _ | R | _','COMPUTADORA'),(37,'T | _ | G | R | _','TIGRE'),(38,'B | _ | S | _ | N | T | _','BISONTE'),(39,'D | _ | N | _ | S | _ | _ | R | _ | _','DINOSAURIO'),(40,'T | _ | R | T | _ | G | _','TORTUGA');
/*!40000 ALTER TABLE `info_juego2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jugador`
--

DROP TABLE IF EXISTS `jugador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jugador` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nom_jugador` varchar(45) DEFAULT NULL,
  `ap_jugador` varchar(45) DEFAULT NULL,
  `usu_jugador` varchar(45) DEFAULT NULL,
  `contra_jugador` varchar(45) DEFAULT NULL,
  `palabra_recuperacion` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jugador`
--

LOCK TABLES `jugador` WRITE;
/*!40000 ALTER TABLE `jugador` DISABLE KEYS */;
INSERT INTO `jugador` VALUES (1,'EDGAR','VELASQUEZ','Temerario','prueba','prueba'),(2,'EDUARDO','VELASQUEZ','Ed@n','prueba2','prueba2'),(3,'ELSY','DUAREZ','ElsyDu','prueba3','prueba3'),(4,'AURORA','CARRION','Aurora','prueba4','prueba4');
/*!40000 ALTER TABLE `jugador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado_juego_1`
--

DROP TABLE IF EXISTS `resultado_juego_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado_juego_1` (
  `cod_juego1` int NOT NULL AUTO_INCREMENT,
  `id_jugador_j1` int NOT NULL,
  `estado_j1` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_juego1`),
  KEY `id_jugador_idx` (`id_jugador_j1`),
  CONSTRAINT `id_jugador1` FOREIGN KEY (`id_jugador_j1`) REFERENCES `jugador` (`id_jugador`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado_juego_1`
--

LOCK TABLES `resultado_juego_1` WRITE;
/*!40000 ALTER TABLE `resultado_juego_1` DISABLE KEYS */;
INSERT INTO `resultado_juego_1` VALUES (1,2,'gano'),(2,3,'gano'),(3,2,'perdio'),(4,1,'gano'),(5,3,'gano'),(6,1,'gano'),(7,1,'gano'),(8,1,'perdio'),(9,1,'perdio');
/*!40000 ALTER TABLE `resultado_juego_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resultado_juego_2`
--

DROP TABLE IF EXISTS `resultado_juego_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `resultado_juego_2` (
  `cod_juego_2` int NOT NULL AUTO_INCREMENT,
  `id_jugador_j2` int NOT NULL,
  `estado_j2` varchar(45) NOT NULL,
  PRIMARY KEY (`cod_juego_2`),
  KEY `id_jugador_idx` (`id_jugador_j2`),
  CONSTRAINT `id_jugador2` FOREIGN KEY (`id_jugador_j2`) REFERENCES `jugador` (`id_jugador`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resultado_juego_2`
--

LOCK TABLES `resultado_juego_2` WRITE;
/*!40000 ALTER TABLE `resultado_juego_2` DISABLE KEYS */;
INSERT INTO `resultado_juego_2` VALUES (1,1,'gano'),(2,1,'gano'),(3,1,'perdio'),(4,1,'perdio');
/*!40000 ALTER TABLE `resultado_juego_2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-07 11:38:33
