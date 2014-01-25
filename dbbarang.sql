-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 21, 2014 at 08:49 PM
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
  `userid` varchar(8) NOT NULL,
  `passid` varchar(6) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`userid`, `passid`) VALUES
('ddada', 'dadad');

-- --------------------------------------------------------

--
-- Table structure for table `barang_jenis`
--

CREATE TABLE IF NOT EXISTS `barang_jenis` (
  `id_jenis` int(11) NOT NULL,
  `nama_jenis` char(30) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_jenis`
--

INSERT INTO `barang_jenis` (`id_jenis`, `nama_jenis`, `keterangan`) VALUES
(33, 'dada', 'aaaa'),
(1212, 'fa', 'dadada'),
(121212, 'dada', 'dadada');

-- --------------------------------------------------------

--
-- Table structure for table `barang_koleksi`
--

CREATE TABLE IF NOT EXISTS `barang_koleksi` (
  `id_koleksi` int(11) NOT NULL,
  `nama_barang` char(35) NOT NULL,
  `harga` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `stock` int(8) NOT NULL,
  `tipe` char(15) NOT NULL,
  `gambar` blob NOT NULL,
  PRIMARY KEY (`id_koleksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang_koleksi`
--

INSERT INTO `barang_koleksi` (`id_koleksi`, `nama_barang`, `harga`, `diskon`, `stock`, `tipe`, `gambar`) VALUES
(77, 'toshiba', 55, 7, 2, 'accesories', 0x67616761),
(331, '0', 55, 7, 2, 'accesories', 0x64616461),
(3319, 'toshiba', 55, 7, 2, 'accesories', 0x64616461);

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE IF NOT EXISTS `forget_password` (
  `username` varchar(8) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forget_password`
--

INSERT INTO `forget_password` (`username`) VALUES
('azham'),
('azham11');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(8) NOT NULL,
  `password` varchar(11) NOT NULL,
  KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('azham11', 'dada');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE IF NOT EXISTS `pelanggan` (
  `id_pelanggan` int(10) NOT NULL,
  `nama_pelanggan` char(30) NOT NULL,
  `jenis_kelamin` char(6) NOT NULL,
  `alamat` varchar(45) NOT NULL,
  `kota` char(15) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `no_telpon` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pelanggan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `jenis_kelamin`, `alamat`, `kota`, `kode_pos`, `email`, `no_telpon`) VALUES
(11218, 'azham', 'pria', 'gga', 'gaga', 4444, 'azhamcool@yahoo.com', '+627777777'),
(112172, 'azham', 'pria', 'fsfa', 'aaaa', 83611, 'azhamcool@yahoo.com', '2147483647'),
(11231101, 'azham', 'pria', 'daada', 'dada', 83600, 'azhamcool@yahoo.com', '+6281918211444');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE IF NOT EXISTS `pemesanan` (
  `id_pesan` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `status_bayar` char(1) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `biaya_kirim` int(11) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `status_kirim` char(1) NOT NULL,
  PRIMARY KEY (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`id_pesan`, `tanggal`, `jam`, `status_bayar`, `total_harga`, `biaya_kirim`, `total_pembayaran`, `status_kirim`) VALUES
(7, '1999-09-04', '11:54:00', 'S', 150000, 5000, 155000, 'D'),
(71, '1999-09-04', '11:54:00', 'S', 150000, 5000, 155000, 'P');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_detail`
--

CREATE TABLE IF NOT EXISTS `pemesanan_detail` (
  `id_pesan` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  KEY `id_pesan` (`id_pesan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan_detail`
--

INSERT INTO `pemesanan_detail` (`id_pesan`, `jumlah`, `harga_beli`) VALUES
(71, 2, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
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

INSERT INTO `register` (`username`, `email`, `password`, `confirm password`, `alamat`, `no_telpon`, `keterangan`) VALUES
('azham11a', 'azhamcool@yahoo.com', '4545', '4545', 'selong lombok NTB', '+6281918211444', 'kapan kapan'),
('labkom-9', 'azhamcool@yahoo.com', 'dada', 'dada', 'daaaaaaaaaaaaaa', '+6281918211444', 'gak');
