-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2024 at 05:47 AM
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
-- Table structure for table `sonmoi`
--

CREATE TABLE `sonmoi` (
  `mahang` int(9) NOT NULL,
  `mau` varchar(50) NOT NULL,
  `nhaCC` varchar(50) NOT NULL,
  `gia` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sonmoi`
--

INSERT INTO `sonmoi` (`mahang`, `mau`, `nhaCC`, `gia`) VALUES
(1, 'San hô', '3CE', 300000),
(2, 'Đỏ đất', 'BBIA', 150000),
(3, 'Hồng cánh sen', 'Black Rouge', 350000),
(4, 'San hô', 'Merzy', 200000),
(5, 'Đỏ cam', 'Innisfree', 170000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sonmoi`
--
ALTER TABLE `sonmoi`
  ADD PRIMARY KEY (`mahang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sonmoi`
--
ALTER TABLE `sonmoi`
  MODIFY `mahang` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
