-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2019 at 06:11 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang_bank`
--

CREATE TABLE IF NOT EXISTS `cabang_bank` (
  `kode_cabang` varchar(20) NOT NULL,
  `nama_cabang` varchar(45) NOT NULL,
  `alamat_cabang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cabang_bank`
--

INSERT INTO `cabang_bank` (`kode_cabang`, `nama_cabang`, `alamat_cabang`) VALUES
('BRUB', 'Bank Rut Unit Boyolali', 'Jl. Ahmad Yani 45'),
('BRUBE', 'Bank Rut Unit Bengkulu', 'Jl. Dean 63'),
('BRUH', 'Bank Rut Unit Hilih', 'Jl. Untung  32'),
('BRUK', 'Bank Rut Unit Klaten', 'Jl. Suparman 23'),
('BRUKD', 'Bank Rut Unit Kudus', 'Jl. Melati 41'),
('BRUM', 'Bank Rut Unit Makasar', 'Jl. Ahmad  55'),
('BRUP', 'Bank Rut Unit Pekalongan', 'Jl. Riyadi 18'),
('BRUR', 'Bank Rut Unit Riau', 'Jl. Parman 53'),
('BRUS', 'Bank Rut Unit Surakarta', 'Jl. Slamet Riyadi 18'),
('BRUSG', 'Bank Rut Unit Sragen', 'Jl. Ahmad  45'),
('BRUST', 'Bank Rut Unit Salatiga', 'Jl. Parman 23'),
('BRUT', 'Bank Rut Unit Tanggeran', 'Jl. Melati 21'),
('BRUTU', 'Bank Rut Unit Tulungagung', 'Jl. Untung  12'),
('BRUW', 'Bank Rut Unit Wonogiri', 'Jalan A.Yani No.23'),
('BRUY', 'Bank Rut Unit Yogyakarta', 'Jl. Anggrek 21');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah`
--

CREATE TABLE IF NOT EXISTS `nasabah` (
  `id_nasabah` int(11) NOT NULL,
  `nama_nasabah` varchar(45) NOT NULL,
  `alamat_nasabah` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nasabah`
--

INSERT INTO `nasabah` (`id_nasabah`, `nama_nasabah`, `alamat_nasabah`) VALUES
(1, 'Sutopo', 'Jl. Jendral Sudirman 12'),
(2, 'Maryati', 'Jl. MT Haryono 31'),
(3, 'Suparman', 'Jl. Hasanudin 81'),
(4, 'Kartika Padmasari', 'Jl. Manggis 15'),
(5, 'Budi Eko Prayogo', 'Jl. Kantil 30'),
(6, 'Satria Eka Jaya', 'Jl. Slamet Riyadi 45'),
(8, 'Sari Murti', 'Jl. Pangandaran 11'),
(9, 'Canka Lokananta', 'Jl. Tidar 86'),
(10, 'Budi Murtono', 'Jl. Merak 22'),
(11, 'Fikri', 'Jl. Kaki 32'),
(12, 'Zaki', 'Jl. Jalan 91'),
(13, 'Haiqal', 'Jl. Bareng 16'),
(14, 'Sinten', 'Jl. Ninaja 15'),
(15, 'Siapa', 'Jl. Kuning 30'),
(16, 'Eka Jaya', 'Jl. Yuk 49'),
(17, 'Indra ', 'Jl. Siapa 9'),
(18, 'Sari ', 'Jl. Pangandaran 14'),
(19, 'Lokananta', 'Jl. Hijau 85'),
(20, 'Murtono', 'Jl. Merah 25');

-- --------------------------------------------------------

--
-- Table structure for table `nasabah_has_rekening`
--

CREATE TABLE IF NOT EXISTS `nasabah_has_rekening` (
  `id_nasabahFK` int(11) NOT NULL,
  `no_rekeningFK` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nasabah_has_rekening`
--

INSERT INTO `nasabah_has_rekening` (`id_nasabahFK`, `no_rekeningFK`) VALUES
(1, 104),
(2, 103),
(3, 105),
(3, 106),
(4, 101),
(4, 107),
(5, 102),
(5, 107),
(6, 109),
(7, 109),
(8, 111),
(8, 112),
(9, 110),
(10, 108),
(10, 113),
(11, 104),
(12, 103),
(13, 105),
(13, 106),
(14, 101),
(14, 107),
(15, 102),
(15, 107),
(16, 109),
(16, 113),
(17, 109),
(18, 111),
(18, 112),
(19, 110),
(20, 108);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE IF NOT EXISTS `rekening` (
  `no_rekening` int(11) NOT NULL,
  `kode_cabangFK` varchar(20) DEFAULT NULL,
  `pin` varchar(20) NOT NULL DEFAULT '1234',
  `saldo` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`no_rekening`, `kode_cabangFK`, `pin`, `saldo`) VALUES
(101, 'BRUS', '1111', 500000),
(102, 'BRUS', '2222', 350000),
(103, 'BRUS', '3333', 750000),
(104, 'BRUM', '4444', 900000),
(105, 'BRUM', '5555', 2000000),
(106, 'BRUS', '6666', 3000000),
(107, 'BRUS', '7777', 1000000),
(108, 'BRUB', '0000', 5000000),
(109, 'BRUB', '9999', 0),
(110, 'BRUY', '1234', 550000),
(111, 'BRUK', '4321', 150000),
(112, 'BRUK', '0123', 300000),
(113, 'BRUY', '8888', 255000),
(120, 'BRUY', '1234', 0),
(121, 'BRUK', '4321', 50000),
(122, 'BRUK', '0123', 360000),
(123, 'BRUY', '8888', 25000),
(1014, 'BRUM', '4444', 500000),
(1015, 'BRUM', '5555', 6000000),
(1016, 'BRUS', '6666', 7000000),
(1017, 'BRUS', '7777', 8000000),
(1018, 'BRUB', '0000', 9000000),
(1019, 'BRUB', '9999', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
`no_transaksi` bigint(20) unsigned NOT NULL,
  `id_nasabahFK` int(11) DEFAULT NULL,
  `no_rekeningFK` int(11) DEFAULT NULL,
  `jenis_transaksi` varchar(20) NOT NULL DEFAULT 'debit',
  `tanggal` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_transaksi`, `id_nasabahFK`, `no_rekeningFK`, `jenis_transaksi`, `tanggal`, `jumlah`) VALUES
(1, 105, 3, 'debit', '2009-11-10 00:00:00', 50000),
(2, 103, 2, 'debit', '2009-11-10 00:00:00', 40000),
(3, 101, 4, 'kredit', '2009-11-12 00:00:00', 20000),
(4, 106, 3, 'debit', '2009-11-13 00:00:00', 50000),
(5, 107, 5, 'kredit', '2009-11-13 00:00:00', 30000),
(6, 104, 1, 'kredit', '2009-11-15 00:00:00', 200000),
(7, 110, 9, 'kredit', '2009-11-15 00:00:00', 150000),
(8, 102, 5, 'debit', '2009-11-16 00:00:00', 20000),
(9, 105, 3, 'kredit', '2009-11-18 00:00:00', 50000),
(10, 107, 4, 'debit', '2009-11-19 00:00:00', 100000),
(11, 103, 2, 'debit', '2009-11-19 00:00:00', 100000),
(12, 104, 1, 'debit', '2009-11-19 00:00:00', 50000),
(13, 107, 4, 'kredit', '2009-11-20 00:00:00', 200000),
(14, 103, 3, 'debit', '2009-11-21 00:00:00', 40000),
(15, 104, 1, 'kredit', '2009-11-22 00:00:00', 100000),
(16, 101, 4, 'kredit', '2009-11-22 00:00:00', 20000),
(17, 113, 2, 'debit', '2009-11-22 00:00:00', 50000),
(18, 102, 5, 'debit', '2009-11-25 00:00:00', 50000),
(19, 108, 10, 'debit', '2009-11-26 00:00:00', 100000),
(20, 106, 3, 'kredit', '2009-11-27 00:00:00', 50000),
(21, 103, 2, 'kredit', '2009-11-28 00:00:00', 200000),
(22, 105, 3, 'kredit', '2009-11-28 00:00:00', 100000),
(23, 102, 5, 'debit', '2009-11-12 00:00:00', 20000),
(24, 104, 1, 'debit', '2009-12-01 00:00:00', 50000),
(25, 103, 2, 'debit', '2009-12-02 00:00:00', 40000),
(26, 101, 4, 'debit', '2009-12-04 00:00:00', 50000),
(27, 103, 2, 'kredit', '2009-12-05 00:00:00', 100000),
(28, 102, 5, 'kredit', '2009-12-05 00:00:00', 200000),
(29, 109, 7, 'debit', '2009-12-05 00:00:00', 100000),
(30, 110, 9, 'debit', '2009-12-06 00:00:00', 20000),
(31, 102, 5, 'debit', '2009-11-16 00:00:00', 20000),
(32, 105, 3, 'kredit', '2009-11-18 00:00:00', 50000),
(33, 107, 4, 'debit', '2009-11-19 00:00:00', 100000),
(34, 103, 2, 'debit', '2009-11-19 00:00:00', 100000),
(35, 104, 1, 'debit', '2009-11-19 00:00:00', 50000),
(36, 107, 4, 'kredit', '2009-11-20 00:00:00', 200000),
(37, 103, 3, 'debit', '2009-11-21 00:00:00', 40000),
(38, 104, 1, 'kredit', '2009-11-22 00:00:00', 100000),
(39, 101, 4, 'kredit', '2009-11-22 00:00:00', 20000),
(40, 113, 2, 'debit', '2009-11-22 00:00:00', 50000),
(41, 102, 5, 'debit', '2009-11-25 00:00:00', 50000),
(42, 108, 10, 'debit', '2009-11-26 00:00:00', 100000),
(43, 106, 3, 'kredit', '2009-11-27 00:00:00', 50000),
(44, 103, 2, 'kredit', '2009-11-28 00:00:00', 200000),
(45, 105, 3, 'kredit', '2009-11-28 00:00:00', 100000),
(46, 102, 5, 'debit', '2009-11-12 00:00:00', 20000),
(47, 104, 1, 'debit', '2009-12-01 00:00:00', 50000),
(48, 103, 2, 'debit', '2009-12-02 00:00:00', 40000),
(49, 101, 4, 'debit', '2009-12-04 00:00:00', 50000),
(50, 103, 2, 'kredit', '2009-12-05 00:00:00', 100000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang_bank`
--
ALTER TABLE `cabang_bank`
 ADD PRIMARY KEY (`kode_cabang`), ADD UNIQUE KEY `nama_cabang` (`nama_cabang`);

--
-- Indexes for table `nasabah`
--
ALTER TABLE `nasabah`
 ADD PRIMARY KEY (`id_nasabah`);

--
-- Indexes for table `nasabah_has_rekening`
--
ALTER TABLE `nasabah_has_rekening`
 ADD PRIMARY KEY (`id_nasabahFK`,`no_rekeningFK`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
 ADD PRIMARY KEY (`no_rekening`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`no_transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
MODIFY `no_transaksi` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
