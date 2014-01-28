-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 28, 2014 at 09:50 PM
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
('', 'azhadm', '13131'),
('', 'azham', '123'),
('', 'azham1', '0'),
('', 'azham11', '333'),
('e24019e3-878c-11e3-bda0-582c80139263', 'bukangit', '123331'),
('da', 'dad', '11111'),
('f313c95e-878c-11e3-bda0-582c80139263', 'fafa', '123331'),
('1282fb8d-878f-11e3-bda0-582c80139263', 'gaga', '123331');

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
('97bba37c-878c-11e3-bda0-582c80139263', '1334d', 'ada'),
('bc142c72-8781-11e3-bda0-582c80139263', 'nama_jenis', 'ket'),
('d6d88fd1-878c-11e3-bda0-582c80139263', '1334d', 'ada'),
('ec5a75d3-878b-11e3-bda0-582c80139263', 'computer2', 'barangggggg');

-- --------------------------------------------------------

--
-- Table structure for table `barang_koleksi`
--

CREATE TABLE IF NOT EXISTS `barang_koleksi` (
  `sid` varchar(36) NOT NULL,
  `nama_barang` char(35) NOT NULL,
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

INSERT INTO `barang_koleksi` (`sid`, `nama_barang`, `harga`, `diskon`, `stock`, `tipe`, `gambar`) VALUES
('561d95d7-87d3-11e3-8ba2-e89a8fb9e2bc', 'toshiba', 15000, 8, 15, 'accesories', 0x312e706e67);

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
('e09c988e-87d3-11e3-8ba2-e89a8fb9e2bc', 'kami');

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

INSERT INTO `login` (`sid`, `username`, `password`) VALUES
('8d731e38-87d3-11e3-8ba2-e89a8fb9e2bc', 'kami', 'dadah');

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
('b0977af4-8792-11e3-bda0-582c80139263', 'azham', 'pria', 'adada', 'dddd', 83611, 'azhamcool@yahoo.com', '+6281918211444'),
('e2490ffc-8790-11e3-bda0-582c80139263', 'azham', 'pria', 'aaaaaaaaaa', 'dadada', 83611, 'azhamcool@yahoo.com', '+6281918211444');

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
('229acc46-8791-11e3-bda0-582c80139263', '1999-09-04', '11:54:00', 'S', 150000, 5000, 155000, 'D');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_detail`
--

CREATE TABLE IF NOT EXISTS `pemesanan_detail` (
  `sid` varchar(36) NOT NULL,
  `pemesanan` varchar(36) NOT NULL,
  `barang_koleksi` varchar(36) NOT NULL,
  `jumlah` int(11) NOT NULL,
  KEY `pemesanan` (`pemesanan`),
  KEY `barang_koleksi` (`barang_koleksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_detail`
--

INSERT INTO `pemesanan_detail` (`sid`, `pemesanan`, `barang_koleksi`, `jumlah`) VALUES
('9f40e95f-8824-11e3-8ba2-e89a8fb9e2bc', '229acc46-8791-11e3-bda0-582c80139263', '561d95d7-87d3-11e3-8ba2-e89a8fb9e2bc', 6);

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
  ADD CONSTRAINT `pemesanan_detail_ibfk_2` FOREIGN KEY (`barang_koleksi`) REFERENCES `barang_koleksi` (`sid`) ON DELETE CASCADE ON UPDATE CASCADE;
