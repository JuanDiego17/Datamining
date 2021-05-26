/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.5-10.4.14-MariaDB : Database - data
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`data` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `data`;

/*Table structure for table `cargo` */

DROP TABLE IF EXISTS `cargo`;

CREATE TABLE `cargo` (
  `id_cargo` int(11) NOT NULL AUTO_INCREMENT,
  `n_cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Data for the table `cargo` */

insert  into `cargo`(`id_cargo`,`n_cargo`) values (1,'Director Ejecutivo'),(2,'Director de Operaciones'),(3,'Director Comercial'),(4,'Director de Marketing'),(5,'Director de Recursos Humanos'),(6,'Recursos Humanos'),(7,'Contador'),(8,'Asistente de Contador'),(9,'Soporte'),(10,'Jefe de Area (Programacion)'),(11,'SCRUM Master (Movil)'),(12,'SCRUM Master (Web)'),(13,'Programador (Movil)'),(14,'Programador (Web)'),(15,'Jefe de Area (QA)'),(16,'QA');

/*Table structure for table `empleado` */

DROP TABLE IF EXISTS `empleado`;

CREATE TABLE `empleado` (
  `id_empleado` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) CHARACTER SET utf8mb4 NOT NULL,
  `apellido` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `edad` varchar(3) CHARACTER SET utf8mb4 NOT NULL,
  `genero` int(11) NOT NULL,
  `cargo` int(11) NOT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `genero` (`genero`),
  KEY `id_cargo` (`cargo`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`genero`) REFERENCES `genero` (`id_genero`) ON UPDATE CASCADE,
  CONSTRAINT `empleado_ibfk_2` FOREIGN KEY (`cargo`) REFERENCES `cargo` (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

/*Data for the table `empleado` */

insert  into `empleado`(`id_empleado`,`nombre`,`apellido`,`edad`,`genero`,`cargo`) values (1,'Juan','Corte','30',1,1),(2,'María','Ofelia','27',2,2),(3,'Andres','Corte','25',1,3),(4,'María','Sefue','33',2,4),(5,'José','Perez','21',1,5),(6,'Miriam','Rosales','36',2,6),(7,'Antonio','Acosta','39',1,6),(8,'Miguel','Barrera','25',1,6),(9,'Alejandro','Barba','27',1,6),(10,'Manuel','Alzate','29',1,6),(11,'Margarita','Cabrera','26',2,6),(12,'Veronica','Duarte','28',2,6),(13,'Elena','Estrada','29',2,6),(14,'Rosa','Jurado','24',2,6),(15,'Fernanda','Herrera','28',2,6),(16,'Sergio','Jurado','35',1,7),(17,'Martha','Navarrete','27',2,8),(18,'Alejandra','Zuleta','32',2,8),(19,'Patricia','Villeda','25',2,8),(20,'Elizabeth','Urrutia','28',2,8),(21,'Andres','Perez','31',1,9),(22,'Cristian','Araiz','28',1,9),(23,'Santiago','Arjona','28',1,10),(24,'Gabriela','Ayala','28',2,11),(25,'Guillermo','Cuevas','25',1,11),(26,'Diego','Cortes','30',1,12),(27,'Jorge','Murcia','35',1,12),(28,'Adriana','Bustamante','28',2,13),(29,'Lucia','Cardenas','27',2,13),(30,'Isabel','Granada','29',2,13),(31,'Andrea','Jara','24',2,13),(32,'Jaime','Luna','28',1,13),(33,'Ruben','Novoa','38',1,13),(34,'Ana Maria','Pineda','29',2,13),(35,'Oscar','Farias','29',2,13),(36,'Silvia','Gaitan','27',2,13),(37,'Manuel','Hidalgo','27',1,13),(38,'Luis','Ibarra','29',1,13),(39,'Alejandra','Baca','27',2,13),(40,'Mario','Granados','26',2,13),(41,'Francisco','Guerrero','29',1,14),(42,'Fernando','Morillo','39',1,14),(43,'Javier','Orozco','37',1,14),(44,'Raul','Lopez','34',1,14),(45,'David','Puente','30',1,14),(46,'Arturo','Prieto','31',1,14),(48,'Carlos','Rosales','33',1,14),(49,'Pedro','Rivas','34',1,14),(50,'Antonio','Solis','31',1,14),(51,'Carmen','Villas','28',2,15),(52,'Araceli','Uriarte','24',2,16),(53,'Diego','Villar','28',1,16),(54,'Irma','Tobar','34',2,16),(55,'Luisa','Quevedo','29',2,16),(56,'Ruben','Puente','32',1,16);

/*Table structure for table `genero` */

DROP TABLE IF EXISTS `genero`;

CREATE TABLE `genero` (
  `id_genero` int(11) NOT NULL AUTO_INCREMENT,
  `n_genero` varchar(5) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id_genero`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `genero` */

insert  into `genero`(`id_genero`,`n_genero`) values (1,'M'),(2,'F');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
