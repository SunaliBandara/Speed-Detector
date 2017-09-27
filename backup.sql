/*
SQLyog Ultimate v9.51 
MySQL - 5.5.0-m2-community : Database - svsa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`svsa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `svsa`;

/*Table structure for table `driver` */

DROP TABLE IF EXISTS `driver`;

CREATE TABLE `driver` (
  `iddriver` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `nic` varchar(10) DEFAULT NULL,
  `contact` varchar(10) DEFAULT NULL,
  `registrationNumber` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`iddriver`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `driver` */

insert  into `driver`(`iddriver`,`name`,`nic`,`contact`,`registrationNumber`) values (1,'D.S.Kumara','960560432v','077808575','BGF-6758'),(2,'I.G.Fernando','967450345v','0779094646','BGV-3465');

/*Table structure for table `vehicle` */

DROP TABLE IF EXISTS `vehicle`;

CREATE TABLE `vehicle` (
  `idvehicle` int(11) NOT NULL AUTO_INCREMENT,
  `registrationNumber` varchar(10) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `speed` double DEFAULT NULL,
  `driver_iddriver` int(11) NOT NULL,
  PRIMARY KEY (`idvehicle`),
  KEY `fk_vehicle_driver_idx` (`driver_iddriver`),
  CONSTRAINT `fk_vehicle_driver` FOREIGN KEY (`driver_iddriver`) REFERENCES `driver` (`iddriver`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

/*Data for the table `vehicle` */

insert  into `vehicle`(`idvehicle`,`registrationNumber`,`date`,`speed`,`driver_iddriver`) values (1,'BGF-6758','2017-09-25',60,1),(2,'BGF-6758','2017-09-25',60,1),(3,'BGF-6758','2017-09-25',60,1),(4,'BGF-6758','2017-09-25',67.5,1),(5,'BGF-6758','2017-09-25',67.5,1),(6,'BGF-6758','2017-09-25',77.1428571428571,1),(7,'BGF-6758','2017-09-25',60,1),(8,'BGF-6758','2017-09-25',60,1),(9,'BGF-6758','2017-09-25',60,1),(10,'BGF-6758','2017-09-25',54,1),(11,'BGF-6758','2017-09-25',60,1),(12,'BGF-6758','2017-09-25',67.5,1),(13,'BGF-6758','2017-09-25',60,1),(14,'BGF-6758','2017-09-25',60,1),(15,'BGF-6758','2017-09-25',60,1),(16,'BGF-6758','2017-09-25',54,1),(17,'BGF-6758','2017-09-25',60,1),(18,'BGF-6758','2017-09-25',77.1428571428571,1),(19,'BGF-6758','2017-09-25',64.8,1),(20,'BGF-6758','2017-09-25',54,1),(21,'BGF-6758','2017-09-25',72,1),(22,'BGF-6758','2017-09-25',72,1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
