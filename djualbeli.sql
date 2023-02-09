-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 11:17 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `djualbeli`
--

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `id` int(10) NOT NULL,
  `BrandName` varchar(15) NOT NULL,
  `GroupModelName` varchar(15) NOT NULL,
  `ModelName` varchar(15) NOT NULL,
  `Year` year(4) NOT NULL,
  `Price` int(20) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`id`, `BrandName`, `GroupModelName`, `ModelName`, `Year`, `Price`, `createdAt`) VALUES
(1, 'Toyota', 'Avanza', '1.3 E MT', 2015, 110000000, '0000-00-00 00:00:00'),
(2, 'Toyota', 'Avanza', '1.3 E AT', 2015, 115000000, '0000-00-00 00:00:00'),
(3, 'Toyota', 'Agya', '1.0 L MT', 2015, 88500000, '0000-00-00 00:00:00'),
(4, 'Volkswagen', 'Tiguan', '1.4 TFSI AT', 2015, 213000000, '0000-00-00 00:00:00'),
(5, 'BMW', 'X1', 'F48 sDrive18i X', 2016, 410000000, '0000-00-00 00:00:00'),
(6, 'Honda', 'HR-V', '1.8 E Prestige', 2016, 259000000, '0000-00-00 00:00:00'),
(7, 'Lexus', 'LX', '570 J200 SUV AT', 2009, 1250000000, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` varchar(10) NOT NULL,
  `id_transaksi` varchar(10) NOT NULL,
  `term` int(10) NOT NULL,
  `jumlahTagihan` int(25) NOT NULL,
  `jumlahPembayaran` int(25) NOT NULL,
  `sisaPembayaran` int(25) NOT NULL,
  `tanggalInvoice` datetime NOT NULL,
  `tanggalTerakhirBayar` datetime NOT NULL,
  `status` varchar(15) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `deletedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `id_transaksi`, `term`, `jumlahTagihan`, `jumlahPembayaran`, `sisaPembayaran`, `tanggalInvoice`, `tanggalTerakhirBayar`, `status`, `createdAt`, `updatedAt`, `deletedAt`) VALUES
('INV0001', 'CUST0001', 1, 610000000, 0, 100000000, '1970-01-01 00:00:00', '1970-01-01 00:00:00', 'MENUNGGU', '2023-02-09 21:15:10', '2023-02-09 21:15:10', '1970-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `leasing`
--

CREATE TABLE `leasing` (
  `id` varchar(10) NOT NULL,
  `LeasingName` varchar(15) NOT NULL,
  `Rates` float NOT NULL,
  `Terms` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `leasing`
--

INSERT INTO `leasing` (`id`, `LeasingName`, `Rates`, `Terms`) VALUES
('L001', 'Clipan Finance', 0.12, 12),
('L002', 'BFI', 0.1, 6),
('L003', 'SMS Finance', 0.15, 12);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `id_payment` int(10) NOT NULL,
  `id_invoice` varchar(10) NOT NULL,
  `jumlahBayar` int(25) NOT NULL,
  `jumlahTagihan` int(25) NOT NULL,
  `sisaPembayaran` int(25) NOT NULL,
  `createdAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id_payment`, `id_invoice`, `jumlahBayar`, `jumlahTagihan`, `sisaPembayaran`, `createdAt`) VALUES
(1, '1', 20000000, 20000000, 0, '2023-02-09 18:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `id_leasing` varchar(5) NOT NULL,
  `id_mobil` int(10) NOT NULL,
  `term` int(5) NOT NULL,
  `harga` int(25) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `username`, `id_leasing`, `id_mobil`, `term`, `harga`, `status`) VALUES
(1, 'test', 'L001', 1, 6, 50000000, 'ongoing');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `balance` int(25) DEFAULT 0,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `balance`, `createdAt`, `updatedAt`) VALUES
('Bob', '1111', 100000000, '2023-02-09 21:36:39', '2023-02-09 21:40:37'),
('Cintya', '33333', 10000000, '2023-02-09 21:37:13', '2023-02-09 21:39:44'),
('Kray', '2222', 0, '2023-02-09 21:36:30', '2023-02-09 21:36:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id_payment`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
