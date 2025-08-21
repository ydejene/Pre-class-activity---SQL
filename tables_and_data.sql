-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: localhost    Database: alu_student_performance
-- ------------------------------------------------------
-- Server version	8.0.28-0ubuntu0.20.04.3

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
-- Table structure for table `linux_grades`
--

DROP TABLE IF EXISTS `linux_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linux_grades` (
  `course_id` int NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `grade_obtained` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `linux_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `linux_grades`
--

LOCK TABLES `linux_grades` WRITE;
/*!40000 ALTER TABLE `linux_grades` DISABLE KEYS */;
INSERT INTO `linux_grades` VALUES (101,'Linux',1,86.00),(102,'Linux',2,46.00),(103,'Linux',3,94.00),(104,'Linux',4,79.00),(105,'Linux',6,60.00),(106,'Linux',8,49.00),(107,'Linux',10,89.00),(108,'Linux',12,57.00),(109,'Linux',14,92.00),(110,'Linux',16,76.00);
/*!40000 ALTER TABLE `linux_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `python_grades`
--

DROP TABLE IF EXISTS `python_grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `python_grades` (
  `course_id` int NOT NULL,
  `course_name` varchar(50) DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  `grade_obtained` decimal(5,2) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `student_id` (`student_id`),
  CONSTRAINT `python_grades_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `python_grades`
--

LOCK TABLES `python_grades` WRITE;
/*!40000 ALTER TABLE `python_grades` DISABLE KEYS */;
INSERT INTO `python_grades` VALUES (201,'Python',1,90.00),(202,'Python',3,86.00),(203,'Python',5,71.00),(204,'Python',7,95.00),(205,'Python',9,82.00),(206,'Python',11,43.00),(207,'Python',13,68.00),(208,'Python',15,78.00),(209,'Python',17,94.00),(210,'Python',18,59.00);
/*!40000 ALTER TABLE `python_grades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `student_id` int NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `intake_year` int NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Abdul Kudus Zakaria Mukhtaru',2024),(2,'Belyse Intwaza',2024),(3,'James Peter Nnamchukwu',2024),(4,'Chidera Alvin-Chris',2025),(5,'Guido Rene Kayigamba',2025),(6,'Eloi Mizero',2025),(7,'Yonas Getachew Dejene',2024),(8,'Ridaa Isaro',2024),(9,'Ivan Rukundo',2025),(10,'Judy Lee',2025),(11,'Kevin Adams',2024),(12,'David Katate',2024),(13,'Rome Julliet',2025),(14,'Dianah Wilson',2025),(15,'Ornell Moris',2024),(16,'Paul Chris',2025),(17,'Scott Jones',2025),(18,'Rachel Ishimwe',2024);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-08-21  6:15:52
