-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 03, 2019 at 08:59 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas_oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `nama_data`
--

CREATE TABLE `nama_data` (
  `no` int(10) NOT NULL,
  `barang` varchar(20) NOT NULL,
  `status` int(10) NOT NULL,
  `kondisi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nama_data`
--

INSERT INTO `nama_data` (`no`, `barang`, `status`, `kondisi`) VALUES
(1, 'Monitor', 1, 0),
(2, 'Keyboard', 1, 0),
(3, 'Mouse', 1, 1),
(4, 'CPU', 0, 1),
(5, 'Printer', 1, 2),
(6, 'Scanner', 0, 2),
(7, 'Harddisk', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `nama_referensi`
--

CREATE TABLE `nama_referensi` (
  `no` int(10) NOT NULL,
  `kode` varchar(20) NOT NULL,
  `nilai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nama_referensi`
--

INSERT INTO `nama_referensi` (`no`, `kode`, `nilai`) VALUES
(0, 'Status', 'Bekas'),
(1, 'Status', 'Baru'),
(0, 'Kondisi', 'Baik'),
(1, 'Kondisi', 'Rusak Ringan'),
(2, 'Kondisi', 'Rusak Sedang'),
(3, 'Kondisi', 'Rusak Berat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nama_data`
--
ALTER TABLE `nama_data`
  ADD PRIMARY KEY (`no`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
