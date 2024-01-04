-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2024 at 10:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ip_calc`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `Id_Mahasiswa` int(11) NOT NULL,
  `Nama` varchar(255) DEFAULT NULL,
  `NPM` varchar(255) DEFAULT NULL,
  `Jurusan` varchar(255) DEFAULT NULL,
  `Semester` int(50) DEFAULT NULL,
  `IP` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`Id_Mahasiswa`, `Nama`, `NPM`, `Jurusan`, `Semester`, `IP`) VALUES
(2, 'Wahyu', '22130202111', 'Teknik Informatika', 3, NULL),
(7, 'saagi', '24567', 'Teknik Informatika', 3, NULL),
(10, 'hadfoiwfu', '2', 'Teknik Informatika', 3, NULL),
(11, 'dququbfc', '3', 'Teknik Informatika', 3, NULL),
(12, 'Wahyu', '2245', 'Teknik Informatika', 3, NULL),
(15, 'Wahdouh', '2567', 'Teknik Informatika', 3, NULL),
(21, 'Ziks', '22130202', 'Teknik Informatika', 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `Id_MataKuliah` int(11) NOT NULL,
  `Kode` varchar(20) DEFAULT NULL,
  `Nama_Matkul` varchar(255) DEFAULT NULL,
  `SKS` int(20) DEFAULT NULL,
  `Jurusan` varchar(255) DEFAULT NULL,
  `Semester` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`Id_MataKuliah`, `Kode`, `Nama_Matkul`, `SKS`, `Jurusan`, `Semester`) VALUES
(1, 'INF1010', 'Basis Data II', 3, 'Teknik Informatika', 3),
(2, 'INF1011', 'Pemrograman Berorientasi Obyek', 3, 'Teknik Informatika', 3),
(3, 'INF1111', 'Praktikum Pemrograman Berorientasi Obyek', 1, 'Teknik Informatika', 3),
(4, 'INF1012', 'Riset Operasi', 3, 'Teknik Informatika', 3),
(5, 'INF1013', 'Struktur Data', 3, 'Teknik Informatika', 3),
(6, 'INF1113', 'Praktikum Struktur Data', 1, 'Teknik Informatika', 3),
(7, 'INF1110', 'Praktikum Basis Data II', 1, 'Teknik Informatika', 3),
(8, 'UNP1004', 'Bahasa Indonesia Keilmuan', 2, 'Teknik Informatika', 3),
(9, 'FTK1002', 'Technopreneur', 3, 'Teknik Informatika', 3);

-- --------------------------------------------------------

--
-- Table structure for table `nilaiip`
--

CREATE TABLE `nilaiip` (
  `Id_IP` int(11) NOT NULL,
  `Nilai` float DEFAULT NULL,
  `Bobot` float DEFAULT NULL,
  `NHuruf` char(10) DEFAULT NULL,
  `Kelulusan` varchar(255) DEFAULT NULL,
  `Id_Mahasiswa` int(11) NOT NULL,
  `Id_MataKuliah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`Id_Mahasiswa`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`Id_MataKuliah`);

--
-- Indexes for table `nilaiip`
--
ALTER TABLE `nilaiip`
  ADD PRIMARY KEY (`Id_IP`),
  ADD KEY `Id_Mahasiswa` (`Id_Mahasiswa`),
  ADD KEY `Id_MataKuliah` (`Id_MataKuliah`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `Id_Mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `Id_MataKuliah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `nilaiip`
--
ALTER TABLE `nilaiip`
  MODIFY `Id_IP` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `nilaiip`
--
ALTER TABLE `nilaiip`
  ADD CONSTRAINT `nilaiip_ibfk_1` FOREIGN KEY (`Id_Mahasiswa`) REFERENCES `mahasiswa` (`Id_Mahasiswa`),
  ADD CONSTRAINT `nilaiip_ibfk_2` FOREIGN KEY (`Id_MataKuliah`) REFERENCES `matakuliah` (`Id_MataKuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
