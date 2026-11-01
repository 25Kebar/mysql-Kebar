-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: db_postobon
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` VALUES (1,'Guajira'),(2,'Atlantico'),(3,'Meta'),(4,'Antioquia'),(5,'Valle del Cauca'),(6,'Cundinamarca'),(7,'Santander');
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sede_id` int NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `cargo` varchar(50) DEFAULT NULL,
  `salario` decimal(10,2) NOT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_empleados_sedes` (`sede_id`),
  CONSTRAINT `fk_empleados_sedes` FOREIGN KEY (`sede_id`) REFERENCES `sedes` (`id`),
  CONSTRAINT `chk_empleados_salario` CHECK ((`salario` > 0))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,'Carlos Pinto','Jefe de sede',5720000.00,'2018-03-12'),(2,1,'Marta Gamez','Operario de planta',2310000.00,'2021-07-05'),(3,1,'Luis Brito','Conductor',2640000.00,'2022-01-17'),(4,1,'Ana Redondo','Auxiliar administrativo',2090000.00,'2023-02-20'),(5,2,'Jorge Iguarán','Jefe de sede',5000000.00,'2017-09-01'),(6,2,'Elena Epieyú','Operario de planta',2050000.00,'2022-05-09'),(7,2,'Pedro Uriana','Vendedor',2300000.00,'2023-08-14'),(8,4,'Sofía Valdés','Jefe de sede',5600000.00,'2016-11-22'),(9,4,'Camilo Barrios','Supervisor',3400000.00,'2019-04-15'),(10,4,'Laura Mendoza','Analista de calidad',3800000.00,'2020-10-03'),(11,4,'Andrés Pacheco','Operario de planta',2150000.00,'2024-01-08'),(12,5,'Diana Rojas','Jefe de sede',6100000.00,'2015-06-30'),(13,5,'Felipe Cárdenas','Supervisor',3600000.00,'2018-12-10'),(14,5,'Natalia Soto','Vendedor',2500000.00,'2023-03-27'),(15,6,'Ricardo Zapata','Jefe de sede',5800000.00,'2016-02-18'),(16,6,'Paula Giraldo','Analista de calidad',4000000.00,'2021-09-13'),(17,6,'Mateo Osorio','Conductor',2450000.00,'2024-06-01'),(18,7,'Valentina Ríos','Supervisor',3500000.00,'2020-01-27'),(19,8,'Héctor Cubillos','Jefe de sede',5400000.00,'2017-05-16'),(20,8,'Isabel Moreno','Operario de planta',2200000.00,'2022-11-21'),(21,8,'Julián Torres','Conductor',2350000.00,'2023-10-02'),(22,8,'Camila Vargas','Auxiliar administrativo',1950000.00,'2025-02-10'),(23,2,'Rosa Fince','Operario de planta',2100000.00,'2025-03-03'),(24,5,'Tomás Herrera','Conductor',2400000.00,'2025-04-21'),(25,8,'Gloria Páez','Vendedor',2550000.00,'2025-05-12');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sedes`
--

DROP TABLE IF EXISTS `sedes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sedes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_departamento` int DEFAULT NULL,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sedes_departamento` (`id_departamento`),
  CONSTRAINT `fk_sedes_departamento` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sedes`
--

LOCK TABLES `sedes` WRITE;
/*!40000 ALTER TABLE `sedes` DISABLE KEYS */;
INSERT INTO `sedes` VALUES (1,1,'Fonseca'),(2,1,'Barrancas'),(3,1,'Distraccion'),(4,2,'San Juan'),(5,6,'Bogota'),(6,4,'Medellin'),(7,5,'Cali'),(8,3,'Villavicencio'),(9,3,'Acacias'),(10,3,'Granada'),(11,3,'Puerto López'),(12,3,'Cumaral'),(13,3,'Restrepo'),(14,3,'San Martín'),(15,3,'Puerto Gaitán'),(16,3,'Mesetas'),(17,3,'La Macarena'),(18,4,'Itagüí'),(19,4,'Bello'),(20,5,'Palmira'),(21,NULL,'Sede Móvil');
/*!40000 ALTER TABLE `sedes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vw_s13_salarios_superiores_promedio`
--

DROP TABLE IF EXISTS `vw_s13_salarios_superiores_promedio`;
/*!50001 DROP VIEW IF EXISTS `vw_s13_salarios_superiores_promedio`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_s13_salarios_superiores_promedio` AS SELECT 
 1 AS `id`,
 1 AS `nombre`,
 1 AS `sede_id`,
 1 AS `salario`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `vw_s13_sedes_sin_empleados`
--

DROP TABLE IF EXISTS `vw_s13_sedes_sin_empleados`;
/*!50001 DROP VIEW IF EXISTS `vw_s13_sedes_sin_empleados`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vw_s13_sedes_sin_empleados` AS SELECT 
 1 AS `sede_id`,
 1 AS `sede`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vw_s13_salarios_superiores_promedio`
--

/*!50001 DROP VIEW IF EXISTS `vw_s13_salarios_superiores_promedio`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_s13_salarios_superiores_promedio` (`id`,`nombre`,`sede_id`,`salario`) AS select `empleados`.`id` AS `id`,`empleados`.`nombre` AS `nombre`,`empleados`.`sede_id` AS `sede_id`,`empleados`.`salario` AS `salario` from `empleados` where (`empleados`.`salario` > (select avg(`empleados`.`salario`) from `empleados`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vw_s13_sedes_sin_empleados`
--

/*!50001 DROP VIEW IF EXISTS `vw_s13_sedes_sin_empleados`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vw_s13_sedes_sin_empleados` (`sede_id`,`sede`) AS select `s`.`id` AS `id`,`s`.`nombre` AS `nombre` from `sedes` `s` where exists(select 1 from `empleados` `e` where (`e`.`sede_id` = `s`.`id`)) is false */;
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

-- Dump completed on 2026-11-01 16:18:51
