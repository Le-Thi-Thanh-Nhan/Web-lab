-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2024 at 05:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qlbh`
--

-- --------------------------------------------------------

--
-- Table structure for table `tuixach`
--

CREATE TABLE `tuixach` (
  `matui` int(9) NOT NULL,
  `tentui` varchar(50) NOT NULL,
  `hangsx` varchar(50) NOT NULL,
  `gia` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tuixach`
--

INSERT INTO `tuixach` (`matui`, `tentui`, `hangsx`, `gia`) VALUES
(1, 'Túi đeo vai da cá sấu', 'JUNO', 3000000),
(2, 'Túi xách da', 'STYLUK', 2000000),
(3, 'Ba lô vải thô', 'Vascara', 500000),
(4, 'Túi xách da cá sấu', 'NEYUH Leather', 5000000),
(5, 'Ba lô da', 'Ralph Lauren', 400000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tuixach`
--
ALTER TABLE `tuixach`
  ADD PRIMARY KEY (`matui`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tuixach`
--
ALTER TABLE `tuixach`
  MODIFY `matui` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
