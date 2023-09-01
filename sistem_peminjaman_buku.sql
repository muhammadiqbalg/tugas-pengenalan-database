-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 04:29 PM
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
-- Database: `sistem_peminjaman_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `alamat`, `created_at`, `updated_at`) VALUES
(2309001, 'Muhammad Iqbal Gobel', 'Kota Administrasi Jakarta Timur, DKI Jakarta', '2023-09-01 13:43:20', '2023-09-01 13:44:36'),
(2309002, 'Amadeo Arlen', 'Bekasi, Jawa Barat', '2023-09-01 13:44:08', '2023-09-01 13:44:08'),
(2309003, 'Kevin Febri', 'Depok, Jawa Barat', '2023-09-01 13:45:25', '2023-09-01 13:45:25'),
(2309004, 'Muhamad Ridwan', 'Bekasi, Jawa Barat', '2023-09-01 13:46:18', '2023-09-01 13:46:18'),
(2309005, 'Muhammad Aljabbaar', 'Bojong gede, Bogor, Jawa Barat', '2023-09-01 13:47:16', '2023-09-01 13:47:16'),
(2309006, 'Rofyan Luthfi Mafaza', 'Depok, Jawa Barat', '2023-09-01 13:48:14', '2023-09-01 13:48:14');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id` int(11) NOT NULL,
  `judul_buku` varchar(150) NOT NULL,
  `pengarang_buku` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id`, `judul_buku`, `pengarang_buku`, `created_at`, `updated_at`) VALUES
(20230901, 'A Brief Survey of Cloud Computing', 'H. Alzahrani', '2023-09-01 13:38:39', '2023-09-01 13:38:39'),
(20230902, 'Evaluating frameworks for creating mobile web apps', 'H. Heitkötter, T. A. Majchrzak, B. Ruland, and T. Weber', '2023-09-01 13:39:36', '2023-09-01 13:39:36'),
(20230903, 'Android Application on E-Ticketing Railway System Using Qr-Code', 'V. Maheshwar, K. Patil, A. Maredia, and A. Waghmar', '2023-09-01 13:41:50', '2023-09-01 13:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `id` int(11) NOT NULL,
  `anggota_id` int(11) DEFAULT NULL,
  `buku_id` int(11) DEFAULT NULL,
  `tanggal_peminjaman` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `update_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`id`, `anggota_id`, `buku_id`, `tanggal_peminjaman`, `tanggal_pengembalian`, `created_at`, `update_at`) VALUES
(23090101, 2309002, 20230902, '2023-09-01', '2023-09-07', '2023-09-01 13:49:56', '2023-09-01 13:51:12'),
(23090102, 2309001, 20230903, '2023-09-01', '2023-09-07', '2023-09-01 13:50:55', '2023-09-01 13:50:55'),
(23090103, 2309006, 20230902, '2023-09-01', '2023-09-07', '2023-09-01 13:52:05', '2023-09-01 13:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`id`),
  ADD KEY `anggota_id` (`anggota_id`),
  ADD KEY `buku_id` (`buku_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2309007;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20230904;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23090104;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD CONSTRAINT `peminjaman_ibfk_1` FOREIGN KEY (`anggota_id`) REFERENCES `anggota` (`id`),
  ADD CONSTRAINT `peminjaman_ibfk_2` FOREIGN KEY (`buku_id`) REFERENCES `buku` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
