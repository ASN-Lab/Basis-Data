-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2025 at 10:00 AM
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
-- Database: `tugasmodul4_dbms_2420506031`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodata`
--

CREATE TABLE `biodata` (
  `NPM` char(5) NOT NULL,
  `Nama` varchar(25) NOT NULL,
  `Tempat_Lahir` varchar(30) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Jenis_Kelamin` enum('L','P') NOT NULL,
  `No_Hp` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biodata`
--

INSERT INTO `biodata` (`NPM`, `Nama`, `Tempat_Lahir`, `Tanggal_Lahir`, `Jenis_Kelamin`, `No_Hp`) VALUES
('06036', 'Aulia Rahman', 'Bandung', '2005-03-15', 'L', '081234567890'),
('06037', 'Nina Sari', 'Jakarta', '2005-07-22', 'P', '082345678901'),
('06038', 'Fajar P. Prasetyo', 'Surabaya', '2006-01-10', 'L', '083456789012'),
('06039', 'Diana Putri', 'Bali', '2005-11-05', 'P', '084567890123'),
('06040', 'Rizky Aditya', 'Medan', '2005-12-25', 'L', '085678901234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodata`
--
ALTER TABLE `biodata`
  ADD PRIMARY KEY (`NPM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
