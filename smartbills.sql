-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 12, 2017 at 06:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartbills2`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `srno` int(11) NOT NULL,
  `companyname` varchar(250) NOT NULL,
  `gstno` text NOT NULL,
  `address` varchar(2500) NOT NULL,
  `creationdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`srno`, `companyname`, `gstno`, `address`, `creationdate`) VALUES
(1, 'Atul Enterprises', '27AANPC8780E1ZH', 'S No-179, Atlas SteelPawarwasti, Kudalwadi Chikhli Pune.', '2017-07-12 04:13:34'),
(2, 'Brisk Industries Pvt Ltd', '', 'A/8,Junner Taluka Industries Co.Op. Society Ltd. Kandali Taluka Junner Dist -Pune -411412.', '2016-12-03 04:30:58'),
(3, 'Rajendra Metal Industries', '', 'Shop No 6,Mahavir Mansion,122,Kika Street Gulalwadi.Mum-400 004', '2016-12-05 07:05:54'),
(4, 'Yash Enterprises', '', 'Ambika Complex,Shop No.33,Navghar Road Vasai East', '2016-12-05 07:07:01'),
(5, 'Sai Siddhi ', '', '18/B,Dhanlaxmi Industrial Primises Co-Op Society Navghar,Vasai East', '2016-12-05 07:08:48'),
(6, 'B.Rameshkumar Metals Pvt. Ltd.', '', 'Regd.Off', '2016-12-05 07:10:21'),
(7, 'B.Rameshkumar Metals Pvt. Ltd.', '', 'Regd.Off: 127,Gulalwadi (Kika Street) Mum-400004', '2016-12-05 07:11:37'),
(8, 'Alfa Intertrade ', '', 'Plot No.242,Kolsa Bunder Road.Darukhana,Reay Road East.Mum-400010', '2016-12-05 07:13:59'),
(9, 'Pankaj Electromachining Works', '', '102/103,Sahakar Ind Estate,Navghar,Vasai east.', '2016-12-05 07:15:30'),
(10, 'S.B.Dhable & Co.', '', '105/108.Sushila Apt,Kanch Bangla.Opp Motiba Rice Mill.V.S.Marg Virar East.', '2016-12-05 07:17:10'),
(11, 'HDIL Limited', '', '9Th Floor,HDIL Tower Station Rd,Anant Kanekar Marg,Bandra East.Mum-400 051', '2016-12-05 07:19:47'),
(12, 'A.K.Steels', '27AANPC8780E1ZH', 'Shop No.71-B,Chhota Sonapur,Maulana Shaukat Ali Road,Mumbai-400 008', '2017-07-12 04:11:57'),
(13, 'Analab Electrometals', '', 'Fact:E-4,Govind Vitthal Chawl,Ramu Compound,V.S.Marg Virar East.', '2016-12-05 07:26:24'),
(14, 'Gayatri Tools Syndicate.', '', 'A-301,Unique Plaza Near Joglekar Hospital.Behind Octroi Naka,Virar West.', '2016-12-05 07:28:22'),
(15, 'Asha Heavy Industrial Premises Co Op Socity Ltd.', '', 'Asha Industrial Estate V.S.Marg,Virar East.', '2016-12-05 07:30:21'),
(16, 'I.K.Steel Trading Co.', '', 'Gala No-12,Manish Indl Estate No.2,Vasai East.', '2016-12-05 07:32:16'),
(17, 'Rutika Enterprises', '', 'Regd.Off 43,Balbhadra Nagar Shivsena Line,Bhayander west. Mum-401 101.', '2016-12-05 07:33:49'),
(18, 'Kalikund Steel Corporation', '', '5-6/9,Rahim Villa,10th Khetwadi Lane Opp Alfred Cinema,Mum-400 004', '2016-12-05 10:05:51'),
(19, 'Steel Corporation', '', '23-27,Kumbharwada,2nd Lane,Sant Sena Maharaj Marg,Mum-400 004', '2016-12-05 10:06:59'),
(20, 'Jeevika Enterprises', '', 'Gala No.2,Delta Industrial Estate,Behind Royal Enfield Showroom, Bhoida Pada,Sativali Road,Vasai East.', '2016-12-05 10:09:05'),
(21, 'Deekay Grinding Works', '', 'Gala No.110,1st Floor,Asha Industrial Estate,V.S.Marg,Virar East.', '2016-12-05 10:10:38'),
(22, 'VVCMC', '', 'Virar East.', '2016-12-05 10:11:16'),
(23, 'Sudhir Electroplating Corporation', '', 'Ramu Compound,Virar East.', '2016-12-05 10:12:29'),
(24, 'Sai Metal Treat.', '', '13/14,Neminath Industrial Estate No 5,Navghar Vasai Road East.', '2016-12-05 10:14:06'),
(25, 'Divine Metal Engineering', '', '20,Anantwadi,1st Floor,Room No 5 Bhuleshwar,Mumbai-400 002', '2016-12-05 11:10:43'),
(26, 'Shah Steel Traders', '', 'Shop No.B-19,Vora Plaza,Behind Bank Of Baroda,Navghar Vasi East', '2016-12-12 10:24:28'),
(27, 'DNA Infotel', '', 'Virar West', '2016-12-12 11:28:03'),
(28, 'Income Tax', '', 'C/O-S.B.Dhable', '2016-12-13 09:26:36'),
(29, 'Vat Tax', '', 'C/O S.B.Dhable', '2016-12-13 09:31:46'),
(30, 'Ankit Enterprises', '', '1&2 Siddhi Apart,No -118K Shahunagar,RTO Off Chinchwad Pune-412 114.', '2016-12-13 11:58:46'),
(31, 'Positronic Interconnects Pvt Ltd', '', 'SR No,51/2A/3&8 Off Mumbai Banglor Highway, Narhe. Pune-411 041.', '2016-12-14 04:33:44'),
(32, 'Trinity Auto Engineering Pvt Ltd.', '', 'Unit No 1,Noble Indus.Estate No 2,Navghar Vasai east.', '2016-12-14 04:58:58'),
(33, 'M.M.Enterprises', '', '24 Paras Industrial Estate,Navghar,Vasai East', '2016-12-24 09:45:52'),
(34, 'Gayatri Enterprises (Rubber Stamp)', '', '1, Ibrahim patel chawl, jitendra road, Malad - (East) pin -400097', '2017-01-04 09:59:39'),
(35, 'Sarvottam Metal Corporation', '', '119,Kika Street,(Gulalwadi),Mum-400 004', '2017-01-05 11:17:57'),
(36, 'Joy Enterprises', '', 'Vatar School (Shan), Post Agashi, Taluka Agashi, Virar- (west)', '2017-01-12 10:11:09'),
(37, 'Harsh Electro Cut', '', '134, Dewan & shah Indl Estate No 1,Navghar,Vasai  (East).', '2017-01-14 11:00:24'),
(38, 'perfect Engravers', '', '30,Gauri Commercial Complex,Behind Ambika Complex, NavgharRoad,Vasai (E) Thane - 401202.', '2017-01-19 05:47:55'),
(39, 'All Steel Traders', '', '2&3,Diwan Apt.No1,Navghar Vasai (E)', '2017-01-19 06:40:59'),
(40, 'Jyoti Engineers', '', 'Gala No- 6, Anjali Udyog Bhavan,Navghar Vasai (E)', '2017-04-26 07:31:30'),
(41, 'Fine Precision', '', 'Asha Industrial Estate V.S.Marg,Virar East.', '2017-04-28 10:35:06'),
(42, 'Other', '', 'Asha Industrial Estate V.S.Marg,Virar East.', '2017-04-28 10:54:42');

-- --------------------------------------------------------

--
-- Table structure for table `company_details`
--

CREATE TABLE `company_details` (
  `srno` int(11) NOT NULL,
  `companyname` varchar(250) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `companyaddress` text NOT NULL,
  `vat` text NOT NULL,
  `cst` text NOT NULL,
  `gstno` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `isdelete` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `company_details`
--

INSERT INTO `company_details` (`srno`, `companyname`, `fullname`, `companyaddress`, `vat`, `cst`, `gstno`, `datetime`, `isdelete`) VALUES
(1, 'precision', 'Precision Press Components', 'G-19,<br>Asha Industrial Estate,<br>V S Marg, Virar(E)', 'VAT TIN NO. 27670556117V w.e.f 22/08/06', 'CST TIN NO. 27670556117C w.e.f 22/08/06', '27AFBPR1541P1Z4', '2016-11-25 17:01:06', NULL),
(2, 'fine', 'Fine Contacts', 'G-19,<br>Asha Industrial Estate,<br>V S Marg, Virar(E)', 'VAT TIN NO. 27550349282V w.e.f 01/04/06', 'CST TIN NO. 27550349282C w.e.f 01/04/06', '27AFBPR1541P1Z4', '2016-12-03 04:12:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fine_bill`
--

CREATE TABLE `fine_bill` (
  `srno` int(11) NOT NULL,
  `bill_no` varchar(250) NOT NULL,
  `buyer_name` varchar(250) NOT NULL,
  `buyer_address` varchar(250) NOT NULL,
  `buyer_gst` text NOT NULL,
  `amount` float NOT NULL,
  `other_charges` float NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `sell_date` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PPC BILL';

-- --------------------------------------------------------

--
-- Table structure for table `fine_company_paid`
--

CREATE TABLE `fine_company_paid` (
  `srno` int(11) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `paid_date` date NOT NULL,
  `amount` varchar(250) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fine_description`
--

CREATE TABLE `fine_description` (
  `srno` int(11) NOT NULL,
  `billno` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `hsn_sac_code` text NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `weight` float NOT NULL,
  `item_rate` float NOT NULL,
  `labour` varchar(250) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fine_sample`
--

CREATE TABLE `fine_sample` (
  `srno` int(11) NOT NULL,
  `bill_srno` int(11) NOT NULL,
  `sample1` text NOT NULL,
  `sample2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item_list`
--

CREATE TABLE `item_list` (
  `srno` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `item_price` double NOT NULL,
  `item_labour` double NOT NULL,
  `hsn_sac_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_list`
--

INSERT INTO `item_list` (`srno`, `item_name`, `item_price`, `item_labour`, `hsn_sac_code`) VALUES
(1, 'Pulsar Bracket (3 W4S)', 2.03, 0.26, ''),
(2, 'Cap A 128', 0.55, 0.07, ''),
(3, 'Plug A 128', 0.34, 0.04, ''),
(4, 'Plug A 392', 0.4, 0.05, ''),
(5, 'Pipe Connector (Dia 3.5)', 0.42, 0.05, ''),
(6, 'Wiper Terminal (Labour Job)', 0.2, 0, ''),
(7, 'Bracket Capacitor (4Hole)', 1.33, 0.17, ''),
(8, 'Light Terminal (2 Leg30 Deg)', 0.5, 0.06, ''),
(9, 'Retainer  A170', 1.15, 0.15, ''),
(10, 'Spacer', 0.72, 0.09, ''),
(11, 'Washer Thrust  (A-301)', 0.35, 0, ''),
(12, 'Bracket Capacitor (Big)', 2.17, 0.28, ''),
(13, 'Bracket Capacitor  ( 3 Hole)', 1.33, 0.17, ''),
(14, 'SP-16 Brass Bush', 0.32, 0, ''),
(15, 'Earth Terminal (I.G.COIL)', 0.47, 0.06, ''),
(16, 'Earth Ter. Discover (259 Big)', 0.47, 0.06, ''),
(17, 'Light Terminal  (2 Leg U)', 0.5, 0.06, ''),
(18, 'Pipe Connector (Dia 2.5)', 0.31, 0.04, ''),
(19, 'Terminal Bracket Capacitor', 0.23, 0.03, ''),
(20, 'Earth Ter. 5 Hole With Slot', 0.62, 0.08, ''),
(21, 'Earth Terminal (5 Hole)', 0.62, 0.08, ''),
(22, 'Light Terminal (Bravo)', 0.58, 0.07, ''),
(23, 'Lock Retaining Spring', 0.93, 0.12, ''),
(24, 'IRVM Washer', 0.28, 0.04, ''),
(25, 'Pipe Connector ( Dia 3.0)', 0.46, 0.06, ''),
(26, 'Pipe Connector  (3.8)', 0.44, 0.05, ''),
(27, 'Pipe Connector Slot Terminal for Greaves Alternator 18', 0.3, 0.04, ''),
(28, 'Condonsar Bracket', 1.54, 0.2, ''),
(29, 'Terminal-1 LH Oil Pump ', 0.5, 0.06, ''),
(30, 'Brass Insert', 1.05, 0.13, ''),
(31, 'Terminal Split Bobin 8 Pole {U Bkt}', 0.34, 0.04, ''),
(32, 'Pipe Connector With Slot Big', 0.39, 0.05, ''),
(33, 'Terminal 27(BR Holder)', 0.4, 0.05, ''),
(34, 'Flasher Terminal Coupler', 0.7, 0.09, ''),
(35, 'Terminal Main', 0.98, 0.13, ''),
(36, 'Vibration Plate', 0.94, 0.12, ''),
(37, '1.0x20mm Washer C80 Ponycab', 0.69, 0.09, ''),
(38, 'Push Nut', 0.34, 0.04, ''),
(39, 'Brass Brush Box', 2, 0.26, ''),
(40, 'U Clip Nut', 0.45, 0, ''),
(41, '2.5 CRCA Terminal', 0.82, 0.1, ''),
(42, 'Connector Link', 0.58, 0.8, ''),
(43, 'Contact Link', 0.92, 0.12, ''),
(44, 'Pulsar New M6323', 1.67, 0.22, ''),
(45, 'Terminal 4 Leg 2 Hole', 0.32, 0.04, ''),
(46, 'Cover Body 1291Z & 1293Z', 0.85, 0.11, ''),
(47, 'Plug A 157', 0.35, 0.05, ''),
(48, 'Terminal-1 RH Oil Pump ', 0.5, 0.06, ''),
(51, 'Brush Box (Labour Job)', 0.25, 0, ''),
(52, 'Cup Washer B1-BR-002', 0.31, 0, ''),
(53, 'Clamp 40713 High Power', 0.8, 0.1, ''),
(56, 'Insert A', 0.93, 0.12, ''),
(57, 'Insert B', 1.29, 0.17, ''),
(58, 'Cable Clamp P1 Wirecut Samples', 5500, 0, ''),
(59, 'A2739-11-101-0 Shorting Clip Dfseries (Auto Shunt Clip)', 2.5, 0, ''),
(60, 'Trinity Oil Seal Cap', 1200, 0, ''),
(61, 'Bus Bar', 0.5, 0, ''),
(62, 'Be Copper B1-CU-004', 0.2, 0, ''),
(63, '2No 2Nc P02520602A', 0.43, 0, ''),
(64, 'Bracket 18 B1-MS-007 ', 5.25, 0, ''),
(65, 'Bfs 01 Switch ounting Plate F1-Ms-001', 1.5, 0, ''),
(66, 'Bfs 01 Lever F1-Ms-001', 0.5, 0, ''),
(67, 'Fin Tag B1-Br-001', 0.24, 0, ''),
(68, 'Cup Washer B1-Br-002', 0.31, 0, ''),
(69, 'Bfs 03 S M Plate F1-Ms-008', 3.5, 0, ''),
(70, 'Roller Lever Short (RA) 03-B1-SS-003', 3.3, 0, ''),
(71, 'LSR Plate', 5.75, 0, ''),
(72, '1No 1Nc P02470602', 0.4, 0, ''),
(73, 'Roller Leaf B3-SS-010', 1.8, 0, ''),
(74, 'L6-PB-001 Moving Contact', 0.56, 0, ''),
(75, 'U Bracket-14 -B1-Ms-005', 1.37, 0, ''),
(76, 'P02470502A Shorting Contact', 1.23, 0, ''),
(77, 'Tool Set Pulsar Bracket (M6323)', 35000, 0, ''),
(78, 'Tool Set Connector Link', 16000, 0, ''),
(79, 'Tool Set Contact Link', 16000, 0, ''),
(80, 'Wirecut Samples Terminal A,B,C', 7000, 0, ''),
(81, 'Tool Set Cover Body ', 25000, 0, ''),
(82, 'Tool Set Terminal 4 Leg 2 Hole', 17000, 0, ''),
(83, 'Tool Modify Pulsar Bracket (M6323)', 10000, 0, ''),
(84, 'Sample Lot Retainer', 1000, 0, ''),
(85, 'Plain Lever Short -02 B1 SS-001', 3.3, 0, ''),
(86, 'Bfs 02 S M Plate F1 Ms-006', 3.25, 0, ''),
(87, 'Trangular Bracket F1 Ms  -012', 2.5, 0, ''),
(88, 'Tool Set Insert A', 32000, 0, ''),
(89, 'Tool Set Insert B', 35000, 0, ''),
(90, 'Tool Set Clamp', 58000, 0, ''),
(91, 'Tool Set Clamp 40713 High Power', 32000, 0, ''),
(92, 'Bfs 01 Wire Clip F1 Ms-003', 0.4, 0, ''),
(93, 'Be Copper Scrap', 0, 0, ''),
(94, 'Wirecut Samples Mounting Plate ', 2000, 0, ''),
(95, 'Prototype Samples PG Plate', 5000, 0, ''),
(96, 'Wirecut Samples Cable Clamp 40782', 7000, 0, ''),
(97, 'Cable Clamp 40713 High Power', 0.8, 0.1, ''),
(98, 'Cable Clamp 40782', 1.34, 0.18, ''),
(99, 'Clamp 40768', 1.28, 0.17, ''),
(100, 'Atul Ent PPC 01/04/16', 2319420.82, 0, ''),
(101, 'S S Mounting Clip 0.30', 0.77, 0.1, ''),
(102, 'BFS-03 Wire Clip F1-MS-005 ', 0.5, 0, ''),
(103, 'Tool Set Finger', 16500, 0, ''),
(104, 'Tool Set Wire Clip 0.60', 16500, 0, ''),
(105, 'Tool Set Clamp 40727', 58000, 0, ''),
(106, 'Tool Set Clamp 40768', 58000, 0, ''),
(107, 'Tool Set Clamp 40754', 68000, 0, ''),
(108, 'Tool Set Clamp 40782', 62000, 0, ''),
(109, 'Tool Set Mounting Clip', 20000, 0, ''),
(110, 'Tool Modify Insert A & B', 8000, 0, ''),
(111, 'Tool Set Brush Box 1.2', 49000, 0, ''),
(112, 'Wirecut Samples Cable Clamp 40754', 10000, 0, ''),
(113, 'BFS-10 Spring Clip', 3, 0, ''),
(114, 'BFS-10 Shaft Holder', 5.25, 0, ''),
(115, '1.20 Brush Box', 1.26, 0.16, ''),
(116, 'Brass Bush Capsul Type', 1.92, 0.25, ''),
(117, 'Brush Box 1.20', 1.26, 0.16, '');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `srno` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`srno`, `username`, `password`, `datetime`) VALUES
(1, 'admin', 'admin', '2016-11-23 12:23:09'),
(2, 'sai', 'sai', '2016-12-26 05:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `precision_bill`
--

CREATE TABLE `precision_bill` (
  `srno` int(11) NOT NULL,
  `bill_no` varchar(250) NOT NULL,
  `buyer_name` varchar(250) NOT NULL,
  `buyer_address` varchar(250) NOT NULL,
  `buyer_gst` text NOT NULL,
  `amount` float NOT NULL,
  `other_charges` float NOT NULL,
  `cgst` double NOT NULL,
  `sgst` double NOT NULL,
  `sell_date` date NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='PPC BILL';

--
-- Dumping data for table `precision_bill`
--

INSERT INTO `precision_bill` (`srno`, `bill_no`, `buyer_name`, `buyer_address`, `buyer_gst`, `amount`, `other_charges`, `cgst`, `sgst`, `sell_date`, `creation_date`) VALUES
(1, '889', 'Atul Enterprises', 'S No-179, Atlas SteelPawarwasti, Kudalwadi Chikhli Pune.', '27AANPC8780E1ZH', 171075, 500, 14, 14, '2017-07-12', '2017-07-12 04:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `precision_company_paid`
--

CREATE TABLE `precision_company_paid` (
  `srno` int(11) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `paid_date` date NOT NULL,
  `amount` varchar(250) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `precision_description`
--

CREATE TABLE `precision_description` (
  `srno` int(11) NOT NULL,
  `billno` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `hsn_sac_code` text NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `weight` float NOT NULL,
  `item_rate` float NOT NULL,
  `labour` varchar(250) NOT NULL,
  `creation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `precision_description`
--

INSERT INTO `precision_description` (`srno`, `billno`, `item_name`, `hsn_sac_code`, `quantity`, `weight`, `item_rate`, `labour`, `creation_date`) VALUES
(1, 889, 'Cap A 128', '', '120000', 200, 0.55, '0.07', '2017-07-12 04:14:14'),
(2, 889, 'Plug A 128', '', '115000', 85.5, 0.34, '0.04', '2017-07-12 04:15:11'),
(4, 889, 'Plug A 157', '', '40500', 36.82, 0.35, '0.05', '2017-07-12 04:16:48'),
(5, 889, 'Plug A 392', '', '56000', 80, 0.4, '0.05', '2017-07-12 04:17:14'),
(6, 889, 'Terminal Main', '', '30000', 24.48, 0.98, '0.13', '2017-07-12 04:18:05');

-- --------------------------------------------------------

--
-- Table structure for table `precision_sample`
--

CREATE TABLE `precision_sample` (
  `srno` int(11) NOT NULL,
  `bill_srno` int(11) NOT NULL,
  `sample1` text NOT NULL,
  `sample2` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_fine`
--

CREATE TABLE `purchase_fine` (
  `srno` int(11) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `pur_date` date DEFAULT NULL,
  `party_name` varchar(20) DEFAULT NULL,
  `total` float DEFAULT NULL,
  `tax` float DEFAULT NULL,
  `othercharges` float DEFAULT NULL,
  `grand_total` float DEFAULT NULL,
  `paid` float DEFAULT NULL,
  `cheque_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_fine_paid`
--

CREATE TABLE `purchase_fine_paid` (
  `srno` int(11) NOT NULL,
  `srnoofpurchase_fine` int(11) NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `details` varchar(250) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_precision`
--

CREATE TABLE `purchase_precision` (
  `srno` int(11) NOT NULL,
  `bill_no` int(11) NOT NULL,
  `pur_date` date NOT NULL,
  `party_name` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL,
  `tax` varchar(250) NOT NULL,
  `othercharges` varchar(250) NOT NULL,
  `grand_total` varchar(250) NOT NULL,
  `paid` varchar(250) NOT NULL,
  `cheque_no` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_precision_paid`
--

CREATE TABLE `purchase_precision_paid` (
  `srno` int(11) NOT NULL,
  `srnoofpurchase_precision` int(11) NOT NULL,
  `paid_date` date NOT NULL,
  `paid_amount` int(11) NOT NULL,
  `details` varchar(250) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `reminder`
--

CREATE TABLE `reminder` (
  `srno` int(11) NOT NULL,
  `period` text NOT NULL COMMENT 'd-daily, m-monthly, y-yearly',
  `remindertext` text NOT NULL,
  `date` date NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reminder`
--

INSERT INTO `reminder` (`srno`, `period`, `remindertext`, `date`, `datetime`) VALUES
(5, 'y', 'Happy Birthday Pradnya Madam', '2016-09-26', '2016-12-26 06:05:57'),
(6, 'y', 'Happy Birthday John Rodrigues', '2016-12-13', '2016-12-26 07:18:38'),
(7, 'y', 'Happy Birthday Simon Appa', '2016-12-14', '2016-12-26 07:19:11'),
(8, 'y', 'Happy Birthday John Correia', '2016-06-09', '2016-12-26 07:19:56'),
(10, 'y', 'Happy Birthday Sanju', '2016-12-31', '2016-12-31 04:14:06'),
(11, 'y', 'Happy Birthday Nelson', '2017-11-02', '2017-04-27 10:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `salarygiven`
--

CREATE TABLE `salarygiven` (
  `srno` int(11) NOT NULL,
  `date` date NOT NULL,
  `perdaysal` int(11) NOT NULL,
  `nodaysfilled` int(11) NOT NULL,
  `totalsalary` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `workerno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

CREATE TABLE `track` (
  `srno` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `pagename` text NOT NULL,
  `details` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `worker`
--

CREATE TABLE `worker` (
  `srno` int(11) NOT NULL,
  `worker_name` varchar(250) NOT NULL,
  `phone` varchar(250) NOT NULL,
  `address` varchar(250) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(11) DEFAULT NULL,
  `salary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `worker`
--

INSERT INTO `worker` (`srno`, `worker_name`, `phone`, `address`, `datetime`, `is_delete`, `salary`) VALUES
(1, 'Amrut Bhailal Mestry', '9665061706', 'Virar East.', '2016-12-06 11:54:34', 1, 300),
(2, 'Pradnya Pratap Patil', '9011520566', 'At -post -Usarani ,Near Baneshewer,Mandhir,Kunabi Ali, pin-401102', '2016-12-27 11:29:45', NULL, 0),
(3, 'Mukesh Jatankumar Jain', '8552095929', 'Swamiji Ki Bagiya Ward No 20 Ashok Nagar Madhya Pradesh 473 331', '2016-12-27 11:25:36', NULL, 250),
(4, 'Amrut Bhailal Mestry', '9665061706', 'Virar East.', '2016-12-26 07:15:32', NULL, 300),
(5, 'Sunanda Vilas Sutar', '9273292104', 'Saphale (West)', '2016-12-27 11:31:00', NULL, 180),
(6, 'Anita Pandurang Bombade', '00', 'Saphale(West)', '2016-12-27 11:26:12', NULL, 160),
(7, 'megha Pramod Tumde', '9145623298', 'Saphale (West)', '2016-12-27 11:26:41', NULL, 175),
(8, 'Nirmala', '00', 'Saphale (East)', '2016-12-27 11:30:46', NULL, 180),
(9, 'Jayshree. C. Manjrekar', '982325279', 'Virar West', '2016-12-27 11:14:27', NULL, 175),
(10, 'Rupali', '7887501930', 'Saphale (West)', '2016-12-27 11:30:04', NULL, 175),
(11, 'Rehana Khan', '7378591594', 'Virar East.', '2016-12-27 11:16:19', NULL, 170),
(12, 'Sham Gharat', '0', 'Saphale (West)', '2016-12-27 11:17:23', NULL, 210),
(13, 'Haresh', '7030156175', 'Virar West', '2016-12-27 11:18:20', NULL, 225),
(14, 'Prakash Kaka', '0', 'Virar East.', '2016-12-27 11:18:53', NULL, 220),
(15, 'Mukesh Jateen kumar', '9503268520', 'Virar East.', '2016-12-27 11:19:34', 1, 250),
(16, 'Dashrath', '0', 'Virar East.', '2016-12-27 11:19:57', NULL, 200),
(17, 'Sharda', '967301735', 'Virar East.', '2016-12-27 11:20:55', NULL, 160),
(18, 'Shweta', '9619949241', 'Virar East.', '2016-12-27 11:21:45', NULL, 160),
(19, 'Akshay', '9552068091', 'Virar East.', '2016-12-27 11:31:51', 1, 200),
(20, 'Swati', '0', 'Virar East.', '2016-12-27 11:23:24', NULL, 160),
(21, 'Ashish', '0', 'Virar East.', '2016-12-27 11:23:49', NULL, 200),
(22, 'Rakesh bagat', '0', 'Virar East.', '2016-12-27 11:24:14', NULL, 180),
(23, 'Sunil', '0', 'Virar East.', '2016-12-27 11:24:46', NULL, 200),
(24, 'Rambadan', '0', 'Virar East.', '2016-12-27 11:25:08', NULL, 200),
(25, 'Akshay', '9552068091', 'Virar East.', '2016-12-27 11:32:58', NULL, 200);

-- --------------------------------------------------------

--
-- Table structure for table `workerloan`
--

CREATE TABLE `workerloan` (
  `srno` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `workersrno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Loan Given to worker';

-- --------------------------------------------------------

--
-- Table structure for table `workerloanpaid`
--

CREATE TABLE `workerloanpaid` (
  `srno` int(11) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `workersrno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Loan cleared by worker';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `company_details`
--
ALTER TABLE `company_details`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `fine_bill`
--
ALTER TABLE `fine_bill`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `fine_company_paid`
--
ALTER TABLE `fine_company_paid`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `fine_description`
--
ALTER TABLE `fine_description`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `fine_sample`
--
ALTER TABLE `fine_sample`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `item_list`
--
ALTER TABLE `item_list`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `precision_bill`
--
ALTER TABLE `precision_bill`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `precision_company_paid`
--
ALTER TABLE `precision_company_paid`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `precision_description`
--
ALTER TABLE `precision_description`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `precision_sample`
--
ALTER TABLE `precision_sample`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `purchase_fine`
--
ALTER TABLE `purchase_fine`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `purchase_fine_paid`
--
ALTER TABLE `purchase_fine_paid`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `purchase_precision`
--
ALTER TABLE `purchase_precision`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `purchase_precision_paid`
--
ALTER TABLE `purchase_precision_paid`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `reminder`
--
ALTER TABLE `reminder`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `salarygiven`
--
ALTER TABLE `salarygiven`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `track`
--
ALTER TABLE `track`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `worker`
--
ALTER TABLE `worker`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `workerloan`
--
ALTER TABLE `workerloan`
  ADD PRIMARY KEY (`srno`);

--
-- Indexes for table `workerloanpaid`
--
ALTER TABLE `workerloanpaid`
  ADD PRIMARY KEY (`srno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `company_details`
--
ALTER TABLE `company_details`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `fine_bill`
--
ALTER TABLE `fine_bill`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fine_company_paid`
--
ALTER TABLE `fine_company_paid`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fine_description`
--
ALTER TABLE `fine_description`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fine_sample`
--
ALTER TABLE `fine_sample`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item_list`
--
ALTER TABLE `item_list`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;
--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `precision_bill`
--
ALTER TABLE `precision_bill`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `precision_company_paid`
--
ALTER TABLE `precision_company_paid`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `precision_description`
--
ALTER TABLE `precision_description`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `precision_sample`
--
ALTER TABLE `precision_sample`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_fine`
--
ALTER TABLE `purchase_fine`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_fine_paid`
--
ALTER TABLE `purchase_fine_paid`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_precision`
--
ALTER TABLE `purchase_precision`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `purchase_precision_paid`
--
ALTER TABLE `purchase_precision_paid`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reminder`
--
ALTER TABLE `reminder`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `salarygiven`
--
ALTER TABLE `salarygiven`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `track`
--
ALTER TABLE `track`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `worker`
--
ALTER TABLE `worker`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `workerloan`
--
ALTER TABLE `workerloan`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `workerloanpaid`
--
ALTER TABLE `workerloanpaid`
  MODIFY `srno` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
