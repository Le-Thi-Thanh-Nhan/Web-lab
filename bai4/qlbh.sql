-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2024 at 05:38 AM
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
-- Table structure for table `piano`
--

CREATE TABLE `piano` (
  `mahang` int(9) NOT NULL,
  `hangsx` varchar(50) NOT NULL,
  `chatlieu` varchar(50) NOT NULL,
  `gia` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `piano`
--

INSERT INTO `piano` (`mahang`, `hangsx`, `chatlieu`, `gia`) VALUES
(1, 'Steinway & Sons', 'Gỗ xà cừ', 1000000),
(2, 'Kawai', 'Gỗ trầm hương', 5000000),
(3, 'Yamaha', 'Gỗ cây long não', 10000000),
(4, 'Mason & Hamlin', 'Gỗ hoàng đàn', 20000000),
(5, 'Bechstein', 'Gỗ ngọc am', 15000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `piano`
--
ALTER TABLE `piano`
  ADD PRIMARY KEY (`mahang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `piano`
--
ALTER TABLE `piano`
  MODIFY `mahang` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
