CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.21, for macos10.15 (x86_64)
--
-- Host: localhost    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Temporary view structure for view `beh_soc_gen_eds`
--

DROP TABLE IF EXISTS `beh_soc_gen_eds`;
/*!50001 DROP VIEW IF EXISTS `beh_soc_gen_eds`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `beh_soc_gen_eds` AS SELECT 
 1 AS `College_Name`,
 1 AS `Course Code`,
 1 AS `Course Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `College`
--

DROP TABLE IF EXISTS `College`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `College` (
  `College_ID` int NOT NULL,
  `College_Name` varchar(100) NOT NULL,
  `Number_of_Majors/Programs` int DEFAULT NULL,
  `Most_Popular_Major` varchar(100) DEFAULT NULL,
  `Number_of_Students` int NOT NULL,
  PRIMARY KEY (`College_ID`),
  UNIQUE KEY `Most Popular Major_UNIQUE` (`Most_Popular_Major`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `College`
--

LOCK TABLES `College` WRITE;
/*!40000 ALTER TABLE `College` DISABLE KEYS */;
INSERT INTO `College` VALUES (1,'College of Agriculture and Natural Resources',8,'Animal Sciences',1090),(2,'School of Architecture, Planning, and Preservation',1,'Architecture',451),(3,'College of Arts and Humanities',29,'Communication',2807),(4,'College of Behavioral and Social Sciences',10,'Psychology',4991),(5,'College of Computer, Mathematical, and Natural Sciences',10,'Computer Science',7596),(6,'College of Education',11,'Elementary Education',625),(7,'A. James Clark School of Engineering',10,'Mechanical Engineering',4253),(8,'Philip Merril College of Journalism',1,'Journalism',469),(9,'College of Information Studies',1,'Information Science',1216),(10,'School of Public Health ',4,'Public Health Science',2316),(11,'School of Public Policy',1,'Public Policy',330),(12,'Office of Undergraduate Studies',24,NULL,3736),(13,'The Universities at Shady Grove',9,NULL,2000),(14,'The Graduate Schools',370,'Business Administration',10658),(15,'Robert H. Smith School of Business',8,'Finance',3989);
/*!40000 ALTER TABLE `College` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `credit_greater_than_three`
--

DROP TABLE IF EXISTS `credit_greater_than_three`;
/*!50001 DROP VIEW IF EXISTS `credit_greater_than_three`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `credit_greater_than_three` AS SELECT 
 1 AS `Major Name`,
 1 AS `Number of Courses Offered With Credits > 3`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_sci_courses`
--

DROP TABLE IF EXISTS `info_sci_courses`;
/*!50001 DROP VIEW IF EXISTS `info_sci_courses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_sci_courses` AS SELECT 
 1 AS `Professor Name`,
 1 AS `Course_Name`,
 1 AS `Major_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `info_sci_courses_professors`
--

DROP TABLE IF EXISTS `info_sci_courses_professors`;
/*!50001 DROP VIEW IF EXISTS `info_sci_courses_professors`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `info_sci_courses_professors` AS SELECT 
 1 AS `Professor Name`,
 1 AS `Course_Name`,
 1 AS `Major_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `major_specializations`
--

DROP TABLE IF EXISTS `major_specializations`;
/*!50001 DROP VIEW IF EXISTS `major_specializations`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `major_specializations` AS SELECT 
 1 AS `Major Name`,
 1 AS `Name of Speciailization`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Major_to_Core_Course`
--

DROP TABLE IF EXISTS `Major_to_Core_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Major_to_Core_Course` (
  `Major_ID` int NOT NULL,
  `Course_ID` int NOT NULL,
  PRIMARY KEY (`Major_ID`,`Course_ID`),
  KEY `F2_idx` (`Major_ID`),
  KEY `F3_idx` (`Course_ID`),
  CONSTRAINT `F2` FOREIGN KEY (`Major_ID`) REFERENCES `Popular_Majors` (`Major_ID`),
  CONSTRAINT `F3` FOREIGN KEY (`Course_ID`) REFERENCES `Spring_Core_Courses` (`Course_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Major_to_Core_Course`
--

LOCK TABLES `Major_to_Core_Course` WRITE;
/*!40000 ALTER TABLE `Major_to_Core_Course` DISABLE KEYS */;
INSERT INTO `Major_to_Core_Course` VALUES (1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(4,29),(4,30),(4,31),(4,32),(4,33),(4,34),(4,35),(4,36),(4,37),(4,38),(5,39),(5,40),(5,41),(5,42),(5,43),(5,44),(6,45),(6,46),(6,47),(6,48),(6,49),(7,50),(7,51),(7,52),(7,53),(7,54),(7,55),(7,56),(7,57),(8,58),(8,59),(8,60),(8,61),(8,62),(8,63),(8,64),(9,65),(9,66),(9,67),(9,68),(9,69),(9,70),(9,71),(10,72),(10,73),(10,74),(10,75),(10,76),(10,77),(10,78),(11,79),(11,80),(11,81),(11,82),(11,83),(11,84),(11,85),(11,86),(11,87),(11,88),(12,79),(12,89),(12,90),(12,91),(13,92),(13,93),(13,94),(13,95),(13,96),(13,97),(13,98),(14,99),(14,100),(14,101),(14,102),(15,11),(15,12),(15,14),(15,15),(15,103),(15,104),(15,105),(15,106),(15,107),(15,108),(15,109),(15,110),(15,111);
/*!40000 ALTER TABLE `Major_to_Core_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Popular_Majors`
--

DROP TABLE IF EXISTS `Popular_Majors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Popular_Majors` (
  `Major_ID` int NOT NULL,
  `Major_Name` varchar(100) NOT NULL,
  `Is_it_an_LEP` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `College_ID` int NOT NULL,
  `Number_of_Undergraduate_Students` int NOT NULL,
  PRIMARY KEY (`Major_ID`),
  KEY `FK1_idx` (`College_ID`),
  CONSTRAINT `FK` FOREIGN KEY (`College_ID`) REFERENCES `College` (`College_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Popular_Majors`
--

LOCK TABLES `Popular_Majors` WRITE;
/*!40000 ALTER TABLE `Popular_Majors` DISABLE KEYS */;
INSERT INTO `Popular_Majors` VALUES (1,'Computer Science','Yes',5,2727),(2,'Engineering: Mechanical','Yes',7,1244),(3,'Information Science','No',9,1216),(4,'Public Health Science','No',10,1119),(5,'Finance','Yes',15,1117),(6,'Criminology and Criminal Justice','Yes',4,1022),(7,'Communication','Yes',3,840),(8,'Biological Sciences','Yes',5,1777),(9,'Kinesiology','No',10,732),(10,'Psychology','Yes',4,710),(11,'Economics','No',4,705),(12,'Government and Politics','Yes',4,622),(13,'Marketing','Yes',15,617),(14,'Engineering: Aerospace','Yes',7,617),(15,'Engineering: Electrical & Computer Engineering','Yes',7,509);
/*!40000 ALTER TABLE `Popular_Majors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professor_to_Course`
--

DROP TABLE IF EXISTS `Professor_to_Course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professor_to_Course` (
  `Course_ID` int NOT NULL,
  `Professor_ID` int NOT NULL,
  PRIMARY KEY (`Course_ID`,`Professor_ID`),
  KEY `F6_idx` (`Professor_ID`),
  CONSTRAINT `F6` FOREIGN KEY (`Course_ID`) REFERENCES `Spring_Core_Courses` (`Course_ID`),
  CONSTRAINT `F7` FOREIGN KEY (`Professor_ID`) REFERENCES `Professors` (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professor_to_Course`
--

LOCK TABLES `Professor_to_Course` WRITE;
/*!40000 ALTER TABLE `Professor_to_Course` DISABLE KEYS */;
INSERT INTO `Professor_to_Course` VALUES (1,1),(2,2),(2,3),(3,4),(3,5),(3,6),(3,7),(4,8),(8,8),(4,9),(8,9),(5,10),(5,11),(6,12),(7,13),(7,14),(7,15),(8,16),(8,17),(8,18),(8,19),(8,20),(9,21),(9,22),(10,23),(11,23),(11,24),(12,25),(12,26),(13,27),(13,28),(14,29),(14,30),(15,31),(15,32),(15,33),(16,34),(17,35),(17,36),(18,37),(18,38),(20,39),(20,40),(24,41),(24,42),(25,43),(26,44),(27,45),(27,46),(29,47),(30,48),(30,49),(38,49),(31,50),(31,51),(32,52),(33,53),(34,54),(38,54),(35,55),(35,56),(36,57),(37,58),(38,59),(38,60),(38,61),(38,62),(38,63),(38,64),(38,65),(39,66),(39,67),(40,68),(41,69),(42,70),(43,71),(44,72),(45,73),(46,74),(46,75),(47,76),(48,77),(48,78),(49,79),(49,80),(49,81),(50,82),(51,83),(52,84),(53,85),(54,86),(55,87),(55,88),(56,89),(56,90),(58,91),(58,92),(59,93),(60,94),(60,95),(60,96),(60,97),(61,98),(62,99),(63,100),(63,101),(63,102),(63,103),(63,104),(64,105),(64,106),(65,107),(66,108),(67,109),(68,110),(68,111),(69,112),(70,113),(71,114),(72,115),(73,115),(72,116),(77,116),(72,117),(74,118),(75,119),(76,120),(77,121),(78,122),(78,123),(79,124),(80,125),(80,126),(82,127),(83,128),(84,129),(85,130),(86,131),(86,132),(87,133),(87,134),(89,135),(90,136),(91,137),(92,138),(92,139),(92,140),(93,141),(93,142),(94,143),(94,144),(94,145),(94,146),(95,147),(95,148),(95,149),(95,150),(95,151),(97,152),(97,153),(97,154),(97,155),(98,156),(98,157),(98,158),(98,159),(98,160),(98,161),(99,162),(99,163),(100,164),(101,165),(101,166),(101,167),(102,168),(102,169),(103,170),(103,171),(104,172),(104,173),(105,174),(106,175),(109,175),(107,176),(107,177),(108,178),(108,179),(108,180),(109,181),(110,182),(111,183);
/*!40000 ALTER TABLE `Professor_to_Course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Professors`
--

DROP TABLE IF EXISTS `Professors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Professors` (
  `Professor_ID` int NOT NULL,
  `Professor_First_Name` varchar(50) NOT NULL,
  `Professor_Last_Name` varchar(50) NOT NULL,
  PRIMARY KEY (`Professor_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Professors`
--

LOCK TABLES `Professors` WRITE;
/*!40000 ALTER TABLE `Professors` DISABLE KEYS */;
INSERT INTO `Professors` VALUES (1,'Ryan','O\'Grady'),(2,'Hernisa','Kacorri'),(3,'Lori','Perine'),(4,'Aric','Bills'),(5,'Edward','Summers'),(6,'Joshua','Westgard'),(7,'Gabriel','Cruz'),(8,'Pamela','Duffy'),(9,'Vedat','Diker'),(10,'Laria','Rogers'),(11,'Susannah','Peltz'),(12,'Donal','Heidenblad'),(13,'Amanda','Lazar'),(14,'Courtney','Douglass'),(15,'Ursula','Gorham-Oscilowski'),(16,'Andrew','Fellows'),(17,'Katy','Lawley'),(18,'TJ','Rainsford'),(19,'Richard','Panzer'),(20,'Mary','Francis'),(21,'Pedram','Sadeghian'),(22,'Ilchul','Yoon'),(23,'Nelson','Padua-Perez'),(24,'Fawzi','Emad'),(25,'Larry','Herman'),(26,'Jose','Calderon'),(27,'Roger','Eastman'),(28,'Iason','Filippou'),(29,'Anwar','Mamat'),(30,'Michael','Hicks'),(31,'Clyde','Kruskal'),(32,'Mohammad','Nayeem Teli'),(33,'Justin','Wyss-Gallifent'),(34,'Don','DeVoe'),(35,'Ryan','Smith'),(36,'Mohammad','Fazelpour'),(37,'Siddhartha','Das'),(38,'Amir','Riaz'),(39,'Jungho','Kim'),(40,'Xinan','Liu'),(41,'Liyang','Dai-Hattrick'),(42,'Isabel','Lloyd'),(43,'Michel','Cukier'),(44,'Chandrasekhar','Thamire'),(45,'Jin-Oh','Hahn'),(46,'Yancy','Diaz-Mercado'),(47,'Sylvette','La Touche-Howard'),(48,'Evelyn','King-Marshall'),(49,'Chandria','Jones'),(50,'Typhanye','Dyer'),(51,'Bonnie','Richter'),(52,'Rodman','Turpin'),(53,'Neil','Sehgal'),(54,'Kendall','Bustad'),(55,'Amir','Sapkota'),(56,'Negin','Fouladi'),(57,'Jeffrey','Beans'),(58,'Jessica','O\'Hara'),(59,'Kevin','Glasz'),(60,'Elizabeth','Bell'),(61,'Nancy','Smith'),(62,'John','Calhoun'),(63,'Carmen','Booker'),(64,'Laura','Drew'),(65,'Alyssa','Brooks'),(66,'Yueyang','Han'),(67,'Ryan','Guttridge'),(68,'David','Kass'),(69,'Xi','He'),(70,'Aysun','Alp Paukowits'),(71,'Russell','Wermers'),(72,'Natalya','Khimich'),(73,'Justine','Madoo'),(74,'Sally','Simpson'),(75,'Kyle','Dorsey'),(76,'Greg','Midgette'),(77,'Cortney','Fisher'),(78,'Russell','Hamill'),(79,'Laure','Brooks'),(80,'Alan','Lehman'),(81,'Thomas','Alexander'),(82,'Sun','Young Lee'),(83,'Jade','Olson'),(84,'Kristjana','Maddux'),(85,'Sahar','Khamis'),(86,'Victoria','Ledford'),(87,'Elizabeth','Phipps'),(88,'Alex','Thomas'),(89,'Julie','Gowin'),(90,'Raimonda','Nuredini'),(91,'Marjorie','Reaka'),(92,'Leo','Shapiro'),(93,'Fransisca','Saavedra'),(94,'Michael','Keller'),(95,'Nicholas','Fletcher'),(96,'Reid','Compton'),(97,'James','Sniezek'),(98,'Swarna','Mohan'),(99,'Marcia','Shofner'),(100,'David','Straney'),(101,'Kimberly','Paczolt'),(102,'Raymond','StLeger'),(103,'Tammatha','O\'Brien'),(104,'Keith','Lampel'),(105,'TC','Lloyd'),(106,'Thomas','Steen'),(107,'David','Andrews'),(108,'Shannon','Jette'),(109,'Ross','Miller'),(110,'Elizabeth','Brown'),(111,'J','Carson Smith'),(112,'Steven','Prior'),(113,'Tim','Kiemel'),(114,'Rodolphe','Gentili'),(115,'Benjamin','Jones'),(116,'Dylan','Selterman'),(117,'Dirk','Parham'),(118,'Tracy','Tomlinson'),(119,'David','Yager'),(120,'Alexander','Shackman'),(121,'Carly','Hunt'),(122,'Linda','Zou'),(123,'Dirk','Parham'),(124,'Erin','Moody'),(125,'John','Shea'),(126,'Naveen','Sarna'),(127,'Pierre','De Leo'),(128,'Martina','Copelman'),(129,'Aaron','Finkle'),(130,'Alessandra','Palazzo'),(131,'Nebahat','Erturk'),(132,'Ece','Yegane'),(133,'Hossein','Abbasi'),(134,'Cristina','Riquelme'),(135,'Sujith','Kumar'),(136,'Johanna','Birnir'),(137,'Kristina','Miler'),(138,'Zeinab','Karake'),(139,'Maya','Mudambi'),(140,'Paul','Shapiro'),(141,'Karen','Hallows'),(142,'Michael','Padhi'),(143,'Idil','Yaveroglu'),(144,'Henry','Boyd'),(145,'Roxanne','Lefkoff'),(146,'Wendy','Bassett'),(147,'Gosia','Langa Basit'),(148,'Hannah','Weiser'),(149,'Gregory','Marr'),(150,'Alexander','Dennis'),(151,'Nicole','Coomber'),(152,'Burt','Leete'),(153,'Richard','Daniels'),(154,'Gideon','Mark'),(155,'Jennifer','Gershberg'),(156,'Liyue','Yan'),(157,'Protiti','Dastidar'),(158,'Paulo','Proncho'),(159,'Clarence','Wesley'),(160,'Benjamin','King'),(161,'Waverly','Ding'),(162,'Kevin','Lewy'),(163,'Norman','Wereley'),(164,'Robert','Sanner'),(165,'Oliver','Bauchau'),(166,'Mary','Bowden'),(167,'Giuseppe','Pennisi'),(168,'Allen','Winkelmann'),(169,'Andrew','Becnel'),(170,'Wesley','Lawson'),(171,'Thomas','Murphy'),(172,'Gilmer','Blankenship'),(173,'Adrianos','Papamarcou'),(174,'Pramod','Govindan'),(175,'Manoj','Franklin'),(176,'Sahil','Shah'),(177,'Timothy','Horiuchi'),(178,'Jonathan','Simon'),(179,'Nuno','Martins'),(180,'Mark','Shayman'),(181,'Yavuz','Oruc'),(182,'Uzi','Vishkin'),(183,'A','Shankar');
/*!40000 ALTER TABLE `Professors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `professors_and_courses`
--

DROP TABLE IF EXISTS `professors_and_courses`;
/*!50001 DROP VIEW IF EXISTS `professors_and_courses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `professors_and_courses` AS SELECT 
 1 AS `Professor Name`,
 1 AS `Course_Name`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `Specializations`
--

DROP TABLE IF EXISTS `Specializations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Specializations` (
  `Specialization ID` int NOT NULL,
  `Major_ID` int NOT NULL,
  `Name_of_Specialization` varchar(200) NOT NULL,
  PRIMARY KEY (`Specialization ID`),
  KEY `F4_idx` (`Major_ID`),
  CONSTRAINT `F8` FOREIGN KEY (`Major_ID`) REFERENCES `Popular_Majors` (`Major_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specializations`
--

LOCK TABLES `Specializations` WRITE;
/*!40000 ALTER TABLE `Specializations` DISABLE KEYS */;
INSERT INTO `Specializations` VALUES (1,1,'Cybersecurity'),(2,1,'Data Science'),(3,1,'Machine Learning'),(4,2,'Design and Manufacturing'),(5,2,'Energy and the Environment'),(6,2,'Robotics and Mechatronics'),(7,2,'Automotive Design'),(8,2,'Aero/Mechanical Industry'),(9,3,'Data Science'),(10,3,'Cybersecurity & Privacy'),(11,3,'Digital Curation'),(12,12,'International Relations'),(13,8,'Cell Biology & Genetics'),(14,8,'Ecology and Evolution'),(15,8,'General Biology'),(16,8,'Microbiology'),(17,8,'Physiology & Neurobiology'),(18,8,'Individualized Studies'),(19,7,'Communication Studies'),(20,7,'Health and Science Communication'),(21,7,'Media and Digitial Communication'),(22,7,'Political Communication and Public Advocacy'),(23,7,'Public Relations'),(24,14,'Aerodynamics'),(25,14,'Flight Dynamics and Control'),(26,14,'Propulsion'),(27,14,'Materials and Structures'),(28,14,'System Design');
/*!40000 ALTER TABLE `Specializations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spring_Core_Courses`
--

DROP TABLE IF EXISTS `Spring_Core_Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Spring_Core_Courses` (
  `Course_ID` int NOT NULL,
  `Course_Name` varchar(100) NOT NULL,
  `Satisfies_Gen_ED` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `Credit_Number` int unsigned NOT NULL,
  `Course_Code` varchar(45) NOT NULL,
  PRIMARY KEY (`Course_ID`),
  UNIQUE KEY `Course Code_UNIQUE` (`Course_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spring_Core_Courses`
--

LOCK TABLES `Spring_Core_Courses` WRITE;
/*!40000 ALTER TABLE `Spring_Core_Courses` DISABLE KEYS */;
INSERT INTO `Spring_Core_Courses` VALUES (1,'Information Organization','No',3,'INST 311'),(2,'Statistics for Information Science','No',3,'INST 314'),(3,'Object-Oriented Programming for Information Science','No',3,'INST 326'),(4,'Database Design and Modeling','Yes',3,'INST 327'),(5,'Organizations, Management and Teamwork','No',3,'INST 335'),(6,'Technologies, Infrastructure and Architecture','No',3,'INST 346'),(7,'Information User Needs and Assessment','No',3,'INST 352'),(8,'Integrated Capstone for Information Science','No',3,'INST 490'),(9,'Object-Oriented Programming I','No',4,'CMSC 131'),(10,'Object Oriented Programming I Beyond Fundamentals','No',2,'CMSC 133'),(11,'Object-Oriented Programming II','No',4,'CMSC 132'),(12,'Introduction to Computer Systems','No',4,'CMSC 216'),(13,'Discrete Structures','No',4,'CMSC 250'),(14,'Organization of Programming Languages','No',3,'CMSC 330'),(15,'Algorithms','No',3,'CMSC 351'),(16,'Computing Fundamentals for Engineers','No',3,'ENME 202'),(17,'Introduction to Computer Aided Design','No',2,'ENME 272'),(18,'Fluid Mechanics','No',3,'ENME 331'),(19,'Transfer Processes','No',3,'ENME 332'),(20,'Electronics and Instrumentation I','No',3,'ENME 350'),(21,'Electronics and Instrumentation II','No',3,'ENME 351'),(22,'Vibration, Controls and Optimization I','No',3,'ENME 361'),(23,'Product Engineering and Manufacturing','No',3,'ENME 371'),(24,'Introduction to Materials Engineering','No',3,'ENME 382'),(25,'Statistical Methods for Product and Processes Development','No',3,'ENME 392'),(26,'Machine Design','No',3,'ENME 400'),(27,'Vibrations, Controls, and Optimization II','No',3,'ENME 462'),(28,'Integrated Product and Process Development','No',3,'ENME 472'),(29,'Foundations of Public Health','No',3,'SPHL 100'),(30,'Behavioral and Community Issues in Public Health','No',3,'HLTH 366'),(31,'Epidemiology for Public Health Practice','No',3,'EPIB 301'),(32,'Biostatistics for Public Health Practice','No',3,'EPIB 315'),(33,'Introduction to Health Policy and Services','No',3,'HLSA 300'),(34,'A Public Health Perspective: Introduction to Environmental Health','No',3,'MIEH 300'),(35,'Introduction to Global Health','No',3,'MIEH 400'),(36,'Physiological Basis of Physical Activity and Human Health','No',4,'KNES 320'),(37,'Essentials of Public Health Biology: The Cell, The Individual, and Disease','No',3,'PHSC 415'),(38,'Public Health Science Capstone','No',3,'PHSC 497'),(39,'Analytics Consulting: Cases and Projects','No',3,'BMGT 343'),(40,'Advanced Financial Management','No',3,'BMGT 440'),(41,'Quantitative Financial Analysis','No',3,'BMGT 347'),(42,'Fixed Income','No',3,'BMGT 441'),(43,'Advanced Portfolio Management','No',3,'BMGT 442F'),(44,'Intermediate Accounting I','No',3,'BMGT 310'),(45,'Introduction to Criminal Justice','Yes',3,'CCJS 100'),(46,'Introduction to Criminology','Yes',3,'CCJS 105'),(47,'Statistics for Criminology and Criminal Justice','Yes',3,'CCJS 200'),(48,'Criminal Law in Action','No',3,'CCJS 230'),(49,'Criminological and Criminal Justice Research Methods','Yes',3,'CCJJS 300'),(50,'Introduction to Public Relations','No',3,'COMM 201'),(51,'Rhetorical Theories','No',3,'COMM 301'),(52,'Communication Research Literacy','No',3,'COMM 304'),(53,'Qualitative Communication Research Methods','No',3,'COMM 305'),(54,'Argumentation and Public Policy','No',3,'COMM 330'),(55,'Communication and Gender','Yes',3,'COMM 324'),(56,'Experiential Learning','Yes',3,'COMM 386'),(57,'Communication Practicum','No',1,'COMM 388'),(58,'Principles of Ecology and Evolution','Yes',3,'BSCI 160'),(59,'Principles of Ecology and Evolution Lab','No',1,'BSCI 161'),(60,'Principles of Molecular & Cellular Biology','No',3,'BSCI 170'),(61,'Principles of Molecular & Cellular Biology Laboratory','No',1,'BSCI 171'),(62,'Principles of Biology III - Organismal Biology','No',3,'BSCI 207'),(63,'Principles of Genetics','No',4,'BSCI 222'),(64,'The Student in the University','No',1,'UNIV 100'),(65,'Sport and American Society','Yes',3,'KNES 287'),(66,'Topical Investigations','No',1,'KNES 293'),(67,'History of Sport in America','No',4,'KNES 300'),(68,'The Psychology of Sports & Exercise','Yes',3,'KNES 350'),(69,'Physiology of Exercise','No',4,'KNES 360'),(70,'Motor Development','No',3,'KNES 370'),(71,'Motor Control and Learning','No',3,'KNES 385'),(72,'Introduction to Psychology','Yes',3,'PSYC 100'),(73,'Statistical Methods in Psychology','Yes',3,'PSYC 200'),(74,'Research Methods in Psychology Laboratory','Yes',4,'PSYC 300'),(75,'Introduction to Neuroscience','Yes',3,'PSYC 202'),(76,'Personality and Temperament: Developmental Origins, Brain Bases, and Clinical Implications','No',3,'PSYC 210'),(77,'Living the Good Life: The Psychology of Happiness','Yes',3,'PSYC 234'),(78,'Social Psychology','Yes',3,'PSYC 221'),(79,'Principles of Microeconomics','Yes',3,'ECON 200'),(80,'Principles of Macroeconomics','Yes',3,'ECON 201'),(81,'Elementary Calculus II','No',3,'MATH 121'),(82,'Applied Economic Statistics','No',3,'ECON 230'),(83,'Intermediate Macroeconomic Theory and Policy','No',3,'ECON 305'),(84,'Intermediate Microeconomic Theory & Policy','No',3,'ECON 306'),(85,'Macroeconomic Models and Forecasting','No',3,'ECON 402'),(86,'Game Theory','No',3,'ECON 414'),(87,'Applied Econometrics','No',3,'ECON 424'),(88,'Experiential Learning','No',3,'ECON 386'),(89,'The Study of Political Philosophy: Ancient and Modern','Yes',3,'GVPT 241'),(90,'Scope and Methods for Political Science Research','Yes',3,'GVPT 201'),(91,'American Government','Yes',3,'GVPT 170'),(92,'Introduction to Information Systems','No',3,'BMGT 301'),(93,'Business Finance','No',3,'BMGT 340'),(94,'Marketing Principles and Organization','No',3,'BMGT 350'),(95,'Managing People and Organizations','No',3,'BMGT 364'),(96,'Career Search Strategies in Business','No',1,'BMGT 367'),(97,'Business Law I','No',3,'BMGT 380'),(98,'Strategic Management','Yes',3,'BMGT 495'),(99,'Aerospace Engineering Profession II','No',1,'ENAE 200'),(100,'Computing Fundamentals for Engineers','No',3,'ENAE 202'),(101,'Aerospace Structures','No',4,'ENAE 324'),(102,'Aerospace Engineering Laboratory','No',3,'ENAE 464'),(103,'Electric Circuits','No',4,'ENEE 205'),(104,'Elements of Discrete Signal Analysis','No',4,'ENEE 222'),(105,'Digital Logic Design','No',3,'ENEE 244'),(106,'Digital Circuits and Systems Laboratory','No',2,'ENEE 245'),(107,'Analog and Digital Electronics','No',3,'ENEE 303'),(108,'Engineering Probability','No',3,'ENEE 324'),(109,'Computer Organization','No',3,'ENEE 350'),(110,'Digital Computer Design','No',3,'ENEE 446'),(111,'Operating Systems','No',4,'CMSC 412');
/*!40000 ALTER TABLE `Spring_Core_Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `total_lep_students`
--

DROP TABLE IF EXISTS `total_lep_students`;
/*!50001 DROP VIEW IF EXISTS `total_lep_students`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_lep_students` AS SELECT 
 1 AS `Total_LEP_Students`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `total_students_per_major`
--

DROP TABLE IF EXISTS `total_students_per_major`;
/*!50001 DROP VIEW IF EXISTS `total_students_per_major`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `total_students_per_major` AS SELECT 
 1 AS `SUM(Number_of_Undergraduate_Students)`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `beh_soc_gen_eds`
--

/*!50001 DROP VIEW IF EXISTS `beh_soc_gen_eds`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `beh_soc_gen_eds` AS select `c`.`College_Name` AS `College_Name`,`scc`.`Course_Code` AS `Course Code`,`scc`.`Course_Name` AS `Course Name` from (((`spring_core_courses` `scc` join `major_to_core_course` `mcc` on((`mcc`.`Course_ID` = `scc`.`Course_ID`))) join `popular_majors` `pm` on((`pm`.`Major_ID` = `mcc`.`Major_ID`))) join `college` `c` on((`c`.`College_ID` = `pm`.`College_ID`))) where ((`c`.`College_ID` = '4') and (`scc`.`Satisfies_Gen_ED` = 'Yes')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `credit_greater_than_three`
--

/*!50001 DROP VIEW IF EXISTS `credit_greater_than_three`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `credit_greater_than_three` AS select `pm`.`Major_Name` AS `Major Name`,count(`scc`.`Course_Name`) AS `Number of Courses Offered With Credits > 3` from ((`spring_core_courses` `scc` join `major_to_core_course` `mcc` on((`scc`.`Course_ID` = `mcc`.`Course_ID`))) join `popular_majors` `pm` on((`pm`.`Major_ID` = `mcc`.`Major_ID`))) where `scc`.`Course_ID` in (select `spring_core_courses`.`Course_ID` from `spring_core_courses` where (`spring_core_courses`.`Credit_Number` > 3)) group by `pm`.`Major_Name` order by `pm`.`Major_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_sci_courses`
--

/*!50001 DROP VIEW IF EXISTS `info_sci_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_sci_courses` AS select concat(`p`.`Professor_Last_Name`,', ',`p`.`Professor_First_Name`) AS `Professor Name`,`scc`.`Course_Name` AS `Course_Name`,`pm`.`Major_Name` AS `Major_Name` from ((((`professors` `p` join `professor_to_course` `pc` on((`p`.`Professor_ID` = `pc`.`Professor_ID`))) join `spring_core_courses` `scc` on((`scc`.`Course_ID` = `pc`.`Course_ID`))) join `major_to_core_course` `mcc` on((`mcc`.`Course_ID` = `scc`.`Course_ID`))) join `popular_majors` `pm` on((`pm`.`Major_ID` = `mcc`.`Major_ID`))) where `pm`.`Major_ID` in (select `popular_majors`.`Major_ID` from `popular_majors` where (`popular_majors`.`Major_Name` = 'Information Science')) order by 'Professor Name' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `info_sci_courses_professors`
--

/*!50001 DROP VIEW IF EXISTS `info_sci_courses_professors`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `info_sci_courses_professors` AS select concat(`p`.`Professor_Last_Name`,', ',`p`.`Professor_First_Name`) AS `Professor Name`,`scc`.`Course_Name` AS `Course_Name`,`pm`.`Major_Name` AS `Major_Name` from ((((`professors` `p` join `professor_to_course` `pc` on((`p`.`Professor_ID` = `pc`.`Professor_ID`))) join `spring_core_courses` `scc` on((`scc`.`Course_ID` = `pc`.`Course_ID`))) join `major_to_core_course` `mcc` on((`mcc`.`Course_ID` = `scc`.`Course_ID`))) join `popular_majors` `pm` on((`pm`.`Major_ID` = `mcc`.`Major_ID`))) where `pm`.`Major_ID` in (select `popular_majors`.`Major_ID` from `popular_majors` where (`popular_majors`.`Major_Name` = 'Information Science')) order by 'Professor Name' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `major_specializations`
--

/*!50001 DROP VIEW IF EXISTS `major_specializations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `major_specializations` AS select `popular_majors`.`Major_Name` AS `Major Name`,`specializations`.`Name_of_Specialization` AS `Name of Speciailization` from (`specializations` join `popular_majors` on((`specializations`.`Major_ID` = `popular_majors`.`Major_ID`))) order by `popular_majors`.`Major_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `professors_and_courses`
--

/*!50001 DROP VIEW IF EXISTS `professors_and_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `professors_and_courses` AS select concat(`professors`.`Professor_First_Name`,' ',`professors`.`Professor_Last_Name`) AS `Professor Name`,`spring_core_courses`.`Course_Name` AS `Course_Name` from ((`professors` join `professor_to_course` on((`professors`.`Professor_ID` = `professor_to_course`.`Professor_ID`))) join `spring_core_courses` on((`spring_core_courses`.`Course_ID` = `professor_to_course`.`Course_ID`))) order by `professors`.`Professor_Last_Name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_lep_students`
--

/*!50001 DROP VIEW IF EXISTS `total_lep_students`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_lep_students` AS select sum(`popular_majors`.`Number_of_Undergraduate_Students`) AS `Total_LEP_Students` from `popular_majors` where (`popular_majors`.`Is_it_an_LEP` = 'Yes') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `total_students_per_major`
--

/*!50001 DROP VIEW IF EXISTS `total_students_per_major`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `total_students_per_major` AS select sum(`popular_majors`.`Number_of_Undergraduate_Students`) AS `SUM(Number_of_Undergraduate_Students)` from `popular_majors` where (`popular_majors`.`Is_it_an_LEP` = 'Yes') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 17:27:46
