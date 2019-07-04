-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 26, 2019 at 03:43 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tiket`
--

-- --------------------------------------------------------

--
-- Table structure for table `keretaapi`
--

CREATE TABLE IF NOT EXISTS `keretaapi` (
  `kode_kai` varchar(20) NOT NULL,
  `nama_kai` varchar(20) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `jenis_kereta` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keretaapi`
--

INSERT INTO `keretaapi` (`kode_kai`, `nama_kai`, `jurusan`, `jenis_kereta`) VALUES
('HAI002', 'PRAMEKS', 'SMG-SOC', 'BISNIS'),
('HAI003', 'JOGLOSEMARKERTO', 'SOC-JOG', 'EKONOMI'),
('HAI004', 'MAHARANI', 'SMG-SOC', 'BISNIS');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE IF NOT EXISTS `pembelian` (
`id_pembelian` int(10) unsigned NOT NULL,
  `no_identitas` int(10) unsigned NOT NULL,
  `harga` int(10) unsigned DEFAULT NULL,
  `jumlah` int(10) unsigned DEFAULT NULL,
  `total_harga` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `no_identitas`, `harga`, `jumlah`, `total_harga`) VALUES
(1, 200170079, 10000, 3, 30000),
(2, 200170082, 20000, 3, 60000),
(3, 20017085, 50000, 3, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `penumpang`
--

CREATE TABLE IF NOT EXISTS `penumpang` (
  `identitas` varchar(20) NOT NULL,
  `no_identitas` int(10) unsigned NOT NULL,
  `kode_kai` varchar(20) NOT NULL,
  `nama_penumpang` varchar(20) DEFAULT NULL,
  `tgl_lahir` varchar(20) DEFAULT NULL,
  `alamat` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penumpang`
--

INSERT INTO `penumpang` (`identitas`, `no_identitas`, `kode_kai`, `nama_penumpang`, `tgl_lahir`, `alamat`) VALUES
('KTP', 200170079, 'HAI001', 'Haiqal', '6 Aug  1999', 'Peklaongan'),
('KTP', 200170082, 'HAI002', 'Aji Prastyo', '14 Feb  1999', 'Palembang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keretaapi`
--
ALTER TABLE `keretaapi`
 ADD PRIMARY KEY (`kode_kai`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
 ADD PRIMARY KEY (`id_pembelian`), ADD KEY `pembelian_FKIndex1` (`no_identitas`);

--
-- Indexes for table `penumpang`
--
ALTER TABLE `penumpang`
 ADD PRIMARY KEY (`no_identitas`), ADD KEY `penumpang_FKIndex1` (`kode_kai`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
MODIFY `id_pembelian` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
