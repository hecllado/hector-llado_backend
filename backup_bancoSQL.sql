-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: database
-- ------------------------------------------------------
-- Server version	5.7.20-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_costumer_account`
--

DROP TABLE IF EXISTS `tb_costumer_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_costumer_account` (
  `id_costumer` int(11) NOT NULL AUTO_INCREMENT,
  `cpf_cnpj` varchar(45) NOT NULL,
  `nm_costumer` varchar(255) NOT NULL,
  `is_active` int(11) NOT NULL,
  `vl_total` decimal(10,0) NOT NULL,
  PRIMARY KEY (`id_costumer`),
  UNIQUE KEY `id_costumer_UNIQUE` (`id_costumer`),
  UNIQUE KEY `cpf_cnpj_UNIQUE` (`cpf_cnpj`)
) ENGINE=InnoDB AUTO_INCREMENT=2701 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_costumer_account`
--

LOCK TABLES `tb_costumer_account` WRITE;
/*!40000 ALTER TABLE `tb_costumer_account` DISABLE KEYS */;
INSERT INTO `tb_costumer_account` VALUES (1202,'João da Silva','40215898790',1,2064),(1235,'João Bebum','40215898783',1,3),(1400,'João dos Cipós','40215898793',1,200),(1422,'João dos Matos','40215898795',1,1000),(1423,'João das Marias','40215898797',1,45),(1501,'João dos mares','40215898791',1,450),(1576,'João dos Reis','40215898792',1,36578),(1596,'João dos Hiatos','40215898794',1,789),(1600,'João dos Joãos','40215898796',1,5),(1603,'João dos Céus','40215898798',1,999),(1785,'João da Esquina','40215898799',1,2015),(1888,'João Dória','40215898784',1,35),(1896,'João da Igreja','40215898781',1,2016),(2500,'João o Joãozinho','40215898785',1,90),(2700,'João do Bar','40215898782',1,9666);
/*!40000 ALTER TABLE `tb_costumer_account` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-10 17:51:46
