-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2024 at 04:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secondhome`
--

-- --------------------------------------------------------

--
-- Table structure for table `allsubjects`
--

CREATE TABLE `allsubjects` (
  `id` int(11) NOT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `subCode` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `subFee` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `semester` text DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendancesheet`
--

CREATE TABLE `attendancesheet` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `teacherId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `attendance` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ayear`
--

CREATE TABLE `ayear` (
  `id` int(11) NOT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `aYname` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sYear` varchar(255) DEFAULT NULL,
  `sMonth` varchar(255) DEFAULT NULL,
  `eYear` varchar(255) DEFAULT NULL,
  `eMonth` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate`
--

CREATE TABLE `candidate` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `std_id` varchar(50) NOT NULL,
  `serial_code` varchar(20) NOT NULL,
  `selected` enum('1','0','3') NOT NULL DEFAULT '0',
  `gender` enum('male','female') NOT NULL DEFAULT 'female',
  `submitted_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `roll` int(11) NOT NULL,
  `remarks` enum('natural','good','better','best','poor','negative','positive','mannerful','mannerless','helpful','honest','false','hardworking','kind','trust','creative','polite','organized','cooperate') NOT NULL DEFAULT 'natural',
  `about` varchar(512) NOT NULL,
  `score` int(11) NOT NULL,
  `score_percentage` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `candidate`
--

INSERT INTO `candidate` (`id`, `unique_id`, `sId`, `user_id`, `class_id`, `session_id`, `std_id`, `serial_code`, `selected`, `gender`, `submitted_date`, `roll`, `remarks`, `about`, `score`, `score_percentage`) VALUES
(6, '1702895683-194825387', '3FB69C-1701233033-1741528352-162749032', 'U-FF-0000002-01816444372', '1', '11', '', 'C172654A', '1', 'male', '2023-12-18 18:45:21', 0, 'natural', 'faesfsafs', 0, 0),
(7, '1702917640-1684858034', '3FB69C-1701233033-1741528352-162749032', 'U-FF-0000003-01585855075', '1', '11', '', '67D5920A', '1', 'female', '2023-12-18 18:12:46', 0, 'natural', 'assalamualaikum', 0, 0),
(8, '1702895683-194825386', '3FB69C-1701233033-1741528352-162749032', 'U-FF-0000002-01816444373', '1', '11', '', 'C172654B', '1', 'male', '2023-12-18 18:12:46', 0, 'natural', 'faesfsafs', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `maxSec` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `clsName` varchar(255) DEFAULT NULL,
  `clsCode` varchar(255) DEFAULT NULL,
  `aYear` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `aYearId` int(11) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `classschedule`
--

CREATE TABLE `classschedule` (
  `id` int(11) NOT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL,
  `t_id` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dateTime` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_data`
--

CREATE TABLE `class_data` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `class_code` varchar(50) NOT NULL,
  `section_num` int(11) NOT NULL,
  `day_eve` varchar(50) NOT NULL,
  `programme` varchar(55) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_data`
--

INSERT INTO `class_data` (`id`, `unique_id`, `sId`, `class_name`, `class_code`, `section_num`, `day_eve`, `programme`, `session_id`, `status`) VALUES
(1, '91BAE8-1702692655-1350623101-521473727', '3FB69C-1701233033-1741528352-162749032', '1', '91BAE8', 5, 'day', 'bangla', '11', '1'),
(2, '667274-1702692809-1747483873-526932540', '3FB69C-1701233033-1741528352-162749032', '2', '667274', 5, 'bangla', 'bangla', '11', '1'),
(3, '8B8106-1702696407-482772982-566700107', '3FB69C-1701233033-1741528352-162749032', '3', '8B8106', 4, 'day', 'bangla', '11', '1');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(2) UNSIGNED NOT NULL,
  `division_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL,
  `website` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `website`) VALUES
(1, 3, 'Dhaka', 'ঢাকা', 23.7115253, 90.4111451, 'www.dhaka.gov.bd'),
(2, 3, 'Faridpur', 'ফরিদপুর', 23.6070822, 89.8429406, 'www.faridpur.gov.bd'),
(3, 3, 'Gazipur', 'গাজীপুর', 24.0022858, 90.4264283, 'www.gazipur.gov.bd'),
(4, 3, 'Gopalganj', 'গোপালগঞ্জ', 23.0050857, 89.8266059, 'www.gopalganj.gov.bd'),
(5, 8, 'Jamalpur', 'জামালপুর', 24.937533, 89.937775, 'www.jamalpur.gov.bd'),
(6, 3, 'Kishoreganj', 'কিশোরগঞ্জ', 24.444937, 90.776575, 'www.kishoreganj.gov.bd'),
(7, 3, 'Madaripur', 'মাদারীপুর', 23.164102, 90.1896805, 'www.madaripur.gov.bd'),
(8, 3, 'Manikganj', 'মানিকগঞ্জ', 0, 0, 'www.manikganj.gov.bd'),
(9, 3, 'Munshiganj', 'মুন্সিগঞ্জ', 0, 0, 'www.munshiganj.gov.bd'),
(10, 8, 'Mymensingh', 'ময়মনসিংহ', 0, 0, 'www.mymensingh.gov.bd'),
(11, 3, 'Narayanganj', 'নারায়াণগঞ্জ', 23.63366, 90.496482, 'www.narayanganj.gov.bd'),
(12, 3, 'Narsingdi', 'নরসিংদী', 23.932233, 90.71541, 'www.narsingdi.gov.bd'),
(13, 8, 'Netrokona', 'নেত্রকোণা', 24.870955, 90.727887, 'www.netrokona.gov.bd'),
(14, 3, 'Rajbari', 'রাজবাড়ি', 23.7574305, 89.6444665, 'www.rajbari.gov.bd'),
(15, 3, 'Shariatpur', 'শরীয়তপুর', 0, 0, 'www.shariatpur.gov.bd'),
(16, 8, 'Sherpur', 'শেরপুর', 25.0204933, 90.0152966, 'www.sherpur.gov.bd'),
(17, 3, 'Tangail', 'টাঙ্গাইল', 0, 0, 'www.tangail.gov.bd'),
(18, 5, 'Bogra', 'বগুড়া', 24.8465228, 89.377755, 'www.bogra.gov.bd'),
(19, 5, 'Joypurhat', 'জয়পুরহাট', 0, 0, 'www.joypurhat.gov.bd'),
(20, 5, 'Naogaon', 'নওগাঁ', 0, 0, 'www.naogaon.gov.bd'),
(21, 5, 'Natore', 'নাটোর', 24.420556, 89.000282, 'www.natore.gov.bd'),
(22, 5, 'Nawabganj', 'নবাবগঞ্জ', 24.5965034, 88.2775122, 'www.chapainawabganj.gov.bd'),
(23, 5, 'Pabna', 'পাবনা', 23.998524, 89.233645, 'www.pabna.gov.bd'),
(24, 5, 'Rajshahi', 'রাজশাহী', 0, 0, 'www.rajshahi.gov.bd'),
(25, 5, 'Sirajgonj', 'সিরাজগঞ্জ', 24.4533978, 89.7006815, 'www.sirajganj.gov.bd'),
(26, 6, 'Dinajpur', 'দিনাজপুর', 25.6217061, 88.6354504, 'www.dinajpur.gov.bd'),
(27, 6, 'Gaibandha', 'গাইবান্ধা', 25.328751, 89.528088, 'www.gaibandha.gov.bd'),
(28, 6, 'Kurigram', 'কুড়িগ্রাম', 25.805445, 89.636174, 'www.kurigram.gov.bd'),
(29, 6, 'Lalmonirhat', 'লালমনিরহাট', 0, 0, 'www.lalmonirhat.gov.bd'),
(30, 6, 'Nilphamari', 'নীলফামারী', 25.931794, 88.856006, 'www.nilphamari.gov.bd'),
(31, 6, 'Panchagarh', 'পঞ্চগড়', 26.3411, 88.5541606, 'www.panchagarh.gov.bd'),
(32, 6, 'Rangpur', 'রংপুর', 25.7558096, 89.244462, 'www.rangpur.gov.bd'),
(33, 6, 'Thakurgaon', 'ঠাকুরগাঁও', 26.0336945, 88.4616834, 'www.thakurgaon.gov.bd'),
(34, 1, 'Barguna', 'বরগুনা', 0, 0, 'www.barguna.gov.bd'),
(35, 1, 'Barisal', 'বরিশাল', 0, 0, 'www.barisal.gov.bd'),
(36, 1, 'Bhola', 'ভোলা', 22.685923, 90.648179, 'www.bhola.gov.bd'),
(37, 1, 'Jhalokati', 'ঝালকাঠি', 0, 0, 'www.jhalakathi.gov.bd'),
(38, 1, 'Patuakhali', 'পটুয়াখালী', 22.3596316, 90.3298712, 'www.patuakhali.gov.bd'),
(39, 1, 'Pirojpur', 'পিরোজপুর', 0, 0, 'www.pirojpur.gov.bd'),
(40, 2, 'Bandarban', 'বান্দরবান', 22.1953275, 92.2183773, 'www.bandarban.gov.bd'),
(41, 2, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', 23.9570904, 91.1119286, 'www.brahmanbaria.gov.bd'),
(42, 2, 'Chandpur', 'চাঁদপুর', 23.2332585, 90.6712912, 'www.chandpur.gov.bd'),
(43, 2, 'Chittagong', 'চট্টগ্রাম', 22.335109, 91.834073, 'www.chittagong.gov.bd'),
(44, 2, 'Comilla', 'কুমিল্লা', 23.4682747, 91.1788135, 'www.comilla.gov.bd'),
(45, 2, 'Cox\'s Bazar', 'কক্স বাজার', 0, 0, 'www.coxsbazar.gov.bd'),
(46, 2, 'Feni', 'ফেনী', 23.023231, 91.3840844, 'www.feni.gov.bd'),
(47, 2, 'Khagrachari', 'খাগড়াছড়ি', 23.119285, 91.984663, 'www.khagrachhari.gov.bd'),
(48, 2, 'Lakshmipur', 'লক্ষ্মীপুর', 22.942477, 90.841184, 'www.lakshmipur.gov.bd'),
(49, 2, 'Noakhali', 'নোয়াখালী', 22.869563, 91.099398, 'www.noakhali.gov.bd'),
(50, 2, 'Rangamati', 'রাঙ্গামাটি', 0, 0, 'www.rangamati.gov.bd'),
(51, 7, 'Habiganj', 'হবিগঞ্জ', 24.374945, 91.41553, 'www.habiganj.gov.bd'),
(52, 7, 'Maulvibazar', 'মৌলভীবাজার', 24.482934, 91.777417, 'www.moulvibazar.gov.bd'),
(53, 7, 'Sunamganj', 'সুনামগঞ্জ', 25.0658042, 91.3950115, 'www.sunamganj.gov.bd'),
(54, 7, 'Sylhet', 'সিলেট', 24.8897956, 91.8697894, 'www.sylhet.gov.bd'),
(55, 4, 'Bagerhat', 'বাগেরহাট', 22.651568, 89.785938, 'www.bagerhat.gov.bd'),
(56, 4, 'Chuadanga', 'চুয়াডাঙ্গা', 23.6401961, 88.841841, 'www.chuadanga.gov.bd'),
(57, 4, 'Jessore', 'যশোর', 23.16643, 89.2081126, 'www.jessore.gov.bd'),
(58, 4, 'Jhenaidah', 'ঝিনাইদহ', 23.5448176, 89.1539213, 'www.jhenaidah.gov.bd'),
(59, 4, 'Khulna', 'খুলনা', 22.815774, 89.568679, 'www.khulna.gov.bd'),
(60, 4, 'Kushtia', 'কুষ্টিয়া', 23.901258, 89.120482, 'www.kushtia.gov.bd'),
(61, 4, 'Magura', 'মাগুরা', 23.487337, 89.419956, 'www.magura.gov.bd'),
(62, 4, 'Meherpur', 'মেহেরপুর', 23.762213, 88.631821, 'www.meherpur.gov.bd'),
(63, 4, 'Narail', 'নড়াইল', 23.172534, 89.512672, 'www.narail.gov.bd'),
(64, 4, 'Satkhira', 'সাতক্ষীরা', 0, 0, 'www.satkhira.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`) VALUES
(1, 'Barisal', 'বরিশাল'),
(2, 'Chittagong', 'চট্টগ্রাম'),
(3, 'Dhaka', 'ঢাকা'),
(4, 'Khulna', 'খুলনা'),
(5, 'Rajshahi', 'রাজশাহী'),
(6, 'Rangpur', 'রংপুর'),
(7, 'Sylhet', 'সিলেট'),
(8, 'Mymensingh', 'ময়মনসিংহ');

-- --------------------------------------------------------

--
-- Table structure for table `exam_room`
--

CREATE TABLE `exam_room` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `sub_num_column` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine`
--

CREATE TABLE `exam_routine` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `day` varchar(255) NOT NULL,
  `sub_id` varchar(255) NOT NULL,
  `session_id` varchar(255) NOT NULL,
  `exam_time` time NOT NULL,
  `class_id` varchar(255) NOT NULL,
  `class_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `fee_type` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scholarshipStatus` int(11) DEFAULT NULL,
  `payStatus` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `discountStatus` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `payMethod` varchar(255) DEFAULT NULL,
  `feeId` varchar(255) DEFAULT NULL,
  `feeDetails` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `disAmount` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feetype`
--

CREATE TABLE `feetype` (
  `id` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `sessionTextId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail`
--

CREATE TABLE `mail` (
  `id` int(11) NOT NULL,
  `sendId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sendMail` varchar(255) DEFAULT NULL,
  `recId` varchar(255) DEFAULT NULL,
  `recMail` varchar(255) DEFAULT NULL,
  `sendDate` varchar(255) DEFAULT NULL,
  `sendTime` varchar(255) DEFAULT NULL,
  `deliverDate` varchar(255) DEFAULT NULL,
  `deliverTime` varchar(255) DEFAULT NULL,
  `recDate` varchar(255) DEFAULT NULL,
  `recTime` varchar(255) DEFAULT NULL,
  `sub` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `deanId` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `mName` varchar(255) DEFAULT NULL,
  `mStart` varchar(255) DEFAULT NULL,
  `mEnd` varchar(255) DEFAULT NULL,
  `mStatus` enum('0','1') DEFAULT '1',
  `currentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mess`
--

CREATE TABLE `mess` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `mess_id` varchar(255) NOT NULL,
  `mess_name` varchar(255) NOT NULL,
  `mess_desc` varchar(255) NOT NULL,
  `mess_img` varchar(255) NOT NULL,
  `mess_cover` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `a_status` enum('0','1') NOT NULL DEFAULT '0',
  `date_time` date NOT NULL,
  `admin_id` varchar(255) NOT NULL,
  `admin_phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `num_users` int(11) NOT NULL,
  `manager_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mess`
--

INSERT INTO `mess` (`id`, `unique_id`, `mess_id`, `mess_name`, `mess_desc`, `mess_img`, `mess_cover`, `email`, `phone`, `a_status`, `date_time`, `admin_id`, `admin_phone`, `address`, `location`, `otp`, `num_users`, `manager_id`) VALUES
(17, '96592D-1701190999-941786850-441366918', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', 'w-1, ইসলামপুর, 100, 45, 2', '', '96592D', 1, ''),
(18, '70771C-1701191398-1750507709-1437610894', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', ', ইসলামপুর, 100, 45, 2', '', '70771C', 1, ''),
(19, '14EAEE-1701191452-1256051501-528635243', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', ', , , , ', '', '14EAEE', 1, ''),
(20, '4CB907-1701191462-2094019621-191494274', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', ', , , , ', '', '4CB907', 1, ''),
(21, 'ECDC8E-1701191469-1047999947-783396025', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', ', , , , ', '', 'ECDC8E', 1, ''),
(22, 'DE67EE-1701191706-223032415-926599196', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', ', , , , ', '', 'DE67EE', 1, ''),
(23, '3757CF-1701191741-695829504-311787001', '', 'Farhad Foysal', '', '', '', 'mff585855075@gmail.com', '+8801770627875', '0', '0000-00-00', 'U-FF-0000001-01770627875', '01770627875', 'w-1, ইসলামপুর, 100, 45, 2', '', '3757CF', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `note`
--

CREATE TABLE `note` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id` int(11) NOT NULL,
  `paymentId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `sessionTextId` varchar(255) DEFAULT NULL,
  `fId` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `payMethodType` int(11) DEFAULT NULL,
  `feeType` int(11) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `feeId` varchar(255) DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `time` timestamp NULL DEFAULT NULL,
  `trxId` varchar(255) DEFAULT NULL,
  `payAmount` varchar(255) DEFAULT NULL,
  `payMethod` varchar(255) DEFAULT NULL,
  `register` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `onlinePhone` varchar(255) DEFAULT NULL,
  `onlineTrxId` varchar(255) DEFAULT NULL,
  `bankA` varchar(255) DEFAULT NULL,
  `bankName` varchar(255) DEFAULT NULL,
  `depositer` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `room_name` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `campus` varchar(255) NOT NULL,
  `invigilator` varchar(255) NOT NULL,
  `faculty_id` varchar(255) NOT NULL,
  `lab_theory` enum('lab','theory') NOT NULL DEFAULT 'theory',
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `num_column` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `unique_id`, `sId`, `room_name`, `room_code`, `campus`, `invigilator`, `faculty_id`, `lab_theory`, `status`, `num_column`) VALUES
(3, '0A2E94-1705849000-1151065058-914210449', '3FB69C-1701233033-1741528352-162749032', 'CR Novus 101', 'N101', 'Novus campus', 'TJ', '', 'theory', '1', 4);

-- --------------------------------------------------------

--
-- Table structure for table `roome_column`
--

CREATE TABLE `roome_column` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `num_column` int(11) NOT NULL,
  `exam_room_id` varchar(255) NOT NULL,
  `std_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `temp_name` varchar(255) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `temp_details` text DEFAULT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `session_id` varchar(255) NOT NULL,
  `routine_type` enum('0','1','2') NOT NULL DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `routine`
--

INSERT INTO `routine` (`id`, `temp_name`, `unique_id`, `sId`, `stdId`, `uId`, `aStatus`, `temp_details`, `temp_code`, `tId`, `temp_num`, `session_id`, `routine_type`, `sync_status`, `sync_key`) VALUES
(1, 'Spring 2024 cse', 'BC0D0B-1705901243-1893540850-1483182112', '3FB69C-1701233033-1741528352-162749032', NULL, 'U-FF-0000001-01770627875', '1', 'Computer Science and Engineering Spring Class Routine 2024', 'BC0D0B', NULL, '1483182112', '11', '0', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `temp_code` varchar(255) DEFAULT NULL,
  `routine_id` int(11) NOT NULL,
  `min` int(11) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `temp_num` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `sub_name` varchar(255) DEFAULT NULL,
  `sub_code` varchar(255) DEFAULT NULL,
  `t_id` varchar(255) DEFAULT NULL,
  `t_name` varchar(255) DEFAULT NULL,
  `room` varchar(255) DEFAULT NULL,
  `room_id` int(11) NOT NULL,
  `campus` varchar(255) DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `dateTime` varchar(255) DEFAULT NULL,
  `start_time` varchar(255) DEFAULT NULL,
  `end_time` varchar(255) DEFAULT NULL,
  `section` varchar(255) DEFAULT NULL,
  `lab_theory` enum('theory','lab') NOT NULL DEFAULT 'theory',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `temp_code`, `routine_id`, `min`, `unique_id`, `sId`, `stdId`, `temp_num`, `tId`, `aStatus`, `sub_name`, `sub_code`, `t_id`, `t_name`, `room`, `room_id`, `campus`, `day`, `dateTime`, `start_time`, `end_time`, `section`, `lab_theory`, `sync_status`, `sync_key`) VALUES
(1, 'BC0D0B', 1, NULL, 'F07D81-1705944341-358339614-1148841982', '3FB69C-1701233033-1741528352-162749032', NULL, '1483182112', NULL, NULL, 'cse111', 'cse111', NULL, 'TJ', 'N101', 3, NULL, 'Tuesday', NULL, '08:30', '10:00', '2', 'theory', '1', NULL),
(2, 'BC0D0B', 1, NULL, '6310F0-1705944541-2062553094-337256432', '3FB69C-1701233033-1741528352-162749032', NULL, '1483182112', NULL, NULL, 'cse325', 'cse325', NULL, 'AA', 'N202', 0, NULL, 'Tuesday', NULL, '11:30', '13:00', '2', 'theory', '1', NULL),
(5, 'BC0D0B', 1, NULL, '6A00A1-1706160091-1924862977-456796564', '3FB69C-1701233033-1741528352-162749032', NULL, '1483182112', NULL, '1', 'eng112', 'eng112', NULL, 'PN', '111', 0, NULL, 'Tuesday', NULL, '13:30', '15:00', '4', 'lab', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `sName` varchar(255) DEFAULT NULL,
  `s_s_name` varchar(50) NOT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `admin_id` varchar(255) NOT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `sPhone` varchar(255) DEFAULT NULL,
  `sPass` varchar(255) DEFAULT NULL,
  `sEmail` varchar(255) DEFAULT NULL,
  `sLogo` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `sAdrs` varchar(255) DEFAULT NULL,
  `sEiin` varchar(255) DEFAULT NULL,
  `sStudent` int(11) DEFAULT NULL,
  `sTeacher` int(11) DEFAULT NULL,
  `sCourse` int(11) DEFAULT NULL,
  `sSec` int(11) DEFAULT NULL,
  `sUser` int(11) DEFAULT NULL,
  `sClass` int(11) DEFAULT NULL,
  `sItp1` varchar(255) DEFAULT NULL,
  `sItp2` varchar(255) DEFAULT NULL,
  `sItEmail` varchar(255) DEFAULT NULL,
  `sWeb` varchar(255) DEFAULT NULL,
  `sFundsBal` varchar(255) DEFAULT NULL,
  `sFundsBank` varchar(255) DEFAULT NULL,
  `sFundsAN` varchar(255) DEFAULT NULL,
  `sActivate` int(11) DEFAULT NULL,
  `sVerification` varchar(255) DEFAULT NULL,
  `sEmpl` int(11) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL,
  `location` varchar(255) NOT NULL,
  `s_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `sName`, `s_s_name`, `unique_id`, `admin_id`, `currSessId`, `sPhone`, `sPass`, `sEmail`, `sLogo`, `sId`, `sAdrs`, `sEiin`, `sStudent`, `sTeacher`, `sCourse`, `sSec`, `sUser`, `sClass`, `sItp1`, `sItp2`, `sItEmail`, `sWeb`, `sFundsBal`, `sFundsBank`, `sFundsAN`, `sActivate`, `sVerification`, `sEmpl`, `proPic`, `sync_status`, `sync_key`, `location`, `s_desc`) VALUES
(2, 'BAF Shaheen Collage', '', '3FB69C-1701233033-1741528352-162749032', 'U-FF-0000001-01770627875', NULL, '01770627875', NULL, 'mff585855075@gmail.com', NULL, 'CO-3FB69C-1701233033-1741528352-162749032', 'w-1, ইসলামপুর, 100, 45, 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01770627875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3FB69C', 1, NULL, '1', NULL, '', ''),
(3, 'East Delta University', '', '3FB69C-1701233033-1741528352-162749033', 'U-FF-0000001-01770627875', NULL, '01770627855', NULL, 'mff585855075@gmail.com', NULL, 'CO-3FB69C-1701233033-1741528352-162749032', 'w-1, ইসলামপুর, 100, 45, 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01770627875', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3FB69C', 1, NULL, '1', NULL, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `seat_distribution`
--

CREATE TABLE `seat_distribution` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `exam_id` varchar(255) NOT NULL,
  `column_id` varchar(255) NOT NULL,
  `room_id` varchar(255) NOT NULL,
  `room_code` varchar(255) NOT NULL,
  `std_id` varchar(255) NOT NULL,
  `column_num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `secassigned`
--

CREATE TABLE `secassigned` (
  `id` int(11) NOT NULL,
  `secId` int(11) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  `aYear` int(11) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `feeTk` varchar(255) DEFAULT NULL,
  `secAId` varchar(255) DEFAULT NULL,
  `aYearId` int(11) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `sessionId` varchar(255) DEFAULT NULL,
  `clsId` varchar(255) DEFAULT NULL,
  `secName` varchar(255) DEFAULT NULL,
  `secCode` varchar(255) DEFAULT NULL,
  `secFee` varchar(255) DEFAULT NULL,
  `secNumStd` int(11) DEFAULT NULL,
  `secTeaId` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `sId` varchar(255) NOT NULL,
  `start_d` date NOT NULL,
  `end_d` date NOT NULL,
  `session_name` varchar(50) NOT NULL,
  `priority` enum('0','1','2') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `unique_id`, `sId`, `start_d`, `end_d`, `session_name`, `priority`) VALUES
(11, '0B259E-1702643069-1760003887-1320551578', '3FB69C-1701233033-1741528352-162749032', '2023-01-01', '2023-12-01', '2024', '2');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `studentId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `stdName` varchar(255) DEFAULT NULL,
  `nidBirth` varchar(255) DEFAULT NULL,
  `stdPhone` varchar(255) DEFAULT NULL,
  `stdEmail` varchar(255) DEFAULT NULL,
  `homePhone` varchar(255) DEFAULT NULL,
  `stdReligion` varchar(255) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `UnionWord` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `fatherName` varchar(255) DEFAULT NULL,
  `motherName` varchar(255) DEFAULT NULL,
  `fNid` varchar(255) DEFAULT NULL,
  `mNid` varchar(255) DEFAULT NULL,
  `gName` varchar(255) DEFAULT NULL,
  `gAddress` varchar(255) DEFAULT NULL,
  `gPhone` varchar(255) DEFAULT NULL,
  `gEmail` varchar(255) DEFAULT NULL,
  `stdImg` varchar(255) DEFAULT NULL,
  `sMajor` varchar(255) DEFAULT NULL,
  `stdPass` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `addDate` varchar(255) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `lastlogin` varchar(255) DEFAULT NULL,
  `sMajorId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `program` int(11) DEFAULT NULL,
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `sId`, `studentId`, `uniqueId`, `currSessId`, `stdId`, `uId`, `stdName`, `nidBirth`, `stdPhone`, `stdEmail`, `homePhone`, `stdReligion`, `dob`, `address`, `country`, `UnionWord`, `aStatus`, `fatherName`, `motherName`, `fNid`, `mNid`, `gName`, `gAddress`, `gPhone`, `gEmail`, `stdImg`, `sMajor`, `stdPass`, `gender`, `addDate`, `proPic`, `lastlogin`, `sMajorId`, `sync_status`, `program`, `sync_key`) VALUES
(8, '3FB69C-1701233033-1741528352-162749032', NULL, '1702895683-194825386', NULL, NULL, 'U-FF-0000002-01816444372', 'Farhad Foysal', '4r4wrw', '01816444372', 'mff585855075@gmail.com', NULL, NULL, '2023-12-08', 'w-1, ইসলামপুর, কক্স বাজার সদর, কক্স বাজার, চট্টগ্রাম', NULL, 'w-1, ইসলামপুর', '1', 'dsfsdf', 'sdfsdf', 'ew', 'wtrwer', NULL, NULL, '+8801770627875', NULL, NULL, NULL, '01816444372', 'male', '2023-12-18', 0x3137303238393536383361312e706e67, NULL, NULL, '1', NULL, NULL),
(9, '3FB69C-1701233033-1741528352-162749032', NULL, '1702917640-1684858034', NULL, NULL, 'U-FF-0000003-01585855075', 'Farhad Foysal', '435634', '01585855075', 'mff585855075@gmail.com', NULL, NULL, '2023-11-27', 'w-1, ইসলামপুর, কক্স বাজার সদর, কক্স বাজার, চট্টগ্রাম', NULL, 'w-1, ইসলামপুর', '1', 'farid', 'rojina', '3245', '43523', NULL, NULL, '+8801770627875', NULL, NULL, NULL, '01585855075', 'female', '2023-12-18', 0x31373032393137363430312e706e67, NULL, NULL, '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subassigned`
--

CREATE TABLE `subassigned` (
  `id` int(11) NOT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `clsId` int(11) DEFAULT NULL,
  `classId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `feeTk` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `subAId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subName` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `credit` varchar(255) DEFAULT NULL,
  `subCode` varchar(255) DEFAULT NULL,
  `subId` varchar(255) DEFAULT NULL,
  `depId` int(11) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `subFee` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `sId` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `program` int(11) DEFAULT NULL,
  `departmentId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subonsec`
--

CREATE TABLE `subonsec` (
  `id` int(11) NOT NULL,
  `subAId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `subId` int(11) DEFAULT NULL,
  `subjectId` varchar(255) DEFAULT NULL,
  `sectionId` varchar(255) DEFAULT NULL,
  `secId` int(11) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `subFee` varchar(255) DEFAULT NULL,
  `secFee` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `task_name` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `scheduleId` varchar(255) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `aStatus` int(11) DEFAULT NULL,
  `task_details` text DEFAULT NULL,
  `task_location` varchar(255) DEFAULT NULL,
  `task_id` varchar(255) DEFAULT NULL,
  `task_code` varchar(255) DEFAULT NULL,
  `calendar` timestamp NULL DEFAULT NULL,
  `time` time DEFAULT NULL,
  `day` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `dateTime` timestamp NULL DEFAULT NULL,
  `done` enum('0','1') DEFAULT '0',
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `uniqueId` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `tName` varchar(255) DEFAULT NULL,
  `tPhone` varchar(255) DEFAULT NULL,
  `tPass` varchar(255) DEFAULT NULL,
  `tEmail` varchar(255) DEFAULT NULL,
  `tAddress` varchar(255) DEFAULT NULL,
  `aStatus` enum('0','1') DEFAULT '1',
  `tMajor` varchar(255) DEFAULT NULL,
  `tBal` varchar(255) DEFAULT NULL,
  `tLogo` varchar(255) DEFAULT NULL,
  `tId` varchar(255) DEFAULT NULL,
  `uType` int(11) DEFAULT NULL,
  `proPic` blob DEFAULT NULL,
  `nidBirth` varchar(255) DEFAULT NULL,
  `uId` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `unions`
--

CREATE TABLE `unions` (
  `id` int(2) UNSIGNED NOT NULL,
  `upazila_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `bn_name` varchar(50) NOT NULL,
  `lat` double NOT NULL,
  `lon` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `unions`
--

INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1, 226, NULL, 'আমলাব', 0, 0),
(2, 226, NULL, 'বাজনাব', 0, 0),
(3, 226, NULL, 'বেলাব', 0, 0),
(4, 226, NULL, 'বিন্নাবাইদ', 0, 0),
(5, 226, NULL, 'চরউজিলাব', 0, 0),
(6, 226, NULL, 'নারায়নপুর', 0, 0),
(7, 226, NULL, 'সল্লাবাদ', 0, 0),
(8, 226, NULL, 'পাটুলী', 0, 0),
(9, 226, NULL, 'দেয়ারা', 0, 0),
(10, 227, NULL, 'বড়চাপা', 0, 0),
(11, 227, NULL, 'চালাকচর', 0, 0),
(12, 227, NULL, 'চরমান্দালিয়া', 0, 0),
(13, 227, NULL, 'একদুয়ারিয়া', 0, 0),
(14, 227, NULL, 'গোতাশিয়া', 0, 0),
(15, 227, NULL, 'কাচিকাটা', 0, 0),
(16, 227, NULL, 'খিদিরপুর', 0, 0),
(17, 227, NULL, 'শুকুন্দি', 0, 0),
(18, 227, NULL, 'দৌলতপুর', 0, 0),
(19, 227, NULL, 'কৃষ্ণপুর ইউনিয়ন', 0, 0),
(20, 227, NULL, 'লেবুতলা', 0, 0),
(21, 227, NULL, 'চন্দনবাড়ী', 0, 0),
(22, 228, NULL, 'আলোকবালী', 0, 0),
(23, 228, NULL, 'চরদিঘলদী', 0, 0),
(24, 228, NULL, 'করিমপুর', 0, 0),
(25, 228, NULL, 'কাঠালিয়া', 0, 0),
(26, 228, NULL, 'নূরালাপুর', 0, 0),
(27, 228, NULL, 'মহিষাশুড়া', 0, 0),
(28, 228, NULL, 'মেহেড়পাড়া', 0, 0),
(29, 228, NULL, 'নজরপুর', 0, 0),
(30, 228, NULL, 'পাইকারচর', 0, 0),
(31, 228, NULL, 'পাঁচদোনা', 0, 0),
(32, 228, NULL, 'শিলমান্দী', 0, 0),
(33, 228, NULL, 'আমদিয়া ২', 0, 0),
(34, 229, NULL, 'ডাংঙ্গা', 0, 0),
(35, 229, NULL, 'চরসিন্দুর', 0, 0),
(36, 229, NULL, 'জিনারদী', 0, 0),
(37, 229, NULL, 'গজারিয়া', 0, 0),
(38, 230, NULL, 'চানপুর', 0, 0),
(39, 230, NULL, 'অলিপুরা', 0, 0),
(40, 230, NULL, 'আমিরগঞ্জ', 0, 0),
(41, 230, NULL, 'আদিয়াবাদ', 0, 0),
(42, 230, NULL, 'বাঁশগাড়ী', 0, 0),
(43, 230, NULL, 'চান্দেরকান্দি', 0, 0),
(44, 230, NULL, 'চরআড়ালিয়া', 0, 0),
(45, 230, NULL, 'চরমধুয়া', 0, 0),
(46, 230, NULL, 'চরসুবুদ্দি', 0, 0),
(47, 230, NULL, 'হাইরমারা', 0, 0),
(48, 230, NULL, 'মহেষপুর', 0, 0),
(49, 230, NULL, 'মির্জানগর', 0, 0),
(50, 230, NULL, 'মির্জারচর', 0, 0),
(51, 230, NULL, 'নিলক্ষ্যা', 0, 0),
(52, 230, NULL, 'পলাশতলী', 0, 0),
(53, 230, NULL, 'পাড়াতলী', 0, 0),
(54, 230, NULL, 'শ্রীনগর', 0, 0),
(55, 230, NULL, 'রায়পুরা', 0, 0),
(56, 230, NULL, 'মুছাপুর', 0, 0),
(57, 230, NULL, 'উত্তর বাখরনগর', 0, 0),
(58, 230, NULL, 'মরজাল', 0, 0),
(59, 231, NULL, 'দুলালপুর', 0, 0),
(60, 231, NULL, 'জয়নগর', 0, 0),
(61, 231, NULL, 'সাধারচর', 0, 0),
(62, 231, NULL, 'মাছিমপুর', 0, 0),
(63, 231, NULL, 'চক্রধা', 0, 0),
(64, 231, NULL, 'যোশর', 0, 0),
(65, 231, NULL, 'বাঘাব', 0, 0),
(66, 231, NULL, 'আয়ুবপুর', 0, 0),
(67, 231, NULL, 'পুটিয়া', 0, 0),
(68, 163, NULL, 'বাহাদুরশাদী', 0, 0),
(69, 163, NULL, 'বক্তারপুর', 0, 0),
(70, 163, NULL, 'জামালপুর', 0, 0),
(71, 163, NULL, 'জাঙ্গালিয়া', 0, 0),
(72, 163, NULL, 'মোক্তারপুর', 0, 0),
(73, 163, NULL, 'নাগরী', 0, 0),
(74, 163, NULL, 'তুমুলিয়া', 0, 0),
(75, 160, NULL, 'আটাবহ', 0, 0),
(76, 160, NULL, 'বোয়ালী', 0, 0),
(77, 160, NULL, 'চাপাইর', 0, 0),
(78, 160, NULL, 'ঢালজোড়া', 0, 0),
(79, 160, NULL, 'ফুলবাড়ীয়া', 0, 0),
(80, 160, NULL, 'মধ্যপাড়া', 0, 0),
(81, 160, NULL, 'মৌচাক', 0, 0),
(82, 160, NULL, 'সূত্রাপুর', 0, 0),
(83, 160, NULL, 'শ্রীফলতলী', 0, 0),
(84, 161, NULL, 'বারিষাব', 0, 0),
(85, 161, NULL, 'ঘাগটিয়া', 0, 0),
(86, 161, NULL, 'কাপাসিয়া', 0, 0),
(87, 161, NULL, 'চাঁদপুর', 0, 0),
(88, 161, NULL, 'তরগাঁও', 0, 0),
(89, 161, NULL, 'কড়িহাতা', 0, 0),
(90, 161, NULL, 'টোক', 0, 0),
(91, 161, NULL, 'সিংহশ্রী', 0, 0),
(92, 161, NULL, 'দূর্গাপুর', 0, 0),
(93, 161, NULL, 'সনমানিয়া', 0, 0),
(94, 161, NULL, 'রায়েদ', 0, 0),
(95, 159, NULL, 'বাড়ীয়া', 0, 0),
(96, 159, NULL, 'বাসন', 0, 0),
(97, 159, NULL, 'গাছা', 0, 0),
(98, 159, NULL, 'কাশিমপুর', 0, 0),
(99, 159, NULL, 'কাউলতিয়া', 0, 0),
(100, 159, NULL, 'কোনাবাড়ী', 0, 0),
(101, 159, NULL, 'মির্জাপুর', 0, 0),
(102, 159, NULL, 'পূবাইল', 0, 0),
(103, 162, NULL, 'বরমী', 0, 0),
(104, 162, NULL, 'গাজীপুর', 0, 0),
(105, 162, NULL, 'গোসিংগা', 0, 0),
(106, 162, NULL, 'মাওনা', 0, 0),
(107, 162, NULL, 'কাওরাইদ', 0, 0),
(108, 162, NULL, 'প্রহলাদপুর', 0, 0),
(109, 162, NULL, 'রাজাবাড়ী', 0, 0),
(110, 162, NULL, 'তেলিহাটী', 0, 0),
(111, 247, NULL, 'বিনোদপুর', 0, 0),
(112, 247, NULL, 'তুলাসার', 0, 0),
(113, 247, NULL, 'পালং', 0, 0),
(114, 247, NULL, 'ডোমসার', 0, 0),
(115, 247, NULL, 'রুদ্রকর', 0, 0),
(116, 247, NULL, 'আংগারিয়া', 0, 0),
(117, 247, NULL, 'চিতলয়া', 0, 0),
(118, 247, NULL, 'মাহমুদপুর', 0, 0),
(119, 247, NULL, 'চিকন্দি', 0, 0),
(120, 247, NULL, 'চন্দ্রপুর', 0, 0),
(121, 247, NULL, 'শৌলপাড়া', 0, 0),
(122, 249, NULL, 'কেদারপুর', 0, 0),
(123, 249, NULL, 'ডিংগামানিক', 0, 0),
(124, 249, NULL, 'ঘড়িষার', 0, 0),
(125, 249, NULL, 'নওপাড়া', 0, 0),
(126, 249, NULL, 'মোত্তারেরচর', 0, 0),
(127, 249, NULL, 'চরআত্রা', 0, 0),
(128, 249, NULL, 'রাজনগর', 0, 0),
(129, 249, NULL, 'জপসা', 0, 0),
(130, 249, NULL, 'ভোজেশ্বর', 0, 0),
(131, 249, NULL, 'ফতেজংপুর', 0, 0),
(132, 249, NULL, 'বিঝারি', 0, 0),
(133, 249, NULL, 'ভূমখাড়া', 0, 0),
(134, 249, NULL, 'নশাসন', 0, 0),
(135, 250, NULL, 'জাজিরা সদর', 0, 0),
(136, 250, NULL, 'মূলনা', 0, 0),
(137, 250, NULL, 'বড়কান্দি', 0, 0),
(138, 250, NULL, 'বিলাসপুর', 0, 0),
(139, 250, NULL, 'কুন্ডেরচর', 0, 0),
(140, 250, NULL, 'পালেরচর', 0, 0),
(141, 250, NULL, 'পুর্ব নাওডোবা', 0, 0),
(142, 250, NULL, 'নাওডোবা', 0, 0),
(143, 250, NULL, 'সেনেরচর', 0, 0),
(144, 250, NULL, 'বি. কে. নগর', 0, 0),
(145, 250, NULL, 'বড়গোপালপুর', 0, 0),
(146, 250, NULL, 'জয়নগর', 0, 0),
(147, 252, NULL, 'নাগের পাড়া', 0, 0),
(148, 252, NULL, 'আলাওলপুর', 0, 0),
(149, 252, NULL, 'কোদালপুর', 0, 0),
(150, 252, NULL, 'গোসাইরহাট', 0, 0),
(151, 252, NULL, 'ইদিলপুর', 0, 0),
(152, 252, NULL, 'নলমুড়ি', 0, 0),
(153, 252, NULL, 'সামন্তসার', 0, 0),
(154, 252, NULL, 'কুচাইপট্টি', 0, 0),
(155, 251, NULL, 'রামভদ্রপুর', 0, 0),
(156, 251, NULL, 'মহিষার', 0, 0),
(157, 251, NULL, 'ছয়গাঁও', 0, 0),
(158, 251, NULL, 'নারায়নপুর', 0, 0),
(159, 251, NULL, 'ডি.এম খালি', 0, 0),
(160, 251, NULL, 'চরকুমারিয়া', 0, 0),
(161, 251, NULL, 'সখিপুর', 0, 0),
(162, 251, NULL, 'কাচিকাঁটা', 0, 0),
(163, 251, NULL, 'উত্তর তারাবুনিয়া', 0, 0),
(164, 251, NULL, 'চরভাগা', 0, 0),
(165, 251, NULL, 'আরশিনগর', 0, 0),
(166, 251, NULL, 'দক্ষিন তারাবুনিয়া', 0, 0),
(167, 251, NULL, 'চরসেনসাস', 0, 0),
(168, 248, NULL, 'শিধলকুড়া', 0, 0),
(169, 248, NULL, 'কনেস্বর', 0, 0),
(170, 248, NULL, 'পুর্ব ডামুড্যা', 0, 0),
(171, 248, NULL, 'ইসলামপুর', 0, 0),
(172, 248, NULL, 'ধানকাটি', 0, 0),
(173, 248, NULL, 'সিড্যা', 0, 0),
(174, 248, NULL, 'দারুল আমান', 0, 0),
(175, 220, NULL, 'সাতগ্রাম', 0, 0),
(176, 220, NULL, 'দুপ্তারা', 0, 0),
(177, 220, NULL, 'ব্রা‏হ্মন্দী', 0, 0),
(178, 220, NULL, 'ফতেপুর', 0, 0),
(179, 220, NULL, 'বিশনন্দী', 0, 0),
(180, 220, NULL, 'মাহমুদপুর', 0, 0),
(181, 220, NULL, 'হাইজাদী', 0, 0),
(182, 220, NULL, 'উচিৎপুরা', 0, 0),
(183, 220, NULL, 'কালাপাহাড়িয়া', 0, 0),
(184, 220, NULL, 'খাগকান্দা', 0, 0),
(185, 223, NULL, 'আলিরটেক', 0, 0),
(186, 223, NULL, 'কুতুবপুর', 0, 0),
(187, 223, NULL, 'বক্তাবলী', 0, 0),
(188, 223, NULL, 'এনায়েত নগর', 0, 0),
(189, 224, NULL, 'মুড়াপাড়া', 0, 0),
(190, 224, NULL, 'ভূলতা', 0, 0),
(191, 224, NULL, 'গোলাকান্দাইল', 0, 0),
(192, 224, NULL, 'দাউদপুর', 0, 0),
(193, 224, NULL, 'রূপগঞ্জ', 0, 0),
(194, 224, NULL, 'কায়েতপাড়া', 0, 0),
(195, 224, NULL, 'ভোলাব', 0, 0),
(196, 221, NULL, 'পিরোজপুর ইউনিয়ন', 0, 0),
(197, 221, NULL, 'শম্ভুপুরা ইউনিয়ন', 0, 0),
(198, 221, NULL, 'মোগরাপাড়া ইউনিয়ন', 0, 0),
(199, 221, NULL, 'বৈদ্যেরবাজার ইউনিয়ন', 0, 0),
(200, 221, NULL, 'বারদী ইউনিয়ন', 0, 0),
(201, 221, NULL, 'নোয়াগাঁও ইউনিয়ন', 0, 0),
(202, 221, NULL, 'জামপুর ইউনিয়ন', 0, 0),
(203, 221, NULL, 'সাদীপুর ইউনিয়ন', 0, 0),
(204, 221, NULL, 'সনমান্দি ইউনিয়ন', 0, 0),
(205, 221, NULL, 'কাচপুর ইউনিয়ন', 0, 0),
(206, 260, NULL, 'বাসাইল ইউনিয়ন', 0, 0),
(207, 260, NULL, 'কাঞ্চনপুর ইউনিয়ন', 0, 0),
(208, 260, NULL, 'হাবলা ইউনিয়ন', 0, 0),
(209, 260, NULL, 'কাশিল ইউনিয়ন', 0, 0),
(210, 260, NULL, 'ফুলকি ইউনিয়ন', 0, 0),
(211, 260, NULL, 'কাউলজানী ইউনিয়ন', 0, 0),
(212, 268, NULL, 'অর্জুনা ইউনিয়ন', 0, 0),
(213, 268, NULL, 'গাবসারা ইউনিয়ন', 0, 0),
(214, 268, NULL, 'ফলদা ইউনিয়ন', 0, 0),
(215, 268, NULL, 'গোবিন্দাসী ইউনিয়ন', 0, 0),
(216, 268, NULL, 'আলোয়া ইউনিয়ন', 0, 0),
(217, 268, NULL, 'নিকরাইল ইউনিয়ন', 0, 0),
(218, 267, NULL, 'দেউলী ইউনিয়ন', 0, 0),
(219, 267, NULL, 'লাউহাটি ইউনিয়ন', 0, 0),
(220, 267, NULL, 'পাথরাইল ইউনিয়ন', 0, 0),
(221, 267, NULL, 'দেলদুয়ার ইউনিয়ন', 0, 0),
(222, 267, NULL, 'ফাজিলহাটি ইউনিয়ন', 0, 0),
(223, 267, NULL, 'এলাসিন ইউনিয়ন', 0, 0),
(224, 267, NULL, 'আটিয়া ইউনিয়ন', 0, 0),
(225, 267, NULL, 'ডুবাইল ইউনিয়ন', 0, 0),
(226, 262, NULL, 'দেউলাবাড়ী ইউনিয়ন', 0, 0),
(227, 262, NULL, 'ঘাটাইল ইউনিয়ন', 0, 0),
(228, 262, NULL, 'জামুরিয়া ইউনিয়ন', 0, 0),
(229, 262, NULL, 'লোকেরপাড়া ইউনিয়ন', 0, 0),
(230, 262, NULL, 'আনেহলা ইউনিয়ন', 0, 0),
(231, 262, NULL, 'দিঘলকান্দি ইউনিয়ন', 0, 0),
(232, 262, NULL, 'দিগড় ইউনিয়ন', 0, 0),
(233, 262, NULL, 'দেওপাড়া ইউনিয়ন', 0, 0),
(234, 262, NULL, 'সন্ধানপুর ইউনিয়ন', 0, 0),
(235, 262, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(236, 262, NULL, 'ধলাপাড়া ইউনিয়ন', 0, 0),
(237, 266, NULL, 'হাদিরা ইউনিয়ন', 0, 0),
(238, 266, NULL, 'ঝাওয়াইল ইউনিয়ন', 0, 0),
(239, 266, NULL, 'নগদাশিমলা ইউনিয়ন', 0, 0),
(240, 266, NULL, 'ধোপাকান্দি ইউনিয়ন', 0, 0),
(241, 266, NULL, 'আলমনগর ইউনিয়ন', 0, 0),
(242, 266, NULL, 'হেমনগর ইউনিয়ন', 0, 0),
(243, 266, NULL, 'মির্জাপুর ইউনিয়ন', 0, 0),
(244, 261, NULL, 'আলোকদিয়া ইউনিয়ন', 0, 0),
(245, 261, NULL, 'আউশনারা ইউনিয়ন', 0, 0),
(246, 261, NULL, 'অরণখোলা ইউনিয়ন', 0, 0),
(247, 261, NULL, 'শোলাকুড়ি ইউনিয়ন', 0, 0),
(248, 261, NULL, 'গোলাবাড়ী ইউনিয়ন', 0, 0),
(249, 261, NULL, 'মির্জাবাড়ী ইউনিয়ন', 0, 0),
(250, 265, NULL, 'মহেড়া ইউনিয়ন', 0, 0),
(251, 265, NULL, 'জামুর্কী ইউনিয়ন', 0, 0),
(252, 265, NULL, 'ফতেপুর ইউনিয়ন', 0, 0),
(253, 265, NULL, 'বানাইল ইউনিয়ন', 0, 0),
(254, 265, NULL, 'আনাইতারা ইউনিয়ন', 0, 0),
(255, 265, NULL, 'ওয়ার্শী ইউনিয়ন', 0, 0),
(256, 265, NULL, 'ভাতগ্রাম ইউনিয়ন', 0, 0),
(257, 265, NULL, 'বহুরিয়া ইউনিয়ন', 0, 0),
(258, 265, NULL, 'গোড়াই ইউনিয়ন', 0, 0),
(259, 265, NULL, 'আজগানা ইউনিয়ন', 0, 0),
(260, 265, NULL, 'তরফপুর ইউনিয়ন', 0, 0),
(261, 265, NULL, 'বাঁশতৈল ইউনিয়ন', 0, 0),
(262, 265, NULL, 'ভাওড়া ইউনিয়ন', 0, 0),
(263, 265, NULL, 'লতিফপুর ইউনিয়ন', 0, 0),
(264, 264, NULL, 'ভারড়া ইউনিয়ন', 0, 0),
(265, 264, NULL, 'সহবতপুর ইউনিয়ন', 0, 0),
(266, 264, NULL, 'গয়হাটা ইউনিয়ন', 0, 0),
(267, 264, NULL, 'সলিমাবাদ ইউনিয়ন', 0, 0),
(268, 264, NULL, 'নাগরপুর ইউনিয়ন', 0, 0),
(269, 264, NULL, 'মামুদনগর ইউনিয়ন', 0, 0),
(270, 264, NULL, 'মোকনা ইউনিয়ন', 0, 0),
(271, 264, NULL, 'পাকুটিয়া ইউনিয়ন', 0, 0),
(272, 264, NULL, 'বেকরা আটগ্রাম ইউনিয়ন', 0, 0),
(273, 264, NULL, 'ধুবড়িয়া ইউনিয়ন', 0, 0),
(274, 264, NULL, 'ভাদ্রা ইউনিয়ন', 0, 0),
(275, 264, NULL, 'দপ্তিয়র ইউনিয়ন', 0, 0),
(276, 259, NULL, 'কাকড়াজান ইউনিয়ন', 0, 0),
(277, 259, NULL, 'গজারিয়া ইউনিয়ন', 0, 0),
(278, 259, NULL, 'যাদবপুর ইউনিয়ন', 0, 0),
(279, 259, NULL, 'হাতীবান্ধা ইউনিয়ন', 0, 0),
(280, 259, NULL, 'কালিয়া ইউনিয়ন', 0, 0),
(281, 259, NULL, 'দরিয়াপুর ইউনিয়ন', 0, 0),
(282, 259, NULL, 'কালমেঘা ইউনিয়ন', 0, 0),
(283, 259, NULL, 'বহেড়াতৈল ইউনিয়ন', 0, 0),
(284, 258, NULL, 'মগড়া ইউনিয়ন', 0, 0),
(285, 258, NULL, 'গালা ইউনিয়ন', 0, 0),
(286, 258, NULL, 'ঘারিন্দা ইউনিয়ন', 0, 0),
(287, 258, NULL, 'করটিয়া ইউনিয়ন', 0, 0),
(288, 258, NULL, 'ছিলিমপুর ইউনিয়ন', 0, 0),
(289, 258, NULL, 'পোড়াবাড়ী ইউনিয়ন', 0, 0),
(290, 258, NULL, 'দাইন্যা ইউনিয়ন', 0, 0),
(291, 258, NULL, 'বাঘিল ইউনিয়ন', 0, 0),
(292, 258, NULL, 'কাকুয়া ইউনিয়ন', 0, 0),
(293, 258, NULL, 'হুগড়া ইউনিয়ন', 0, 0),
(294, 258, NULL, 'কাতুলী ইউনিয়ন', 0, 0),
(295, 258, NULL, 'মাহমুদনগর ইউনিয়ন', 0, 0),
(296, 263, NULL, 'দুর্গাপুর ইউনিয়ন', 0, 0),
(297, 263, NULL, 'বীরবাসিন্দা ইউনিয়ন', 0, 0),
(298, 263, NULL, 'নারান্দিয়া ইউনিয়ন', 0, 0),
(299, 263, NULL, 'সহদেবপুর ইউনিয়ন', 0, 0),
(300, 263, NULL, 'কোকডহরা ইউনিয়ন', 0, 0),
(301, 263, NULL, 'বল্লা ইউনিয়ন', 0, 0),
(302, 263, NULL, 'সল্লা ইউনিয়ন', 0, 0),
(303, 263, NULL, 'নাগবাড়ী ইউনিয়ন', 0, 0),
(304, 263, NULL, 'বাংড়া ইউনিয়ন', 0, 0),
(305, 263, NULL, 'পাইকড়া ইউনিয়ন', 0, 0),
(306, 263, NULL, 'দশকিয়া ইউনিয়ন', 0, 0),
(307, 263, NULL, 'পারখী ইউনিয়ন', 0, 0),
(308, 263, NULL, 'গোহালিয়াবাড়ী ইউনিয়ন', 0, 0),
(309, 269, NULL, 'ধোপাখালী ইউনিয়ন', 0, 0),
(310, 269, NULL, 'পাইস্কা ইউনিয়ন', 0, 0),
(311, 269, NULL, 'মুশুদ্দি ইউনিয়ন', 0, 0),
(312, 269, NULL, 'বলিভদ্র ইউনিয়ন', 0, 0),
(313, 269, NULL, 'বীরতারা ইউনিয়ন', 0, 0),
(314, 269, NULL, 'বানিয়াজান ইউনিয়ন', 0, 0),
(315, 269, NULL, 'যদুনাথপুর ইউনিয়ন', 0, 0),
(316, 182, NULL, 'চৌগাংগা', 0, 0),
(317, 182, NULL, 'জয়সিদ্ধি', 0, 0),
(318, 182, NULL, 'এলংজুরী', 0, 0),
(319, 182, NULL, 'বাদলা', 0, 0),
(320, 182, NULL, 'বড়িবাড়ি', 0, 0),
(321, 182, NULL, 'ইটনা ইউনিয়ন', 0, 0),
(322, 182, NULL, 'মৃগা', 0, 0),
(323, 182, NULL, 'ধনপুর', 0, 0),
(324, 182, NULL, 'রায়টুটি', 0, 0),
(325, 184, NULL, 'বনগ্রাম', 0, 0),
(326, 184, NULL, 'সহশ্রাম ধুলদিয়া', 0, 0),
(327, 184, NULL, 'কারগাঁও', 0, 0),
(328, 184, NULL, 'চান্দপুর', 0, 0),
(329, 184, NULL, 'মুমুরদিয়া', 0, 0),
(330, 184, NULL, 'আচমিতা', 0, 0),
(331, 184, NULL, 'মসূয়া', 0, 0),
(332, 184, NULL, 'লোহাজুরী', 0, 0),
(333, 184, NULL, 'জালালপুর', 0, 0),
(334, 180, NULL, 'সাদেকপুর', 0, 0),
(335, 180, NULL, 'আগানগর', 0, 0),
(336, 180, NULL, 'শিমুলকান্দি', 0, 0),
(337, 180, NULL, 'গজারিয়া', 0, 0),
(338, 180, NULL, 'কালিকা প্রসাদ', 0, 0),
(339, 180, NULL, 'শ্রীনগর', 0, 0),
(340, 180, NULL, 'শিবপুর', 0, 0),
(341, 190, NULL, 'তালজাঙ্গা', 0, 0),
(342, 190, NULL, 'রাউতি', 0, 0),
(343, 190, NULL, 'ধলা', 0, 0),
(344, 190, NULL, 'জাওয়ার', 0, 0),
(345, 190, NULL, 'দামিহা', 0, 0),
(346, 190, NULL, 'দিগদাইর', 0, 0),
(347, 190, NULL, 'তাড়াইল-সাচাইল', 0, 0),
(348, 181, NULL, 'জিনারী', 0, 0),
(349, 181, NULL, 'গোবিন্দপুর', 0, 0),
(350, 181, NULL, 'সিদলা', 0, 0),
(351, 181, NULL, 'আড়াইবাড়িয়া', 0, 0),
(352, 181, NULL, 'সাহেদল', 0, 0),
(353, 181, NULL, 'পুমদি', 0, 0),
(354, 189, NULL, 'জাঙ্গালিয়া', 0, 0),
(355, 189, NULL, 'হোসেনদি', 0, 0),
(356, 189, NULL, 'নারান্দি', 0, 0),
(357, 189, NULL, 'সুখিয়া', 0, 0),
(358, 189, NULL, 'পটুয়াভাঙ্গা', 0, 0),
(359, 189, NULL, 'চান্দিপাশা', 0, 0),
(360, 189, NULL, 'চারফারাদি', 0, 0),
(361, 189, NULL, 'বুড়ুদিয়া', 0, 0),
(362, 189, NULL, 'ইজারাসিন্দুর', 0, 0),
(363, 189, NULL, 'পাকন্দিয়া', 0, 0),
(364, 186, NULL, 'রামদী', 0, 0),
(365, 186, NULL, 'উছমানপুর', 0, 0),
(366, 186, NULL, 'ছয়সূতী', 0, 0),
(367, 186, NULL, 'সালুয়া', 0, 0),
(368, 186, NULL, 'গোবরিয়া আব্দুল্লাহপুর', 0, 0),
(369, 186, NULL, 'ফরিদপুর', 0, 0),
(370, 185, NULL, 'রশিদাবাদ', 0, 0),
(371, 185, NULL, 'লতিবাবাদ', 0, 0),
(372, 185, NULL, 'মাইজখাপন', 0, 0),
(373, 185, NULL, 'মহিনন্দ', 0, 0),
(374, 185, NULL, 'যশোদল', 0, 0),
(375, 185, NULL, 'বৌলাই', 0, 0),
(376, 185, NULL, 'বিন্নাটি', 0, 0),
(377, 185, NULL, 'মারিয়া', 0, 0),
(378, 185, NULL, 'চৌদ্দশত', 0, 0),
(379, 185, NULL, 'কর্শাকড়িয়াইল', 0, 0),
(380, 185, NULL, 'দানাপাটুলী', 0, 0),
(381, 183, NULL, 'কাদিরজঙ্গল', 0, 0),
(382, 183, NULL, 'গুজাদিয়া', 0, 0),
(383, 183, NULL, 'কিরাটন ইউনিয়ন', 0, 0),
(384, 183, NULL, 'বারঘড়িয়া', 0, 0),
(385, 183, NULL, 'নিয়ামতপুর', 0, 0),
(386, 183, NULL, 'দেহুন্দা', 0, 0),
(387, 183, NULL, 'সুতারপাড়া', 0, 0),
(388, 183, NULL, 'গুনধর', 0, 0),
(389, 183, NULL, 'জয়কা', 0, 0),
(390, 183, NULL, 'জাফরাবাদ', 0, 0),
(391, 183, NULL, 'নোয়াবাদ', 0, 0),
(392, 179, NULL, 'কৈলাগ', 0, 0),
(393, 179, NULL, 'পিরিজপুর', 0, 0),
(394, 179, NULL, 'গাজীরচর', 0, 0),
(395, 179, NULL, 'হিলচিয়া', 0, 0),
(396, 179, NULL, 'মাইজচর', 0, 0),
(397, 179, NULL, 'হুমাইপর', 0, 0),
(398, 179, NULL, 'হালিমপুর', 0, 0),
(399, 179, NULL, 'সরারচর', 0, 0),
(400, 179, NULL, 'দিলালপুর', 0, 0),
(401, 179, NULL, 'দিঘীরপাড়', 0, 0),
(402, 179, NULL, 'বলিয়ার্দী', 0, 0),
(403, 178, NULL, 'দেওঘর', 0, 0),
(404, 178, NULL, 'কাস্তুল', 0, 0),
(405, 178, NULL, 'অষ্টগ্রাম সদর', 0, 0),
(406, 178, NULL, 'বাঙ্গালপাড়া', 0, 0),
(407, 178, NULL, 'কলমা', 0, 0),
(408, 178, NULL, 'আদমপুর', 0, 0),
(409, 178, NULL, 'খয়েরপুর-আব্দুল্লাপুর', 0, 0),
(410, 178, NULL, 'পূর্ব অষ্টগ্রাম', 0, 0),
(411, 187, NULL, 'গোপদিঘী', 0, 0),
(412, 187, NULL, 'মিঠামইন', 0, 0),
(413, 187, NULL, 'ঢাকী', 0, 0),
(414, 187, NULL, 'ঘাগড়া', 0, 0),
(415, 187, NULL, 'কেওয়ারজোর', 0, 0),
(416, 187, NULL, 'কাটখাল', 0, 0),
(417, 187, NULL, 'বৈরাটি', 0, 0),
(418, 188, NULL, 'ছাতিরচর', 0, 0),
(419, 188, NULL, 'গুরই', 0, 0),
(420, 188, NULL, 'জারইতলা', 0, 0),
(421, 188, NULL, 'নিকলী সদর', 0, 0),
(422, 188, NULL, 'কারপাশা', 0, 0),
(423, 188, NULL, 'দামপাড়া', 0, 0),
(424, 188, NULL, 'সিংপুর', 0, 0),
(425, 199, NULL, 'বাল্লা ইউনিয়ন', 0, 0),
(426, 199, NULL, 'গালা ইউনিয়ন', 0, 0),
(427, 199, NULL, 'চালা ইউনিয়ন', 0, 0),
(428, 199, NULL, 'বলড়া', 0, 0),
(429, 199, NULL, 'হারুকান্দি', 0, 0),
(430, 199, NULL, 'বয়রা', 0, 0),
(431, 199, NULL, 'রামকৃঞ্চপুর', 0, 0),
(432, 199, NULL, 'গোপীনাথপুর', 0, 0),
(433, 199, NULL, 'কাঞ্চনপুর', 0, 0),
(434, 199, NULL, 'লেছড়াগঞ্জ', 0, 0),
(435, 199, NULL, 'সুতালড়ী', 0, 0),
(436, 199, NULL, 'ধূলশুড়া', 0, 0),
(437, 199, NULL, 'আজিমনগর', 0, 0),
(438, 198, NULL, 'বরাইদ', 0, 0),
(439, 198, NULL, 'দিঘুলিয়া', 0, 0),
(440, 198, NULL, 'বালিয়াটি', 0, 0),
(441, 198, NULL, 'দড়গ্রাম', 0, 0),
(442, 198, NULL, 'তিল্লী', 0, 0),
(443, 198, NULL, 'হরগজ', 0, 0),
(444, 198, NULL, 'সাটুরিয়া', 0, 0),
(445, 198, NULL, 'ধানকোড়া', 0, 0),
(446, 198, NULL, 'ফুকুরহাটি', 0, 0),
(447, 195, NULL, 'বেতিলা-মিতরা ইউনিয়ন', 0, 0),
(448, 195, NULL, 'জাগীর ইউনিয়ন', 0, 0),
(449, 195, NULL, 'আটিগ্রাম ইউনিয়ন', 0, 0),
(450, 195, NULL, 'দিঘী ইউনিয়ন', 0, 0),
(451, 195, NULL, 'পুটাইল ইউনিয়ন', 0, 0),
(452, 195, NULL, 'হাটিপাড়া ইউনিয়ন', 0, 0),
(453, 195, NULL, 'ভাড়ারিয়া ইউনিয়ন', 0, 0),
(454, 195, NULL, 'নবগ্রাম ইউনিয়ন', 0, 0),
(455, 195, NULL, 'গড়পাড়া ইউনিয়ন', 0, 0),
(456, 195, NULL, 'কৃঞ্চপুর ইউনিয়ন', 0, 0),
(457, 200, NULL, 'পয়লা ইউনিয়ন', 0, 0),
(458, 200, NULL, 'সিংজুড়ী ইউনিয়ন', 0, 0),
(459, 200, NULL, 'বালিয়াখোড়া ইউনিয়ন', 0, 0),
(460, 200, NULL, 'ঘিওর ইউনিয়ন', 0, 0),
(461, 200, NULL, 'বড়টিয়া ইউনিয়ন', 0, 0),
(462, 200, NULL, 'বানিয়াজুড়ী', 0, 0),
(463, 200, NULL, 'নালী', 0, 0),
(464, 197, NULL, 'তেওতা ইউনিয়ন', 0, 0),
(465, 197, NULL, 'উথলী ইউনিয়ন', 0, 0),
(466, 197, NULL, 'শিবালয় ইউনিয়ন', 0, 0),
(467, 197, NULL, 'উলাইল ইউনিয়ন', 0, 0),
(468, 197, NULL, 'আরুয়া ইউনিয়ন', 0, 0),
(469, 197, NULL, 'মহাদেবপুর', 0, 0),
(470, 197, NULL, 'শিমুলিয়া', 0, 0),
(471, 201, NULL, 'চরকাটারী', 0, 0),
(472, 201, NULL, 'বাচামারা', 0, 0),
(473, 201, NULL, 'বাঘুটিয়া', 0, 0),
(474, 201, NULL, 'জিয়নপুর', 0, 0),
(475, 201, NULL, 'খলশী', 0, 0),
(476, 201, NULL, 'চকমিরপুর', 0, 0),
(477, 201, NULL, 'কলিয়া', 0, 0),
(478, 201, NULL, 'ধামশ্বর', 0, 0),
(479, 196, NULL, 'বায়রা', 0, 0),
(480, 196, NULL, 'তালেবপুর', 0, 0),
(481, 196, NULL, 'সিংগাইর', 0, 0),
(482, 196, NULL, 'বলধারা', 0, 0),
(483, 196, NULL, 'জামশা', 0, 0),
(484, 196, NULL, 'চারিগ্রাম', 0, 0),
(485, 196, NULL, 'শায়েস্তা', 0, 0),
(486, 196, NULL, 'জয়মন্টপ', 0, 0),
(487, 196, NULL, 'ধল্লা', 0, 0),
(488, 196, NULL, 'জার্মিতা', 0, 0),
(489, 196, NULL, 'চান্দহর', 0, 0),
(490, 149, NULL, 'সাভার', 0, 0),
(491, 149, NULL, 'বিরুলিয়া', 0, 0),
(492, 149, NULL, 'ধামসোনা', 0, 0),
(493, 149, NULL, 'শিমুলিয়া', 0, 0),
(494, 149, NULL, 'আশুলিয়া', 0, 0),
(495, 149, NULL, 'ইয়ারপুর', 0, 0),
(496, 149, NULL, 'ভাকুর্তা', 0, 0),
(497, 149, NULL, 'পাথালিয়া', 0, 0),
(498, 149, NULL, 'বনগাঁও', 0, 0),
(499, 149, NULL, 'কাউন্দিয়া', 0, 0),
(500, 149, NULL, 'তেঁতুলঝোড়া', 0, 0),
(501, 149, NULL, 'আমিনবাজার', 0, 0),
(502, 145, NULL, 'চৌহাট ইউনিয়ন', 0, 0),
(503, 145, NULL, 'আমতা ইউনিয়ন', 0, 0),
(504, 145, NULL, 'বালিয়া ইউনিয়ন', 0, 0),
(505, 145, NULL, 'যাদবপুর ইউনিয়ন', 0, 0),
(506, 145, NULL, 'বাইশাকান্দা ইউনিয়ন', 0, 0),
(507, 145, NULL, 'কুশুরা', 0, 0),
(508, 145, NULL, 'গাংগুটিয়া', 0, 0),
(509, 145, NULL, 'সানোড়া', 0, 0),
(510, 145, NULL, 'সূতিপাড়া', 0, 0),
(511, 145, NULL, 'সোমভাগ', 0, 0),
(512, 145, NULL, 'ভাড়ারিয়া', 0, 0),
(513, 145, NULL, 'ধামরাই', 0, 0),
(514, 145, NULL, 'কুল্লা', 0, 0),
(515, 145, NULL, 'রোয়াইল', 0, 0),
(516, 145, NULL, 'সুয়াপুর', 0, 0),
(517, 145, NULL, 'নান্নার', 0, 0),
(518, 147, NULL, 'হযরতপুর', 0, 0),
(519, 147, NULL, 'কলাতিয়া ইউনিয়ন', 0, 0),
(520, 147, NULL, 'তারানগর', 0, 0),
(521, 147, NULL, 'শাক্তা', 0, 0),
(522, 147, NULL, 'রোহিতপুর', 0, 0),
(523, 147, NULL, 'বাস্তা', 0, 0),
(524, 147, NULL, 'কালিন্দি', 0, 0),
(525, 147, NULL, 'জিনজিরা', 0, 0),
(526, 147, NULL, 'শুভাঢ্যা ইউনিয়ন', 0, 0),
(527, 147, NULL, 'তেঘরিয়া ইউনিয়ন', 0, 0),
(528, 147, NULL, 'কোন্ডা ইউনিয়ন', 0, 0),
(529, 147, NULL, 'আগানগর ইউনিয়ন', 0, 0),
(530, 148, NULL, 'শিকারীপাড়া ইউনিয়ন', 0, 0),
(531, 148, NULL, 'জয়কৃষ্ণপুর ইউনিয়ন', 0, 0),
(532, 148, NULL, 'বারুয়াখালী ইউনিয়ন', 0, 0),
(533, 148, NULL, 'নয়নশ্রী', 0, 0),
(534, 148, NULL, 'শোল্লা ইউনিয়ন', 0, 0),
(535, 148, NULL, 'যন্ত্রাইল ইউনিয়ন', 0, 0),
(536, 148, NULL, 'বান্দুরা ইউনিয়ন', 0, 0),
(537, 148, NULL, 'কলাকোপা ইউনিয়ন', 0, 0),
(538, 148, NULL, 'বক্সনগর ইউনিয়ন', 0, 0),
(539, 148, NULL, 'বাহ্রা', 0, 0),
(540, 148, NULL, 'কৈলাইল', 0, 0),
(541, 148, NULL, 'আগলা ইউনিয়ন', 0, 0),
(542, 148, NULL, 'গালিমপুর', 0, 0),
(543, 148, NULL, 'চুড়াইন', 0, 0),
(544, 146, NULL, 'নয়াবাড়ী ইউনিয়ন', 0, 0),
(545, 146, NULL, 'কুসুমহাটি ইউনিয়ন', 0, 0),
(546, 146, NULL, 'রাইপাড়া ইউনিয়ন', 0, 0),
(547, 146, NULL, 'সুতারপাড়া ইউনিয়ন', 0, 0),
(548, 146, NULL, 'নারিশা ইউনিয়ন', 0, 0),
(549, 146, NULL, 'মুকসুদপুর ইউনিয়ন', 0, 0),
(550, 146, NULL, 'মাহমুদপুর ইউনিয়ন', 0, 0),
(551, 146, NULL, 'বিলাসপুর ইউনিয়ন', 0, 0),
(552, 204, NULL, 'রামপাল', 0, 0),
(553, 204, NULL, 'পঞ্চসার', 0, 0),
(554, 204, NULL, 'বজ্রযোগিনী', 0, 0),
(555, 204, NULL, 'মহাকালী', 0, 0),
(556, 204, NULL, 'চরকেওয়ার', 0, 0),
(557, 204, NULL, 'মোল্লাকান্দি', 0, 0),
(558, 204, NULL, 'আধারা', 0, 0),
(559, 204, NULL, 'শিলই', 0, 0),
(560, 204, NULL, 'বাংলাবাজার', 0, 0),
(561, 203, NULL, 'বাড়েখাল', 0, 0),
(562, 203, NULL, 'হাসাড়া', 0, 0),
(563, 203, NULL, 'বাড়তারা', 0, 0),
(564, 203, NULL, 'ষোলঘর', 0, 0),
(565, 203, NULL, 'শ্রীনগর', 0, 0),
(566, 203, NULL, 'পাঢাভোগ', 0, 0),
(567, 203, NULL, 'শ্যামসিদ্দি', 0, 0),
(568, 203, NULL, 'কুলাপাড়া', 0, 0),
(569, 203, NULL, 'ভাগ্যকুল', 0, 0),
(570, 203, NULL, 'বাঘড়া', 0, 0),
(571, 203, NULL, 'রাঢ়ীখাল', 0, 0),
(572, 203, NULL, 'কুকুটিয়া', 0, 0),
(573, 203, NULL, 'আটপাড়া', 0, 0),
(574, 203, NULL, 'তন্তর', 0, 0),
(575, 205, NULL, 'চিত্রকোট ইউনিয়ন', 0, 0),
(576, 205, NULL, 'শেখরনগার', 0, 0),
(577, 205, NULL, 'রাজানগর', 0, 0),
(578, 205, NULL, 'কেয়াইন', 0, 0),
(579, 205, NULL, 'বাসাইল', 0, 0),
(580, 205, NULL, 'বালুচর', 0, 0),
(581, 205, NULL, 'লতাব্দী', 0, 0),
(582, 205, NULL, 'রশুনিয়া', 0, 0),
(583, 205, NULL, 'ইছাপুরা', 0, 0),
(584, 205, NULL, 'বয়রাগাদি', 0, 0),
(585, 205, NULL, 'মালখানগর', 0, 0),
(586, 205, NULL, 'মধ্যপাড়া', 0, 0),
(587, 205, NULL, 'কোলা', 0, 0),
(588, 205, NULL, 'জৈনসার', 0, 0),
(589, 202, NULL, 'মেদিনীমন্ডল', 0, 0),
(590, 202, NULL, 'কুমারভোগ', 0, 0),
(591, 202, NULL, 'হলদিয়া', 0, 0),
(592, 202, NULL, 'কনকসার', 0, 0),
(593, 202, NULL, 'লৌহজং-তেওটিয়া', 0, 0),
(594, 202, NULL, 'বেজগাঁও', 0, 0),
(595, 202, NULL, 'বৌলতলী', 0, 0),
(596, 202, NULL, 'খিদিরপাড়া', 0, 0),
(597, 202, NULL, 'গাওদিয়া', 0, 0),
(598, 202, NULL, 'কলমা', 0, 0),
(599, 207, NULL, 'গজারিয়া', 0, 0),
(600, 207, NULL, 'বাউশিয়া', 0, 0),
(601, 207, NULL, 'ভবেরচর', 0, 0),
(602, 207, NULL, 'বালুয়াকান্দী', 0, 0),
(603, 207, NULL, 'টেংগারচর', 0, 0),
(604, 207, NULL, 'হোসেন্দী', 0, 0),
(605, 207, NULL, 'গুয়াগাছিয়া', 0, 0),
(606, 207, NULL, 'ইমামপুর', 0, 0),
(607, 206, NULL, 'বেতকা', 0, 0),
(608, 206, NULL, 'আব্দুল্লাপুর', 0, 0),
(609, 206, NULL, 'সোনারং টংগীবাড়ী', 0, 0),
(610, 206, NULL, 'আউটশাহী', 0, 0),
(611, 206, NULL, 'আড়িয়ল বালিগাঁও', 0, 0),
(612, 206, NULL, 'ধীপুর', 0, 0),
(613, 206, NULL, 'কাঠাদিয়া শিমুলিয়া', 0, 0),
(614, 206, NULL, 'যশলং', 0, 0),
(615, 206, NULL, 'পাঁচগাও', 0, 0),
(616, 206, NULL, 'কামারখাড়া ইউনিয়ন', 0, 0),
(617, 206, NULL, 'হাসাইল বানারী', 0, 0),
(618, 206, NULL, 'দিঘীরপাড়', 0, 0),
(619, 246, NULL, 'মিজানপুর', 0, 0),
(620, 246, NULL, 'বরাট', 0, 0),
(621, 246, NULL, 'চন্দনী', 0, 0),
(622, 246, NULL, 'খানগঞ্জ', 0, 0),
(623, 246, NULL, 'বানীবহ', 0, 0),
(624, 246, NULL, 'দাদশী', 0, 0),
(625, 246, NULL, 'মুলঘর', 0, 0),
(626, 246, NULL, 'বসন্তপুর', 0, 0),
(627, 246, NULL, 'খানখানাপুর', 0, 0),
(628, 246, NULL, 'আলীপুর', 0, 0),
(629, 246, NULL, 'রামকান্তপুর', 0, 0),
(630, 246, NULL, 'শহীদওহাবপুর', 0, 0),
(631, 246, NULL, 'পাঁচুরিয়া', 0, 0),
(632, 246, NULL, 'সুলতানপুর', 0, 0),
(633, 243, NULL, 'দৌলতদিয়া', 0, 0),
(634, 243, NULL, 'দেবগ্রাম', 0, 0),
(635, 243, NULL, 'উজানচর', 0, 0),
(636, 243, NULL, 'ছোটভাকলা', 0, 0),
(637, 244, NULL, 'বাহাদুরপুর', 0, 0),
(638, 244, NULL, 'হাবাসপুর', 0, 0),
(639, 244, NULL, 'যশাই', 0, 0),
(640, 244, NULL, 'বাবুপাড়া', 0, 0),
(641, 244, NULL, 'মৌরাট', 0, 0),
(642, 244, NULL, 'পাট্টা', 0, 0),
(643, 244, NULL, 'সরিষা', 0, 0),
(644, 244, NULL, 'কলিমহর', 0, 0),
(645, 244, NULL, 'কসবামাজাইল', 0, 0),
(646, 244, NULL, 'মাছপাড়া', 0, 0),
(647, 242, NULL, 'ইসলামপুর', 0, 0),
(648, 242, NULL, 'বহরপুর', 0, 0),
(649, 242, NULL, 'নবাবপুর', 0, 0),
(650, 242, NULL, 'নারুয়া', 0, 0),
(651, 242, NULL, 'বালিয়াকান্দি', 0, 0),
(652, 242, NULL, 'জঙ্গল', 0, 0),
(653, 242, NULL, 'জামালপুর', 0, 0),
(654, 245, NULL, 'কালুখালী', 0, 0),
(655, 245, NULL, 'রতনদিয়া', 0, 0),
(656, 245, NULL, 'কালিকাপুর', 0, 0),
(657, 245, NULL, 'বোয়ালিয়া', 0, 0),
(658, 245, NULL, 'মাজবাড়ী', 0, 0),
(659, 245, NULL, 'মদাপুর', 0, 0),
(660, 245, NULL, 'সাওরাইল', 0, 0),
(661, 245, NULL, 'মৃগী', 0, 0),
(662, 191, NULL, 'শিড়খাড়া', 0, 0),
(663, 191, NULL, 'বাহাদুরপুর', 0, 0),
(664, 191, NULL, 'কুনিয়া', 0, 0),
(665, 191, NULL, 'পেয়ারপুর', 0, 0),
(666, 191, NULL, 'কেন্দুয়া', 0, 0),
(667, 191, NULL, 'মস্তফাপুর', 0, 0),
(668, 191, NULL, 'দুধখালী', 0, 0),
(669, 191, NULL, 'কালিকাপুর', 0, 0),
(670, 191, NULL, 'ছিলারচর', 0, 0),
(671, 191, NULL, 'পাঁচখোলা', 0, 0),
(672, 191, NULL, 'ঘটমাঝি', 0, 0),
(673, 191, NULL, 'ঝাউদী', 0, 0),
(674, 191, NULL, 'খোয়াজপুর', 0, 0),
(675, 191, NULL, 'রাস্তি', 0, 0),
(676, 191, NULL, 'ধুরাইল', 0, 0),
(677, 194, NULL, 'শিবচর', 0, 0),
(678, 194, NULL, 'দ্বিতীয়খন্ড', 0, 0),
(679, 194, NULL, 'নিলখি', 0, 0),
(680, 194, NULL, 'বন্দরখোলা', 0, 0),
(681, 194, NULL, 'চরজানাজাত', 0, 0),
(682, 194, NULL, 'মাদবরেরচর', 0, 0),
(683, 194, NULL, 'পাঁচচর', 0, 0),
(684, 194, NULL, 'সন্যাসিরচর', 0, 0),
(685, 194, NULL, 'কাঁঠালবাড়ী', 0, 0),
(686, 194, NULL, 'কুতুবপুর', 0, 0),
(687, 194, NULL, 'কাদিরপুর', 0, 0),
(688, 194, NULL, 'ভান্ডারীকান্দি', 0, 0),
(689, 194, NULL, 'বহেরাতলা দক্ষিণ', 0, 0),
(690, 194, NULL, 'বহেরাতলা উত্তর', 0, 0),
(691, 194, NULL, 'বাঁশকান্দি', 0, 0),
(692, 194, NULL, 'উমেদপুর', 0, 0),
(693, 194, NULL, 'ভদ্রাসন', 0, 0),
(694, 194, NULL, 'শিরুয়াইল', 0, 0),
(695, 194, NULL, 'দত্তপাড়া', 0, 0),
(696, 192, NULL, 'আলীনগর', 0, 0),
(697, 192, NULL, 'বালীগ্রাম', 0, 0),
(698, 192, NULL, 'বাঁশগাড়ী', 0, 0),
(699, 192, NULL, 'চরদৌলতখান', 0, 0),
(700, 192, NULL, 'ডাসার', 0, 0),
(701, 192, NULL, 'এনায়েতনগর', 0, 0),
(702, 192, NULL, 'গোপালপুর', 0, 0),
(703, 192, NULL, 'কয়ারিয়া', 0, 0),
(704, 192, NULL, 'কাজীবাকাই', 0, 0),
(705, 192, NULL, 'লক্ষীপুর', 0, 0),
(706, 192, NULL, 'নবগ্রাম', 0, 0),
(707, 192, NULL, 'রমজানপুর', 0, 0),
(708, 192, NULL, 'সাহেবরামপুর', 0, 0),
(709, 192, NULL, 'শিকারমঙ্গল', 0, 0),
(710, 193, NULL, 'হরিদাসদী-মহেন্দ্রদী', 0, 0),
(711, 193, NULL, 'কদমবাড়ী', 0, 0),
(712, 193, NULL, 'বাজিতপুর', 0, 0),
(713, 193, NULL, 'আমগ্রাম', 0, 0),
(714, 193, NULL, 'রাজৈর', 0, 0),
(715, 193, NULL, 'খালিয়া', 0, 0),
(716, 193, NULL, 'ইশিবপুর', 0, 0),
(717, 193, NULL, 'বদরপাশা', 0, 0),
(718, 193, NULL, 'কবিরাজপুর', 0, 0),
(719, 193, NULL, 'হোসেনপুর', 0, 0),
(720, 193, NULL, 'পাইকপাড়া', 0, 0),
(721, 165, NULL, 'জালালাবাদ', 0, 0),
(722, 165, NULL, 'শুকতাইল', 0, 0),
(723, 165, NULL, 'চন্দ্রদিঘলিয়া', 0, 0),
(724, 165, NULL, 'গোপীনাথপুর', 0, 0),
(725, 165, NULL, 'পাইককান্দি', 0, 0),
(726, 165, NULL, 'উরফি', 0, 0),
(727, 165, NULL, 'লতিফপুর', 0, 0),
(728, 165, NULL, 'সাতপাড় ইউনিয়ন', 0, 0),
(729, 165, NULL, 'সাহাপুর', 0, 0),
(730, 165, NULL, 'হরিদাসপুর', 0, 0),
(731, 165, NULL, 'উলপুর ইউনিয়ন', 0, 0),
(732, 165, NULL, 'নিজড়া', 0, 0),
(733, 165, NULL, 'করপাড়া ইউনিয়ন', 0, 0),
(734, 165, NULL, 'দুর্গাপুর ইউনিয়ন', 0, 0),
(735, 165, NULL, 'কাজুলিয়া', 0, 0),
(736, 165, NULL, 'মাঝিগাতী', 0, 0),
(737, 165, NULL, 'রঘুনাথপুর ইউনিয়ন', 0, 0),
(738, 165, NULL, 'গোবরা ইউনিয়ন', 0, 0),
(739, 165, NULL, 'বোড়াশী ইউনিয়ন', 0, 0),
(740, 165, NULL, 'কাঠি', 0, 0),
(741, 165, NULL, 'বৌলতলী', 0, 0),
(742, 166, NULL, 'কাশিয়ানী', 0, 0),
(743, 166, NULL, 'হাতিয়াড়া', 0, 0),
(744, 166, NULL, 'ফুকরা', 0, 0),
(745, 166, NULL, 'রাজপাট', 0, 0),
(746, 166, NULL, 'বেথুড়ী', 0, 0),
(747, 166, NULL, 'নিজামকান্দি', 0, 0),
(748, 166, NULL, 'সাজাইল', 0, 0),
(749, 166, NULL, 'মাহমুদপুর', 0, 0),
(750, 166, NULL, 'মহেশপুর', 0, 0),
(751, 166, NULL, 'ওড়াকান্দি', 0, 0),
(752, 166, NULL, 'পারুলিয়া', 0, 0),
(753, 166, NULL, 'রাতইল', 0, 0),
(754, 166, NULL, 'পুইশুর', 0, 0),
(755, 166, NULL, 'সিংগা', 0, 0),
(756, 169, NULL, 'কুশলী', 0, 0),
(757, 169, NULL, 'গোপালপুর', 0, 0),
(758, 169, NULL, 'পাটগাতী', 0, 0),
(759, 169, NULL, 'বর্ণি', 0, 0),
(760, 169, NULL, 'ডুমরিয়া', 0, 0),
(761, 167, NULL, 'সাদুল্লাপুর', 0, 0),
(762, 167, NULL, 'রামশীল', 0, 0),
(763, 167, NULL, 'বান্ধাবাড়ী', 0, 0),
(764, 167, NULL, 'কলাবাড়ী', 0, 0),
(765, 167, NULL, 'কুশলা', 0, 0),
(766, 167, NULL, 'আমতলী', 0, 0),
(767, 167, NULL, 'পিঞ্জুরী', 0, 0),
(768, 167, NULL, 'ঘাঘর', 0, 0),
(769, 167, NULL, 'রাধাগঞ্জ', 0, 0),
(770, 167, NULL, 'হিরণ', 0, 0),
(771, 167, NULL, 'কান্দি', 0, 0),
(772, 168, NULL, 'উজানী', 0, 0),
(773, 168, NULL, 'দিগনগর', 0, 0),
(774, 168, NULL, 'পশারগাতি', 0, 0),
(775, 168, NULL, 'গোবিন্দপুর', 0, 0),
(776, 168, NULL, 'খান্দারপাড়া', 0, 0),
(777, 168, NULL, 'বহুগ্রাম', 0, 0),
(778, 168, NULL, 'বাশঁবাড়িয়া', 0, 0),
(779, 168, NULL, 'ভাবড়াশুর', 0, 0),
(780, 168, NULL, 'মহারাজপুর', 0, 0),
(781, 168, NULL, 'বাটিকামারী', 0, 0),
(782, 168, NULL, 'জলিরপাড়', 0, 0),
(783, 168, NULL, 'রাঘদী', 0, 0),
(784, 168, NULL, 'গোহালা', 0, 0),
(785, 168, NULL, 'মোচনা', 0, 0),
(786, 168, NULL, 'কাশালিয়া', 0, 0),
(787, 150, NULL, 'ঈশানগোপালপুর', 0, 0),
(788, 150, NULL, 'চরমাধবদিয়া', 0, 0),
(789, 150, NULL, 'আলিয়াবাদ', 0, 0),
(790, 150, NULL, 'নর্থচ্যানেল', 0, 0),
(791, 150, NULL, 'ডিক্রিরচর', 0, 0),
(792, 150, NULL, 'মাচ্চর', 0, 0),
(793, 150, NULL, 'কৃষ্ণনগর', 0, 0),
(794, 150, NULL, 'অম্বিকাপুর', 0, 0),
(795, 150, NULL, 'কানাইপুর', 0, 0),
(796, 150, NULL, 'কৈজুরী', 0, 0),
(797, 150, NULL, 'গেরদা', 0, 0),
(798, 152, NULL, 'বুড়াইচ', 0, 0),
(799, 152, NULL, 'আলফাডাঙ্গা', 0, 0),
(800, 152, NULL, 'টগরবন্দ', 0, 0),
(801, 152, NULL, 'বানা', 0, 0),
(802, 152, NULL, 'পাঁচুড়িয়া', 0, 0),
(803, 152, NULL, 'গোপালপুর', 0, 0),
(804, 151, NULL, 'বোয়ালমারী', 0, 0),
(805, 151, NULL, 'দাদপুর', 0, 0),
(806, 151, NULL, 'চতুল', 0, 0),
(807, 151, NULL, 'ঘোষপুর', 0, 0),
(808, 151, NULL, 'গুনবহা', 0, 0),
(809, 151, NULL, 'চাঁদপুর', 0, 0),
(810, 151, NULL, 'পরমেশ্বরদী', 0, 0),
(811, 151, NULL, 'সাতৈর', 0, 0),
(812, 151, NULL, 'রূপাপাত', 0, 0),
(813, 151, NULL, 'শেখর', 0, 0),
(814, 151, NULL, 'ময়না', 0, 0),
(815, 157, NULL, 'চর বিষ্ণুপুর', 0, 0),
(816, 157, NULL, 'আকোটের চর', 0, 0),
(817, 157, NULL, 'চর নাসিরপুর', 0, 0),
(818, 157, NULL, 'নারিকেল বাড়িয়া', 0, 0),
(819, 157, NULL, 'ভাষানচর', 0, 0),
(820, 157, NULL, 'কৃষ্ণপুর', 0, 0),
(821, 157, NULL, 'সদরপুর', 0, 0),
(822, 157, NULL, 'চর মানাইর', 0, 0),
(823, 157, NULL, 'ঢেউখালী', 0, 0),
(824, 155, NULL, 'চরযশোরদী', 0, 0),
(825, 155, NULL, 'পুরাপাড়া', 0, 0),
(826, 155, NULL, 'লস্করদিয়া', 0, 0),
(827, 155, NULL, 'রামনগর', 0, 0),
(828, 155, NULL, 'কাইচাইল', 0, 0),
(829, 155, NULL, 'তালমা', 0, 0),
(830, 155, NULL, 'ফুলসুতি', 0, 0),
(831, 155, NULL, 'ডাঙ্গী', 0, 0),
(832, 155, NULL, 'কোদালিয়া', 0, 0),
(833, 154, NULL, 'ঘারুয়া', 0, 0),
(834, 154, NULL, 'নুরুল্যাগঞ্জ', 0, 0),
(835, 154, NULL, 'মানিকদহ', 0, 0),
(836, 154, NULL, 'কাউলিবেড়া', 0, 0),
(837, 154, NULL, 'নাছিরাবাদ', 0, 0),
(838, 154, NULL, 'তুজারপুর', 0, 0),
(839, 154, NULL, 'আলগী', 0, 0),
(840, 154, NULL, 'চুমুরদী', 0, 0),
(841, 154, NULL, 'কালামৃধা', 0, 0),
(842, 154, NULL, 'আজিমনগর', 0, 0),
(843, 154, NULL, 'চান্দ্রা', 0, 0),
(844, 154, NULL, 'হামিরদী', 0, 0),
(845, 156, NULL, 'গাজীরটেক', 0, 0),
(846, 156, NULL, 'চর ভদ্রাসন', 0, 0),
(847, 156, NULL, 'চর হরিরামপুর', 0, 0),
(848, 156, NULL, 'চর ঝাউকান্দা', 0, 0),
(849, 153, NULL, 'মধুখালী', 0, 0),
(850, 153, NULL, 'জাহাপুর', 0, 0),
(851, 153, NULL, 'গাজনা', 0, 0),
(852, 153, NULL, 'মেগচামী', 0, 0),
(853, 153, NULL, 'রায়পুর', 0, 0),
(854, 153, NULL, 'বাগাট', 0, 0),
(855, 153, NULL, 'ডুমাইন', 0, 0),
(856, 153, NULL, 'নওপাড়া', 0, 0),
(857, 153, NULL, 'কামারখালী', 0, 0),
(858, 158, NULL, 'ভাওয়াল', 0, 0),
(859, 158, NULL, 'আটঘর', 0, 0),
(860, 158, NULL, 'মাঝারদিয়া', 0, 0),
(861, 158, NULL, 'বল্লভদী', 0, 0),
(862, 158, NULL, 'গট্টি', 0, 0),
(863, 158, NULL, 'যদুনন্দী', 0, 0),
(864, 158, NULL, 'রামকান্তপুর', 0, 0),
(865, 158, NULL, 'সোনাপুর', 0, 0),
(866, 88, NULL, 'সুবিল', 0, 0),
(867, 88, NULL, 'গুনাইঘর (উত্তর)', 0, 0),
(868, 88, NULL, 'গুনাইঘর (দক্ষিণ)', 0, 0),
(869, 88, NULL, 'বড়শালঘর ইউনিয়ন', 0, 0),
(870, 88, NULL, 'রাজামেহার ইউনিয়ন', 0, 0),
(871, 88, NULL, 'ইউসুফপুর ইউনিয়ন', 0, 0),
(872, 88, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(873, 88, NULL, 'ফতেহাবাদ ইউনিয়ন', 0, 0),
(874, 88, NULL, 'এলাহাবাদ ইউনিয়ন', 0, 0),
(875, 88, NULL, 'জাফরগঞ্জ ইউনিয়ন', 0, 0),
(876, 88, NULL, 'ধামতী ইউনিয়ন', 0, 0),
(877, 88, NULL, 'মোহনপুর', 0, 0),
(878, 88, NULL, 'ভানী', 0, 0),
(879, 88, NULL, 'বরকামতা', 0, 0),
(880, 88, NULL, 'সুলতানপুর ইউনিয়ন', 0, 0),
(881, 82, NULL, 'আগানগর', 0, 0),
(882, 82, NULL, 'ভবানীপুর', 0, 0),
(883, 82, NULL, 'খোশবাস (উ:)', 0, 0),
(884, 82, NULL, 'খোশবাস (দ:)', 0, 0),
(885, 82, NULL, 'ঝলম', 0, 0),
(886, 82, NULL, 'চিতড্ডা', 0, 0),
(887, 82, NULL, 'শিলমুড়ি (উ:)', 0, 0),
(888, 82, NULL, 'শিলমুড়ি (দ:)', 0, 0),
(889, 82, NULL, 'গালিমপুর', 0, 0),
(890, 82, NULL, 'শাকপুর', 0, 0),
(891, 82, NULL, 'ভাউকসার', 0, 0),
(892, 82, NULL, 'আড্ডা', 0, 0),
(893, 82, NULL, 'আদ্রা', 0, 0),
(894, 82, NULL, 'পয়ালগাছা', 0, 0),
(895, 82, NULL, 'লক্ষীপুর', 0, 0),
(896, 83, NULL, 'শিদলাই ইউনিয়ন', 0, 0),
(897, 83, NULL, 'চান্দলা ইউনিয়ন', 0, 0),
(898, 83, NULL, 'শশীদল ইউনিয়ন', 0, 0),
(899, 83, NULL, 'দুলালপুর (২) ইউনিয়ন', 0, 0),
(900, 83, NULL, 'ব্রাহ্মনপাড়া সদর ইউনিয়ন', 0, 0),
(901, 83, NULL, 'সাহেবাবাদ ইউনিয়ন', 0, 0),
(902, 83, NULL, 'মালাপাড়া ইউনিয়ন', 0, 0),
(903, 83, NULL, 'মাধবপুর', 0, 0),
(904, 85, NULL, 'সুহিলপুর', 0, 0),
(905, 85, NULL, 'বাতাঘাসি', 0, 0),
(906, 85, NULL, 'জোয়াগ', 0, 0),
(907, 85, NULL, 'বরকরই', 0, 0),
(908, 85, NULL, 'মাধাইয়া', 0, 0),
(909, 85, NULL, 'দোল্লাই নবাবপুর', 0, 0),
(910, 85, NULL, 'মহিচাইল', 0, 0),
(911, 85, NULL, 'গল্লাই', 0, 0),
(912, 85, NULL, 'কেরণখাল', 0, 0),
(913, 85, NULL, 'মাইজখার', 0, 0),
(914, 85, NULL, 'এতবারপুর', 0, 0),
(915, 85, NULL, 'বাড়েরা', 0, 0),
(916, 85, NULL, 'বরকইট', 0, 0),
(917, 86, NULL, 'শ্রীপুর', 0, 0),
(918, 86, NULL, 'কাশিনগর', 0, 0),
(919, 86, NULL, '২নং কালিকাপুর', 0, 0),
(920, 86, NULL, '৪নং শুভপুর', 0, 0),
(921, 86, NULL, '৫নং ঘোলপাশা', 0, 0),
(922, 86, NULL, '৬নং মুন্সীরহাট', 0, 0),
(923, 86, NULL, '৭নং বাতিসা', 0, 0),
(924, 86, NULL, '৮নং কনকাপৈত', 0, 0),
(925, 86, NULL, '৯নং চিওড়া', 0, 0),
(926, 86, NULL, '১০ নং জগন্নাথদিঘী', 0, 0),
(927, 86, NULL, '১১ নং গুনবতী', 0, 0),
(928, 86, NULL, '১২নং আলকরা', 0, 0),
(929, 87, NULL, 'দৌলতপুর', 0, 0),
(930, 87, NULL, 'দাউদকান্দি (উত্তর)', 0, 0),
(931, 87, NULL, 'ইলিয়টগঞ্জ (উত্তর)', 0, 0),
(932, 87, NULL, 'ইলিয়টগঞ্জ (দক্ষিন)', 0, 0),
(933, 87, NULL, 'জিংলাতলী', 0, 0),
(934, 87, NULL, 'সুন্দলপুর', 0, 0),
(935, 87, NULL, 'গৌরীপুর ইউনিয়ন', 0, 0),
(936, 87, NULL, 'মোহাম্মদপুর (পুর্ব) ইউনিয়ন', 0, 0),
(937, 87, NULL, 'মোহাম্মদপুর (পশ্চিম) ইউনিয়ন', 0, 0),
(938, 87, NULL, 'গোয়ালমারী ইউনিয়ন', 0, 0),
(939, 87, NULL, 'মারুকা ইউনিয়ন', 0, 0),
(940, 87, NULL, 'বিটেশ্বর ইউনিয়ন', 0, 0),
(941, 87, NULL, 'পদুয়া ইউনিয়ন', 0, 0),
(942, 87, NULL, 'পাচঁগাছিয়া (পশ্চিম) ইউনিয়ন', 0, 0),
(943, 87, NULL, 'বারপাড়া', 0, 0),
(944, 89, NULL, 'মাথাভাঙ্গা', 0, 0),
(945, 89, NULL, 'ঘাগুটিয়া', 0, 0),
(946, 89, NULL, 'আছাদপুর', 0, 0),
(947, 89, NULL, 'চান্দেরচর', 0, 0),
(948, 89, NULL, 'ভাষানিয়া', 0, 0),
(949, 89, NULL, 'নিলখী ইউনিয়ন', 0, 0),
(950, 89, NULL, 'ঘারমোড়া ইউনিয়ন', 0, 0),
(951, 89, NULL, 'জয়পুর ইউনিয়ন', 0, 0),
(952, 89, NULL, 'দুলালপুর', 0, 0),
(953, 91, NULL, 'বাকই', 0, 0),
(954, 91, NULL, 'মুদাফফর গঞ্জ ইউনিয়ন', 0, 0),
(955, 91, NULL, 'কান্দিরপাড় ইউনিয়ন', 0, 0),
(956, 91, NULL, 'গোবিন্দপুর ইউনিয়ন (2)', 0, 0),
(957, 91, NULL, 'উত্তরদা ইউনিয়ন', 0, 0),
(958, 91, NULL, 'লাকসাম পুর্ব ইউনিয়ন', 0, 0),
(959, 91, NULL, 'আজগরা ইউনিয়ন', 0, 0),
(960, 94, NULL, '১নং শ্রীকাইল', 0, 0),
(961, 94, NULL, '২নং আকুবপুর', 0, 0),
(962, 94, NULL, '৩নং আন্দিকোট', 0, 0),
(963, 94, NULL, '৪নং পুর্বধৈইর (পুর্ব)', 0, 0),
(964, 94, NULL, '৫নং পুর্বধৈইর (পশ্চিম)', 0, 0),
(965, 94, NULL, '৬নং বাঙ্গরা (পূর্ব)', 0, 0),
(966, 94, NULL, '৭নং বাঙ্গরা (পশ্চিম)', 0, 0),
(967, 94, NULL, '৮নং চাপিতলা', 0, 0),
(968, 94, NULL, '৯নং কামাল্লা', 0, 0),
(969, 94, NULL, '১০নং যাত্রাপুর', 0, 0),
(970, 94, NULL, 'রামচন্দ্রপুর উত্তর', 0, 0),
(971, 94, NULL, 'রামচন্দ্রপুর দক্ষিন', 0, 0),
(972, 94, NULL, '১১ নং মুরাদনগর সদর', 0, 0),
(973, 94, NULL, '১২নং নবীপুর (পুর্ব)', 0, 0),
(974, 94, NULL, '১৩নং নবীপুর (পশ্চিম)', 0, 0),
(975, 94, NULL, '১৪নং ধামঘর', 0, 0),
(976, 94, NULL, '১৫নং জাহাপুর', 0, 0),
(977, 94, NULL, '১৬নং ছালিয়াকান্দি', 0, 0),
(978, 94, NULL, '১৭নং দারোরা', 0, 0),
(979, 94, NULL, '১৮নং পাহাড়পুর', 0, 0),
(980, 94, NULL, '২১নং বাবুটিপাড়া', 0, 0),
(981, 94, NULL, '২২নং টনকী', 0, 0),
(982, 95, NULL, 'বাঙ্গড্ডা', 0, 0),
(983, 95, NULL, 'পেরিয়া', 0, 0),
(984, 95, NULL, 'রায়কোট', 0, 0),
(985, 95, NULL, 'মোকরা', 0, 0),
(986, 95, NULL, 'মক্রবপুর', 0, 0),
(987, 95, NULL, 'হেসাখাল', 0, 0),
(988, 95, NULL, 'আদ্রা', 0, 0),
(989, 95, NULL, 'জোড্ডা', 0, 0),
(990, 95, NULL, 'ঢালুয়া', 0, 0),
(991, 95, NULL, 'দৌলখাঁড়', 0, 0),
(992, 95, NULL, 'বক্সগঞ্জ', 0, 0),
(993, 95, NULL, 'সাতবাড়ীয়া ইউনিয়ন', 0, 0),
(994, 90, NULL, 'কালীর বাজার ইউনিয়ন', 0, 0),
(995, 90, NULL, 'দুর্গাপুর (উত্তর) ইউনিয়ন', 0, 0),
(996, 90, NULL, 'দুর্গাপুর (দক্ষিন) ইউনিয়ন', 0, 0),
(997, 90, NULL, 'আমড়াতলী ইউনিয়ন', 0, 0),
(998, 90, NULL, 'পাঁচথুবী ইউনিয়ন', 0, 0),
(999, 90, NULL, 'জগন্নাথপুর ইউনিয়ন', 0, 0),
(1000, 93, NULL, 'চন্দনপুর', 0, 0),
(1001, 93, NULL, '২নং চালিভাঙ্গা', 0, 0),
(1002, 93, NULL, '৩নং রাধানগর', 0, 0),
(1003, 93, NULL, '৪নং মানিকারচর', 0, 0),
(1004, 93, NULL, '৫নং বড়কান্দা', 0, 0),
(1005, 93, NULL, '৬নং গোবিন্দপুর', 0, 0),
(1006, 93, NULL, '৭নং লুটেরচর', 0, 0),
(1007, 93, NULL, '৮নং ভাওরখোলা', 0, 0),
(1008, 92, NULL, 'বাইশগাঁও', 0, 0),
(1009, 92, NULL, 'সরসপুর', 0, 0),
(1010, 92, NULL, 'হাসনাবাদ', 0, 0),
(1011, 92, NULL, '৪নং ঝলম উত্তর ইউনিয়ন', 0, 0),
(1012, 92, NULL, '৫নং ঝলম দক্ষিন', 0, 0),
(1013, 92, NULL, 'মৈশাতুয়া', 0, 0),
(1014, 92, NULL, 'লক্ষনপুর', 0, 0),
(1015, 92, NULL, 'খিলা ইউনিয়ন', 0, 0),
(1016, 92, NULL, 'উত্তর হাওলা', 0, 0),
(1017, 92, NULL, 'নাথেরপেটুয়া', 0, 0),
(1018, 92, NULL, 'বিপুলাসার', 0, 0),
(1019, 96, NULL, 'চৌয়ারা', 0, 0),
(1020, 96, NULL, 'বারপাড়া ইউনিয়ন', 0, 0),
(1021, 96, NULL, 'জোড়কানন (পুর্ব)', 0, 0),
(1022, 96, NULL, 'গলিয়ারা', 0, 0),
(1023, 96, NULL, 'জোড়কানন (পশ্চিম)', 0, 0),
(1024, 96, NULL, 'বাগমারা (উত্তর)', 0, 0),
(1025, 96, NULL, 'বাগমারা (দক্ষিন) ইউনিয়ন', 0, 0),
(1026, 96, NULL, 'ভূলইন (উত্তর) ইউনিয়ন', 0, 0),
(1027, 96, NULL, 'ভূলইন (দক্ষিন)', 0, 0),
(1028, 96, NULL, 'বেলঘর (উত্তর)', 0, 0),
(1029, 96, NULL, 'বেলঘর (দক্ষিন)', 0, 0),
(1030, 96, NULL, 'পেরুল (উত্তর)', 0, 0),
(1031, 96, NULL, 'পেরুল (দক্ষিন)', 0, 0),
(1032, 96, NULL, 'বিজয়পুর', 0, 0),
(1033, 97, NULL, '১নং সাতানী', 0, 0),
(1034, 97, NULL, '২নং জগতপুর', 0, 0),
(1035, 97, NULL, '৩নং বলরামপুর', 0, 0),
(1036, 97, NULL, '৪নং কড়িকান্দি', 0, 0),
(1037, 97, NULL, '৫নং কলাকান্দি', 0, 0),
(1038, 97, NULL, '৬নং ভিটিকান্দি', 0, 0),
(1039, 97, NULL, '৭নং নারান্দিয়া', 0, 0),
(1040, 97, NULL, '৮নং জিয়ারকান্দি', 0, 0),
(1041, 97, NULL, '৯নং মজিদপুর', 0, 0),
(1042, 84, NULL, 'ময়নামতি', 0, 0),
(1043, 84, NULL, 'ভারেল্লা', 0, 0),
(1044, 84, NULL, 'মোকাম', 0, 0),
(1045, 84, NULL, 'বুড়িচং সদর', 0, 0),
(1046, 84, NULL, 'বাকশীমূল', 0, 0),
(1047, 84, NULL, 'পীরযাত্রাপুর', 0, 0),
(1048, 84, NULL, 'ষোলনল', 0, 0),
(1049, 84, NULL, 'রাজাপুর', 0, 0),
(1050, 108, NULL, 'মহামায়া', 0, 0),
(1051, 108, NULL, 'পাঠাননগর', 0, 0),
(1052, 108, NULL, 'শুভপুর', 0, 0),
(1053, 108, NULL, 'রাধানগর', 0, 0),
(1054, 108, NULL, 'ঘোপাল', 0, 0),
(1055, 107, NULL, 'শর্শদি', 0, 0),
(1056, 107, NULL, 'পাঁচগাছিয়া', 0, 0),
(1057, 107, NULL, 'ধর্মপুর', 0, 0),
(1058, 107, NULL, 'কাজিরবাগ', 0, 0),
(1059, 107, NULL, 'কালিদহ', 0, 0),
(1060, 107, NULL, 'বালিগাঁও', 0, 0),
(1061, 107, NULL, 'ধলিয়া', 0, 0),
(1062, 107, NULL, 'লেমুয়া', 0, 0),
(1063, 107, NULL, 'ছনুয়া', 0, 0),
(1064, 107, NULL, 'মোটবী', 0, 0),
(1065, 107, NULL, 'ফাজিলপুর', 0, 0),
(1066, 107, NULL, 'ফরহাদনগর', 0, 0),
(1067, 112, NULL, 'চরমজলিশপুর', 0, 0),
(1068, 112, NULL, 'বগাদানা', 0, 0),
(1069, 112, NULL, 'মতিগঞ্জ', 0, 0),
(1070, 112, NULL, 'মঙ্গলকান্দি', 0, 0),
(1071, 112, NULL, 'চরদরবেশ', 0, 0),
(1072, 112, NULL, 'চরচান্দিয়া', 0, 0),
(1073, 112, NULL, 'সোনাগাজী', 0, 0),
(1074, 112, NULL, 'আমিরাবাদ', 0, 0),
(1075, 112, NULL, 'নবাবপুর', 0, 0),
(1076, 111, NULL, 'ফুলগাজী', 0, 0),
(1077, 111, NULL, 'মুন্সিরহাট', 0, 0),
(1078, 111, NULL, 'দরবারপুর', 0, 0),
(1079, 111, NULL, 'আনন্দপুর', 0, 0),
(1080, 111, NULL, 'আমজাদহাট', 0, 0),
(1081, 111, NULL, 'জি', 0, 0),
(1082, 111, NULL, 'এম', 0, 0),
(1083, 111, NULL, 'হাট', 0, 0),
(1084, 110, NULL, 'মির্জানগর', 0, 0),
(1085, 110, NULL, 'চিথলিয়া', 0, 0),
(1086, 110, NULL, 'বক্সমাহমুদ', 0, 0),
(1087, 109, NULL, 'সিন্দুরপুর', 0, 0),
(1088, 109, NULL, 'রাজাপুর', 0, 0),
(1089, 109, NULL, 'পূর্বচন্দ্রপুর', 0, 0),
(1090, 109, NULL, 'রামনগর', 0, 0),
(1091, 109, NULL, 'ইয়াকুবপুর', 0, 0),
(1092, 109, NULL, 'দাগনভূঞা', 0, 0),
(1093, 109, NULL, 'মাতুভূঞা', 0, 0),
(1094, 109, NULL, 'জায়লস্কর', 0, 0),
(1095, 50, NULL, 'বাসুদেব', 0, 0),
(1096, 50, NULL, 'মাছিহাতা', 0, 0),
(1097, 50, NULL, 'সুলতানপুর', 0, 0),
(1098, 50, NULL, 'রামরাইল ইউনিয়ন', 0, 0),
(1099, 50, NULL, 'সাদেকপুর ইউনিয়ন', 0, 0),
(1100, 50, NULL, 'তালশহর', 0, 0),
(1101, 50, NULL, 'নাটাই (দঃ) ইউনিয়ন', 0, 0),
(1102, 50, NULL, 'নাটাই', 0, 0),
(1103, 50, NULL, 'সুহিলপুর', 0, 0),
(1104, 50, NULL, 'বুধল', 0, 0),
(1105, 50, NULL, 'মজলিশপুর', 0, 0),
(1106, 56, NULL, 'মূলগ্রাম', 0, 0),
(1107, 56, NULL, 'মেহারী', 0, 0),
(1108, 56, NULL, 'বাদৈর', 0, 0),
(1109, 56, NULL, 'খাড়েরা', 0, 0),
(1110, 56, NULL, 'বিনাউটি', 0, 0),
(1111, 56, NULL, 'গোপীনাথপুর', 0, 0),
(1112, 56, NULL, 'কসবা(পঃ)', 0, 0),
(1113, 56, NULL, 'কুটি', 0, 0),
(1114, 56, NULL, 'কাইমপুর', 0, 0),
(1115, 56, NULL, 'বায়েক', 0, 0),
(1116, 52, NULL, 'চাতলপাড়', 0, 0),
(1117, 52, NULL, 'ভলাকুট', 0, 0),
(1118, 52, NULL, 'কুন্ডা', 0, 0),
(1119, 52, NULL, 'গোয়ালনগর ইউনিয়ন', 0, 0),
(1120, 52, NULL, 'নাসিরনগর', 0, 0),
(1121, 52, NULL, 'বুড়িশ্বর', 0, 0),
(1122, 52, NULL, 'ফান্দাউক', 0, 0),
(1123, 52, NULL, 'গুনিয়াউক', 0, 0),
(1124, 52, NULL, 'চাপৈরতলা', 0, 0),
(1125, 52, NULL, 'ধরমন্ডল', 0, 0),
(1126, 52, NULL, 'হরিপুর', 0, 0),
(1127, 52, NULL, 'পূর্বভাগ', 0, 0),
(1128, 52, NULL, 'গোকর্ণ', 0, 0),
(1129, 54, NULL, 'অরুয়াইল', 0, 0),
(1130, 54, NULL, 'পাকশিমুল', 0, 0),
(1131, 54, NULL, 'চুন্টা', 0, 0),
(1132, 54, NULL, 'কালীকচ্ছ', 0, 0),
(1133, 54, NULL, 'পানিশ্বর ইউনিয়ন', 0, 0),
(1134, 54, NULL, 'সরাইল সদর', 0, 0),
(1135, 54, NULL, 'নোয়াগাঁও', 0, 0),
(1136, 54, NULL, 'শাহজাদাপুর', 0, 0),
(1137, 54, NULL, 'শাহবাজপুর', 0, 0),
(1138, 51, NULL, 'আশুগঞ্জ সদর', 0, 0),
(1139, 51, NULL, 'চরচারতলা', 0, 0),
(1140, 51, NULL, 'দুর্গাপুর', 0, 0),
(1141, 51, NULL, 'আড়াইসিধা', 0, 0),
(1142, 51, NULL, 'তালশহর(পঃ)', 0, 0),
(1143, 51, NULL, 'শরীফপুর', 0, 0),
(1144, 51, NULL, 'লালপুর', 0, 0),
(1145, 51, NULL, 'তারুয়া', 0, 0),
(1146, 57, NULL, 'মনিয়ন্দ', 0, 0),
(1147, 57, NULL, 'ধরখার', 0, 0),
(1148, 57, NULL, 'মোগড়া', 0, 0),
(1149, 57, NULL, 'আখাউড়া (উঃ)', 0, 0),
(1150, 57, NULL, 'আখাউড়া (দঃ)', 0, 0),
(1151, 53, NULL, 'বড়াইল', 0, 0),
(1152, 53, NULL, 'বীরগাঁও', 0, 0),
(1153, 53, NULL, 'কৃষ্ণনগর', 0, 0),
(1154, 53, NULL, 'নাটঘর', 0, 0),
(1155, 53, NULL, 'বিদ্যাকুট', 0, 0),
(1156, 53, NULL, 'নবীনগর', 0, 0),
(1157, 53, NULL, 'নবীনগর(পশ্চিম)', 0, 0),
(1158, 53, NULL, 'বিটঘর', 0, 0),
(1159, 53, NULL, 'শিবপুর', 0, 0),
(1160, 53, NULL, 'শ্রীরামপুর', 0, 0),
(1161, 53, NULL, 'জিনোদপুর', 0, 0),
(1162, 53, NULL, 'লাউরফতেপুর', 0, 0),
(1163, 53, NULL, 'ইব্রাহিমপুর', 0, 0),
(1164, 53, NULL, 'সাতমোড়া', 0, 0),
(1165, 53, NULL, 'শ্যামগ্রাম', 0, 0),
(1166, 53, NULL, 'রসুল্লাবাদ', 0, 0),
(1167, 53, NULL, 'বড়িকান্দি', 0, 0),
(1168, 53, NULL, 'ছলিমগঞ্জ', 0, 0),
(1169, 53, NULL, 'রতনপুর', 0, 0),
(1170, 53, NULL, 'কাইতলা (উঃ)', 0, 0),
(1171, 53, NULL, 'কাইতলা', 0, 0),
(1172, 58, NULL, 'তেজখালী', 0, 0),
(1173, 58, NULL, 'পাহাড়িয়া কান্দি', 0, 0),
(1174, 58, NULL, 'দরিয়াদৌলত', 0, 0),
(1175, 58, NULL, 'সোনারামপুর', 0, 0),
(1176, 58, NULL, 'দড়িকান্দি', 0, 0),
(1177, 58, NULL, 'ছয়ফুল্লাকান্দি', 0, 0),
(1178, 58, NULL, 'বাঞ্ছারামপুর', 0, 0),
(1179, 58, NULL, 'আইয়ুবপুর', 0, 0),
(1180, 58, NULL, 'ফরদাবাদ', 0, 0),
(1181, 58, NULL, 'রুপসদী পশ্চিম', 0, 0),
(1182, 58, NULL, 'ছলিমাবাদ', 0, 0),
(1183, 58, NULL, 'উজানচর পূর্ব', 0, 0),
(1184, 58, NULL, 'মানিকপুর', 0, 0),
(1185, 59, NULL, 'বুধন্তি', 0, 0),
(1186, 59, NULL, 'চান্দুরা', 0, 0),
(1187, 59, NULL, 'ইছাপুরা', 0, 0),
(1188, 59, NULL, 'চম্পকনগর', 0, 0),
(1189, 59, NULL, 'হরষপুর', 0, 0),
(1190, 59, NULL, 'পত্তন', 0, 0),
(1191, 59, NULL, 'সিংগারবিল', 0, 0),
(1192, 59, NULL, 'বিষ্ণুপুর', 0, 0),
(1193, 59, NULL, 'চর-ইসলামপুর', 0, 0),
(1194, 59, NULL, 'পাহাড়পুর', 0, 0),
(1195, 135, NULL, '১ নং জীবতলি', 0, 0),
(1196, 135, NULL, '৩ নং সাপছড়ি', 0, 0),
(1197, 135, NULL, '৪ নং কুতুকছড়ি', 0, 0),
(1198, 135, NULL, '৫ নং বন্দুকভাঙ্গা', 0, 0),
(1199, 135, NULL, '৬ নং বালুখালী', 0, 0),
(1200, 135, NULL, '২ নং মগবান', 0, 0),
(1201, 141, NULL, '২ নং রাইখালী', 0, 0),
(1202, 141, NULL, '৪ নং কাপ্তাই', 0, 0),
(1203, 141, NULL, '৫ নং ওয়াজ্ঞা', 0, 0),
(1204, 141, NULL, '১ নং চন্দ্রঘোনা', 0, 0),
(1205, 141, NULL, '৩ নং চিৎমরম', 0, 0),
(1206, 144, NULL, '৩ নং ঘাগড়া', 0, 0),
(1207, 144, NULL, '২ নং ফটিকছড়ি', 0, 0),
(1208, 144, NULL, '১ নং বেতবুনিয়া', 0, 0),
(1209, 144, NULL, '৪ নং কলমপতি', 0, 0),
(1210, 137, NULL, '৩৬ নং সাজেক', 0, 0),
(1211, 137, NULL, '৩৭ নং আমতলী', 0, 0),
(1212, 137, NULL, '৩৫ নং বঙ্গলতলী', 0, 0),
(1213, 137, NULL, '৩৪ নং রুপকারী', 0, 0),
(1214, 137, NULL, '৩৩ নং মারিশ্যা', 0, 0),
(1215, 137, NULL, '৩১ নং খেদারমারা', 0, 0),
(1216, 137, NULL, '৩০ নং সারোয়াতলী', 0, 0),
(1217, 137, NULL, '৩২ নং বাঘাইছড়ি', 0, 0),
(1218, 138, NULL, '১ নং সুবলং', 0, 0),
(1219, 138, NULL, '২ নং বরকল', 0, 0),
(1220, 138, NULL, '৪ নং ভূষনছড়া', 0, 0),
(1221, 138, NULL, '৩ নং আইমাছড়া', 0, 0),
(1222, 138, NULL, '৫ নং বড় হরিণা', 0, 0),
(1223, 142, NULL, 'লংগদু', 0, 0),
(1224, 142, NULL, 'মাইনীমুখ', 0, 0),
(1225, 142, NULL, 'ভাসান্যাদম', 0, 0),
(1226, 142, NULL, 'বগাচতর', 0, 0),
(1227, 142, NULL, 'গুলশাখালী', 0, 0),
(1228, 142, NULL, 'কালাপাকুজ্যা', 0, 0),
(1229, 142, NULL, 'আটারকছড়া', 0, 0),
(1230, 140, NULL, '১ নং ঘিলাছড়ি', 0, 0),
(1231, 140, NULL, '২ নং গাইন্দ্যা', 0, 0),
(1232, 140, NULL, '৩ নং বাঙ্গালহালিয়া', 0, 0),
(1233, 136, NULL, '২ নং কেংড়াছড়ি', 0, 0),
(1234, 136, NULL, '১ নং বিলাইছড়ি', 0, 0),
(1235, 136, NULL, '৩ নং ফারুয়া', 0, 0),
(1236, 139, NULL, 'জুরাছড়ি', 0, 0),
(1237, 139, NULL, 'বনযোগীছড়া', 0, 0),
(1238, 139, NULL, 'মৈদং', 0, 0),
(1239, 139, NULL, 'দুমদুম্যা', 0, 0),
(1240, 143, NULL, 'সাবেক্ষ্যং', 0, 0),
(1241, 143, NULL, 'নানিয়ারচর', 0, 0),
(1242, 143, NULL, 'বুড়িঘাট', 0, 0),
(1243, 143, NULL, 'ঘিলাছড়ি', 0, 0),
(1244, 126, NULL, 'চরমটুয়া', 0, 0),
(1245, 126, NULL, 'দাদপুর', 0, 0),
(1246, 126, NULL, 'নোয়ান্নই', 0, 0),
(1247, 126, NULL, 'কাদির হানিফ', 0, 0),
(1248, 126, NULL, 'বিনোদপুর', 0, 0),
(1249, 126, NULL, 'ধর্মপুর', 0, 0),
(1250, 126, NULL, 'এওজবালিয়া', 0, 0),
(1251, 126, NULL, 'কালাদরপ', 0, 0),
(1252, 126, NULL, 'অশ্বদিয়া', 0, 0),
(1253, 126, NULL, 'নিয়াজপুর', 0, 0),
(1254, 126, NULL, 'পূর্ব চরমটুয়া', 0, 0),
(1255, 126, NULL, 'আন্ডারচর', 0, 0),
(1256, 126, NULL, 'নোয়াখালী', 0, 0),
(1257, 129, NULL, 'সিরাজপুর', 0, 0),
(1258, 129, NULL, 'চরপার্বতী', 0, 0),
(1259, 129, NULL, 'চরহাজারী', 0, 0),
(1260, 129, NULL, 'চরকাঁকড়া', 0, 0),
(1261, 129, NULL, 'চরফকিরা', 0, 0),
(1262, 129, NULL, 'মুসাপুর', 0, 0),
(1263, 129, NULL, 'চরএলাহী', 0, 0),
(1264, 129, NULL, 'রামপুর', 0, 0),
(1265, 127, NULL, 'আমানউল্ল্যাপুর', 0, 0),
(1266, 127, NULL, 'গোপালপুর', 0, 0),
(1267, 127, NULL, 'জিরতলী', 0, 0),
(1268, 127, NULL, 'কুতবপুর', 0, 0),
(1269, 127, NULL, 'আলাইয়ারপুর', 0, 0),
(1270, 127, NULL, 'ছয়ানী', 0, 0),
(1271, 127, NULL, 'রাজগঞ্জ', 0, 0),
(1272, 127, NULL, 'একলাশপুর', 0, 0),
(1273, 127, NULL, 'বেগমগঞ্জ', 0, 0),
(1274, 127, NULL, 'মিরওয়ারিশপুর', 0, 0),
(1275, 127, NULL, 'নরোত্তমপুর', 0, 0),
(1276, 127, NULL, 'দূর্গাপুর', 0, 0),
(1277, 127, NULL, 'রসুলপুর', 0, 0),
(1278, 127, NULL, 'হাজীপুর', 0, 0),
(1279, 127, NULL, 'শরীফপুর', 0, 0),
(1280, 127, NULL, 'কাদিরপুর', 0, 0),
(1281, 131, NULL, 'সুখচর', 0, 0),
(1282, 131, NULL, 'নলচিরা', 0, 0),
(1283, 131, NULL, 'চরঈশ্বর', 0, 0),
(1284, 131, NULL, 'চরকিং', 0, 0),
(1285, 131, NULL, 'তমরদ্দি', 0, 0),
(1286, 131, NULL, 'সোনাদিয়া', 0, 0),
(1287, 131, NULL, 'বুড়িরচর', 0, 0),
(1288, 131, NULL, 'জাহাজমারা', 0, 0),
(1289, 131, NULL, 'নিঝুমদ্বীপ', 0, 0),
(1290, 134, NULL, 'চরজাব্বার', 0, 0),
(1291, 134, NULL, 'চরবাটা', 0, 0),
(1292, 134, NULL, 'চরক্লার্ক', 0, 0),
(1293, 134, NULL, 'চরওয়াপদা', 0, 0),
(1294, 134, NULL, 'চরজুবলী', 0, 0),
(1295, 134, NULL, 'চরআমান', 0, 0),
(1296, 134, NULL, 'পূর্ব চরবাটা', 0, 0),
(1297, 134, NULL, 'মোহাম্মদপুর', 0, 0),
(1298, 132, NULL, 'নরোত্তমপুর', 0, 0),
(1299, 132, NULL, 'ধানসিঁড়ি', 0, 0),
(1300, 132, NULL, 'সুন্দলপুর', 0, 0),
(1301, 132, NULL, 'ঘোষবাগ', 0, 0),
(1302, 132, NULL, 'চাপরাশিরহাট', 0, 0),
(1303, 132, NULL, 'ধানশালিক', 0, 0),
(1304, 132, NULL, 'বাটইয়া', 0, 0),
(1305, 130, NULL, 'ছাতারপাইয়া', 0, 0),
(1306, 130, NULL, 'কেশরপাড়া', 0, 0),
(1307, 130, NULL, 'ডুমুরুয়া', 0, 0),
(1308, 130, NULL, 'কাদরা', 0, 0),
(1309, 130, NULL, 'অর্জুনতলা', 0, 0),
(1310, 130, NULL, 'কাবিলপুর', 0, 0),
(1311, 130, NULL, 'মোহাম্মদপুর', 0, 0),
(1312, 130, NULL, 'নবীপুর', 0, 0),
(1313, 130, NULL, 'বিজবাগ', 0, 0),
(1314, 128, NULL, 'সাহাপুর', 0, 0),
(1315, 128, NULL, 'রামনারায়নপুর', 0, 0),
(1316, 128, NULL, 'পরকোট', 0, 0),
(1317, 128, NULL, 'বাদলকোট', 0, 0),
(1318, 128, NULL, 'পাঁচগাঁও', 0, 0),
(1319, 128, NULL, 'হাট-পুকুরিয়া', 0, 0),
(1320, 128, NULL, 'নোয়াখলা', 0, 0),
(1321, 128, NULL, 'খিলপাড়া', 0, 0),
(1322, 128, NULL, 'মোহাম্মদপুর', 0, 0),
(1323, 133, NULL, 'জয়াগ', 0, 0),
(1324, 133, NULL, 'নদনা', 0, 0),
(1325, 133, NULL, 'চাষীরহাট', 0, 0),
(1326, 133, NULL, 'বারগাঁও', 0, 0),
(1327, 133, NULL, 'অম্বরনগর', 0, 0),
(1328, 133, NULL, 'নাটেশ্বর', 0, 0),
(1329, 133, NULL, 'বজরা', 0, 0),
(1330, 133, NULL, 'সোনাপুর', 0, 0),
(1331, 133, NULL, 'দেওটি', 0, 0),
(1332, 133, NULL, 'আমিশাপাড়া', 0, 0),
(1333, 62, NULL, 'গাজীপুর', 0, 0),
(1334, 62, NULL, 'আলগী দুর্গাপুর', 0, 0),
(1335, 62, NULL, 'আলগী দুর্গাপুরদক্ষিণ', 0, 0),
(1336, 62, NULL, 'নীলকমল', 0, 0),
(1337, 62, NULL, 'হাইমচর', 0, 0),
(1338, 64, NULL, 'পাথৈর', 0, 0),
(1339, 64, NULL, 'বিতারা', 0, 0),
(1340, 64, NULL, 'সহদেবপুর', 0, 0),
(1341, 64, NULL, 'সহদেবপুর', 0, 0),
(1342, 64, NULL, 'কচুয়া', 0, 0),
(1343, 64, NULL, 'কচুয়া', 0, 0),
(1344, 64, NULL, 'গোহাট', 0, 0),
(1345, 64, NULL, 'গোহাট', 0, 0),
(1346, 64, NULL, 'সাচার', 0, 0),
(1347, 67, NULL, 'টামটা দক্ষিণ', 0, 0),
(1348, 67, NULL, 'টামটা উত্তর', 0, 0),
(1349, 67, NULL, 'মেহের', 0, 0),
(1350, 67, NULL, 'মেহের', 0, 0),
(1351, 67, NULL, 'সুচিপাড়া', 0, 0),
(1352, 67, NULL, 'সুচিপাড়া', 0, 0),
(1353, 67, NULL, 'চিতষী', 0, 0),
(1354, 67, NULL, 'রায়শ্রী', 0, 0),
(1355, 67, NULL, 'রায়শ্রী', 0, 0),
(1356, 67, NULL, 'চিতষী', 0, 0),
(1357, 60, NULL, 'বিষ্ণপুর', 0, 0),
(1358, 60, NULL, 'আশিকাটি', 0, 0),
(1359, 60, NULL, 'শাহ্‌', 0, 0),
(1360, 60, NULL, 'কল্যাণপুর', 0, 0),
(1361, 60, NULL, 'রামপুর', 0, 0),
(1362, 60, NULL, 'মৈশাদী', 0, 0),
(1363, 60, NULL, 'তরপুচন্ডী', 0, 0),
(1364, 60, NULL, 'বাগাদী', 0, 0),
(1365, 60, NULL, 'লক্ষীপুর মডেল', 0, 0),
(1366, 60, NULL, 'হানারচর', 0, 0),
(1367, 60, NULL, 'চান্দ্রা', 0, 0),
(1368, 60, NULL, 'রাজরাজেশ্বর', 0, 0),
(1369, 60, NULL, 'ইব্রাহীমপুর', 0, 0),
(1370, 60, NULL, 'বালিয়া', 0, 0),
(1371, 66, NULL, 'নায়েরগাঁও উত্তর', 0, 0),
(1372, 66, NULL, 'নায়েরগাঁও দক্ষিন', 0, 0),
(1373, 66, NULL, 'খাদেরগাঁও', 0, 0),
(1374, 66, NULL, 'নারায়নপুর', 0, 0),
(1375, 66, NULL, 'উপাদী', 0, 0),
(1376, 66, NULL, 'উপাদী', 0, 0),
(1377, 63, NULL, 'রাজারগাঁও', 0, 0),
(1378, 63, NULL, 'বাকিলা', 0, 0),
(1379, 63, NULL, 'কালচোঁ উত্তর', 0, 0),
(1380, 63, NULL, 'হাজীগঞ্জ সদর', 0, 0),
(1381, 63, NULL, 'কালচোঁ', 0, 0),
(1382, 63, NULL, 'বড়কুল', 0, 0),
(1383, 63, NULL, 'বড়কুল', 0, 0),
(1384, 63, NULL, 'হাটিলা', 0, 0),
(1385, 63, NULL, 'হাটিলা', 0, 0),
(1386, 63, NULL, 'গন্ধর্ব্যপুর', 0, 0),
(1387, 63, NULL, 'গন্ধর্ব্যপুর', 0, 0),
(1388, 65, NULL, 'ফতেহপুর', 0, 0),
(1389, 65, NULL, 'ফতেহপুর', 0, 0),
(1390, 61, NULL, 'বালিথুবা পশ্চিম ইউনিয়ন', 0, 0),
(1391, 61, NULL, 'বালিথুবা পূর্ব ইউনিয়ন', 0, 0),
(1392, 61, NULL, 'সুবিদপুর', 0, 0),
(1393, 61, NULL, 'সুবিদপুর', 0, 0),
(1394, 61, NULL, 'গুপ্তি', 0, 0),
(1395, 61, NULL, 'গুপ্তি', 0, 0),
(1396, 61, NULL, 'পাইকপাড়া', 0, 0),
(1397, 61, NULL, 'পাইকপাড়া', 0, 0),
(1398, 61, NULL, 'গবিন্দপুর', 0, 0);
INSERT INTO `unions` (`id`, `upazila_id`, `name`, `bn_name`, `lat`, `lon`) VALUES
(1399, 61, NULL, 'গবিন্দপুর', 0, 0),
(1400, 61, NULL, 'চরদুখিয়া', 0, 0),
(1401, 61, NULL, 'চরদুঃখিয়া', 0, 0),
(1402, 61, NULL, 'ফরিদ্গঞ্জ দক্ষিণ', 0, 0),
(1403, 61, NULL, 'রুপসা', 0, 0),
(1404, 61, NULL, 'রুপসা', 0, 0),
(1405, 121, NULL, 'উত্তর হামছাদী', 0, 0),
(1406, 121, NULL, 'দক্ষিন হামছাদী', 0, 0),
(1407, 121, NULL, 'দালাল বাজার', 0, 0),
(1408, 121, NULL, 'চররুহিতা', 0, 0),
(1409, 121, NULL, 'পার্বতীনগর', 0, 0),
(1410, 121, NULL, 'বাঙ্গাখাঁ', 0, 0),
(1411, 121, NULL, 'দত্তপাড়া', 0, 0),
(1412, 121, NULL, 'বশিকপুর', 0, 0),
(1413, 121, NULL, 'চন্দ্রগঞ্জ', 0, 0),
(1414, 121, NULL, 'উত্তর জয়পুর', 0, 0),
(1415, 121, NULL, 'হাজিরপাড়া', 0, 0),
(1416, 121, NULL, 'চরশাহী', 0, 0),
(1417, 121, NULL, 'দিঘলী', 0, 0),
(1418, 121, NULL, 'লাহারকান্দি', 0, 0),
(1419, 121, NULL, 'ভবানীগঞ্জ', 0, 0),
(1420, 121, NULL, 'কুশাখালী', 0, 0),
(1421, 121, NULL, 'শাকচর', 0, 0),
(1422, 121, NULL, 'তেয়ারীগঞ্জ', 0, 0),
(1423, 121, NULL, 'টুমচর', 0, 0),
(1424, 121, NULL, 'চররমনী মোহন', 0, 0),
(1425, 125, NULL, 'চর কালকিনি', 0, 0),
(1426, 125, NULL, 'সাহেবেরহাট', 0, 0),
(1427, 125, NULL, 'চর মার্টিন', 0, 0),
(1428, 125, NULL, 'চর ফলকন', 0, 0),
(1429, 125, NULL, 'পাটারীরহাট', 0, 0),
(1430, 125, NULL, 'হাজিরহাট', 0, 0),
(1431, 125, NULL, 'চর কাদিরা', 0, 0),
(1432, 125, NULL, 'তোরাবগঞ্জ', 0, 0),
(1433, 125, NULL, 'চর লরেঞ্চ', 0, 0),
(1434, 122, NULL, 'উত্তর চর আবাবিল', 0, 0),
(1435, 122, NULL, 'উত্তর চর বংশী', 0, 0),
(1436, 122, NULL, 'চর মোহনা', 0, 0),
(1437, 122, NULL, 'সোনাপুর', 0, 0),
(1438, 122, NULL, 'চর পাতা', 0, 0),
(1439, 122, NULL, 'বামনী', 0, 0),
(1440, 122, NULL, 'দক্ষিন চর বংশী', 0, 0),
(1441, 122, NULL, 'দক্ষিন চর আবাবিল', 0, 0),
(1442, 122, NULL, 'রায়পুর', 0, 0),
(1443, 122, NULL, 'কেরোয়া', 0, 0),
(1444, 124, NULL, 'চর পোড়াগাছা', 0, 0),
(1445, 124, NULL, 'চর বাদাম', 0, 0),
(1446, 124, NULL, 'চর আবদুল্যাহ', 0, 0),
(1447, 124, NULL, 'আলেকজান্ডার', 0, 0),
(1448, 124, NULL, 'চর আলগী', 0, 0),
(1449, 124, NULL, 'চর রমিজ', 0, 0),
(1450, 124, NULL, 'বড়খেড়ী', 0, 0),
(1451, 124, NULL, 'চরগাজী', 0, 0),
(1452, 123, NULL, 'কাঞ্চনপুর', 0, 0),
(1453, 123, NULL, 'নোয়াগাঁও ইউনিয়ন', 0, 0),
(1454, 123, NULL, 'ভাদুর', 0, 0),
(1455, 123, NULL, 'ইছাপুর', 0, 0),
(1456, 123, NULL, 'চন্ডিপুর', 0, 0),
(1457, 123, NULL, 'লামচর', 0, 0),
(1458, 123, NULL, 'দরবেশপুর', 0, 0),
(1459, 123, NULL, 'করপাড়া', 0, 0),
(1460, 123, NULL, 'ভোলাকোট', 0, 0),
(1461, 123, NULL, 'ভাটরা', 0, 0),
(1462, 77, NULL, 'রাজানগর', 0, 0),
(1463, 77, NULL, 'হোছনাবাদ', 0, 0),
(1464, 77, NULL, 'স্বনির্ভর রাঙ্গুনিয়া', 0, 0),
(1465, 77, NULL, 'মরিয়মনগর', 0, 0),
(1466, 77, NULL, 'পারুয়া', 0, 0),
(1467, 77, NULL, 'পোমরা', 0, 0),
(1468, 77, NULL, 'বেতাগী', 0, 0),
(1469, 77, NULL, 'সরফভাটা', 0, 0),
(1470, 77, NULL, 'শিলক', 0, 0),
(1471, 77, NULL, 'চন্দ্রঘোনা', 0, 0),
(1472, 77, NULL, 'কোদালা', 0, 0),
(1473, 77, NULL, 'ইসলামপুর', 0, 0),
(1474, 77, NULL, 'দক্ষিণ রাজানগর ইউনিয়ন', 0, 0),
(1475, 77, NULL, 'লালানগর', 0, 0),
(1476, 81, NULL, 'কুমিরা', 0, 0),
(1477, 81, NULL, 'বাঁশবারীয়া', 0, 0),
(1478, 81, NULL, 'বারবকুন্ড', 0, 0),
(1479, 81, NULL, 'বাড়িয়াডিয়ালা', 0, 0),
(1480, 81, NULL, 'মুরাদপুর', 0, 0),
(1481, 81, NULL, 'সাঈদপুর', 0, 0),
(1482, 81, NULL, 'সালিমপুর', 0, 0),
(1483, 81, NULL, 'সোনাইছড়ি', 0, 0),
(1484, 81, NULL, 'ভাটিয়ারী', 0, 0),
(1485, 75, NULL, 'করেরহাট', 0, 0),
(1486, 75, NULL, 'হিংগুলি', 0, 0),
(1487, 75, NULL, 'জোরারগঞ্জ', 0, 0),
(1488, 75, NULL, 'ধুম', 0, 0),
(1489, 75, NULL, 'ওসমানপুর', 0, 0),
(1490, 75, NULL, 'ইছাখালী', 0, 0),
(1491, 75, NULL, 'কাটাছরা', 0, 0),
(1492, 75, NULL, 'দূর্গাপুর', 0, 0),
(1493, 75, NULL, 'মীরসরাই', 0, 0),
(1494, 75, NULL, 'মিঠানালা', 0, 0),
(1495, 75, NULL, 'মঘাদিয়া', 0, 0),
(1496, 75, NULL, 'খৈয়াছরা', 0, 0),
(1497, 75, NULL, 'মায়ানী', 0, 0),
(1498, 75, NULL, 'হাইতকান্দি', 0, 0),
(1499, 75, NULL, 'ওয়াহেদপুর', 0, 0),
(1500, 75, NULL, 'সাহেরখালী', 0, 0),
(1501, 76, NULL, 'আশিয়া', 0, 0),
(1502, 76, NULL, 'কাচুয়াই', 0, 0),
(1503, 76, NULL, 'কাশিয়াইশ', 0, 0),
(1504, 76, NULL, 'কুসুমপুরা', 0, 0),
(1505, 76, NULL, 'কেলিশহর', 0, 0),
(1506, 76, NULL, 'কোলাগাঁও', 0, 0),
(1507, 76, NULL, 'খরনা', 0, 0),
(1508, 76, NULL, 'চরপাথরঘাটা', 0, 0),
(1509, 76, NULL, 'চরলক্ষ্যা', 0, 0),
(1510, 76, NULL, 'ছনহরা', 0, 0),
(1511, 76, NULL, 'জঙ্গলখাইন', 0, 0),
(1512, 76, NULL, 'জিরি', 0, 0),
(1513, 76, NULL, 'জুলধা', 0, 0),
(1514, 76, NULL, 'দক্ষিণ ভূর্ষি', 0, 0),
(1515, 76, NULL, 'ধলঘাট', 0, 0),
(1516, 76, NULL, 'বড় উঠান', 0, 0),
(1517, 76, NULL, 'বরলিয়া', 0, 0),
(1518, 76, NULL, 'ভাটিখাইন', 0, 0),
(1519, 76, NULL, 'শিকলবাহা', 0, 0),
(1520, 76, NULL, 'শোভনদন্ডী', 0, 0),
(1521, 76, NULL, 'হাবিলাসদ্বীপ', 0, 0),
(1522, 76, NULL, 'হাইদগাঁও', 0, 0),
(1523, 79, NULL, 'রহমতপুর ইউনিয়ন', 0, 0),
(1524, 79, NULL, 'হরিশপুর', 0, 0),
(1525, 79, NULL, 'কালাপানিয়া', 0, 0),
(1526, 79, NULL, 'আমানউল্যা', 0, 0),
(1527, 79, NULL, 'সন্তোষপুর', 0, 0),
(1528, 79, NULL, 'গাছুয়া', 0, 0),
(1529, 79, NULL, 'বাউরিয়া', 0, 0),
(1530, 79, NULL, 'হারামিয়া', 0, 0),
(1531, 79, NULL, 'মগধরা', 0, 0),
(1532, 79, NULL, 'মাইটভাঙ্গা', 0, 0),
(1533, 79, NULL, 'সারিকাইত', 0, 0),
(1534, 79, NULL, 'মুছাপুর', 0, 0),
(1535, 79, NULL, 'আজিমপুর', 0, 0),
(1536, 79, NULL, 'উড়িরচর', 0, 0),
(1537, 69, NULL, 'পুকুরিয়া', 0, 0),
(1538, 69, NULL, 'সাধনপুর', 0, 0),
(1539, 69, NULL, 'খানখানাবাদ', 0, 0),
(1540, 69, NULL, 'বাহারছড়া', 0, 0),
(1541, 69, NULL, 'কালীপুর', 0, 0),
(1542, 69, NULL, 'বৈলছড়ি', 0, 0),
(1543, 69, NULL, 'কাথরিয়া', 0, 0),
(1544, 69, NULL, 'সরল', 0, 0),
(1545, 69, NULL, 'শীলকুপ', 0, 0),
(1546, 69, NULL, 'চাম্বল', 0, 0),
(1547, 69, NULL, 'গন্ডামারা', 0, 0),
(1548, 69, NULL, 'শেখেরখীল', 0, 0),
(1549, 69, NULL, 'পুঁইছড়ি', 0, 0),
(1550, 69, NULL, 'ছনুয়া', 0, 0),
(1551, 70, NULL, 'কধুরখীল', 0, 0),
(1552, 70, NULL, 'পশ্চিম গোমদন্ডী', 0, 0),
(1553, 70, NULL, 'পুর্ব গোমদন্ডী', 0, 0),
(1554, 70, NULL, 'শাকপুরা ইউনিয়ন', 0, 0),
(1555, 70, NULL, 'সারোয়াতলী', 0, 0),
(1556, 70, NULL, 'পোপাদিয়া ইউনিয়ন', 0, 0),
(1557, 70, NULL, 'চরনদ্বীপ', 0, 0),
(1558, 70, NULL, 'শ্রীপুর-খরন্দীপ', 0, 0),
(1559, 70, NULL, 'আমুচিয়া ইউনিয়ন', 0, 0),
(1560, 70, NULL, 'আহল্লা করলডেঙ্গা', 0, 0),
(1561, 68, NULL, 'বৈরাগ', 0, 0),
(1562, 68, NULL, 'বারশত', 0, 0),
(1563, 68, NULL, 'রায়পুর', 0, 0),
(1564, 68, NULL, 'বটতলী', 0, 0),
(1565, 68, NULL, 'বরম্নমচড়া', 0, 0),
(1566, 68, NULL, 'বারখাইন', 0, 0),
(1567, 68, NULL, 'আনোয়ারা', 0, 0),
(1568, 68, NULL, 'চাতরী', 0, 0),
(1569, 68, NULL, 'পরৈকোড়া', 0, 0),
(1570, 68, NULL, 'হাইলধর', 0, 0),
(1571, 68, NULL, 'জুঁইদন্ডী', 0, 0),
(1572, 71, NULL, 'কাঞ্চনাবাদ', 0, 0),
(1573, 71, NULL, 'জোয়ারা', 0, 0),
(1574, 71, NULL, 'বরকল', 0, 0),
(1575, 71, NULL, 'বরমা', 0, 0),
(1576, 71, NULL, 'বৈলতলী', 0, 0),
(1577, 71, NULL, 'সাতবাড়িয়া', 0, 0),
(1578, 71, NULL, 'হাশিমপুর', 0, 0),
(1579, 71, NULL, 'দোহাজারী', 0, 0),
(1580, 71, NULL, 'ধোপাছড়ী', 0, 0),
(1581, 80, NULL, 'চরতী', 0, 0),
(1582, 80, NULL, 'খাগরিয়া', 0, 0),
(1583, 80, NULL, 'নলুয়া', 0, 0),
(1584, 80, NULL, 'কাঞ্চনা', 0, 0),
(1585, 80, NULL, 'আমিলাইশ', 0, 0),
(1586, 80, NULL, 'এওচিয়া', 0, 0),
(1587, 80, NULL, 'মাদার্শা', 0, 0),
(1588, 80, NULL, 'ঢেমশা', 0, 0),
(1589, 80, NULL, 'পশ্চিম ঢেমশা', 0, 0),
(1590, 80, NULL, 'কেঁওচিয়া', 0, 0),
(1591, 80, NULL, 'কালিয়াইশ', 0, 0),
(1592, 80, NULL, 'বাজালিয়া', 0, 0),
(1593, 80, NULL, 'পুরানগড়', 0, 0),
(1594, 80, NULL, 'ছদাহা', 0, 0),
(1595, 80, NULL, 'সাতকানিয়া', 0, 0),
(1596, 80, NULL, 'সোনাকানিয়া', 0, 0),
(1597, 74, NULL, 'পদুয়া', 0, 0),
(1598, 74, NULL, 'বড়হাতিয়া', 0, 0),
(1599, 74, NULL, 'আমিরাবাদ', 0, 0),
(1600, 74, NULL, 'চরম্বা', 0, 0),
(1601, 74, NULL, 'কলাউজান', 0, 0),
(1602, 74, NULL, 'লোহাগাড়া', 0, 0),
(1603, 74, NULL, 'পুটিবিলা', 0, 0),
(1604, 74, NULL, 'চুনতি', 0, 0),
(1605, 74, NULL, 'আধুনগর', 0, 0),
(1606, 73, NULL, 'ফরহাদাবাদ', 0, 0),
(1607, 73, NULL, 'ধলই', 0, 0),
(1608, 73, NULL, 'মির্জাপুর', 0, 0),
(1609, 73, NULL, 'নাঙ্গলমোরা', 0, 0),
(1610, 73, NULL, 'গুমানমর্দ্দন', 0, 0),
(1611, 73, NULL, 'ছিপাতলী', 0, 0),
(1612, 73, NULL, 'মেখল', 0, 0),
(1613, 73, NULL, 'গড়দুয়ারা', 0, 0),
(1614, 73, NULL, 'ফতেপুর', 0, 0),
(1615, 73, NULL, 'চিকনদন্ডী', 0, 0),
(1616, 73, NULL, 'উত্তর মাদার্শা', 0, 0),
(1617, 73, NULL, 'দক্ষিন মাদার্শা', 0, 0),
(1618, 73, NULL, 'শিকারপুর', 0, 0),
(1619, 73, NULL, 'বুডিরশ্চর', 0, 0),
(1620, 73, NULL, 'হাটহাজারী', 0, 0),
(1621, 72, NULL, 'ধর্মপুর', 0, 0),
(1622, 72, NULL, 'বাগান বাজার', 0, 0),
(1623, 72, NULL, 'দাঁতমারা', 0, 0),
(1624, 72, NULL, 'নারায়নহাট ইউনিয়ন', 0, 0),
(1625, 72, NULL, 'ভূজপুর ইউনিয়ন', 0, 0),
(1626, 72, NULL, 'হারুয়ালছড়ি ইউনিয়ন', 0, 0),
(1627, 72, NULL, 'পাইনদং ইউনিয়ন', 0, 0),
(1628, 72, NULL, 'কাঞ্চনগর ইউনিয়ন', 0, 0),
(1629, 72, NULL, 'সুনদরপুর ইউনিয়ন', 0, 0),
(1630, 72, NULL, 'সুয়াবিল ইউনিয়ন', 0, 0),
(1631, 72, NULL, 'আবদুল্লাপুর ইউনিয়ন', 0, 0),
(1632, 72, NULL, 'সমিতির হাট ইউনিয়ন', 0, 0),
(1633, 72, NULL, 'জাফতনগর ইউনিয়ন', 0, 0),
(1634, 72, NULL, 'বক্তপুর ইউনিয়ন', 0, 0),
(1635, 72, NULL, 'রোসাংগিরী ইউনিয়ন', 0, 0),
(1636, 72, NULL, 'নানুপুর ইউনিয়ন', 0, 0),
(1637, 72, NULL, 'লেলাং ইউনিয়ন', 0, 0),
(1638, 72, NULL, 'দৌলতপুর ইউনিয়ন', 0, 0),
(1639, 78, NULL, 'রাউজান', 0, 0),
(1640, 78, NULL, 'বাগোয়ান', 0, 0),
(1641, 78, NULL, 'বিনাজুরী', 0, 0),
(1642, 78, NULL, 'চিকদাইর', 0, 0),
(1643, 78, NULL, 'ডাবুয়া', 0, 0),
(1644, 78, NULL, 'পূর্ব গুজরা', 0, 0),
(1645, 78, NULL, 'পশ্চিম গুজরা', 0, 0),
(1646, 78, NULL, 'গহিরা', 0, 0),
(1647, 78, NULL, 'হলদিয়া', 0, 0),
(1648, 78, NULL, 'কদলপূর', 0, 0),
(1649, 78, NULL, 'নোয়াপাড়া', 0, 0),
(1650, 78, NULL, 'পাহাড়তলী', 0, 0),
(1651, 78, NULL, 'উড়কিরচর', 0, 0),
(1652, 78, NULL, 'নওয়াজিশপুর', 0, 0),
(1653, 100, NULL, 'ইসলামাবাদ', 0, 0),
(1654, 100, NULL, 'ইসলামপুর', 0, 0),
(1655, 100, NULL, 'পোকখালী', 0, 0),
(1656, 100, NULL, 'ঈদগাঁও', 0, 0),
(1657, 100, NULL, 'জালালাবাদ', 0, 0),
(1658, 100, NULL, 'চৌফলদন্ডী', 0, 0),
(1659, 100, NULL, 'ভারুয়াখালী', 0, 0),
(1660, 100, NULL, 'পিএমখালী', 0, 0),
(1661, 100, NULL, 'খুরুশকুল', 0, 0),
(1662, 100, NULL, 'ঝিলংঝা', 0, 0),
(1663, 98, NULL, 'কাকারা', 0, 0),
(1664, 98, NULL, 'কাইয়ার বিল', 0, 0),
(1665, 98, NULL, 'কোনাখালী', 0, 0),
(1666, 98, NULL, 'খুটাখালী', 0, 0),
(1667, 98, NULL, 'চিরিঙ্গা', 0, 0),
(1668, 98, NULL, 'ঢেমুশিয়া', 0, 0),
(1669, 98, NULL, 'ডুলাহাজারা', 0, 0),
(1670, 98, NULL, 'পশ্চিম বড় ভেওলা', 0, 0),
(1671, 98, NULL, 'বদরখালী', 0, 0),
(1672, 98, NULL, 'বামু বিলছড়ি', 0, 0),
(1673, 98, NULL, 'বড়ইতলী', 0, 0),
(1674, 98, NULL, 'ভেওলা মানিকচর', 0, 0),
(1675, 98, NULL, 'শাহারবিল', 0, 0),
(1676, 98, NULL, 'সুরজপুর মানিকপুর', 0, 0),
(1677, 98, NULL, 'হারবাঙ্গ', 0, 0),
(1678, 98, NULL, 'ফাঁসিয়াখালী', 0, 0),
(1679, 101, NULL, 'আলি আকবর ডেইল', 0, 0),
(1680, 101, NULL, 'উত্তর ধুরুং', 0, 0),
(1681, 101, NULL, 'কৈয়ারবিল', 0, 0),
(1682, 101, NULL, 'দক্ষিণ ধুরুং', 0, 0),
(1683, 101, NULL, 'বড়ঘোপ', 0, 0),
(1684, 101, NULL, 'লেমসিখালী', 0, 0),
(1685, 105, NULL, 'রাজাপালং', 0, 0),
(1686, 105, NULL, 'জালিয়াপালং', 0, 0),
(1687, 105, NULL, 'হলদিয়াপালং', 0, 0),
(1688, 105, NULL, 'রত্নাপালং', 0, 0),
(1689, 105, NULL, 'পালংখালী', 0, 0),
(1690, 102, NULL, 'বড় মহেশখালী', 0, 0),
(1691, 102, NULL, 'ছোট মহেশখালী', 0, 0),
(1692, 102, NULL, 'শাপলাপুর', 0, 0),
(1693, 102, NULL, 'কুতুবজোম', 0, 0),
(1694, 102, NULL, 'হোয়ানক', 0, 0),
(1695, 102, NULL, 'কালারমারছড়া', 0, 0),
(1696, 102, NULL, 'মাতারবাড়ী', 0, 0),
(1697, 102, NULL, 'ধলঘাটা', 0, 0),
(1698, 106, NULL, 'উজানটিয়া', 0, 0),
(1699, 106, NULL, 'টাইটং', 0, 0),
(1700, 106, NULL, 'পেকুয়া', 0, 0),
(1701, 106, NULL, 'বড় বাকিয়া', 0, 0),
(1702, 106, NULL, 'মগনামা', 0, 0),
(1703, 106, NULL, 'রাজাখালী', 0, 0),
(1704, 106, NULL, 'শীলখালী', 0, 0),
(1705, 103, NULL, 'ফতেখাঁরকুল', 0, 0),
(1706, 103, NULL, 'রাজারকুল', 0, 0),
(1707, 103, NULL, 'রশীদনগর', 0, 0),
(1708, 103, NULL, 'খুনিয়াপালং', 0, 0),
(1709, 103, NULL, 'ঈদগড়', 0, 0),
(1710, 103, NULL, 'চাকমারকুল', 0, 0),
(1711, 103, NULL, 'কচ্ছপিয়া', 0, 0),
(1712, 103, NULL, 'কাউয়ারখোপ', 0, 0),
(1713, 103, NULL, 'দক্ষিণ মিঠাছড়ি', 0, 0),
(1714, 103, NULL, 'জোয়ারিয়া নালা', 0, 0),
(1715, 103, NULL, 'গর্জনিয়া', 0, 0),
(1716, 104, NULL, 'সাবরাং', 0, 0),
(1717, 104, NULL, 'বাহারছড়া', 0, 0),
(1718, 104, NULL, 'হ্নীলা', 0, 0),
(1719, 104, NULL, 'হোয়াইক্যং', 0, 0),
(1720, 104, NULL, 'সেন্ট মার্টিন', 0, 0),
(1721, 104, NULL, 'টেকনাফ সদর', 0, 0),
(1722, 114, NULL, 'খাগরাছড়ি সদর', 0, 0),
(1723, 114, NULL, 'গোলাবাড়ী', 0, 0),
(1724, 114, NULL, 'পেরাছড়া', 0, 0),
(1725, 114, NULL, 'কমলছড়ি', 0, 0),
(1726, 113, NULL, 'মেরুং', 0, 0),
(1727, 113, NULL, 'বোয়ালখালী', 0, 0),
(1728, 113, NULL, 'কবাখালী', 0, 0),
(1729, 113, NULL, 'দিঘীনালা', 0, 0),
(1730, 113, NULL, 'বাবুছড়া', 0, 0),
(1731, 119, NULL, 'লোগাং', 0, 0),
(1732, 119, NULL, 'চেংগী', 0, 0),
(1733, 119, NULL, 'পানছড়ি', 0, 0),
(1734, 119, NULL, 'লতিবান', 0, 0),
(1735, 115, NULL, 'দুল্যাতলী', 0, 0),
(1736, 115, NULL, 'বর্মাছড়ি', 0, 0),
(1737, 115, NULL, 'লক্ষীছড়ি', 0, 0),
(1738, 116, NULL, 'ভাইবোনছড়া', 0, 0),
(1739, 116, NULL, 'মহালছড়ি', 0, 0),
(1740, 116, NULL, 'মুবাছড়ি', 0, 0),
(1741, 116, NULL, 'ক্যায়াংঘাট', 0, 0),
(1742, 116, NULL, 'মাইসছড়ি', 0, 0),
(1743, 117, NULL, 'মানিকছড়ি', 0, 0),
(1744, 117, NULL, 'বাটনাতলী', 0, 0),
(1745, 117, NULL, 'যোগ্যছোলা', 0, 0),
(1746, 117, NULL, 'তিনটহরী', 0, 0),
(1747, 120, NULL, 'রামগড়', 0, 0),
(1748, 120, NULL, 'পাতাছড়া', 0, 0),
(1749, 120, NULL, 'হাফছড়ি', 0, 0),
(1750, 118, NULL, 'তাইন্দং', 0, 0),
(1751, 118, NULL, 'তবলছড়ি', 0, 0),
(1752, 118, NULL, 'বর্ণাল', 0, 0),
(1753, 118, NULL, 'গোমতি', 0, 0),
(1754, 118, NULL, 'বেলছড়ি', 0, 0),
(1755, 118, NULL, 'মাটিরাঙ্গা', 0, 0),
(1756, 118, NULL, 'গুইমারা', 0, 0),
(1757, 118, NULL, 'আমতলি', 0, 0),
(1758, 43, NULL, 'রাজবিলা', 0, 0),
(1759, 43, NULL, 'টংকাবতী ইউনিয়ন', 0, 0),
(1760, 43, NULL, 'সুয়ালক ইউনিয়ন', 0, 0),
(1761, 43, NULL, 'বান্দরবান সদর', 0, 0),
(1762, 43, NULL, 'কুহালং', 0, 0),
(1763, 47, NULL, 'আলীকদম সদর ইউনিয়ন', 0, 0),
(1764, 47, NULL, 'চৈক্ষ্যং ইউনিয়ন', 0, 0),
(1765, 46, NULL, 'নাইক্ষ্যংছড়ি সদর ইউনিয়ন', 0, 0),
(1766, 46, NULL, 'ঘুমধুম ইউনিয়ন', 0, 0),
(1767, 46, NULL, 'বাইশারী', 0, 0),
(1768, 46, NULL, 'সোনাইছড়ি', 0, 0),
(1769, 46, NULL, 'দোছড়ি', 0, 0),
(1770, 48, NULL, 'রোয়াংছড়ি সদর', 0, 0),
(1771, 48, NULL, 'তারাছা', 0, 0),
(1772, 48, NULL, 'আলেক্ষ্যং', 0, 0),
(1773, 48, NULL, 'নোয়াপতং', 0, 0),
(1774, 45, NULL, 'গজালিয়া', 0, 0),
(1775, 45, NULL, 'লামা সদর', 0, 0),
(1776, 45, NULL, 'ফাসিয়াখালী', 0, 0),
(1777, 45, NULL, 'ফাইতং', 0, 0),
(1778, 45, NULL, 'রূপসীপাড়া', 0, 0),
(1779, 45, NULL, 'সরই ইউনিয়ন', 0, 0),
(1780, 45, NULL, 'আজিজনগর ইউনিয়ন', 0, 0),
(1781, 49, NULL, 'পাইন্দু ইউনিয়ন', 0, 0),
(1782, 49, NULL, 'রুমা সদর ইউনিয়ন', 0, 0),
(1783, 49, NULL, 'রেমাক্রীপ্রাংসা ইউনিয়ন', 0, 0),
(1784, 49, NULL, 'গ্যালেংগ্যা ইউনিয়ন', 0, 0),
(1785, 44, NULL, 'রেমাক্রী ইউনিয়ন', 0, 0),
(1786, 44, NULL, 'তিন্দু ইউনিয়ন', 0, 0),
(1787, 44, NULL, 'থানচি সদর ইউনিয়ন', 0, 0),
(1788, 44, NULL, 'বলিপাড়া ইউনিয়ন', 0, 0),
(1789, 387, NULL, 'রাজাপুর', 0, 0),
(1790, 387, NULL, 'বড়ধুল', 0, 0),
(1791, 387, NULL, 'বেলকুচি সদর', 0, 0),
(1792, 387, NULL, 'ধুকুরিয়া বেড়া', 0, 0),
(1793, 387, NULL, 'দৌলতপুর', 0, 0),
(1794, 387, NULL, 'ভাঙ্গাবাড়ী', 0, 0),
(1795, 388, NULL, 'বাঘুটিয়া', 0, 0),
(1796, 388, NULL, 'ঘোরজান', 0, 0),
(1797, 388, NULL, 'খাসকাউলিয়া', 0, 0),
(1798, 388, NULL, 'খাসপুকুরিয়া', 0, 0),
(1799, 388, NULL, 'উমারপুর', 0, 0),
(1800, 388, NULL, 'সদিয়া চাঁদপুর', 0, 0),
(1801, 388, NULL, 'স্থল', 0, 0),
(1802, 389, NULL, 'ভদ্রঘাট', 0, 0),
(1803, 389, NULL, 'জামতৈল', 0, 0),
(1804, 389, NULL, 'ঝাঐল', 0, 0),
(1805, 389, NULL, 'রায়দৌলতপুর', 0, 0),
(1806, 390, NULL, 'চালিতাডাঙ্গা', 0, 0),
(1807, 390, NULL, 'চরগিরিশ', 0, 0),
(1808, 390, NULL, 'গান্ধাইল', 0, 0),
(1809, 390, NULL, 'কাজিপুর সদর', 0, 0),
(1810, 390, NULL, 'খাসরাজবাড়ী', 0, 0),
(1811, 390, NULL, 'মাইজবাড়ী', 0, 0),
(1812, 390, NULL, 'মনসুর নগর', 0, 0),
(1813, 390, NULL, 'নাটুয়ারপাড়া', 0, 0),
(1814, 390, NULL, 'নিশ্চিন্তপুর', 0, 0),
(1815, 390, NULL, 'সোনামুখী', 0, 0),
(1816, 390, NULL, 'শুভগাছা', 0, 0),
(1817, 390, NULL, 'তেকানী', 0, 0),
(1818, 391, NULL, 'ব্রহ্মগাছা', 0, 0),
(1819, 391, NULL, 'চান্দাইকোনা', 0, 0),
(1820, 391, NULL, 'ধামাইনগর', 0, 0),
(1821, 391, NULL, 'ধানগড়া', 0, 0),
(1822, 391, NULL, 'ধুবিল', 0, 0),
(1823, 391, NULL, 'ঘুড়কা', 0, 0),
(1824, 391, NULL, 'নলকা', 0, 0),
(1825, 391, NULL, 'পাঙ্গাসী', 0, 0),
(1826, 391, NULL, 'সোনাখাড়া', 0, 0),
(1827, 392, NULL, 'বেলতৈল', 0, 0),
(1828, 392, NULL, 'জালালপুর', 0, 0),
(1829, 392, NULL, 'কায়েমপুর', 0, 0),
(1830, 392, NULL, 'গাড়াদহ', 0, 0),
(1831, 392, NULL, 'পোতাজিয়া', 0, 0),
(1832, 392, NULL, 'রূপবাটি', 0, 0),
(1833, 392, NULL, 'গালা', 0, 0),
(1834, 392, NULL, 'পোরজনা', 0, 0),
(1835, 392, NULL, 'হাবিবুল্লাহ নগর', 0, 0),
(1836, 392, NULL, 'খুকনী', 0, 0),
(1837, 392, NULL, 'কৈজুরী', 0, 0),
(1838, 392, NULL, 'সোনাতনী', 0, 0),
(1839, 392, NULL, 'নরিনা', 0, 0),
(1840, 386, NULL, 'বাগবাটি', 0, 0),
(1841, 386, NULL, 'রতনকান্দি', 0, 0),
(1842, 386, NULL, 'বহুলী', 0, 0),
(1843, 386, NULL, 'শিয়ালকোল', 0, 0),
(1844, 386, NULL, 'খোকশাবাড়ী', 0, 0),
(1845, 386, NULL, 'ছোনগাছা', 0, 0),
(1846, 386, NULL, 'মেছড়া', 0, 0),
(1847, 386, NULL, 'কাওয়াখোলা', 0, 0),
(1848, 386, NULL, 'কালিয়াহরিপুর', 0, 0),
(1849, 386, NULL, 'সয়দাবাদ', 0, 0),
(1850, 393, NULL, 'বারুহাস', 0, 0),
(1851, 393, NULL, 'তালম', 0, 0),
(1852, 393, NULL, 'সগুনা', 0, 0),
(1853, 393, NULL, 'মাগুড়া বিনোদ', 0, 0),
(1854, 393, NULL, 'নওগাঁ', 0, 0),
(1855, 393, NULL, 'তাড়াশ সদর', 0, 0),
(1856, 393, NULL, 'মাধাইনগর', 0, 0),
(1857, 393, NULL, 'দেশীগ্রাম', 0, 0),
(1858, 394, NULL, 'উল্লাপাড়া সদর', 0, 0),
(1859, 394, NULL, 'রামকৃষ্ণপুর', 0, 0),
(1860, 394, NULL, 'বাঙ্গালা', 0, 0),
(1861, 394, NULL, 'উধুনিয়া', 0, 0),
(1862, 394, NULL, 'বড়পাঙ্গাসী', 0, 0),
(1863, 394, NULL, 'দুর্গা নগর', 0, 0),
(1864, 394, NULL, 'পূর্ণিমাগাতী', 0, 0),
(1865, 394, NULL, 'সলঙ্গা', 0, 0),
(1866, 394, NULL, 'হটিকুমরুল', 0, 0),
(1867, 394, NULL, 'বড়হর', 0, 0),
(1868, 394, NULL, 'পঞ্চক্রোশী', 0, 0),
(1869, 394, NULL, 'সলপ', 0, 0),
(1870, 394, NULL, 'মোহনপুর', 0, 0),
(1871, 376, NULL, 'ভায়না', 0, 0),
(1872, 376, NULL, 'তাঁতিবন্দ', 0, 0),
(1873, 376, NULL, 'মানিকহাট', 0, 0),
(1874, 376, NULL, 'দুলাই', 0, 0),
(1875, 376, NULL, 'আহম্মদপুর', 0, 0),
(1876, 376, NULL, 'রাণীনগর', 0, 0),
(1877, 376, NULL, 'সাতবাড়ীয়া', 0, 0),
(1878, 376, NULL, 'হাটখালী', 0, 0),
(1879, 376, NULL, 'নাজিরগঞ্জ', 0, 0),
(1880, 376, NULL, 'সাগরকান্দি', 0, 0),
(1881, 373, NULL, 'সাঁড়া', 0, 0),
(1882, 373, NULL, 'পাকশী', 0, 0),
(1883, 373, NULL, 'মুলাডুলি', 0, 0),
(1884, 373, NULL, 'দাশুরিয়া', 0, 0),
(1885, 373, NULL, 'ছলিমপুর', 0, 0),
(1886, 373, NULL, 'সাহাপুর', 0, 0),
(1887, 373, NULL, 'লক্ষীকুন্ডা', 0, 0),
(1888, 370, NULL, 'ভাঙ্গুড়া', 0, 0),
(1889, 370, NULL, 'খানমরিচ', 0, 0),
(1890, 370, NULL, 'অষ্টমণিষা', 0, 0),
(1891, 370, NULL, 'দিলপাশার', 0, 0),
(1892, 370, NULL, 'পারভাঙ্গুড়া', 0, 0),
(1893, 374, NULL, 'মালিগাছা', 0, 0),
(1894, 374, NULL, 'মালঞ্চি', 0, 0),
(1895, 374, NULL, 'গয়েশপুর', 0, 0),
(1896, 374, NULL, 'আতাইকুলা', 0, 0),
(1897, 374, NULL, 'চরতারাপুর', 0, 0),
(1898, 374, NULL, 'সাদুল্লাপুর', 0, 0),
(1899, 374, NULL, 'ভাঁড়ারা', 0, 0),
(1900, 374, NULL, 'দোগাছী', 0, 0),
(1901, 374, NULL, 'হেমায়েতপুর', 0, 0),
(1902, 374, NULL, 'দাপুনিয়া', 0, 0),
(1903, 369, NULL, 'হাটুরিয়া নাকালিয়া', 0, 0),
(1904, 369, NULL, 'নতুন ভারেঙ্গা', 0, 0),
(1905, 369, NULL, 'কৈটোলা', 0, 0),
(1906, 369, NULL, 'চাকলা', 0, 0),
(1907, 369, NULL, 'জাতসাখিনি', 0, 0),
(1908, 369, NULL, 'পুরান ভারেঙ্গা', 0, 0),
(1909, 369, NULL, 'রূপপুর', 0, 0),
(1910, 369, NULL, 'মাসুমদিয়া', 0, 0),
(1911, 369, NULL, 'ঢালার চর', 0, 0),
(1912, 368, NULL, 'মাজপাড়া', 0, 0),
(1913, 368, NULL, 'চাঁদভা', 0, 0),
(1914, 368, NULL, 'দেবোত্তর', 0, 0),
(1915, 368, NULL, 'একদন্ত', 0, 0),
(1916, 368, NULL, 'লক্ষীপুর', 0, 0),
(1917, 371, NULL, 'হান্ডিয়াল', 0, 0),
(1918, 371, NULL, 'ছাইকোলা', 0, 0),
(1919, 371, NULL, 'নিমাইচড়া', 0, 0),
(1920, 371, NULL, 'গুনাইগাছা', 0, 0),
(1921, 371, NULL, 'পার্শ্বডাঙ্গা', 0, 0),
(1922, 371, NULL, 'ফৈলজানা', 0, 0),
(1923, 371, NULL, 'মুলগ্রাম', 0, 0),
(1924, 371, NULL, 'হরিপুর', 0, 0),
(1925, 371, NULL, 'মথুরাপুর', 0, 0),
(1926, 371, NULL, 'বিলচলন', 0, 0),
(1927, 371, NULL, 'দাতিয়া বামনগ্রাম', 0, 0),
(1928, 375, NULL, 'নাগডেমড়া', 0, 0),
(1929, 375, NULL, 'ধুলাউড়ি', 0, 0),
(1930, 375, NULL, 'ভুলবাড়ীয়া', 0, 0),
(1931, 375, NULL, 'ধোপাদহ', 0, 0),
(1932, 375, NULL, 'করমজা', 0, 0),
(1933, 375, NULL, 'কাশিনাথপুর', 0, 0),
(1934, 375, NULL, 'গৌরীগ্রাম', 0, 0),
(1935, 375, NULL, 'নন্দনপুর', 0, 0),
(1936, 375, NULL, 'ক্ষেতুপাড়া', 0, 0),
(1937, 375, NULL, 'আর-আতাইকুলা', 0, 0),
(1938, 372, NULL, 'বৃলাহিড়ীবাড়ী', 0, 0),
(1939, 372, NULL, 'পুঙ্গুলি', 0, 0),
(1940, 372, NULL, 'ফরিদপুর', 0, 0),
(1941, 372, NULL, 'হাদল', 0, 0),
(1942, 372, NULL, 'বনওয়ারীনগর', 0, 0),
(1943, 372, NULL, 'ডেমড়া', 0, 0),
(1944, 335, NULL, 'বীরকেদার', 0, 0),
(1945, 335, NULL, 'কালাই', 0, 0),
(1946, 335, NULL, 'পাইকড়', 0, 0),
(1947, 335, NULL, 'নারহট্ট', 0, 0),
(1948, 335, NULL, 'মুরইল', 0, 0),
(1949, 335, NULL, 'কাহালু', 0, 0),
(1950, 335, NULL, 'দূর্গাপুর', 0, 0),
(1951, 335, NULL, 'জামগ্রাম', 0, 0),
(1952, 335, NULL, 'মালঞ্চা', 0, 0),
(1953, 330, NULL, 'ফাঁপোর', 0, 0),
(1954, 330, NULL, 'সাবগ্রাম', 0, 0),
(1955, 330, NULL, 'নিশিন্দারা', 0, 0),
(1956, 330, NULL, 'এরুলিয়া', 0, 0),
(1957, 330, NULL, 'রাজাপুর', 0, 0),
(1958, 330, NULL, 'শাখারিয়া', 0, 0),
(1959, 330, NULL, 'শেখেরকোলা', 0, 0),
(1960, 330, NULL, 'গোকুল', 0, 0),
(1961, 330, NULL, 'নুনগোলা', 0, 0),
(1962, 330, NULL, 'লাহিড়ীপাড়া', 0, 0),
(1963, 330, NULL, 'নামুজা', 0, 0),
(1964, 338, NULL, 'সারিয়াকান্দি সদর', 0, 0),
(1965, 338, NULL, 'নারচী', 0, 0),
(1966, 338, NULL, 'বোহাইল', 0, 0),
(1967, 338, NULL, 'চালুয়াবাড়ী', 0, 0),
(1968, 338, NULL, 'চন্দনবাইশা', 0, 0),
(1969, 338, NULL, 'হাটফুলবাড়ী', 0, 0),
(1970, 338, NULL, 'হাটশেরপুর', 0, 0),
(1971, 338, NULL, 'কর্ণিবাড়ী', 0, 0),
(1972, 338, NULL, 'কাজলা', 0, 0),
(1973, 338, NULL, 'কুতুবপুর', 0, 0),
(1974, 338, NULL, 'কামালপুর', 0, 0),
(1975, 338, NULL, 'ভেলাবাড়ী', 0, 0),
(1976, 337, NULL, 'আশেকপুর', 0, 0),
(1977, 337, NULL, 'মাদলা', 0, 0),
(1978, 337, NULL, 'মাঝিড়া', 0, 0),
(1979, 337, NULL, 'আড়িয়া', 0, 0),
(1980, 337, NULL, 'খরনা', 0, 0),
(1981, 337, NULL, 'খোট্টাপাড়া', 0, 0),
(1982, 337, NULL, 'চোপিনগর', 0, 0),
(1983, 337, NULL, 'আমরুল', 0, 0),
(1984, 337, NULL, 'গোহাইল', 0, 0),
(1985, 333, NULL, 'জিয়ানগর', 0, 0),
(1986, 333, NULL, 'চামরুল', 0, 0),
(1987, 333, NULL, 'দুপচাঁচিয়া', 0, 0),
(1988, 333, NULL, 'গুনাহার', 0, 0),
(1989, 333, NULL, 'গোবিন্দপুর', 0, 0),
(1990, 333, NULL, 'তালোড়া', 0, 0),
(1991, 329, NULL, 'ছাতিয়ানগ্রাম', 0, 0),
(1992, 329, NULL, 'নশরতপুর', 0, 0),
(1993, 329, NULL, 'আদমদিঘি', 0, 0),
(1994, 329, NULL, 'কুন্দগ্রাম', 0, 0),
(1995, 329, NULL, 'চাঁপাপুর', 0, 0),
(1996, 329, NULL, 'সান্তাহার', 0, 0),
(1997, 336, NULL, '১নং বুড়ইল', 0, 0),
(1998, 336, NULL, '২নং নন্দিগ্রাম', 0, 0),
(1999, 336, NULL, '৩নং ভাটরা', 0, 0),
(2000, 336, NULL, '৪নং থালতা মাঝগ্রাম', 0, 0),
(2001, 336, NULL, '৫নং ভাটগ্রাম', 0, 0),
(2002, 340, NULL, 'সোনাতলা', 0, 0),
(2003, 340, NULL, 'বালুয়া', 0, 0),
(2004, 340, NULL, 'জোড়গাছা', 0, 0),
(2005, 340, NULL, 'দিগদাইড়', 0, 0),
(2006, 340, NULL, 'মধুপুর', 0, 0),
(2007, 340, NULL, 'পাকুল্ল্যা', 0, 0),
(2008, 340, NULL, 'তেকানী চুকাইনগর', 0, 0),
(2009, 332, NULL, '১নং নিমগাছি', 0, 0),
(2010, 332, NULL, '২নং কালেরপাড়া', 0, 0),
(2011, 332, NULL, '৩নং চিকাশী', 0, 0),
(2012, 332, NULL, '৪নং গোসাইবাড়ী', 0, 0),
(2013, 332, NULL, '৫নং ভান্ডারবাড়ী', 0, 0),
(2014, 332, NULL, '১০নং গোপালনগর', 0, 0),
(2015, 332, NULL, '৯নং মথুরাপুর', 0, 0),
(2016, 332, NULL, '৮নং চৌকিবাড়ী', 0, 0),
(2017, 332, NULL, '৭নং এলাঙ্গী', 0, 0),
(2018, 332, NULL, '৬নং ধুনট সদর', 0, 0),
(2019, 334, NULL, 'বালিয়া দিঘী', 0, 0),
(2020, 334, NULL, 'দক্ষিণপাড়া', 0, 0),
(2021, 334, NULL, 'দুর্গাহাটা', 0, 0),
(2022, 334, NULL, 'কাগইল', 0, 0),
(2023, 334, NULL, 'সোনারায়', 0, 0),
(2024, 334, NULL, 'রামেশ্বরপুর', 0, 0),
(2025, 334, NULL, 'নাড়ুয়ামালা', 0, 0),
(2026, 334, NULL, 'নেপালতলী', 0, 0),
(2027, 334, NULL, 'গাবতলি', 0, 0),
(2028, 334, NULL, 'মহিষাবান', 0, 0),
(2029, 334, NULL, 'নশিপুর', 0, 0),
(2030, 331, NULL, '৫নং মির্জাপুর', 0, 0),
(2031, 331, NULL, '৩নং খামারকান্দি', 0, 0),
(2032, 331, NULL, '২নং গাড়িদহ', 0, 0),
(2033, 331, NULL, '১নং কুসুম্বী', 0, 0),
(2034, 331, NULL, '৬নং বিশালপুর', 0, 0),
(2035, 331, NULL, '৯নং সীমাবাড়ি', 0, 0),
(2036, 331, NULL, '১০নং শাহবন্দেগী', 0, 0),
(2037, 331, NULL, '৮নং সুঘাট', 0, 0),
(2038, 331, NULL, '৪নং খানপুর', 0, 0),
(2039, 331, NULL, '৭নং ভবানীপুর', 0, 0),
(2040, 339, NULL, '১নং ময়দানহাট্টা', 0, 0),
(2041, 339, NULL, '২নং কিচক ইউনিয়ন', 0, 0),
(2042, 339, NULL, '৩নং আটমূল', 0, 0),
(2043, 339, NULL, '৪নং পিরব', 0, 0),
(2044, 339, NULL, '৫নং মাঝিহট্ট', 0, 0),
(2045, 339, NULL, '৬নং বুড়িগঞ্জ', 0, 0),
(2046, 339, NULL, '৭নং বিহার', 0, 0),
(2047, 339, NULL, '৮নং শিবগঞ্জ', 0, 0),
(2048, 339, NULL, '৯নং দেউলি', 0, 0),
(2049, 339, NULL, '১০নং সৈয়দপুর', 0, 0),
(2050, 339, NULL, '১১নং মোকামতলা ইউনিয়ন', 0, 0),
(2051, 339, NULL, '১২নং রায়নগর', 0, 0),
(2052, 383, NULL, '০১ নং দর্শনপাড়া ইউনিয়ন', 0, 0),
(2053, 383, NULL, '০২ নং হুজুরী পাড়া ইউনিয়ন', 0, 0),
(2054, 383, NULL, '০৩ নং দামকুড়া ইউনিয়ন', 0, 0),
(2055, 383, NULL, '০৪ নং হরিপুর ইউনিয়ন', 0, 0),
(2056, 383, NULL, '০৫ নং হড়গ্রাম ইউনিয়ন', 0, 0),
(2057, 383, NULL, '০৬ নং হরিয়ান ইউনিয়ন', 0, 0),
(2058, 383, NULL, '০৭ নং বড়্গাছি ইউনিয়ন', 0, 0),
(2059, 383, NULL, '০৮ নং পারিলা ইউনিয়ন', 0, 0),
(2060, 380, NULL, '০১ নং নওপাড়া ইউনিয়ন', 0, 0),
(2061, 380, NULL, '০২ নং কিসমতগণকৈড় ইউনিয়ন', 0, 0),
(2062, 380, NULL, '০৩ নং পানানগর ইউনিয়ন', 0, 0),
(2063, 380, NULL, '০৪ নং দেলুয়াবাড়ী ইউনিয়ন', 0, 0),
(2064, 380, NULL, '০৫ নং ঝালুকা ইউনিয়ন', 0, 0),
(2065, 380, NULL, '০৬ নং মাড়িয়া ইউনিয়ন', 0, 0),
(2066, 380, NULL, '০৭ নং জয়নগর ইউনিয়ন', 0, 0),
(2067, 382, NULL, '০১ নং ধুরইল ইউনিয়ন', 0, 0),
(2068, 382, NULL, '০২ নং ঘষিগ্রাম ইউনিয়ন', 0, 0),
(2069, 382, NULL, '০৩ নং রায়ঘাটি ইউনিয়ন', 0, 0),
(2070, 382, NULL, '০৪ নং মৌগাছি ইউনিয়ন', 0, 0),
(2071, 382, NULL, '০৫ নং বাকশিমইল ইউনিয়ন', 0, 0),
(2072, 382, NULL, '০৬ নং জাহানাবাদ ইউনিয়ন', 0, 0),
(2073, 379, NULL, '০১ নং ইউসুফপুর ইউনিয়ন', 0, 0),
(2074, 379, NULL, '০২ নং শলুয়া ইউনিয়ন', 0, 0),
(2075, 379, NULL, '০৩ নং সরদহ ইউনিয়ন', 0, 0),
(2076, 379, NULL, '০৪ নং নিমপাড়া ইউনিয়ন', 0, 0),
(2077, 379, NULL, '০৫ নং চারঘাট ইউনিয়ন', 0, 0),
(2078, 379, NULL, '০৬ নং ভায়ালক্ষ্মীপুর ইউনিয়ন', 0, 0),
(2079, 384, NULL, '০১ নং পুঠিয়া ইউনিয়ন', 0, 0),
(2080, 384, NULL, '০২ নং বেলপুকুরিয়া ইউনিয়ন', 0, 0),
(2081, 384, NULL, '০৩ নং বানেশ্বর ইউনিয়ন', 0, 0),
(2082, 384, NULL, '০৪ নং ভালুক গাছি ইউনিয়ন', 0, 0),
(2083, 384, NULL, '০৫ নং শিলমাড়িয়া ইউনিয়ন', 0, 0),
(2084, 384, NULL, '০৬ নং জিউপাড়া ইউনিয়ন', 0, 0),
(2085, 377, NULL, '০১ নং বাজুবাঘা ইউনিয়ন', 0, 0),
(2086, 377, NULL, '০২ নং গড়গড়ি ইউনিয়ন', 0, 0),
(2087, 377, NULL, '০৩ নং পাকুড়িয়া ইউনিয়ন', 0, 0),
(2088, 377, NULL, '০৪ নং মনিগ্রাম ইউনিয়ন', 0, 0),
(2089, 377, NULL, '০৫ নং বাউসা ইউনিয়ন', 0, 0),
(2090, 377, NULL, '০৬ নং আড়ানী', 0, 0),
(2091, 381, NULL, '০১ নং গোদাগাড়ী ইউনিয়ন', 0, 0),
(2092, 381, NULL, '০২ নং মোহনপুর ইউনিয়ন', 0, 0),
(2093, 381, NULL, '০৩ নং পাকড়ী ইউনিয়ন', 0, 0),
(2094, 381, NULL, '০৪ নং রিশিকুল ইউনিয়ন', 0, 0),
(2095, 381, NULL, '০৫ নং গোগ্রাম ইউনিয়ন', 0, 0),
(2096, 381, NULL, '০৬ নং মাটিকাটা ইউনিয়ন', 0, 0),
(2097, 381, NULL, '০৭ নং দেওপাড়া ইউনিয়ন', 0, 0),
(2098, 381, NULL, '০৮ নং বাসুদেবপুর ইউনিয়ন', 0, 0),
(2099, 381, NULL, '০৯ নং আষাড়িয়াদহ ইউনিয়ন', 0, 0),
(2100, 385, NULL, '০১ নং কলমা ইউনিয়ন', 0, 0),
(2101, 385, NULL, '০২ নং বাধাইড় ইউনিয়ন', 0, 0),
(2102, 385, NULL, '০৩ নং পাঁচন্দর ইউনিয়ন', 0, 0),
(2103, 385, NULL, '০৪ নং সরঞ্জাই ইউনিয়ন', 0, 0),
(2104, 385, NULL, '০৫ নং তালন্দ ইউনিয়ন', 0, 0),
(2105, 385, NULL, '০৬ নং কামারগাঁ ইউনিয়ন', 0, 0),
(2106, 385, NULL, '০৭ নং চান্দুড়িয়া ইউনিয়ন', 0, 0),
(2107, 378, NULL, '০১ নং গোবিন্দপাড়া ইউনিয়ন', 0, 0),
(2108, 378, NULL, '০২ নং নরদাস ইউনিয়ন', 0, 0),
(2109, 378, NULL, '০৩ নং দ্বীপপুর ইউনিয়ন', 0, 0),
(2110, 378, NULL, '০৪ নং বড়বিহানলী ইউনিয়ন', 0, 0),
(2111, 378, NULL, '০৫ নং আউচপাড়া ইউনিয়ন', 0, 0),
(2112, 378, NULL, '০৬ নং শ্রীপুর ইউনিয়ন', 0, 0),
(2113, 378, NULL, '০৭ নং বাসুপাড়া ইউনিয়ন', 0, 0),
(2114, 378, NULL, '০৮ নং কাচাড়ী কোয়লিপাড়া ইউনিয়ন', 0, 0),
(2115, 378, NULL, '০৯ নং শুভডাঙ্গা ইউনিয়ন', 0, 0),
(2116, 378, NULL, '১০ নং মাড়িয়া ইউনিয়ন', 0, 0),
(2117, 378, NULL, '১১ নং গণিপুর ইউনিয়ন', 0, 0),
(2118, 378, NULL, '১২ নং ঝিকড়া ইউনিয়ন', 0, 0),
(2119, 378, NULL, '১৩ নং গোয়ালকান্দি ইউনিয়ন', 0, 0),
(2120, 378, NULL, '১৪ নং হামিরকুৎসা ইউনিয়ন', 0, 0),
(2121, 378, NULL, '১৫ নং যোগিপাড়া ইউনিয়ন', 0, 0),
(2122, 378, NULL, '১৬ নং সোনাডাঙ্গা ইউনিয়ন', 0, 0),
(2123, 357, NULL, '১ নং ব্রহ্মপুর ইউনিয়ন', 0, 0),
(2124, 357, NULL, '০২ নং মাধনগর ইউনিয়ন', 0, 0),
(2125, 357, NULL, '০৩ নং খাজুরা ইউনিয়ন', 0, 0),
(2126, 357, NULL, '০৪ নং পিপরুল ইউনিয়ন', 0, 0),
(2127, 357, NULL, '০৫ নং বিপ্রবেলঘড়িয়া ইউনিয়ন', 0, 0),
(2128, 357, NULL, '০৬ নং ছাতনী ইউনিয়ন', 0, 0),
(2129, 357, NULL, '০৭ নং তেবাড়িয়া ইউনিয়ন', 0, 0),
(2130, 357, NULL, '০৮ নং দিঘাপতিয়া ইউনিয়ন', 0, 0),
(2131, 357, NULL, '০৯ নং লক্ষীপুর খোলাবাড়িয়া ইউনিয়ন', 0, 0),
(2132, 357, NULL, '১০ নং বড়হরিশপুর ইউনিয়ন', 0, 0),
(2133, 357, NULL, '১১ নং কাফুরিয়া ইউনিয়ন', 0, 0),
(2134, 357, NULL, '১২ নং হালসা ইউনিয়ন', 0, 0),
(2135, 361, NULL, '০১ নং শুকাশ ইউনিয়ন', 0, 0),
(2136, 361, NULL, '০২ নং ডাহিয়া ইউনিয়ন', 0, 0),
(2137, 361, NULL, '০৩ নং ইটালী ইউনিয়ন', 0, 0),
(2138, 361, NULL, '০৪ নং কলম ইউনিয়ন', 0, 0),
(2139, 361, NULL, '০৫ নং চামারী ইউনিয়ন', 0, 0),
(2140, 361, NULL, '০৬ নং হাতিয়ানদহ ইউনিয়ন', 0, 0),
(2141, 361, NULL, '০৭ নং লালোর ইউনিয়ন', 0, 0),
(2142, 361, NULL, '০৮ নং শেরকোল ইউনিয়ন', 0, 0),
(2143, 361, NULL, '০৯ নং তাজপুর ইউনিয়ন', 0, 0),
(2144, 361, NULL, '১০ নং চৌগ্রাম ইউনিয়ন', 0, 0),
(2145, 361, NULL, '১১ নং ছাতারদিঘী ইউনিয়ন', 0, 0),
(2146, 361, NULL, '১২ নং রামান্দখাজুরা ইউনিয়ন', 0, 0),
(2147, 362, NULL, '০১ নং জোয়াড়ী ইউনিয়ন', 0, 0),
(2148, 362, NULL, '০২ নং বড়াইগ্রাম ইউনিয়ন', 0, 0),
(2149, 362, NULL, '০৩ নং জোনাইল ইউনিয়ন', 0, 0),
(2150, 362, NULL, '০৪ নং নগর ইউনিয়ন', 0, 0),
(2151, 362, NULL, '০৫ নং মাঝগাও ইউনিয়ন', 0, 0),
(2152, 362, NULL, '০৬ নং গোপালপুর ইউনিয়ন', 0, 0),
(2153, 362, NULL, '০৭ নং চান্দাই ইউনিয়ন', 0, 0),
(2154, 359, NULL, '০১ নং পাঁকা ইউনিয়ন', 0, 0),
(2155, 359, NULL, '০২ নং জামনগর ইউনিয়ন', 0, 0),
(2156, 359, NULL, '০৩ নং বাগাতিপাড়া ইউনিয়ন', 0, 0),
(2157, 359, NULL, '০৪ নং দয়ারামপুর ইউনিয়ন', 0, 0),
(2158, 359, NULL, '০৫ নং ফাগুয়ারদিয়াড় ইউনিয়ন', 0, 0),
(2159, 360, NULL, '০১ নং লালপুর ইউনিয়ন', 0, 0),
(2160, 360, NULL, '০২ নং ঈশ্বরদী ইউনিয়ন', 0, 0),
(2161, 360, NULL, '০৩ নং চংধুপইল ইউনিয়ন', 0, 0),
(2162, 360, NULL, '০৪ নং আড়বাব ইউনিয়ন', 0, 0),
(2163, 360, NULL, '০৫ নং বিলমাড়িয়া ইউনিয়ন', 0, 0),
(2164, 360, NULL, '০৬ নং দুয়ারিয়া ইউনিয়ন', 0, 0),
(2165, 360, NULL, '০৭ নং ওয়ালিয়া ইউনিয়ন', 0, 0),
(2166, 360, NULL, '০৮ নং দুড়দুরিয়া ইউনিয়ন', 0, 0),
(2167, 360, NULL, '০৯ নং অর্জুনপুর বরমহাটী ইউনিয়ন', 0, 0),
(2168, 360, NULL, '১০ নং কদিমচিলান ইউনিয়ন', 0, 0),
(2169, 362, NULL, '০১ নং নাজিরপুর ইউনিয়ন', 0, 0),
(2170, 362, NULL, '০২ নং বিয়াঘাট ইউনিয়ন', 0, 0),
(2171, 362, NULL, '০৩ নং খুবজীপুর ইউনিয়ন', 0, 0),
(2172, 362, NULL, '০৫ নং ধারাবারিষা ইউনিয়ন', 0, 0),
(2173, 362, NULL, '০৪ নং মসিন্দা ইউনিয়ন', 0, 0),
(2174, 362, NULL, '০৬ নং চাপিলা ইউনিয়ন', 0, 0),
(2175, 342, NULL, 'রুকিন্দীপুর ইউনিয়ন', 0, 0),
(2176, 342, NULL, 'সোনামূখী ইউনিয়ন', 0, 0),
(2177, 342, NULL, 'তিলকপুর ইউনিয়ন', 0, 0),
(2178, 342, NULL, 'রায়কালী ইউনিয়ন', 0, 0),
(2179, 342, NULL, 'গোপীনাথপুর ইউনিয়ন', 0, 0),
(2180, 343, NULL, 'মাত্রাই ইউনিয়ন', 0, 0),
(2181, 343, NULL, 'আহম্মেদাবাদ ইউনিয়ন', 0, 0),
(2182, 343, NULL, 'পুনট ইউনিয়ন', 0, 0),
(2183, 343, NULL, 'জিন্দারপুর', 0, 0),
(2184, 343, NULL, 'উদয়পুর', 0, 0),
(2185, 344, NULL, 'আলমপুর ইউনিয়ন', 0, 0),
(2186, 344, NULL, 'বড়াইল ইউনিয়ন', 0, 0),
(2187, 344, NULL, 'তুলশীগংগা ইউনিয়ন', 0, 0),
(2188, 344, NULL, 'মামুদপুর ইউনিয়ন', 0, 0),
(2189, 344, NULL, 'বড়তারা ইউনিয়ন', 0, 0),
(2190, 345, NULL, 'বাগজানা ইউনিয়ন', 0, 0),
(2191, 345, NULL, 'ধরঞ্জি', 0, 0),
(2192, 345, NULL, 'আয়মারসুলপুর ইউনিয়ন', 0, 0),
(2193, 345, NULL, 'বালিঘাটা ইউনিয়ন', 0, 0),
(2194, 345, NULL, 'আটাপুর ইউনিয়ন', 0, 0),
(2195, 345, NULL, 'মোহাম্মদপুর ইউনিয়ন', 0, 0),
(2196, 345, NULL, 'আওলাই', 0, 0),
(2197, 345, NULL, 'কুসুম্বা', 0, 0),
(2198, 341, NULL, 'আমদই ইউনিয়ন', 0, 0),
(2199, 341, NULL, 'বম্বু ইউনিয়ন', 0, 0),
(2200, 341, NULL, 'দোগাছি ইউনিয়ন', 0, 0),
(2201, 341, NULL, 'পুরানাপৈল ইউনিয়ন', 0, 0),
(2202, 341, NULL, 'জামালপুর ইউনিয়ন', 0, 0),
(2203, 341, NULL, 'চকবরকত ইউনিয়ন', 0, 0),
(2204, 341, NULL, 'মোহাম্মদাবাদ ইউনিয়ন', 0, 0),
(2205, 341, NULL, 'ধলাহার ইউনিয়ন', 0, 0),
(2206, 341, NULL, 'ভাদসা', 0, 0),
(2207, 366, NULL, 'আলাতুলী', 0, 0),
(2208, 366, NULL, 'বারঘরিয়া', 0, 0),
(2209, 366, NULL, 'মহারাজপুর', 0, 0),
(2210, 366, NULL, 'রানীহাটি', 0, 0),
(2211, 366, NULL, 'বালিয়াডাঙ্গা', 0, 0),
(2212, 366, NULL, 'গোবরাতলা', 0, 0),
(2213, 366, NULL, 'ঝিলিম', 0, 0),
(2214, 366, NULL, 'চরঅনুপনগর', 0, 0),
(2215, 366, NULL, 'দেবীনগর', 0, 0),
(2216, 366, NULL, 'শাহজাহানপুর', 0, 0),
(2217, 366, NULL, 'ইসলামপুর', 0, 0),
(2218, 366, NULL, 'চরবাগডাঙ্গা', 0, 0),
(2219, 366, NULL, 'নারায়নপুর', 0, 0),
(2220, 366, NULL, 'সুন্দরপুর', 0, 0),
(2221, 364, NULL, 'রাধানগর', 0, 0),
(2222, 364, NULL, 'রহনপুর', 0, 0),
(2223, 364, NULL, 'বোয়ালিয়া', 0, 0),
(2224, 364, NULL, 'বাঙ্গাবাড়ী', 0, 0),
(2225, 364, NULL, 'পার্বতীপুর', 0, 0),
(2226, 364, NULL, 'চৌডালা', 0, 0),
(2227, 364, NULL, 'গোমস্তাপুর', 0, 0),
(2228, 364, NULL, 'আলীনগর', 0, 0),
(2229, 365, NULL, 'ফতেপুর', 0, 0),
(2230, 365, NULL, 'কসবা', 0, 0),
(2231, 365, NULL, 'নেজামপুর', 0, 0),
(2232, 365, NULL, 'নাচোল', 0, 0),
(2233, 363, NULL, 'ভোলাহাট', 0, 0),
(2234, 363, NULL, 'জামবাড়িয়া', 0, 0),
(2235, 363, NULL, 'গোহালবাড়ী', 0, 0),
(2236, 363, NULL, 'দলদলী', 0, 0),
(2237, 367, NULL, 'বিনোদপুর', 0, 0),
(2238, 367, NULL, 'চককির্তী', 0, 0),
(2239, 367, NULL, 'দাইপুকুরিয়া', 0, 0),
(2240, 367, NULL, 'ধাইনগর', 0, 0),
(2241, 367, NULL, 'দুর্লভপুর', 0, 0),
(2242, 367, NULL, 'ঘোড়াপাখিয়া', 0, 0),
(2243, 367, NULL, 'মোবারকপুর', 0, 0),
(2244, 367, NULL, 'মনাকষা', 0, 0),
(2245, 367, NULL, 'নয়ালাভাঙ্গা', 0, 0),
(2246, 367, NULL, 'পাঁকা', 0, 0),
(2247, 367, NULL, 'ছত্রাজিতপুর', 0, 0),
(2248, 367, NULL, 'শাহাবাজপুর', 0, 0),
(2249, 367, NULL, 'শ্যামপুর', 0, 0),
(2250, 367, NULL, 'কানসাট', 0, 0),
(2251, 367, NULL, 'উজিরপুর', 0, 0),
(2252, 347, NULL, 'মহাদেবপুর ইউনিয়ন', 0, 0),
(2253, 347, NULL, 'হাতুড়', 0, 0),
(2254, 347, NULL, 'খাজুর ইউনিয়ন', 0, 0),
(2255, 347, NULL, 'চাঁন্দাশ', 0, 0),
(2256, 347, NULL, 'এনায়েতপুর', 0, 0),
(2257, 347, NULL, 'সফাপুর', 0, 0),
(2258, 347, NULL, 'উত্তরগ্রাম', 0, 0),
(2259, 347, NULL, 'চেরাগপুর', 0, 0),
(2260, 347, NULL, 'ভীমপুর', 0, 0),
(2261, 347, NULL, 'রাইগাঁ', 0, 0),
(2262, 356, NULL, 'বদলগাছী ইউনিয়ন', 0, 0),
(2263, 356, NULL, 'মথুরাপুর ইউনিয়ন', 0, 0),
(2264, 356, NULL, 'পাহারপুর ইউনিয়ন', 0, 0),
(2265, 356, NULL, 'মিঠাপুর ইউনিয়ন', 0, 0),
(2266, 356, NULL, 'কোলা ইউনিয়ন', 0, 0),
(2267, 356, NULL, 'বিলাশবাড়ী ইউনিয়ন', 0, 0),
(2268, 356, NULL, 'আধাইপুর ইউনিয়ন', 0, 0),
(2269, 356, NULL, 'বালুভরা ইউনিয়ন', 0, 0),
(2270, 352, NULL, 'পত্নীতলা ইউনিয়ন', 0, 0),
(2271, 352, NULL, 'নিমইল ইউনিয়ন', 0, 0),
(2272, 352, NULL, 'দিবর ইউনিয়ন', 0, 0),
(2273, 352, NULL, 'আকবরপুর ইউনিয়ন', 0, 0),
(2274, 352, NULL, 'মাটিন্দর ইউনিয়ন', 0, 0),
(2275, 352, NULL, 'কৃষ্ণপুর ইউনিয়ন', 0, 0),
(2276, 352, NULL, 'পাটিচড়া ইউনিয়ন', 0, 0),
(2277, 352, NULL, 'নজিপুর ইউনিয়ন', 0, 0),
(2278, 352, NULL, 'ঘষনগর ইউনিয়ন', 0, 0),
(2279, 352, NULL, 'আমাইড় ইউনিয়ন', 0, 0),
(2280, 352, NULL, 'শিহারা ইউনিয়ন', 0, 0),
(2281, 353, NULL, 'ধামইরহাট', 0, 0),
(2282, 353, NULL, 'আলমপুর', 0, 0),
(2283, 353, NULL, 'উমার ইউনিয়ন', 0, 0),
(2284, 353, NULL, 'আড়ানগর', 0, 0),
(2285, 353, NULL, 'জাহানপুর', 0, 0),
(2286, 353, NULL, 'ইসবপুর', 0, 0),
(2287, 353, NULL, 'খেলনা', 0, 0),
(2288, 353, NULL, 'আগ্রাদ্বিগুন', 0, 0),
(2289, 349, NULL, 'হাজীনগর ইউনিয়ন', 0, 0),
(2290, 349, NULL, 'চন্দননগর ইউনিয়ন', 0, 0),
(2291, 349, NULL, 'ভাবিচা ইউনিয়ন', 0, 0),
(2292, 349, NULL, 'নিয়ামতপুর ইউনিয়ন', 0, 0),
(2293, 349, NULL, 'রসুলপুর ইউনিয়ন', 0, 0),
(2294, 349, NULL, 'পাড়ইল ইউনিয়ন', 0, 0),
(2295, 349, NULL, 'শ্রীমন্তপুর', 0, 0),
(2296, 349, NULL, 'বাহাদুরপুর', 0, 0),
(2297, 348, NULL, 'ভারশো', 0, 0),
(2298, 348, NULL, 'ভালাইন', 0, 0),
(2299, 348, NULL, 'পরানপুর', 0, 0),
(2300, 348, NULL, 'মান্দা', 0, 0),
(2301, 348, NULL, 'গনেশপুর', 0, 0),
(2302, 348, NULL, 'মৈনম', 0, 0),
(2303, 348, NULL, 'প্রসাদপুর ইউনিয়ন', 0, 0),
(2304, 348, NULL, 'কুসুম্বা', 0, 0),
(2305, 348, NULL, 'তেঁতুলিয়া', 0, 0),
(2306, 348, NULL, 'নূরুল্যাবাদ', 0, 0),
(2307, 348, NULL, 'কালিকাপুর', 0, 0),
(2308, 348, NULL, 'কাঁশোকাপুর', 0, 0),
(2309, 348, NULL, 'কশব ইউনিয়ন', 0, 0),
(2310, 348, NULL, 'বিষ্ণপুর', 0, 0),
(2311, 350, NULL, 'শাহাগোলা', 0, 0),
(2312, 350, NULL, 'ভোঁপড়া', 0, 0),
(2313, 350, NULL, 'আহসানগঞ্জ', 0, 0),
(2314, 350, NULL, 'পাঁচুপুর', 0, 0),
(2315, 350, NULL, 'বিশা', 0, 0),
(2316, 350, NULL, 'মনিয়ারী', 0, 0),
(2317, 350, NULL, 'কালিকাপুর', 0, 0),
(2318, 350, NULL, 'হাটকালুপাড়া', 0, 0),
(2319, 351, NULL, 'খট্টেশ্বর রাণীনগর', 0, 0),
(2320, 351, NULL, 'কাশিমপুর', 0, 0),
(2321, 351, NULL, 'গোনা', 0, 0),
(2322, 351, NULL, 'পারইল', 0, 0),
(2323, 351, NULL, 'বরগাছা', 0, 0),
(2324, 351, NULL, 'কালিগ্রাম', 0, 0),
(2325, 351, NULL, 'একডালা', 0, 0),
(2326, 351, NULL, 'মিরাট', 0, 0),
(2327, 346, NULL, 'বর্ষাইল', 0, 0),
(2328, 346, NULL, 'কির্ত্তিপুর', 0, 0),
(2329, 346, NULL, 'বক্তারপুর ইউনিয়ন', 0, 0),
(2330, 346, NULL, 'তিলোকপুর', 0, 0),
(2331, 346, NULL, 'হাপানিয়া', 0, 0),
(2332, 346, NULL, 'দুবলহাটী ইউনিয়ন', 0, 0),
(2333, 346, NULL, 'বোয়ালিয়া ইউনিয়ন', 0, 0),
(2334, 346, NULL, 'হাঁসাইগাড়ী', 0, 0),
(2335, 346, NULL, 'চন্ডিপুর', 0, 0),
(2336, 346, NULL, 'বলিহার', 0, 0),
(2337, 346, NULL, 'শিকারপুর', 0, 0),
(2338, 346, NULL, 'শৈলগাছী', 0, 0),
(2339, 355, NULL, 'নিতপুর ইউনিয়ন', 0, 0),
(2340, 355, NULL, 'তেঁতুলিয়া', 0, 0),
(2341, 355, NULL, 'ছাওড়', 0, 0),
(2342, 355, NULL, 'গাঙ্গুরিয়া', 0, 0),
(2343, 355, NULL, 'ঘাটনগর ইউনিয়ন', 0, 0),
(2344, 355, NULL, 'মশিদপুর', 0, 0),
(2345, 354, NULL, 'সাপাহার', 0, 0),
(2346, 354, NULL, 'তিলনা', 0, 0),
(2347, 354, NULL, 'আইহাই', 0, 0),
(2348, 354, NULL, 'শিরন্টী', 0, 0),
(2349, 354, NULL, 'গোয়ালা', 0, 0),
(2350, 354, NULL, 'পাতাড়ী', 0, 0),
(2351, 493, NULL, 'ইসলামপুর-০১', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `upazilas`
--

CREATE TABLE `upazilas` (
  `id` int(2) UNSIGNED NOT NULL,
  `district_id` int(2) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `bn_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `upazilas`
--

INSERT INTO `upazilas` (`id`, `district_id`, `name`, `bn_name`) VALUES
(1, 34, 'Amtali Upazila', 'আমতলী'),
(2, 34, 'Bamna Upazila', 'বামনা'),
(3, 34, 'Barguna Sadar Upazila', 'বরগুনা সদর'),
(4, 34, 'Betagi Upazila', 'বেতাগি'),
(5, 34, 'Patharghata Upazila', 'পাথরঘাটা'),
(6, 34, 'Taltali Upazila', 'তালতলী'),
(7, 35, 'Muladi Upazila', 'মুলাদি'),
(8, 35, 'Babuganj Upazila', 'বাবুগঞ্জ'),
(9, 35, 'Agailjhara Upazila', 'আগাইলঝরা'),
(10, 35, 'Barisal Sadar Upazila', 'বরিশাল সদর'),
(11, 35, 'Bakerganj Upazila', 'বাকেরগঞ্জ'),
(12, 35, 'Banaripara Upazila', 'বানাড়িপারা'),
(13, 35, 'Gaurnadi Upazila', 'গৌরনদী'),
(14, 35, 'Hizla Upazila', 'হিজলা'),
(15, 35, 'Mehendiganj Upazila', 'মেহেদিগঞ্জ '),
(16, 35, 'Wazirpur Upazila', 'ওয়াজিরপুর'),
(17, 36, 'Bhola Sadar Upazila', 'ভোলা সদর'),
(18, 36, 'Burhanuddin Upazila', 'বুরহানউদ্দিন'),
(19, 36, 'Char Fasson Upazila', 'চর ফ্যাশন'),
(20, 36, 'Daulatkhan Upazila', 'দৌলতখান'),
(21, 36, 'Lalmohan Upazila', 'লালমোহন'),
(22, 36, 'Manpura Upazila', 'মনপুরা'),
(23, 36, 'Tazumuddin Upazila', 'তাজুমুদ্দিন'),
(24, 37, 'Jhalokati Sadar Upazila', 'ঝালকাঠি সদর'),
(25, 37, 'Kathalia Upazila', 'কাঁঠালিয়া'),
(26, 37, 'Nalchity Upazila', 'নালচিতি'),
(27, 37, 'Rajapur Upazila', 'রাজাপুর'),
(28, 38, 'Bauphal Upazila', 'বাউফল'),
(29, 38, 'Dashmina Upazila', 'দশমিনা'),
(30, 38, 'Galachipa Upazila', 'গলাচিপা'),
(31, 38, 'Kalapara Upazila', 'কালাপারা'),
(32, 38, 'Mirzaganj Upazila', 'মির্জাগঞ্জ '),
(33, 38, 'Patuakhali Sadar Upazila', 'পটুয়াখালী সদর'),
(34, 38, 'Dumki Upazila', 'ডুমকি'),
(35, 38, 'Rangabali Upazila', 'রাঙ্গাবালি'),
(36, 39, 'Bhandaria', 'ভ্যান্ডারিয়া'),
(37, 39, 'Kaukhali', 'কাউখালি'),
(38, 39, 'Mathbaria', 'মাঠবাড়িয়া'),
(39, 39, 'Nazirpur', 'নাজিরপুর'),
(40, 39, 'Nesarabad', 'নেসারাবাদ'),
(41, 39, 'Pirojpur Sadar', 'পিরোজপুর সদর'),
(42, 39, 'Zianagar', 'জিয়ানগর'),
(43, 40, 'Bandarban Sadar', 'বান্দরবন সদর'),
(44, 40, 'Thanchi', 'থানচি'),
(45, 40, 'Lama', 'লামা'),
(46, 40, 'Naikhongchhari', 'নাইখংছড়ি '),
(47, 40, 'Ali kadam', 'আলী কদম'),
(48, 40, 'Rowangchhari', 'রউয়াংছড়ি '),
(49, 40, 'Ruma', 'রুমা'),
(50, 41, 'Brahmanbaria Sadar Upazila', 'ব্রাহ্মণবাড়িয়া সদর'),
(51, 41, 'Ashuganj Upazila', 'আশুগঞ্জ'),
(52, 41, 'Nasirnagar Upazila', 'নাসির নগর'),
(53, 41, 'Nabinagar Upazila', 'নবীনগর'),
(54, 41, 'Sarail Upazila', 'সরাইল'),
(55, 41, 'Shahbazpur Town', 'শাহবাজপুর টাউন'),
(56, 41, 'Kasba Upazila', 'কসবা'),
(57, 41, 'Akhaura Upazila', 'আখাউরা'),
(58, 41, 'Bancharampur Upazila', 'বাঞ্ছারামপুর'),
(59, 41, 'Bijoynagar Upazila', 'বিজয় নগর'),
(60, 42, 'Chandpur Sadar', 'চাঁদপুর সদর'),
(61, 42, 'Faridganj', 'ফরিদগঞ্জ'),
(62, 42, 'Haimchar', 'হাইমচর'),
(63, 42, 'Haziganj', 'হাজীগঞ্জ'),
(64, 42, 'Kachua', 'কচুয়া'),
(65, 42, 'Matlab Uttar', 'মতলব উত্তর'),
(66, 42, 'Matlab Dakkhin', 'মতলব দক্ষিণ'),
(67, 42, 'Shahrasti', 'শাহরাস্তি'),
(68, 43, 'Anwara Upazila', 'আনোয়ারা'),
(69, 43, 'Banshkhali Upazila', 'বাশখালি'),
(70, 43, 'Boalkhali Upazila', 'বোয়ালখালি'),
(71, 43, 'Chandanaish Upazila', 'চন্দনাইশ'),
(72, 43, 'Fatikchhari Upazila', 'ফটিকছড়ি'),
(73, 43, 'Hathazari Upazila', 'হাঠহাজারী'),
(74, 43, 'Lohagara Upazila', 'লোহাগারা'),
(75, 43, 'Mirsharai Upazila', 'মিরসরাই'),
(76, 43, 'Patiya Upazila', 'পটিয়া'),
(77, 43, 'Rangunia Upazila', 'রাঙ্গুনিয়া'),
(78, 43, 'Raozan Upazila', 'রাউজান'),
(79, 43, 'Sandwip Upazila', 'সন্দ্বীপ'),
(80, 43, 'Satkania Upazila', 'সাতকানিয়া'),
(81, 43, 'Sitakunda Upazila', 'সীতাকুণ্ড'),
(82, 44, 'Barura Upazila', 'বড়ুরা'),
(83, 44, 'Brahmanpara Upazila', 'ব্রাহ্মণপাড়া'),
(84, 44, 'Burichong Upazila', 'বুড়িচং'),
(85, 44, 'Chandina Upazila', 'চান্দিনা'),
(86, 44, 'Chauddagram Upazila', 'চৌদ্দগ্রাম'),
(87, 44, 'Daudkandi Upazila', 'দাউদকান্দি'),
(88, 44, 'Debidwar Upazila', 'দেবীদ্বার'),
(89, 44, 'Homna Upazila', 'হোমনা'),
(90, 44, 'Comilla Sadar Upazila', 'কুমিল্লা সদর'),
(91, 44, 'Laksam Upazila', 'লাকসাম'),
(92, 44, 'Monohorgonj Upazila', 'মনোহরগঞ্জ'),
(93, 44, 'Meghna Upazila', 'মেঘনা'),
(94, 44, 'Muradnagar Upazila', 'মুরাদনগর'),
(95, 44, 'Nangalkot Upazila', 'নাঙ্গালকোট'),
(96, 44, 'Comilla Sadar South Upazila', 'কুমিল্লা সদর দক্ষিণ'),
(97, 44, 'Titas Upazila', 'তিতাস'),
(98, 45, 'Chakaria Upazila', 'চকরিয়া'),
(100, 45, 'Cox\'s Bazar Sadar Upazila', 'কক্স বাজার সদর'),
(101, 45, 'Kutubdia Upazila', 'কুতুবদিয়া'),
(102, 45, 'Maheshkhali Upazila', 'মহেশখালী'),
(103, 45, 'Ramu Upazila', 'রামু'),
(104, 45, 'Teknaf Upazila', 'টেকনাফ'),
(105, 45, 'Ukhia Upazila', 'উখিয়া'),
(106, 45, 'Pekua Upazila', 'পেকুয়া'),
(107, 46, 'Feni Sadar', 'ফেনী সদর'),
(108, 46, 'Chagalnaiya', 'ছাগল নাইয়া'),
(109, 46, 'Daganbhyan', 'দাগানভিয়া'),
(110, 46, 'Parshuram', 'পরশুরাম'),
(111, 46, 'Fhulgazi', 'ফুলগাজি'),
(112, 46, 'Sonagazi', 'সোনাগাজি'),
(113, 47, 'Dighinala Upazila', 'দিঘিনালা '),
(114, 47, 'Khagrachhari Upazila', 'খাগড়াছড়ি'),
(115, 47, 'Lakshmichhari Upazila', 'লক্ষ্মীছড়ি'),
(116, 47, 'Mahalchhari Upazila', 'মহলছড়ি'),
(117, 47, 'Manikchhari Upazila', 'মানিকছড়ি'),
(118, 47, 'Matiranga Upazila', 'মাটিরাঙ্গা'),
(119, 47, 'Panchhari Upazila', 'পানছড়ি'),
(120, 47, 'Ramgarh Upazila', 'রামগড়'),
(121, 48, 'Lakshmipur Sadar Upazila', 'লক্ষ্মীপুর সদর'),
(122, 48, 'Raipur Upazila', 'রায়পুর'),
(123, 48, 'Ramganj Upazila', 'রামগঞ্জ'),
(124, 48, 'Ramgati Upazila', 'রামগতি'),
(125, 48, 'Komol Nagar Upazila', 'কমল নগর'),
(126, 49, 'Noakhali Sadar Upazila', 'নোয়াখালী সদর'),
(127, 49, 'Begumganj Upazila', 'বেগমগঞ্জ'),
(128, 49, 'Chatkhil Upazila', 'চাটখিল'),
(129, 49, 'Companyganj Upazila', 'কোম্পানীগঞ্জ'),
(130, 49, 'Shenbag Upazila', 'শেনবাগ'),
(131, 49, 'Hatia Upazila', 'হাতিয়া'),
(132, 49, 'Kobirhat Upazila', 'কবিরহাট '),
(133, 49, 'Sonaimuri Upazila', 'সোনাইমুরি'),
(134, 49, 'Suborno Char Upazila', 'সুবর্ণ চর '),
(135, 50, 'Rangamati Sadar Upazila', 'রাঙ্গামাটি সদর'),
(136, 50, 'Belaichhari Upazila', 'বেলাইছড়ি'),
(137, 50, 'Bagaichhari Upazila', 'বাঘাইছড়ি'),
(138, 50, 'Barkal Upazila', 'বরকল'),
(139, 50, 'Juraichhari Upazila', 'জুরাইছড়ি'),
(140, 50, 'Rajasthali Upazila', 'রাজাস্থলি'),
(141, 50, 'Kaptai Upazila', 'কাপ্তাই'),
(142, 50, 'Langadu Upazila', 'লাঙ্গাডু'),
(143, 50, 'Nannerchar Upazila', 'নান্নেরচর '),
(144, 50, 'Kaukhali Upazila', 'কাউখালি'),
(145, 1, 'Dhamrai Upazila', 'ধামরাই'),
(146, 1, 'Dohar Upazila', 'দোহার'),
(147, 1, 'Keraniganj Upazila', 'কেরানীগঞ্জ'),
(148, 1, 'Nawabganj Upazila', 'নবাবগঞ্জ'),
(149, 1, 'Savar Upazila', 'সাভার'),
(150, 2, 'Faridpur Sadar Upazila', 'ফরিদপুর সদর'),
(151, 2, 'Boalmari Upazila', 'বোয়ালমারী'),
(152, 2, 'Alfadanga Upazila', 'আলফাডাঙ্গা'),
(153, 2, 'Madhukhali Upazila', 'মধুখালি'),
(154, 2, 'Bhanga Upazila', 'ভাঙ্গা'),
(155, 2, 'Nagarkanda Upazila', 'নগরকান্ড'),
(156, 2, 'Charbhadrasan Upazila', 'চরভদ্রাসন '),
(157, 2, 'Sadarpur Upazila', 'সদরপুর'),
(158, 2, 'Shaltha Upazila', 'শালথা'),
(159, 3, 'Gazipur Sadar-Joydebpur', 'গাজীপুর সদর'),
(160, 3, 'Kaliakior', 'কালিয়াকৈর'),
(161, 3, 'Kapasia', 'কাপাসিয়া'),
(162, 3, 'Sripur', 'শ্রীপুর'),
(163, 3, 'Kaliganj', 'কালীগঞ্জ'),
(164, 3, 'Tongi', 'টঙ্গি'),
(165, 4, 'Gopalganj Sadar Upazila', 'গোপালগঞ্জ সদর'),
(166, 4, 'Kashiani Upazila', 'কাশিয়ানি'),
(167, 4, 'Kotalipara Upazila', 'কোটালিপাড়া'),
(168, 4, 'Muksudpur Upazila', 'মুকসুদপুর'),
(169, 4, 'Tungipara Upazila', 'টুঙ্গিপাড়া'),
(170, 5, 'Dewanganj Upazila', 'দেওয়ানগঞ্জ'),
(171, 5, 'Baksiganj Upazila', 'বকসিগঞ্জ'),
(172, 5, 'Islampur Upazila', 'ইসলামপুর'),
(173, 5, 'Jamalpur Sadar Upazila', 'জামালপুর সদর'),
(174, 5, 'Madarganj Upazila', 'মাদারগঞ্জ'),
(175, 5, 'Melandaha Upazila', 'মেলানদাহা'),
(176, 5, 'Sarishabari Upazila', 'সরিষাবাড়ি '),
(177, 5, 'Narundi Police I.C', 'নারুন্দি'),
(178, 6, 'Astagram Upazila', 'অষ্টগ্রাম'),
(179, 6, 'Bajitpur Upazila', 'বাজিতপুর'),
(180, 6, 'Bhairab Upazila', 'ভৈরব'),
(181, 6, 'Hossainpur Upazila', 'হোসেনপুর '),
(182, 6, 'Itna Upazila', 'ইটনা'),
(183, 6, 'Karimganj Upazila', 'করিমগঞ্জ'),
(184, 6, 'Katiadi Upazila', 'কতিয়াদি'),
(185, 6, 'Kishoreganj Sadar Upazila', 'কিশোরগঞ্জ সদর'),
(186, 6, 'Kuliarchar Upazila', 'কুলিয়ারচর'),
(187, 6, 'Mithamain Upazila', 'মিঠামাইন'),
(188, 6, 'Nikli Upazila', 'নিকলি'),
(189, 6, 'Pakundia Upazila', 'পাকুন্ডা'),
(190, 6, 'Tarail Upazila', 'তাড়াইল'),
(191, 7, 'Madaripur Sadar', 'মাদারীপুর সদর'),
(192, 7, 'Kalkini', 'কালকিনি'),
(193, 7, 'Rajoir', 'রাজইর'),
(194, 7, 'Shibchar', 'শিবচর'),
(195, 8, 'Manikganj Sadar Upazila', 'মানিকগঞ্জ সদর'),
(196, 8, 'Singair Upazila', 'সিঙ্গাইর'),
(197, 8, 'Shibalaya Upazila', 'শিবালয়'),
(198, 8, 'Saturia Upazila', 'সাঠুরিয়া'),
(199, 8, 'Harirampur Upazila', 'হরিরামপুর'),
(200, 8, 'Ghior Upazila', 'ঘিওর'),
(201, 8, 'Daulatpur Upazila', 'দৌলতপুর'),
(202, 9, 'Lohajang Upazila', 'লোহাজং'),
(203, 9, 'Sreenagar Upazila', 'শ্রীনগর'),
(204, 9, 'Munshiganj Sadar Upazila', 'মুন্সিগঞ্জ সদর'),
(205, 9, 'Sirajdikhan Upazila', 'সিরাজদিখান'),
(206, 9, 'Tongibari Upazila', 'টঙ্গিবাড়ি'),
(207, 9, 'Gazaria Upazila', 'গজারিয়া'),
(208, 10, 'Bhaluka', 'ভালুকা'),
(209, 10, 'Trishal', 'ত্রিশাল'),
(210, 10, 'Haluaghat', 'হালুয়াঘাট'),
(211, 10, 'Muktagachha', 'মুক্তাগাছা'),
(212, 10, 'Dhobaura', 'ধবারুয়া'),
(213, 10, 'Fulbaria', 'ফুলবাড়িয়া'),
(214, 10, 'Gaffargaon', 'গফরগাঁও'),
(215, 10, 'Gauripur', 'গৌরিপুর'),
(216, 10, 'Ishwarganj', 'ঈশ্বরগঞ্জ'),
(217, 10, 'Mymensingh Sadar', 'ময়মনসিং সদর'),
(218, 10, 'Nandail', 'নন্দাইল'),
(219, 10, 'Phulpur', 'ফুলপুর'),
(220, 11, 'Araihazar Upazila', 'আড়াইহাজার'),
(221, 11, 'Sonargaon Upazila', 'সোনারগাঁও'),
(222, 11, 'Bandar', 'বান্দার'),
(223, 11, 'Naryanganj Sadar Upazila', 'নারায়ানগঞ্জ সদর'),
(224, 11, 'Rupganj Upazila', 'রূপগঞ্জ'),
(225, 11, 'Siddirgonj Upazila', 'সিদ্ধিরগঞ্জ'),
(226, 12, 'Belabo Upazila', 'বেলাবো'),
(227, 12, 'Monohardi Upazila', 'মনোহরদি'),
(228, 12, 'Narsingdi Sadar Upazila', 'নরসিংদী সদর'),
(229, 12, 'Palash Upazila', 'পলাশ'),
(230, 12, 'Raipura Upazila, Narsingdi', 'রায়পুর'),
(231, 12, 'Shibpur Upazila', 'শিবপুর'),
(232, 13, 'Kendua Upazilla', 'কেন্দুয়া'),
(233, 13, 'Atpara Upazilla', 'আটপাড়া'),
(234, 13, 'Barhatta Upazilla', 'বরহাট্টা'),
(235, 13, 'Durgapur Upazilla', 'দুর্গাপুর'),
(236, 13, 'Kalmakanda Upazilla', 'কলমাকান্দা'),
(237, 13, 'Madan Upazilla', 'মদন'),
(238, 13, 'Mohanganj Upazilla', 'মোহনগঞ্জ'),
(239, 13, 'Netrakona-S Upazilla', 'নেত্রকোনা সদর'),
(240, 13, 'Purbadhala Upazilla', 'পূর্বধলা'),
(241, 13, 'Khaliajuri Upazilla', 'খালিয়াজুরি'),
(242, 14, 'Baliakandi Upazila', 'বালিয়াকান্দি'),
(243, 14, 'Goalandaghat Upazila', 'গোয়ালন্দ ঘাট'),
(244, 14, 'Pangsha Upazila', 'পাংশা'),
(245, 14, 'Kalukhali Upazila', 'কালুখালি'),
(246, 14, 'Rajbari Sadar Upazila', 'রাজবাড়ি সদর'),
(247, 15, 'Shariatpur Sadar -Palong', 'শরীয়তপুর সদর '),
(248, 15, 'Damudya Upazila', 'দামুদিয়া'),
(249, 15, 'Naria Upazila', 'নড়িয়া'),
(250, 15, 'Jajira Upazila', 'জাজিরা'),
(251, 15, 'Bhedarganj Upazila', 'ভেদারগঞ্জ'),
(252, 15, 'Gosairhat Upazila', 'গোসাইর হাট '),
(253, 16, 'Jhenaigati Upazila', 'ঝিনাইগাতি'),
(254, 16, 'Nakla Upazila', 'নাকলা'),
(255, 16, 'Nalitabari Upazila', 'নালিতাবাড়ি'),
(256, 16, 'Sherpur Sadar Upazila', 'শেরপুর সদর'),
(257, 16, 'Sreebardi Upazila', 'শ্রীবরদি'),
(258, 17, 'Tangail Sadar Upazila', 'টাঙ্গাইল সদর'),
(259, 17, 'Sakhipur Upazila', 'সখিপুর'),
(260, 17, 'Basail Upazila', 'বসাইল'),
(261, 17, 'Madhupur Upazila', 'মধুপুর'),
(262, 17, 'Ghatail Upazila', 'ঘাটাইল'),
(263, 17, 'Kalihati Upazila', 'কালিহাতি'),
(264, 17, 'Nagarpur Upazila', 'নগরপুর'),
(265, 17, 'Mirzapur Upazila', 'মির্জাপুর'),
(266, 17, 'Gopalpur Upazila', 'গোপালপুর'),
(267, 17, 'Delduar Upazila', 'দেলদুয়ার'),
(268, 17, 'Bhuapur Upazila', 'ভুয়াপুর'),
(269, 17, 'Dhanbari Upazila', 'ধানবাড়ি'),
(270, 55, 'Bagerhat Sadar Upazila', 'বাগেরহাট সদর'),
(271, 55, 'Chitalmari Upazila', 'চিতলমাড়ি'),
(272, 55, 'Fakirhat Upazila', 'ফকিরহাট'),
(273, 55, 'Kachua Upazila', 'কচুয়া'),
(274, 55, 'Mollahat Upazila', 'মোল্লাহাট '),
(275, 55, 'Mongla Upazila', 'মংলা'),
(276, 55, 'Morrelganj Upazila', 'মরেলগঞ্জ'),
(277, 55, 'Rampal Upazila', 'রামপাল'),
(278, 55, 'Sarankhola Upazila', 'স্মরণখোলা'),
(279, 56, 'Damurhuda Upazila', 'দামুরহুদা'),
(280, 56, 'Chuadanga-S Upazila', 'চুয়াডাঙ্গা সদর'),
(281, 56, 'Jibannagar Upazila', 'জীবন নগর '),
(282, 56, 'Alamdanga Upazila', 'আলমডাঙ্গা'),
(283, 57, 'Abhaynagar Upazila', 'অভয়নগর'),
(284, 57, 'Keshabpur Upazila', 'কেশবপুর'),
(285, 57, 'Bagherpara Upazila', 'বাঘের পাড়া '),
(286, 57, 'Jessore Sadar Upazila', 'যশোর সদর'),
(287, 57, 'Chaugachha Upazila', 'চৌগাছা'),
(288, 57, 'Manirampur Upazila', 'মনিরামপুর '),
(289, 57, 'Jhikargachha Upazila', 'ঝিকরগাছা'),
(290, 57, 'Sharsha Upazila', 'সারশা'),
(291, 58, 'Jhenaidah Sadar Upazila', 'ঝিনাইদহ সদর'),
(292, 58, 'Maheshpur Upazila', 'মহেশপুর'),
(293, 58, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(294, 58, 'Kotchandpur Upazila', 'কোট চাঁদপুর '),
(295, 58, 'Shailkupa Upazila', 'শৈলকুপা'),
(296, 58, 'Harinakunda Upazila', 'হাড়িনাকুন্দা'),
(297, 59, 'Terokhada Upazila', 'তেরোখাদা'),
(298, 59, 'Batiaghata Upazila', 'বাটিয়াঘাটা '),
(299, 59, 'Dacope Upazila', 'ডাকপে'),
(300, 59, 'Dumuria Upazila', 'ডুমুরিয়া'),
(301, 59, 'Dighalia Upazila', 'দিঘলিয়া'),
(302, 59, 'Koyra Upazila', 'কয়ড়া'),
(303, 59, 'Paikgachha Upazila', 'পাইকগাছা'),
(304, 59, 'Phultala Upazila', 'ফুলতলা'),
(305, 59, 'Rupsa Upazila', 'রূপসা'),
(306, 60, 'Kushtia Sadar', 'কুষ্টিয়া সদর'),
(307, 60, 'Kumarkhali', 'কুমারখালি'),
(308, 60, 'Daulatpur', 'দৌলতপুর'),
(309, 60, 'Mirpur', 'মিরপুর'),
(310, 60, 'Bheramara', 'ভেরামারা'),
(311, 60, 'Khoksa', 'খোকসা'),
(312, 61, 'Magura Sadar Upazila', 'মাগুরা সদর'),
(313, 61, 'Mohammadpur Upazila', 'মোহাম্মাদপুর'),
(314, 61, 'Shalikha Upazila', 'শালিখা'),
(315, 61, 'Sreepur Upazila', 'শ্রীপুর'),
(316, 62, 'angni Upazila', 'আংনি'),
(317, 62, 'Mujib Nagar Upazila', 'মুজিব নগর'),
(318, 62, 'Meherpur-S Upazila', 'মেহেরপুর সদর'),
(319, 63, 'Narail-S Upazilla', 'নড়াইল সদর'),
(320, 63, 'Lohagara Upazilla', 'লোহাগাড়া'),
(321, 63, 'Kalia Upazilla', 'কালিয়া'),
(322, 64, 'Satkhira Sadar Upazila', 'সাতক্ষীরা সদর'),
(323, 64, 'Assasuni Upazila', 'আসসাশুনি '),
(324, 64, 'Debhata Upazila', 'দেভাটা'),
(325, 64, 'Tala Upazila', 'তালা'),
(326, 64, 'Kalaroa Upazila', 'কলরোয়া'),
(327, 64, 'Kaliganj Upazila', 'কালীগঞ্জ'),
(328, 64, 'Shyamnagar Upazila', 'শ্যামনগর'),
(329, 18, 'Adamdighi', 'আদমদিঘী'),
(330, 18, 'Bogra Sadar', 'বগুড়া সদর'),
(331, 18, 'Sherpur', 'শেরপুর'),
(332, 18, 'Dhunat', 'ধুনট'),
(333, 18, 'Dhupchanchia', 'দুপচাচিয়া'),
(334, 18, 'Gabtali', 'গাবতলি'),
(335, 18, 'Kahaloo', 'কাহালু'),
(336, 18, 'Nandigram', 'নন্দিগ্রাম'),
(337, 18, 'Sahajanpur', 'শাহজাহানপুর'),
(338, 18, 'Sariakandi', 'সারিয়াকান্দি'),
(339, 18, 'Shibganj', 'শিবগঞ্জ'),
(340, 18, 'Sonatala', 'সোনাতলা'),
(341, 19, 'Joypurhat S', 'জয়পুরহাট সদর'),
(342, 19, 'Akkelpur', 'আক্কেলপুর'),
(343, 19, 'Kalai', 'কালাই'),
(344, 19, 'Khetlal', 'খেতলাল'),
(345, 19, 'Panchbibi', 'পাঁচবিবি'),
(346, 20, 'Naogaon Sadar Upazila', 'নওগাঁ সদর'),
(347, 20, 'Mohadevpur Upazila', 'মহাদেবপুর'),
(348, 20, 'Manda Upazila', 'মান্দা'),
(349, 20, 'Niamatpur Upazila', 'নিয়ামতপুর'),
(350, 20, 'Atrai Upazila', 'আত্রাই'),
(351, 20, 'Raninagar Upazila', 'রাণীনগর'),
(352, 20, 'Patnitala Upazila', 'পত্নীতলা'),
(353, 20, 'Dhamoirhat Upazila', 'ধামইরহাট '),
(354, 20, 'Sapahar Upazila', 'সাপাহার'),
(355, 20, 'Porsha Upazila', 'পোরশা'),
(356, 20, 'Badalgachhi Upazila', 'বদলগাছি'),
(357, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(358, 21, 'Baraigram Upazila', 'বড়াইগ্রাম'),
(359, 21, 'Bagatipara Upazila', 'বাগাতিপাড়া'),
(360, 21, 'Lalpur Upazila', 'লালপুর'),
(361, 21, 'Natore Sadar Upazila', 'নাটোর সদর'),
(362, 21, 'Baraigram Upazila', 'বড়াই গ্রাম'),
(363, 22, 'Bholahat Upazila', 'ভোলাহাট'),
(364, 22, 'Gomastapur Upazila', 'গোমস্তাপুর'),
(365, 22, 'Nachole Upazila', 'নাচোল'),
(366, 22, 'Nawabganj Sadar Upazila', 'নবাবগঞ্জ সদর'),
(367, 22, 'Shibganj Upazila', 'শিবগঞ্জ'),
(368, 23, 'Atgharia Upazila', 'আটঘরিয়া'),
(369, 23, 'Bera Upazila', 'বেড়া'),
(370, 23, 'Bhangura Upazila', 'ভাঙ্গুরা'),
(371, 23, 'Chatmohar Upazila', 'চাটমোহর'),
(372, 23, 'Faridpur Upazila', 'ফরিদপুর'),
(373, 23, 'Ishwardi Upazila', 'ঈশ্বরদী'),
(374, 23, 'Pabna Sadar Upazila', 'পাবনা সদর'),
(375, 23, 'Santhia Upazila', 'সাথিয়া'),
(376, 23, 'Sujanagar Upazila', 'সুজানগর'),
(377, 24, 'Bagha', 'বাঘা'),
(378, 24, 'Bagmara', 'বাগমারা'),
(379, 24, 'Charghat', 'চারঘাট'),
(380, 24, 'Durgapur', 'দুর্গাপুর'),
(381, 24, 'Godagari', 'গোদাগারি'),
(382, 24, 'Mohanpur', 'মোহনপুর'),
(383, 24, 'Paba', 'পবা'),
(384, 24, 'Puthia', 'পুঠিয়া'),
(385, 24, 'Tanore', 'তানোর'),
(386, 25, 'Sirajganj Sadar Upazila', 'সিরাজগঞ্জ সদর'),
(387, 25, 'Belkuchi Upazila', 'বেলকুচি'),
(388, 25, 'Chauhali Upazila', 'চৌহালি'),
(389, 25, 'Kamarkhanda Upazila', 'কামারখান্দা'),
(390, 25, 'Kazipur Upazila', 'কাজীপুর'),
(391, 25, 'Raiganj Upazila', 'রায়গঞ্জ'),
(392, 25, 'Shahjadpur Upazila', 'শাহজাদপুর'),
(393, 25, 'Tarash Upazila', 'তারাশ'),
(394, 25, 'Ullahpara Upazila', 'উল্লাপাড়া'),
(395, 26, 'Birampur Upazila', 'বিরামপুর'),
(396, 26, 'Birganj', 'বীরগঞ্জ'),
(397, 26, 'Biral Upazila', 'বিড়াল'),
(398, 26, 'Bochaganj Upazila', 'বোচাগঞ্জ'),
(399, 26, 'Chirirbandar Upazila', 'চিরিরবন্দর'),
(400, 26, 'Phulbari Upazila', 'ফুলবাড়ি'),
(401, 26, 'Ghoraghat Upazila', 'ঘোড়াঘাট'),
(402, 26, 'Hakimpur Upazila', 'হাকিমপুর'),
(403, 26, 'Kaharole Upazila', 'কাহারোল'),
(404, 26, 'Khansama Upazila', 'খানসামা'),
(405, 26, 'Dinajpur Sadar Upazila', 'দিনাজপুর সদর'),
(406, 26, 'Nawabganj', 'নবাবগঞ্জ'),
(407, 26, 'Parbatipur Upazila', 'পার্বতীপুর'),
(408, 27, 'Fulchhari', 'ফুলছড়ি'),
(409, 27, 'Gaibandha sadar', 'গাইবান্ধা সদর'),
(410, 27, 'Gobindaganj', 'গোবিন্দগঞ্জ'),
(411, 27, 'Palashbari', 'পলাশবাড়ী'),
(412, 27, 'Sadullapur', 'সাদুল্যাপুর'),
(413, 27, 'Saghata', 'সাঘাটা'),
(414, 27, 'Sundarganj', 'সুন্দরগঞ্জ'),
(415, 28, 'Kurigram Sadar', 'কুড়িগ্রাম সদর'),
(416, 28, 'Nageshwari', 'নাগেশ্বরী'),
(417, 28, 'Bhurungamari', 'ভুরুঙ্গামারি'),
(418, 28, 'Phulbari', 'ফুলবাড়ি'),
(419, 28, 'Rajarhat', 'রাজারহাট'),
(420, 28, 'Ulipur', 'উলিপুর'),
(421, 28, 'Chilmari', 'চিলমারি'),
(422, 28, 'Rowmari', 'রউমারি'),
(423, 28, 'Char Rajibpur', 'চর রাজিবপুর'),
(424, 29, 'Lalmanirhat Sadar', 'লালমনিরহাট সদর'),
(425, 29, 'Aditmari', 'আদিতমারি'),
(426, 29, 'Kaliganj', 'কালীগঞ্জ'),
(427, 29, 'Hatibandha', 'হাতিবান্ধা'),
(428, 29, 'Patgram', 'পাটগ্রাম'),
(429, 30, 'Nilphamari Sadar', 'নীলফামারী সদর'),
(430, 30, 'Saidpur', 'সৈয়দপুর'),
(431, 30, 'Jaldhaka', 'জলঢাকা'),
(432, 30, 'Kishoreganj', 'কিশোরগঞ্জ'),
(433, 30, 'Domar', 'ডোমার'),
(434, 30, 'Dimla', 'ডিমলা'),
(435, 31, 'Panchagarh Sadar', 'পঞ্চগড় সদর'),
(436, 31, 'Debiganj', 'দেবীগঞ্জ'),
(437, 31, 'Boda', 'বোদা'),
(438, 31, 'Atwari', 'আটোয়ারি'),
(439, 31, 'Tetulia', 'তেতুলিয়া'),
(440, 32, 'Badarganj', 'বদরগঞ্জ'),
(441, 32, 'Mithapukur', 'মিঠাপুকুর'),
(442, 32, 'Gangachara', 'গঙ্গাচরা'),
(443, 32, 'Kaunia', 'কাউনিয়া'),
(444, 32, 'Rangpur Sadar', 'রংপুর সদর'),
(445, 32, 'Pirgachha', 'পীরগাছা'),
(446, 32, 'Pirganj', 'পীরগঞ্জ'),
(447, 32, 'Taraganj', 'তারাগঞ্জ'),
(448, 33, 'Thakurgaon Sadar Upazila', 'ঠাকুরগাঁও সদর'),
(449, 33, 'Pirganj Upazila', 'পীরগঞ্জ'),
(450, 33, 'Baliadangi Upazila', 'বালিয়াডাঙ্গি'),
(451, 33, 'Haripur Upazila', 'হরিপুর'),
(452, 33, 'Ranisankail Upazila', 'রাণীসংকইল'),
(453, 51, 'Ajmiriganj', 'আজমিরিগঞ্জ'),
(454, 51, 'Baniachang', 'বানিয়াচং'),
(455, 51, 'Bahubal', 'বাহুবল'),
(456, 51, 'Chunarughat', 'চুনারুঘাট'),
(457, 51, 'Habiganj Sadar', 'হবিগঞ্জ সদর'),
(458, 51, 'Lakhai', 'লাক্ষাই'),
(459, 51, 'Madhabpur', 'মাধবপুর'),
(460, 51, 'Nabiganj', 'নবীগঞ্জ'),
(461, 51, 'Shaistagonj Upazila', 'শায়েস্তাগঞ্জ'),
(462, 52, 'Moulvibazar Sadar', 'মৌলভীবাজার'),
(463, 52, 'Barlekha', 'বড়লেখা'),
(464, 52, 'Juri', 'জুড়ি'),
(465, 52, 'Kamalganj', 'কামালগঞ্জ'),
(466, 52, 'Kulaura', 'কুলাউরা'),
(467, 52, 'Rajnagar', 'রাজনগর'),
(468, 52, 'Sreemangal', 'শ্রীমঙ্গল'),
(469, 53, 'Bishwamvarpur', 'বিসশম্ভারপুর'),
(470, 53, 'Chhatak', 'ছাতক'),
(471, 53, 'Derai', 'দেড়াই'),
(472, 53, 'Dharampasha', 'ধরমপাশা'),
(473, 53, 'Dowarabazar', 'দোয়ারাবাজার'),
(474, 53, 'Jagannathpur', 'জগন্নাথপুর'),
(475, 53, 'Jamalganj', 'জামালগঞ্জ'),
(476, 53, 'Sulla', 'সুল্লা'),
(477, 53, 'Sunamganj Sadar', 'সুনামগঞ্জ সদর'),
(478, 53, 'Shanthiganj', 'শান্তিগঞ্জ'),
(479, 53, 'Tahirpur', 'তাহিরপুর'),
(480, 54, 'Sylhet Sadar', 'সিলেট সদর'),
(481, 54, 'Beanibazar', 'বেয়ানিবাজার'),
(482, 54, 'Bishwanath', 'বিশ্বনাথ'),
(483, 54, 'Dakshin Surma Upazila', 'দক্ষিণ সুরমা'),
(484, 54, 'Balaganj', 'বালাগঞ্জ'),
(485, 54, 'Companiganj', 'কোম্পানিগঞ্জ'),
(486, 54, 'Fenchuganj', 'ফেঞ্চুগঞ্জ'),
(487, 54, 'Golapganj', 'গোলাপগঞ্জ'),
(488, 54, 'Gowainghat', 'গোয়াইনঘাট'),
(489, 54, 'Jaintiapur', 'জয়ন্তপুর'),
(490, 54, 'Kanaighat', 'কানাইঘাট'),
(491, 54, 'Zakiganj', 'জাকিগঞ্জ'),
(492, 54, 'Nobigonj', 'নবীগঞ্জ'),
(493, 45, 'Eidgaon- Cox\'s ', 'ঈঁদ্গাও');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `unique_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `u_name` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone_pass` varchar(255) NOT NULL,
  `mess_id` varchar(255) NOT NULL,
  `school_id` varchar(255) NOT NULL,
  `u_type` enum('0','1','2','3','4','5') NOT NULL DEFAULT '0',
  `a_status` enum('0','1') NOT NULL DEFAULT '0',
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `user_id`, `u_name`, `password`, `phone_pass`, `mess_id`, `school_id`, `u_type`, `a_status`, `email`, `phone`, `otp`, `last_login`) VALUES
(9, 'U-FF-0000001-01770627875', 'U-FF-0000001', 'Mffoysal', '369725', '0177062787552', '3757CF-1701191741-695829504-311787001', '3FB69C-1701233033-1741528352-162749032', '1', '0', 'mff585855075@gmail.com', '01770627875', '', '2024-01-18 11:42:12'),
(18, 'U-FF-0000002-01816444372', 'U-FF-0000002', 'Farhad Foysal', '01816444372', '0181644437201', '', '', '0', '0', 'mff585855075@gmail.com', '01816444372', '', '2023-12-18 10:34:43'),
(19, 'U-FF-0000003-01585855075', 'U-FF-0000003', 'Farhad Foysal', '01585855075', '01585855075C9', '', '', '0', '0', 'mff585855075@gmail.com', '01585855075', '', '2023-12-18 16:40:40');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `u_id` varchar(255) DEFAULT NULL,
  `unique_id` varchar(255) DEFAULT NULL,
  `currSessId` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  `bal` varchar(255) DEFAULT NULL,
  `u_type` int(11) DEFAULT NULL,
  `sId` varchar(255) DEFAULT NULL,
  `photo` varchar(512) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `fingerData` blob DEFAULT NULL,
  `stdId` varchar(255) DEFAULT NULL,
  `major` varchar(255) DEFAULT NULL,
  `status` enum('0','1') DEFAULT '1',
  `address` varchar(255) DEFAULT NULL,
  `sync_status` enum('0','1') DEFAULT '1',
  `sync_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `u_id`, `unique_id`, `currSessId`, `designation`, `name`, `email`, `phone`, `pass`, `bal`, `u_type`, `sId`, `photo`, `picture`, `fingerData`, `stdId`, `major`, `status`, `address`, `sync_status`, `sync_key`) VALUES
(1, 'U-FF-0000001', 'U-FF-0000001-01770627875', NULL, NULL, 'Farhad Foysal', 'mff585855075@gmail.com', '01770627875', '369725', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, '1', NULL),
(10, 'U-FF-0000002', 'U-FF-0000002-01816444372', NULL, NULL, 'Farhad Foysal', 'mff585855075@gmail.com', '01816444372', '01816444372', NULL, 0, NULL, '1702895683a1.png', NULL, NULL, NULL, NULL, '1', NULL, '1', NULL),
(11, 'U-FF-0000003', 'U-FF-0000003-01585855075', NULL, NULL, 'Farhad Foysal', 'mff585855075@gmail.com', '01585855075', '01585855075', NULL, 0, NULL, '17029176401.png', NULL, NULL, NULL, NULL, '1', NULL, '1', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allsubjects`
--
ALTER TABLE `allsubjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendancesheet`
--
ALTER TABLE `attendancesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ayear`
--
ALTER TABLE `ayear`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate`
--
ALTER TABLE `candidate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classschedule`
--
ALTER TABLE `classschedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_data`
--
ALTER TABLE `class_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `division_id` (`division_id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_room`
--
ALTER TABLE `exam_room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_routine`
--
ALTER TABLE `exam_routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feetype`
--
ALTER TABLE `feetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mail`
--
ALTER TABLE `mail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mess`
--
ALTER TABLE `mess`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roome_column`
--
ALTER TABLE `roome_column`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seat_distribution`
--
ALTER TABLE `seat_distribution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `secassigned`
--
ALTER TABLE `secassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subassigned`
--
ALTER TABLE `subassigned`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subonsec`
--
ALTER TABLE `subonsec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `unions`
--
ALTER TABLE `unions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upazila_id` (`upazila_id`);

--
-- Indexes for table `upazilas`
--
ALTER TABLE `upazilas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `district_id` (`district_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allsubjects`
--
ALTER TABLE `allsubjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendancesheet`
--
ALTER TABLE `attendancesheet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ayear`
--
ALTER TABLE `ayear`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate`
--
ALTER TABLE `candidate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `classschedule`
--
ALTER TABLE `classschedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `class_data`
--
ALTER TABLE `class_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `exam_room`
--
ALTER TABLE `exam_room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `exam_routine`
--
ALTER TABLE `exam_routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feetype`
--
ALTER TABLE `feetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mail`
--
ALTER TABLE `mail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `major`
--
ALTER TABLE `major`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mess`
--
ALTER TABLE `mess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `note`
--
ALTER TABLE `note`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roome_column`
--
ALTER TABLE `roome_column`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seat_distribution`
--
ALTER TABLE `seat_distribution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `secassigned`
--
ALTER TABLE `secassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `subassigned`
--
ALTER TABLE `subassigned`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subonsec`
--
ALTER TABLE `subonsec`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
