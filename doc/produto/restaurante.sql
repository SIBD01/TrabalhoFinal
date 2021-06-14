-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: restaurante
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `nrTelefone` int(9) unsigned NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`nrTelefone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (912345678,'Diogo Silva','diogo.silva@gmail.com'),(912345677,'Rafael Lima','rafaelima@hotmail.com'),(912345676,'Marisa Melo','marisamelo@gmail.com'),(912345675,'Lucas Pinto','lucas.pinto@gmail.com'),(912345674,'Ederzito Lopes','hojeeferiado@hotmail.com');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado`
--

DROP TABLE IF EXISTS `empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado` (
  `nrEmpregado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nrPedido` int(9) unsigned NOT NULL,
  `nrMesa` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nrEmpregado`,`nrPedido`,`nrMesa`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado`
--

LOCK TABLES `empregado` WRITE;
/*!40000 ALTER TABLE `empregado` DISABLE KEYS */;
INSERT INTO `empregado` VALUES (1,3,9),(7,44,4),(12,89,15),(12,102,2);
/*!40000 ALTER TABLE `empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empregado_encomenda`
--

DROP TABLE IF EXISTS `empregado_encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empregado_encomenda` (
  `nrCC` int(8) unsigned NOT NULL,
  `produtoCod` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nrCC`,`produtoCod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empregado_encomenda`
--

LOCK TABLES `empregado_encomenda` WRITE;
/*!40000 ALTER TABLE `empregado_encomenda` DISABLE KEYS */;
INSERT INTO `empregado_encomenda` VALUES (11741362,473),(12969753,58),(12969753,473),(14156761,292),(19196345,58),(19196345,99),(19196345,347);
/*!40000 ALTER TABLE `empregado_encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encomenda`
--

DROP TABLE IF EXISTS `encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encomenda` (
  `nrEncomenda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`nrEncomenda`)
) ENGINE=MyISAM AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encomenda`
--

LOCK TABLES `encomenda` WRITE;
/*!40000 ALTER TABLE `encomenda` DISABLE KEYS */;
INSERT INTO `encomenda` VALUES (59,'14/05/2021'),(2,'07/02/2021'),(60,'14/05/2021'),(100,'16/06/2021');
/*!40000 ALTER TABLE `encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `encomenda_fornecedor`
--

DROP TABLE IF EXISTS `encomenda_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `encomenda_fornecedor` (
  `produtoCod` int(10) unsigned NOT NULL,
  `numero` int(10) unsigned NOT NULL,
  PRIMARY KEY (`produtoCod`,`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `encomenda_fornecedor`
--

LOCK TABLES `encomenda_fornecedor` WRITE;
/*!40000 ALTER TABLE `encomenda_fornecedor` DISABLE KEYS */;
INSERT INTO `encomenda_fornecedor` VALUES (58,576872610),(99,140265490),(292,359813747),(347,576872610),(473,283702125);
/*!40000 ALTER TABLE `encomenda_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `numero` int(9) unsigned NOT NULL,
  `nomeEmpresa` varchar(255) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  PRIMARY KEY (`numero`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (576872610,'Bebidas, Lda','Bebidas'),(140265490,'Irmãos Talhante, Lda','Carnes'),(359813747,'Famalicão Mariscos, Lda','Peixes'),(283702125,'Boca Doce, Lda','Sobremesas');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_empregado`
--

DROP TABLE IF EXISTS `info_empregado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_empregado` (
  `nrEmpregado` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `função` varchar(50) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `nrCC` int(8) unsigned NOT NULL,
  PRIMARY KEY (`nrEmpregado`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_empregado`
--

LOCK TABLES `info_empregado` WRITE;
/*!40000 ALTER TABLE `info_empregado` DISABLE KEYS */;
INSERT INTO `info_empregado` VALUES (1,'Chefe de Sala','Mariana Barros',11741362),(7,'Empregado de Mesa','Paulo Correia',12969753),(12,'Empregado de Mesa','Tiago Carvalho',14156761),(11,'Rececionista','Sofia Cunha',19196345);
/*!40000 ALTER TABLE `info_empregado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_mesa`
--

DROP TABLE IF EXISTS `info_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_mesa` (
  `nrMesa` int(10) unsigned NOT NULL,
  `dia` varchar(50) DEFAULT NULL,
  `hora` time NOT NULL,
  `nrPessoas` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nrMesa`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_mesa`
--

LOCK TABLES `info_mesa` WRITE;
/*!40000 ALTER TABLE `info_mesa` DISABLE KEYS */;
INSERT INTO `info_mesa` VALUES (7,'10/06/2021','20:30:00',4),(9,'10/06/2021','13:00:00',4),(4,'11/06/2021','12:15:00',2),(15,'12/06/2021','20:45:00',6),(2,'12/06/2021','20:15:00',3);
/*!40000 ALTER TABLE `info_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info_pedido`
--

DROP TABLE IF EXISTS `info_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info_pedido` (
  `nrPedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entrada` varchar(50) DEFAULT NULL,
  `bebida` varchar(50) NOT NULL,
  `prato` varchar(50) NOT NULL,
  `sobremesa` varchar(50) DEFAULT NULL,
  `cafe` int(11) DEFAULT NULL,
  PRIMARY KEY (`nrPedido`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info_pedido`
--

LOCK TABLES `info_pedido` WRITE;
/*!40000 ALTER TABLE `info_pedido` DISABLE KEYS */;
INSERT INTO `info_pedido` VALUES (3,'Bolinhos de bacalhau','Água','Robalo Assado','Baba de camelo',3),(44,NULL,'Vinho Verde','Cogumelos Recheados','Tiramisu',2),(89,'Presunto e Queijo','Pepsi','Vitela Assada',NULL,4),(102,'Presunto e Queijo','Vinho Verde','Vitela Assada',NULL,NULL);
/*!40000 ALTER TABLE `info_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `linhaencomenda`
--

DROP TABLE IF EXISTS `linhaencomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linhaencomenda` (
  `produtoCod` int(10) unsigned NOT NULL,
  `encomendaQuantidade` int(10) unsigned NOT NULL,
  `nrEncomenda` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`produtoCod`,`nrEncomenda`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linhaencomenda`
--

LOCK TABLES `linhaencomenda` WRITE;
/*!40000 ALTER TABLE `linhaencomenda` DISABLE KEYS */;
INSERT INTO `linhaencomenda` VALUES (58,2,59),(347,10,59),(99,1,2),(292,5,60);
/*!40000 ALTER TABLE `linhaencomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `nrPedido` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nrTelefone` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nrPedido`,`nrTelefone`)
) ENGINE=MyISAM AUTO_INCREMENT=103 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (3,912345678),(44,912345677),(89,912345676),(102,912345674);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `produtoCod` int(10) unsigned NOT NULL,
  `produto` varchar(255) NOT NULL,
  PRIMARY KEY (`produtoCod`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (58,'Vinho Verde'),(99,'Vitela'),(292,'Robalo'),(347,'Pepsi'),(473,'Tiramisu');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reserva`
--

DROP TABLE IF EXISTS `reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reserva` (
  `nrMesa` int(10) unsigned NOT NULL,
  `nrTelefone` int(9) unsigned NOT NULL,
  PRIMARY KEY (`nrMesa`,`nrTelefone`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reserva`
--

LOCK TABLES `reserva` WRITE;
/*!40000 ALTER TABLE `reserva` DISABLE KEYS */;
INSERT INTO `reserva` VALUES (2,912345674),(4,912345677),(9,912345678),(15,912345676);
/*!40000 ALTER TABLE `reserva` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-14 17:07:00
