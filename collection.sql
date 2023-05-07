-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 20, 2022 at 07:04 AM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `collection`
--
ALTER TABLE `collection`
  ADD PRIMARY KEY (`date`,`time`,`ssn`,`type`),
  ADD KEY `ssn` (`ssn`);

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
