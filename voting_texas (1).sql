-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2023 at 03:01 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `voting_texas`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tingkat` varchar(10) NOT NULL,
  `kelas` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `max_time` datetime NOT NULL,
  `role` enum('voter','admin') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id_akun`, `nis`, `nama`, `tingkat`, `kelas`, `username`, `password`, `status`, `max_time`, `role`) VALUES
(11, 2105954, 'RACHARDIAN BAGASKORO', 'XII', 'RPL 1', 'FlyMaker771', 'RDNnet304', 'Belum Vote', '2034-03-22 19:40:29', 'admin'),
(12, 1234567, 'qwerty1', 'XI', 'TKRO 1', 'qwerty1', 'qwerty1', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(13, 87574633, 'qwerty2', 'XII', 'RPL 1', 'qwerty2', 'qwerty2', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(14, 234678765, 'qwerty10', 'X', 'RPL 2', 'qwerty10', 'qwerty10', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(15, 98765678, 'qwerty3', 'X', 'TM 1', 'qwerty3', 'qwerty3', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(16, 123412331, 'qwerty4', 'XI', 'TBO 1', 'qwerty4', 'qwerty4', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(17, 67890453, 'qwerty5', 'XII', 'TMI 2', 'qwerty5', 'qwerty5', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(18, 326106543, 'qwerty6', 'X', 'RPL 3', 'qwerty6', 'qwerty6', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(19, 123123434, 'qwerty7', 'XI', 'TM 2', 'qwerty7', 'qwerty7', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(20, 98908787, 'qwerty8', 'XI', 'TMI 3', 'qwerty8', 'qwerty8', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(21, 792374274, 'qwerty9', 'XI', 'TKRO 3', 'qwerty9', 'qwerty9', 'Sudah Vote', '2023-10-31 19:53:06', 'voter'),
(22, 156132013, 'qwerty11', 'XII', 'RPL 2', 'qwerty11', 'qwerty11', 'Sudah Vote', '2023-10-31 20:01:39', 'voter'),
(23, 54357669, 'qwerty12', 'XII', 'RPL 1', 'qwerty12', 'qwerty12', 'Sudah Vote', '2023-10-31 20:01:39', 'voter'),
(24, 345676512, 'qwerty13', 'X', 'TMI 3', 'qwerty13', 'qwerty13', 'Sudah Vote', '2023-10-31 20:01:39', 'voter'),
(25, 902384012, 'qwerty14', 'XII', 'TM 1', 'qwerty14', 'qwerty14', 'Sudah Vote', '2023-10-31 20:01:39', 'voter'),
(26, 123456789, 'tes', 'XI', 'RPL 1', 'tes', 'tes', 'Sudah Vote', '2024-07-31 20:11:15', 'voter'),
(27, 1221, 'tes update', 'X', 'TKRO 1', 'tes update', 'tes update', 'Sudah Vote', '2023-11-06 08:23:14', 'voter'),
(28, 1222, 'tes akhir', 'X', 'RPL 1', 'tes akhir', 'tes akhir', 'Sudah Vote', '2023-11-07 08:26:10', 'voter'),
(29, 1223, 'testing', 'XI', 'TM 1', 'testing', 'testing', 'Belum Vote', '2023-11-07 08:32:04', 'voter'),
(30, 1224, 'test api', 'XI', 'TBO 2', 'test api', 'test api', 'Belum Vote', '2023-11-07 08:32:04', 'voter');

-- --------------------------------------------------------

--
-- Table structure for table `kandidat`
--

CREATE TABLE `kandidat` (
  `id_kandidat` int(11) NOT NULL,
  `nis` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kandidat`
--

INSERT INTO `kandidat` (`id_kandidat`, `nis`, `nama`, `visi`, `misi`, `foto`) VALUES
(15, 2105954, 'RACHARDIAN BAGASKORO', 'SUKSES', 'BERTARUNG MATI MATIAN', '1698583823_2d0b76c2ce792a5cdcf4.png'),
(16, 2105956, 'RAFI ARIZ RAHMAL', 'MEMBARA', 'HIDUP JAYA JAYA JAYA', '1699147896_1609cd13070d7e711bbd.jpg'),
(17, 2105948, 'RAFLY ALFIANSYAH', 'YOI LAH', 'APA AJA LAH YAA', '1698584729_da59c09a7fa8581d32ba.png'),
(18, 2105933, 'GABRIEL ANTA WIJANADIRDA', 'APA AJA', 'YANG PENTING JADI', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `log_voters`
--

CREATE TABLE `log_voters` (
  `id` int(11) NOT NULL,
  `id_akun` int(11) NOT NULL,
  `id_kandidat` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log_voters`
--

INSERT INTO `log_voters` (`id`, `id_akun`, `id_kandidat`, `value`) VALUES
(18, 12, 15, 1),
(19, 13, 15, 1),
(20, 15, 15, 1),
(21, 16, 15, 1),
(22, 17, 15, 1),
(23, 18, 15, 1),
(24, 19, 15, 1),
(25, 20, 15, 1),
(26, 21, 15, 1),
(27, 14, 16, 1),
(28, 22, 16, 1),
(29, 23, 17, 1),
(30, 24, 17, 1),
(31, 25, 17, 1),
(32, 26, 18, 1),
(33, 27, 15, 1),
(34, 28, 17, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indexes for table `kandidat`
--
ALTER TABLE `kandidat`
  ADD PRIMARY KEY (`id_kandidat`);

--
-- Indexes for table `log_voters`
--
ALTER TABLE `log_voters`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_akun` (`id_akun`),
  ADD KEY `id_kandidat` (`id_kandidat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `kandidat`
--
ALTER TABLE `kandidat`
  MODIFY `id_kandidat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `log_voters`
--
ALTER TABLE `log_voters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `log_voters`
--
ALTER TABLE `log_voters`
  ADD CONSTRAINT `log_voters_ibfk_1` FOREIGN KEY (`id_akun`) REFERENCES `akun` (`id_akun`),
  ADD CONSTRAINT `log_voters_ibfk_2` FOREIGN KEY (`id_kandidat`) REFERENCES `kandidat` (`id_kandidat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
