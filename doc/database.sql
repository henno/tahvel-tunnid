-- MySQL dump 10.13  Distrib 5.7.26, for osx10.10 (x86_64)
--
-- Host: localhost    Database: tahvel
-- ------------------------------------------------------
-- Server version	5.7.26

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
-- Table structure for table `journalEntries`
--

DROP TABLE IF EXISTS `journalEntries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journalEntries` (
  `entryDate` date DEFAULT NULL,
  `nameEt` varchar(97) DEFAULT NULL,
  `nameEn` int(11) DEFAULT NULL,
  `entryType` varchar(12) DEFAULT NULL,
  `startLessonNr` int(11) DEFAULT NULL,
  `lessons` int(11) DEFAULT NULL,
  `curriculumModuleOutcomes` int(11) DEFAULT NULL,
  `outcomeOrderNr` int(11) DEFAULT NULL,
  `curriculumModule` int(11) DEFAULT NULL,
  `id` int(11) DEFAULT NULL,
  `teacher` varchar(22) DEFAULT NULL,
  `moodleGradeItemId` int(11) DEFAULT NULL,
  `journalId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journalEntries`
--

LOCK TABLES `journalEntries` WRITE;
/*!40000 ALTER TABLE `journalEntries` DISABLE KEYS */;
INSERT INTO `journalEntries` VALUES ('2020-03-12','Praktiline töö',NULL,'SISSEKANNE_P',1,9,NULL,NULL,NULL,609563,'Henno Täht',NULL,45154),('2020-03-30','Iseseisev töö1',NULL,'SISSEKANNE_I',1,8,NULL,NULL,NULL,635100,'Henno Täht',NULL,45154),('2020-03-31','ÕV1: Poenimekirja loomine ja jagamine',NULL,'SISSEKANNE_I',1,15,NULL,NULL,NULL,635101,'Henno Täht',NULL,45154),('2020-03-31','ÕV1: Kontrolltöö',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,649500,'Henno Täht',NULL,45154),('2020-04-23','ÕV2: Video järgi esitluse loomine ja jagamine õpetajaga (2/2)',NULL,'SISSEKANNE_I',NULL,13,NULL,NULL,NULL,651088,'Henno Täht',NULL,45154),('2020-04-24','ÕV2: video järgi esitluse loomine ja jagamine õpetajaga (1/2)',NULL,'SISSEKANNE_I',NULL,10,NULL,NULL,NULL,651087,'Henno Täht',NULL,45154),('2020-04-24','ÕV3: Video järgi postri loomine (1/2)',NULL,'SISSEKANNE_I',NULL,10,NULL,NULL,NULL,651089,'Henno Täht',NULL,45154),('2020-04-24','ÕV3: Video järgi postri loomine (2/2)',NULL,'SISSEKANNE_I',NULL,13,NULL,NULL,NULL,651090,'Henno Täht',NULL,45154),(NULL,'Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,649498,'Henno Täht',NULL,45154),('2020-03-25','Tund',NULL,'SISSEKANNE_T',1,3,NULL,NULL,NULL,634964,'Henno Täht',NULL,44537),('2020-03-30','Video järgi oma CV koostamine Google Docsis ja selle õpetajale välja jagamine',NULL,'SISSEKANNE_I',1,10,NULL,NULL,NULL,634966,'Henno Täht',NULL,44537),('2020-03-30','Video järgi poenimekirja koostamine ja õpetajaga jagamine',NULL,'SISSEKANNE_I',NULL,13,NULL,NULL,NULL,641099,'Henno Täht',NULL,44537),('2020-03-31','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,634968,'Henno Täht',NULL,44537),(NULL,'Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,661511,'Henno Täht',NULL,44537),('2020-03-25','Tund',NULL,'SISSEKANNE_T',1,3,NULL,NULL,NULL,640900,'Henno Täht',NULL,44266),('2020-04-09','Google Slides esitlus 2/2',NULL,'SISSEKANNE_I',NULL,6,NULL,NULL,NULL,646746,'Henno Täht',NULL,44266),('2020-04-09','Google Slides esitlus 1/2',NULL,'SISSEKANNE_I',NULL,17,NULL,NULL,NULL,640901,'Henno Täht',NULL,44266),('2020-04-20','Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,649487,'Henno Täht',NULL,44266),('2020-03-25','Tund',NULL,'SISSEKANNE_T',9,3,NULL,NULL,NULL,649680,'Henno Täht',NULL,45005),('2020-04-20','Näomaski reklaam',NULL,'SISSEKANNE_I',NULL,23,NULL,NULL,NULL,649681,'Henno Täht',NULL,45005),('2020-04-20','Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,649677,'Henno Täht',NULL,45005),('2020-01-22','Tund',NULL,'SISSEKANNE_T',1,3,NULL,NULL,NULL,518421,'valga andmete ülekanne',NULL,44283),('2020-01-22','Iseseisev töö',NULL,'SISSEKANNE_I',1,4,NULL,NULL,NULL,518422,'valga andmete ülekanne',NULL,44283),('2020-03-30','Iseseisev töö2',NULL,'SISSEKANNE_I',1,1,NULL,NULL,NULL,635120,'Henno Täht',NULL,44283),('2020-03-30','Iseseisev töö1',NULL,'SISSEKANNE_I',1,1,NULL,NULL,NULL,635116,'Henno Täht',NULL,44283),('2020-06-08','Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,688268,'Ester Siirak',NULL,44283),('2020-01-22','Iseseisev töö',NULL,'SISSEKANNE_I',1,3,NULL,NULL,NULL,520311,'valga andmete ülekanne',NULL,44797),('2020-01-22','Tund',NULL,'SISSEKANNE_T',4,3,NULL,NULL,NULL,520310,'valga andmete ülekanne',NULL,44797),('2020-03-31','Iseseisev töö',NULL,'SISSEKANNE_I',1,3,NULL,NULL,NULL,635125,'Henno Täht',NULL,44797),('2020-06-08','Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,688269,'Ester Siirak',NULL,44797),('2020-01-22','Tund',NULL,'SISSEKANNE_T',7,3,NULL,NULL,NULL,517949,'valga andmete ülekanne',NULL,44151),('2020-01-22','Iseseisev töö',NULL,'SISSEKANNE_I',7,6,NULL,NULL,NULL,517948,'valga andmete ülekanne',NULL,44151),(NULL,'Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,688377,'Henno Täht',NULL,44151),('2020-02-07','Tund',NULL,'SISSEKANNE_T',1,3,NULL,NULL,NULL,647170,'Henno Täht',NULL,44782),('2020-03-31','Iseseisev töö',NULL,'SISSEKANNE_I',1,6,NULL,NULL,NULL,635127,'Henno Täht',NULL,44782),('2020-03-31','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,647183,'Henno Täht',NULL,44782),('2020-02-07','Tund',NULL,'SISSEKANNE_T',1,3,NULL,NULL,NULL,1053667,'Henno Täht',NULL,45277),('2020-03-30','Iseseisev töö',NULL,'SISSEKANNE_I',1,6,NULL,NULL,NULL,635129,'Henno Täht',NULL,45277),('2020-02-07','Tund',NULL,'SISSEKANNE_T',7,3,NULL,NULL,NULL,1057471,'Henno Täht',NULL,44650),('2020-03-31','Iseseisev töö',NULL,'SISSEKANNE_I',1,6,NULL,NULL,NULL,635131,'Henno Täht',NULL,44650),('2019-09-06','Tund',NULL,'SISSEKANNE_T',1,2,NULL,NULL,NULL,520376,'valga andmete ülekanne',NULL,44817),('2019-09-06','Tund',NULL,'SISSEKANNE_T',2,2,NULL,NULL,NULL,520377,'valga andmete ülekanne',NULL,44817),('2019-09-06','Tund',NULL,'SISSEKANNE_T',3,2,NULL,NULL,NULL,520378,'valga andmete ülekanne',NULL,44817),('2019-09-13','Tund',NULL,'SISSEKANNE_T',1,2,NULL,NULL,NULL,520379,'valga andmete ülekanne',NULL,44817),('2019-09-13','Tund',NULL,'SISSEKANNE_T',2,2,NULL,NULL,NULL,520405,'valga andmete ülekanne',NULL,44817),('2019-09-13','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,520380,'valga andmete ülekanne',NULL,44817),('2019-09-13','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520381,'valga andmete ülekanne',NULL,44817),('2019-09-13','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520382,'valga andmete ülekanne',NULL,44817),('2019-09-20','Iseseisev töö',NULL,'SISSEKANNE_I',0,4,NULL,NULL,NULL,520389,'valga andmete ülekanne',NULL,44817),('2019-09-20','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,520383,'valga andmete ülekanne',NULL,44817),('2019-09-20','Tund',NULL,'SISSEKANNE_T',2,2,NULL,NULL,NULL,520385,'valga andmete ülekanne',NULL,44817),('2019-09-20','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,520384,'valga andmete ülekanne',NULL,44817),('2019-09-27','Praktiline töö',NULL,'SISSEKANNE_P',1,6,NULL,NULL,NULL,520406,'valga andmete ülekanne',NULL,44817),('2019-09-27','Iseseisev töö',NULL,'SISSEKANNE_I',3,2,NULL,NULL,NULL,520387,'valga andmete ülekanne',NULL,44817),('2019-10-04','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,520386,'valga andmete ülekanne',NULL,44817),('2019-10-04','Praktiline töö',NULL,'SISSEKANNE_P',2,4,NULL,NULL,NULL,520407,'valga andmete ülekanne',NULL,44817),('2019-10-11','Praktiline töö',NULL,'SISSEKANNE_P',2,4,NULL,NULL,NULL,520390,'valga andmete ülekanne',NULL,44817),('2019-10-11','Iseseisev töö',NULL,'SISSEKANNE_I',2,8,NULL,NULL,NULL,520388,'valga andmete ülekanne',NULL,44817),('2019-10-18','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,520391,'valga andmete ülekanne',NULL,44817),('2019-10-18','Iseseisev töö',NULL,'SISSEKANNE_I',1,4,NULL,NULL,NULL,520393,'valga andmete ülekanne',NULL,44817),('2019-10-18','Praktiline töö',NULL,'SISSEKANNE_P',2,5,NULL,NULL,NULL,520409,'valga andmete ülekanne',NULL,44817),('2019-11-01','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,520392,'valga andmete ülekanne',NULL,44817),('2019-11-01','Praktiline töö',NULL,'SISSEKANNE_P',2,2,NULL,NULL,NULL,520394,'valga andmete ülekanne',NULL,44817),('2019-11-01','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,520395,'valga andmete ülekanne',NULL,44817),('2019-11-08','Praktiline töö',NULL,'SISSEKANNE_P',2,2,NULL,NULL,NULL,520396,'valga andmete ülekanne',NULL,44817),('2019-11-08','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,520398,'valga andmete ülekanne',NULL,44817),('2019-11-08','Praktiline töö',NULL,'SISSEKANNE_P',4,2,NULL,NULL,NULL,520399,'valga andmete ülekanne',NULL,44817),('2019-11-08','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520397,'valga andmete ülekanne',NULL,44817),('2019-11-15','Praktiline töö',NULL,'SISSEKANNE_P',2,4,NULL,NULL,NULL,520408,'valga andmete ülekanne',NULL,44817),('2019-11-15','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520402,'valga andmete ülekanne',NULL,44817),('2019-11-15','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520401,'valga andmete ülekanne',NULL,44817),('2019-11-15','Hindamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,520400,'valga andmete ülekanne',NULL,44817),('2019-11-22','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,520404,'valga andmete ülekanne',NULL,44817),('2019-12-13','Praktiline töö',NULL,'SISSEKANNE_P',1,1,NULL,NULL,NULL,520403,'valga andmete ülekanne',NULL,44817),('2019-11-15','Tund',NULL,'SISSEKANNE_T',1,2,NULL,NULL,NULL,519608,'valga andmete ülekanne',NULL,44648),('2019-11-15','Arvuti demontaaz',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519609,'valga andmete ülekanne',NULL,44648),('2019-11-22','Tund',NULL,'SISSEKANNE_T',2,4,NULL,NULL,NULL,519628,'valga andmete ülekanne',NULL,44648),('2019-11-22','Kuluarvestus',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519610,'valga andmete ülekanne',NULL,44648),('2019-11-29','Praktiline töö',NULL,'SISSEKANNE_P',1,7,NULL,NULL,NULL,519620,'valga andmete ülekanne',NULL,44648),('2019-11-29','Sülearvuti lahti võtmine, protsessori mudelinumbri järgi hinna guugeldamine ja mälude tuvastamine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519612,'valga andmete ülekanne',NULL,44648),('2019-11-29','Printerite kuluarvestus',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519611,'valga andmete ülekanne',NULL,44648),('2019-12-06','Tund',NULL,'SISSEKANNE_T',0,4,NULL,NULL,NULL,519621,'valga andmete ülekanne',NULL,44648),('2019-12-06','Praktiline töö',NULL,'SISSEKANNE_P',3,4,NULL,NULL,NULL,519619,'valga andmete ülekanne',NULL,44648),('2019-12-06','IT sõnavara kontroll',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519615,'valga andmete ülekanne',NULL,44648),('2019-12-06','Kontrolltöö',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519614,'valga andmete ülekanne',NULL,44648),('2019-12-06','Ribakoodilugeja kasutamine ja ümberprogrammeerimine',NULL,'SISSEKANNE_H',NULL,NULL,NULL,NULL,NULL,519613,'valga andmete ülekanne',NULL,44648),('2019-12-13','Wifi ruuteri seadistamine',NULL,'SISSEKANNE_I',0,2,NULL,NULL,NULL,519617,'valga andmete ülekanne',NULL,44648),('2019-12-13','Praktiline töö',NULL,'SISSEKANNE_P',2,1,NULL,NULL,NULL,519607,'valga andmete ülekanne',NULL,44648),('2019-12-13','Kõvaketta kontroll',NULL,'SISSEKANNE_I',2,2,NULL,NULL,NULL,519616,'valga andmete ülekanne',NULL,44648),('2019-12-13','Praktiline töö',NULL,'SISSEKANNE_P',3,5,NULL,NULL,NULL,519618,'valga andmete ülekanne',NULL,44648),('2020-01-10','Tund',NULL,'SISSEKANNE_T',1,2,NULL,NULL,NULL,519626,'valga andmete ülekanne',NULL,44648),('2020-01-10','802.11 (wifi) teemad',NULL,'SISSEKANNE_I',1,4,NULL,NULL,NULL,519622,'valga andmete ülekanne',NULL,44648),('2020-01-10','Praktiline töö',NULL,'SISSEKANNE_P',2,2,NULL,NULL,NULL,519627,'valga andmete ülekanne',NULL,44648),('2020-01-17','5G referaat ajakirjast Digi lk 58',NULL,'SISSEKANNE_I',0,2,NULL,NULL,NULL,519623,'valga andmete ülekanne',NULL,44648),('2020-01-17','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,519624,'valga andmete ülekanne',NULL,44648),('2020-01-17','Praktiline töö',NULL,'SISSEKANNE_P',2,2,NULL,NULL,NULL,519625,'valga andmete ülekanne',NULL,44648),('2020-01-31','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,519629,'valga andmete ülekanne',NULL,44648),('2020-01-31','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,519630,'valga andmete ülekanne',NULL,44648),('2020-01-31','Praktiline töö',NULL,'SISSEKANNE_P',5,2,NULL,NULL,NULL,1057470,'Henno Täht',NULL,44648),('2020-02-14','Praktiline töö',NULL,'SISSEKANNE_P',1,2,NULL,NULL,NULL,570316,'Henno Täht',NULL,44648),('2020-02-14','Praktiline töö',NULL,'SISSEKANNE_P',3,2,NULL,NULL,NULL,570566,'Henno Täht',NULL,44648),('2020-02-14','Etherneti kaabel',NULL,'SISSEKANNE_P',5,4,NULL,NULL,NULL,570581,'Henno Täht',NULL,44648),('2020-02-14','Etherneti kaabli tegemine',NULL,'SISSEKANNE_I',NULL,2,NULL,NULL,NULL,570570,'Henno Täht',NULL,44648),('2020-02-21','Praktiline töö',NULL,'SISSEKANNE_P',2,7,NULL,NULL,NULL,574791,'Henno Täht',NULL,44648),('2020-02-21','Iseseisev töö',NULL,'SISSEKANNE_I',2,8,NULL,NULL,NULL,574792,'Henno Täht',NULL,44648),('2020-10-28','Praktiline töö',NULL,'SISSEKANNE_P',7,4,NULL,NULL,NULL,1057472,'Henno Täht',NULL,44648),('2020-10-28','Lõpptulemus',NULL,'SISSEKANNE_L',NULL,NULL,NULL,NULL,NULL,1053410,'Henno Täht',NULL,44648);
/*!40000 ALTER TABLE `journalEntries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `journals`
--

DROP TABLE IF EXISTS `journals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `journals` (
  `id` int(11) DEFAULT NULL,
  `studentGroups` varchar(255) DEFAULT NULL,
  `nameEt` varchar(255) DEFAULT NULL,
  `teachers` varchar(255) DEFAULT NULL,
  `modules.id` varchar(255) DEFAULT NULL,
  `modules.nameEt` varchar(255) DEFAULT NULL,
  `modules.nameEn` varchar(255) DEFAULT NULL,
  `modules.nameRu` varchar(255) DEFAULT NULL,
  `plannedHours` int(11) DEFAULT NULL,
  `usedHours` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `curriculums` varchar(255) DEFAULT NULL,
  `isReviewOk` varchar(255) DEFAULT NULL,
  `reviewDate` varchar(255) DEFAULT NULL,
  `studyYear` varchar(255) DEFAULT NULL,
  `studentCount` int(11) DEFAULT NULL,
  `canEdit` tinyint(1) DEFAULT NULL,
  `capacityMAHT_aplanned` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_aused` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_iplanned` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_iused` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_pplanned` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_pused` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_PRplanned` int(11) NOT NULL DEFAULT '0',
  `capacityMAHT_PRused` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `journals`
--

LOCK TABLES `journals` WRITE;
/*!40000 ALTER TABLE `journals` DISABLE KEYS */;
INSERT INTO `journals` VALUES (45154,'SH18/tT','Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','Henno Täht',NULL,NULL,NULL,NULL,78,78,'PAEVIK_STAATUS_T','HOOL136877',NULL,NULL,NULL,14,1,9,9,69,46,0,0,0,0),(44537,'TEG19','ÕV1TEKSTID ARVUTUSTABELID','Henno Täht',NULL,NULL,NULL,NULL,26,26,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,19,1,3,3,23,23,0,0,0,0),(44266,'TEG19','ÕV2 ESITLUSE LOOMINE','Henno Täht',NULL,NULL,NULL,NULL,26,26,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,19,1,3,0,23,23,0,0,0,0),(45005,'TEG19','ÕV3 GRAAFIKAPROGRAMMI KOOSTAMINE','Henno Täht',NULL,NULL,NULL,NULL,26,26,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,19,1,3,3,23,23,0,0,0,0),(44283,'TEG19tKarula','ÕV1 TEKSTIDE, ARVUTUSTABELITE LOOMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,20,1,3,3,6,6,0,0,0,0),(44797,'TEG19tKarula','ÕV2 ESITLUSE LOOMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,20,1,3,3,6,6,0,0,0,0),(44151,'TEG19tKarula','ÕV3 GRAAFIKAPROGRAMMI ALUSEL REKLAAMI KOOSTAMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,21,1,3,3,6,6,0,0,0,0),(44782,'TEG19tMaarja','ÕV1 TEKSTIDE ARVUTUSTABELITE LOOMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,15,1,3,3,6,6,0,0,0,0),(45277,'TEG19tMaarja','ÕV2 ESITLUSTE LOOMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,15,1,3,0,6,6,0,0,0,0),(44650,'TEG19tMaarja','ÕV3 GRAAFIKAPROGRAMMI ABIL REKLAAMI KOOSTAMINE','Henno Täht',NULL,NULL,NULL,NULL,9,9,'PAEVIK_STAATUS_T','TEGE152757',NULL,NULL,NULL,15,1,3,0,6,6,0,0,0,0),(44817,'VK18','IT süsteemide riistvara ja taristu','Henno Täht',NULL,NULL,NULL,NULL,78,78,'PAEVIK_STAATUS_T','VEOK201240',NULL,NULL,NULL,5,1,12,12,18,18,48,48,0,0),(44648,'VK19','IT süsteemide riistvara ja taristu','Henno Täht',NULL,NULL,NULL,NULL,78,80,'PAEVIK_STAATUS_T','VEOK201240',NULL,NULL,NULL,15,1,12,12,18,18,48,48,0,0);
/*!40000 ALTER TABLE `journals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentGroups`
--

DROP TABLE IF EXISTS `studentGroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `studentGroups` (
  `groupId` int(11) NOT NULL AUTO_INCREMENT,
  `groupCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`groupId`)
) ENGINE=InnoDB AUTO_INCREMENT=1588 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentGroups`
--

LOCK TABLES `studentGroups` WRITE;
/*!40000 ALTER TABLE `studentGroups` DISABLE KEYS */;
INSERT INTO `studentGroups` VALUES (1473,'AK19'),(1474,'LGE19'),(1475,'LGE18'),(1476,'L19tTallinn'),(1477,'PPO19'),(1478,'K17'),(1480,'K18'),(1481,'K19'),(1482,'PT19/2'),(1483,'PT19tSillamäe'),(1484,'PT19tSilport'),(1485,'SAT17'),(1487,'T17'),(1488,'T19'),(1489,'T19/2'),(1490,'T19päevane'),(1491,'SH19/2tElva'),(1492,'SH18/tJ1'),(1493,'SH18/tJ2'),(1494,'SH18/tK'),(1495,'SH18/tT'),(1496,'SH19tPõltsamaa'),(1497,'SH19tKarksi'),(1498,'SH19tRakvere'),(1499,'SH19tValga'),(1500,'LGA17'),(1501,'LH19'),(1502,'LH19tViljandi'),(1503,'LH19tVõru'),(1504,'LH19tTartu'),(1506,'MA19'),(1507,'TEG19'),(1508,'TEG19tKarula'),(1509,'TEG19tJõhvi'),(1510,'TEG19tJõhvi2'),(1511,'TEG19tMaarja'),(1512,'VL19/tTallinn'),(1513,'MST18'),(1514,'MST19'),(1515,'VK19'),(1516,'VK18'),(1517,'KA_urvaste'),(1522,'LH20/tKilingi-Nõmme'),(1523,'LH20/tSaku'),(1524,'LH20/tMaarjamõisa'),(1525,'LH20/tRakvere'),(1526,'LH20/tTapa'),(1527,'SH20/tTartu'),(1587,'SH20/tViru');
/*!40000 ALTER TABLE `studentGroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subjects` (
  `name` varchar(255) DEFAULT NULL,
  `subjectId` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`subjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES ('IT süsteemide riistvara ja taristu',1,NULL);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetableEvents`
--

DROP TABLE IF EXISTS `timetableEvents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetableEvents` (
  `id` int(11) DEFAULT NULL,
  `journalId` int(11) DEFAULT NULL,
  `nameEt` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `timeStart` varchar(255) DEFAULT NULL,
  `timeEnd` varchar(255) DEFAULT NULL,
  `teachers` varchar(255) DEFAULT NULL,
  `rooms` varchar(255) DEFAULT NULL,
  `studentGroups` varchar(255) DEFAULT NULL,
  `timetableId` int(11) DEFAULT NULL,
  `changed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetableEvents`
--

LOCK TABLES `timetableEvents` WRITE;
/*!40000 ALTER TABLE `timetableEvents` DISABLE KEYS */;
INSERT INTO `timetableEvents` VALUES (200568,44817,'IT süsteemide riistvara ja taristu','2019-09-06','08:30','10:00','Henno Täht','B226','VK18',900,'2020-02-06T12:37:59.695778Z'),(200569,44817,'IT süsteemide riistvara ja taristu','2019-09-06','10:10','11:40','Henno Täht','B226','VK18',900,'2020-02-06T12:37:59.695778Z'),(200570,44817,'IT süsteemide riistvara ja taristu','2019-09-06','12:20','13:50','Henno Täht','B226','VK18',900,'2020-02-06T12:37:59.695778Z'),(200571,44817,'IT süsteemide riistvara ja taristu','2019-09-13','08:30','10:00','Henno Täht','B226','VK18',901,'2020-02-06T12:37:59.695778Z'),(200572,44817,'IT süsteemide riistvara ja taristu','2019-09-13','10:10','11:40','Henno Täht','B226','VK18',901,'2020-02-06T12:37:59.695778Z'),(200573,44817,'IT süsteemide riistvara ja taristu','2019-09-13','12:20','13:50','Henno Täht','B226','VK18',901,'2020-02-06T12:37:59.695778Z'),(200574,44817,'IT süsteemide riistvara ja taristu','2019-09-20','08:30','10:00','Henno Täht','B226','VK18',902,'2020-02-06T12:37:59.695778Z'),(200575,44817,'IT süsteemide riistvara ja taristu','2019-09-20','10:10','11:40','Henno Täht','B226','VK18',902,'2020-02-06T12:37:59.695778Z'),(200576,44817,'IT süsteemide riistvara ja taristu','2019-09-20','12:20','13:50','Henno Täht','B226','VK18',902,'2020-02-06T12:37:59.695778Z'),(200577,44817,'IT süsteemide riistvara ja taristu','2019-09-27','08:30','10:00','Henno Täht','B226','VK18',903,'2020-02-06T12:37:59.695778Z'),(200578,44817,'IT süsteemide riistvara ja taristu','2019-09-27','10:10','11:40','Henno Täht','B226','VK18',903,'2020-02-06T12:37:59.695778Z'),(200579,44817,'IT süsteemide riistvara ja taristu','2019-09-27','12:20','13:50','Henno Täht','B226','VK18',903,'2020-02-06T12:37:59.695778Z'),(200580,44817,'IT süsteemide riistvara ja taristu','2019-10-04','08:30','10:00','Henno Täht','B226','VK18',904,'2020-02-06T12:37:59.695778Z'),(200581,44817,'IT süsteemide riistvara ja taristu','2019-10-04','10:10','11:40','Henno Täht','B226','VK18',904,'2020-02-06T12:37:59.695778Z'),(200582,44817,'IT süsteemide riistvara ja taristu','2019-10-04','12:20','13:50','Henno Täht','B226','VK18',904,'2020-02-06T12:37:59.695778Z'),(201995,44817,'IT süsteemide riistvara ja taristu','2019-10-11','10:10','11:40','Henno Täht','B226','VK18',895,'2020-02-06T12:37:59.695778Z'),(201996,44817,'IT süsteemide riistvara ja taristu','2019-10-11','12:20','13:50','Henno Täht','B226','VK18',895,'2020-02-06T12:37:59.695778Z'),(201997,44817,'IT süsteemide riistvara ja taristu','2019-10-18','08:30','10:00','Henno Täht','B226','VK18',896,'2020-02-06T12:37:59.695778Z'),(201998,44817,'IT süsteemide riistvara ja taristu','2019-10-18','10:10','11:40','Henno Täht','B226','VK18',896,'2020-02-06T12:37:59.695778Z'),(201999,44817,'IT süsteemide riistvara ja taristu','2019-10-18','12:20','13:50','Henno Täht','B226','VK18',896,'2020-02-06T12:37:59.695778Z'),(202000,44817,'IT süsteemide riistvara ja taristu','2019-10-18','14:00','14:45','Henno Täht','B226','VK18',896,'2020-02-06T12:37:59.695778Z'),(202001,44817,'IT süsteemide riistvara ja taristu','2019-11-01','08:30','10:00','Henno Täht','B226','VK18',898,'2020-02-06T12:37:59.695778Z'),(202002,44817,'IT süsteemide riistvara ja taristu','2019-11-01','10:10','11:40','Henno Täht','B226','VK18',898,'2020-02-06T12:37:59.695778Z'),(202003,44817,'IT süsteemide riistvara ja taristu','2019-11-01','12:20','13:50','Henno Täht','B226','VK18',898,'2020-02-06T12:37:59.695778Z'),(202004,44817,'IT süsteemide riistvara ja taristu','2019-11-08','10:10','11:40','Henno Täht','B226','VK18',899,'2020-02-06T12:37:59.695778Z'),(202005,44817,'IT süsteemide riistvara ja taristu','2019-11-08','12:20','13:50','Henno Täht','B226','VK18',899,'2020-02-06T12:37:59.695778Z'),(202006,44817,'IT süsteemide riistvara ja taristu','2019-11-08','14:00','15:30','Henno Täht','B226','VK18',899,'2020-02-06T12:37:59.695778Z'),(203337,44648,'IT süsteemide riistvara ja taristu','2019-11-15','08:30','10:00','Henno Täht','B226','VK19',890,'2020-02-06T12:37:59.695778Z'),(203619,44817,'IT süsteemide riistvara ja taristu','2019-11-15','10:10','11:40','Henno Täht','B226','VK18',890,'2020-02-06T12:37:59.695778Z'),(203620,44817,'IT süsteemide riistvara ja taristu','2019-11-15','12:20','13:50','Henno Täht','B226','VK18',890,'2020-02-06T12:37:59.695778Z'),(203621,44817,'IT süsteemide riistvara ja taristu','2019-11-22','08:30','10:00','Henno Täht','C229','VK18',891,'2020-02-06T12:37:59.695778Z'),(203338,44648,'IT süsteemide riistvara ja taristu','2019-11-22','10:10','11:40','Henno Täht','C229','VK19',891,'2020-02-06T12:37:59.695778Z'),(203339,44648,'IT süsteemide riistvara ja taristu','2019-11-22','12:20','13:50','Henno Täht','C229','VK19',891,'2020-02-06T12:37:59.695778Z'),(203340,44648,'IT süsteemide riistvara ja taristu','2019-11-29','08:30','10:00','Henno Täht','B226','VK19',892,'2020-02-06T12:37:59.695778Z'),(203341,44648,'IT süsteemide riistvara ja taristu','2019-11-29','10:10','11:40','Henno Täht','B226','VK19',892,'2020-02-06T12:37:59.695778Z'),(203342,44648,'IT süsteemide riistvara ja taristu','2019-11-29','12:20','13:50','Henno Täht','B226','VK19',892,'2020-02-06T12:37:59.695778Z'),(203343,44648,'IT süsteemide riistvara ja taristu','2019-11-29','14:00','14:45','Henno Täht','B226','VK19',892,'2020-02-06T12:37:59.695778Z'),(203344,44648,'IT süsteemide riistvara ja taristu','2019-12-06','08:30','10:00','Henno Täht','B226','VK19',893,'2020-02-06T12:37:59.695778Z'),(203345,44648,'IT süsteemide riistvara ja taristu','2019-12-06','10:10','11:40','Henno Täht','B226','VK19',893,'2020-02-06T12:37:59.695778Z'),(203346,44648,'IT süsteemide riistvara ja taristu','2019-12-06','12:20','13:50','Henno Täht','B226','VK19',893,'2020-02-06T12:37:59.695778Z'),(203347,44648,'IT süsteemide riistvara ja taristu','2019-12-06','14:00','15:30','Henno Täht','B226','VK19',893,'2020-02-06T12:37:59.695778Z'),(203622,44817,'IT süsteemide riistvara ja taristu','2019-12-13','08:30','09:15','Henno Täht','C229','VK18',894,'2020-02-06T12:37:59.695778Z'),(203348,44648,'IT süsteemide riistvara ja taristu','2019-12-13','09:15','10:00','Henno Täht','C229','VK19',894,'2020-02-06T12:37:59.695778Z'),(203349,44648,'IT süsteemide riistvara ja taristu','2019-12-13','10:10','11:40','Henno Täht','C229','VK19',894,'2020-02-06T12:37:59.695778Z'),(203350,44648,'IT süsteemide riistvara ja taristu','2019-12-13','12:20','13:50','Henno Täht','C229','VK19',894,'2020-02-06T12:37:59.695778Z'),(203351,44648,'IT süsteemide riistvara ja taristu','2019-12-13','14:00','14:45','Henno Täht','C229','VK19',894,'2020-02-06T12:37:59.695778Z'),(204874,44648,'IT süsteemide riistvara ja taristu','2020-01-10','08:30','10:00','Henno Täht','C229','VK19',886,'2020-02-06T12:37:59.695778Z'),(204875,44648,'IT süsteemide riistvara ja taristu','2020-01-10','10:10','11:40','Henno Täht','C229','VK19',886,'2020-02-06T12:37:59.695778Z'),(204876,44648,'IT süsteemide riistvara ja taristu','2020-01-17','08:30','10:00','Henno Täht','B226','VK19',887,'2020-02-06T12:37:59.695778Z'),(204877,44648,'IT süsteemide riistvara ja taristu','2020-01-17','10:10','11:40','Henno Täht','B226','VK19',887,'2020-02-06T12:37:59.695778Z'),(204475,44151,'ÕV3 GRAAFIKAPROGRAMMI ALUSEL REKLAAMI KOOSTAMINE','2020-01-22','09:15','10:00','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(204476,44151,'ÕV3 GRAAFIKAPROGRAMMI ALUSEL REKLAAMI KOOSTAMINE','2020-01-22','10:10','10:55','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(205069,44797,'ÕV2 ESITLUSE LOOMINE','2020-01-22','10:55','11:40','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(205070,44797,'ÕV2 ESITLUSE LOOMINE','2020-01-22','12:20','13:50','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(204604,44283,'ÕV1 TEKSTIDE, ARVUTUSTABELITE LOOMINE','2020-01-22','14:00','15:30','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(204605,44283,'ÕV1 TEKSTIDE, ARVUTUSTABELITE LOOMINE','2020-01-22','15:40','16:25','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(204477,44151,'ÕV3 GRAAFIKAPROGRAMMI ALUSEL REKLAAMI KOOSTAMINE','2020-01-22','16:25','17:10','Henno Täht','','TEG19tKarula',888,'2020-02-06T12:37:59.695778Z'),(204878,44648,'IT süsteemide riistvara ja taristu','2020-01-31','08:30','10:00','Henno Täht','C229','VK19',889,'2020-02-06T12:37:59.695778Z'),(204879,44648,'IT süsteemide riistvara ja taristu','2020-01-31','10:10','11:40','Henno Täht','C229','VK19',889,'2020-02-06T12:37:59.695778Z'),(204880,44648,'IT süsteemide riistvara ja taristu','2020-01-31','12:20','13:50','Henno Täht','C229','VK19',889,'2020-02-06T12:37:59.695778Z'),(206214,44782,'ÕV1 TEKSTIDE ARVUTUSTABELITE LOOMINE','2020-02-07','08:30','10:00','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206215,44782,'ÕV1 TEKSTIDE ARVUTUSTABELITE LOOMINE','2020-02-07','10:10','10:55','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206565,45277,'ÕV2 ESITLUSTE LOOMINE','2020-02-07','10:55','11:40','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206566,45277,'ÕV2 ESITLUSTE LOOMINE','2020-02-07','12:20','13:50','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206105,44650,'ÕV3 GRAAFIKAPROGRAMMI ABIL REKLAAMI KOOSTAMINE','2020-02-07','14:00','15:30','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206106,44650,'ÕV3 GRAAFIKAPROGRAMMI ABIL REKLAAMI KOOSTAMINE','2020-02-07','15:40','16:25','Henno Täht','','TEG19tMaarja',878,'2020-02-06T12:37:59.695778Z'),(206097,44648,'IT süsteemide riistvara ja taristu','2020-02-14','08:30','10:00','Henno Täht','C229','VK19',879,'2020-02-06T12:37:59.695778Z'),(206098,44648,'IT süsteemide riistvara ja taristu','2020-02-14','10:10','11:40','Henno Täht','C229','VK19',879,'2020-02-06T12:37:59.695778Z'),(206099,44648,'IT süsteemide riistvara ja taristu','2020-02-14','12:20','13:50','Henno Täht','C229','VK19',879,'2020-02-06T12:37:59.695778Z'),(206100,44648,'IT süsteemide riistvara ja taristu','2020-02-14','14:00','15:30','Henno Täht','C229','VK19',879,'2020-02-06T12:37:59.695778Z'),(206101,44648,'IT süsteemide riistvara ja taristu','2020-02-21','09:15','10:00','Henno Täht','B226','VK19',880,'2020-02-06T12:37:59.695778Z'),(206102,44648,'IT süsteemide riistvara ja taristu','2020-02-21','10:10','11:40','Henno Täht','B226','VK19',880,'2020-02-06T12:37:59.695778Z'),(206103,44648,'IT süsteemide riistvara ja taristu','2020-02-21','12:20','13:50','Henno Täht','B226','VK19',880,'2020-02-06T12:37:59.695778Z'),(206104,44648,'IT süsteemide riistvara ja taristu','2020-02-21','14:00','15:30','Henno Täht','B226','VK19',880,'2020-02-06T12:37:59.695778Z'),(246829,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','08:30','09:15','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:26.499Z'),(246831,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','09:15','10:00','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:31.362Z'),(246834,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','10:10','10:55','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:36.210Z'),(246836,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','10:55','11:40','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:40.682Z'),(246837,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','12:20','13:05','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:45.180Z'),(246838,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','13:05','13:50','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:49.448Z'),(246839,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','14:00','14:45','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:54.346Z'),(246840,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','14:45','15:30','Henno Täht','','SH18/tT',905,'2020-02-28T08:25:58.784Z'),(246841,45154,'Digiajastu tehnoloogiate kasutamine õppimises ja erialases arengus','2020-03-12','15:40','16:25','Henno Täht','','SH18/tT',905,'2020-02-28T08:26:02.984Z'),(247268,44537,'ÕV1TEKSTID ARVUTUSTABELID','2020-03-25','08:30','09:15','Henno Täht','','TEG19',914,'2020-02-28T20:10:18.716Z'),(247269,44537,'ÕV1TEKSTID ARVUTUSTABELID','2020-03-25','09:15','10:00','Henno Täht','','TEG19',914,'2020-02-28T20:10:21.708Z'),(247270,44537,'ÕV1TEKSTID ARVUTUSTABELID','2020-03-25','10:10','10:55','Henno Täht','','TEG19',914,'2020-02-28T20:10:24.463Z'),(247265,44266,'ÕV2 ESITLUSE LOOMINE','2020-03-25','10:55','11:40','Henno Täht','','TEG19',914,'2020-02-28T20:09:56.729Z'),(247266,44266,'ÕV2 ESITLUSE LOOMINE','2020-03-25','12:20','13:05','Henno Täht','','TEG19',914,'2020-02-28T20:09:59.718Z'),(247267,44266,'ÕV2 ESITLUSE LOOMINE','2020-03-25','13:05','13:50','Henno Täht','','TEG19',914,'2020-02-28T20:10:02.519Z'),(247271,45005,'ÕV3 GRAAFIKAPROGRAMMI KOOSTAMINE','2020-03-25','14:00','14:45','Henno Täht','','TEG19',914,'2020-02-28T20:10:35.730Z'),(247272,45005,'ÕV3 GRAAFIKAPROGRAMMI KOOSTAMINE','2020-03-25','14:45','15:30','Henno Täht','','TEG19',914,'2020-02-28T20:10:38.995Z'),(247273,45005,'ÕV3 GRAAFIKAPROGRAMMI KOOSTAMINE','2020-03-25','15:40','16:25','Henno Täht','','TEG19',914,'2020-02-28T20:10:42.430Z');
/*!40000 ALTER TABLE `timetableEvents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `translation_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `phrase` varchar(191) NOT NULL,
  `language` char(3) NOT NULL,
  `translation` varchar(191) DEFAULT NULL,
  `controller` varchar(15) NOT NULL,
  `action` varchar(20) NOT NULL,
  PRIMARY KEY (`translation_id`),
  UNIQUE KEY `language_phrase_controller_action_index` (`language`,`phrase`,`controller`,`action`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES (1,'Action','en','{untranslated}','welcome','index'),(2,'Server returned response in an unexpected format','en','{untranslated}','global','global'),(3,'Forbidden','en','{untranslated}','global','global'),(4,'Server returned an error','en','{untranslated}','global','global'),(5,'Action','en','{untranslated}','halo','index'),(6,'Logout','en','{untranslated}','global','global'),(7,'Settings','en','{untranslated}','global','global'),(8,'Logged in as','en','{untranslated}','global','global'),(9,'Log out','en','{untranslated}','global','global'),(10,'Action','et','{untranslated}','welcome','index'),(11,'Log out','et','{untranslated}','global','global'),(12,'Server returned response in an unexpected format','et','{untranslated}','global','global'),(13,'Forbidden','et','{untranslated}','global','global'),(14,'Server returned an error','et','{untranslated}','global','global'),(15,'Please sign in','et','{untranslated}','global','global'),(16,'Email','et','{untranslated}','global','global'),(17,'Password','et','{untranslated}','global','global'),(18,'Sign in','et','{untranslated}','global','global'),(19,'Please sign in','en','{untranslated}','global','global'),(20,'Email','en','{untranslated}','global','global'),(21,'Password','en','{untranslated}','global','global'),(22,'Sign in','en','{untranslated}','global','global'),(23,'Wrong username or password','en','{untranslated}','global','global'),(24,'Oops...','en','{untranslated}','global','global'),(25,'Close','en','{untranslated}','global','global'),(26,'Server returned an error. Please try again later ','en','{untranslated}','global','global');
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `is_admin` tinyint(4) NOT NULL DEFAULT '0',
  `password` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,1,'$2y$10$vTje.ndUFKHyuotY99iYkO.2aHJUgOsy2x0RMXP1UmrTe6CQsKbtm','demo@example.com',0,'Demo User');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-01  0:20:27
