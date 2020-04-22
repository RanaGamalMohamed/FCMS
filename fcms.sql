-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2020 at 06:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fcms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_id` int(11) NOT NULL,
  `First_name` varchar(255) NOT NULL,
  `Last_name` varchar(255) NOT NULL,
  `Admin_email` varchar(255) NOT NULL,
  `Admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `First_name`, `Last_name`, `Admin_email`, `Admin_password`) VALUES
(1, 'Rana', 'Ahmed', 'RanaAhmed@gmail.com', 'Rana123'),
(2, 'rana', 'bahaa', 'ranabahaa@gmail.com', 'ranabahaa123');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Trainer_id` int(11) NOT NULL,
  `Member_id` int(11) NOT NULL,
  `Session_id` int(11) NOT NULL,
  `Date` varchar(255) NOT NULL,
  `Count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Trainer_id`, `Member_id`, `Session_id`, `Date`, `Count`) VALUES
(1, 1, 1, '2-3-2020', 2);

-- --------------------------------------------------------

--
-- Table structure for table `card_details`
--

CREATE TABLE `card_details` (
  `Visa_number` int(200) NOT NULL,
  `Security_digits` int(11) NOT NULL,
  `Payment_amount` int(11) NOT NULL,
  `Payment_date` varchar(255) NOT NULL,
  `Expiration_date` varchar(255) NOT NULL,
  `Check_success` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `card_details`
--

INSERT INTO `card_details` (`Visa_number`, `Security_digits`, `Payment_amount`, `Payment_date`, `Expiration_date`, `Check_success`) VALUES
(1230425789, 789, 200, '10-10-2019', '10-12-2023', 0),
(1234567895, 895, 650, '2-2-2020', '7-7-2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `Member_id` int(11) NOT NULL,
  `Member_Fname` varchar(255) NOT NULL,
  `Member_Lname` varchar(255) NOT NULL,
  `Member_email` varchar(255) NOT NULL,
  `Member_password` varchar(255) NOT NULL,
  `MobileNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`Member_id`, `Member_Fname`, `Member_Lname`, `Member_email`, `Member_password`, `MobileNumber`) VALUES
(1, 'Jemy', 'gamal', 'rana@gmail.com', 'Rana12', 8),
(2, 'Hamada', 'Ahmed', 'rana@gmail.com', 'Rana12', 8),
(3, 'Rawan', 'Ahmed', 'rana@gmail.com', 'Rana12', 8),
(12, 'jemy', 'melo', 'lilly@gmail.com', '123', 12);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `Package_id` int(11) NOT NULL,
  `Package_duration` int(11) NOT NULL,
  `Beginning_date` varchar(255) NOT NULL,
  `End_date` varchar(255) NOT NULL,
  `Package_fee` int(11) NOT NULL,
  `Admin_id` int(11) NOT NULL,
  `sessionsDetails` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`Package_id`, `Package_duration`, `Beginning_date`, `End_date`, `Package_fee`, `Admin_id`, `sessionsDetails`) VALUES
(1, 4, '12_7_2020', '12_8_2020', 850, 1, '2 sessions massage therapy'),
(2, 5, '7-7-2020', '7-8-2020', 300, 2, '3 sessions airobics');

-- --------------------------------------------------------

--
-- Table structure for table `package_sessions`
--

CREATE TABLE `package_sessions` (
  `Package_id` int(11) NOT NULL,
  `Session_id` int(11) NOT NULL,
  `Trainer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `package_sessions`
--

INSERT INTO `package_sessions` (`Package_id`, `Session_id`, `Trainer_id`) VALUES
(1, 1, 1),
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `Trainer_id` int(11) NOT NULL,
  `Trainer_name` varchar(255) NOT NULL,
  `Review` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`Trainer_id`, `Trainer_name`, `Review`) VALUES
(1, 'Nancy', 'she is good person,and really helpful');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `Session_id` int(11) NOT NULL,
  `Session_name` varchar(255) NOT NULL,
  `Session_cost` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `Start_time` varchar(255) NOT NULL,
  `End_time` varchar(255) NOT NULL,
  `Session_days` int(11) NOT NULL,
  `Session_goal` varchar(255) NOT NULL,
  `Trainer_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`Session_id`, `Session_name`, `Session_cost`, `discount`, `Start_time`, `End_time`, `Session_days`, `Session_goal`, `Trainer_name`) VALUES
(1, 'Zomba', 500, 50, '11 Am', '12:30 Am', 5, 'Zomba classes .......', 'Nancy Farid'),
(2, 'SPA', 350, 145, '3 pm ', '4:30 pm', 6, 'zpa classes', 'Ahmed');

-- --------------------------------------------------------

--
-- Table structure for table `trainer`
--

CREATE TABLE `trainer` (
  `Trainer_id` int(11) NOT NULL,
  `Trainer_Fname` varchar(255) NOT NULL,
  `Trainer_Lname` varchar(255) NOT NULL,
  `Trainer_email` varchar(255) NOT NULL,
  `Trainer_password` varchar(255) NOT NULL,
  `Trainer_salary` int(11) NOT NULL,
  `Hired_Date` varchar(255) NOT NULL,
  `Shifts` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trainer`
--

INSERT INTO `trainer` (`Trainer_id`, `Trainer_Fname`, `Trainer_Lname`, `Trainer_email`, `Trainer_password`, `Trainer_salary`, `Hired_Date`, `Shifts`) VALUES
(1, 'Nancy', 'Farid', 'NancyFarid@gmail.com', 'Nancy123', 20000, '20_10_2010', 'from 10 Am to 10 Pm'),
(2, 'Ahmed', 'Foaad', 'AhmedFoaad@gmail.com', 'Ahmed1234', 15000, '7-10-2009', 'from 9 Am to 10 pm');

-- --------------------------------------------------------

--
-- Table structure for table `transaction log`
--

CREATE TABLE `transaction log` (
  `Member_id` int(11) NOT NULL,
  `Visa_number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction log`
--

INSERT INTO `transaction log` (`Member_id`, `Visa_number`) VALUES
(2, 1230425789),
(1, 1230425789);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Member_id`,`Session_id`,`Date`),
  ADD KEY `Trainer_id` (`Trainer_id`),
  ADD KEY `Member_id` (`Member_id`),
  ADD KEY `Session_id` (`Session_id`);

--
-- Indexes for table `card_details`
--
ALTER TABLE `card_details`
  ADD PRIMARY KEY (`Visa_number`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`Member_id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`Package_id`),
  ADD KEY `Admin_id` (`Admin_id`);

--
-- Indexes for table `package_sessions`
--
ALTER TABLE `package_sessions`
  ADD PRIMARY KEY (`Package_id`,`Session_id`,`Trainer_id`),
  ADD KEY `Package_id` (`Package_id`),
  ADD KEY `Session_id` (`Session_id`),
  ADD KEY `Trainer_id` (`Trainer_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`Trainer_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`Session_id`);

--
-- Indexes for table `trainer`
--
ALTER TABLE `trainer`
  ADD PRIMARY KEY (`Trainer_id`);

--
-- Indexes for table `transaction log`
--
ALTER TABLE `transaction log`
  ADD KEY `Member_id` (`Member_id`),
  ADD KEY `Visa_number` (`Visa_number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `packages`
--
ALTER TABLE `packages`
  ADD CONSTRAINT `foreign key` FOREIGN KEY (`Admin_id`) REFERENCES `admin` (`Admin_id`);

--
-- Constraints for table `package_sessions`
--
ALTER TABLE `package_sessions`
  ADD CONSTRAINT `primary key foreign key` FOREIGN KEY (`Session_id`) REFERENCES `sessions` (`Session_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
