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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ssn`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
