-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 10, 2021 at 01:13 AM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ims506`
--

-- --------------------------------------------------------

--
-- Table structure for table `kereta`
--

CREATE TABLE `kereta` (
  `idKereta` int(12) NOT NULL,
  `idPelanggan` int(12) NOT NULL,
  `kereta` varchar(20) NOT NULL,
  `plat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kereta`
--

INSERT INTO `kereta` (`idKereta`, `idPelanggan`, `kereta`, `plat`) VALUES
(1, 1, 'Ferrari', 'KKK101'),
(2, 2, 'Proton', 'PPP123'),
(3, 1, 'Kuda', 'KKK10');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idPelanggan` int(12) NOT NULL,
  `namaSendiri` varchar(200) NOT NULL,
  `namaBapa` varchar(200) NOT NULL,
  `register` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idPelanggan`, `namaSendiri`, `namaBapa`, `register`) VALUES
(1, 'ahmed noor kader mustajir', 'md eusoff', '2021-06-06 02:55:42'),
(2, 'ali john', 'elthon', '2021-06-06 02:55:42'),
(3, 'John', 'Doe', '2021-06-06 06:28:11'),
(5, 'hello', 'too', '2021-06-06 06:52:23'),
(9, 'test2', 'test2', '2021-06-06 07:06:00'),
(13, 'ftf', 'frtt', '2021-06-06 07:21:26'),
(14, 'donnie', 'yen', '2021-06-06 07:26:06'),
(15, 'qwert', 'qwser', '2021-06-06 07:39:55'),
(18, 'edrtg', 'aswer', '2021-06-06 07:44:07'),
(21, 'qaser', 'saw', '2021-06-06 08:16:31'),
(22, 'yup', 'qun', '2021-06-06 08:19:47'),
(23, 'ff', 'qq', '2021-06-06 08:21:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kereta`
--
ALTER TABLE `kereta`
  ADD PRIMARY KEY (`idKereta`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idPelanggan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kereta`
--
ALTER TABLE `kereta`
  MODIFY `idKereta` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idPelanggan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
