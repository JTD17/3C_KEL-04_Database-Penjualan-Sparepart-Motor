-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2020 at 10:06 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sparepart_motor`
--

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(20) NOT NULL,
  `nama_kategori` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(1, 'Sparepart Standar'),
(2, 'Pelumas'),
(3, 'Ban / Velg Motor'),
(4, 'Aksesoris Motor');

-- --------------------------------------------------------

--
-- Table structure for table `merk_spd`
--

CREATE TABLE `merk_spd` (
  `id_merk_spd` int(20) NOT NULL,
  `nama_merk` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `merk_spd`
--

INSERT INTO `merk_spd` (`id_merk_spd`, `nama_merk`) VALUES
(1, 'Yamaha'),
(2, 'Honda'),
(3, 'Suzuki'),
(4, 'Kawasaki');

-- --------------------------------------------------------

--
-- Table structure for table `sparepart`
--

CREATE TABLE `sparepart` (
  `id_sparepart` int(20) NOT NULL,
  `nama_sparepart` varchar(30) NOT NULL,
  `harga` varchar(30) NOT NULL,
  `id_kategori` int(20) NOT NULL,
  `id_merk_spd` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sparepart`
--

INSERT INTO `sparepart` (`id_sparepart`, `nama_sparepart`, `harga`, `id_kategori`, `id_merk_spd`) VALUES
(1, 'Air Filter CS1 Buana', 'Rp 17.575', 1, 1),
(2, 'Air Filter Mega Pro Buana', 'Rp 18.525', 1, 2),
(3, 'Air Filter Jupiter Z1 Buana', 'Rp 20.900', 1, 1),
(4, 'Air Filter Honda Beat Buana', 'Rp 23.325', 1, 2),
(5, 'Air Filter Satria F150 Buana', 'Rp 21.850', 1, 3),
(6, 'Air Filter GSX-R150 Buana', 'Rp 25.675', 1, 3),
(7, 'Air Filter KLX 150 Buana', 'Rp 22.325', 1, 4),
(8, 'Air Filter Ninja 250 Buana', 'Rp 32.150', 1, 4),
(9, 'Carbon Cleaner Yamalube', 'Rp 32.000', 2, 1),
(10, 'Oli 0.8 L Yamalube', 'Rp 40.000', 2, 1),
(11, 'Oli American V Twin 50 1L', 'Rp 190.000', 2, 2),
(12, 'Oli Brake fluid Dot 3', 'Rp 10.000', 2, 2),
(13, 'Oli Max 2T Super 0.8 L', 'Rp 38.950', 2, 3),
(14, 'Oli Max Go 4T Racing 0.8 L', 'Rp 40.375', 2, 3),
(15, 'Oli Mesin Motor VR70 4T 1L', 'Rp 185.000', 2, 4),
(16, 'Oli Mesin Motor VR8 2T 1L', 'Rp 350.000', 2, 4),
(17, 'Ban 100/70-17 M1 Tubeless', 'Rp 393.000', 3, 1),
(18, 'Ban 120/70-17 M1 Tubeless', 'Rp 522.750', 3, 1),
(19, 'Ban 80/80-17 M1 Tube Type', 'Rp 240.000', 3, 2),
(20, 'Ban 50/90-17 M1 Tube Type', 'Rp 139.200', 3, 2),
(21, 'Ban 60/80-17 M1 Tube Type', 'Rp 144.800', 3, 3),
(22, 'Ban 70/80-17 M1 Tube Type', 'Rp 172.000', 3, 3),
(23, 'Ban Tubeless Victra 100/80-14', 'Rp 288.000', 3, 4),
(24, 'Ban Tubeless Victra 110/80-14', 'Rp 329.000', 3, 4),
(25, 'Air Flow Jacket Riding Cool', 'Rp 130.000', 4, 1),
(26, 'Aksesoris Air Filter Cover', 'Rp 424.576', 4, 1),
(27, 'Aksesoris Body Leg Beat', 'Rp 296.800', 4, 2),
(28, 'Aksesoris Body Tank Beat', 'Rp 119.000', 4, 2),
(29, 'Baut Body KLX Brown', 'Rp 195.500', 4, 4),
(30, 'Baut Body KLX Gold Cyber', 'Rp 195.500', 4, 4),
(31, 'Body Kit Full Set YZ85 TDR', 'Rp 1.482.800', 4, 3),
(32, 'Baut Spion Suzuki Biru', 'Rp 8.000', 4, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `merk_spd`
--
ALTER TABLE `merk_spd`
  ADD PRIMARY KEY (`id_merk_spd`);

--
-- Indexes for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD PRIMARY KEY (`id_sparepart`),
  ADD KEY `id_kategori` (`id_kategori`),
  ADD KEY `id_merk_spd` (`id_merk_spd`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merk_spd`
--
ALTER TABLE `merk_spd`
  MODIFY `id_merk_spd` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sparepart`
--
ALTER TABLE `sparepart`
  MODIFY `id_sparepart` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sparepart`
--
ALTER TABLE `sparepart`
  ADD CONSTRAINT `sparepart_ibfk_1` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`),
  ADD CONSTRAINT `sparepart_ibfk_2` FOREIGN KEY (`id_merk_spd`) REFERENCES `merk_spd` (`id_merk_spd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
