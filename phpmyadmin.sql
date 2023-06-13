-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 09, 2023 at 11:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phpmyadmin`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `ID` int(5) NOT NULL,
  `e-mail` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `age` int(5) NOT NULL,
  `role` char(50) NOT NULL,
  `Name` char(50) NOT NULL,
  `Gender` char(1) NOT NULL,
  `phone number` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`ID`, `e-mail`, `password`, `age`, `role`, `Name`, `Gender`, `phone number`) VALUES
(2, 'ahmed@gmail', '1234', 20, 'customer', 'ahmed', 'm', '012354'),
(3, 'alhosein@gmail', '1234', 20, 'admin', 'hoshos', 'm', '01550371160'),
(6, 'amira@gmail.com', '1234', 27, 'customer', 'amira', 'f', '01550371160'),
(8, 'menna@gmail.com', '12345', 21, 'customer', 'menna', 'f', '0153288'),
(10, 'amirali@gmail', '1234', 34, 'customer', 'amir', 'm', '015464864'),
(11, 'salah@gmail.com', '1234', 20, 'staff', 'salah', 'm', '0156151684'),
(12, 'alhosein@gmail.com', '21345', 0, 'customer', 'mariah', 'm', '203030'),
(13, 'mattar@gmail.com', '123151', 21, 'customer', 'hossam', 'm', '203030'),
(14, 'karma@gmail.com', '1234', 21, 'customer', 'karma', 'f', '01115544564'),
(15, 'aya@gmail', '123', 17, 'customer', 'aya', 'f', '00461'),
(16, 'hoshos@hoshos', 'hoshos', 27, 'customer', 'hoshos', 'm', '018'),
(17, 's@gmail.com', '123', 5, 'customer', 'salah', 'f', '123'),
(18, 'alhosein12@gmail.caom', '123', 21, 'customer', 'hussein', 'm', '01550371160'),
(19, 'staff@gmail', '123', 21, 'staff', 'ola', 'f', '17'),
(21, 'mohamed@gmail', '123', 21, 'staff', 'mohamed', 'm', '156548'),
(88, '88@gmail.com', '123', 21, 'staff', 'salooha', 'm', '91'),
(90, 'alhosein@hotmail', '12', 20, 'staff', 'mad', 'm', '12'),
(9094199, 'hemat@gmail', '1234', 32, 'customer', 'hemat', 'f', '01561816'),
(9094200, 'lastone@g', '123', 21, 'customer', 'lastone', 'm', '123'),
(9094201, 'toka@toka', '1234', 13, 'customer', 'toqa', 'f', '0156561');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(5) NOT NULL,
  `Name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bug`
--

CREATE TABLE `bug` (
  `ID` int(5) NOT NULL,
  `Description` char(50) NOT NULL,
  `image` char(50) NOT NULL,
  `type` char(50) NOT NULL,
  `State` int(5) NOT NULL,
  `Solution` char(50) NOT NULL,
  `Staff_ID` int(5) NOT NULL,
  `customer_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bug`
--

INSERT INTO `bug` (`ID`, `Description`, `image`, `type`, `State`, `Solution`, `Staff_ID`, `customer_id`) VALUES
(1, 'jlfsa', 'adkjf', 'saflj', 0, '', 0, NULL),
(5, '$dsc', '$img', '$type', 2, 'bug is cool\r\n', 11, NULL),
(90790, 'kajfsklh', 'pesodo code recursive.docx', 'please', 1, '', 90, 6),
(90796, 'ayooo', 'aa.txt', 'not', 2, 'the code is fine', 19, 6),
(90798, 'that bad', 'background.jpg', 'me', 0, 'MOHAMED', 14, 14),
(90799, 'alot of bad people', 'images/', 'coding', 2, 'alo', 90, 6),
(90813, 'message doesnt show', 'lock-icon.png', 'error', 0, '', 15, 15),
(90814, 'annoying', 'lock-icon.png', 'salah & hossam', 2, 'salah', 14, 14),
(90815, 'the code doesnt want to run', 'user-icon.png', 'c++', 2, 'missing semi colon on line 14', 16, 16),
(90817, 'yes', '', 'hello', 0, '', 17, 17),
(90818, 'hey', '', 'c++', 1, '', 19, 17),
(90834, 'the code doesnt want to run', 'staff_control.php', 'code issue', 2, 'the bug is missing a semi colon at line 34', 11, 18),
(90835, 'the code doesnt want to run', 'staff_control.php', 'code issue', 2, '767', 11, 11),
(90838, 'code dont run', 'DOC-20230428-WA0158', 'c++', 2, 'MISSING } AT LINE 16', 11, 14),
(90839, 'amr amr amr', 'mainstaff.webp', 'amr', 2, 'not right', 35, 9094199),
(90840, 'the code doesnt want to run', 'staff.php', 'ph', 0, '', 0, 9094200),
(90841, 'the code doesnt run', 'hhhh-1.docx', 'run errorr', 2, 'the code is fixed', 21, 9094201);

-- --------------------------------------------------------

--
-- Table structure for table `create_bug`
--

CREATE TABLE `create_bug` (
  `Ticket` int(5) NOT NULL,
  `Customer_ID` int(5) NOT NULL,
  `Admin_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID` int(5) NOT NULL,
  `Name` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID`, `Name`) VALUES
(6, 'amira'),
(8, 'menna'),
(10, 'amir'),
(12, 'mariah'),
(13, 'hossam'),
(14, 'karma'),
(15, 'aya'),
(16, 'hoshos'),
(17, 'salah'),
(18, 'hussein'),
(9094199, 'hemat'),
(9094200, 'lastone'),
(9094201, 'toqa');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID` int(5) NOT NULL,
  `content` char(50) NOT NULL,
  `rate` int(5) NOT NULL,
  `Customer_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID`, `content`, `rate`, `Customer_ID`) VALUES
(34, 'i liked the log in', 5, 15),
(35, 'why', 5, 15),
(36, 'why', 5, 15),
(37, 'i liked it', 5, 15),
(38, 'i liked it', 5, 15),
(39, 'hoshos', 5, 14),
(40, 'hoshos', 5, 14),
(41, 'i liked how fast the bug solved', 5, 16),
(42, 'yes sir', 5, 17),
(43, 'yes sir', 5, 17),
(44, 'yes sir', 5, 17),
(45, 'yes sir', 5, 17),
(46, 'yes sir', 5, 17),
(47, 'yes sir', 5, 17),
(48, 'yes sir', 5, 17),
(49, 'yes sir', 5, 17),
(50, 'yes sir', 5, 17),
(51, 'the work is very fast', 5, 18),
(52, 'THE CODE RAN CORRECTLY', 5, 14),
(53, 'yes', 5, 9094199);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `ID` int(5) NOT NULL,
  `content` char(50) NOT NULL,
  `date` time NOT NULL,
  `Sign` int(5) NOT NULL,
  `Customer_ID` int(5) NOT NULL,
  `Admin_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`ID`, `content`, `date`, `Sign`, `Customer_ID`, `Admin_ID`) VALUES
(9, 'yes sir', '00:00:00', 1, 14, 0),
(52, 'yes', '12:55:23', 1, 14, 0),
(53, 'yes', '12:55:27', 1, 14, 0),
(54, 'yes', '12:55:49', 1, 14, 0),
(55, 'hello', '12:55:54', 1, 14, 0),
(56, 'hello', '12:56:11', 1, 14, 0),
(57, 'hello', '12:56:50', 1, 14, 0),
(58, 'hello', '12:57:06', 2, 14, 0),
(59, 'hello', '12:57:43', 2, 14, 0),
(60, 'hey', '12:57:48', 2, 14, 0),
(63, 'hey you there', '12:59:09', 1, 14, 0),
(64, 'yes', '12:59:35', 1, 14, 0),
(65, 'yes', '01:00:19', 1, 14, 0),
(66, 'hello', '01:01:00', 1, 14, 0),
(67, 'hello', '01:01:29', 1, 14, 0),
(68, 'hello\r\n', '01:09:22', 1, 14, 0),
(69, 'hello\r\n', '01:09:41', 1, 14, 0),
(70, 'hello', '01:10:08', 1, 14, 0),
(71, 'hey\r\n', '01:12:08', 1, 14, 0),
(72, 'hey\r\n', '01:13:31', 1, 14, 0),
(73, 'hello', '11:04:12', 1, 14, 0);

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ID` int(5) NOT NULL,
  `State` int(5) NOT NULL DEFAULT 0,
  `Staff_ID` int(5) NOT NULL,
  `Customer_ID` int(5) NOT NULL,
  `Bug_ID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ID`, `State`, `Staff_ID`, `Customer_ID`, `Bug_ID`) VALUES
(4, 0, 19, 17, 90818),
(5, 1, 19, 17, 90818),
(6, 0, 21, 9094201, 90841);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `ID` int(5) NOT NULL,
  `Name` char(50) NOT NULL,
  `rate` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `Name`, `rate`) VALUES
(19, 'ola', 0),
(21, 'mohamed', 0),
(88, 'salooha', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `bug`
--
ALTER TABLE `bug`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9094202;

--
-- AUTO_INCREMENT for table `bug`
--
ALTER TABLE `bug`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90842;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `account` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `account` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `account` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
