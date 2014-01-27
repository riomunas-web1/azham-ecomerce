-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 27, 2014 at 06:27 PM
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

INSERT INTO `admin` (`sid`, `userid`, `passid`) VALUES
('', '111', '1234'),
('', '118', '0'),
('', 'ad', '1414'),
('', 'azham', '123'),
('', 'azham1', '0'),
('', 'azham11', '333'),
('da', 'dad', '11111');

-- --------------------------------------------------------

--
-- Table structure for table `barang_jenis`
--

CREATE TABLE IF NOT EXISTS `barang_jenis` (
  `sid` varchar(36) NOT NULL,
  `nama_jenis` char(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_jenis`
--

INSERT INTO `barang_jenis` (`sid`, `nama_jenis`, `keterangan`) VALUES
('2aaa5a0a-8777-11e3-bda0-582c80139263', 'nama_jenis', 'keterangan'),
('94e3c447-8777-11e3-bda0-582c80139263', 'nama_jenis', 'ket');

-- --------------------------------------------------------

--
-- Table structure for table `barang_koleksi`
--

CREATE TABLE IF NOT EXISTS `barang_koleksi` (
  `sid` varchar(36) NOT NULL,
  `nama_barang` char(35) NOT NULL,
  `Status` varchar(6) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `stock` int(8) NOT NULL,
  `tipe` char(15) NOT NULL,
  `gambar` blob NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_koleksi`
--


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


-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(11) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--


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


-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_detail`
--

CREATE TABLE IF NOT EXISTS `pemesanan_detail` (
  `sid` varchar(36) NOT NULL,
  `barang_koleksi` varchar(36) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  KEY `barang_koleksi` (`barang_koleksi`),
  KEY `sid` (`sid`)
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
  ADD CONSTRAINT `pemesanan_detail_ibfk_2` FOREIGN KEY (`barang_koleksi`) REFERENCES `barang_koleksi` (`sid`) ON DELETE CASCADE,
  ADD CONSTRAINT `pemesanan_detail_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `pemesanan` (`sid`) ON DELETE CASCADE;
