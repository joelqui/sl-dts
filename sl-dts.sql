-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2018 at 04:36 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sl-dts`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `dept_id` tinyint(4) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  `dept_head` int(11) NOT NULL,
  `dept_abbreviation` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table to hold the data for the Department Class';

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`dept_id`, `dept_name`, `dept_head`, `dept_abbreviation`) VALUES
(1, 'SCHOOL GOVERNANCE AND OPERATIONS DIVISION', 144, 'SGOD_OFFICE'),
(2, 'HUMAN RESOURCE AND DEVELOPMENT UNIT', 134, 'SGOD_HRD'),
(3, 'INFORMATION AND COMMUNICATIONS TECHNOLOGY SERVICES UNIT', 69, 'SDO_ICT'),
(4, 'INFORMATION AND COMMUNICATIONS TECHNOLOGY SERVICES UNIT', 69, 'SDO_ICT');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_trackingnum` int(11) NOT NULL,
  `doc_code` varchar(20) NOT NULL,
  `doc_status` enum('WAITING','IN TRANSIT','CANCELLED','COMPLETED','ON HOLD') NOT NULL,
  `date_started` date NOT NULL,
  `date_completed` date NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `doc_owner` varchar(100) NOT NULL,
  `doc_type` enum('COMM','SUBM','RQST','PROC') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `doc_name`, `doc_trackingnum`, `doc_code`, `doc_status`, `date_started`, `date_completed`, `personnel_id`, `doc_owner`, `doc_type`) VALUES
(1, 'LITTLe PAPU', 186759, 'HGFHGFS', 'IN TRANSIT', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(2, 'LITTLe PAPU', 186759, 'HGFHGFS', 'IN TRANSIT', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(3, 'LITTLe PAPU', 186759, 'HGFHGFS', 'IN TRANSIT', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(4, 'LITTLe PAPU', 186759, 'HGFHGFS', 'IN TRANSIT', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(84, 'LITTLehfhgU', 180915005, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(85, 'LITTLehfhgU', 180915006, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(86, 'LITTLehfhgU', 180915007, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(87, 'LITTLehfhgU', 180915008, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(88, 'LITTLehfhgU', 180915009, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(89, 'LITTLehfhgU', 180915010, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(90, 'LITTLehfhgU', 180915011, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(91, 'Accomplishment report', 180915012, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', ''),
(92, 'Accomplishment report', 180915013, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(93, 'Accomplishment report', 180915014, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(94, 'Accomplishment report', 180915015, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(95, 'Accomplishment report', 180915016, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(96, 'Accomplishment report', 180915017, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(97, 'Accomplishment report', 180915018, 'JKQ-AR', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(98, 'School form 8', 180916001, 'JKQ-SF8', 'IN TRANSIT', '2018-09-16', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(99, 'School form 8', 180917001, 'JKQ-SF8', 'WAITING', '2018-09-17', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(100, 'School form 8', 180917001, 'JKQ-SF8', 'CANCELLED', '2018-09-17', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(114, 'Penis Enlargement Proposal', 180918001, 'DL-PEP', 'WAITING', '2018-09-18', '0000-00-00', 3, 'DYUN LUCENECIO', 'SUBM');

-- --------------------------------------------------------

--
-- Table structure for table `documents_history`
--

CREATE TABLE `documents_history` (
  `dochist_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `dochist_type` enum('RECEIVED AT','FORWARDED TO','REMARKS ADDED AT','FORWARD CANCELLED AT','MARKED COMPLETED AT','DOCUMENT CANCELLED AT') NOT NULL,
  `user_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `dochist_remarks` varchar(100) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_last` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for tracking documents history';

--
-- Dumping data for table `documents_history`
--

INSERT INTO `documents_history` (`dochist_id`, `doc_id`, `dochist_type`, `user_id`, `dept_id`, `dochist_remarks`, `timestamp`, `is_last`) VALUES
(10, 3, 'RECEIVED AT', 2, 22, '', '2018-09-17 11:26:06', 0),
(11, 3, 'FORWARDED TO', 2, 4, '', '2018-09-17 11:26:50', 0),
(12, 3, 'FORWARDED TO', 4, 4, '', '2018-09-17 11:27:30', 0),
(13, 3, 'FORWARDED TO', 4, 7, '', '2018-09-17 11:27:31', 0),
(14, 3, 'FORWARDED TO', 4, 7, '', '2018-09-17 11:28:08', 0),
(15, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 11:45:14', 0),
(16, 3, 'REMARKS ADDED AT', 2, 22, 'GUILTY AS FUCKED', '2018-09-17 11:46:04', 0),
(17, 3, 'REMARKS ADDED AT', 2, 22, 'GUILTY AS FUCKED', '2018-09-17 11:36:12', 0),
(18, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:47:21', 0),
(19, 3, '', 4, 44, '', '2018-09-17 19:47:44', 0),
(20, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:48:26', 0),
(21, 3, '', 4, 44, '', '2018-09-17 19:50:08', 0),
(23, 3, 'RECEIVED AT', 2, 22, '', '2018-09-17 19:51:25', 0),
(24, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:51:26', 0),
(25, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:51:32', 0),
(26, 3, '', 4, 44, '', '2018-09-17 19:51:36', 0),
(27, 3, 'RECEIVED AT', 2, 22, '', '2018-09-17 19:53:54', 0),
(28, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:56:00', 0),
(29, 3, 'FORWARDED TO', 4, 8, '', '2018-09-17 19:56:04', 0),
(30, 3, '', 4, 44, '', '2018-09-17 19:56:10', 0),
(31, 3, 'RECEIVED AT', 2, 22, '', '2018-09-17 19:56:49', 0),
(32, 3, 'REMARKS ADDED AT', 2, 22, 'GUILTY AS FUCKED', '2018-09-17 19:56:32', 0),
(33, 3, '', 4, 44, '', '2018-09-17 19:56:49', 1),
(34, 100, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:07:49', 0),
(35, 100, 'FORWARDED TO', 4, 8, '', '2018-09-18 01:33:19', 0),
(36, 100, 'MARKED COMPLETED AT', 4, 44, '', '2018-09-17 20:17:25', 0),
(37, 101, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:19:22', 1),
(38, 102, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:20:50', 1),
(39, 103, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:31:15', 1),
(40, 104, 'RECEIVED AT', 0, 0, '', '2018-09-18 00:49:48', 1),
(41, 105, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:41', 1),
(42, 106, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:50', 1),
(43, 107, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:56', 1),
(44, 108, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:58:06', 1),
(45, 109, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:59:18', 1),
(46, 110, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:22', 1),
(47, 111, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:25', 1),
(48, 112, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:26', 1),
(49, 113, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:28', 1),
(50, 114, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:12:37', 1),
(51, 100, 'DOCUMENT CANCELLED AT', 4, 44, '', '2018-09-18 01:33:19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `usertype` enum('admin','mgmt','user','guest') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `first_name`, `last_name`, `dept_id`, `password`, `personnel_id`, `usertype`) VALUES
(1, 'a', 'a', 'a', 11, 'a', 1, 'admin'),
(2, 'b', 'b', 'b', 22, 'b', 2, 'mgmt'),
(3, 'c', 'c', 'c', 33, 'c', 3, 'user'),
(4, 'd', 'd', 'd', 44, 'd', 4, 'guest'),
(5, 'd', 'd', 'd', 55, 'd', 4, 'guest'),
(6, 'e', 'e', 'e', 66, 'e', 5, ''),
(7, 'e', 'e', 'e', 5, 'e', 5, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `documents_history`
--
ALTER TABLE `documents_history`
  ADD PRIMARY KEY (`dochist_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `dept_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT for table `documents_history`
--
ALTER TABLE `documents_history`
  MODIFY `dochist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
