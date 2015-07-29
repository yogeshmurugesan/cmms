/*
SQLyog - Free MySQL GUI v5.13
Host - 5.0.22-community-nt : Database - cmms
*********************************************************************
Server version : 5.0.22-community-nt
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `cmms`;

USE `cmms`;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `adminlog` */

DROP TABLE IF EXISTS `adminlog`;

CREATE TABLE `adminlog` (
  `name` varchar(14) default NULL,
  `pass` varchar(14) default NULL,
  `quest` varchar(30) default NULL,
  `ans` varchar(15) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adminlog` */

insert into `adminlog` (`name`,`pass`,`quest`,`ans`) values ('admin','admin',NULL,NULL),('yogesh','kumar','What is your fathers name','murugesan');

/*Table structure for table `applyreval` */

DROP TABLE IF EXISTS `applyreval`;

CREATE TABLE `applyreval` (
  `idno` varchar(14) default NULL,
  `name` varchar(15) default NULL,
  `dept` varchar(15) default NULL,
  `paper` varchar(30) default NULL,
  `pid` varchar(14) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `applyreval` */

insert into `applyreval` (`idno`,`name`,`dept`,`paper`,`pid`) values ('10it10','yogesh','it','System Software','it322'),('10it10','yogesh','it','c# lab','it323');

/*Table structure for table `dept` */

DROP TABLE IF EXISTS `dept`;

CREATE TABLE `dept` (
  `deptname` varchar(20) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dept` */

insert into `dept` (`deptname`) values ('it'),('bca'),('cs');

/*Table structure for table `mark` */

DROP TABLE IF EXISTS `mark`;

CREATE TABLE `mark` (
  `dept` varchar(14) default NULL,
  `idno` varchar(14) default NULL,
  `name` varchar(14) default NULL,
  `sem` varchar(5) default NULL,
  `pid` varchar(14) default NULL,
  `pname` varchar(60) default NULL,
  `inter` int(8) default NULL,
  `exter` int(8) default NULL,
  `total` int(8) default NULL,
  `code` varchar(8) default NULL,
  `credit` int(8) default NULL,
  `gp` double default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mark` */

insert into `mark` (`dept`,`idno`,`name`,`sem`,`pid`,`pname`,`inter`,`exter`,`total`,`code`,`credit`,`gp`) values ('it','10it10','yogesh','I','it111','c',14,29,43,'p',5,21.5),('it','10it10','yogesh','I','it112','Introduction to Information',10,20,30,'a',5,15),('it','10it10','yogesh','I','it113','Programming In C Lab',15,20,35,'a',2,7),('it','10it10','yogesh','II','it121','c++',20,40,60,'p',5,30),('it','10it10','yogesh','II','it122','Digital Principles&',15,30,45,'p',5,22.5),('it','10it10','yogesh','II','it123','Programming In C++ Lab',40,60,100,'p',2,20),('it','10it10','yogesh','III','it211','java',20,55,75,'p',5,37.5),('it','10it10','yogesh','III','it212','Computer Organization',21,35,56,'p',5,28),('it','10it10','yogesh','III','it213','Core Java Lab',40,60,100,'p',2,20),('it','10it10','yogesh','IV','it221','rdbms',22,40,62,'p',5,31),('it','10it10','yogesh','IV','it222','Data Structures and Algorithms',15,30,45,'p',5,22.5),('it','10it10','yogesh','IV','it223','rdbms lab',40,60,100,'p',2,20),('it','10it10','yogesh','V','it311','os',20,42,62,'p',5,31),('it','10it10','yogesh','V','it312','Programming in JSP',24,40,64,'p',5,32),('it','10it10','yogesh','V','it313','Programming in JSP lab',40,60,100,'p',2,20),('it','10it10','yogesh','VI','it321','c#',20,40,60,'p',5,30),('it','10it10','yogesh','VI','it322','System Software',14,29,43,'p',5,21.5),('it','10it10','yogesh','VI','it323','c# lab',40,60,100,'p',2,20),('it','10it09','kumar','I','it111','c',21,29,50,'p',5,25),('it','10it09','kumar','I','it112','Introduction to Information',17,50,67,'p',5,33.5),('it','10it09','kumar','I','it113','Programming In C Lab',40,60,100,'p',2,20),('it','10it09','kumar','II','it121','c++',15,42,57,'p',5,28.5),('it','10it09','kumar','II','it122','Digital Principles&',11,57,68,'p',5,34),('it','10it09','kumar','II','it123','Programming In C++ Lab',35,55,90,'p',2,18),('it','10it09','kumar','III','it211','java',22,56,78,'p',5,39),('it','10it09','kumar','III','it212','Computer Organization',11,21,32,'a',5,16),('it','10it09','kumar','III','it213','Core Java Lab',40,60,100,'p',2,20),('it','10it09','kumar','IV','it221','rdbms',18,45,63,'p',5,31.5),('it','10it09','kumar','IV','it222','Data Structures and Algorithms',14,40,54,'p',5,27),('it','10it09','kumar','IV','it223','rdbms lab',40,60,100,'p',2,20),('it','10it09','kumar','V','it311','os',19,41,60,'p',5,30),('it','10it09','kumar','V','it312','Programming in JSP',24,57,81,'p',5,40.5),('it','10it09','kumar','V','it313','Programming in JSP lab',40,60,100,'p',2,20),('it','10it09','kumar','VI','it321','c#',12,29,41,'p',5,20.5),('it','10it09','kumar','VI','it322','System Software',17,32,49,'p',5,24.5),('it','10it09','kumar','VI','it323','c# lab',40,58,98,'p',2,19.6),('it','10it08','raja','I','it111','c',12,40,52,'p',5,26),('it','10it08','raja','I','it112','Introduction to Information',11,45,56,'p',5,28),('it','10it08','raja','I','it113','Programming In C Lab',40,50,90,'p',2,18),('it','10it08','raja','II','it121','c++',20,40,60,'p',5,30),('it','10it08','raja','II','it122','Digital Principles&',19,70,89,'p',5,44.5),('it','10it08','raja','II','it123','Programming In C++ Lab',40,60,100,'p',2,20),('it','10it08','raja','III','it211','java',24,50,74,'p',5,37),('it','10it08','raja','III','it212','Computer Organization',20,41,61,'p',5,30.5),('it','10it08','raja','III','it213','Core Java Lab',40,60,100,'p',2,20),('it','10it08','raja','IV','it221','rdbms',18,42,60,'p',5,30),('it','10it08','raja','IV','it222','Data Structures and Algorithms',16,50,66,'p',5,33),('it','10it08','raja','IV','it223','rdbms lab',40,60,100,'p',2,20),('it','10it08','raja','V','it311','os',24,48,72,'p',5,36),('it','10it08','raja','V','it312','Programming in JSP',21,50,71,'p',5,35.5),('it','10it08','raja','V','it313','Programming in JSP lab',40,60,100,'p',2,20),('it','10it08','raja','VI','it321','c#',25,45,70,'p',5,35),('it','10it08','raja','VI','it322','System Software',20,58,78,'p',5,39),('it','10it08','raja','VI','it323','c# lab',40,60,100,'p',2,20),('it','10it07','ram','I','it111','c',14,57,71,'p',5,35.5),('it','10it07','ram','I','it112','Introduction to Information',11,34,45,'p',5,22.5),('it','10it07','ram','I','it113','Programming In C Lab',40,58,98,'p',2,19.6),('it','10it07','ram','II','it121','c++',19,50,69,'p',5,34.5),('it','10it07','ram','II','it122','Digital Principles&',20,29,49,'p',5,24.5),('it','10it07','ram','II','it123','Programming In C++ Lab',38,60,98,'p',2,19.6),('it','10it07','ram','III','it211','java',19,52,71,'p',5,35.5),('it','10it07','ram','III','it212','Computer Organization',23,39,62,'p',5,31),('it','10it07','ram','III','it213','Core Java Lab',40,54,94,'p',2,18.8),('it','10it07','ram','IV','it221','rdbms',22,57,79,'p',5,39.5),('it','10it07','ram','IV','it222','Data Structures and Algorithms',14,60,74,'p',5,37),('it','10it07','ram','IV','it223','rdbms lab',40,60,100,'p',2,20),('it','10it07','ram','V','it311','os',13,43,56,'p',5,28),('it','10it07','ram','V','it312','Programming in JSP',19,59,78,'p',5,39),('it','10it07','ram','V','it313','Programming in JSP lab',40,60,100,'p',2,20),('it','10it07','ram','VI','it321','c#',19,47,66,'p',5,33),('it','10it07','ram','VI','it322','System Software',17,40,57,'p',5,28.5),('it','10it07','ram','VI','it323','c# lab',40,60,100,'p',2,20),('it','10it06','john','I','it111','c',19,70,89,'p',5,44.5),('it','10it06','john','I','it112','Introduction to Information',20,68,88,'p',5,44),('it','10it06','john','I','it113','Programming In C Lab',40,57,97,'p',2,19.4),('it','10it06','john','II','it121','c++',19,55,74,'p',5,37),('it','10it06','john','II','it122','Digital Principles&',22,55,77,'p',5,38.5),('it','10it06','john','II','it123','Programming In C++ Lab',38,60,98,'p',2,19.6),('it','10it06','john','III','it211','java',24,48,72,'p',5,36),('it','10it06','john','III','it212','Computer Organization',14,50,64,'p',5,32),('it','10it06','john','III','it213','Core Java Lab',40,60,100,'p',2,20),('it','10it06','john','IV','it221','rdbms',23,34,57,'p',5,28.5),('it','10it06','john','IV','it222','Data Structures and Algorithms',13,40,53,'p',5,26.5),('it','10it06','john','IV','it223','rdbms lab',40,60,100,'p',2,20),('it','10it06','john','V','it311','os',18,41,59,'p',5,29.5),('it','10it06','john','V','it312','Programming in JSP',24,65,89,'p',5,44.5),('it','10it06','john','V','it313','Programming in JSP lab',40,60,100,'p',2,20),('it','10it06','john','VI','it321','c#',17,53,70,'p',5,35),('it','10it06','john','VI','it322','System Software',12,40,52,'p',5,26),('it','10it06','john','VI','it323','c# lab',40,60,100,'p',2,20),('it','10it05','vel','I','it111','c',12,45,57,'p',5,28.5),('it','10it05','vel','I','it112','Introduction to Information',20,40,60,'p',5,30),('it','10it05','vel','I','it113','Programming In C Lab',40,60,100,'p',2,20),('it','10it05','vel','II','it121','c++',18,49,67,'p',5,33.5),('it','10it05','vel','II','it122','Digital Principles&',14,50,64,'p',5,32),('it','10it05','vel','II','it123','Programming In C++ Lab',40,60,100,'p',2,20),('it','10it05','vel','III','it211','java',14,53,67,'p',5,33.5),('it','10it05','vel','III','it212','Computer Organization',20,57,77,'p',5,38.5),('it','10it05','vel','III','it213','Core Java Lab',40,60,100,'p',2,20),('it','10it05','vel','IV','it221','rdbms',14,34,48,'p',5,24),('it','10it05','vel','IV','it222','Data Structures and Algorithms',19,50,69,'p',5,34.5),('it','10it05','vel','IV','it223','rdbms lab',40,55,95,'p',2,19),('it','10it05','vel','V','it311','os',15,60,75,'p',5,37.5),('it','10it05','vel','V','it312','Programming in JSP',24,59,83,'p',5,41.5),('it','10it05','vel','V','it313','Programming in JSP lab',40,55,95,'p',2,19),('it','10it05','vel','VI','it321','c#',12,40,52,'p',5,26),('it','10it05','vel','VI','it322','System Software',10,50,60,'p',5,30),('it','10it05','vel','VI','it323','c# lab',35,60,95,'p',2,19);

/*Table structure for table `papers` */

DROP TABLE IF EXISTS `papers`;

CREATE TABLE `papers` (
  `id` varchar(14) default NULL,
  `name` varchar(70) default NULL,
  `dept` varchar(14) default NULL,
  `total` int(8) default NULL,
  `sem` varchar(14) default NULL,
  `credit` int(8) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `papers` */

insert into `papers` (`id`,`name`,`dept`,`total`,`sem`,`credit`) values ('it121','c++','it',100,'II',5),('it211','java','it',100,'III',5),('it221','rdbms','it',100,'IV',5),('it311','os','it',100,'V',5),('it321','c#','it',100,'VI',5),('bca111','Programming in C','bca',100,'I',5),('it111','c','it',100,'I',5),('it112','Introduction to Information','it',100,'I',5),('it122','Digital Principles&','it',100,'II',5),('it212','Computer Organization','it',100,'III',5),('it222','Data Structures and Algorithms','it',100,'IV',5),('it312','Programming in JSP','it',100,'V',5),('it322','System Software','it',100,'VI',5),('it113','Programming In C Lab','it',100,'I',2),('it123','Programming In C++ Lab','it',100,'II',2),('it223','rdbms lab','it',100,'IV',2),('it313','Programming in JSP lab','it',100,'V',2),('it323','c# lab','it',100,'VI',2),('bca112','Digital Principles& Applicatio','bca',100,'I',5),('bca113','Programming In C Lab','bca',100,'I',2),('bca123','Computer Organization','bca',100,'II',5),('bca121','COBOL Programming','bca',100,'II',5),('bca122','COBOL Lab','bca',100,'II',2),('bca211','Microprocessor & its Applicati','bca',100,'III',5),('bca212','OOPS with c++','bca',100,'III',5),('bca213','C++ lab','bca',100,'III',2),('bca221','Computer Algorithm & Data Stru','bca',100,'IV',5),('bca222','java','bca',100,'IV',5),('bca223','java lab','bca',100,'IV',2),('bca311','Data Base Management Systems','bca',100,'V',5),('bca312','Advanced Java Programming','bca',100,'V',5),('bca313','RDBMS lab','bca',100,'V',2),('bca321','.Net Technology','bca',100,'VI',5),('bca322','OS','bca',100,'VI',5),('bca323','Web designing Lab','bca',100,'VI',2),('it213','Core Java Lab','it',100,'III',2);

/*Table structure for table `reval` */

DROP TABLE IF EXISTS `reval`;

CREATE TABLE `reval` (
  `dept` varchar(14) default NULL,
  `idno` varchar(14) default NULL,
  `name` varchar(14) default NULL,
  `sem` varchar(5) default NULL,
  `pid` varchar(8) default NULL,
  `pname` varchar(50) default NULL,
  `inter` int(5) default NULL,
  `exter` int(5) default NULL,
  `total` int(5) default NULL,
  `code` varchar(8) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reval` */

insert into `reval` (`dept`,`idno`,`name`,`sem`,`pid`,`pname`,`inter`,`exter`,`total`,`code`) values ('it','10it10','yogesh','I','it111','c',10,20,30,'a'),('it','10it10','yogesh','I','it112','Introduction to Information',15,20,35,'a');

/*Table structure for table `summa` */

DROP TABLE IF EXISTS `summa`;

CREATE TABLE `summa` (
  `textboxcount` int(5) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `summa` */

insert into `summa` (`textboxcount`) values (3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(1),(1),(1),(1),(2),(1),(3),(2),(2),(2),(2),(2),(2),(3),(3),(3),(3),(3),(2),(2),(2),(2),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(3),(2);

/*Table structure for table `top` */

DROP TABLE IF EXISTS `top`;

CREATE TABLE `top` (
  `idno` varchar(10) default NULL,
  `cgpa` double default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `top` */

insert into `top` (`idno`,`cgpa`) values ('10it10',5.96527777777778),('10it09',6.49444444444444),('10it08',7.25694444444445),('10it07',7.03472222222222),('10it06',7.51388888888889),('10it05',7.03472222222222);

/*Table structure for table `topper` */

DROP TABLE IF EXISTS `topper`;

CREATE TABLE `topper` (
  `idno` varchar(15) default NULL,
  `sem` varchar(10) default NULL,
  `gptot` double default NULL,
  `crtot` int(12) default NULL,
  `gpa` double default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `topper` */

insert into `topper` (`idno`,`sem`,`gptot`,`crtot`,`gpa`) values ('10it10','I',43.5,12,3.625),('10it10','II',72.5,12,6.04166666666667),('10it10','III',85.5,12,7.125),('10it10','IV',73.5,12,6.125),('10it10','V',83,12,6.91666666666667),('10it10','VI',71.5,12,5.95833333333333),('10it09','I',78.5,12,6.54166666666667),('10it09','II',80.5,12,6.70833333333333),('10it09','III',75,12,6.25),('10it09','IV',78.5,12,6.54166666666667),('10it09','V',90.5,12,7.54166666666667),('10it09','VI',64.6,12,5.38333333333333),('10it08','I',72,12,6),('10it08','II',94.5,12,7.875),('10it08','III',87.5,12,7.29166666666667),('10it08','IV',83,12,6.91666666666667),('10it08','V',91.5,12,7.625),('10it08','VI',94,12,7.83333333333333),('10it07','I',77.6,12,6.46666666666667),('10it07','II',78.6,12,6.55),('10it07','III',85.3,12,7.10833333333333),('10it07','IV',96.5,12,8.04166666666667),('10it07','V',87,12,7.25),('10it07','VI',81.5,12,6.79166666666667),('10it06','I',107.9,12,8.99166666666667),('10it06','II',95.1,12,7.925),('10it06','III',88,12,7.33333333333333),('10it06','IV',75,12,6.25),('10it06','V',94,12,7.83333333333333),('10it06','VI',81,12,6.75),('10it05','I',78.5,12,6.54166666666667),('10it05','II',85.5,12,7.125),('10it05','III',92,12,7.66666666666667),('10it05','IV',77.5,12,6.45833333333333),('10it05','V',98,12,8.16666666666667),('10it05','VI',75,12,6.25);

/*Table structure for table `userlog` */

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` varchar(14) default NULL,
  `name` varchar(14) default NULL,
  `pass` varchar(14) default NULL,
  `dept` varchar(14) default NULL,
  `year` varchar(14) default NULL,
  `quest` varchar(30) default NULL,
  `ans` varchar(14) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userlog` */

insert into `userlog` (`id`,`name`,`pass`,`dept`,`year`,`quest`,`ans`) values ('10it10','yogesh','root','it','2010-2013','What is your pets name','yogesh'),('10it09','kumar','it1009','it','2010-2013',NULL,NULL),('11it09','kk','it1109','it','2011-2014',NULL,NULL),('11it08','mm','it1108','it','2011-2014',NULL,NULL),('12it01','aa','it1201','it','2012-2015',NULL,NULL),('12it02','xx','it1202','it','2012-2015',NULL,NULL),('10bca11','kumar','bca1011','bca','2010-2013',NULL,NULL),('10bca15','ww','bca1015','bca','2010-2013',NULL,NULL),('11bca16','rr','bca1116','bca','2011-2014',NULL,NULL),('11bca17','yy','bca1117','bca','2011-2014',NULL,NULL),('12bca05','iii','bca1205','bca','2012-2015',NULL,NULL),('12bca06','pppp','bca1206','bca','2012-2015',NULL,NULL),('10cs20','gggg','cs1020','cs','2010-2013',NULL,NULL),('10cs21','hhh','cs1021','cs','2010-2013',NULL,NULL),('11cs25','lilll','cs1125','cs','2011-2014',NULL,NULL),('11cs26','jjj','cs1126','cs','2011-2014',NULL,NULL),('12cs30','jjj','cs1230','cs','2012-2015',NULL,NULL),('12cs32','fgh','cs1232','cs','2012-2015',NULL,NULL),('10it08','raja','it1008','it','2010-2013',NULL,NULL),('10it07','ram','it1007','it','2010-2013',NULL,NULL),('10it06','john','it1006','it','2010-2013',NULL,NULL),('10it05','vel','it1005','it','2010-2013',NULL,NULL);

SET SQL_MODE=@OLD_SQL_MODE;