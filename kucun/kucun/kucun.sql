CREATE DATABASE  IF NOT EXISTS `kucun` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `kucun`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: kucun
-- ------------------------------------------------------
-- Server version	5.7.12-log

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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `caddress` varchar(255) DEFAULT NULL,
  `cname` varchar(255) DEFAULT NULL,
  `cphone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `goods`
--

DROP TABLE IF EXISTS `goods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `goods`
--

LOCK TABLES `goods` WRITE;
/*!40000 ALTER TABLE `goods` DISABLE KEYS */;
INSERT INTO `goods` VALUES (1,'冰箱','3000'),(2,'彩电','2800');
/*!40000 ALTER TABLE `goods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menandkucun`
--

DROP TABLE IF EXISTS `menandkucun`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menandkucun` (
  `id` int(11) NOT NULL,
  `kucun` int(11) NOT NULL,
  `Gid` int(11) DEFAULT NULL,
  `Mid` int(11) DEFAULT NULL,
  `Q` int(11) NOT NULL,
  `ROP` int(11) NOT NULL,
  `lasttime` datetime DEFAULT NULL,
  `xuqiuyuce` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_kfu17xpojhevhpnyvlq4l9hgk` (`Gid`),
  KEY `FK_iy3bbpdbi7hx9jaf7ktcdy2o` (`Mid`),
  CONSTRAINT `FK_iy3bbpdbi7hx9jaf7ktcdy2o` FOREIGN KEY (`Mid`) REFERENCES `mendian` (`id`),
  CONSTRAINT `FK_kfu17xpojhevhpnyvlq4l9hgk` FOREIGN KEY (`Gid`) REFERENCES `goods` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menandkucun`
--

LOCK TABLES `menandkucun` WRITE;
/*!40000 ALTER TABLE `menandkucun` DISABLE KEYS */;
INSERT INTO `menandkucun` VALUES (1,100,1,1,200,60,NULL,400),(2,120,2,2,300,80,NULL,450),(3,200,1,2,260,70,NULL,420),(4,150,2,1,320,65,NULL,380);
/*!40000 ALTER TABLE `menandkucun` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mendian`
--

DROP TABLE IF EXISTS `mendian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mendian` (
  `id` int(11) NOT NULL,
  `idress` varchar(255) DEFAULT NULL,
  `mingxi` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mendian`
--

LOCK TABLES `mendian` WRITE;
/*!40000 ALTER TABLE `mendian` DISABLE KEYS */;
INSERT INTO `mendian` VALUES (1,'总部','1','总部'),(2,'江苏南通','1','南通家电旗舰店'),(3,'矿大南湖','1','矿大南湖企鹅店');
/*!40000 ALTER TABLE `mendian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `renquanxian`
--

DROP TABLE IF EXISTS `renquanxian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `renquanxian` (
  `id` int(11) NOT NULL,
  `idress` varchar(255) DEFAULT NULL,
  `iphone` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `Mid` int(11) DEFAULT NULL,
  `ShenFen` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_jm9bj9njhdx34iy4352v93ivp` (`Mid`),
  CONSTRAINT `FK_jm9bj9njhdx34iy4352v93ivp` FOREIGN KEY (`Mid`) REFERENCES `mendian` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `renquanxian`
--

LOCK TABLES `renquanxian` WRITE;
/*!40000 ALTER TABLE `renquanxian` DISABLE KEYS */;
INSERT INTO `renquanxian` VALUES (1,'松四','10086','张三',1,'1'),(2,'松二','10087','路飞',2,'2'),(3,'松一','10088','佐罗',3,'2'),(4,'松一','10089','巴基',2,'2'),(5,'松一','10090','拉布 ',3,'2');
/*!40000 ALTER TABLE `renquanxian` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `rid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_pf4u2lnodgaoykxdswfq1dik8` (`rid`),
  CONSTRAINT `FK_pf4u2lnodgaoykxdswfq1dik8` FOREIGN KEY (`rid`) REFERENCES `renquanxian` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123456','namei',1),(2,'654321','shanzhi',2),(3,'456789','wusuopu',3),(4,'987654','qiaoba',NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xiaoshoumingxi`
--

DROP TABLE IF EXISTS `xiaoshoumingxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xiaoshoumingxi` (
  `id` int(11) NOT NULL,
  `date` datetime DEFAULT NULL,
  `Cid` int(11) DEFAULT NULL,
  `Gid` int(11) DEFAULT NULL,
  `Mid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_147uesdn0omkchpchhsjhyglj` (`Cid`),
  KEY `FK_9no8tpfr0fucuenqlksk70s4t` (`Gid`),
  KEY `FK_nhorceitj73piw73inhhlo43r` (`Mid`),
  CONSTRAINT `FK_147uesdn0omkchpchhsjhyglj` FOREIGN KEY (`Cid`) REFERENCES `customer` (`id`),
  CONSTRAINT `FK_9no8tpfr0fucuenqlksk70s4t` FOREIGN KEY (`Gid`) REFERENCES `goods` (`id`),
  CONSTRAINT `FK_nhorceitj73piw73inhhlo43r` FOREIGN KEY (`Mid`) REFERENCES `mendian` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xiaoshoumingxi`
--

LOCK TABLES `xiaoshoumingxi` WRITE;
/*!40000 ALTER TABLE `xiaoshoumingxi` DISABLE KEYS */;
/*!40000 ALTER TABLE `xiaoshoumingxi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-28 14:13:43
