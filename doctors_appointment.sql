-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2023 at 11:00 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doctors_appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `appoinment`
--

CREATE TABLE `appoinment` (
  `app_id` int(11) NOT NULL,
  `app_name` varchar(50) NOT NULL,
  `app_email` varchar(50) NOT NULL,
  `app_phone` int(15) NOT NULL,
  `app_doctor` varchar(60) NOT NULL,
  `app_date` varchar(25) NOT NULL,
  `app_time` time NOT NULL,
  `app_msg` varchar(500) NOT NULL,
  `isread` int(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL COMMENT '0-Booked,1-Cancle, 2-Visited',
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appoinment`
--

INSERT INTO `appoinment` (`app_id`, `app_name`, `app_email`, `app_phone`, `app_doctor`, `app_date`, `app_time`, `app_msg`, `isread`, `status`, `timestamp`) VALUES
(1, 'sha', 'aimit2@gmail.com', 1232113434, '2', '2023-03-17', '11:45:00', 'ee', 0, 1, '2023-03-16 15:53:22'),
(2, 'ss', 'doc@gmail.com', 1221122123, '2', '2023-03-23', '11:00:00', 'ww', 0, 1, '2023-03-16 15:54:58'),
(3, 'shahir', 'doc@gmail.com', 1232113434, '2', '2023-03-16', '09:15:00', 'ee', 0, 1, '2023-03-16 15:59:21'),
(5, 'dd', 'doctor.16@gmail.com', 1221122123, '2', '2023-03-16', '09:30:00', 'ee', 0, 2, '2023-03-16 16:01:22'),
(6, 'dd', 'doctor.16@gmail.com', 1221122123, '2', '2023-03-16', '09:30:00', 'ee', 0, 2, '2023-03-16 16:01:25'),
(10, 'Kunhammed', 'doc@gmail.com', 1232112312, '2', '2023-03-16', '03:15:00', 'ghjty', 0, 2, '2023-03-16 16:07:40'),
(11, 'Kunhammed', 'doc@gmail.com', 1232112312, '2', '2023-03-16', '03:15:00', 'ghjty', 0, 2, '2023-03-16 16:17:35'),
(12, 'Kunhammed', 'doc@gmail.com', 1232112312, '2', '2023-03-16', '03:15:00', 'ghjty', 0, 2, '2023-03-16 16:17:53'),
(15, 'x', 'x@gmai.com', 2147483647, '14', '2023-03-22', '11:00:00', 'wewe', 0, 2, '2023-03-16 17:35:38'),
(16, 'Kunhammed xx', 'doc@gmail.com', 1232113434, '14', '2023-03-22', '12:00:00', 'rerr', 0, 2, '2023-03-16 18:25:11'),
(17, 'ss', 'doc@gmail.com', 1232113434, '14', '2023-03-23', '11:00:00', 'xx', 0, 2, '2023-03-16 18:37:19'),
(18, 'mash', 'doc@gmail.com', 1232113434, '14', '2023-03-24', '11:00:00', 'zz', 0, 1, '2023-03-16 19:09:31'),
(20, 'mush', 'shahir@gmail.com', 2147483647, '14', '2023-03-30', '11:00:00', 'xx', 0, 1, '2023-03-16 19:18:00'),
(21, 'ee', 'aimit2@gmail.com', 2147483647, '14', '2023-04-05', '03:15:00', 'wef', 0, 2, '2023-03-16 19:20:09'),
(23, 'shahu', 'sha@gmail.com', 2147483647, '15', '2023-03-25', '11:00:00', 'To show my brain', 0, 2, '2023-03-17 05:53:28'),
(24, 'zubaida', 'zub@gmail.com', 2147483647, '15', '2023-03-18', '11:00:00', 'again brain', 0, 1, '2023-03-17 05:56:39'),
(25, 'Kunhammed', 'x@gmai.com', 1232113434, '2', '2023-03-23', '11:00:00', 'xx', 0, 2, '2023-03-18 17:52:45'),
(26, 'shahir', 'sha@gmail.com', 2147483647, '15', '2023-03-22', '11:00:00', 'hello', 0, 0, '2023-03-21 05:19:49'),
(27, 'shahir3', 'shahir@gmail.com', 2147483647, '16', '2023-03-23', '11:00:00', 'he', 0, 1, '2023-03-21 05:24:49'),
(28, 'chandni', 'doc@gmail.com', 1232113434, '17', '2023-03-22', '11:00:00', 'ee', 0, 2, '2023-03-21 05:31:23'),
(29, 'Kunhammed', 'doctor.16@gmail.com', 2147483647, '17', '2023-03-22', '11:00:00', 'ee', 0, 1, '2023-03-21 05:32:39'),
(30, 'shahir', 'x@gmai.com', 1232113434, '19', '2023-03-23', '11:00:00', 'hello', 0, 0, '2023-03-21 06:44:59'),
(31, 'chandni', 'x@gmai', 1232113434, '17', '2023-03-22', '01:00:00', 'ent', 0, 1, '2023-03-21 06:47:15');

-- --------------------------------------------------------

--
-- Table structure for table `clinics`
--

CREATE TABLE `clinics` (
  `hospital_id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `location` varchar(150) DEFAULT NULL,
  `contact_no` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `clinics`
--

INSERT INTO `clinics` (`hospital_id`, `name`, `address`, `location`, `contact_no`) VALUES
(1, 'Manzoor Hospital', 'Thekkopuram,Kanhangad,Kasargod,Kerala', 'Kanhangad', '0467 2202070');

-- --------------------------------------------------------

--
-- Table structure for table `doctor_list`
--

CREATE TABLE `doctor_list` (
  `did` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(55) NOT NULL,
  `speciality` varchar(1000) NOT NULL,
  `fees` decimal(20,0) NOT NULL,
  `description` varchar(1500) NOT NULL,
  `hospitalID` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctor_list`
--

INSERT INTO `doctor_list` (`did`, `name`, `email`, `speciality`, `fees`, `description`, `hospitalID`) VALUES
(15, 'Dr.John', 'cha@gmail.com', 'Neurologist', '500', 'Neurologist', '1'),
(16, 'Dr.Abraham', 'abru@gmail.com', 'Optomologist', '600', 'Optomologist', '1'),
(17, 'Dr.Kunhammed', 'kunha@gmail.com', 'ENT', '400', 'ENT', '1'),
(18, 'Dr.Michael', 'mich@gmail.com', 'ENT', '600', 'Orthopedics', '1'),
(19, 'Dr.Ravi', 'ravi@gmail.com', 'Urology', '500', 'Urology', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fbid` int(11) NOT NULL,
  `fbname` varchar(50) DEFAULT NULL,
  `fbphone` varchar(15) DEFAULT NULL,
  `fbemail` varchar(50) DEFAULT NULL,
  `fbsubject` varchar(150) DEFAULT NULL,
  `fbmessage` varchar(500) DEFAULT NULL,
  `fbproductid` varchar(50) DEFAULT NULL,
  `fbtime` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fbid`, `fbname`, `fbphone`, `fbemail`, `fbsubject`, `fbmessage`, `fbproductid`, `fbtime`) VALUES
(8, 'Neelesh', '123123123', 'nkp@gmail.com', 'testt', 'ttt', NULL, '2019-04-30 03:44:35'),
(12, 'we', '322', 'dfd@gmail', '232', 'sdw', NULL, '2023-03-16 14:57:44'),
(13, 'Kunhammed', '1232113434', 'doc@gmail.com', 'ent', 'hello', NULL, '2023-03-21 06:50:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_logindetails`
--

CREATE TABLE `tbl_logindetails` (
  `user_id` int(11) NOT NULL,
  `did` int(11) NOT NULL DEFAULT 0,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_pass` varchar(20) DEFAULT NULL,
  `user_type` int(1) DEFAULT NULL COMMENT '1-User, 2-Employee, 3-Admin ',
  `status` int(1) NOT NULL DEFAULT 1 COMMENT '0-disable, 1-active',
  `createDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_logindetails`
--

INSERT INTO `tbl_logindetails` (`user_id`, `did`, `user_name`, `user_email`, `user_pass`, `user_type`, `status`, `createDate`) VALUES
(2, 2, 'renu', 'r@gmail.com', '2222', 2, 1, '2018-04-25 10:03:31'),
(6, 0, 'meenal', 'meena@gmail.com', 'user', 1, 1, '2018-05-02 06:32:55'),
(7, 0, 'tia', 't@gmail.com', '123', 1, 1, '2018-05-04 07:31:30'),
(8, 0, 'Neelesh Kumar Prajapati', 'neelesh1222@gmail.com', '123', 1, 1, '2018-05-12 11:04:59'),
(9, 0, 'Raksh Bobade', 'Nagmadi@gmail.com', '123', 1, 1, '2018-05-19 07:26:25'),
(10, 0, 'Admin', 'admin', 'qwe', 3, 1, '2018-05-19 07:47:19'),
(11, 0, 'Neelesh', 'neelesh3@gmail.com', '123', 1, 1, '2019-08-07 14:17:30'),
(12, 0, 'Neeraj', 'nm@gmail.com', '123', 1, 1, '2019-08-08 12:56:26'),
(13, 8, 'Dr.Shuhshil Jindal', 'shushil@gmail.com', '5555', 2, 1, '2020-02-03 11:43:32'),
(14, 14, 'Dr. Anant Bhargav', 'doctor.14@gmail.com', 'qwe', 2, 1, '2020-02-07 14:39:45'),
(15, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2020-02-08 06:24:39'),
(16, 13, 'Dr. Sanjay Bansal', 'doctor.13@gmail.com', '123', 2, 1, '2020-02-08 06:24:41'),
(17, 14, 'Dr. Anant Bhargav', 'doctor.14@gmail.com', 'qwe', 2, 1, '2020-02-08 06:24:42'),
(18, 15, 'Dr. Vijay Garg', 'doctor.15@gmail.com', 'sha', 2, 1, '2020-02-08 06:24:43'),
(19, 16, 'Dr. Naresh Sharma', 'doctor.16@gmail.com', '123', 2, 1, '2020-02-08 06:24:45'),
(20, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2023-03-16 09:49:14'),
(21, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2023-03-16 09:49:19'),
(22, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2023-03-16 09:49:21'),
(23, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2023-03-16 10:45:33'),
(24, 12, 'Dr. Priya Runwal', 'doctor.12@gmail.com', '123', 2, 1, '2023-03-16 10:45:37'),
(25, 14, 'shahir', 'shahir@gmail.com', 'qwe', 2, 1, '2023-03-16 17:24:26'),
(26, 15, 'chandni', 'cha@gmail.com', 'sha', 2, 1, '2023-03-17 05:48:51'),
(27, 16, 'Dr.Abraham', 'abru@gmail.com', '123', 2, 1, '2023-03-21 05:13:14'),
(28, 17, 'Dr.Kunhammed', 'kunha@gmail.com', '123', 2, 1, '2023-03-21 05:15:57'),
(29, 18, 'Dr.Michael', 'mich@gmail.com', '123', 2, 1, '2023-03-21 05:17:27'),
(30, 19, 'Dr.Ravi', 'ravi@gmail.com', '123', 2, 1, '2023-03-21 05:30:16');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appoinment`
--
ALTER TABLE `appoinment`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `clinics`
--
ALTER TABLE `clinics`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `doctor_list`
--
ALTER TABLE `doctor_list`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fbid`);

--
-- Indexes for table `tbl_logindetails`
--
ALTER TABLE `tbl_logindetails`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appoinment`
--
ALTER TABLE `appoinment`
  MODIFY `app_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `clinics`
--
ALTER TABLE `clinics`
  MODIFY `hospital_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctor_list`
--
ALTER TABLE `doctor_list`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fbid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_logindetails`
--
ALTER TABLE `tbl_logindetails`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
