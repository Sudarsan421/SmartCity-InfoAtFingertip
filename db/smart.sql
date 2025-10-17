-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 22, 2019 at 07:36 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `smartcity`
--
CREATE DATABASE `smartcity` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smartcity`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `aid` varchar(10) NOT NULL,
  `logname` varchar(20) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(30) NOT NULL,
  `phone` varchar(40) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `cadd` varchar(100) NOT NULL,
  `padd` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `logname`, `fullname`, `fathername`, `dob`, `gender`, `phone`, `mail`, `cadd`, `padd`) VALUES
('A00001', 'SUBHASHREE', 'SUBHASHREE MOHANTY', 'PADARBINDA MOHANTY', '1993-06-03', 'Female', '9876543218', 'subhashree@gmail.com', 'BHUBANESWAR', 'KENDRAPARA');

-- --------------------------------------------------------

--
-- Table structure for table `blddonation`
--

CREATE TABLE IF NOT EXISTS `blddonation` (
  `did` varchar(10) NOT NULL,
  `oid` varchar(10) NOT NULL,
  `uid` varchar(20) NOT NULL COMMENT 'donor id, i.e. user id',
  `grp` varchar(2) NOT NULL,
  `rhfac` varchar(3) NOT NULL,
  `dntdate` date NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blddonation`
--

INSERT INTO `blddonation` (`did`, `oid`, `uid`, `grp`, `rhfac`, `dntdate`, `status`) VALUES
('D0001', 'O00016', 'U00005', 'O', '+ve', '2016-04-18', 'Accepted'),
('D0002', 'O00016', 'U00001', 'O', '+ve', '2016-04-18', 'Accepted'),
('D0003', 'O00016', 'U00006', 'A', '+ve', '2016-04-21', 'Pending'),
('D0004', 'O00002', 'U0001', 'O', '+ve', '2017-06-29', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE IF NOT EXISTS `blood` (
  `bldid` varchar(10) NOT NULL,
  `oid` varchar(10) NOT NULL,
  `grp` varchar(2) NOT NULL,
  `rhfac` varchar(3) NOT NULL,
  `unit` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`bldid`, `oid`, `grp`, `rhfac`, `unit`) VALUES
('BD0001', 'O00016', 'O', '+ve', 2);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `bookid` varchar(30) NOT NULL,
  `vid` varchar(30) NOT NULL,
  `lat` varchar(200) NOT NULL,
  `lang` varchar(200) NOT NULL,
  `bookfromdate` date NOT NULL,
  `bookfromtime` time NOT NULL,
  `booktilldate` date NOT NULL,
  `booktilltime` time NOT NULL,
  `dist` float NOT NULL,
  `price` float NOT NULL,
  `uid` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`bookid`, `vid`, `lat`, `lang`, `bookfromdate`, `bookfromtime`, `booktilldate`, `booktilltime`, `dist`, `price`, `uid`, `type`, `status`) VALUES
('B00001', 'V00001', '', '', '2016-03-27', '00:00:00', '2016-04-16', '00:00:00', 30, 400, 'U0001', 'Ambulance', 'Complete'),
('B00002', 'V00011', '', '', '2016-03-18', '00:00:00', '2016-03-19', '00:00:00', 170, 1650, 'U0001', 'Mortuary Van', 'Complete'),
('B00003', 'V00003', '', '', '2016-04-17', '00:00:00', '2016-04-17', '00:00:00', 20, 200, 'U0001', 'Ambulance', 'Complete'),
('B00004', 'V00004', '', '', '2016-04-17', '00:00:00', '2016-04-17', '00:00:00', 0, 0, 'U0001', 'Ambulance', 'Complete'),
('B00005', 'V00006', '20.28522393003601', '85.84788680076599', '2016-04-17', '16:42:00', '2016-04-17', '16:42:00', 0, 0, 'U0002', 'Ambulance', 'Complete'),
('B00006', 'V00005', '20.283815045363824', '85.86475253105164', '2016-04-17', '22:03:00', '2016-04-17', '16:16:00', 80, 460, 'U0001', 'Mortuary Van', 'Pending'),
('B00007', 'V00011', '20.275240699745204', '85.86458086967468', '2016-04-17', '23:00:00', '2016-04-17', '23:00:00', 0, 0, 'U0001', 'Mortuary Van', 'Pending'),
('B00008', 'V00001', '20.310410613610458', '85.81954926252365', '2017-06-26', '18:49:00', '2017-06-26', '18:49:00', 0, 0, 'U0001', 'Ambulance', 'Pending'),
('B00009', 'V00002', '20.29439646248358', '85.81615895032883', '2017-06-27', '11:48:00', '2017-06-27', '11:48:00', 0, 0, 'U0001', 'Mortuary Van', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `booking1`
--

CREATE TABLE IF NOT EXISTS `booking1` (
  `bid` varchar(40) NOT NULL,
  `rid` varchar(40) NOT NULL,
  `hid` varchar(40) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `cid` varchar(20) NOT NULL,
  `noroom` int(11) NOT NULL,
  `froms` date NOT NULL,
  `tos` date NOT NULL,
  `bkdt` date NOT NULL COMMENT 'booking date',
  `amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking1`
--

INSERT INTO `booking1` (`bid`, `rid`, `hid`, `pid`, `cid`, `noroom`, `froms`, `tos`, `bkdt`, `amount`) VALUES
('B00001', 'R00004', 'H00003', 'PL00002', 'C00001', 1, '2019-03-26', '2019-03-28', '2019-03-25', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE IF NOT EXISTS `contactus` (
  `feedbackid` varchar(10) NOT NULL,
  `id` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(70) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `message` varchar(500) NOT NULL,
  `reply` varchar(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`feedbackid`, `id`, `date`, `type`, `name`, `email`, `phone`, `message`, `reply`, `status`) VALUES
('FB00007', 'U0001', '2017-06-26', 'user', 'Seshadri Samal', 'sesu@gmail.com', '876543', 'asdfsad', '', 'Pending'),
('FB00006', 'V00001', '2017-06-21', 'Ambulance', 'OD 33 BH 0123', 'qq', '9911882277 ', 'sadadassa', 'omk', 'Completed'),
('FB00002', 'O00002', '2017-06-08', 'BloodBank', 'Red Cross', 'redcrossbbsr1@gmail.com', '9778159325', 'dfsg', 'hello', 'Completed'),
('FB00001', 'O00001', '2017-06-08', 'Hospital', 'Kalinga Hospital', 'gg@gmail.com', '9123456789', 'sdfa dsfsad', 'hi', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cid` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL,
  `addres` varchar(400) NOT NULL,
  `phno` varchar(20) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(40) NOT NULL,
  `mstatus` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cid`, `name`, `addres`, `phno`, `mail`, `dob`, `gender`, `mstatus`) VALUES
('U0003', 'asdf', '23', '2323', 'saswati@gmail.com', '2019-05-07', 'male', 'married'),
('C00001', 'Rajesh Mohanty', 'BBSR', '9876712333', 'raj', '1990-09-21', 'Male', 'Married');

-- --------------------------------------------------------

--
-- Table structure for table `dept`
--

CREATE TABLE IF NOT EXISTS `dept` (
  `depid` varchar(15) NOT NULL,
  `oid` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `timing` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dept`
--

INSERT INTO `dept` (`depid`, `oid`, `name`, `type`, `timing`) VALUES
('DE00001', 'O00001', 'Gastroentrology', 'Super Speciality', '9 AM to 5PM on Monday & Thursday'),
('DE00002', 'O00001', 'Burn and Plastic surgery', 'Burn Unit', '8:00 to 16:00 Hours'),
('DE00003', 'O00001', 'Cardiology', 'Trauma Center', '10:00 to 16:00 Hours'),
('DE00004', 'O00015', 'General Surgery', 'OPD', '8:00 to 12:00 Hours'),
('DE00005', 'O00001', 'Neurosurgery', 'Super Speciality', '9 AM to 5PM'),
('DE00006', 'O00001', 'Endocrionology', 'OPD', '9 AM to 5PM'),
('DE00007', 'O00015', 'E.N.T', 'OPD', '2:00 to 4:00 Hours'),
('DE00008', 'O00001', 'Orthopedic', 'OPD', '9:00 AM to 1:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
  `doid` varchar(15) NOT NULL,
  `oid` varchar(15) NOT NULL,
  `deptid` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `timing` varchar(30) NOT NULL,
  `fee` float NOT NULL,
  `days` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doid`, `oid`, `deptid`, `name`, `timing`, `fee`, `days`) VALUES
('D00001', 'O00001', 'DE00002', 'Dr. Jayant Kumar Mahapatra', '8:00 to 16:00 Hours', 200, ' Monday, Wednesday, Thursday'),
('D00002', 'O00001', 'DE00003', 'Dr. Akshya Kumar Samal', '8:00 to 16:00 Hours', 0, ' Monday, Wednesday, Thursday'),
('D00003', 'O00001', 'DE00006', 'Dr. Kishore Kumar Behera', '8:00 to 16:00 Hours', 0, 'mon-fri'),
('D00004', 'O00001', 'DE00005', 'Dr Soubhagya Panigrahi', '8:00 to 16:00 Hours', 0, 'mon-fri'),
('D00005', 'O00015', 'DE00004', 'Biren Padhy', '8:00 to 16:00 Hours', 500, 'mon-fri'),
('D00006', 'O00015', 'DE00007', 'DR R.V.S Kumar', '8:00 to 16:00 Hours', 0, 'mon-fri'),
('D00007', 'O00001', 'DE00001', 'Dr S.N Swain', '9:00 TO 5:00 Hours', 0, 'Monday,Thursday'),
('D00008', 'O00001', 'DE00003', 'Dr. Suresh Kumar Behera', '10:00 to 16:00 Hours', 0, 'All Days Except Sunday'),
('D00009', 'O00001', 'DE00008', 'Dr B. K. Saha', '9:00 AM to 1:00 PM', 300, 'Monday-Friday');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` varchar(20) NOT NULL COMMENT 'employee id',
  `name` varchar(60) NOT NULL,
  `fname` varchar(60) NOT NULL COMMENT 'father name',
  `dob` date NOT NULL,
  `doj` date NOT NULL COMMENT 'date of joining',
  `gender` varchar(10) NOT NULL,
  `mstatus` varchar(15) NOT NULL COMMENT 'marital status',
  `phone` varchar(50) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `cadd` varchar(100) NOT NULL COMMENT 'current address',
  `padd` varchar(100) NOT NULL COMMENT 'permanent address',
  `qual` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `name`, `fname`, `dob`, `doj`, `gender`, `mstatus`, `phone`, `mail`, `cadd`, `padd`, `qual`) VALUES
('E00001', 'Romita Agarwal', 'K Agarwal', '1990-07-18', '1111-11-11', 'Female', 'Married', '9178923214', 'romi@gmail.com', 'SEATEL', 'MUMBAI', 'B Tech');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE IF NOT EXISTS `feedback` (
  `feid` int(10) NOT NULL,
  `cid` int(10) NOT NULL,
  `toipc` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `dof` int(10) NOT NULL,
  `ans` varchar(100) NOT NULL,
  `ansdate` int(10) NOT NULL,
  `ansby` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--


-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE IF NOT EXISTS `hotel` (
  `hid` varchar(40) NOT NULL,
  `pid` varchar(20) NOT NULL,
  `type` varchar(40) NOT NULL,
  `name` varchar(40) NOT NULL COMMENT 'hotel name',
  `phno` varchar(12) NOT NULL,
  `address` varchar(60) NOT NULL,
  `loca` varchar(50) NOT NULL COMMENT 'location of the hotel'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hid`, `pid`, `type`, `name`, `phno`, `address`, `loca`) VALUES
('H00001', 'PL00001', '3 Star', 'Sri Guruji', '9123399332', 'Swarga Dwar', 'In Front of Sea Beach'),
('H00002', 'PL00001', '3 Star', 'Le Patron', '9821231298', 'VIP Road', 'VIP Read'),
('H00003', 'PL00002', 'Normal', 'Sea View', '9123456789', 'Konark', 'Chnadrabhaga'),
('H00004', 'PL00006', 'Normal', 'asd', '9124543256', 'asdf', 'sadasd');

-- --------------------------------------------------------

--
-- Table structure for table `instcrs`
--

CREATE TABLE IF NOT EXISTS `instcrs` (
  `incrid` varchar(15) NOT NULL,
  `instid` varchar(15) NOT NULL,
  `course` varchar(30) NOT NULL,
  `fee` varchar(20) NOT NULL,
  `dur` varchar(20) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `startson` date NOT NULL,
  `descr` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instcrs`
--

INSERT INTO `instcrs` (`incrid`, `instid`, `course`, `fee`, `dur`, `timing`, `startson`, `descr`) VALUES
('C0001', 'A0001', 'CSE', '1200000', '48', '6', '2017-08-15', 'Good Course'),
('C0002', 'A0001', 'MBA', 'INR 11.95 Lakh', '365', '4', '2017-07-04', 'Very good in business point of view ');

-- --------------------------------------------------------

--
-- Table structure for table `institute`
--

CREATE TABLE IF NOT EXISTS `institute` (
  `instid` varchar(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(30) NOT NULL,
  `dor` date NOT NULL,
  `cadd` varchar(200) NOT NULL,
  `photo` varchar(15) NOT NULL,
  `phone1` varchar(15) NOT NULL,
  `phone2` varchar(15) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `about` varchar(500) NOT NULL,
  `lati` varchar(30) NOT NULL,
  `longi` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `institute`
--

INSERT INTO `institute` (`instid`, `name`, `type`, `dor`, `cadd`, `photo`, `phone1`, `phone2`, `mail`, `about`, `lati`, `longi`) VALUES
('A0001', 'KIIT', 'UNIVERSITY', '2017-07-03', 'PATIA', 'O00004', '9786545357', '9887645443', 'kiit@kiit.org', 'KIIT is the No-1 Unniversity in ODISHA according to NAAC', '20.3553', '85.8153');

-- --------------------------------------------------------

--
-- Table structure for table `lab`
--

CREATE TABLE IF NOT EXISTS `lab` (
  `tid` varchar(10) NOT NULL,
  `oid` varchar(10) NOT NULL,
  `tname` varchar(30) NOT NULL,
  `fees` int(10) NOT NULL,
  `days` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lab`
--

INSERT INTO `lab` (`tid`, `oid`, `tname`, `fees`, `days`) VALUES
('T00001', 'O00003', 'Lipid Profile', 1000, 'All Days'),
('T00002', 'O00003', 'Blood Sugar Test', 90, 'ALL 7 DAYS'),
('T00003', 'O00003', 'Electrolytes Test', 450, 'ALL 7 DAYS'),
('T00004', 'O00003', 'Dengue IgG Test', 450, 'ALL 7 DAYS'),
('T00005', 'O00003', 'Hemoglobin (Hb) Test', 50, 'ALL 7 DAYS'),
('T00006', 'O00003', 'Globulin Test', 475, 'ALL 7 DAYS'),
('T00007', 'O00003', 'HbA1C Test', 340, 'ALL 7 DAYS'),
('T00008', 'O00009', 'HCV Antibody Test', 540, 'ALL 7 DAYS'),
('T00009', 'O00003', 'Bleeding / Clotting Time Test', 40, 'ALL 7 DAYS'),
('T00010', 'O00003', 'Platelet Count', 80, 'ALL 7 DAYS'),
('T00011', 'O00003', 'Folic Acid Test', 300, 'ALL 7 Days'),
('T00012', 'O00003', 'HIV Test', 150, 'ALL 7 DAYS'),
('T00013', 'O00003', 'Microfilaria Parasite Test', 200, 'ALL 7 DAYS'),
('T00014', 'O00003', 'PCV (Packed Cell Volume) Test', 430, 'ALL 7 DAYS'),
('T00015', 'O00003', 'Vitamin D Test', 1000, 'ALL 7 DAYS'),
('T00016', 'O00003', 'Vitamin B12 Test', 500, ''),
('T00017', 'O00003', 'Urine Routine', 40, 'ALL 7 DAYS'),
('T00018', 'O00003', 'Uric Acid Test', 150, 'ALL 7 DAYS'),
('T00019', 'O00003', 'Total Protein Test', 100, 'ALL 7 DAYS'),
('T00020', 'O00003', 'Liver Function Test', 400, 'Mon-Sat'),
('T00021', 'O00003', 'Lipoprotein A / LP(a) Test', 200, 'Mon-Sat'),
('T00022', 'O00003', 'AFP (Alpha Feto Protein) Test', 100, 'Mon-Sat');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `id` varchar(20) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `url`) VALUES
('A0001', 'http://www.kiit.ac.in/');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` varchar(15) NOT NULL,
  `logname` varchar(30) NOT NULL,
  `pwd` varchar(10) NOT NULL,
  `dor` date NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` varchar(15) NOT NULL,
  `secques` varchar(40) NOT NULL,
  `secans` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `logname`, `pwd`, `dor`, `type`, `status`, `secques`, `secans`) VALUES
('U0001', 'sesu', '123456', '2017-03-23', 'user', 'y', 'who is your Best Friend . ?', 'noone'),
('U0002', 'Ritu', 'ritu', '2017-03-24', 'user', 'y', 'who is your favourite Actor. ?', 'noone'),
('C00001', 'raj', '123456', '2019-05-13', 'Customer', 'Y', 'Who is my favourite actor ?', 'salman'),
('O00003', 'global', 'global', '2017-06-01', 'Path Lab', 'Y', 'When was your organisation established?', '1995'),
('O00002', 'redcross', '123456', '2017-06-08', 'BloodBank', 'Y', 'When was your organisation established?', '2006'),
('A00001', 'gunu', 'g', '2017-03-11', 'Admin', 'Y', 'Who am I ?', 'Girl'),
('O00001', 'kalinga', 'kalinga', '2017-05-15', 'Hospital', 'Y', 'When was your organisation founded?', 'who'),
('O00002', 'redcross', '123456', '2017-06-08', 'BloodBank', 'Y', 'When was your organisation established?', '2006'),
('O00005', 'ShreeHospital', 'hospital', '2017-07-01', 'Hospital', 'Y', 'When was your organisation founded?', '1987'),
('V00002', 'healthdept', 'healthdept', '2017-06-21', 'Mortuary Van', 'Y', 'What is the name of your driver?', 'Jilu'),
('O00004', 'IMS&SUM', 'IMS', '2017-06-26', 'Hospital', 'Y', 'When was your organisation founded?', '2003'),
('V00003', 'Biswanath', '123456', '2017-06-26', 'Ambulance', 'Y', 'What is the name of your driver?', 'Biswanath'),
('A0001', 'KIIT', 'k', '2017-07-03', 'Institute', 'Y', 'When the Organization is found ?', '1990'),
('E00001', 'romita', 'r', '2019-05-13', 'Employee', 'Y', 'What is my pet name ?', 'john');

-- --------------------------------------------------------

--
-- Table structure for table `organisation`
--

CREATE TABLE IF NOT EXISTS `organisation` (
  `oid` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `plotno` varchar(8) NOT NULL,
  `area` varchar(150) NOT NULL,
  `city` varchar(15) NOT NULL,
  `pincode` varchar(8) NOT NULL,
  `dist` varchar(15) NOT NULL,
  `state` varchar(15) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `lati` varchar(60) NOT NULL,
  `longi` varchar(60) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `organisation`
--

INSERT INTO `organisation` (`oid`, `name`, `plotno`, `area`, `city`, `pincode`, `dist`, `state`, `phone`, `mail`, `photo`, `timing`, `type`, `lati`, `longi`) VALUES
('O00004', 'IMS & Sum Hospital', 'K-8', 'Kalinga Nagar', 'Bhubaneswar', '751003', 'Khurda', 'Odisha', '06742386281', 'sumhospital@soauniversity.ac.in', 'O00004.jpg', '24*7', 'Hospital', '20.282567165389906', '85.77270984649658'),
('O00003', 'Global Diagonostics', '8524', 'Cuttack Road', 'Bhubaneswar', '751006', 'Khurda', 'Odisha', '06743256140', 'global@gmail.com', '', '08:00 to 04:00 PM', 'Path Lab', '20.2640087975251', '85.84553718566895'),
('O00002', 'Red Cross', 'C1', 'Sachivalaya Margs', 'Bhubaneswar', '751025', 'Khorda', 'Odisha', '9778159325', 'redcrossbbsr1@gmail.com', '', '8:00 to 16:00 Hours', 'BloodBank', '20.282486656659575', '85.83523750305176'),
('O00001', 'Kalinga Hospital', '12', 'Chandrasekhar Puras', 'bbsr', '751012', '13', 'odishaaa', '9123456789', 'gg@gmail.com', 'O00001.jpg', 'Z', 'Hospital', '85.82', '20.31'),
('O00005', 'Shree Hospital', 'K/4', 'Old Town', 'Bhubaneswar', '751004', 'khurdha', 'odisha', '06741267543', 'info@shreehospital.com', 'O00005.jpg', '24*7', 'Hospital', '20.29411973466976', '85.82864731550217');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `payid` varchar(20) NOT NULL COMMENT 'order id',
  `cid` varchar(20) NOT NULL COMMENT 'customer id',
  `bid` varchar(10) NOT NULL COMMENT 'booking id',
  `bname` varchar(30) NOT NULL COMMENT 'bank name',
  `pdate` date NOT NULL COMMENT 'payment date',
  `cardno` varchar(25) NOT NULL,
  `acno` varchar(25) NOT NULL COMMENT 'account no',
  `amount` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payid`, `cid`, `bid`, `bname`, `pdate`, `cardno`, `acno`, `amount`) VALUES
('P00001', 'C00001', 'B00001', 'SBI', '2019-03-25', '456723903214', '123456789045', 1500);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `pid` varchar(20) NOT NULL COMMENT 'It may be location id or photo id',
  `photo1` varchar(30) DEFAULT ' ',
  `photo2` varchar(30) DEFAULT ' ',
  `photo3` varchar(30) DEFAULT ' ',
  `photo4` varchar(30) DEFAULT ' ',
  `photo5` varchar(30) DEFAULT ' ',
  `photo6` varchar(30) DEFAULT ' ',
  `photo7` varchar(30) DEFAULT ' ',
  `photo8` varchar(30) DEFAULT ' '
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`pid`, `photo1`, `photo2`, `photo3`, `photo4`, `photo5`, `photo6`, `photo7`, `photo8`) VALUES
('PL00001', 'PL00001photo1.jpg', 'PL00001photo2.jpg', 'PL00001photo3.jpg', 'PL00001photo4.jpg', 'PL00001photo5.jpg', 'PL00001photo6.jpg', 'PL00001photo7.jpg', 'PL00001photo8.jpg'),
('PL00002', '', '', '', '', '', '', '', ''),
('PL00003', '', '', '', '', '', '', '', ''),
('PL00004', '', '', '', '', '', '', '', ''),
('PL00005', 'PL00005photo1.jpg', 'PL00005photo2.jpg', 'PL00005photo3.jpg', 'PL00005photo4.jpg', 'PL00005photo5.jpg', 'PL00005photo6.jpg', 'PL00005photo7.jpg', 'PL00005photo8.jpg'),
('PL00006', 'PL00006photo1.jpg', 'PL00006photo2.png', '', '', '', '', '', ''),
('PL00007', 'PL00007photo1.jpg', 'PL00007photo2.jpg', 'PL00007photo3.jpg', '', '', '', '', ''),
('H00001', 'H00001photo1.jpg', 'H00001photo2.jpg', 'H00001photo3.jpg', 'H00001photo4.jpg', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE IF NOT EXISTS `place` (
  `pid` varchar(20) NOT NULL,
  `place` varchar(60) NOT NULL COMMENT 'place nam like puri, chilika, similipala',
  `area` varchar(40) NOT NULL COMMENT 'city',
  `dist` varchar(40) NOT NULL,
  `state` varchar(40) NOT NULL,
  `famfor` varchar(100) NOT NULL COMMENT 'famous for',
  `descr` varchar(1000) NOT NULL COMMENT 'description'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place`
--

INSERT INTO `place` (`pid`, `place`, `area`, `dist`, `state`, `famfor`, `descr`) VALUES
('PL00001', 'Konark', 'Konark', 'Puri', 'Odisha', 'The Oldest Sun Temple of India, consisting of ashtadhatu Idol', 'The oldest sun temple of india'),
('PL00002', 'Ichhapur', 'kendrapada', 'Kendrapara', 'Odisha', 'baldevjiw mandir', 'Constructed during Maratha rule in Odissa in 1761 AD.'),
('PL00003', 'Similipala', 'Baripada', 'Mayurbhanja', 'Odisha', 'Tiger National Park', 'It is part of the similipal-kuldiha-hadagarh elephant reserve, which includes 3 protected areas i.e. similipal tiger reserve, hadgarh wild life sanctuary and kuldiha wildlife sanctuary.'),
('PL00004', 'Kapilash', 'Kapilash', 'Denkanal', 'Odisha', 'Shiv Temple', 'It is situated at a height of 2239 feet from sea level. One should have to climb 1352 steps to reach the temple.'),
('PL00005', 'Puri', 'Puri', 'Puri', 'Odisha', 'Sri Jagannath Temple', 'The Lord Jagannath temple is one of the oldest table in the Country dated back 1100 AD. According to Hindu Culture Lord Jagannath is the Vishnu himself, and the place is the ulitmate pilgrimage for each hindu. A hindu devotee in his life must visit this temple at least once.'),
('PL00006', 'chilika', 'chilika', 'puri', 'Odisha', 'Biggest brackish lake of Asia.', 'According to a survey, 45 percent of the birds are terrestrial in nature, 32 percent are waterfowl, and 23 percent are waders. The lagoon is also home to 14 types of raptors. Around 152 rare and endangered Irrawaddy dolphins have also been reported. Plus, the lagoon supports about 37 species of reptiles and amphibians'),
('PL00007', 'Hirakukud', 'sambalpur', 'sambalpur', 'odissa', 'worlds largest soil dam', 'It is built across the mahanadi river, about 15km  from samblpur in odissa. behind the dam extends a lake,Hirakud reserviour, 55km long. it is one of the first major multi purpose river valley projects started after india''s independence. ');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `rid` varchar(40) NOT NULL,
  `hid` varchar(40) NOT NULL,
  `size` varchar(40) NOT NULL,
  `facility` varchar(40) NOT NULL,
  `price` float NOT NULL,
  `noroom` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`rid`, `hid`, `size`, `facility`, `price`, `noroom`) VALUES
('R00001', 'H00001', '20 X 16 Double Bed', 'AC, TV, Room Service', 2000, 10),
('R00002', 'H00001', '40 X 30 Delux', 'AC, TV, Room Service', 4000, 10),
('R00003', 'H00002', '22 X 18 Executive Suite', 'AC, TV, WI-FI, Room Service', 3000, 10),
('R00004', 'H00003', '20 X 16 Double Bed', 'AC, TV, Room Service', 1500, 5);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `uid` varchar(10) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mstatus` varchar(10) NOT NULL,
  `edu` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mail` varchar(40) NOT NULL,
  `cadd` varchar(30) NOT NULL,
  `padd` varchar(30) NOT NULL,
  `idprf` varchar(20) NOT NULL,
  `idprfid` varchar(20) NOT NULL,
  `dor` date NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`uid`, `fullname`, `fname`, `dob`, `gender`, `mstatus`, `edu`, `phone`, `mail`, `cadd`, `padd`, `idprf`, `idprfid`, `dor`, `photo`) VALUES
('U0001', 'Seshadri Samal', 'K Samal', '2017-05-04', 'female', 'unmarried', 'mca', '876543', 'sesu@gmail.com', 'bbsr', 'brahmapur', 'pan card', '4567', '2017-05-09', ''),
('U0002', 'Ritu Sahoo', 'Sangram Kesari Sahoo ', '2017-05-09', 'female', 'unmarried', 'MCA', '23456789', 'ritu.sahoo@gmail.com', 'BBSR', 'KENDRAPARA', 'pan card', '3456789', '2017-05-15', ''),
('U0003', 'asdf', 'ee', '2019-05-07', 'male', 'married', 'M Tech', '2323', 'saswati@gmail.com', '23', '23', 'Aadhaar', '987645368234', '2019-05-21', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE IF NOT EXISTS `vehicle` (
  `vid` varchar(10) NOT NULL,
  `vno` varchar(20) NOT NULL,
  `model` varchar(20) NOT NULL,
  `oname` varchar(100) NOT NULL,
  `dname` varchar(50) NOT NULL,
  `bookingnum` varchar(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `District` varchar(20) NOT NULL,
  `State` varchar(20) NOT NULL,
  `timing` varchar(20) NOT NULL,
  `baseprice` int(11) NOT NULL,
  `perkm` int(11) NOT NULL,
  `availability` varchar(20) NOT NULL,
  `lati` varchar(50) NOT NULL,
  `longi` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `photo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vid`, `vno`, `model`, `oname`, `dname`, `bookingnum`, `City`, `District`, `State`, `timing`, `baseprice`, `perkm`, `availability`, `lati`, `longi`, `type`, `photo`) VALUES
('V00002', 'OR 02 AL 2345', 'Maruti Omni', 'Raman Das', 'Pintu', '9911885566', 'BBSR', 'KHORDA', 'Odisha', '10:00 AM - 08:00 PM', 300, 12, 'N', '20.8269871', '80.8266259 ', 'Mortuary Van', 'V00002.jpg'),
('V00001', 'OD 33 BH 0123', 'Tata Winger', 'Prabhas Rout ', 'Santosh Jena', '9911882277 ', 'BBSR ', 'KHORDA ', 'Odisha ', '10:00 AM - 08:00 PM ', 300, 15, 'N', '20.2865199', '80.8266259 ', 'Ambulance', 'V00001.jpg'),
('V00003', 'OD-02-V-8197', 'Tata Winger', 'Capital Health Department ', 'Biswanath Sharma ', '9145672355 ', 'Bhubaneswar ', 'khurdha ', 'odisha ', '24 * 7 ', 100, 2000, 'Y', '20.294481996435128', '85.82997769117355', 'Ambulance', 'V00003.png');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
