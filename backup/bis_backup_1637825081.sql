# ABMS : MySQL database backup
#
# Generated: Thursday 25. November 2021
# Hostname: localhost
# Database: bis
# --------------------------------------------------------


#
# Delete any existing table `tbl_support`
#

DROP TABLE IF EXISTS `tbl_support`;


#
# Table structure of table `tbl_support`
#



CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_support VALUES("4","test","test@gmail.com","09182442701","Barangay Certificate","Hi good afternoon pa follow up po thanks!","2021-11-23 11:44:59");



#
# Delete any existing table `tbl_users`
#

DROP TABLE IF EXISTS `tbl_users`;


#
# Table structure of table `tbl_users`
#



CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

INSERT INTO tbl_users VALUES("11","admin","d033e22ae348aeb5660fc2140aec35850c4da997","administrator","23112021033655jules.jpg","2021-05-03 10:33:03");
INSERT INTO tbl_users VALUES("12","Test","40bd001563085fc35165329ea1ff5c5ecbdbbeef","staff","23112021040756brgy.png","2021-11-23 11:07:56");



#
# Delete any existing table `tblblotter`
#

DROP TABLE IF EXISTS `tblblotter`;


#
# Table structure of table `tblblotter`
#



CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `victim` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

INSERT INTO tblblotter VALUES("10","Tricia Langcauon","Kristel Guinto","Tricia Langcauon","Incident","Pob 1 Catbalogan, Samar","2021-11-25","09:30:00","Kinurot ako sa palengke kasi kulang ako ng binayad.","Scheduled");
INSERT INTO tblblotter VALUES("16","James Flores","Cindy Sudlon","James Flores","Amicable","Pasay City","2021-11-15","23:35:00","Nangurot sa braso.","Scheduled");
INSERT INTO tblblotter VALUES("19","John Lloyd Palma","Paula Lee","John Lloyd Palma","Incident","Pasay City","2021-11-23","11:15:00","Nanghampas ng keyboard kasi madali lang daw yung capstone.","Active");
INSERT INTO tblblotter VALUES("20","Jules Calamiong","John Lloyd Palma","Jules Calamiong","Incident","Pasay City","2021-11-16","08:00:00","Lagi nagpapabuhat sa ML.","Settled");
INSERT INTO tblblotter VALUES("22","Gabriel Galang","James Flores","Gabriel Galang","Amicable","Pasay City","2021-11-20","22:16:00","Ayaw ibalik yung sukli sa tindahan","Active");
INSERT INTO tblblotter VALUES("26","Gabriel Galang","Kristel Guinto","Gabriel Galang","Amicable","Pasay City","2021-11-20","13:09:00","Magkapatid sila tapos di nila alam.","Settled");



#
# Delete any existing table `tblbrgy_info`
#

DROP TABLE IF EXISTS `tblbrgy_info`;


#
# Table structure of table `tblbrgy_info`
#



CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblbrgy_info VALUES("1","","Villamor Airbase","BARANGAY 183","09182442701","Barangay 183 is a barangay in the city of Pasay. Its population as determined by the 2020 Census was 37,372. This represented 8.48% of the total population of Pasay.","23112021033338brgy.png","23112021033338brgy.png","23112021033338brgy.png");



#
# Delete any existing table `tblchairmanship`
#

DROP TABLE IF EXISTS `tblchairmanship`;


#
# Table structure of table `tblchairmanship`
#



CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblchairmanship VALUES("2","Presiding Officer");
INSERT INTO tblchairmanship VALUES("3","Committee on Appropriation");
INSERT INTO tblchairmanship VALUES("4","Committee on Peace & Order");
INSERT INTO tblchairmanship VALUES("5","Committee on Health");
INSERT INTO tblchairmanship VALUES("6","Committee on Education");
INSERT INTO tblchairmanship VALUES("7","Committee on Rules");
INSERT INTO tblchairmanship VALUES("8","Committee on Infra");
INSERT INTO tblchairmanship VALUES("9","Committee on Solid Waste");
INSERT INTO tblchairmanship VALUES("10","Committee on Sports");
INSERT INTO tblchairmanship VALUES("11","No Chairmanship");



#
# Delete any existing table `tblofficials`
#

DROP TABLE IF EXISTS `tblofficials`;


#
# Table structure of table `tblofficials`
#



CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblofficials VALUES("1","Juan Dela Cruz","2","4","2021-04-29","2021-05-01","Active");
INSERT INTO tblofficials VALUES("4","Juan Dela Cruz","3","7","2021-04-03","2021-04-24","Active");
INSERT INTO tblofficials VALUES("5","Juan Dela Cruz","4","8","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("6","Juan Dela Cruz","5","9","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("7","Juan Dela Cruz","6","10","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("8","Juan Dela Cruz","7","11","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("9","Juan Dela Cruz","8","12","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("10","Juan Dela Cruz","9","13","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("11","Juan Dela Cruz","10","14","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("12","Juan Dela Cruz","11","15","2021-04-03","2021-04-03","Active");
INSERT INTO tblofficials VALUES("13","Juan Dela Cruz","11","16","2021-04-03","2021-04-03","Active");



#
# Delete any existing table `tblpayments`
#

DROP TABLE IF EXISTS `tblpayments`;


#
# Table structure of table `tblpayments`
#



CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpayments VALUES("11","Business Permit Payment","5000.00","2021-11-23","admin"," Jules Lemonade");
INSERT INTO tblpayments VALUES("12","Barangay Clearance Payment","50.00","2021-11-23","admin"," Kristel  Gregorio  Guinto");
INSERT INTO tblpayments VALUES("13","Certificate of Indigency Payment","50.00","2021-11-23","admin"," Tricia Marie Co  Langcauon");
INSERT INTO tblpayments VALUES("14","Business Permit Payment","5000.00","2021-11-23","admin"," Palma Paloma");
INSERT INTO tblpayments VALUES("15","Barangay Clearance Payment","50.00","2021-11-23","admin"," Cindy  N  Sudlon");
INSERT INTO tblpayments VALUES("16","Business Permit Payment","5000.00","2021-11-24","admin"," James Kwek Kwekan");
INSERT INTO tblpayments VALUES("17","Business Permit Payment","5000.00","2021-11-25","admin"," Test");



#
# Delete any existing table `tblpermit`
#

DROP TABLE IF EXISTS `tblpermit`;


#
# Table structure of table `tblpermit`
#



CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpermit VALUES("7","Palma Paloma","John Lloyd Palma","Pink Paula Lee","Bar","2021-11-23");
INSERT INTO tblpermit VALUES("8","Jules Lemonade","Jules Calamiong","","Lemonade Station","2021-11-23");
INSERT INTO tblpermit VALUES("9","James Kwek Kwekan","James Flores","","Store","2021-11-24");
INSERT INTO tblpermit VALUES("10","test","test","test","store","2021-11-25");



#
# Delete any existing table `tblposition`
#

DROP TABLE IF EXISTS `tblposition`;


#
# Table structure of table `tblposition`
#



CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblposition VALUES("4","Captain","1");
INSERT INTO tblposition VALUES("7","Councilor 1","2");
INSERT INTO tblposition VALUES("8","Councilor 2","3");
INSERT INTO tblposition VALUES("9","Councilor 3","4");
INSERT INTO tblposition VALUES("10","Councilor 4","5");
INSERT INTO tblposition VALUES("11","Councilor 5","6");
INSERT INTO tblposition VALUES("12","Councilor 6","7");
INSERT INTO tblposition VALUES("13","Councilor 7","8");
INSERT INTO tblposition VALUES("14","SK Chairman","9");
INSERT INTO tblposition VALUES("15","Secretary","10");
INSERT INTO tblposition VALUES("16","Treasurer","11");



#
# Delete any existing table `tblprecinct`
#

DROP TABLE IF EXISTS `tblprecinct`;


#
# Table structure of table `tblprecinct`
#



CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




#
# Delete any existing table `tblpurok`
#

DROP TABLE IF EXISTS `tblpurok`;


#
# Table structure of table `tblpurok`
#



CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

INSERT INTO tblpurok VALUES("2","Zone 1","Details");
INSERT INTO tblpurok VALUES("13","Zone 2","Details");
INSERT INTO tblpurok VALUES("14","Zone 3","Details");
INSERT INTO tblpurok VALUES("15","Zone 4","Details");
INSERT INTO tblpurok VALUES("16","Zone 5","Details");
INSERT INTO tblpurok VALUES("17","Zone 6","Details");
INSERT INTO tblpurok VALUES("18","Zone 7","Details");
INSERT INTO tblpurok VALUES("19","Zone 8","Details");
INSERT INTO tblpurok VALUES("20","Zone 9","Details");



#
# Delete any existing table `tblresident`
#

DROP TABLE IF EXISTS `tblresident`;


#
# Table structure of table `tblresident`
#



CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `national_id` varchar(100) DEFAULT NULL,
  `citizenship` varchar(50) DEFAULT NULL,
  `picture` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `firstname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `middlename` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `lastname` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `alias` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthplace` varchar(80) CHARACTER SET utf8mb4 DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `civilstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `gender` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `purok` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `voterstatus` varchar(20) CHARACTER SET utf8mb4 DEFAULT NULL,
  `identified_as` varchar(30) CHARACTER SET utf8mb4 DEFAULT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  `occupation` varchar(100) DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 DEFAULT NULL,
  `resident_type` int(11) DEFAULT 1,
  `remarks` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=188 DEFAULT CHARSET=latin1;

INSERT INTO tblresident VALUES("181","12345","Filipino","23112021033831james.jpg","James Edward","Alub","Flores","James","San Francisco, Quezon","1999-09-25","22","Single","Male","Zone 3","Yes","Positive","09292447823","floresjames786@gmail.com","Student","Purok Pagkakaisa, Brgy. Cotta, Lucena City","1","");
INSERT INTO tblresident VALUES("182","123456","Filipino","23112021034345gab.png","Gabriel","Guinto","Galang","Gab","Cavite","1999-09-03","22","Single","Male","Zone 2","No","Positive","09652117917 ","Gabrielgalang03@gmail.com","Student","PHASE7B BLOCK14 LOT6 ELLISTON PLACE Camachile 2 General Trias 4107 CAVITE","1","");
INSERT INTO tblresident VALUES("183","1234567","Filipino","23112021034615tricia.jpg","Tricia Marie","Co"," Langcauon","Tricia","PAFGH","2000-03-03","21","Single","Female","Zone 7","Yes","Positive"," 09398744069","tmclangcauon@gmail.com","Student","P57 A - 15 17th 2nd St. VAB Pasay City","1","");
INSERT INTO tblresident VALUES("184","12345678","Filipino","23112021035205pink.jpg","Pink Paula "," Cinco"," Lee","Pink","Pasay City","1999-05-30","22","Single","Female","Zone 6","No",""," 09356982043","pinkpaulalee.ppl@gmail.com","Student","507 Edsa Pasay City ","1","");
INSERT INTO tblresident VALUES("185","123456789","Filipino","23112021035643cindy.jpg","Cindy ","N"," Sudlon","Cindy","Cavite City","1990-02-27","31","Married","Female","Zone 4","Yes","Positive","09474557461","sudlondy@gmail.com","Student","10-19th St. Brgy.183 Villamor, Pasay City","1","");
INSERT INTO tblresident VALUES("186","1234567890","Filipino","23112021040015kristel.jpg","Kristel ","Gregorio"," Guinto","Kristel ","Cavite City","1996-05-27","25","Single","Female","Zone 1","Yes","Positive","09959873095","kguinto18@gmail.com","Student","165 Bagong Pook St. Ligtong 4 Rosario Cavite","1","");
INSERT INTO tblresident VALUES("187","12345678900","Filipino","23112021040316palma.jpg","John Lloyd ","D."," Palma","Jelo","Batangas","2000-08-02","21","Single","Male","Zone 5","Yes","Positive","09502831575","johnlloydpalma1920@gmail.com","Student","Sampaguita hills UPS 4 Barangay Marcelo Green Paranaque City","1","");

