-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2023 at 07:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '24-5-2023 11:42:05 AM');

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
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `doctorSpecialization`, `doctorId`, `userId`, `consultancyFees`, `appointmentDate`, `appointmentTime`, `postingDate`, `userStatus`, `doctorStatus`, `updationDate`) VALUES
(3, 'ENT', 1, 1, 500, '2023-05-24', '10:00 AM', '2023-05-23 15:49:54', 1, 0, '2023-05-25 00:11:44'),
(4, 'ENT', 1, 3, 1000, '2023-05-26', '11:00 AM', '2023-05-24 23:56:59', 1, 0, '2023-05-30 17:54:25'),
(5, 'Dental Care', 12, 1, 500, '2023-06-04', '10:30 PM', '2023-06-03 13:22:26', 1, 1, NULL),
(6, 'Dental Care', 12, 5, 500, '2023-06-02', '7:45 PM', '2023-06-03 13:35:51', 0, 1, '2023-06-03 13:38:16'),
(7, 'Dental Care', 12, 6, 500, '2023-06-01', '7:45 PM', '2023-06-03 13:42:58', 1, 0, '2023-06-03 13:46:02');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `specilization`, `doctorName`, `address`, `docFees`, `contactno`, `docEmail`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'ENT', 'Prof. Dr. S.M. Khorshed Mazumder', 'House #17, Road #08, Dhanmondi, Dhaka-1205', '1000', 9670295, 'drkhorshedMazumder@gmail.com', '9c45e8ec1c6cbab1a2b3db5a7b2d3079', '2023-05-24 10:00:00', '2023-05-24 11:04:27'),
(2, 'Endocrinologists', 'Dr. Abdul Ali', 'House #2, Road #49, Gulshan-2, Dhaka-1212', '800', 29896165, 'drabdulali@gmail.com', '8003eaf8f8c39dc2b321f97d49497c37', '2023-05-23 01:06:41', '2023-05-24 11:05:07'),
(4, 'Orthopedics', 'Dr. Md. Monowar Tariq', 'House #31, Sapura, Miapara. Sapura.. P.C. 6203, Rajshahi Sadar, Rajshahi.', '600', 1721760498, 'drmonowartariq@gmail.com', '76b1e56c2c57f744e9e86b965ccb8afe', '2023-05-25 12:19:09', NULL),
(5, 'Internal Medicine', 'Dr. Raihan Rabbani', '18/F Bir Uttam Qazi Nuruzzaman Road, Dhaka.', '700', 17, 'drraihanrabbani@gmail.com', '26e7315689f6ef1cb4b5867ba847b15e', '2023-05-25 12:23:37', NULL),
(6, 'Obstetrics and Gynecology', 'Dr. Asma Khatun Aurora', '290 Sonargaon Road, Kathalbagan, Dhaka-1205', '500', 1313, 'drasmakhatunaurora@gmail.com', '1a83ed74862610ed07be19167f268553', '2023-05-25 12:26:42', NULL),
(7, 'Dermatology', 'Prof. Dr. Hasibur Rahman', '29, Nexus Hospital Building, Dhaka-Mymensingh Rd, Mymensingh 2200', '500', 1316171188, 'drhasiburrahman@gmail.com', '33c071252c991771d3a1dfe77689b0ae', '2023-05-25 12:28:58', NULL),
(8, 'Pediatrics', ' Dr. Pranab Chowdhury', 'Hathazari Health Complex, Hathazari. Hathazari. Chittagong.', '500', 17, 'drpranabchowdhury@gmail.com', '25d4fea841c7e0dda69ca80680b97a7e', '2023-05-25 12:32:08', NULL),
(9, 'General Surgery', 'Professor Dr. Md. Shahid Hossain', '32 Green Road ( Bir Uttom K. M Shafiullah Sarak ) , Dhanmondi, Dhaka - 1205', '1000', 9615412, 'rrmdshahidhossain@gmail.com', '4130f09a31862932146dd1d5d5b43dee', '2023-05-25 12:35:14', NULL),
(10, 'Anesthesia', 'Dr. Lutful Aziz', 'Plot # 81, Block # E, Basudhara R/A, Dhaka – 1229', '800', 8845242, 'drlutfulaziz@gmail.com', '9e8375ec0f42d2ff0dd6b107339a2d72', '2023-05-25 12:37:39', NULL),
(11, 'Pathology', 'Deep Ghosh', 'Binodpur, Beside Rajshahi University ,Rajshahi.', '100', 17, 'deepghosh@gmail.com', '00dc049404dc1dc3daf7354cc41c7e7f', '2023-05-25 12:45:56', NULL),
(12, 'Dental Care', 'Prof. Dr. Md. Shamsul Alam', ' 32 Green Road ( Bir Uttom K. M Shafiullah Sarak ) , Dhanmondi, Dhaka - 1205', '500', 9615412, 'drmdshamsulalam@gmail.com', 'ad097a11fecb923fccd30d2bd1f94e95', '2023-05-25 12:48:33', NULL),
(13, 'Neurologists', 'Dr. Amit Wazib', 'Plot # 15 Rd No 71, Dhaka 1212, Bangladesh', '800', 28836444, 'dramitwazib@gmail.com', '76a4a9b5d65a4a76c04d3737bd0b07a3', '2023-05-25 13:01:02', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorslog`
--

INSERT INTO `doctorslog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(29, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-24 23:58:53', '25-05-2023 05:33:12 AM', 1),
(30, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 00:11:34', NULL, 1),
(31, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 11:55:05', '25-05-2023 05:26:07 PM', 1),
(32, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 17:54:01', '30-05-2023 11:26:41 PM', 1),
(33, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 21:07:48', NULL, 1),
(34, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 21:51:58', '31-05-2023 03:27:58 AM', 1),
(35, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 10:27:34', '01-06-2023 04:05:57 PM', 1),
(36, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:19:45', '03-06-2023 06:51:13 PM', 1),
(37, 1, 'drkhorshedMazumder@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:23:20', '03-06-2023 06:53:49 PM', 1),
(38, 12, 'drmdshamsulalam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:25:00', '03-06-2023 07:01:04 PM', 1),
(39, 12, 'drmdshamsulalam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:37:02', '03-06-2023 07:07:55 PM', 1),
(40, 12, 'drmdshamsulalam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:38:41', '03-06-2023 07:08:57 PM', 1),
(41, 12, 'drmdshamsulalam@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:43:51', '03-06-2023 07:17:06 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `doctorspecilization`
--

CREATE TABLE `doctorspecilization` (
  `id` int(11) NOT NULL,
  `specilization` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `doctorspecilization`
--

INSERT INTO `doctorspecilization` (`id`, `specilization`, `creationDate`, `updationDate`) VALUES
(1, 'Orthopedics', '2023-05-24 18:09:46', NULL),
(2, 'Internal Medicine', '2023-05-23 18:09:57', NULL),
(3, 'Obstetrics and Gynecology', '2022-10-30 18:10:18', NULL),
(4, 'Dermatology', '2023-05-23 18:10:28', NULL),
(5, 'Pediatrics', '2023-05-22 18:10:37', NULL),
(6, 'Radiology', '2023-05-22 18:10:46', NULL),
(7, 'General Surgery', '2023-05-22 18:10:56', NULL),
(8, 'Ophthalmology', '2023-05-22 18:11:03', NULL),
(9, 'Anesthesia', '2023-05-22 18:11:15', NULL),
(10, 'Pathology', '2023-05-22 18:11:22', NULL),
(11, 'ENT', '2023-05-22 18:11:30', NULL),
(12, 'Dental Care', '2023-05-22 18:11:39', NULL),
(13, 'Dermatologists', '2023-05-22 18:12:02', NULL),
(14, 'Endocrinologists', '2023-05-22 18:12:10', NULL),
(15, 'Neurologists', '2023-05-22 18:12:30', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcontactus`
--

INSERT INTO `tblcontactus` (`id`, `fullname`, `email`, `contactno`, `message`, `PostingDate`, `AdminRemark`, `LastupdationDate`, `IsRead`) VALUES
(3, 'Md. Jahidul Islam', 'jahidul@gmail.com', 15, 'Emergency doctor need at 11.00 pm. ', '2023-05-24 11:22:07', 'Alhamdulillah. Everything gone fine. Always communicate us for emergency.', '2023-05-25 00:09:21', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblmedicalhistory`
--

INSERT INTO `tblmedicalhistory` (`ID`, `PatientID`, `BloodPressure`, `BloodSugar`, `Weight`, `Temperature`, `MedicalPres`, `CreationDate`) VALUES
(1, 1, '80/120', '120', '85', '98', 'Test', '2023-05-23 13:19:41'),
(2, 2, 'High', 'high', '67', '22', 'Skansajsa skjaasaksna 23\r\nscdcsadasddf qwseqwedqwe23r34rte4 445\r\n5454y45ytertyertre\r\n hrfghfgfbvcb werwere', '2023-06-03 13:30:24'),
(3, 4, 'gdrgdg b', 'dgdgdgs b', 'dbdfdf ', 'dfgdfgfd', 'dfgdfdf   bbbb\r\nbd\r\nbdfdf\r\ndf\r\n vdf\r\ngdfgfdg\r\ndf\r\ngdf\r\ngd\r\ngdf\r\ngdf\r\ng', '2023-06-03 13:45:41');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp(),
  `OpenningTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `OpenningTime`) VALUES
(1, 'aboutus', 'About Us', '<ul style=\"padding: 0px; margin-right: 0px; margin-bottom: 1.313em; margin-left: 1.655em;\" times=\"\" new=\"\" roman\";=\"\" font-size:=\"\" 14px;=\"\" text-align:=\"\" center;=\"\" background-color:=\"\" rgb(255,=\"\" 246,=\"\" 246);\"=\"\"><li style=\"text-align: left;\"><font color=\"#000000\">The Hospital Management System (HMS) is designed for Any Hospital to replace their existing manual, paper based system. The new system is to control the following information; patient information, room availability, staff and operating room schedules, and patient invoices. These services are to be provided in an efficient, cost effective manner, with the goal of reducing the time and resources currently required for such tasks.</font></li><li style=\"text-align: left;\"><font color=\"#000000\">A significant part of the operation of any hospital involves the acquisition, management and timely retrieval of great volumes of information. This information typically involves; patient personal information and medical history, staff information, room and ward scheduling, staff scheduling, operating theater scheduling and various facilities waiting lists. All of this information must be managed in an efficient and cost wise fashion so that an institution\'s resources may be effectively utilized HMS will automate the management of the hospital making it more efficient and error free. It aims at standardizing data, consolidating data ensuring data integrity and reducing inconsistencies.&nbsp;</font></li></ul>', NULL, NULL, '2023-05-23 07:21:52', NULL),
(2, 'contactus', 'Contact Details', 'Address:Demo Address,Rajshahi,Bangladesh', 'hmsinfo@gmail.com', 17017017, '2023-05-23 07:24:07', '8 am to 5 pm');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpatient`
--

INSERT INTO `tblpatient` (`ID`, `Docid`, `PatientName`, `PatientContno`, `PatientEmail`, `PatientGender`, `PatientAdd`, `PatientAge`, `PatientMedhis`, `CreationDate`, `UpdationDate`) VALUES
(1, 1, 'Md. Jahidul Islam', 1518472473, 'jahid@gmail.com', 'Male', 'upazilla:amtali,zilla:barguna,div:barishal', 35, 'NA', '2023-05-23 13:18:31', NULL),
(2, 12, 'Md. Jahidul Islam', 151847247, 'dj@gmail.com', 'male', 'Amtali Uno office quarter,barguna', 24, 'Blood Group: B+(High)', '2023-06-03 13:28:17', NULL),
(3, 12, 'Md. Jahidul Islam', 151847247, 'dj@gmail.com', 'male', 'Amtali Uno office quarter,barguna', 24, 'Blood Group: B+(High)', '2023-06-03 13:28:18', NULL),
(4, 12, 'Sakib', 151847247, 'sakib@gmail.com', 'Female', 'dssdsdsdf ', 0, 'adaasdsa', '2023-06-03 13:44:58', '2023-06-03 13:45:52');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(7, NULL, 'sagor', 0x3a3a3100000000000000000000000000, '2023-05-24 23:54:29', NULL, 0),
(8, 3, 'sagor@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-24 23:54:48', '25-05-2023 05:27:47 AM', 1),
(9, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 11:58:50', NULL, 0),
(10, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 11:59:15', NULL, 0),
(11, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:01:58', NULL, 0),
(12, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:07:39', NULL, 0),
(13, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:07:47', NULL, 0),
(14, NULL, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:08:01', NULL, 0),
(15, 4, 'shihab@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:11:47', '25-05-2023 05:42:37 PM', 1),
(16, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-25 12:13:02', NULL, 1),
(17, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 17:33:31', '30-05-2023 11:23:24 PM', 1),
(18, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-05-30 18:11:21', NULL, 0),
(19, NULL, 'admin', 0x3a3a3100000000000000000000000000, '2023-05-30 18:11:31', NULL, 0),
(20, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 21:00:38', '31-05-2023 02:30:55 AM', 1),
(21, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 21:06:51', '31-05-2023 02:37:16 AM', 1),
(22, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-30 21:19:54', '31-05-2023 03:21:42 AM', 1),
(23, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-01 10:17:17', '01-06-2023 03:48:51 PM', 1),
(24, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:18:01', '03-06-2023 06:49:35 PM', 1),
(25, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:21:34', '03-06-2023 06:53:07 PM', 1),
(26, 5, 'dipughosh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:35:18', '03-06-2023 07:06:14 PM', 1),
(27, 5, 'dipughosh@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:38:10', '03-06-2023 07:08:20 PM', 1),
(28, 6, 'sakib@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:41:59', '03-06-2023 07:13:22 PM', 1),
(29, NULL, 'sakib@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:50:23', NULL, 0),
(30, NULL, 'sakib@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 13:50:37', NULL, 0),
(31, 1, 'jahid@gmail.com', 0x3a3a3100000000000000000000000000, '2023-06-03 15:34:53', '03-06-2023 09:05:40 PM', 1);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `address`, `city`, `gender`, `email`, `password`, `regDate`, `updationDate`) VALUES
(1, 'Md. Jahidul Islam', 'Amtali,Barguna,Barishal', 'Barishal', 'male', 'jahid@gmail.com', '5dcc5a5c27ab971ad554fb46a2a93df7', '2023-05-23 12:13:56', '2023-05-30 21:04:39'),
(3, 'Shihab Uddin Sagor', 'Amtali-8710,Barguna', 'Barishal', 'male', 'sagor@gmail.com', 'bcb444a18057cbe7db4ceefc22139a54', '2023-05-24 23:53:48', NULL),
(5, 'Dipu Ghosh', 'jjjjkjjgygoiuuyhui  y uyggyg', 'Barishal', 'male', 'dipughosh@gmail.com', '462ae0ea3319ba5f47d2f3b00b6dc854', '2023-06-03 13:34:21', NULL);

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
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `doctorslog`
--
ALTER TABLE `doctorslog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `doctorspecilization`
--
ALTER TABLE `doctorspecilization`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblcontactus`
--
ALTER TABLE `tblcontactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblmedicalhistory`
--
ALTER TABLE `tblmedicalhistory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpatient`
--
ALTER TABLE `tblpatient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
