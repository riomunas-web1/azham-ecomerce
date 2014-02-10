-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 08, 2014 at 02:29 PM
-- Server version: 5.5.34-0ubuntu0.13.04.1
-- PHP Version: 5.4.9-4ubuntu2.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


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

-- --------------------------------------------------------

--
-- Table structure for table `barang_koleksi`
--

CREATE TABLE IF NOT EXISTS `barang_koleksi` (
  `sid` varchar(36) NOT NULL,
  `nama_barang` varchar(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(8) NOT NULL,
  `barang_jenis` varchar(36) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE IF NOT EXISTS `forget_password` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `forget_password`
--
ALTER TABLE `forget_password`
  ADD CONSTRAINT `forget_password_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `register` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`sid`) REFERENCES `register` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pemesanan_detail`
--
ALTER TABLE `pemesanan_detail`
  ADD CONSTRAINT `pemesanan_detail_ibfk_1` FOREIGN KEY (`pemesanan`) REFERENCES `pemesanan` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pemesanan_detail_ibfk_2` FOREIGN KEY (`kode_barang`) REFERENCES `barang_koleksi` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
