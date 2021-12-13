-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 04:49 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblblotter`
--

CREATE TABLE `tblblotter` (
  `id` int(11) NOT NULL,
  `complainant` varchar(100) DEFAULT NULL,
  `respondent` varchar(100) DEFAULT NULL,
  `victim` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `details` varchar(10000) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblblotter`
--

INSERT INTO `tblblotter` (`id`, `complainant`, `respondent`, `victim`, `type`, `location`, `date`, `time`, `details`, `status`) VALUES
(10, 'Tricia Langcauon', 'Kristel Guinto', 'Tricia Langcauon', 'Incident', 'Pob 1 Catbalogan, Samar', '2021-11-25', '09:30:00', 'Kinurot ako sa palengke kasi kulang ako ng binayad.', 'Scheduled'),
(16, 'James Flores', 'Cindy Sudlon', 'James Flores', 'Amicable', 'Pasay City', '2021-11-15', '23:35:00', 'Nangurot sa braso.', 'Scheduled'),
(19, 'John Lloyd Palma', 'Paula Lee', 'John Lloyd Palma', 'Incident', 'Pasay City', '2021-11-23', '11:15:00', 'Nanghampas ng keyboard kasi madali lang daw yung capstone.', 'Active'),
(20, 'Jules Calamiong', 'John Lloyd Palma', 'Jules Calamiong', 'Incident', 'Pasay City', '2021-11-16', '08:00:00', 'Lagi nagpapabuhat sa ML.', 'Settled'),
(22, 'Gabriel Galang', 'James Flores', 'Gabriel Galang', 'Amicable', 'Pasay City', '2021-11-20', '22:16:00', 'Ayaw ibalik yung sukli sa tindahan', 'Active'),
(26, 'Gabriel Galang', 'Kristel Guinto', 'Gabriel Galang', 'Amicable', 'Pasay City', '2021-11-20', '13:09:00', 'Magkapatid sila tapos di nila alam.', 'Settled');

-- --------------------------------------------------------

--
-- Table structure for table `tblbrgy_info`
--

CREATE TABLE `tblbrgy_info` (
  `id` int(11) NOT NULL,
  `province` varchar(100) DEFAULT NULL,
  `town` varchar(100) DEFAULT NULL,
  `brgy_name` varchar(50) DEFAULT NULL,
  `number` varchar(50) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `image` varchar(200) DEFAULT NULL,
  `city_logo` varchar(100) DEFAULT NULL,
  `brgy_logo` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbrgy_info`
--

INSERT INTO `tblbrgy_info` (`id`, `province`, `town`, `brgy_name`, `number`, `text`, `image`, `city_logo`, `brgy_logo`) VALUES
(1, '', 'Villamor Airbase', 'BARANGAY 183', '09182442701', 'Barangay 183 is a barangay in the city of Pasay. Its population as determined by the 2020 Census was 37,372. This represented 8.48% of the total population of Pasay.', '23112021033338brgy.png', '23112021033338brgy.png', '23112021033338brgy.png');

-- --------------------------------------------------------

--
-- Table structure for table `tblchairmanship`
--

CREATE TABLE `tblchairmanship` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblchairmanship`
--

INSERT INTO `tblchairmanship` (`id`, `title`) VALUES
(2, 'Presiding Officer'),
(3, 'Committee on Appropriation'),
(4, 'Committee on Peace & Order'),
(5, 'Committee on Health'),
(6, 'Committee on Education'),
(7, 'Committee on Rules'),
(8, 'Committee on Infra'),
(9, 'Committee on Solid Waste'),
(10, 'Committee on Sports'),
(11, 'No Chairmanship');

-- --------------------------------------------------------

--
-- Table structure for table `tblofficials`
--

CREATE TABLE `tblofficials` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `chairmanship` varchar(50) DEFAULT NULL,
  `position` varchar(50) DEFAULT NULL,
  `termstart` date DEFAULT NULL,
  `termend` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblofficials`
--

INSERT INTO `tblofficials` (`id`, `name`, `chairmanship`, `position`, `termstart`, `termend`, `status`) VALUES
(1, 'Juan Dela Cruz', '2', '4', '2021-04-29', '2021-05-01', 'Active'),
(4, 'Juan Dela Cruz', '3', '7', '2021-04-03', '2021-04-24', 'Active'),
(5, 'Juan Dela Cruz', '4', '8', '2021-04-03', '2021-04-03', 'Active'),
(6, 'Juan Dela Cruz', '5', '9', '2021-04-03', '2021-04-03', 'Active'),
(7, 'Juan Dela Cruz', '6', '10', '2021-04-03', '2021-04-03', 'Active'),
(8, 'Juan Dela Cruz', '7', '11', '2021-04-03', '2021-04-03', 'Active'),
(9, 'Juan Dela Cruz', '8', '12', '2021-04-03', '2021-04-03', 'Active'),
(10, 'Juan Dela Cruz', '9', '13', '2021-04-03', '2021-04-03', 'Active'),
(11, 'Juan Dela Cruz', '10', '14', '2021-04-03', '2021-04-03', 'Active'),
(12, 'Juan Dela Cruz', '11', '15', '2021-04-03', '2021-04-03', 'Active'),
(13, 'Juan Dela Cruz', '11', '16', '2021-04-03', '2021-04-03', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayments`
--

CREATE TABLE `tblpayments` (
  `id` int(11) NOT NULL,
  `details` varchar(100) DEFAULT NULL,
  `amounts` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpayments`
--

INSERT INTO `tblpayments` (`id`, `details`, `amounts`, `date`, `user`, `name`) VALUES
(11, 'Business Permit Payment', '5000.00', '2021-11-23', 'admin', ' Jules Lemonade'),
(12, 'Barangay Clearance Payment', '50.00', '2021-11-23', 'admin', ' Kristel  Gregorio  Guinto'),
(13, 'Certificate of Indigency Payment', '50.00', '2021-11-23', 'admin', ' Tricia Marie Co  Langcauon'),
(14, 'Business Permit Payment', '5000.00', '2021-11-23', 'admin', ' Palma Paloma'),
(15, 'Barangay Clearance Payment', '50.00', '2021-11-23', 'admin', ' Cindy  N  Sudlon');

-- --------------------------------------------------------

--
-- Table structure for table `tblpermit`
--

CREATE TABLE `tblpermit` (
  `id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `owner1` varchar(200) DEFAULT NULL,
  `owner2` varchar(80) DEFAULT NULL,
  `nature` varchar(220) DEFAULT NULL,
  `applied` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpermit`
--

INSERT INTO `tblpermit` (`id`, `name`, `owner1`, `owner2`, `nature`, `applied`) VALUES
(7, 'Palma Paloma', 'John Lloyd Palma', 'Pink Paula Lee', 'Bar', '2021-11-23'),
(8, 'Jules Lemonade', 'Jules Calamiong', '', 'Lemonade Station', '2021-11-23');

-- --------------------------------------------------------

--
-- Table structure for table `tblposition`
--

CREATE TABLE `tblposition` (
  `id` int(11) NOT NULL,
  `position` varchar(50) DEFAULT NULL,
  `order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblposition`
--

INSERT INTO `tblposition` (`id`, `position`, `order`) VALUES
(4, 'Captain', 1),
(7, 'Councilor 1', 2),
(8, 'Councilor 2', 3),
(9, 'Councilor 3', 4),
(10, 'Councilor 4', 5),
(11, 'Councilor 5', 6),
(12, 'Councilor 6', 7),
(13, 'Councilor 7', 8),
(14, 'SK Chairman', 9),
(15, 'Secretary', 10),
(16, 'Treasurer', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tblprecinct`
--

CREATE TABLE `tblprecinct` (
  `id` int(11) NOT NULL,
  `precinct` varchar(100) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tblpurok`
--

CREATE TABLE `tblpurok` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpurok`
--

INSERT INTO `tblpurok` (`id`, `name`, `details`) VALUES
(1, 'Purok 1', 'Details'),
(2, 'Purok 2', 'Details'),
(3, 'Purok 3', 'Details'),
(4, 'Purok 4', 'Details'),
(5, 'Purok 5', 'Details'),
(6, 'Purok 6', 'Details'),
(7, 'Purok 7', 'Details'),
(8, 'Purok 7', 'Details');

-- --------------------------------------------------------

--
-- Table structure for table `tblresident`
--

CREATE TABLE `tblresident` (
  `id` int(11) NOT NULL,
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
  `remarks` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblresident`
--

INSERT INTO `tblresident` (`id`, `national_id`, `citizenship`, `picture`, `firstname`, `middlename`, `lastname`, `alias`, `birthplace`, `birthdate`, `age`, `civilstatus`, `gender`, `purok`, `voterstatus`, `identified_as`, `phone`, `email`, `occupation`, `address`, `resident_type`, `remarks`) VALUES
(181, '12345', 'Filipino', '23112021033831james.jpg', 'James Edward', 'Alub', 'Flores', 'James', 'San Francisco, Quezon', '1999-09-25', 22, 'Single', 'Male', 'Purok 1', 'Yes', 'Positive', '09292447823', 'floresjames786@gmail.com', 'Student', 'Purok Pagkakaisa, Brgy. Cotta, Lucena City', 1, NULL),
(182, '123456', 'Filipino', '23112021034345gab.png', 'Gabriel', 'Guinto', 'Galang', 'Gab', 'Cavite', '1999-09-03', 22, 'Single', 'Male', 'Purok 2', 'No', 'Positive', '09652117917 ', 'Gabrielgalang03@gmail.com', 'Student', 'PHASE7B BLOCK14 LOT6 ELLISTON PLACE Camachile 2 General Trias 4107 CAVITE', 1, NULL),
(183, '1234567', 'Filipino', '23112021034615tricia.jpg', 'Tricia Marie', 'Co', ' Langcauon', 'Tricia', 'PAFGH', '2000-03-03', 21, 'Single', 'Female', 'Purok 3', 'Yes', 'Positive', ' 09398744069', 'tmclangcauon@gmail.com', 'Student', 'P57 A - 15 17th 2nd St. VAB Pasay City', 1, NULL),
(184, '12345678', 'Filipino', '23112021035205pink.jpg', 'Pink Paula ', ' Cinco', ' Lee', 'Pink', 'Pasay City', '1999-05-30', 22, 'Single', 'Female', 'Purok 4', 'No', '', ' 09356982043', 'pinkpaulalee.ppl@gmail.com', 'Student', '507 Edsa Pasay City ', 1, NULL),
(185, '123456789', 'Filipino', '23112021035643cindy.jpg', 'Cindy ', 'N', ' Sudlon', 'Cindy', 'Cavite City', '1990-02-27', 31, 'Married', 'Female', 'Purok 5', 'Yes', 'Positive', '09474557461', 'sudlondy@gmail.com', 'Student', '10-19th St. Brgy.183 Villamor, Pasay City', 1, NULL),
(186, '1234567890', 'Filipino', '23112021040015kristel.jpg', 'Kristel ', 'Gregorio', ' Guinto', 'Kristel ', 'Cavite City', '1996-05-27', 25, 'Single', 'Female', 'Purok 6', 'Yes', 'Positive', '09959873095', 'kguinto18@gmail.com', 'Student', '165 Bagong Pook St. Ligtong 4 Rosario Cavite', 1, ''),
(187, '12345678900', 'Filipino', '23112021040316palma.jpg', 'John Lloyd ', 'D.', ' Palma', 'Jelo', 'Batangas', '2000-08-02', 21, 'Single', 'Male', 'Purok 7', 'Yes', 'Positive', '09502831575', 'johnlloydpalma1920@gmail.com', 'Student', 'Sampaguita hills UPS 4 Barangay Marcelo Green Paranaque City', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_support`
--

CREATE TABLE `tbl_support` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `number` varchar(20) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_support`
--

INSERT INTO `tbl_support` (`id`, `name`, `email`, `number`, `subject`, `message`, `date`) VALUES
(4, 'test', 'test@gmail.com', '09182442701', 'Barangay Certificate', 'Hi good afternoon pa follow up po thanks!', '2021-11-23 03:44:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `user_type` varchar(20) DEFAULT NULL,
  `avatar` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `username`, `password`, `user_type`, `avatar`, `created_at`) VALUES
(11, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'administrator', '23112021033655jules.jpg', '2021-05-03 02:33:03'),
(12, 'Test', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'staff', '23112021040756brgy.png', '2021-11-23 03:07:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblblotter`
--
ALTER TABLE `tblblotter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbrgy_info`
--
ALTER TABLE `tblbrgy_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblchairmanship`
--
ALTER TABLE `tblchairmanship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblofficials`
--
ALTER TABLE `tblofficials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayments`
--
ALTER TABLE `tblpayments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpermit`
--
ALTER TABLE `tblpermit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblposition`
--
ALTER TABLE `tblposition`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblprecinct`
--
ALTER TABLE `tblprecinct`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpurok`
--
ALTER TABLE `tblpurok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblresident`
--
ALTER TABLE `tblresident`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_support`
--
ALTER TABLE `tbl_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblblotter`
--
ALTER TABLE `tblblotter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblbrgy_info`
--
ALTER TABLE `tblbrgy_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblchairmanship`
--
ALTER TABLE `tblchairmanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblofficials`
--
ALTER TABLE `tblofficials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblpayments`
--
ALTER TABLE `tblpayments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblpermit`
--
ALTER TABLE `tblpermit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblposition`
--
ALTER TABLE `tblposition`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblprecinct`
--
ALTER TABLE `tblprecinct`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpurok`
--
ALTER TABLE `tblpurok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblresident`
--
ALTER TABLE `tblresident`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=188;

--
-- AUTO_INCREMENT for table `tbl_support`
--
ALTER TABLE `tbl_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
