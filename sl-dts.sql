-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2018 at 08:41 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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
(2, 'HUMAN RESOURCE AND DEVELOPMENT UNIT', 134, 'SGOD_HRD');

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

CREATE TABLE `documents` (
  `doc_id` int(11) NOT NULL,
  `doc_name` varchar(100) NOT NULL,
  `doc_trackingnum` int(11) NOT NULL,
  `doc_code` varchar(20) NOT NULL,
  `doc_status` enum('In Transit','Canceled','Completed','On Hold') NOT NULL,
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
(1, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(2, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(3, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(4, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(5, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(6, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '2018-01-01', '2018-02-02', 2, 'JAW CYDA', ''),
(7, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '2018-02-02', 2, 'JAW CYDA', ''),
(80, 'LITTLehfhgU', 180915001, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(81, 'LITTLehfhgU', 180915002, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(82, 'LITTLehfhgU', 180915003, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(83, 'LITTLehfhgU', 180915004, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(84, 'LITTLehfhgU', 180915005, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(85, 'LITTLehfhgU', 180915006, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(86, 'LITTLehfhgU', 180915007, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(87, 'LITTLehfhgU', 180915008, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(88, 'LITTLehfhgU', 180915009, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(89, 'LITTLehfhgU', 180915010, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(90, 'LITTLehfhgU', 180915011, 'hgfhfghfgh', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(91, 'Accomplishment report', 180915012, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', ''),
(92, 'Accomplishment report', 180915013, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(93, 'Accomplishment report', 180915014, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(94, 'Accomplishment report', 180915015, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(95, 'Accomplishment report', 180915016, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(96, 'Accomplishment report', 180915017, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(97, 'Accomplishment report', 180915018, 'JKQ-AR', 'In Transit', '2018-09-15', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST');

-- --------------------------------------------------------

--
-- Table structure for table `documents_history`
--

CREATE TABLE `documents_history` (
  `dochist_id` int(11) NOT NULL,
  `doc_id` int(11) NOT NULL,
  `dochist_type` enum('RECEIVED AT','FORWARDED TO','REMARKS ADDED AT','FORWARD CANCELED AT','MARKED COMPLETED AT','DOCUMENT CANCELED AT') NOT NULL,
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
(1, 0, 'FORWARDED TO', 3, 4, '', '2018-09-15 19:55:19', 0),
(2, 0, 'FORWARDED TO', 3, 4, '', '2018-09-15 19:56:44', 0),
(3, 0, 'FORWARDED TO', 3, 4, '', '2018-09-15 19:56:47', 0),
(4, 0, 'FORWARDED TO', 3, 4, '', '2018-09-15 19:57:19', 0),
(5, 0, 'FORWARDED TO', 3, 4, '', '2018-09-15 19:57:19', 0),
(6, 0, 'FORWARDED TO', 3, 4, 'FUCKING SHIT', '2018-09-15 19:57:33', 0),
(7, 0, 'FORWARDED TO', 3, 4, 'FUCKING SHIT', '2018-09-15 20:01:23', 0),
(8, 0, 'FORWARDED TO', 3, 4, 'FUCKING SHIT', '2018-09-15 20:01:54', 1);

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
(1, 'a', 'a', 'a', 1, 'a', 1, 'admin'),
(2, 'b', 'b', 'b', 2, 'b', 2, 'mgmt'),
(3, 'c', 'c', 'c', 3, 'c', 3, 'user'),
(4, 'd', 'd', 'd', 4, 'd', 4, 'guest'),
(5, 'd', 'd', 'd', 4, 'd', 4, 'guest');

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
  MODIFY `dept_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `documents_history`
--
ALTER TABLE `documents_history`
  MODIFY `dochist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
