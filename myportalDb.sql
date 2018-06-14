/*
SQLyog Enterprise Trial - MySQL GUI v7.11 
MySQL - 5.5.16 : Database - myportal
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`myportal` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `myportal`;

/*Table structure for table `admin_register` */

DROP TABLE IF EXISTS `admin_register`;

CREATE TABLE `admin_register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `admin_register` */

insert  into `admin_register`(`ID`,`FirstName`,`LastName`,`Country`,`EmailId`,`Password`) values (9,'mukesh','sharma','india','sharma45@gmail.com','qazwsx'),(10,'abidal','mahrez','india','mahrez786@gmail.com','mahrezadmin'),(11,'abidal','mahrez','india','mahrez786@gmail.com','mahrezadmin'),(12,'vikas','bansal','pakistan','bansal786@gmail.com','bansaladm'),(13,'soumitra','debnath','bangladesh','debnath786@yahoo.com','debnathadm'),(14,'mukesh','jadon','india','jadon786@gmail.com','jadonadmin'),(15,'praveen','sharma','srilanka','sharma786@gmail.com','sharmaadmin'),(16,'ajit','patel','india','patel786@gmail.com','pateladmin'),(17,'rahul','banerjee','bangladesh','banerjee786@gmail.com','banerjeeadmin'),(18,'rajeev','saxena','bhutan','saxena786@gmail.com','saxenaadmin'),(19,'arvind','gaur','nepal','gaur786@gmail.com','gauradmin');

/*Table structure for table `student_marks` */

DROP TABLE IF EXISTS `student_marks`;

CREATE TABLE `student_marks` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(255) NOT NULL,
  `Marks` float(4,2) NOT NULL,
  `Attendance` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `student_marks` */

insert  into `student_marks`(`ID`,`SubjectName`,`Marks`,`Attendance`) values (1,'Networking',78.00,'Present'),(2,'Machine Learning',45.00,'Absent'),(3,'Big Data',79.00,'Present'),(4,'Big Data',23.00,'Present'),(5,'Internet of things',88.50,'Absent'),(6,'Internet of things',80.00,'Present'),(7,'Machine Learning',68.50,'Absent'),(8,'Networking',58.50,'Present'),(9,'Big Data',73.00,'Absent'),(10,'Internet of things',67.75,'Present'),(11,'Internet of things',88.50,'Absent'),(12,'Internet of things',80.00,'Present'),(13,'Machine Learning',68.50,'Absent'),(14,'Networking',58.50,'Present'),(15,'Big Data',73.00,'Absent'),(16,'Internet of things',67.75,'Present');

/*Table structure for table `student_register` */

DROP TABLE IF EXISTS `student_register`;

CREATE TABLE `student_register` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Country` varchar(255) NOT NULL,
  `EmailId` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `student_register` */

insert  into `student_register`(`ID`,`FirstName`,`LastName`,`Country`,`EmailId`,`Password`) values (11,'shubham','gupta','Nepal','shubham12@gmail.com','qwerty1'),(12,'jatin','deewan','Bangladesh','gargtech@gmail.com','deewan27'),(13,'manan','sharma','India','manan1000@gmail.com','sharmazx'),(14,'ron','johnson','bangladesh','ron099@gmail.com','ronnyyes'),(15,'abidal','mahrez','pakistan','mahrez786@yahoo.com','mahrezqq'),(16,'leo','messi','nepal','messiah@gmail.com','argentina'),(17,'cris','ronaldo','india','ronaldo7@hotmail.com','portugal'),(18,'virat','kohli','india','imvirat@yahoo.com','india'),(19,'steve','jobs','srilanka','jobs1@gmail.com','america'),(20,'shahrukh','khan','india','imsrk@hotmail.com','bollywood'),(21,'virat','kohli','india','imvirat@yahoo.com','india'),(22,'steve','jobs','srilanka','jobs1@gmail.com','america'),(23,'shahrukh','khan','india','imsrk@hotmail.com','bollywood');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
