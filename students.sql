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

/*Data for the table `students_results` */

insert  into `students_results`(`ID`,`NAME`,`EMAIL`,`PHONE`,`MAJOR_ID`,`UNIVERSITY_ID`,`IS_ACTIVE`,`ENROLLED_ON`,`APTITUDE_PERCENTAGE`,`IS_PASSED_IN_APTITUDE`,`TECHNICAL_PERCENTAGE`,`IS_PASSED_IN_TECHNICAL`,`OVERALL_PERCENTAGE`,`HAVE_ARREARS`,`HAD_ARREARS`,`REVIEWER_RESULT`) values 
(1,'Saad','saadbinsalam@gmail.com','801-526-6750',2,1,1,'2016-06-19 23:50:00','40.00',0,'20.00',0,'6.30',1,1,NULL),
(2,'Muhamed Hussain P F','hussainmohamed63@gmail.com','979-154-3062',1,1,1,'2016-06-20 05:16:00','20.00',0,'53.33',0,'8.57',0,0,NULL),
(3,'syedibrahim','syedibu304@gmail.com','909-467-6980',2,1,1,'2016-06-20 05:16:00','46.67',0,'20.00',0,'6.20',1,1,NULL),
(4,'SYED MUEEN','syedmueen.am@gmail.com','917-690-4420',3,1,1,'2016-06-20 05:16:00','33.33',0,'26.67',0,'71.00',1,1,NULL),
(5,'Nivedha','nivedharajan95@gmail.com','979-104-8122',2,1,1,'2016-06-20 05:16:00','20.00',0,'53.33',0,'86.80',0,1,NULL),
(6,'sangeetha e','sangeetaekambaram1408@gmail.com','917-639-1014',2,1,1,'2016-06-20 05:16:00','26.67',0,'33.33',0,'67.00',0,1,NULL),
(7,'sahana ramesh','wannafindsahana@gmail.com','984-086-0934',4,1,1,'2016-06-20 05:16:00','53.33',0,'0.00',0,'87.00',0,0,NULL),
(8,'aravind raj','aravind.k.10213@gmail.com','805-608-0521',7,1,1,'2016-06-20 05:17:00','33.33',0,'46.67',0,'6.56',0,1,NULL),
(9,'Rubashree','rubashree96@gmail.com','988-407-1962',2,1,1,'2016-06-20 05:17:00','33.33',0,'46.67',0,'76.80',0,0,NULL),
(10,'Shirine sithara','shirinsyed96@gmail.com','822-023-6110',5,1,1,'2016-06-20 05:17:00','46.67',0,'20.00',0,'8.30',0,0,NULL),
(11,'kirubakaran','karankirubamca@gmail.com','956-622-5466',1,1,1,'2016-06-20 05:17:00','26.67',0,'86.67',1,'89.00',0,0,NULL),
(12,'Shaik khader ansari','ansari7995@gmail.com','971-081-7579',2,1,1,'2016-06-20 05:17:00','20.00',0,'40.00',0,'7.03',0,0,NULL),
(13,'sangeetha','sangeetha17596@gmail.com','984-088-6687',2,1,1,'2016-06-20 05:17:00','46.67',0,'46.67',0,'88.60',0,0,NULL),
(14,'sriraman srinivasan','sriramansrinivasan23@gmail.com','822-083-5255',2,1,1,'2016-06-20 05:17:00','33.33',0,'46.67',0,'6.70',0,1,NULL),
(15,'sivaraghu siva','sivaraghu.siva17@gmail.com','944-406-7435',9,1,1,'2016-06-20 05:17:00','46.67',0,'66.67',0,'8.00',0,1,NULL),
(16,'katheeja ummal','katheeja3012@gmail.com','904-297-5685',6,1,1,'2016-06-20 05:17:00','26.67',0,'33.33',0,'84.00',0,0,NULL),
(17,'abdul mohsin','abdul.mohsin.mohsin511@gmail.com','979-035-1340',2,1,1,'2016-06-20 05:17:00','20.00',0,'60.00',0,'7.70',0,0,NULL),
(18,'syed shakir ahmed','syedshakir1247@yahoo.com','956-620-2844',2,1,1,'2016-06-20 05:17:00','33.33',0,'33.33',0,'58.00',1,1,NULL),
(19,'Fathima Sajna','fathima9411@gmail.com','996-222-5173',2,1,1,'2016-06-20 05:17:00','53.33',0,'40.00',0,'93.30',0,0,NULL),
(20,'Sanjay','sanjaysenthilkumar21@gmail.com','962-612-6941',7,1,1,'2016-06-20 05:17:00','53.33',0,'26.67',0,'83.30',0,0,NULL),
(21,'Mohamed Mohideen Noohu','noohu2k14@gmail.com','956-681-1390',7,1,1,'2016-06-20 05:17:00','46.67',0,'20.00',0,'70.20',0,0,NULL),
(22,'ponlakshmi','lakshmipon1996@gmail.com','995-207-7903',2,1,1,'2016-06-20 05:17:00','40.00',0,'40.00',0,'85.50',0,0,NULL),
(23,'vignesh arunachalam','vignesharunachalam80@gmail.com','978-988-9148',2,1,1,'2016-06-20 05:17:00','46.67',0,'26.67',0,'7.00',0,1,NULL),
(24,'vijayaraghavan','a.v.raghavan111@gmail.com','995-277-3291',7,1,1,'2016-06-20 05:18:00','20.00',0,'40.00',0,'78.00',0,0,NULL),
(25,'Mohamed Fysal s','mohamedfysal96@gmail.com','887-027-1750',7,1,1,'2016-06-20 05:18:00','40.00',0,'0.00',0,'65.50',0,0,NULL),
(26,'SELVA RAJ SANTOSH RAJ','santosh.selva96@gmail.com','730-520-5258',7,1,1,'2016-06-20 05:18:00','53.33',0,'33.33',0,'7.20',0,1,NULL),
(27,'uma maheswari','magiuma26@gmail.com','868-080-9060',1,1,1,'2016-06-20 05:18:00','46.67',0,'40.00',0,'8.67',0,0,NULL),
(28,'shaiknoorahmmad','shaiknoorahmmad@yahoo.in','995-203-9889',3,1,1,'2016-06-20 05:18:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(29,'GOMATHI R','gomathipriya.ram@gmail.com','971-056-9186',8,1,1,'2016-06-20 05:18:00','6.67',0,'26.67',0,'6.50',1,0,NULL),
(30,'syed sirajudeen','salahudeenjamal@yahoo.in','875-451-4240',3,1,1,'2016-06-20 05:18:00','40.00',0,'40.00',0,'7.95',0,0,NULL),
(31,'Dinesh kumar','jdineshkpm@gmail.com','958-500-8757',1,1,1,'2016-06-20 05:18:00','26.67',0,'33.33',0,'79.00',0,0,NULL),
(32,'KeerthiRaj','keerthichathri@gmail.com','969-898-3888',1,1,1,'2016-06-20 05:18:00','33.33',0,'53.33',0,NULL,NULL,NULL,NULL),
(33,'Guganesshwar','gugan73@gmail.com','994-057-8563',7,1,1,'2016-06-20 05:18:00','20.00',0,'40.00',0,'6.60',0,1,NULL),
(34,'Ferveez ahamed','ahamedferveez@gmail.com','971-091-3840',2,1,1,'2016-06-20 05:18:00','40.00',0,'40.00',0,'6.31',0,0,NULL),
(35,'m anwar basha','basha30.96@gmail.com','784-563-2620',7,1,1,'2016-06-20 05:18:00','6.67',0,'26.67',0,'71.00',0,1,NULL),
(36,'sufiyan sayeed','sufiyan.bsau@gmail.com','984-028-8650',7,1,1,'2016-06-20 05:18:00','33.33',0,'53.33',0,'7.08',0,0,NULL),
(37,'mohamedAriff M','mohamedariff95@gmail.com','978-895-5748',7,1,1,'2016-06-20 05:18:00','20.00',0,'33.33',0,'86.90',0,0,NULL),
(38,'Roshan Tariq M','roshantariq96@gmail.com','979-037-7157',7,1,1,'2016-06-20 05:18:00','46.67',0,'40.00',0,'75.00',1,1,NULL),
(39,'Syed Azhar','azharsd97@gmail.com','888-511-1382',7,1,1,'2016-06-20 05:18:00','46.67',0,'20.00',0,'6.50',1,1,NULL),
(40,'Nithya Aravindakumar','nithyaaravindakumar@gmail.com','944-545-7081',6,1,1,'2016-06-20 05:18:00','53.33',0,'20.00',0,'8.22',0,0,NULL),
(41,'Ganesh kumar M','ganesh26795@gmail.com','994-107-7366',2,1,1,'2016-06-20 05:18:00','40.00',0,'26.67',0,'83.40',0,0,NULL),
(42,'Mohammed Shahid','mdshahid2696@gmail.com','994-477-2791',6,1,1,'2016-06-20 05:18:00','33.33',0,'40.00',0,'8.45',0,0,NULL),
(43,'Bhuvaneswari H','bhuva1214@gmail.com','978-983-3548',1,1,1,'2016-06-20 05:18:00','26.67',0,'40.00',0,'6.57',0,0,NULL),
(44,'MAHADEER MOHAMED K','therideryasar6@gmail.com','915-954-5155',7,1,1,'2016-06-20 05:18:00','26.67',0,'33.33',0,'6.34',1,1,NULL),
(45,'keerthana','keerthanalak30@gmail.com','979-076-6700',6,1,1,'2016-06-20 05:18:00','53.33',0,'13.33',0,'7.02',0,1,NULL),
(46,'SHAIK MOHAMMAD ABDUL AZEEM','azeem286@outlook.com','867-525-7255',7,1,1,'2016-06-20 05:19:00','33.33',0,'40.00',0,'7.30',1,1,NULL),
(47,'Mohamed Haroon','mohmedharoon24@gmail.com','948-655-6751',2,1,1,'2016-06-20 05:19:00','46.67',0,'40.00',0,'5.80',1,1,NULL),
(48,'Asha','asha.amirthashree1996@gmail.com','960-009-3549',5,1,1,'2016-06-20 05:19:00','26.67',0,'13.33',0,'7.04',0,1,NULL),
(49,'Rajaguru S','rajaguru32@gmail.com','805-614-3376',1,1,1,'2016-06-20 05:19:00','26.67',0,'46.67',0,NULL,0,0,NULL),
(50,'IRFAN JUNAID','irfan3332@gmail.com','960-064-6987',NULL,1,1,'2016-06-20 05:19:00','33.33',0,'13.33',0,'7.10',1,1,NULL),
(51,'Balavan Vignesh','balavans007@gmail.com',NULL,10,1,1,'2016-06-20 05:19:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(52,'Pradeep','prdprmsh@gmail.com','948-680-5058',7,1,1,'2016-06-20 05:19:00','33.33',0,'13.33',0,'74.90',0,0,NULL),
(53,'MOHAMMED NAZURUDEEN','ynasur@gmail.com','805-635-0667',7,1,1,'2016-06-20 05:19:00','26.67',0,'46.67',0,'65.40',1,1,NULL),
(54,'kandanuru gowtham','gowtham.kandanuru@gmail.com','833-205-6542',NULL,1,1,'2016-06-20 05:19:00','46.67',0,'53.33',0,'8.40',0,0,NULL),
(55,'irfan sheriff','irfansitharath20@gmail.com','917-687-6874',1,1,1,'2016-06-20 05:19:00','20.00',0,'40.00',0,'76.10',0,1,NULL),
(56,'mudassir aiyman k','aiymancs@gmail.com','868-005-4403',11,1,1,'2016-06-20 05:19:00','20.00',0,'46.67',0,'97.40',0,0,NULL),
(57,'Shafiq reshid','shafiqspeedy@gmail.com',NULL,NULL,1,1,'2016-06-20 05:19:00','40.00',0,'60.00',0,'8.00',0,0,NULL),
(58,'Mauroof Aquib','bmaaquib@gmail.com','994-451-8748',11,1,1,'2016-06-20 05:19:00','40.00',0,'66.67',0,'79.00',0,0,NULL),
(59,'Mohamed Ibrahim','mdibrahim336@gmail.com','720-044-7971',1,1,1,'2016-06-20 05:19:00','26.67',0,'46.67',0,'7.22',0,0,NULL),
(60,'Syed Mohammed Zaid','zaid2730syed@gmail.com','784-513-7768',NULL,1,1,'2016-06-20 05:19:00','26.67',0,'13.33',0,'67.00',1,1,NULL),
(61,'Hyash','ayazdhanish@gmail.com','784-539-3107',NULL,1,1,'2016-06-20 05:19:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(62,'Azeezullah','azeezullah1993@gmail.com','740-133-4402',1,1,1,'2016-06-20 05:19:00','33.33',0,'60.00',0,'72.00',0,0,NULL),
(63,'Aaqib Mohamed','aaqib1912@gmail.com','994-031-2254',6,1,1,'2016-06-20 05:19:00','13.33',0,'46.67',0,'7.84',0,0,NULL),
(64,'SHAIK NAVEED AHMAD','shaiknaveedahmad@gmail.com','860-886-2428',7,1,1,'2016-06-20 05:19:00','53.33',0,'46.67',0,'8.40',0,0,NULL),
(65,'Mohamed Riyaz','riyazmohamed141995@gmail.com','880-726-9620',2,1,1,'2016-06-20 05:19:00','40.00',0,'33.33',0,'6.50',1,1,NULL),
(66,'Nithya Ramesh','nithya95@gmail.com','880-740-7687',9,1,1,'2016-06-20 05:19:00','73.33',0,'40.00',0,'8.75',0,0,NULL),
(67,'Bhavana','gbbhavana2@gmail.com','967-712-3942',6,1,1,'2016-06-20 05:19:00','66.67',0,'46.67',0,'8.34',0,0,NULL),
(68,'Mohammed Ismail P','ismailpmi123@gmail.com','759-856-8512',11,1,1,'2016-06-20 05:20:00','13.33',0,'66.67',0,'7.50',0,0,NULL),
(69,'DEEPA GRACY S','roshnadeepa77@gmail.com',NULL,NULL,1,1,'2016-06-20 05:20:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(70,'Nijaf Ahamed','nijaf1994@gmail.com',NULL,NULL,1,1,'2016-06-20 05:20:00','20.00',0,'26.67',0,'86.00',0,1,NULL),
(71,'SUGANTHI V','sugu3007@gmail.com','805-614-6307',11,1,1,'2016-06-20 05:20:00','20.00',0,'40.00',0,'88.00',0,0,NULL),
(72,'JERRIN TITUS A','jerrintitus@gmail.com','994-453-2135',7,1,1,'2016-06-20 05:20:00','46.67',0,'33.33',0,'83.45',0,0,NULL),
(73,'MIR MUSHEER MOHIDEEN','musheeroyal@gmail.com','860-886-5334',7,1,1,'2016-06-20 05:20:00','33.33',0,'20.00',0,'85.40',0,0,NULL),
(74,'Vetrivel','vetrireya@gmail.com','978-959-5146',NULL,1,1,'2016-06-20 05:20:00','26.67',0,'26.67',0,'70.00',0,1,NULL),
(75,'Shaik Abdul Ayaz','ayazshaik09@gmail.com','801-585-2446',6,1,1,'2016-06-20 05:20:00','73.33',0,'33.33',0,'9.53',0,0,NULL),
(76,'sudheep senthilkumar','sudheepsenthilkumar@gmail.com','944-476-9271',7,1,1,'2016-06-20 05:20:00','33.33',0,'26.67',0,'87.70',0,0,NULL),
(77,'AbdulMathin','abdulmathin95@gmail.com','848-905-3777',2,1,1,'2016-06-20 05:20:00','33.33',0,'33.33',0,'69.00',0,0,NULL),
(78,'gulshana','gulshanaizada96@gmail.com','962-647-5505',6,1,1,'2016-06-20 05:20:00','46.67',0,'26.67',0,'6.00',1,1,NULL),
(79,'KARTHIKEYAN A V','vgkarthi96@gmail.com','971-082-0453',7,1,1,'2016-06-20 05:20:00','26.67',0,'40.00',0,'70.00',1,1,NULL),
(80,'Aashik Bharath','aashik.bharath@gmail.com','729-988-0647',6,1,1,'2016-06-20 05:20:00','66.67',0,'60.00',0,'87.00',0,0,NULL),
(81,'Vishnu Kity','vishnuprakash049@gmail.com','960-009-5432',1,1,1,'2016-06-20 05:20:00','46.67',0,'40.00',0,'76.00',0,0,NULL),
(82,'Mohamed Saqib','saqib4461103@gmail.com','867-890-7875',6,1,1,'2016-06-20 05:20:00','20.00',0,'40.00',0,'70.00',0,1,NULL),
(83,'MOHAMED AASEEM M','aasimahmed2@gmail.com','867-892-6433',11,1,1,'2016-06-20 05:20:00','20.00',0,'66.67',0,'7.91',0,0,NULL),
(84,'Zafeer Sahir N','koozazafeer@gmail.com','801-568-4887',11,1,1,'2016-06-20 05:20:00','26.67',0,'73.33',0,'8.20',0,0,NULL),
(85,'Gayathri','gayathri1605srk@gmail.com',NULL,4,1,1,'2016-06-20 05:20:00','0.00',0,'0.00',0,'8.00',0,0,NULL),
(86,'Tahmina Tahseen','gmtahmina@gmail.com','887-098-6858',6,1,1,'2016-06-20 05:21:00','20.00',0,'33.33',0,'7.50',0,0,NULL),
(87,'Sheriza Larif','sherizalarif96@gmail.com','917-676-5054',6,1,1,'2016-06-20 05:21:00','26.67',0,'53.33',0,'7.16',0,0,NULL),
(88,'Madhura Srikar','srikar.rock.66@gmail.com',NULL,NULL,1,1,'2016-06-20 05:21:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(89,'Gulshan H','gulshanbasha69@gmail.com','944-365-0169',2,1,1,'2016-06-20 05:21:00','26.67',0,'40.00',0,NULL,NULL,NULL,NULL),
(90,'venkatramm','venkatramm700@gmail.com',NULL,NULL,1,1,'2016-06-20 05:21:00','40.00',0,'40.00',0,'77.00',0,0,NULL),
(91,'prathivrajan','rajanprathiv@gmail.com','805-616-9617',NULL,1,1,'2016-06-20 05:21:00','13.33',0,'26.67',0,'65.00',0,1,NULL),
(92,'mohamed thoufiq','mthoufiq49@gmail.com','984-010-7037',2,1,1,'2016-06-20 05:21:00','0.00',0,'0.00',0,'6.51',0,1,NULL),
(93,'Kaleem Ahamed','kaleemahmed008@gmail.com','709-206-2795',1,1,1,'2016-06-20 05:21:00','33.33',0,'46.67',0,'71.70',0,0,NULL),
(94,'mohamed Arshad','mohamedarshad22@gmail.com','979-014-5585',7,1,1,'2016-06-20 05:21:00','33.33',0,'46.67',0,'83.30',0,0,NULL),
(95,'dasarirajuvidya','dasarirajuvidya@gmail.com','970-466-9811',2,1,1,'2016-06-20 05:21:00','33.33',0,'26.67',0,NULL,NULL,NULL,NULL),
(96,'Munawir C M','munawirs4uabc@gmail.com','729-904-7807',6,1,1,'2016-06-20 05:21:00','66.67',0,'66.67',0,'77.00',0,0,NULL),
(97,'Sudharsan','sudha.rajan1309@gmail.com','962-974-3877',NULL,1,1,'2016-06-20 05:21:00','33.33',0,'33.33',0,'6.98',0,1,NULL),
(98,'Yogamanikandan Murugesan','mymyoga95@gmail.com','875-414-2757',5,1,1,'2016-06-20 05:22:00','20.00',0,'26.67',0,'65.00',1,1,NULL),
(99,'Arun Kumar','arunsiva161996@gmail.com',NULL,10,1,1,'2016-06-20 05:22:00','0.00',NULL,'0.00',NULL,NULL,NULL,NULL,NULL),
(100,'Sreenivas R','sreeni96r@gmail.com','908-706-7905',7,1,1,'2016-06-20 05:22:00','53.33',0,'26.67',0,'80.00',0,0,NULL),
(101,'Noor Asjed AR','mdasjed123@gmail.com','959-728-6557',11,1,1,'2016-06-20 05:22:00','26.67',0,'20.00',0,'81.00',0,0,NULL),
(102,'Dhanush Kumar','dhanu10114@gmail.com','900-302-4227',2,1,1,'2016-06-20 05:22:00','33.33',0,'46.67',0,'6.70',0,1,NULL),
(103,'Hari Shankar','harishrockkz@gmail.com','902-541-4886',7,1,1,'2016-06-20 05:22:00','80.00',1,'66.67',0,'7.76',0,0,NULL),
(104,'Yegneshwaran','eashwar95@gmail.com','967-715-4401',NULL,1,1,'2016-06-20 05:22:00','53.33',0,'40.00',0,'8.66',0,0,NULL),
(105,'IMADUDDEEN','imaduddeen96@gmail.com','967-748-3781',2,1,1,'2016-06-20 05:22:00','73.33',0,'66.67',0,'91.00',0,0,NULL),
(106,'Naveeth Salam','naveethsalam33@gmail.com','975-062-3214',1,1,1,'2016-06-20 05:22:00','26.67',0,'46.67',0,'6.69',1,1,NULL),
(107,'Deepika Ajayakumar','shreedeepika24@gmail.com','944-532-9982',2,1,1,'2016-06-20 05:23:00','33.33',0,'0.00',0,NULL,NULL,NULL,NULL),
(108,'Nihar Fathima','niharfathima5@gmail.com','709-284-5904',12,1,1,'2016-06-20 05:23:00','33.33',0,'53.33',0,NULL,NULL,NULL,NULL),
(109,'Smruthy Geethakrishnan','smruthy.gk@gmail.com','944-432-0930',6,1,1,'2016-06-20 05:25:00','13.33',0,'46.67',0,'8.50',0,1,NULL),
(110,'M Nandhini','nandhy2096@gmail.com','909-493-9696',6,1,1,'2016-06-20 05:26:00','40.00',0,'46.67',0,'7.00',0,0,NULL),
(111,'Darvesh Akhtar','darvesh247@gmail.com','809-832-4270',2,1,1,'2016-06-20 05:26:00','26.67',0,'46.67',0,'7.50',0,0,NULL),
(112,'shriya ls','shriyasriraam@gmail.com','996-279-4601',2,1,1,'2016-06-20 05:27:00','26.67',0,'33.33',0,'7.08',0,0,NULL),
(113,'MOHAMMED AATHIL S','shafi.aathil@gmail.com','917-191-3084',7,1,1,'2016-06-20 05:33:00','60.00',0,'20.00',0,NULL,NULL,NULL,NULL),
(114,'sadham hussain','sadhamhussain.s@yahoo.com','741-865-2322',7,1,1,'2016-06-20 05:33:00','40.00',0,'53.33',0,'7.03',0,0,NULL),
(115,'Nirmal Kumar C G','nirmalkumarcg1@gmail.com',NULL,NULL,1,1,'2016-06-20 05:33:00','26.67',0,'33.33',0,'67.00',0,1,NULL),
(116,'pranesh','praneshm.931@gmail.com','893-955-5007',7,1,1,'2016-06-20 05:34:00','33.33',0,'40.00',0,'7.10',0,1,NULL),
(117,'Praveen Kumar','praweenkumar0802@gmail.com','996-252-2132',7,1,1,'2016-06-20 05:34:00','26.67',0,'33.33',0,'66.90',0,0,NULL),
(118,'Ravishankaran P L','ravi_shankaran@yahoo.in',NULL,NULL,1,1,'2016-06-20 05:34:00','46.67',0,'26.67',0,'7.85',0,0,NULL),
(119,'Raghul Murugan','raghul.m1996@gmail.com','979-071-5577',2,1,1,'2016-06-20 05:34:00','46.67',0,'46.67',0,'75.00',0,0,NULL),
(120,'Allam Abubacker','alamabubacker@gmail.com','978-907-0994',7,1,1,'2016-06-20 05:34:00','80.00',1,'40.00',0,'70.00',0,1,NULL),
(121,'Nijas Ahamed','nijas.here@gmail.com','880-799-5285',2,1,1,'2016-06-20 05:35:00','93.33',1,'40.00',0,'74.50',0,0,NULL),
(122,'prashanthbala','prashanthbala29@gmail.com','893-909-7627',2,1,1,'2016-06-20 05:35:00','33.33',0,'26.67',0,'7.80',0,0,NULL),
(123,'sinuf ahamed','sinuf747@gmail.com','965-577-6045',2,1,1,'2016-06-20 05:35:00','73.33',0,'53.33',0,'73.00',0,0,NULL),
(124,'REFAYUDEEN','refayudeen29@gmail.com','893-914-8621',7,1,1,'2016-06-20 05:35:00','33.33',0,'26.67',0,'71.00',1,1,NULL),
(125,'Nivas Saba','nivassaba@gmail.com','994-026-1779',2,1,1,'2016-06-20 05:35:00','46.67',0,'26.67',0,'71.00',0,0,NULL),
(126,'syed fairoz','rsfsyed@gmail.com','948-918-0319',2,1,1,'2016-06-20 05:35:00','26.67',0,'40.00',0,'61.00',1,1,NULL),
(127,'mohiuddin don','mohiuddin.don@gmail.com','955-129-1452',13,1,1,'2016-06-20 05:35:00','33.33',0,'20.00',0,'67.00',0,1,NULL),
(128,'patelmdeshaq','pateleshaq@gmail.com','956-602-7020',13,1,1,'2016-06-20 05:35:00','33.33',0,'46.67',0,'81.35',0,0,NULL),
(129,'mohamed imran','hajahimran@gmail.com','989-458-0631',7,1,1,'2016-06-20 05:35:00','33.33',0,'26.67',0,'65.00',0,1,NULL),
(130,'THOUFEEQ MD SADIQUE K','tmsadique@outlook.com','984-006-7198',7,1,1,'2016-06-20 05:36:00','73.33',0,'53.33',0,'76.00',0,0,NULL),
(131,'Naveen','ms.naveen15@gmail.com','994-016-7628',2,1,1,'2016-06-20 05:36:00','46.67',0,'33.33',0,'65.60',1,1,NULL),
(132,'Mohammed Ashraf M','ashraf9527@gmail.com',NULL,NULL,1,1,'2016-06-20 05:36:00','20.00',0,'20.00',0,'75.00',0,0,NULL),
(133,'THENAPPAN','thenappan.2010@gmail.com','950-040-6602',2,1,1,'2016-06-20 05:36:00','60.00',0,'33.33',0,'67.25',0,1,NULL),
(134,'sakthignanavel','gvelbala@gmail.com','958-510-8685',2,1,1,'2016-06-20 05:36:00','0.00',0,'33.33',0,NULL,NULL,NULL,NULL),
(135,'jailabdeen','jaibrahim44@gmail.com','909-446-9536',13,1,1,'2016-06-20 05:36:00','20.00',0,'46.67',0,'7.11',0,1,NULL),
(136,'Chithra M','mchithra1995@gmail.com','948-678-8064',2,1,1,'2016-06-20 05:39:00','40.00',0,'40.00',0,'89.00',0,0,NULL),
(137,'jawith ahamed','jawithmiandad009@gmail.com','900-332-8769',13,1,1,'2016-06-20 05:40:00','33.33',0,'33.33',0,'68.00',0,0,NULL),
(138,'Venkatesh A','venkatesh.a@outlook.in','822-043-6711',9,1,1,'2016-06-20 05:42:00','73.33',0,'33.33',0,'66.00',0,1,NULL),
(139,'Ashik ul kadhir','ashikulkadhir1995@gmail.com','809-842-3896',7,1,1,'2016-06-20 05:43:00','46.67',0,'46.67',0,'75.00',0,1,NULL),
(140,'sairam','saivivek00161@gmail.com','984-051-9268',2,1,1,'2016-06-20 05:43:00','40.00',0,'20.00',0,'6.00',1,0,NULL),
(141,'selva kumar','selvark6699@gmail.com','994-145-7184',7,1,1,'2016-06-20 05:45:00','33.33',0,'26.67',0,'78.00',0,0,NULL),
(142,'Dhanuja','dhanujapriya796@gmail.com','994-030-1307',1,1,1,'2016-06-20 05:47:00','26.67',0,'66.67',0,'7.85',0,0,NULL),
(143,'Asma Malick','asmamalick21@gmail.com','900-301-7789',1,1,1,'2016-06-20 05:48:00','46.67',0,'53.33',0,'8.52',0,0,NULL),
(144,'arjun sundaram','mridangamarjun@gmail.com','805-600-4758',1,1,1,'2016-06-20 05:48:00','40.00',0,'33.33',0,'6.20',1,1,NULL),
(145,'venkatakrishnan kumar','lord.venkat.dragon@gmail.com','893-932-2366',6,1,1,'2016-06-20 05:49:00','20.00',0,'33.33',0,'78.00',0,0,NULL),
(146,'Moshina Begam','moshinabegam@gmail.com','975-191-4340',1,1,1,'2016-06-20 05:49:00','46.67',0,'46.67',0,'78.20',0,1,NULL),
(147,'krithika venkatesan','krithiv95@gmail.com','960-014-0220',1,1,1,'2016-06-20 05:49:00','26.67',0,'40.00',0,'8.32',0,0,NULL),
(148,'Snigdha','snigdhavijay200@gmail.com','805-606-6991',1,1,1,'2016-06-20 05:49:00','33.33',0,'53.33',0,'7.97',0,1,NULL),
(149,'Abhinaya Shankar','abhinayashankar@rocketmail.com','944-511-0888',1,1,1,'2016-06-20 05:49:00','46.67',0,'60.00',0,'7.92',0,0,NULL),
(150,'wazir faizal','wazirfaizal123@gmail.com','809-899-6738',1,1,1,'2016-06-20 05:49:00','26.67',0,'53.33',0,'65.00',1,1,NULL),
(151,'Christy Xavier Raj K','sterlingkriz@gmail.com','950-058-0692',1,1,1,'2016-06-20 05:49:00','13.33',0,'66.67',0,'7.40',0,0,NULL),
(152,'Srinivasan D','srinivasan12395@gmail.com','967-728-5757',14,1,1,'2016-06-20 05:50:00','60.00',0,'53.33',0,'63.80',0,1,NULL),
(153,'Ashwini V','ashwinivijayakumar149@yahoo.com','984-161-6314',1,1,1,'2016-06-20 05:50:00','33.33',0,'46.67',0,'8.02',0,0,NULL),
(154,'Vikash Sridhar','mg385477@gmail.com','984-032-5835',6,1,1,'2016-06-20 05:50:00','40.00',0,'33.33',0,'75.00',0,0,NULL),
(155,'Jothiprakash Jo','jothiprakash53@gmail.com','770-850-7887',1,1,1,'2016-06-20 05:50:00','13.33',0,'33.33',0,'67.00',0,1,NULL),
(156,'savitha v','savithavijayarangan@gmail.com','904-290-4128',2,1,1,'2016-06-20 05:50:00','60.00',0,'26.67',0,'6.75',0,0,NULL),
(157,'Gomati S','dharanisaravanan@gmail.com','956-619-6113',1,1,1,'2016-06-20 05:50:00','53.33',0,'46.67',0,'8.35',0,0,NULL),
(158,'manikandan','ncmanikandan17@gmail.com','979-098-4361',1,1,1,'2016-06-20 05:51:00','0.00',0,'40.00',0,'65.00',0,1,NULL),
(159,'Rifa Rahman','rifa.rahman20@gmail.com','944-457-3836',1,1,1,'2016-06-20 05:51:00','46.67',0,'40.00',0,'89.00',0,0,NULL),
(160,'Poornima','poornigoshal@gmail.com','900-388-6025',1,1,1,'2016-06-20 05:51:00','20.00',0,'60.00',0,'78.00',0,0,NULL),
(161,'Deepak .G','deepak.rkgd@gmail.com','787-175-0572',15,1,1,'2016-06-20 05:51:00','13.33',0,'40.00',0,'75.00',0,0,NULL),
(162,'Parveen','dheelga251@gmail.com','720-039-8505',1,1,1,'2016-06-20 05:51:00','26.67',0,'46.67',0,'7.50',0,0,NULL),
(163,'Varalakshmi Vedagiri','varalakshmi.vedagiri@gmail.com','928-375-1301',1,1,1,'2016-06-20 05:51:00','46.67',0,'40.00',0,'7.60',0,1,NULL),
(164,'yasmine khan','yasminekhan96@gmail.com','950-026-5322',NULL,1,1,'2016-06-20 05:51:00','20.00',0,'53.33',0,'7.54',0,0,NULL),
(165,'sridhar','vikkysri77@gmail.com','950-013-2087',1,1,1,'2016-06-20 05:53:00','33.33',0,'53.33',0,'7.30',0,0,NULL),
(166,'SelvaGanesh','selvaganesh369@gmail.com','944-288-7290',1,1,1,'2016-06-20 05:54:00','60.00',0,'46.67',0,'6.89',0,1,NULL),
(167,'Nivethitha S','nivethithas81@gmail.com','979-072-7918',1,1,1,'2016-06-20 05:54:00','33.33',0,'60.00',0,'8.00',NULL,0,NULL),
(168,'Farid Ahamed','farid.pno@gmail.com','958-533-7419',7,1,1,'2016-06-20 05:55:00','33.33',0,'46.67',0,'8.10',0,0,NULL),
(169,'kalima Noor deen','sonadeen@gmail.com','720-084-3555',9,1,1,'2016-06-20 05:55:00','20.00',0,'33.33',0,'6.60',1,1,NULL),
(170,'Hari','hari266266@gmail.com','741-841-1290',7,1,1,'2016-06-20 05:55:00','33.33',0,'20.00',0,'6.80',0,0,NULL),
(171,'arun balaji','arunbalajirenuka@gmail.com','948-916-3338',1,1,1,'2016-06-20 05:56:00','40.00',0,'26.67',0,'6.60',0,1,NULL),
(172,'Supraja Krish','suprajarkrish@gmail.com','978-856-6966',1,1,1,'2016-06-20 05:56:00','46.67',0,'53.33',0,'8.66',0,0,NULL),
(173,'Prathoshan','prathosh202@gmail.com','822-051-8263',1,1,1,'2016-06-20 05:56:00','46.67',0,'66.67',0,'68.00',0,0,NULL),
(174,'A RAJKUMAR','iamraj1995@gmail.com','801-236-7691',1,1,1,'2016-06-20 05:57:00','40.00',0,'60.00',0,'60.00',0,0,NULL),
(175,'MITHIL GOVIND','mithil707@gmail.com','994-486-6490',1,1,1,'2016-06-20 05:58:00','26.67',0,'80.00',1,'7.53',0,1,NULL),
(176,'mohammed sehu asif','sehuasif@gmail.com','720-041-1994',7,1,1,'2016-06-20 06:00:00','26.67',0,'60.00',0,'7.22',0,0,NULL),
(177,'syed imran','invitevrsbu95@gmail.com','720-025-7029',11,1,1,'2016-06-20 06:02:00','26.67',0,'46.67',0,'9.14',0,0,NULL),
(178,'Jamilathul Rumana','jr.rumana@gmail.com','978-726-2674',1,1,1,'2016-06-20 06:05:00','40.00',0,'66.67',0,'90.10',0,0,NULL),
(179,'Sumithra','msumithra03@gmail.com','948-678-8062',2,1,1,'2016-06-20 06:06:00','20.00',0,'33.33',0,'8.60',0,0,NULL),
(180,'arthi','arthisargunam16@gmail.com','971-053-4812',2,1,1,'2016-06-20 06:06:00','20.00',0,'20.00',0,'7.30',0,0,NULL),
(181,'Ashika Jahir','ashi.jahir@gmail.com','887-054-0702',1,1,1,'2016-06-20 06:07:00','53.33',0,'73.33',0,'98.90',0,0,NULL),
(182,'Preethi','preethi9601@gmail.com','956-605-0122',1,1,1,'2016-06-20 06:07:00','46.67',0,'40.00',0,'70.00',0,1,NULL),
(183,'Anandhy Raju','yhdnana@gmail.com','984-027-2404',1,1,1,'2016-06-20 06:07:00','40.00',0,'66.67',0,'90.07',0,0,NULL),
(184,'Bakialakshmi Murugesan','bakiamurugesan.95@gmail.com','967-711-9587',1,1,1,'2016-06-20 06:08:00','26.67',0,'60.00',0,'86.90',0,0,NULL),
(185,'Kavitha Annadurai','kavikavithadurai@gmail.com','944-588-7996',2,1,1,'2016-06-20 06:08:00','26.67',0,'46.67',0,'78.90',0,0,NULL),
(186,'Divya Sivakumar','s.divya4573@gmail.com','979-029-9091',1,1,1,'2016-06-20 06:08:00','40.00',0,'73.33',0,'65.00',0,1,NULL),
(187,'Shruthi R','shruthi0406@gmail.com','996-277-6319',2,1,1,'2016-06-20 06:08:00','53.33',0,'26.67',0,'8.20',0,0,NULL),
(188,'Gayathridevi Radhakrishnan','ga3devi95@gmail.com','960-005-2280',1,1,1,'2016-06-20 06:09:00','46.67',0,'40.00',0,'70.00',0,1,NULL),
(189,'SHEERIN FARHANA','sheerinfarhana2013@gmail.com','814-497-2432',1,1,1,'2016-06-20 06:09:00','53.33',0,'13.33',0,'7.62',0,0,NULL),
(190,'SAMAYA POORANI JAYAKUMAR','samayafriends@gmail.com','917-650-6199',2,1,1,'2016-06-20 06:09:00','40.00',0,'20.00',0,'7.30',0,1,NULL),
(191,'Thasnim S Samad','thasnimsamad13@gmail.com','944-383-8341',2,1,1,'2016-06-20 06:11:00','26.67',0,'40.00',0,'78.00',0,0,NULL),
(192,'RAMYA','ramya26696@gmail.com','978-966-8249',1,1,1,'2016-06-20 06:11:00','26.67',0,'53.33',0,'93.60',0,0,NULL),
(193,'SHAFANA BHEGAM','rshafanabhegam@gmail.com','900-352-1686',1,1,1,'2016-06-20 06:12:00','20.00',0,'53.33',0,'8.40',0,0,NULL),
(194,'Preethi jayakumar','contactpreethi27@gmail.com','893-955-7268',2,1,1,'2016-06-20 06:12:00','20.00',0,'80.00',1,'77.00',0,0,NULL),
(195,'Gayathri Devi','gayu122301@gmail.com','944-576-5342',2,1,1,'2016-06-20 06:13:00','20.00',0,'46.67',0,NULL,0,1,NULL),
(196,'Sariga Suresh','sarika_suresh08@yahoo.com','740-216-2445',2,1,1,'2016-06-20 06:13:00','20.00',0,'40.00',0,'71.00',0,0,NULL),
(197,'Shahidha Parveen','shahidhaparveen16@gmail.com','888-380-8903',2,1,1,'2016-06-20 06:13:00','53.33',0,'20.00',0,'76.00',0,0,NULL),
(198,'Mohamed Aadhil','jeffaadhil@gmail.com','995-260-8795',2,1,1,'2016-06-20 06:14:00','20.00',0,'33.33',0,'5.80',1,1,NULL),
(199,'thaslim banu','thaslimbanu31@gmail.com','952-454-4305',NULL,1,1,'2016-06-20 06:14:00','33.33',0,'46.67',0,'85.00',0,0,NULL),
(200,'Sameer Kity','sameeron95@gmail.com',NULL,NULL,1,1,'2016-06-20 06:14:00','33.33',0,'26.67',0,'65.00',1,1,NULL),
(201,'infantraj','infantraj84@gmail.com','744-832-8471',7,1,1,'2016-06-20 06:15:00','66.67',0,'40.00',0,'79.00',0,0,NULL),
(202,'saura tasneem','sabura2611@gmail.com','951-449-6466',1,1,1,'2016-06-20 06:16:00','0.00',0,'66.67',0,'86.00',0,0,NULL),
(203,'RAJALAKSHMI K','rajilakshmimca10@gmail.com','763-997-6103',1,1,1,'2016-06-20 06:16:00','26.67',0,'26.67',0,'7.39',0,0,NULL),
(204,'b l akshaya','akshaya040795@gmail.com','994-063-1979',6,1,1,'2016-06-20 06:18:00','0.00',0,'0.00',0,'74.00',0,1,NULL),
(205,'nivedhaa madhavan','uvedha16@gmail.com','822-019-3161',6,1,1,'2016-06-20 06:20:00','40.00',0,'20.00',0,'6.70',0,1,NULL),
(206,'Deepa Gracy s','deepa031622@gmail.com','950-019-5794',11,1,1,'2016-06-20 06:21:00','13.33',0,'53.33',0,'7.14',0,0,NULL),
(207,'Abu Mohammed Abbas','bbbs4050@gmail.com','880-722-5857',6,1,1,'2016-06-20 06:26:00','20.00',0,'33.33',0,'63.00',0,1,NULL),
(208,'Hussain Dhaman','hussain.dhaman@gmail.com','996-260-2141',7,1,1,'2016-06-20 06:26:00','40.00',0,'40.00',0,'73.00',0,1,NULL),
(209,'Anantha Narayanan V','ananth121095@gmail.com','979-080-6851',7,1,1,'2016-06-20 06:27:00','53.33',0,'53.33',0,'73.90',0,1,NULL),
(210,'Firose Khan','firosekhans117@gmail.com','888-392-4849',NULL,1,1,'2016-06-20 06:28:00','20.00',0,'26.67',0,'7.02',1,0,NULL),
(211,'mohamed abdul khader t','abdulkhader4123@gmail.com','995-206-4577',7,1,1,'2016-06-20 06:28:00','60.00',0,'60.00',0,'82.50',0,0,NULL),
(212,'MOHAMMED SAMEER','mdsameereee2017@gmail.com','759-816-3724',6,1,1,'2016-06-20 06:29:00','53.33',0,'60.00',0,'77.04',0,0,NULL),
(213,'jaya kumar','jayakumar.mca_a2014@bsauniv.ac.in','994-061-1476',11,1,1,'2016-06-20 06:30:00','26.67',0,'20.00',0,'8.19',0,0,NULL),
(214,'SYED IBRAHIM','syed_ibru@yahoo.co.in',NULL,NULL,1,1,'2016-06-20 06:45:00','20.00',0,'40.00',0,'7.10',0,0,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
