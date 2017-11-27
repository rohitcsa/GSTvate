-- MySQL dump 10.13  Distrib 5.5.54, for Win32 (AMD64)
--
-- Host: localhost    Database: gstdemo
-- ------------------------------------------------------
-- Server version	5.5.54

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
-- Table structure for table `listpurchaseinvoice`
--

DROP TABLE IF EXISTS `listpurchaseinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listpurchaseinvoice` (
  `invoiceid` varchar(45) NOT NULL,
  `vendor` varchar(45) DEFAULT NULL,
  `created` varchar(45) DEFAULT NULL,
  `duedate` varchar(45) DEFAULT NULL,
  `totalamount` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listpurchaseinvoice`
--

LOCK TABLES `listpurchaseinvoice` WRITE;
/*!40000 ALTER TABLE `listpurchaseinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `listpurchaseinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listsalesinvoice`
--

DROP TABLE IF EXISTS `listsalesinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listsalesinvoice` (
  `invoiceid` varchar(45) NOT NULL,
  `customer` varchar(45) DEFAULT NULL,
  `created` varchar(45) DEFAULT NULL,
  `duedate` varchar(45) DEFAULT NULL,
  `totalamount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listsalesinvoice`
--

LOCK TABLES `listsalesinvoice` WRITE;
/*!40000 ALTER TABLE `listsalesinvoice` DISABLE KEYS */;
INSERT INTO `listsalesinvoice` VALUES ('a223','amit pvt ltd','23/6/2017','12/12/2017','3000'),('f33g','jay stationary','12/2/2017','12/12/2017','4000');
/*!40000 ALTER TABLE `listsalesinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materialmaster`
--

DROP TABLE IF EXISTS `materialmaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materialmaster` (
  `material` varchar(45) NOT NULL,
  `openstock` varchar(45) DEFAULT NULL,
  `purchased` varchar(45) DEFAULT NULL,
  `sold` varchar(45) DEFAULT NULL,
  `finalstock` varchar(45) DEFAULT NULL,
  `hsn` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materialmaster`
--

LOCK TABLES `materialmaster` WRITE;
/*!40000 ALTER TABLE `materialmaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `materialmaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profile` (
  `name` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `pin` varchar(45) DEFAULT NULL,
  `panno` varchar(45) DEFAULT NULL,
  `gstnno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchaseinvoice`
--

DROP TABLE IF EXISTS `purchaseinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseinvoice` (
  `date` varchar(45) NOT NULL,
  `partyname` varchar(45) DEFAULT NULL,
  `palce` varchar(45) DEFAULT NULL,
  `particular` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `weight` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchaseinvoice`
--

LOCK TABLES `purchaseinvoice` WRITE;
/*!40000 ALTER TABLE `purchaseinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchaseinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinvoice`
--

DROP TABLE IF EXISTS `salesinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesinvoice` (
  `billno` varchar(45) NOT NULL,
  `date` varchar(45) DEFAULT NULL,
  `partyname` varchar(45) DEFAULT NULL,
  `palce` varchar(45) DEFAULT NULL,
  `material` varchar(45) DEFAULT NULL,
  `qty` varchar(45) DEFAULT NULL,
  `uom` varchar(45) DEFAULT NULL,
  `rate` varchar(45) DEFAULT NULL,
  `amount` varchar(45) DEFAULT NULL,
  `gsttype` varchar(45) DEFAULT NULL,
  `cgst` varchar(45) DEFAULT NULL,
  `igst` varchar(45) DEFAULT NULL,
  `sgst` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`billno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinvoice`
--

LOCK TABLES `salesinvoice` WRITE;
/*!40000 ALTER TABLE `salesinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signin`
--

DROP TABLE IF EXISTS `signin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `signin` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signin`
--

LOCK TABLES `signin` WRITE;
/*!40000 ALTER TABLE `signin` DISABLE KEYS */;
/*!40000 ALTER TABLE `signin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendormaster`
--

DROP TABLE IF EXISTS `vendormaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendormaster` (
  `partyname` varchar(45) NOT NULL,
  `add1` varchar(45) DEFAULT NULL,
  `add2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `statecode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`partyname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendormaster`
--

LOCK TABLES `vendormaster` WRITE;
/*!40000 ALTER TABLE `vendormaster` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendormaster` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-27 11:52:43
