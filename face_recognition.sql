-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 06, 2023 at 09:29 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_recognition`
--

-- --------------------------------------------------------

--
-- Table structure for table `regteach`
--

CREATE TABLE `regteach` (
  `fname` varchar(15) NOT NULL,
  `lname` varchar(15) NOT NULL,
  `cnum` int(20) NOT NULL,
  `email` varchar(25) NOT NULL,
  `ssq` varchar(10) NOT NULL,
  `sa` varchar(10) NOT NULL,
  `pwd` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `regteach`
--

INSERT INTO `regteach` (`fname`, `lname`, `cnum`, `email`, `ssq`, `sa`, `pwd`) VALUES
('rajan', 'Fufal', 475746273, 'rajanfufal@gmail.com', '243', '465', '124');

-- --------------------------------------------------------

--
-- Table structure for table `stdattendance`
--

CREATE TABLE `stdattendance` (
  `std_id` int(11) NOT NULL,
  `std_roll_no` int(11) NOT NULL,
  `std_name` varchar(20) NOT NULL,
  `std_date` date NOT NULL,
  `std_attendance` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_ID` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `Year` year(4) NOT NULL,
  `Semester` varchar(25) NOT NULL,
  `Division` varchar(25) NOT NULL,
  `Gender` varchar(25) NOT NULL,
  `DOB` date NOT NULL,
  `Mobile_No` int(12) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Roll_No` varchar(25) NOT NULL,
  `Email` varchar(25) NOT NULL,
  `Teacher_Name` varchar(25) NOT NULL,
  `PhotoSample` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stdattendance`
--
ALTER TABLE `stdattendance`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stdattendance`
--
ALTER TABLE `stdattendance`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Student_ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
