-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 14, 2018 at 01:33 AM
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
  `doc_type` enum('Communication','Submission','Request','For Processing') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `doc_name`, `doc_trackingnum`, `doc_code`, `doc_status`, `date_started`, `date_completed`, `personnel_id`, `doc_owner`, `doc_type`) VALUES
(1, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', ''),
(2, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', 'Communication'),
(3, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', 'Communication'),
(4, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', 'Communication'),
(5, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '0000-00-00', 2, 'JAW CYDA', 'Communication'),
(6, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '2018-01-01', '2018-02-02', 2, 'JAW CYDA', 'Communication'),
(7, 'LITTLe PAPU', 186759, 'HGFHGFS', 'In Transit', '0000-00-00', '2018-02-02', 2, 'JAW CYDA', 'Communication'),
(8, 'LITTLehfhgU', 1823329, 'hgfhfghfgh', 'Completed', '2018-01-01', '2018-02-02', 3, 'JUDE lAW', 'Request');

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
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
