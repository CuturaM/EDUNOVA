-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `artikli`
--

DROP TABLE IF EXISTS `artikli`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artikli` (
  `arsif` int(11) DEFAULT NULL,
  `arnaziv` varchar(4) DEFAULT NULL,
  `arnaziv_pos` varchar(3) DEFAULT NULL,
  `arcijena` int(11) DEFAULT NULL,
  `arjmj` varchar(3) DEFAULT NULL,
  `argrupa` varchar(0) DEFAULT NULL,
  `arvrsta_poreza` int(11) DEFAULT NULL,
  `arpdv` int(11) DEFAULT NULL,
  `arpp` int(11) DEFAULT NULL,
  `arneaktivan` varchar(5) DEFAULT NULL,
  `arkod` varchar(0) DEFAULT NULL,
  `arpovratna_naknada` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artikli`
--

LOCK TABLES `artikli` WRITE;
/*!40000 ALTER TABLE `artikli` DISABLE KEYS */;
INSERT INTO `artikli` VALUES (1,'cola','col',10,'kom','',1,0,0,'False','',0.0000);
/*!40000 ALTER TABLE `artikli` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dkonta`
--

DROP TABLE IF EXISTS `dkonta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dkonta` (
  `sifdok` text,
  `konto` text,
  `polje` text,
  `id` text,
  `tipracuna` text,
  `sifpj` text,
  `guid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkonta`
--

LOCK TABLES `dkonta` WRITE;
/*!40000 ALTER TABLE `dkonta` DISABLE KEYS */;
/*!40000 ALTER TABLE `dkonta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firmadat`
--

DROP TABLE IF EXISTS `firmadat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firmadat` (
  `naziv` varchar(9) DEFAULT NULL,
  `ulica` varchar(5) DEFAULT NULL,
  `email` varchar(5) DEFAULT NULL,
  `kbr` varchar(3) DEFAULT NULL,
  `mjesto` varchar(6) DEFAULT NULL,
  `radno_vrijeme` varchar(5) DEFAULT NULL,
  `oib` int(11) DEFAULT NULL,
  `tip` int(11) DEFAULT NULL,
  `pp` int(11) DEFAULT NULL,
  `nu` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firmadat`
--

LOCK TABLES `firmadat` WRITE;
/*!40000 ALTER TABLE `firmadat` DISABLE KEYS */;
INSERT INTO `firmadat` VALUES ('IME FIRME','ULICA','email','15B','MJESTO','00-24',2147483647,2,1,1,1);
/*!40000 ALTER TABLE `firmadat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grupe`
--

DROP TABLE IF EXISTS `grupe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupe` (
  `grsif` text,
  `grnaziv` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grupe`
--

LOCK TABLES `grupe` WRITE;
/*!40000 ALTER TABLE `grupe` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keyboard`
--

DROP TABLE IF EXISTS `keyboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keyboard` (
  `kkey` text,
  `kopis` text,
  `kboja` text,
  `kshift` text,
  `kartikl` text,
  `kgrupa` text,
  `kid` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keyboard`
--

LOCK TABLES `keyboard` WRITE;
/*!40000 ALTER TABLE `keyboard` DISABLE KEYS */;
/*!40000 ALTER TABLE `keyboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parametri`
--

DROP TABLE IF EXISTS `parametri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parametri` (
  `par_sifra` varchar(18) DEFAULT NULL,
  `par_opis` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parametri`
--

LOCK TABLES `parametri` WRITE;
/*!40000 ALTER TABLE `parametri` DISABLE KEYS */;
INSERT INTO `parametri` VALUES ('DRAZEN_BAZA_1','c:vbfisk_liteaza.mdb'),('DRAZEN_BAZA_2','c:vbfisk_liteaza.mdb'),('DRAZEN_BAZA_3','c:vbfisk_liteaza.mdb'),('DRAZEN_OPIS_1','Baza 1'),('DRAZEN_OPIS_2','Baza 2'),('DRAZEN_OPIS_3','Baza 3'),('TISAK_POS','0'),('KOPIJE_RACUNA','1'),('DECIMALE','2'),('KOLICINA','0'),('TREKAP','0'),('NACINPL','0'),('DEMO','1'),('RBR','1'),('A4_RED0',''),('A4_RED1',''),('A4_RED2',''),('A4_RED3',''),('A4_POMAK_Y','0.00'),('A4_RED4',''),('A4_RED5',''),('POS_SJECIPAPIR',''),('POS_LINIJE',''),('POS_DODATNIRED',''),('POS_DODATNIRED2',''),('POS_POSPRINTER',''),('POS_ZAG_VRH','0'),('POS_2REDA','0'),('POS_KODNA_STRANICA','0'),('POS_RED0',''),('POS_RED1',''),('POS_RED2',''),('POS_RED3','');
/*!40000 ALTER TABLE `parametri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `racuni`
--

DROP TABLE IF EXISTS `racuni`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `racuni` (
  `rn_id` text,
  `rn_datum` text,
  `rn_iznos` text,
  `rn_porez` text,
  `rn_pdv` text,
  `rn_usluga` text,
  `rn_placeno` text,
  `rn_inet_id` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `racuni`
--

LOCK TABLES `racuni` WRITE;
/*!40000 ALTER TABLE `racuni` DISABLE KEYS */;
/*!40000 ALTER TABLE `racuni` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `radnik`
--

DROP TABLE IF EXISTS `radnik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `radnik` (
  `login` varchar(5) DEFAULT NULL,
  `zaporka` varchar(0) DEFAULT NULL,
  `ime` varchar(13) DEFAULT NULL,
  `oib` varchar(0) DEFAULT NULL,
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `radnik`
--

LOCK TABLES `radnik` WRITE;
/*!40000 ALTER TABLE `radnik` DISABLE KEYS */;
INSERT INTO `radnik` VALUES ('admin','','Administrator','',1);
/*!40000 ALTER TABLE `radnik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reklame`
--

DROP TABLE IF EXISTS `reklame`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reklame` (
  `re_id` int(11) DEFAULT NULL,
  `re_naslov` varchar(11) DEFAULT NULL,
  `re_url` varchar(1) DEFAULT NULL,
  `re_tekst` varchar(11) DEFAULT NULL,
  `re_inet_id` int(11) DEFAULT NULL,
  `re_vrsta` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reklame`
--

LOCK TABLES `reklame` WRITE;
/*!40000 ALTER TABLE `reklame` DISABLE KEYS */;
INSERT INTO `reklame` VALUES (1,'060 626 626','-','060 626 626',4,4);
/*!40000 ALTER TABLE `reklame` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkgl`
--

DROP TABLE IF EXISTS `rkgl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rkgl` (
  `rgid` text,
  `rgdatum` text,
  `rgvrijeme` text,
  `rggodina` text,
  `rgbroj` text,
  `rgnapomena` text,
  `rgstorno_id` text,
  `rgjir` text,
  `rgzki` text,
  `rggreska` text,
  `rgdatum_slanja` text,
  `rgvrijeme_slanja` text,
  `rgradnik` text,
  `rgnacinpl` text,
  `rgr1_ime` text,
  `rgr1_adresa` text,
  `rgr1_mjesto` text,
  `rgr1_oib` text,
  `rgguid` text,
  `rgparagon` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkgl`
--

LOCK TABLES `rkgl` WRITE;
/*!40000 ALTER TABLE `rkgl` DISABLE KEYS */;
/*!40000 ALTER TABLE `rkgl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rkst`
--

DROP TABLE IF EXISTS `rkst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rkst` (
  `rkstid` text,
  `rkarsif` text,
  `rkkol` text,
  `rkcijena` text,
  `rkvrsta_poreza` text,
  `rkpdv` text,
  `rkpp` text,
  `rkrgid` text,
  `rkpovratna_naknada` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rkst`
--

LOCK TABLES `rkst` WRITE;
/*!40000 ALTER TABLE `rkst` DISABLE KEYS */;
/*!40000 ALTER TABLE `rkst` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `temp` (
  `tid` text,
  `pdv_stopa` text,
  `osnovica` text,
  `pp_stopa` text,
  `pdv` text,
  `pp` text,
  `vrsta_poreza` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp`
--

LOCK TABLES `temp` WRITE;
/*!40000 ALTER TABLE `temp` DISABLE KEYS */;
/*!40000 ALTER TABLE `temp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wizard`
--

DROP TABLE IF EXISTS `wizard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wizard` (
  `tablica` varchar(8) DEFAULT NULL,
  `polje` varchar(18) DEFAULT NULL,
  `opis` varchar(24) DEFAULT NULL,
  `tip` varchar(7) DEFAULT NULL,
  `opis1` varchar(0) DEFAULT NULL,
  `optionbox` varchar(93) DEFAULT NULL,
  `enabled` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wizard`
--

LOCK TABLES `wizard` WRITE;
/*!40000 ALTER TABLE `wizard` DISABLE KEYS */;
INSERT INTO `wizard` VALUES ('radnik','login','Šifra radnika','','','',''),('radnik','zaporka','Lozinka','','','',''),('radnik','ime','Prezime i ime','','','',''),('radnik','oib','OIB','','','',''),('grupe','grsif','Šifra','','','',''),('grupe','grnaziv','Naziv','','','',''),('artikli','arsif','Šifra','','','',''),('artikli','arnaziv','Naziv artikla/usluge','','','',''),('artikli','argrupa','Grupa','L:GRUPE','','',''),('artikli','arnaziv_pos','Skraćeni naziv (POS)','','','',''),('artikli','arpdv','PDV','','','',''),('artikli','arpp','Porez na potrošnju','','','',''),('artikli','arneaktivan','Neaktivno','','','',''),('firmadat','naziv','Ime firme','','','',''),('firmadat','ulica','Ulica','','','',''),('firmadat','kbr','Kućni broj','','','',''),('firmadat','mjesto','Mjesto','','','',''),('firmadat','radno_vrijeme','Radno vrijeme','','','',''),('firmadat','OIB','OIB','','','',''),('artikli','arjmj','Jed. Mjere','','','',''),('artikli','arcijena','Cijena','','','',''),('firmadat','pp','Šifra poslovnog prostora','','','',''),('firmadat','nu','Šifra naplatnog uređaja','','','',''),('firmadat','tip','Obveznik PDV-a','','','0|Nije u sustavu PDV-a|1|Obveznik PDV-a na izdane račune|2|Obveznik PDV-a na naplaćene račune',''),('artikli','arvrsta_poreza','Vrsta poreza','','','1|PDV|2|Oslobođen od PDV-a|3|Iznos ne podliježe oporezivanju|4|Ostali porez',''),('firmadat','email','E-mail','','','',''),('artikli','arkod','Bar kod','','','',''),('artikli','arpovratna_naknada','Povratna naknada','','','','');
/*!40000 ALTER TABLE `wizard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:53:53
