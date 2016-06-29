/*
SQLyog Ultimate v12.2.1 (64 bit)
MySQL - 5.6.31-log : Database - students
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`students` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `students`;

/*Table structure for table `seed_major` */

DROP TABLE IF EXISTS `seed_major`;

CREATE TABLE `seed_major` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

/*Data for the table `seed_major` */

insert  into `seed_major`(`ID`,`NAME`) values 
(1,'Computer Science And Engineering'),
(2,'Electronics and Communication Engineering'),
(3,'Civil Engineering'),
(4,'Master of Computer Applications'),
(5,'Aerospace Engineering'),
(6,'Electrical Engineering'),
(7,'Mechanical Engineering'),
(8,'Polymer Engineering'),
(9,'Information Technology'),
(10,'Electronics and Instrumentation Engineering'),
(11,'Computer and Information Sciences, General'),
(12,'Electrical and Electronics Engineering'),
(13,'Automobile Engineering'),
(14,'Networking and Telecommunications'),
(15,'Dummy');

/*Table structure for table `seed_universities` */

DROP TABLE IF EXISTS `seed_universities`;

CREATE TABLE `seed_universities` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `seed_universities` */

insert  into `seed_universities`(`ID`,`NAME`) values 
(1,'B. S. Abdur Rahman University (India)');

/*Table structure for table `students_results` */

DROP TABLE IF EXISTS `students_results`;

CREATE TABLE `students_results` (
  `ID` bigint(20) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  `EMAIL` varchar(400) DEFAULT NULL,
  `PHONE` varchar(20) DEFAULT NULL,
  `MAJOR_ID` bigint(20) DEFAULT NULL,
  `UNIVERSITY_ID` bigint(20) NOT NULL,
  `IS_ACTIVE` tinyint(1) NOT NULL,
  `ENROLLED_ON` datetime DEFAULT NULL,
  `APTITUDE_PERCENTAGE` decimal(5,2) DEFAULT NULL,
  `IS_PASSED_IN_APTITUDE` tinyint(1) DEFAULT NULL,
  `TECHNICAL_PERCENTAGE` decimal(5,2) DEFAULT NULL,
  `IS_PASSED_IN_TECHNICAL` tinyint(1) DEFAULT NULL,
  `OVERALL_PERCENTAGE` decimal(5,2) DEFAULT NULL,
  `HAVE_ARREARS` tinyint(1) DEFAULT NULL,
  `HAD_ARREARS` tinyint(1) DEFAULT NULL,
  `REVIEWER_RESULT` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `STUDENTS_RESULTS_FK2` (`MAJOR_ID`),
  KEY `STUDENTS_RESULTS_FK1` (`UNIVERSITY_ID`),
  CONSTRAINT `STUDENTS_RESULTS_FK1` FOREIGN KEY (`UNIVERSITY_ID`) REFERENCES `seed_universities` (`ID`),
  CONSTRAINT `STUDENTS_RESULTS_FK2` FOREIGN KEY (`MAJOR_ID`) REFERENCES `seed_major` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8;


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
