-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 04, 2014 at 07:20 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbbarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `sid` varchar(36) NOT NULL,
  `userid` varchar(8) NOT NULL,
  `passid` varchar(6) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--


-- --------------------------------------------------------

--
-- Table structure for table `barang_jenis`
--

CREATE TABLE IF NOT EXISTS `barang_jenis` (
  `sid` varchar(36) NOT NULL,
  `nama_jenis` varchar(36) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_jenis`
--


-- --------------------------------------------------------

--
-- Table structure for table `barang_koleksi`
--

CREATE TABLE IF NOT EXISTS `barang_koleksi` (
  `sid` varchar(36) NOT NULL,
  `nama_barang` char(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(8) NOT NULL,
  `tipe` char(15) NOT NULL,
  `gambar` blob NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_koleksi`
--

INSERT INTO `barang_koleksi` (`sid`, `nama_barang`, `harga`, `stock`, `tipe`, `gambar`) VALUES
('36f62880-8d6e-11e3-b3d8-e89a8fb9e2bc', 'terlalu', 55, 3, '47500', 0x312e706e67),
('4f2fd3a9-8d6e-11e3-b3d8-e89a8fb9e2bc', 'terlalugg', 55, 3, '47500', 0x312e706e67),
('64ca65af-8d6f-11e3-b3d8-e89a8fb9e2bc', 'terlalufa', 55, 3, '47500', 0x312e706e67),
('8f4dd371-8d6e-11e3-b3d8-e89a8fb9e2bc', 'terlalufa', 55, 3, '47500', 0x312e706e67),
('ccda0910-8d6e-11e3-b3d8-e89a8fb9e2bc', 'terlalufa', 55, 3, '47500', 0x312e706e67),
('e69dfc3a-8d79-11e3-98fa-e89a8fb9e2bc', 'toshiba', 55, 3, '47500', 0x312e706e67),
('ebf67c76-8d7a-11e3-98fa-e89a8fb9e2bc', 'array', 55, 1, '47500', 0x53637265656e73686f745f322e706e67);

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE IF NOT EXISTS `forget_password` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`sid`, `username`) VALUES
('e09c988e-87d3-11e3-8ba2-e89a8fb9e2bc', 'kami'),
('bf5b92ec-8d89-11e3-98fa-e89a8fb9e2bc', 'kami');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(11) NOT NULL,
  KEY `username` (`username`),
  KEY `password` (`password`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sid`, `username`, `password`) VALUES
('8d731e38-87d3-11e3-8ba2-e89a8fb9e2bc', 'kami', 'dadah'),
('cf200e07-8d87-11e3-98fa-e89a8fb9e2bc', 'kami', 'fa'),
('e4a5d9ce-8d88-11e3-98fa-e89a8fb9e2bc', 'kami', 'dada'),
('fce77edd-8d99-11e3-98fa-e89a8fb9e2bc', 'kami', 'fafa');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `sid` varchar(36) NOT NULL,
  `nama_pelanggan` char(30) NOT NULL,
  `jenis_kelamin` char(6) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `kota` char(15) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telpon` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`sid`, `nama_pelanggan`, `jenis_kelamin`, `alamat`, `kota`, `kode_pos`, `email`, `no_telpon`) VALUES
('1793aafb-8d8d-11e3-98fa-e89a8fb9e2bc', 'dada', 'pria', 'aaaaaaaaa', 'dddd', 83611, 'azhamcool@yahoo.com', '+6281918211444'),
('2175f936-8d8d-11e3-98fa-e89a8fb9e2bc', '656565', 'pria', 'aaaaaaaaa', 'dddd', 83611, 'azhamcool@yahoo.com', '+6281918211444'),
('b0977af4-8792-11e3-bda0-582c80139263', 'azham', 'pria', 'adada', 'dddd', 83611, 'azhamcool@yahoo.com', '+6281918211444'),
('e2490ffc-8790-11e3-bda0-582c80139263', 'azham', 'pria', 'aaaaaaaaaa', 'dadada', 83611, 'azhamcool@yahoo.com', '+6281918211444'),
('f162f510-8d8b-11e3-98fa-e89a8fb9e2bc', 'azham', 'pria', 'pancor', 'selong', 83611, 'azhamcool@yahoo.com', '+6281918211444');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `sid` varchar(36) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `status_bayar` char(1) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `biaya_kirim` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `status_kirim` char(1) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`sid`, `tanggal`, `jam`, `status_bayar`, `total_harga`, `biaya_kirim`, `total_pembayaran`, `status_kirim`) VALUES
('3bf26473-8d91-11e3-98fa-e89a8fb9e2bc', '2014-02-05', '11:54:00', 'S', 150000, 5000, 155000, 'D'),
('783ac47e-8d58-11e3-b3d8-e89a8fb9e2bc', '1999-09-04', '11:54:00', 'S', 150000, 5000, 155000, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_detail`
--

CREATE TABLE IF NOT EXISTS `pemesanan_detail` (
  `sid` varchar(36) NOT NULL,
  `pemesanan` varchar(36) NOT NULL,
  `kode_barang` varchar(36) NOT NULL,
  `jumlah` int(11) NOT NULL,
  KEY `pemesanan` (`pemesanan`),
  KEY `kode_barang` (`kode_barang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_detail`
--


-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(11) NOT NULL,
  `confirm password` varchar(11) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `no_telpon` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`sid`, `username`, `email`, `password`, `confirm password`, `alamat`, `no_telpon`, `keterangan`) VALUES
('6ff7d2b8-8790-11e3-bda0-582c80139263', 'kami', 'azhamcool@yahoo.com', 'dadah', 'dadah1', 'aaaaaaaaaaaaa', '+6281918211444', 'ddddddddd');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD CONSTRAINT `forget_password_ibfk_1` FOREIGN KEY (`username`) REFERENCES `register` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`username`) REFERENCES `register` (`username`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan_detail`
--
ALTER TABLE `pemesanan_detail`
  ADD CONSTRAINT `pemesanan_detail_ibfk_1` FOREIGN KEY (`pemesanan`) REFERENCES `pemesanan` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_detail_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang_koleksi` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;
