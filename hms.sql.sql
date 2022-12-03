-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 02:49 PM
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
-- Database: `hms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'Test@12345', '30-10-2022 11:42:05 AM');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `doctorSpecialization` varchar(255) DEFAULT NULL,
  `doctorId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `consultancyFees` int(11) DEFAULT NULL,
  `appointmentDate` varchar(255) DEFAULT NULL,
  `appointmentTime` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `userStatus` int(11) DEFAULT NULL,
  `doctorStatus` int(11) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `of` int(11) NOT NULL,
  `prescribe` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`, `of`, `prescribe`) VALUES
(3, 'Demo test', 7, 6, 600, '2019-06-29', '9:15 AM', '2019-06-23 18:31:28', 1, 0, '2022-10-29 19:23:00', 0, '0'),
(4, 'Ayurveda', 5, 5, 8050, '2019-11-08', '1:00 PM', '2019-11-05 10:28:54', 1, 1, '2022-10-29 19:23:05', 0, '0'),
(5, 'Dermatologist', 9, 7, 500, '2019-11-30', '5:30 PM', '2019-11-10 18:41:34', 1, 0, '2022-10-29 19:23:17', 0, '0'),
(6, 'Ayurveda', 5, 8, 8050, '2022-10-30', '6:45 PM', '2022-10-29 13:16:23', 1, 1, '2022-10-29 19:23:22', 0, '0'),
(7, 'Dermatologist', 9, 2, 500, '2022-10-31', '12:45 AM', '2022-10-29 19:07:27', 1, 1, '2022-10-30 02:57:53', 0, 'new alchoholic'),
(8, 'General Physician', 6, 3, 2500, '2022-10-31', '1:45 AM', '2022-10-29 20:17:58', 1, 1, NULL, 1, 'hello');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `doctorName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `docFees` varchar(255) DEFAULT NULL,
  `contactno` bigint(11) DEFAULT NULL,
  `docEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'Dentist', 'karthik', 'New Delhi', '500', 8285703354, 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:25:37', '2022-10-30 03:57:28'),
(2, 'Homeopath', 'raju', 'Varanasi', '600', 2147483647, 'sarita@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-29 06:51:51', '2022-10-30 03:57:37'),
(3, 'General Physician', 'niteesh kumar', 'Ghaziabad', '1200', 8523699999, 'nitesh@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:43:35', '2022-10-30 03:57:46'),
(4, 'Homeopath', 'Vijay Verma', 'New Delhi', '700', 25668888, 'vijay@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:45:09', '0000-00-00 00:00:00'),
(5, 'Ayurveda', 'Sanjeev', 'Gurugram', '8050', 442166644646, 'sanjeev@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:47:07', '0000-00-00 00:00:00'),
(6, 'General Physician', 'Amrita', 'New Delhi India', '2500', 45497964, 'amrita@test.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:52:50', '0000-00-00 00:00:00'),
(7, 'obestrician', 'krishna chaitanya', 'New Delhi India', '200', 852888888, 'test@demo.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:08:58', '2022-10-30 03:58:11'),
(8, 'Ayurveda', 'raj kumar', 'Xyz Abc New Delhi', '600', 1234567890, 'test@test.com', '202cb962ac59075b964b07152d234b70', '2019-06-23 17:57:43', '2022-10-30 03:58:20'),
(9, 'Dermatologist', 'Anuj kumar', 'New Delhi India 110001', '500', 1234567890, 'anujk@test.com', '1bbd886460827015e5d605ed44252251', '2019-11-10 18:37:47', '2022-10-29 19:12:31');

-- --------------------------------------------------------

--
-- Table structure for table `doctorslog`
--

CREATE TABLE `doctorslog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-29 13:06:05', '29-10-2022 06:38:38 PM', 1),
(21, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-29 16:47:59', '29-10-2022 10:20:06 PM', 1),
(22, 7, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-29 16:54:46', '29-10-2022 10:35:11 PM', 1),
(23, NULL, 'anujk@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 19:09:27', NULL, 0),
(24, NULL, 'Anuj', 0x3a3a3100000000000000000000000000, '2022-10-29 19:09:45', NULL, 0),
(25, NULL, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 19:11:44', NULL, 0),
(26, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 19:12:44', '30-10-2022 01:30:11 AM', 1),
(27, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:19:00', NULL, 1),
(28, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:25:39', NULL, 1),
(29, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:28:31', NULL, 1),
(30, NULL, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 21:29:16', NULL, 0),
(31, NULL, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 21:29:34', NULL, 0),
(32, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 21:31:42', NULL, 1),
(33, 5, 'sanjeev@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 22:48:51', NULL, 1),
(34, 5, 'sanjeev@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:07:55', NULL, 1),
(35, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:09:40', '30-10-2022 04:45:23 AM', 1),
(36, NULL, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:24:32', NULL, 0),
(37, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:24:46', '30-10-2022 05:02:20 AM', 1),
(38, NULL, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:32:32', NULL, 0),
(39, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:33:04', NULL, 1),
(40, 9, 'anujk@test.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:36:46', '30-10-2022 08:28:52 AM', 1),
(41, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:10:05', NULL, 1),
(42, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:32:42', NULL, 1),
(43, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:36:29', NULL, 1),
(44, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:45:16', '30-10-2022 09:19:29 AM', 1),
(45, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:28:05', NULL, 1),
(46, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:49:30', NULL, 1),
(47, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:58:56', '30-10-2022 11:49:11 AM', 1),
(48, NULL, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:02:14', NULL, 0),
(49, NULL, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:02:36', NULL, 0),
(50, NULL, 'amrita@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:02:49', NULL, 0),
(51, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:19:29', '30-10-2022 11:49:59 AM', 1),
(52, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:20:38', '30-10-2022 11:58:26 AM', 1),
(53, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:28:45', '30-10-2022 12:06:48 PM', 1),
(54, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:43:54', '30-10-2022 12:16:05 PM', 1),
(55, 6, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 11:07:20', '30-10-2022 04:37:53 PM', 1),
(56, NULL, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 09:51:32', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Gynecologist/Obstetrician', '2022-10-29 06:37:25', '2022-10-30 03:39:26'),
(2, 'General Physician', '2022-10-29 06:37:25', '2022-10-30 03:39:32'),
(3, 'Dermatologist', '2022-10-29 06:37:25', '2022-10-30 03:39:35'),
(4, 'Homeopath', '2022-10-29 06:37:25', '2022-10-30 03:39:39'),
(5, 'Ayurveda', '2022-10-29 06:37:25', '2022-10-30 03:39:43'),
(6, 'Dentist', '2022-10-29 06:37:25', '2022-10-30 03:39:47'),
(7, 'Ear-Nose-Throat (Ent) Specialist', '2022-10-29 06:37:25', '2022-10-30 03:39:53'),
(9, 'Demo test', '2022-10-29 06:37:25', '2022-10-30 03:39:50'),
(10, 'Bones Specialist demo', '2022-10-29 06:37:25', '2022-10-30 03:40:00'),
(11, 'Test', '2022-10-29 06:37:25', '2022-10-30 03:40:04'),
(12, 'Dermatologist', '2022-10-29 06:37:25', '2022-10-30 03:40:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactus`
--

CREATE TABLE `tblcontactus` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint(12) DEFAULT NULL,
  `message` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `LastupdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `IsRead` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(1, 'test user', 'test@gmail.com', 2523523522523523, ' This is sample text for the test.', '2019-06-29 19:03:08', 'Test Admin Remark', '2019-06-30 12:55:23', 1),
(2, 'Anuj kumar', 'phpgurukulofficial@gmail.com', 1111111111111111, ' This is sample text for testing.  This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing. This is sample text for testing.', '2019-06-30 13:06:50', NULL, NULL, NULL),
(3, 'fdsfsdf', 'fsdfsd@ghashhgs.com', 3264826346, 'sample text   sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  sample text  ', '2019-11-10 18:53:48', 'vfdsfgfd', '2019-11-10 18:54:04', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblmedicalhistory`
--

CREATE TABLE `tblmedicalhistory` (
  `ID` int(10) NOT NULL,
  `PatientID` int(10) DEFAULT NULL,
  `BloodPressure` varchar(200) DEFAULT NULL,
  `BloodSugar` varchar(200) NOT NULL,
  `Weight` varchar(100) DEFAULT NULL,
  `Temperature` varchar(200) DEFAULT NULL,
  `MedicalPres` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(2, 3, '120/185', '80/120', '85 Kg', '101 degree', '#Fever, #BP high\r\n1.Paracetamol\r\n2.jocib tab\r\n', '2022-10-29 06:37:25'),
(3, 2, '90/120', '92/190', '86 kg', '99 deg', '#Sugar High\r\n1.Petz 30', '2022-10-29 06:37:25'),
(4, 1, '125/200', '86/120', '56 kg', '98 deg', '# blood pressure is high\r\n1.koil cipla', '2022-10-29 06:37:25'),
(5, 1, '96/120', '98/120', '57 kg', '102 deg', '#Viral\r\n1.gjgjh-1Ml\r\n2.kjhuiy-2M', '2022-10-29 06:37:25'),
(6, 4, '90/120', '120', '56', '98 F', '#blood sugar high\r\n#Asthma problem', '2022-10-29 06:37:25'),
(7, 5, '80/120', '120', '85', '98.6', 'Rx\r\n\r\nAbc tab\r\nxyz Syrup', '2022-10-29 06:37:25'),
(8, 7, '100', '130', '75', '96', 'daily drink water', '2022-10-29 06:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatient`
--

CREATE TABLE `tblpatient` (
  `ID` int(10) NOT NULL,
  `Docid` int(10) DEFAULT NULL,
  `PatientName` varchar(200) DEFAULT NULL,
  `PatientContno` bigint(10) DEFAULT NULL,
  `PatientEmail` varchar(200) DEFAULT NULL,
  `PatientGender` varchar(50) DEFAULT NULL,
  `PatientAdd` mediumtext DEFAULT NULL,
  `PatientAge` int(10) DEFAULT NULL,
  `PatientMedhis` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Manisha Jha', 4558968789, 'test@gmail.com', 'Female', '\"\"J&K Block J-127, Laxmi Nagar New Delhi', 26, 'She is diabetic patient', '2019-11-04 21:38:06', '2022-10-29 06:37:25'),
(2, 5, 'Raghu Yadav', 9797977979, 'raghu@gmail.com', 'Male', 'ABC Apartment Mayur Vihar Ph-1 New Delhi', 39, 'No', '2019-11-05 10:40:13', '2022-10-29 06:37:25'),
(3, 7, 'Mansi', 9878978798, 'jk@gmail.com', 'Female', '\"fdghyj', 46, 'No', '2019-11-05 10:49:41', '2022-10-29 06:37:25'),
(4, 7, 'Manav Sharma', 9888988989, 'sharma@gmail.com', 'Male', 'L-56,Ashok Nagar New Delhi-110096', 45, 'He is long suffered by asthma', '2019-11-06 14:33:54', '2022-10-29 06:37:25'),
(5, 9, 'John', 1234567890, 'john@test.com', 'male', 'Test ', 25, 'THis is sample text for testing.', '2019-11-10 18:49:24', NULL),
(6, 7, 'viswas', 6301071571, 'viswasmc238@gmail.com', 'Male', 'kokapet', 21, 'nil', '2022-10-29 13:06:50', '2022-10-29 06:37:25'),
(7, 6, 'viswas raj', 6301071571, 'mcvviswas@gmail.com', 'male', 'kokapet', 21, 'cholestral', '2022-10-30 03:46:24', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(24, 8, 'abc@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 13:15:49', '29-10-2022 06:46:38 PM', 1),
(25, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-29 16:47:23', NULL, 0),
(26, NULL, 'test@demo.com', 0x3a3a3100000000000000000000000000, '2022-10-29 19:03:42', NULL, 0),
(27, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 19:05:07', '30-10-2022 12:37:43 AM', 1),
(28, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:00:31', '30-10-2022 01:39:37 AM', 1),
(29, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:10:57', '30-10-2022 01:48:46 AM', 1),
(30, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 20:19:57', NULL, 1),
(31, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-29 23:15:39', NULL, 1),
(32, NULL, 'raghu@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 02:59:08', NULL, 0),
(33, NULL, 'raghu@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 02:59:22', NULL, 0),
(34, 7, 'john@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:00:52', '30-10-2022 08:31:23 AM', 1),
(35, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:02:03', NULL, 1),
(36, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:31:43', NULL, 1),
(37, NULL, 'amrita@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:37:25', NULL, 0),
(38, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:37:38', '30-10-2022 09:14:24 AM', 1),
(39, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 03:55:34', '30-10-2022 09:28:30 AM', 1),
(40, 7, 'john@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:26:36', NULL, 1),
(41, 7, 'john@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:26:45', NULL, 1),
(42, 7, 'john@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:27:29', '30-10-2022 10:57:50 AM', 1),
(43, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:48:37', '30-10-2022 11:19:07 AM', 1),
(44, NULL, 'amit@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:51:21', NULL, 0),
(45, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 05:51:38', NULL, 1),
(46, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:37:12', '30-10-2022 12:10:03 PM', 1),
(47, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:42:53', '30-10-2022 12:13:26 PM', 1),
(48, NULL, 'amit@test.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:46:21', NULL, 0),
(49, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:46:50', '30-10-2022 12:20:06 PM', 1),
(50, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 06:55:17', '30-10-2022 12:30:24 PM', 1),
(51, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 07:33:40', '30-10-2022 01:04:41 PM', 1),
(52, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 07:36:48', '30-10-2022 01:33:47 PM', 1),
(53, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 08:18:50', '30-10-2022 01:48:56 PM', 1),
(54, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 08:35:08', '30-10-2022 02:05:50 PM', 1),
(55, NULL, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 10:26:39', NULL, 0),
(56, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 10:26:56', '30-10-2022 03:59:04 PM', 1),
(57, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 10:29:56', '30-10-2022 04:00:14 PM', 1),
(58, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 11:02:50', '30-10-2022 04:34:51 PM', 1),
(59, 3, 'amit@gmail.com', 0x3a3a3100000000000000000000000000, '2022-10-30 12:37:28', NULL, 1),
(60, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 06:42:13', '02-12-2022 01:44:18 PM', 1),
(61, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 09:52:23', NULL, 1),
(62, 2, 'test@gmail.com', 0x3a3a3100000000000000000000000000, '2022-12-02 05:29:42', '02-12-2022 11:19:09 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(2, 'Sarita pandey', 'New Delhi India', 'Delhi', 'female', 'test@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2016-12-30 05:34:39', '0000-00-00 00:00:00'),
(3, 'Amit', 'New Delhi', 'New delhi', 'male', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 06:36:53', '0000-00-00 00:00:00'),
(4, 'Rahul Singh', 'New Delhi', 'New delhi', 'male', 'rahul@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 07:41:14', '0000-00-00 00:00:00'),
(5, 'Amit kumar', 'New Delhi India', 'Delhi', 'male', 'amit12@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2017-01-07 08:00:26', '0000-00-00 00:00:00'),
(6, 'Test user', 'New Delhi', 'Delhi', 'male', 'tetuser@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2019-06-23 18:24:53', '2019-06-23 18:36:09'),
(7, 'John', 'USA', 'Newyork', 'male', 'john@test.com', 'f925916e2754e5e03f75dd58a5733251', '2019-11-10 18:40:21', '2019-11-10 18:40:51'),
(8, 'viswas reddy mcv', 'kokapet', 'hyd', 'male', 'viswasmc238@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '2022-10-29 13:14:08', '2022-10-29 18:36:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorslog`
--
ALTER TABLE `doctorslog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatient`
--
ALTER TABLE `tblpatient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
