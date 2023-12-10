-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2023 at 12:41 PM
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
-- Database: `voting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`aid`, `username`, `password`, `aname`) VALUES
(1, 'admin@gmail.com', 'adrian', 'admin'),
(2, 'admin@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `candidates`
--

CREATE TABLE `candidates` (
  `Studid` int(11) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `Contact` bigint(20) DEFAULT NULL,
  `course` varchar(100) DEFAULT NULL,
  `Department` varchar(100) DEFAULT NULL,
  `Position` varchar(50) DEFAULT NULL,
  `Platform` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidates`
--

INSERT INTO `candidates` (`Studid`, `Lname`, `Fname`, `email`, `Contact`, `course`, `Department`, `Position`, `Platform`) VALUES
(NULL, NULL, NULL, 'mayank@gmail.com', NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, 'mayank@gmail.com', NULL, NULL, NULL, NULL, NULL),
(NULL, NULL, NULL, 'mayank@gmail.com', NULL, NULL, NULL, NULL, NULL),
(NULL, 'Balingasa', 'Justine', 'mayank@gmail.com', NULL, NULL, 'CITCS', 'President', NULL),
(NULL, 'Nido', 'Nathaniel', 'prakashverma@gmail.com', NULL, NULL, 'CITCS', 'Vice-President', NULL),
(21138352, 'Lazar', 'Adrian', 'cvenlazar@gmail.com', 9123456789, 'BSIT', 'CITCS', 'Secretary', 'To be The Best');

-- --------------------------------------------------------

--
-- Table structure for table `candidate_2nd`
--

CREATE TABLE `candidate_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(200) DEFAULT NULL,
  `approve_status` int(20) DEFAULT 0 COMMENT '0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_2nd`
--

INSERT INTO `candidate_2nd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 1238846, 'Information Technology', 68468, 'sdfsdf', 1),
(2, 'Mayank', 'adfi8edhfousah@gmail.com', 65, 'Information Technology', 2005002, 'sdes', 1);

-- --------------------------------------------------------

--
-- Table structure for table `candidate_3rd`
--

CREATE TABLE `candidate_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `mobile` bigint(20) DEFAULT NULL,
  `branch` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `enrollid` varchar(40) DEFAULT NULL,
  `approve_status` int(11) DEFAULT 0 COMMENT '	0 for pending , 1 for approve 2 for reject'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `candidate_3rd`
--

INSERT INTO `candidate_3rd` (`id`, `name`, `email`, `mobile`, `branch`, `rollno`, `enrollid`, `approve_status`) VALUES
(1, 'Mayank', 'mayank@gmail.com', 32412, 'Information Technology', 3342, '432', 1),
(2, 'Parinay', 'mayank@gmail.com', 6269888, 'Mechanical', 6849545, '32432', 1),
(3, 'Abhay', 'mayank@gmail.com', 626887802, 'Information Technology', 5255152, '3242134', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `message`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 'nothing'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `suggestion`
--

CREATE TABLE `suggestion` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `suggestion` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suggestion`
--

INSERT INTO `suggestion` (`id`, `name`, `email`, `number`, `rollno`, `suggestion`) VALUES
(1, 'Aditya', 'adityakumarverified@gmail.com', 9898, 651, 'Nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` text DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(20) DEFAULT NULL,
  `reason` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(26, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 205503318002, 'nothing'),
(27, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Prakash', 205503318002, ''),
(28, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 3453, ''),
(29, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 3242, ''),
(30, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 205503318002, ''),
(31, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 208850, ''),
(32, 'Aditya Kumar', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Mayank', 20855, ''),
(33, 'Abhay', 'adfi8edhfousah@gmail.com', 'IT', 6264874874, 'Mayank', 684985, ''),
(34, 'Mayank', 'adfi8edhfousah@gmail.com', 'IT', 95489, 'Mayank', 65456, 'tghgfh'),
(35, 'Adrian Lazar', 'Adrian@gmail.com', 'asdas', 9898237423, 'Mayank', 123123, 'dsadasd');

-- --------------------------------------------------------

--
-- Table structure for table `users_2nd`
--

CREATE TABLE `users_2nd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(20) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `candidate` varchar(40) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_2nd`
--

INSERT INTO `users_2nd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Parinay', 'mayank@gmail.com', 'IT', 626289, 'Mayank', 9845, 'dsft'),
(2, 'aditya', 'mayank@gmail.com', 'IT', 6266, 'Parinay', 626887802, 'sea'),
(3, 'Mayank', 'mayank@gmail.com', 'IT', 626887802, 'Mayank', 205503318022, 'nothing');

-- --------------------------------------------------------

--
-- Table structure for table `users_3rd`
--

CREATE TABLE `users_3rd` (
  `id` int(11) NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `Branch` varchar(60) DEFAULT NULL,
  `number` bigint(30) DEFAULT NULL,
  `candidate` varchar(60) DEFAULT NULL,
  `rollno` bigint(30) DEFAULT NULL,
  `reason` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_3rd`
--

INSERT INTO `users_3rd` (`id`, `name`, `email`, `Branch`, `number`, `candidate`, `rollno`, `reason`) VALUES
(1, 'Abhay', 'mayank@gmail.com', 'IT', 684565, 'Parinay', 651, 'sade'),
(2, 'Aditya', 'adityakumarverified@gmail.com', 'IT', 6268887802, 'Parinay', 205503318002, 'nothing\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `voter`
--

CREATE TABLE `voter` (
  `Vid` int(11) NOT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Mi` char(1) DEFAULT NULL,
  `Birthday` date DEFAULT NULL,
  `Course` varchar(50) DEFAULT NULL,
  `StudentNo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voter`
--

INSERT INTO `voter` (`Vid`, `Lname`, `Fname`, `Mi`, `Birthday`, `Course`, `StudentNo`) VALUES
(1, 'Lazar', 'Adrian', 'A', '2000-04-13', 'BSIT', 21138352);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggestion`
--
ALTER TABLE `suggestion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_2nd`
--
ALTER TABLE `users_2nd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_3rd`
--
ALTER TABLE `users_3rd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `voter`
--
ALTER TABLE `voter`
  ADD PRIMARY KEY (`Vid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_2nd`
--
ALTER TABLE `candidate_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `candidate_3rd`
--
ALTER TABLE `candidate_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suggestion`
--
ALTER TABLE `suggestion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_2nd`
--
ALTER TABLE `users_2nd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users_3rd`
--
ALTER TABLE `users_3rd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `voter`
--
ALTER TABLE `voter`
  MODIFY `Vid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
