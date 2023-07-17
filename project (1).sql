-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 20, 2022 at 12:52 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `projectdata`
--

CREATE TABLE `projectdata` (
  `projid` int(30) NOT NULL,
  `projtitle` varchar(50) NOT NULL,
  `projlogo` varchar(250) NOT NULL,
  `client` varchar(30) NOT NULL,
  `projdescript` varchar(250) NOT NULL,
  `psid` int(11) NOT NULL,
  `dos` varchar(30) NOT NULL,
  `doe` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectdata`
--

INSERT INTO `projectdata` (`projid`, `projtitle`, `projlogo`, `client`, `projdescript`, `psid`, `dos`, `doe`) VALUES
(1, 'gym portal', '18.jpeg', 'martin', '', 1, '10/11/2022', ''),
(2, 'shipping process', '11.jpg', 'lisa', '', 3, '11/5/2019', '11/11/2022'),
(3, 'digg', '12.jpg', 'john', '', 2, '20/7/2020', ''),
(4, 'istockphoto', '19.jpeg', 'kane', '', 3, '17/10/2018', '4/10/2022'),
(5, 'baidu', '13.jfif', 'anny', '', 3, '13/2/2021', '23/5/2022'),
(6, 'tictactoe', '14.jfif', 'lisa', '', 1, '4/10/2022', '3/6/2023'),
(7, 'music app', '15.jpg', 'martin', '', 1, '27/2/2022', ''),
(8, 'online exam app', '20.jpeg', 'kappa', '', 1, '31/1/2022', '31/1/2023'),
(9, 'E-Banking', '17.jpg', 'Rossi', '', 3, '7/8/2021', '9/10/2022'),
(10, 'Face Detection', '21.jpg', 'joe', '', 2, '10/10/2020', '');

-- --------------------------------------------------------

--
-- Table structure for table `projectstatus`
--

CREATE TABLE `projectstatus` (
  `psid` int(30) NOT NULL,
  `status` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectstatus`
--

INSERT INTO `projectstatus` (`psid`, `status`) VALUES
(1, 'new1.jpg'),
(2, 'ongoing.jpg'),
(3, 'done.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projecttechnology`
--

CREATE TABLE `projecttechnology` (
  `projtechnoid` int(11) NOT NULL,
  `technoid` int(11) NOT NULL,
  `projid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `projemployee`
--

CREATE TABLE `projemployee` (
  `projempid` int(30) NOT NULL,
  `projid` int(30) NOT NULL,
  `usertagid` int(30) NOT NULL,
  `dos` date NOT NULL,
  `doe` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projemployee`
--

INSERT INTO `projemployee` (`projempid`, `projid`, `usertagid`, `dos`, `doe`) VALUES
(1, 1, 1020, '2012-11-01', '2013-07-10'),
(2, 2, 1021, '2013-11-15', '2013-08-07'),
(3, 3, 1022, '2018-02-08', '2020-01-31'),
(4, 4, 1023, '2014-07-09', '2019-12-25'),
(5, 5, 1024, '2013-07-09', '2016-11-15'),
(6, 6, 1025, '2019-08-12', '2021-11-24'),
(7, 7, 1026, '2015-08-10', '2022-11-22'),
(8, 8, 1027, '2016-08-02', '2017-11-08'),
(9, 9, 1028, '2013-08-07', '2015-06-16'),
(10, 10, 1029, '2014-11-22', '2022-11-16');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(30) NOT NULL,
  `rolename` varchar(30) NOT NULL,
  `allowance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `rolename`, `allowance`) VALUES
(1, 'devloper', 110000),
(2, 'trainee', 5000),
(3, 'devloper', 50000),
(4, 'devloper', 40000),
(5, 'trainee', 15000),
(6, 'trainee', 11500),
(7, 'devloper', 60000),
(8, 'devloper', 45000),
(9, 'trainee', 20000),
(10, 'hr', 100000),
(11, 'admin', 5000),
(18, '', 20),
(19, '', 10000),
(20, '', 0),
(21, '', 0),
(22, '', 90000);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `taskid` int(30) NOT NULL,
  `taskname` varchar(40) NOT NULL,
  `taskpriority` varchar(30) NOT NULL,
  `projempid` int(30) NOT NULL,
  `dos` date NOT NULL,
  `doe` date NOT NULL,
  `review` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `taskfile`
--

CREATE TABLE `taskfile` (
  `taskfileid` int(30) NOT NULL,
  `taskid` varchar(30) NOT NULL,
  `taskfilepath` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `technology`
--

CREATE TABLE `technology` (
  `technoid` int(30) NOT NULL,
  `technoname` varchar(50) NOT NULL,
  `technopic` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technology`
--

INSERT INTO `technology` (`technoid`, `technoname`, `technopic`) VALUES
(1, 'reacctjs', 'react.jpg'),
(2, 'reactjs', 'react.jpg'),
(3, 'nodejs', 'node.jpg'),
(4, 'aspdotnet', 'dotnet.jpg'),
(5, 'reactjs', 'react.jpg'),
(6, 'nodejs', 'node.jpg'),
(7, 'aspdotnet', 'dotnet.jpg'),
(8, 'nodejs', 'node.jpg'),
(9, 'reactjs', 'react.jpg'),
(11, 'nodejs', 'node.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(30) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `email` varchar(40) NOT NULL,
  `doj` date NOT NULL,
  `roleid` int(30) NOT NULL,
  `degree` varchar(25) NOT NULL,
  `userpic` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `fname`, `lname`, `username`, `password`, `contactno`, `email`, `doj`, `roleid`, `degree`, `userpic`) VALUES
(2, 'purvit', 'patel', 'purvit', '3011purvit', '2332421', 'phoenix3011@gmail.com', '0000-00-00', 2, 'mca', '1.jpg'),
(3, 'kunj', 'shah', 'kunj007', '007shah', '6354366052', 'shahkunj007@gmail.com', '0000-00-00', 3, 'bca', '2.jpg'),
(4, 'dev', 'parekh', 'gud', 'bittu123', '9429681755', 'gud12@gmail.com', '0000-00-00', 4, 'btech', '4.jpg'),
(5, 'rachi', 'chavda', 'rachi12', '123rachic', '9409475811', 'rachi23@gmail.com', '0000-00-00', 5, 'it', '3.jpg'),
(6, 'jay', 'parekh', 'jay10', '1012parekh', '9727299753', 'parekh@gmail.com', '0000-00-00', 6, 'bvok', '9.jpg'),
(7, 'sam', 'bodar', 'bodar14', 'sam@132', '8200432619', 'sam12@gmail.com', '0000-00-00', 7, 'bca', '8.jpg'),
(8, 'parth', 'shah', 'shahparth', 'parth123', '9978648010', 'parth12@gmail.com', '0000-00-00', 8, 'it', '7.jpg'),
(9, 'kinjal', 'patel', 'patel23', 'patel1987', '8128270926', 'kin67@gmail.com', '0000-00-00', 9, 'mtech', '10.jpg'),
(10, 'jeel', 'mehta', 'mehtajeel12', 'mehta345', '123499443', 'mehta34@gmai.com', '0000-00-00', 10, 'mtech', '6.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `usertechnology`
--

CREATE TABLE `usertechnology` (
  `usertechid` int(30) NOT NULL,
  `userid` int(30) NOT NULL,
  `technoid` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projectdata`
--
ALTER TABLE `projectdata`
  ADD PRIMARY KEY (`projid`);

--
-- Indexes for table `projectstatus`
--
ALTER TABLE `projectstatus`
  ADD PRIMARY KEY (`psid`);

--
-- Indexes for table `projecttechnology`
--
ALTER TABLE `projecttechnology`
  ADD PRIMARY KEY (`projtechnoid`);

--
-- Indexes for table `projemployee`
--
ALTER TABLE `projemployee`
  ADD PRIMARY KEY (`projempid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`taskid`);

--
-- Indexes for table `taskfile`
--
ALTER TABLE `taskfile`
  ADD PRIMARY KEY (`taskfileid`);

--
-- Indexes for table `technology`
--
ALTER TABLE `technology`
  ADD PRIMARY KEY (`technoid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `usertechnology`
--
ALTER TABLE `usertechnology`
  ADD PRIMARY KEY (`usertechid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projectdata`
--
ALTER TABLE `projectdata`
  MODIFY `projid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projectstatus`
--
ALTER TABLE `projectstatus`
  MODIFY `psid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `projecttechnology`
--
ALTER TABLE `projecttechnology`
  MODIFY `projtechnoid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projemployee`
--
ALTER TABLE `projemployee`
  MODIFY `projempid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `taskid` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taskfile`
--
ALTER TABLE `taskfile`
  MODIFY `taskfileid` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `technology`
--
ALTER TABLE `technology`
  MODIFY `technoid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `usertechnology`
--
ALTER TABLE `usertechnology`
  MODIFY `usertechid` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
