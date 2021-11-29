-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2021 at 03:16 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE `tb_pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `nisn` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `bulan_dibayar` varchar(15) NOT NULL,
  `id_spp` int(11) NOT NULL,
  `keterangan` varchar(5) DEFAULT NULL,
  `id_petugas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`id_pembayaran`, `nisn`, `tgl_bayar`, `bulan_dibayar`, `id_spp`, `keterangan`, `id_petugas`) VALUES
(61, 123, '0000-00-00', 'Januari', 8, NULL, NULL),
(62, 123, '0000-00-00', 'Februari', 8, NULL, NULL),
(63, 123, '0000-00-00', 'Maret', 8, NULL, NULL),
(64, 123, '0000-00-00', 'April', 8, NULL, NULL),
(65, 123, '0000-00-00', 'Mei', 8, NULL, NULL),
(66, 123, '0000-00-00', 'Juni', 8, NULL, NULL),
(67, 123, '0000-00-00', 'Juli', 8, NULL, NULL),
(68, 123, '0000-00-00', 'Agustus', 8, NULL, NULL),
(69, 123, '0000-00-00', 'September', 8, NULL, NULL),
(70, 123, '0000-00-00', 'Oktober', 8, NULL, NULL),
(71, 123, '0000-00-00', 'November', 8, NULL, NULL),
(72, 123, '0000-00-00', 'Desember', 8, NULL, NULL),
(73, 675, '0000-00-00', 'Januari', 5, NULL, NULL),
(74, 675, '0000-00-00', 'Februari', 5, NULL, NULL),
(75, 675, '0000-00-00', 'Maret', 5, NULL, NULL),
(76, 675, '0000-00-00', 'April', 5, NULL, NULL),
(77, 675, '0000-00-00', 'Mei', 5, NULL, NULL),
(78, 675, '0000-00-00', 'Juni', 5, NULL, NULL),
(79, 675, '0000-00-00', 'Juli', 5, NULL, NULL),
(80, 675, '0000-00-00', 'Agustus', 5, NULL, NULL),
(81, 675, '0000-00-00', 'September', 5, NULL, NULL),
(82, 675, '0000-00-00', 'Oktober', 5, NULL, NULL),
(83, 675, '0000-00-00', 'November', 5, NULL, NULL),
(84, 675, '0000-00-00', 'Desember', 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id_petugas` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(60) NOT NULL,
  `nama_petugas` varchar(100) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Plajari Kode', 'Admin'),
(2, 'putra', '670489f94b6997a870b148f74744ee5676304925', 'Putra', 'Petugas');

-- --------------------------------------------------------

--
-- Table structure for table `tb_siswa`
--

CREATE TABLE `tb_siswa` (
  `nisn` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `kelas` varchar(3) NOT NULL,
  `id_spp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_siswa`
--

INSERT INTO `tb_siswa` (`nisn`, `nis`, `nama_lengkap`, `kelas`, `id_spp`) VALUES
(123, 2778, 'putra', 'X', 8),
(675, 2778, 'merdian', 'XII', 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_spp`
--

CREATE TABLE `tb_spp` (
  `id_spp` int(11) NOT NULL,
  `tahun` int(11) NOT NULL,
  `nominal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_spp`
--

INSERT INTO `tb_spp` (`id_spp`, `tahun`, `nominal`) VALUES
(5, 2020, 160000),
(6, 2021, 175000),
(7, 2019, 145000),
(8, 2017, 1500000),
(9, 2021, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `tb_siswa`
--
ALTER TABLE `tb_siswa`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `tb_spp`
--
ALTER TABLE `tb_spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_pembayaran`
--
ALTER TABLE `tb_pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_spp`
--
ALTER TABLE `tb_spp`
  MODIFY `id_spp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
