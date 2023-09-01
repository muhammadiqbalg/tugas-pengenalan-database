-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2023 at 03:56 PM
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

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2309007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
