-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2018 at 10:15 AM
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
(66, 'BIDS AND AWARDS COMMITTEE OFFICE', 0, 'BAC-OFFICE'),
(67, 'CURRICULUM IMPLEMENTATION DIVISION-ALTERNATIVE LEARNING SYSTEM', 0, 'CID-ALS'),
(68, 'CURRICULUM IMPLEMENTATION DIVISION-LIBRARY HUB', 0, 'CID-LIBHUB'),
(69, 'CURRICULUM IMPLEMENTATION DIVISION-LEARNING RESOURCE', 0, 'CID-LR'),
(70, 'CURRICULUM IMPLEMENTATION DIVISION OFFICE', 0, 'CID OFFICE'),
(71, 'COMMISSION ON AUDIT OFFICE', 0, 'COA OFFICE'),
(72, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-ACCOUNTING', 0, 'OSDS-ACCNTNG'),
(73, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-ADMINISTRATIVE', 0, 'OSDS-ADMIN'),
(74, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-ASSISTANT SCHOOLS DIVISION SUPERINTENDENT', 0, 'OSDS-ASDS'),
(75, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-BUDGET', 0, 'OSDS-BUDGET'),
(76, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-CASHIER', 0, 'OSDS-CASHIER'),
(77, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-INFORMATION AND COMMUNICATION  TECHNOLOGY', 0, 'OSDS-ICT'),
(78, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-LEGAL', 0, 'OSDS-LEGAL'),
(79, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT OFFICE', 0, 'OSDS OFFICE'),
(80, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-RECORDS', 0, 'OSDS-RECORDS'),
(81, 'OFFICE OF THE SCHOOLS DIVISION SUPERINTENDENT-SUPPLY', 0, 'OSDS-SUPPLY'),
(82, 'SCHOOL GOVERNANCE OPERATION DIVISION-HUMAN RESOURCE AND DEVELOPMENT', 0, 'SGOD-HR&D'),
(83, 'SCHOOL GOVERNANCE OPERATION DIVISION-MONITORING AND EVALUATION', 0, 'SGOD-M&E'),
(84, 'SCHOOL GOVERNANCE OPERATION DIVISION-MEDICAL', 0, 'SGOD-MEDICAL'),
(85, 'SCHOOL GOVERNANCE OPERATION DIVISION', 0, 'SGOD OFFICE'),
(86, 'SCHOOL GOVERNANCE OPERATION DIVISION-PLANNING AND RESEARCH', 0, 'SGOD-P&R'),
(87, 'SCHOOL GOVERNANCE OPERATION DIVISION-SOCIAL MOBILIZATION', 0, 'SGOD-SOCMOB');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(2) NOT NULL,
  `district_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`) VALUES
(1, 'Anahawan'),
(2, 'Bontoc I'),
(3, 'Bontoc II'),
(4, 'Hinunangan I'),
(5, 'Hinunangan II'),
(6, 'Hinundayan'),
(7, 'Libagon'),
(8, 'Liloan I'),
(9, 'Liloan II'),
(10, 'Limasawa'),
(11, 'Macrohon'),
(12, 'Malitbog'),
(13, 'Padre Burgos'),
(14, 'Pintuyan'),
(15, 'Saint Bernard I'),
(16, 'Saint Bernard II'),
(17, 'San Francisco'),
(18, 'San Juan'),
(19, 'San Ricardo'),
(20, 'Silago'),
(21, 'Sogod I'),
(22, 'Sogod II'),
(23, 'Tomas Oppus');

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
  `doc_type` enum('RQST','PROC','SUBM','COMM') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `documents`
--

INSERT INTO `documents` (`doc_id`, `doc_name`, `doc_trackingnum`, `doc_code`, `doc_status`, `date_started`, `date_completed`, `personnel_id`, `doc_owner`, `doc_type`) VALUES
(5, 'LITTLehfhgU', 180915007, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(85, 'LITTLehfhgU', 180915006, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
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
(100, 'School form 8', 180917001, 'JKQ-SF8', 'IN TRANSIT', '2018-09-17', '0000-00-00', 3, 'JOEL KEE QUILANTANG', 'RQST'),
(101, 'LITTLehfhgU', 180915005, 'hgfhfghfgh', 'IN TRANSIT', '2018-09-15', '0000-00-00', 3, 'JUDE lAW', ''),
(121, 'SALARY CLAIM', 181011007, 'L-SC', 'CANCELLED', '2018-10-11', '2018-11-07', 0, 'LIMASAWA', 'SUBM'),
(122, 'SALARY CLAIM3', 181011008, 'HI-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'HINUNANGAN I', 'COMM'),
(123, 'SALARY CLAIM', 181011009, 'A-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'ANAHAWAN', 'COMM'),
(124, 'SALARY CLAIM', 181011010, 'A-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'ANAHAWAN', 'RQST'),
(125, 'SALARY CLAIM', 181011011, 'A-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'ANAHAWAN', 'PROC'),
(126, 'SALARY CLAIM', 181011012, 'A-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'ANAHAWAN', 'SUBM'),
(127, 'SALARY CLAIM', 181011013, 'A-SC', 'IN TRANSIT', '2018-10-11', '0000-00-00', 0, 'ANAHAWAN', 'COMM'),
(132, '234324', 181011018, '-2', 'WAITING', '2018-10-11', '0000-00-00', 0, '', 'SUBM'),
(133, '234324', 181011019, 'BI-2', 'WAITING', '2018-10-11', '0000-00-00', 0, 'BONTOC I', 'SUBM'),
(134, 'FFESFE', 181011020, 'S-F', 'WAITING', '2018-10-11', '0000-00-00', 0, 'SCHOOL2', 'PROC'),
(135, 'FSDFSDFS', 181011021, 'S-F', 'WAITING', '2018-10-11', '0000-00-00', 0, 'SCHOOL2', 'SUBM'),
(136, '324', 181012001, 'S-3', 'WAITING', '2018-10-12', '0000-00-00', 0, 'SCHOOL3', 'SUBM'),
(137, 'JOERE OERERE EFGRDGR LFESFEEF', 181013001, 'BI-JOEL', 'WAITING', '2018-10-13', '0000-00-00', 0, 'BONTOC I', 'COMM'),
(141, 'JFESFE OERFSEFR EFRSFRS LFESFEFES', 181013005, 'BI-JOEL', 'CANCELLED', '2018-10-13', '2018-11-01', 0, 'BONTOC I', 'SUBM'),
(142, 'T E S T I N G', 181021001, 'ART-TESTING', 'COMPLETED', '2018-10-21', '2018-10-21', 0, 'A R T', 'SUBM'),
(143, 'AAA', 181031001, 'A-A', 'IN TRANSIT', '2018-10-31', '0000-00-00', 0, 'AAA', 'SUBM'),
(144, 'BBB', 181031002, 'B-B', 'WAITING', '2018-10-31', '0000-00-00', 0, 'BBB', 'RQST'),
(145, 'C C C', 181031003, 'C-CCC', 'WAITING', '2018-10-31', '0000-00-00', 0, 'C', 'PROC'),
(146, 'D', 181031004, 'D-D', 'WAITING', '2018-10-31', '0000-00-00', 0, 'D', 'COMM'),
(147, 'FESFES', 181031005, 'N-F', 'WAITING', '2018-10-31', '0000-00-00', 0, 'NO', 'RQST'),
(148, 'FESF', 181031006, 'D-F', 'COMPLETED', '2018-10-31', '2018-11-01', 0, 'DW', 'PROC'),
(151, 'SCHOOL FORM 7', 181101001, 'S-SF7', 'WAITING', '2018-11-01', '0000-00-00', 1, 'SCHOOL2', 'SUBM'),
(152, 'A Ã± Ã‘ DS', 181104001, 'BI-AÃÃD', 'WAITING', '2018-11-04', '0000-00-00', 1, 'BONTOC I', 'PROC'),
(153, 'THIS IS IT', 181105001, 'HW-TII', 'WAITING', '2018-11-05', '0000-00-00', 1, 'HINUNANGAN WCS', 'PROC'),
(154, 'SCHOOL FORM 7', 181105002, 'SNN-SF7', 'WAITING', '2018-11-05', '0000-00-00', 1, 'STO. NIÃ±O NHS', 'SUBM'),
(155, 'NOVEMBER 2018 MOOE', 181105003, 'AE-N2M', 'WAITING', '2018-11-05', '0000-00-00', 1, 'AMBAO ES', 'PROC'),
(156, 'MEMORANDUM OF AGREEMENT (AUTOMOTIVE-OJT)', 181106001, 'LT-MOA(', 'CANCELLED', '2018-11-06', '2018-11-06', 31, 'LEONIZA TRIGO', 'SUBM'),
(158, 'BUNNY', 181107001, 'SJ-B', 'WAITING', '2018-11-07', '0000-00-00', 6, 'SAN JUAN', 'RQST');

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
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_last` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='table for tracking documents history';

--
-- Dumping data for table `documents_history`
--

INSERT INTO `documents_history` (`dochist_id`, `doc_id`, `dochist_type`, `user_id`, `dept_id`, `dochist_remarks`, `timestamp`, `is_last`) VALUES
(10, 3, 'RECEIVED AT', 2, 1, '', '2018-09-20 11:48:15', 0),
(11, 3, 'FORWARDED TO', 2, 2, '', '2018-09-20 11:48:54', 0),
(12, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:48:57', 0),
(13, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:48:59', 0),
(14, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:49:00', 0),
(15, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:49:02', 0),
(16, 3, 'REMARKS ADDED AT', 2, 2, 'GUILTY AS FUCKED', '2018-09-20 11:49:05', 0),
(17, 3, 'REMARKS ADDED AT', 2, 1, 'GUILTY AS ANALLY FUCKED', '2018-09-20 11:49:38', 0),
(18, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:49:10', 0),
(19, 3, 'DOCUMENT CANCELLED AT', 4, 2, '', '2018-09-20 11:49:28', 0),
(20, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:48:52', 0),
(21, 3, 'FORWARD CANCELLED AT', 1, 2, '', '2018-09-20 11:48:50', 0),
(23, 3, 'RECEIVED AT', 1, 2, '', '2018-09-20 11:48:20', 0),
(24, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:48:32', 0),
(25, 3, 'FORWARDED TO', 1, 3, '', '2018-09-20 11:48:26', 0),
(26, 5, 'FORWARD CANCELLED AT', 1, 44, '', '2018-09-20 05:44:59', 1),
(27, 3, 'RECEIVED AT', 2, 3, '', '2018-09-20 11:48:29', 0),
(28, 3, 'FORWARDED TO', 4, 2, '', '2018-09-20 11:48:34', 0),
(29, 3, 'FORWARDED TO', 4, 1, '', '2018-09-20 11:48:35', 0),
(30, 4, 'FORWARD CANCELLED AT', 4, 44, '', '2018-09-20 05:38:58', 1),
(31, 3, 'RECEIVED AT', 2, 2, '', '2018-09-20 11:48:37', 0),
(32, 3, 'REMARKS ADDED AT', 2, 3, 'GUILTY AS LICKED', '2018-09-20 11:49:43', 0),
(33, 3, 'RECEIVED AT', 4, 1, '', '2018-09-20 11:48:46', 1),
(34, 100, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:07:49', 0),
(35, 100, 'FORWARDED TO', 1, 8, '', '2018-10-13 07:40:50', 0),
(36, 100, 'MARKED COMPLETED AT', 4, 44, '', '2018-09-17 20:17:25', 0),
(37, 101, 'RECEIVED AT', 1, 44, '', '2018-09-20 05:42:24', 1),
(38, 102, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:20:50', 1),
(39, 103, 'RECEIVED AT', 4, 44, '', '2018-09-17 20:31:15', 1),
(40, 104, 'RECEIVED AT', 0, 0, '', '2018-09-18 00:49:48', 1),
(41, 105, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:41', 1),
(42, 106, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:50', 1),
(43, 107, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:50:56', 1),
(44, 108, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:58:06', 1),
(45, 109, 'RECEIVED AT', 1, 11, '', '2018-09-18 00:59:18', 1),
(46, 110, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:22', 1),
(47, 111, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:25', 0),
(48, 112, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:26', 1),
(49, 113, 'RECEIVED AT', 1, 11, '', '2018-09-18 01:10:28', 0),
(50, 114, 'RECEIVED AT', 1, 11, '', '2018-10-13 07:57:12', 0),
(51, 100, 'DOCUMENT CANCELLED AT', 4, 44, '', '2018-09-18 01:33:19', 0),
(52, 115, 'RECEIVED AT', 1, 0, '', '2018-10-13 07:57:13', 0),
(53, 116, 'RECEIVED AT', 1, 0, '', '2018-10-13 07:57:13', 0),
(54, 117, 'RECEIVED AT', 1, 0, '', '2018-10-13 07:57:12', 0),
(55, 118, 'RECEIVED AT', 1, 0, '', '2018-10-13 07:57:12', 0),
(56, 119, 'RECEIVED AT', 1, 0, '', '2018-10-13 07:54:59', 0),
(57, 120, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:57:13', 0),
(58, 121, 'RECEIVED AT', 1, 64, '', '2018-10-13 08:00:37', 0),
(59, 122, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:16:34', 0),
(60, 123, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:16:50', 0),
(61, 124, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:18:57', 0),
(62, 125, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:19:08', 0),
(63, 126, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:48:35', 0),
(64, 127, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:19:31', 0),
(65, 128, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:25:54', 0),
(66, 129, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:26:10', 0),
(67, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:27:54', 1),
(68, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:28:09', 1),
(69, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:28:47', 1),
(70, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:29:30', 1),
(71, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:30:49', 1),
(72, 0, 'RECEIVED AT', 1, 64, '', '2018-10-11 15:31:37', 1),
(73, 0, 'RECEIVED AT', 1, 64, '', '2018-10-12 14:37:55', 1),
(74, 0, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:10:29', 1),
(75, 0, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:15:15', 1),
(76, 0, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:16:13', 1),
(77, 140, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:17:28', 0),
(78, 141, 'RECEIVED AT', 1, 64, '', '2018-10-13 07:57:38', 0),
(79, 100, 'FORWARDED TO', 4, 8, '', '2018-10-13 07:40:50', 0),
(80, 100, 'FORWARDED TO', 4, 8, '', '2018-10-13 07:40:51', 0),
(81, 100, 'FORWARDED TO', 4, 8, '', '2018-10-13 07:41:41', 0),
(82, 100, 'FORWARDED TO', 4, 8, '', '2018-10-13 07:43:28', 0),
(83, 100, 'FORWARDED TO', 4, 8, '', '2018-10-13 07:43:28', 1),
(84, 126, 'FORWARDED TO', 1, 65, '', '2018-10-13 07:48:35', 1),
(85, 119, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:54:59', 0),
(86, 114, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:12', 1),
(87, 118, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:12', 1),
(88, 117, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:12', 1),
(89, 120, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:13', 1),
(90, 116, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:13', 1),
(91, 115, 'FORWARDED TO', 1, 64, '', '2018-10-13 07:57:13', 1),
(92, 141, 'FORWARDED TO', 1, 5, '', '2018-10-13 07:57:38', 0),
(93, 121, 'FORWARDED TO', 1, 64, '', '2018-10-13 08:00:37', 0),
(94, 142, 'RECEIVED AT', 1, 64, '', '2018-10-21 08:31:41', 0),
(95, 142, 'FORWARDED TO', 1, 64, '', '2018-10-21 08:32:14', 0),
(96, 142, 'RECEIVED AT', 1, 64, '', '2018-10-21 08:37:05', 0),
(97, 121, 'REMARKS ADDED AT', 1, 64, 'MRS. PALER DID NOT ACCEPT DOCUMENTS BECAUSE SHE WAS TIRED.', '2018-10-21 08:35:44', 0),
(98, 142, 'MARKED COMPLETED AT', 1, 64, '', '2018-10-21 08:37:05', 0),
(99, 143, 'RECEIVED AT', 1, 64, '', '2018-10-31 14:50:59', 0),
(100, 144, 'RECEIVED AT', 1, 64, '', '2018-10-31 14:51:29', 1),
(101, 145, 'RECEIVED AT', 1, 64, '', '2018-10-31 14:51:46', 1),
(102, 146, 'RECEIVED AT', 1, 64, '', '2018-10-31 14:52:04', 1),
(103, 147, 'RECEIVED AT', 1, 64, '', '2018-10-31 15:30:23', 1),
(104, 148, 'RECEIVED AT', 1, 64, '', '2018-10-31 16:13:41', 0),
(105, 149, 'RECEIVED AT', 1, 64, '', '2018-10-31 16:35:17', 0),
(106, 150, 'RECEIVED AT', 1, 64, '', '2018-10-31 16:32:05', 0),
(107, 149, 'MARKED COMPLETED AT', 1, 64, '', '2018-10-31 16:35:17', 0),
(108, 150, 'MARKED COMPLETED AT', 1, 64, '', '2018-10-31 16:36:11', 0),
(109, 151, 'RECEIVED AT', 1, 64, '', '2018-11-01 03:03:13', 1),
(110, 129, 'FORWARDED TO', 1, 5, '', '2018-11-01 06:01:42', 1),
(111, 122, 'FORWARDED TO', 1, 63, '', '2018-11-01 06:02:14', 1),
(112, 125, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(113, 113, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(114, 111, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(115, 127, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(116, 124, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(117, 123, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:42', 1),
(118, 128, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:43', 1),
(119, 140, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:43', 1),
(120, 143, 'FORWARDED TO', 1, 5, '', '2018-11-01 07:28:43', 1),
(121, 119, 'RECEIVED AT', 1, 64, '', '2018-11-01 07:33:19', 1),
(122, 117, 'REMARKS ADDED AT', 1, 64, 'THIS DOCUMENT IS NOT REALLY REAL.', '2018-11-01 07:34:23', 0),
(123, 141, 'FORWARD CANCELLED AT', 1, 64, '', '2018-11-01 07:34:40', 0),
(124, 141, 'REMARKS ADDED AT', 1, 64, 'YOU IDIOT!', '2018-11-01 07:34:54', 0),
(125, 122, 'REMARKS ADDED AT', 1, 64, 'YOU IDIOT, TOO!.', '2018-11-01 07:35:14', 0),
(126, 148, 'MARKED COMPLETED AT', 1, 64, '', '2018-11-01 07:48:16', 0),
(127, 141, 'DOCUMENT CANCELLED AT', 1, 64, '', '2018-11-01 07:48:20', 0),
(128, 152, 'RECEIVED AT', 1, 64, '', '2018-11-04 13:55:39', 1),
(129, 153, 'RECEIVED AT', 1, 64, '', '2018-11-05 00:06:53', 1),
(130, 154, 'RECEIVED AT', 1, 64, '', '2018-11-05 00:55:36', 1),
(131, 155, 'RECEIVED AT', 1, 64, '', '2018-11-05 00:58:55', 1),
(132, 156, 'RECEIVED AT', 31, 65, '', '2018-11-06 03:03:39', 0),
(133, 156, 'REMARKS ADDED AT', 31, 65, 'BITCH IS PRESENT', '2018-11-06 03:08:17', 0),
(134, 156, 'FORWARDED TO', 31, 5, '', '2018-11-06 03:08:37', 0),
(135, 156, 'FORWARD CANCELLED AT', 31, 65, '', '2018-11-06 03:08:51', 0),
(136, 156, 'DOCUMENT CANCELLED AT', 31, 65, '', '2018-11-06 03:09:19', 0),
(137, 157, 'RECEIVED AT', 1, 64, '', '2018-11-06 08:08:36', 0),
(138, 157, 'FORWARDED TO', 1, 5, '', '2018-11-06 08:09:07', 1),
(139, 121, 'RECEIVED AT', 6, 64, '', '2018-11-07 06:50:27', 0),
(140, 121, 'FORWARDED TO', 6, 65, '', '2018-11-07 06:50:43', 0),
(141, 121, 'FORWARD CANCELLED AT', 6, 64, '', '2018-11-07 06:50:58', 0),
(142, 121, 'DOCUMENT CANCELLED AT', 6, 64, '', '2018-11-07 06:51:05', 0),
(143, 158, 'RECEIVED AT', 6, 64, '', '2018-11-07 06:52:25', 1);

-- --------------------------------------------------------

--
-- Table structure for table `schools`
--

CREATE TABLE `schools` (
  `school_pk` int(2) NOT NULL,
  `school_name` varchar(40) DEFAULT NULL,
  `district_id` int(2) DEFAULT NULL,
  `school_issued_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `schools`
--

INSERT INTO `schools` (`school_pk`, `school_name`, `district_id`, `school_issued_id`, `school_id`) VALUES
(24, 'Anahao PS', 3, 121992, 1),
(25, 'Banahao PS', 2, 121993, 2),
(26, 'Baugo PS', 2, 121994, 3),
(27, 'Beniton PS', 2, 121995, 4),
(28, 'Bontoc CS', 2, 121996, 5),
(29, 'Buenavista ES', 3, 121997, 6),
(30, 'Bunga ES', 3, 121998, 7),
(31, 'Catmon ES', 3, 121999, 8),
(32, 'Catuogan PS', 3, 122000, 9),
(33, 'Cawayanan ES', 3, 122001, 10),
(34, 'Divisoria ES', 3, 122002, 11),
(35, 'Esperanza ES', 2, 122003, 12),
(36, 'Hibagwan PS', 2, 122004, 13),
(37, 'Hilaan ES', 2, 122005, 14),
(38, 'Himakilo PS', 2, 122006, 15),
(39, 'Hitawos PS', 2, 122007, 16),
(40, 'Lanao PS', 3, 122008, 17),
(41, 'Lawgawan PS', 2, 122009, 18),
(42, 'Mahayahay ES', 3, 122010, 19),
(43, 'Malbago ES', 2, 122011, 20),
(44, 'Mauylab PS', 3, 122013, 21),
(45, 'Paku ES', 3, 122014, 22),
(46, 'Pamahawan PS', 3, 122015, 23),
(47, 'Pamigsian ES', 2, 122016, 24),
(48, 'Pangi PS', 2, 122017, 25),
(49, 'Sampongon MG ES', 3, 122018, 26),
(50, 'San Vicente PS', 3, 122019, 27),
(51, 'Sta. Cruz ES', 2, 122020, 28),
(52, 'Taa ES', 2, 122021, 29),
(53, 'Union ES', 3, 122022, 30),
(54, 'Ambacon PS', 4, 122023, 31),
(55, 'Biasong ES', 5, 122024, 32),
(56, 'Bugho ES', 5, 122025, 33),
(57, 'Calag-Itan ES', 4, 122026, 34),
(58, 'Calinao ES', 4, 122027, 35),
(59, 'Canipaan ES', 4, 122028, 36),
(60, 'Catublian ES', 5, 122029, 37),
(61, 'Hinunangan ECS', 5, 122030, 38),
(62, 'Hinunangan WCS', 4, 122031, 39),
(63, 'Ilaya ES', 5, 122032, 40),
(64, 'Ingan ES', 4, 122033, 41),
(65, 'Kabaskan PS', 5, 122034, 42),
(66, 'Libas ES', 5, 122035, 43),
(67, 'Lumbog PS', 5, 122036, 44),
(68, 'Manalog ES', 5, 122037, 45),
(69, 'Manlico ES', 5, 122038, 46),
(70, 'Matin-ao ES', 4, 122039, 47),
(71, 'Nava ES', 5, 122040, 48),
(72, 'Nueva Esperanza ES', 4, 122041, 49),
(73, 'Otama ES', 5, 122042, 50),
(74, 'Palongpong ES', 4, 122043, 51),
(75, 'Patong ES', 5, 122044, 52),
(76, 'Pondol ES', 4, 122045, 53),
(77, 'San Pablo ES', 4, 122046, 54),
(78, 'San Pedro ES', 4, 122047, 55),
(79, 'Sto. Niño II ES', 5, 122048, 56),
(80, 'Tahusan ES', 5, 122049, 57),
(81, 'Tawog PS', 4, 122050, 58),
(82, 'Tuburan ES', 5, 122051, 59),
(83, 'Awayon ES', 20, 122052, 60),
(84, 'Balagawan ES', 20, 122053, 61),
(85, 'Hingatungan ES', 20, 122054, 62),
(86, 'Katipunan ES', 20, 122055, 63),
(87, 'Lagoma ES', 20, 122056, 64),
(88, 'Salvacion ES', 20, 122057, 65),
(89, 'Sap-ang ES', 20, 122058, 66),
(90, 'Silago CS', 20, 122059, 67),
(91, 'Sudmon ES', 20, 122060, 68),
(92, 'Tubod ES', 20, 122061, 69),
(93, 'Amaga ES', 6, 122062, 70),
(94, 'Amagusan MGES', 1, 122063, 71),
(95, 'Ambao ES', 6, 122064, 72),
(96, 'Anahawan CS', 1, 122065, 73),
(97, 'An-An ES', 6, 122066, 74),
(98, 'Biasong MGES', 6, 122067, 75),
(99, 'Bugho ES', 6, 122068, 76),
(100, 'Cabulisan MGES', 6, 122069, 77),
(101, 'Capacuhan ES', 1, 122070, 78),
(102, 'Hinundayan CS', 6, 122071, 79),
(103, 'Hubasan MGES', 6, 122072, 80),
(104, 'Lungsodaan ES', 6, 122073, 81),
(105, 'Mahalo ES', 1, 122074, 82),
(106, 'Manigawong MGES', 1, 122075, 83),
(107, 'Plaridel ES', 6, 122076, 84),
(108, 'Sagbok ES', 6, 122077, 85),
(109, 'Gakat ES', 7, 122078, 86),
(110, 'Kawayan ES', 7, 122079, 87),
(111, 'Libagon CS', 7, 122080, 88),
(112, 'Magkasag ES', 7, 122081, 89),
(113, 'Mayuga ES', 7, 122082, 90),
(114, 'Nahulid ES', 7, 122083, 91),
(115, 'Otikon ES', 7, 122084, 92),
(116, 'Tigbao ES', 7, 122085, 93),
(117, 'Amaga ES', 8, 122086, 94),
(118, 'Anilao ES', 9, 122087, 95),
(119, 'Bahay ES', 9, 122088, 96),
(120, 'Bongawisan ES', 17, 122089, 97),
(121, 'Bongbong ES', 17, 122090, 98),
(122, 'Cagbungalon ES', 9, 122091, 99),
(123, 'Calian ES', 9, 122092, 100),
(124, 'Caligangan ES', 9, 122093, 101),
(125, 'Catig PS', 9, 122094, 102),
(126, 'Estela ES', 9, 122095, 103),
(127, 'Fatima PS', 9, 122096, 104),
(128, 'Guintoylan ES', 9, 122097, 105),
(129, 'Habay ES', 17, 122098, 106),
(130, 'Himayangan ES', 8, 122099, 107),
(131, 'Ilag ES', 8, 122100, 108),
(132, 'Liloan CS', 8, 122101, 109),
(133, 'Magaupas ES', 8, 122102, 110),
(134, 'New Malangza ES', 8, 122103, 111),
(135, 'Marayag ES', 17, 122104, 112),
(136, 'Mariano Silot Memorial ES', 8, 122105, 113),
(137, 'Napantao ES', 17, 122106, 114),
(138, 'Pandan ES', 9, 122107, 115),
(139, 'Pinamudlan ES', 17, 122108, 116),
(140, 'Pres. Quezon ES', 9, 122109, 117),
(141, 'Pres. Roxas ES', 8, 122110, 118),
(142, 'San Francisco CS', 17, 122111, 119),
(143, 'San Isidro ES', 8, 122112, 120),
(144, 'San Roque ES', 9, 122113, 121),
(145, 'Sta. Paz ES', 17, 122114, 122),
(146, 'Sudmon ES', 17, 122115, 123),
(147, 'Tabugon ES', 8, 122116, 124),
(148, 'Tuno ES', 17, 122117, 125),
(149, 'Aguinaldo Elementary MGS', 11, 122178, 126),
(150, 'Amparo ES', 11, 122179, 127),
(151, 'Asuncion PS', 11, 122180, 128),
(152, 'Bagong Silang MGS', 11, 122181, 129),
(153, 'Buscan ES', 11, 122182, 130),
(154, 'Cambaro ES', 11, 122183, 131),
(155, 'Flordeliz ES', 11, 122184, 132),
(156, 'Ichon ES', 11, 122185, 133),
(157, 'Ilihan ES', 11, 122186, 134),
(158, 'Laray ES', 11, 122187, 135),
(159, 'Mabini ES', 11, 122188, 136),
(160, 'Macrohon Central ES', 11, 122189, 137),
(161, 'Molopolo ES', 11, 122190, 138),
(162, 'Rizal ES', 11, 122191, 139),
(163, 'Salvador ES', 11, 122192, 140),
(164, 'San Isidro ES', 11, 122193, 141),
(165, 'San Joaquin ES', 11, 122194, 142),
(166, 'San Roque ES', 11, 122195, 143),
(167, 'Sindangan ES', 11, 122196, 144),
(168, 'Sto. Niño ES', 11, 122197, 145),
(169, 'Villa Jacinta ES', 11, 122198, 146),
(170, 'Abgao ES', 12, 122199, 147),
(171, 'Aurora ES', 12, 122200, 148),
(172, 'Benit ES', 12, 122201, 149),
(173, 'Cadaruhan ES', 12, 122202, 150),
(174, 'Cambalhin ES', 12, 122203, 151),
(175, 'Cantamuac ES', 12, 122204, 152),
(176, 'Caraatan ES', 12, 122205, 153),
(177, 'Concepcion ES', 12, 122206, 154),
(178, 'Guinabonan ES', 12, 122207, 155),
(179, 'Kauswagan ES', 12, 122208, 156),
(180, 'Lambonao ES', 12, 122209, 157),
(181, 'Malitbog CS', 12, 122210, 158),
(182, 'Maningning ES', 12, 122211, 159),
(183, 'San Jose ES', 12, 122212, 160),
(184, 'San Vicente ES', 12, 122213, 161),
(185, 'Sangahon ES', 12, 122214, 162),
(186, 'Sta. Cruz ES', 12, 122215, 163),
(187, 'Tigbawan ES', 12, 122216, 164),
(188, 'Timba ES', 12, 122217, 165),
(189, 'Bunga ES', 13, 122218, 166),
(190, 'Dinahugan PS', 13, 122219, 167),
(191, 'Laca PS', 13, 122220, 168),
(192, 'Lugsongan ES', 10, 122221, 169),
(193, 'Lungsodaan ES', 13, 122222, 170),
(194, 'Magallanes ES', 10, 122223, 171),
(195, 'Padre Burgos CS', 13, 122224, 172),
(196, 'San Agustin ES', 10, 122225, 173),
(197, 'San Bernardo ES', 10, 122226, 174),
(198, 'San Juan ES', 13, 122227, 175),
(199, 'Santo Rosario ES', 13, 122228, 176),
(200, 'Tangkaan ES', 13, 122229, 177),
(201, 'Triana ES', 10, 122230, 178),
(202, 'Benit ES', 19, 122231, 179),
(203, 'Buenavista ES', 14, 122232, 180),
(204, 'Bulawan PS', 14, 122233, 181),
(205, 'Cogon ES', 14, 122234, 182),
(206, 'Esperanza ES', 19, 122235, 183),
(207, 'Kinachawa ES', 19, 122236, 184),
(208, 'Manglit ES', 14, 122237, 185),
(209, 'Nueva Estrella ES', 14, 122238, 186),
(210, 'Pintuyan CS', 14, 122239, 187),
(211, 'Pinut-an ES', 19, 122240, 188),
(212, 'Punod PS', 14, 122241, 189),
(213, 'San Ramon ES', 19, 122242, 190),
(214, 'San Ricardo CS', 19, 122243, 191),
(215, 'Son-Ok ES', 14, 122245, 192),
(216, 'Agay-ay ES', 18, 122246, 193),
(217, 'Basak ES', 18, 122247, 194),
(218, 'Bobon ES', 18, 122248, 195),
(219, 'Dayanog ES', 18, 122249, 196),
(220, 'Garsavic ES', 18, 122250, 197),
(221, 'Pong-Oy ES', 18, 122251, 198),
(222, 'San Juan CES w/ SPED CENTER', 18, 122252, 199),
(223, 'Somoje ES', 18, 122253, 200),
(224, 'Sta. Filomena ES', 18, 122254, 201),
(225, 'Sua ES', 18, 122255, 202),
(226, 'Timba ES', 18, 122256, 203),
(227, 'Benit PS', 22, 122257, 204),
(228, 'Buac ES', 22, 122258, 205),
(229, 'Cabadbaran PS', 21, 122259, 206),
(230, 'Concepcion ES', 22, 122260, 207),
(231, 'Consolacion ES', 22, 122261, 208),
(232, 'Dagsa MGES', 22, 122262, 209),
(233, 'Hindangan PS', 21, 122263, 210),
(234, 'Hipantag ES', 22, 122264, 211),
(235, 'Kanangkaan ES', 22, 122266, 212),
(236, 'Kauswagan ES', 21, 122267, 213),
(237, 'Libas ES', 21, 122268, 214),
(238, 'Mac ES', 22, 122270, 215),
(239, 'Magatas ES', 22, 122271, 216),
(240, 'Milagroso ES', 21, 122272, 217),
(241, 'Olisihan ES', 22, 122273, 218),
(242, 'Pancho Villa ES', 22, 122274, 219),
(243, 'Pandan-San Miguel ES', 22, 122275, 220),
(244, 'Rizal PS', 21, 122276, 221),
(245, 'San Isidro ES', 22, 122277, 222),
(246, 'San Juan ES', 22, 122278, 223),
(247, 'San Pedro ES', 21, 122279, 224),
(248, 'Sogod CS w/ SPED CENTER', 21, 122280, 225),
(249, 'Sta. Maria PS', 21, 122281, 226),
(250, 'Suba ES', 22, 122282, 227),
(251, 'Ayahag ES', 15, 122283, 228),
(252, 'Bolod-Bolod ES', 16, 122284, 229),
(253, 'Carnaga MG ES', 16, 122285, 230),
(254, 'Catmon ES', 16, 122286, 231),
(255, 'Himbangan ES', 15, 122288, 232),
(256, 'Himos-Onan ES', 16, 122289, 233),
(257, 'Hindag-An ES', 15, 122291, 234),
(258, 'Libas MGES', 16, 122292, 235),
(259, 'Lipanto ES', 15, 122293, 236),
(260, 'Mahayag ES', 15, 122295, 237),
(261, 'Mahayahay ES', 15, 122296, 238),
(262, 'Malinao ES', 16, 122297, 239),
(263, 'Maria Asuncion ES', 16, 122298, 240),
(264, 'Nueva Esperanza ES', 15, 122299, 241),
(265, 'Panian ES', 15, 122300, 242),
(266, 'San Isidro ES', 15, 122301, 243),
(267, 'Saint Bernard CS', 15, 122302, 244),
(268, 'Sta. Cruz MG ES', 16, 122303, 245),
(269, 'Sug-Angon PS', 15, 122304, 246),
(270, 'Tabontabon ES', 15, 122305, 247),
(271, 'Tambis I ES', 16, 122306, 248),
(272, 'Tambis II ES', 16, 122307, 249),
(273, 'Anahawan ES', 23, 122308, 250),
(274, 'Cabascan ES', 23, 122309, 251),
(275, 'Camansi ES', 23, 122310, 252),
(276, 'Cambite ES', 23, 122311, 253),
(277, 'Canlupao ES', 23, 122312, 254),
(278, 'Carnaga ES', 23, 122313, 255),
(279, 'Cawayan ES', 23, 122314, 256),
(280, 'Hinagtican PS', 23, 122315, 257),
(281, 'Hinapo ES', 23, 122316, 258),
(282, 'Hugpa ES', 23, 122317, 259),
(283, 'Maanyag ES', 23, 122318, 260),
(284, 'Maslog ES', 23, 122319, 261),
(285, 'Rizal ES', 23, 122320, 262),
(286, 'San Isidro ES', 23, 122321, 263),
(287, 'Tinago ES', 23, 122322, 264),
(288, 'Tomas Oppus CS', 23, 122323, 265),
(289, 'Calinta-an MGES', 1, 192001, 266),
(290, 'Cantutang ES', 13, 192002, 267),
(291, 'Casao PS', 2, 192004, 268),
(292, 'Guinsangaan ES', 2, 192005, 269),
(293, 'Baculod MGES', 6, 192006, 270),
(294, 'San Antonio ES', 23, 192007, 271),
(295, 'Navalita MGES', 6, 192008, 272),
(296, 'Candayuman PS', 9, 192009, 273),
(297, 'Magbagacay ES', 15, 192010, 274),
(298, 'Lewing MGES', 1, 192011, 275),
(299, 'Olisihan PS', 2, 192012, 276),
(300, 'Senda PS', 5, 192013, 277),
(301, 'Bantawon MG ES', 16, 192014, 278),
(302, 'Imelda PS', 20, 192015, 279),
(303, 'Puntana PS', 20, 192016, 280),
(304, 'Mapgap ES', 23, 192017, 281),
(305, 'Camang ES', 19, 192018, 282),
(306, 'Catbawan PS', 14, 192019, 283),
(307, 'Dan-an PS', 14, 192020, 284),
(308, 'Anislagon PS', 17, 192021, 285),
(309, 'New Guinsaugon ES', 15, 192023, 286),
(310, 'Tuba-on ES', 20, 192024, 287),
(311, 'Lum-an PS', 21, 192027, 288),
(312, 'Catmon ES', 20, 192028, 289),
(313, 'San Francisco Mabuhay PS', 22, 192029, 290),
(314, 'Mahika ES', 16, 192030, 291),
(315, 'Cat-iwing MGES', 6, 192031, 292),
(316, 'Atuyan MGES', 16, 192032, 293),
(317, 'Mabicay ES', 21, 192033, 294),
(318, 'Padre Burgos NTVHS', 13, 302079, 295),
(319, 'Anahawan NVHS', 1, 303444, 296),
(320, 'Canipaan NHS', 4, 303446, 297),
(321, 'Hinunangan NHS', 4, 303447, 298),
(322, 'Concepcion NHS', 12, 303448, 299),
(323, 'Consolacion NHS', 22, 303449, 300),
(324, 'Divisoria NHS', 3, 303451, 301),
(325, 'DAFENHS', 23, 303453, 302),
(326, 'Esperanza NHS', 19, 303455, 303),
(327, 'Estela NHS', 9, 303456, 304),
(328, 'Hilaan NHS', 2, 303458, 305),
(329, 'Himay-angan NHS', 8, 303459, 306),
(330, 'Himbangan NHS', 16, 303460, 307),
(331, 'Hingatungan NHS', 20, 303461, 308),
(332, 'Ichon NHS', 11, 303462, 309),
(333, 'Libas NHS', 21, 303463, 310),
(334, 'Limasawa NHS', 10, 303465, 311),
(335, 'Lungsodaan NHS', 6, 303466, 312),
(336, 'Marayag NHS', 17, 303470, 313),
(337, 'Mercedes NHS', 20, 303471, 314),
(338, 'Rito Monte de Ramos Sr. MHS', 7, 303472, 315),
(339, 'Nava NHS', 5, 303473, 316),
(340, 'Paku NHS', 3, 303475, 317),
(341, 'Pintuyan NHS', 14, 303476, 318),
(342, 'Pintuyan NVHS', 14, 303477, 319),
(343, 'Pinut-an NHS', 19, 303478, 320),
(344, 'Rizal NHS', 23, 303479, 321),
(345, 'San Isidro NHS', 23, 303480, 322),
(346, 'San Juan NHS', 18, 303481, 323),
(347, 'San Ricardo NHS', 19, 303483, 324),
(348, 'San Roque NHS', 11, 303485, 325),
(349, 'Silago NVHS', 20, 303486, 326),
(350, 'Sogod NHS', 21, 303487, 327),
(351, 'Sta. Cruz NHS', 12, 303488, 328),
(352, 'Sta. Paz NHS', 17, 303489, 329),
(353, 'Tambis NHS', 16, 303490, 330),
(354, 'Villa Jacinta NVHS', 11, 303492, 331),
(355, 'San Isidro NHS', 22, 305494, 332),
(356, 'Sto. Niño NHS', 5, 305496, 333),
(357, 'Malitbog NHS', 12, 305533, 334),
(358, 'Bontoc NHS', 2, 313403, 335),
(359, 'New Guinsaugon NHS', 15, 313407, 336),
(360, 'Katipunan NHS', 20, 313408, 337),
(361, 'Liloan NTVHS', 8, 313409, 338),
(362, 'Libagon NHS', 7, 313411, 339),
(363, 'Saub Integrated School', 19, 501048, 340),
(364, 'Kahupian Integrated School', 22, 501049, 341);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `user_abbreviation` varchar(15) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `personnel_id` int(11) NOT NULL,
  `usertype` enum('admin','mgmt','user','guest') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `first_name`, `last_name`, `user_abbreviation`, `dept_id`, `password`, `personnel_id`, `usertype`) VALUES
(33, 'queennie.tia', 'QUEENNIE', 'TIA', 'Q TIA', 0, 'wilson', 0, 'admin'),
(34, 'agnes', 'AGNES', 'GONZALES', 'A GONZALES', 80, 'deped4ever', 0, 'user'),
(35, 'edaline', 'EDALINE', 'MORI', 'E MORI', 80, 'deped4ever', 0, 'mgmt'),
(36, 'aidajune', 'AIDA JUNE', 'OLAYVAR', 'AJ OLAYVAR', 81, 'deped4ever', 0, 'mgmt'),
(37, 'aireen ', 'AIREEN', 'ERASMO', 'A ERASMO', 86, 'deped4ever', 0, 'user'),
(38, 'alfredo', 'ALFREDO', 'BAYON', 'A BAYON', 85, 'deped4ever', 0, 'mgmt'),
(39, 'arlita', 'ARLITA', 'ISMA', 'A ISMA', 85, 'deped4ever', 0, 'user'),
(40, 'arben', 'ARBEN', 'RESUS', 'A RESUS', 75, 'deped4ever', 0, 'user'),
(41, 'betelino', 'BETELINO', 'AMIGO', 'B AMIGO', 67, 'deped4ever', 0, 'mgmt'),
(42, 'carmela', 'CARMELA', 'GAVIOLA', 'C GAVIOLA', 80, 'deped4ever', 0, 'mgmt'),
(43, 'cathy', 'CATHY', 'DESTAJO', 'C DESTAJO', 73, 'deped4ever', 0, 'user'),
(44, 'bob', 'BOB', 'CORRO', 'B CORRO', 84, 'deped4ever', 0, 'user'),
(45, 'cheche', 'CHECHE', 'RANQUE', 'C RANQUE', 72, 'deped4ever', 0, 'user'),
(46, 'samson', 'SAMSON', 'CLARUS', 'S CLARUS', 87, 'deped4ever', 0, 'mgmt'),
(47, 'consolacion', 'CONSOLACION', 'RUFLO', 'C RUFLO', 84, 'deped4ever', 0, 'mgmt'),
(48, 'dec', 'DEC', 'CARBONILLA', 'D CARBONILLA', 66, 'deped4ever', 0, 'mgmt'),
(49, 'eduardo', 'EDUARDO', 'LEGANTIN', 'E LEGANTIN', 69, 'deped4ever', 0, 'mgmt'),
(50, 'elena', 'ELENA', 'DE LUNA', 'E DE LUNA', 74, 'deped4evre', 0, 'mgmt'),
(51, 'elizabeth', 'ELIZABETH', 'DELIGERO', 'E DELIGERO', 66, 'deped4ever', 0, 'mgmt'),
(52, 'elsiejane', 'ELSIE JANE', 'MANTILLA', 'EJ MANTILLA', 82, 'deped4ever', 0, 'mgmt'),
(53, 'fe', 'FE', 'ESPEDILLA', 'F ESPEDILLA', 86, 'deped4ever', 0, 'mgmt'),
(54, 'genis', 'GENIS', 'MURALLOS', 'G MURALLOS', 79, 'deped4ever', 0, 'mgmt'),
(55, 'hilda', 'HILDA', 'FERNANDEZ', 'H FERNANDEZ', 82, 'deped4ever', 0, 'user'),
(56, 'ihrein', 'IHREIN', 'CADAVERO', 'I CADAVERO', 76, 'deped4ever', 0, 'user'),
(57, 'jenelyn', 'JENELYN', 'INTING', 'J INTING', 81, 'deped4ever', 0, 'user'),
(58, 'jerelyn', 'JERELYN', 'AMIGO', 'J AMIGO', 83, 'deped4ever', 0, 'user'),
(59, 'joan', 'JOAN', 'MALASAGA', 'J MALASAGA', 76, 'deped4ever', 0, 'mgmt'),
(60, 'joel', 'JOEL', 'QUILANTANG', 'J QUILANTANG', 77, 'deped4ever', 0, 'admin'),
(61, 'julie', 'JULIE', 'AUSTRIA', 'J AUSTRIA', 69, 'deped4ever', 0, 'user'),
(62, 'liza', 'LIZA', 'DEMETRIO', 'L DEMETRIO', 70, 'deped4ever', 0, 'mgmt'),
(63, 'lloyd', 'LLOYD', 'CARBONILLA', 'L CARBONILLA', 67, 'deped4ever', 0, 'mgmt'),
(64, 'min', 'MIN', 'DAYOLA', 'M DAYOLA', 71, 'deped4ever', 0, 'user'),
(65, 'lorlin', 'LORLIN', 'MALBAS', 'L MALBAS', 86, 'deped4ever', 0, 'mgmt'),
(66, 'lyma', 'LYMA', 'MAITEM', 'L MAITEM', 75, 'deped4ever', 0, 'mgmt'),
(67, 'miraluna', 'MIRALUNA', 'CLIMACO', 'M CLIMACO', 68, 'deped4ever', 0, 'mgmt'),
(68, 'lyna', 'LYNA', 'GAYAS', 'L GAYAS', 87, 'deped4ever', 0, 'mgmt'),
(69, 'Ramir', 'RAMIR', 'MARAON', 'R MARAON', 73, '181106001', 0, 'mgmt'),
(70, 'malou.binongo', 'MALOU', 'BINONGO', 'M BINONGO', 70, 'deped4evre', 0, 'user'),
(71, 'rea', 'SIBI', 'REA', 'S REA', 66, '181106001', 0, 'user'),
(72, 'malou.alvarez', 'MALOU', 'ALVAREZ', 'M ALVAREZ', 71, 'deped4ever', 0, 'mgmt'),
(73, 'reynaldo', 'REYNALDO', 'BADILLA', 'R BADILLA', 78, '181106001', 0, 'mgmt'),
(74, 'marichu', 'MARICHU', 'SABALO', 'M SABALO', 79, 'deped4ever', 0, 'mgmt'),
(75, 'rosabel', 'ROSABEL', 'MATACOT', 'R MATACOT', 74, '181106001', 0, 'user'),
(76, 'martin', 'MARTIN', 'BAYBAY', 'M BAYBAY', 78, 'deped4ever', 0, 'user'),
(77, 'ulysses', 'ULYSSES', 'SABANDAL', 'U SABANDAL', 72, '181106001', 0, 'mgmt'),
(78, 'cipriano', 'CIPRIANO', 'MIKIN', 'C MIKIN', 87, 'deped4evere', 0, 'mgmt'),
(79, 'yden earl', 'YDEN EARL', 'BILLONES', 'YE BILLONES', 79, '181106001', 0, 'mgmt'),
(80, 'zedrick', 'ZEDRICK', 'MALBAS', 'Z MALBAS', 83, 'deped4ever', 0, 'mgmt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

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
-- Indexes for table `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`school_pk`);

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
  MODIFY `dept_id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `district_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `documents`
--
ALTER TABLE `documents`
  MODIFY `doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `documents_history`
--
ALTER TABLE `documents_history`
  MODIFY `dochist_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `schools`
--
ALTER TABLE `schools`
  MODIFY `school_pk` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
