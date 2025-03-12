-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2025 at 05:16 PM
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
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jurusan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `jurusan`) VALUES
(1, 'Andi', 'Teknologi Informasi'),
(2, 'Budi', 'Teknologi Informasi'),
(3, 'Citra', 'Teknologi Informasi'),
(4, 'Dewi', 'Teknologi Informasi'),
(5, 'Eko', 'Teknologi Informasi'),
(6, 'Fajar', 'Teknologi Informasi'),
(7, 'Gita', 'Teknologi Informasi'),
(8, 'Hendra', 'Teknologi Informasi'),
(9, 'Ika', 'Teknik Elektro'),
(10, 'Joko', 'Teknik Elektro'),
(11, 'Kirana', 'Teknik Elektro'),
(12, 'Lina', 'Teknik Elektro'),
(13, 'Maya', 'Teknik Elektro'),
(14, 'Nugroho', 'Teknik Elektro'),
(15, 'Oka', 'Teknik Mekatronika'),
(16, 'Putri', 'Teknik Mekatronika'),
(17, 'Rizky', 'Teknik Mekatronika'),
(18, 'Sari', 'Teknik Mekatronika'),
(19, 'Tari', 'Teknik Mekatronika'),
(20, 'Umar', 'Teknik Mekatronika');

-- --------------------------------------------------------

--
-- Table structure for table `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `id_mata_kuliah` int(11) NOT NULL,
  `nama_mata_kuliah` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`id_mata_kuliah`, `nama_mata_kuliah`) VALUES
(1, 'Basis Data'),
(2, 'Elektronika Dasar'),
(3, 'Probabilitas dan Statistika');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL,
  `id_mahasiswa` int(11) DEFAULT NULL,
  `id_mata_kuliah` int(11) DEFAULT NULL,
  `nilai` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id_nilai`, `id_mahasiswa`, `id_mata_kuliah`, `nilai`) VALUES
(1, 1, 1, 85.00),
(2, 1, 2, 90.00),
(3, 2, 1, 78.00),
(4, 2, 3, 88.00),
(5, 3, 2, 92.00),
(6, 3, 1, 75.00),
(7, 4, 1, 80.00),
(8, 4, 2, 95.00),
(9, 5, 3, 70.00),
(10, 5, 1, 88.00),
(11, 6, 2, 82.00),
(12, 6, 3, 91.00),
(13, 7, 1, 76.00),
(14, 7, 2, 89.00),
(15, 8, 3, 84.00),
(16, 8, 1, 90.00),
(17, 9, 2, 88.00),
(18, 9, 1, 79.00),
(19, 10, 3, 85.00),
(20, 10, 2, 92.00),
(21, 11, 1, 81.00),
(22, 11, 2, 87.00),
(23, 12, 3, 90.00),
(24, 12, 1, 78.00),
(25, 13, 2, 82.00),
(26, 13, 3, 88.00),
(27, 14, 1, 75.00),
(28, 14, 2, 80.00),
(29, 15, 3, 92.00),
(30, 15, 1, 85.00),
(31, 16, 2, 78.00),
(32, 16, 3, 81.00),
(33, 17, 1, 90.00),
(34, 17, 2, 88.00),
(35, 18, 3, 84.00),
(36, 18, 1, 76.00),
(37, 19, 2, 89.00),
(38, 19, 1, 82.00),
(39, 20, 3, 91.00),
(40, 20, 2, 87.00);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category`, `price`) VALUES
(1, 'Laptop A', 'Electronics', 1200.00),
(2, 'Smartphone B', 'Electronics', 800.00),
(3, 'Tablet C', 'Electroniccs', 500.00),
(4, 'Shirt D', 'Clothing', 25.00),
(5, 'Jeans E', 'Clothing', 45.00),
(6, 'Shoes F', 'Clothing', 60.00),
(7, 'Book G', 'Books', 15.00),
(8, 'Notebook H', 'Books', 10.00),
(9, 'Pen I', 'Stationery', 2.00),
(10, 'Pencil J', 'Stationery', 1.50);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`id_mata_kuliah`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_mata_kuliah` (`id_mata_kuliah`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  MODIFY `id_mata_kuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id_nilai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `nilai_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`),
  ADD CONSTRAINT `nilai_ibfk_2` FOREIGN KEY (`id_mata_kuliah`) REFERENCES `mata_kuliah` (`id_mata_kuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
