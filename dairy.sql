-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 07:05 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairy`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `getallcustomerinfo` ()  BEGIN
       SELECT * FROM CUSTOMER;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bratechart`
--

CREATE TABLE `bratechart` (
  `bfat` double NOT NULL,
  `brate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bratechart`
--

INSERT INTO `bratechart` (`bfat`, `brate`) VALUES
(6.1, 30),
(6.2, 35),
(6.3, 40),
(6.4, 45),
(6.5, 50),
(6.6, 55),
(6.7, 60),
(6.8, 65),
(6.9, 75),
(7, 1000),
(7.1, 80),
(7.2, 90);

-- --------------------------------------------------------

--
-- Table structure for table `collection`
--

CREATE TABLE `collection` (
  `date` date NOT NULL,
  `time` varchar(20) NOT NULL,
  `ssn` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `qty` double NOT NULL,
  `fat` double NOT NULL,
  `rate` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `collection`
--

INSERT INTO `collection` (`date`, `time`, `ssn`, `type`, `qty`, `fat`, `rate`, `total`) VALUES
('0000-00-00', 'Evening', 8, 'Buffalo', 30, 7.2, 90, 2700),
('2021-10-30', 'Evening', 1, 'Buffalo', 15, 6.5, 50, 750),
('2021-10-30', 'Evening', 2, 'Buffalo', 25, 6.6, 55, 1375),
('2021-10-30', 'Morning', 1, 'Buffalo', 10, 6.1, 30, 300),
('2021-10-30', 'Morning', 2, 'Buffalo', 15, 6.4, 45, 675),
('2021-10-30', 'Morning', 3, 'Cow', 25, 5.5, 20, 500),
('2021-10-31', 'Evening', 1, 'Buffalo', 30, 6.6, 55, 1650),
('2021-10-31', 'Morning', 1, 'Buffalo', 20, 6.4, 45, 900),
('2022-02-10', 'Evening', 9, 'Cow', 10, 6.1, 50, 500),
('2022-02-10', 'Morning', 5, 'Buffalo', 20, 7.1, 80, 1600);

-- --------------------------------------------------------

--
-- Table structure for table `cratechart`
--

CREATE TABLE `cratechart` (
  `cfat` double NOT NULL,
  `crate` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cratechart`
--

INSERT INTO `cratechart` (`cfat`, `crate`) VALUES
(5.5, 20),
(5.6, 25),
(5.7, 30),
(5.8, 35),
(5.9, 40),
(6, 45),
(6.1, 50),
(6.2, 55);

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ssn` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `type` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ssn`, `name`, `address`, `type`) VALUES
(1, 'Md. Tanvir Hasan', 'Tangail', 'Buffalo'),
(2, 'MD. Mahedy Hassan', 'Gazipur', 'Buffalo'),
(3, 'Mehrab Hasan', 'Sirajganj', 'Cow'),
(4, 'Shakil Ahmed', 'Bogura', 'Cow'),
(5, 'MD. SHAKIL MIA', 'Rangpur', 'Buffalo'),
(6, 'MD. Abu Sayem', 'Dhaka', 'Cow'),
(7, 'MD. Rowshan Kabir', 'Rangpur', 'Cow'),
(8, 'Nusrat Jahan Akhi', 'Bogura', 'Buffalo'),
(9, 'Mehedi Hasan Emon', 'Bogura', 'Cow');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `password`) VALUES
('group_3', '3949');

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewbill`
-- (See below for the actual view)
--
CREATE TABLE `viewbill` (
`name` varchar(20)
,`date` date
,`time` varchar(20)
,`ssn` int(11)
,`type` varchar(20)
,`qty` double
,`fat` double
,`rate` double
,`total` double
);

-- --------------------------------------------------------

--
-- Structure for view `viewbill`
--
DROP TABLE IF EXISTS `viewbill`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewbill`  AS SELECT `cu`.`name` AS `name`, `co`.`date` AS `date`, `co`.`time` AS `time`, `co`.`ssn` AS `ssn`, `co`.`type` AS `type`, `co`.`qty` AS `qty`, `co`.`fat` AS `fat`, `co`.`rate` AS `rate`, `co`.`total` AS `total` FROM (`customer` `cu` join `collection` `co` on(`cu`.`ssn` = `co`.`ssn`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bratechart`
--
ALTER TABLE `bratechart`
  ADD PRIMARY KEY (`bfat`);

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`date`,`time`,`ssn`,`type`),
  ADD KEY `ssn` (`ssn`);

--
-- Indexes for table `cratechart`
--
ALTER TABLE `cratechart`
  ADD PRIMARY KEY (`cfat`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ssn`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `collection`
--
ALTER TABLE `collection`
  ADD CONSTRAINT `collection_ibfk_1` FOREIGN KEY (`ssn`) REFERENCES `customer` (`ssn`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
