-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: localhost    Database: inscritos
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `ANO_ACADEMICO`
--

LOCK TABLES `ANO_ACADEMICO` WRITE;
/*!40000 ALTER TABLE `ANO_ACADEMICO` DISABLE KEYS */;
INSERT INTO `ANO_ACADEMICO` VALUES (2015,1,13969),(2015,2,21613),(2015,3,8242),(2015,4,57719),(2015,5,11084),(2015,6,6533),(2015,7,7457),(2015,8,55111),(2015,9,16229),(2015,10,49303),(2016,1,13580),(2016,2,22541),(2016,3,7976),(2016,4,58619),(2016,5,11061),(2016,6,6547),(2016,7,8752),(2016,8,55906),(2016,9,15027),(2016,10,49519),(2017,1,13067),(2017,2,23197),(2017,3,8452),(2017,4,60935),(2017,5,11440),(2017,6,6749),(2017,7,9705),(2017,8,57520),(2017,9,14086),(2017,10,50871),(2018,1,12665),(2018,2,24083),(2018,3,8610),(2018,4,64600),(2018,5,11597),(2018,6,6904),(2018,7,10163),(2018,8,58767),(2018,9,14962),(2018,10,52045),(2019,1,13004),(2019,2,24800),(2019,3,9004),(2019,4,66547),(2019,5,11993),(2019,6,7178),(2019,7,10760),(2019,8,60898),(2019,9,13830),(2019,10,53201),(2020,1,13746),(2020,2,24946),(2020,3,9374),(2020,4,69305),(2020,5,12330),(2020,6,6685),(2020,7,11630),(2020,8,63434),(2020,9,13247),(2020,10,55200),(2021,1,15142),(2021,2,26191),(2021,3,9852),(2021,4,73658),(2021,5,12851),(2021,6,7290),(2021,7,12662),(2021,8,65755),(2021,9,13925),(2021,10,58302);
/*!40000 ALTER TABLE `ANO_ACADEMICO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `CURSOS`
--

LOCK TABLES `CURSOS` WRITE;
/*!40000 ALTER TABLE `CURSOS` DISABLE KEYS */;
INSERT INTO `CURSOS` VALUES (1,'Educacao'),(2,'Artes'),(3,'Linguas'),(4,'Ciencias empresariais e administracao'),(5,'Ciencias biologicas e ciencias afins'),(6,'Ciencias fisicas'),(7,'Tecnologias da informacao e comunicacao (TICs)'),(8,'Engenharia e tecnologias afins'),(9,'Arquitetura e construcao'),(10,'Saude');
/*!40000 ALTER TABLE `CURSOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `INSCRITOS`
--

LOCK TABLES `INSCRITOS` WRITE;
/*!40000 ALTER TABLE `INSCRITOS` DISABLE KEYS */;
INSERT INTO `INSCRITOS` VALUES (1,2021,'Minho','Publico',5177),(2,2021,'Minho','Privado',0),(3,2021,'Porto','Publico',56031),(4,2021,'Porto','Privado',32818),(5,2021,'Tras-os-Montes e Alto Douro','Publico',8455),(6,2021,'Tras-os-Montes e Alto Douro','Privado',0),(7,2021,'Aveiro','Publico',15398),(8,2021,'Aveiro','Privado',397),(9,2021,'Coimbra','Publico',36813),(10,2021,'Coimbra','Privado',1525),(11,2021,'Covilha','Publico',11442),(12,2021,'Covilha','Privado',0),(13,2021,'Lisboa','Publico',121608),(14,2021,'Lisboa','Privado',39541),(15,2021,'Evora','Publico',7575),(16,2021,'Evora','Privado',0),(17,2021,'Algarve','Publico',9596),(18,2021,'Algarve','Privado',940),(19,2021,'Madeira','Publico',3536),(20,2021,'Madeira','Privado',416),(21,2020,'Minho','Publico',4880),(22,2020,'Minho','Privado',132),(23,2020,'Porto','Publico',52314),(24,2020,'Porto','Privado',32051),(25,2020,'Tras-os-Montes e Alto Douro','Publico',7986),(26,2020,'Tras-os-Montes e Alto Douro','Privado',0),(27,2020,'Aveiro','Publico',14585),(28,2020,'Aveiro','Privado',356),(29,2020,'Coimbra','Publico',35776),(30,2020,'Coimbra','Privado',1438),(31,2020,'Covilha','Publico',11171),(32,2020,'Covilha','Privado',0),(33,2020,'Lisboa','Publico',117227),(34,2020,'Lisboa','Privado',35922),(35,2020,'Evora','Publico',7526),(36,2020,'Evora','Privado',0),(37,2020,'Algarve','Publico',8879),(38,2020,'Algarve','Privado',734),(39,2020,'Madeira','Publico',3230),(40,2020,'Madeira','Privado',491),(41,2019,'Minho','Publico',4451),(42,2019,'Minho','Privado',143),(43,2019,'Porto','Publico',51119),(44,2019,'Porto','Privado',30583),(45,2019,'Tras-os-Montes e Alto Douro','Publico',7730),(46,2019,'Tras-os-Montes e Alto Douro','Privado',0),(47,2019,'Aveiro','Publico',13744),(48,2019,'Aveiro','Privado',360),(49,2019,'Coimbra','Publico',35175),(50,2019,'Coimbra','Privado',1286),(51,2019,'Covilha','Publico',11416),(52,2019,'Covilha','Privado',0),(53,2019,'Lisboa','Publico',112725),(54,2019,'Lisboa','Privado',34440),(55,2019,'Evora','Publico',7230),(56,2019,'Evora','Privado',0),(57,2019,'Algarve','Publico',8443),(58,2019,'Algarve','Privado',587),(59,2019,'Madeira','Publico',2882),(60,2019,'Madeira','Privado',471),(61,2018,'Minho','Publico',4203),(62,2018,'Minho','Privado',151),(63,2018,'Porto','Publico',50441),(64,2018,'Porto','Privado',28724),(65,2018,'Tras-os-Montes e Alto Douro','Publico',6970),(66,2018,'Tras-os-Montes e Alto Douro','Privado',0),(67,2018,'Aveiro','Publico',13213),(68,2018,'Aveiro','Privado',234),(69,2018,'Coimbra','Publico',34732),(70,2018,'Coimbra','Privado',1227),(71,2018,'Covilha','Publico',10298),(72,2018,'Covilha','Privado',0),(73,2018,'Lisboa','Publico',112552),(74,2018,'Lisboa','Privado',33042),(75,2018,'Evora','Publico',6947),(76,2018,'Evora','Privado',0),(77,2018,'Algarve','Publico',8264),(78,2018,'Algarve','Privado',495),(79,2018,'Madeira','Publico',2727),(80,2018,'Madeira','Privado',510),(81,2017,'Minho','Publico',4144),(82,2017,'Minho','Privado',165),(83,2017,'Porto','Publico',49587),(84,2017,'Porto','Privado',26343),(85,2017,'Tras-os-Montes e Alto Douro','Publico',6896),(86,2017,'Tras-os-Montes e Alto Douro','Privado',0),(87,2017,'Aveiro','Publico',12969),(88,2017,'Aveiro','Privado',169),(89,2017,'Coimbra','Publico',34475),(90,2017,'Coimbra','Privado',1198),(91,2017,'Covilha','Publico',9896),(92,2017,'Covilha','Privado',0),(93,2017,'Lisboa','Publico',110150),(94,2017,'Lisboa','Privado',31116),(95,2017,'Evora','Publico',6876),(96,2017,'Evora','Privado',0),(97,2017,'Algarve','Publico',8008),(98,2017,'Algarve','Privado',405),(99,2017,'Madeira','Publico',2700),(100,2017,'Madeira','Privado',507),(101,2016,'Minho','Publico',4142),(102,2016,'Minho','Privado',190),(103,2016,'Porto','Publico',49206),(104,2016,'Porto','Privado',23729),(105,2016,'Tras-os-Montes e Alto Douro','Publico',6854),(106,2016,'Tras-os-Montes e Alto Douro','Privado',0),(107,2016,'Aveiro','Publico',12682),(108,2016,'Aveiro','Privado',151),(109,2016,'Coimbra','Publico',33950),(110,2016,'Coimbra','Privado',1164),(111,2016,'Covilha','Publico',9486),(112,2016,'Covilha','Privado',0),(113,2016,'Lisboa','Publico',108247),(114,2016,'Lisboa','Privado',29332),(115,2016,'Evora','Publico',6476),(116,2016,'Evora','Privado',0),(117,2016,'Algarve','Publico',7780),(118,2016,'Algarve','Privado',447),(119,2016,'Madeira','Publico',2806),(120,2016,'Madeira','Privado',444),(121,2015,'Minho','Publico',3888),(122,2015,'Minho','Privado',227),(123,2015,'Porto','Publico',48967),(124,2015,'Porto','Privado',23069),(125,2015,'Tras-os-Montes e Alto Douro','Publico',7639),(126,2015,'Tras-os-Montes e Alto Douro','Privado',0),(127,2015,'Aveiro','Publico',12481),(128,2015,'Aveiro','Privado',185),(129,2015,'Coimbra','Publico',33668),(130,2015,'Coimbra','Privado',1258),(131,2015,'Covilha','Publico',9230),(132,2015,'Covilha','Privado',0),(133,2015,'Lisboa','Publico',107596),(134,2015,'Lisboa','Privado',28956),(135,2015,'Evora','Publico',5766),(136,2015,'Evora','Privado',0),(137,2015,'Algarve','Publico',7403),(138,2015,'Algarve','Privado',490),(139,2015,'Madeira','Publico',2840),(140,2015,'Madeira','Privado',426);
/*!40000 ALTER TABLE `INSCRITOS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `UNI`
--

LOCK TABLES `UNI` WRITE;
/*!40000 ALTER TABLE `UNI` DISABLE KEYS */;
INSERT INTO `UNI` VALUES ('Algarve',5,62471),('Aveiro',2,96924),('Coimbra',2,253685),('Covilha',2,72939),('Evora',4,48396),('Lisboa',3,1022454),('Madeira',6,23986),('Minho',1,31893),('Porto',1,554982),('Tras-os-Montes e Alto Douro',1,52530);
/*!40000 ALTER TABLE `UNI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `ZONA`
--

LOCK TABLES `ZONA` WRITE;
/*!40000 ALTER TABLE `ZONA` DISABLE KEYS */;
INSERT INTO `ZONA` VALUES (1,'Norte',639405),(2,'Centro',423548),(3,'Area Metropolitana de Lisboa',1022454),(4,'Alentejo',48396),(5,'Algarve',62471),(6,'Regiao Autonoma da Madeira',23986);
/*!40000 ALTER TABLE `ZONA` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-23  1:52:07
