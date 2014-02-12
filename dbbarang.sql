-- phpMyAdmin SQL Dump
-- version 3.5.8.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 12, 2014 at 08:59 AM
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

--
-- Dumping data for table `barang_jenis`
--

INSERT INTO `barang_jenis` (`sid`, `nama_jenis`, `keterangan`) VALUES
('65ce1ccc-91e9-11e3-bca6-0026222da8dc', 'jenis 0', 'keterangan jenis 0'),
('65ce3a3a-91e9-11e3-bca6-0026222da8dc', 'jenis 1', 'keterangan jenis 1'),
('65ce3b2e-91e9-11e3-bca6-0026222da8dc', 'jenis 2', 'keterangan jenis 2'),
('65ce3b8d-91e9-11e3-bca6-0026222da8dc', 'jenis 3', 'keterangan jenis 3'),
('65ce3be9-91e9-11e3-bca6-0026222da8dc', 'jenis 4', 'keterangan jenis 4');

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

--
-- Dumping data for table `barang_koleksi`
--

INSERT INTO `barang_koleksi` (`sid`, `nama_barang`, `harga`, `stock`, `barang_jenis`, `gambar`) VALUES
('65cefac8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 0', 1000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf4fd4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 1', 1100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf50c4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 2', 1200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5134-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 3', 1300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf519d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 4', 1400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5206-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 5', 1500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5266-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 6', 1600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf52d2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 7', 1700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf533d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 8', 1800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf53a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 9', 1900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5409-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 10', 2000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5474-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 11', 2100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf54d3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 12', 2200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf553c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 13', 2300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf55a5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 14', 2400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf55ff-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 15', 2500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5663-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 16', 2600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf56ce-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 17', 2700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf57e6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 18', 2800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5853-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 19', 2900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf58bc-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 20', 3000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf591d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 21', 3100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf598b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 22', 3200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf59ec-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 23', 3300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5a70-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 24', 3400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5ace-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 25', 3500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5b2a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 26', 3600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5b8a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 27', 3700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5beb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 28', 3800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5c51-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 29', 3900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5cb2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 30', 4000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5d11-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 31', 4100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5d79-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 32', 4200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5dd9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 33', 4300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5e34-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 34', 4400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5e97-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 35', 4500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5f03-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 36', 4600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf5ff3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 37', 4700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf605d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 38', 4800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf60be-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 39', 4900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf611e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 40', 5000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6188-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 41', 5100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf61ec-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 42', 5200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf624c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 43', 5300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf62bd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 44', 5400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf631c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 45', 5500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf637b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 46', 5600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6403-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 47', 5700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6469-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 48', 5800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf64d5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 49', 5900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6540-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 50', 6000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf65a7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 51', 6100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf660f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 52', 6200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf667e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 53', 6300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf66e1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 54', 6400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf673f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 55', 6500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf679c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 56', 6600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf68a1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 57', 6700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf690f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 58', 6800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6973-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 59', 6900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf69d4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 60', 7000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6a31-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 61', 7100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6a98-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 62', 7200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6afd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 63', 7300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6b5c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 64', 7400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6bc0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 65', 7500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6c24-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 66', 7600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6c86-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 67', 7700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6ce8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 68', 7800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6d72-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 69', 7900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6dd9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 70', 8000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6e44-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 71', 8100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6eab-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 72', 8200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6f04-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 73', 8300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6f67-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 74', 8400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf6fd1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 75', 8500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7033-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 76', 8600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf709f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 77', 8700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf71d2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 78', 8800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7238-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 79', 8900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf72a7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 80', 9000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7308-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 81', 9100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7370-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 82', 9200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf73df-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 83', 9300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf744c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 84', 9400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf74cb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 85', 9500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7538-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 86', 9600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf75a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 87', 9700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7609-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 88', 9800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf766f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 89', 9900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf76d7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 90', 10000, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7758-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 91', 10100, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf77c0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 92', 10200, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf782a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 93', 10300, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7896-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 94', 10400, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf78f4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 95', 10500, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7958-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 96', 10600, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf79b9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 97', 10700, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7a1a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 98', 10800, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7a8a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 0 99', 10900, 10, '65ce1ccc-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7aed-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 0', 1000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7c4d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 1', 1100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7cba-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 2', 1200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7d1a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 3', 1300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7d7a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 4', 1400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7ddd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 5', 1500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7e45-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 6', 1600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7eaf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 7', 1700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7f0c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 8', 1800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7f73-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 9', 1900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf7fd4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 10', 2000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8040-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 11', 2100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf80a9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 12', 2200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8a5e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 13', 2300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8ae2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 14', 2400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8b4f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 15', 2500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8bb3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 16', 2600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8c1e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 17', 2700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8c83-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 18', 2800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8ce6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 19', 2900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8d4a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 20', 3000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8dab-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 21', 3100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8e0a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 22', 3200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8e67-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 23', 3300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf8ecf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 24', 3400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9066-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 25', 3500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf90d3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 26', 3600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf913b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 27', 3700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9cb7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 28', 3800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9d5f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 29', 3900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9dd8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 30', 4000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9e4f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 31', 4100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cf9ec0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 32', 4200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfab82-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 33', 4300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfac05-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 34', 4400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfac78-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 35', 4500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfacec-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 36', 4600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfad4a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 37', 4700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfada6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 38', 4800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfae0b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 39', 4900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfae6b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 40', 5000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfaec7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 41', 5100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfaf24-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 42', 5200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfaf8c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 43', 5300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfafea-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 44', 5400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb047-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 45', 5500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb0ae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 46', 5600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb106-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 47', 5700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb165-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 48', 5800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb1c3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 49', 5900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb224-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 50', 6000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb602-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 51', 6100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb675-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 52', 6200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb6d8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 53', 6300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb73a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 54', 6400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb79e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 55', 6500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb800-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 56', 6600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb863-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 57', 6700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb8c4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 58', 6800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb926-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 59', 6900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb988-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 60', 7000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfb9ea-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 61', 7100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfba4c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 62', 7200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbaaf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 63', 7300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbb10-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 64', 7400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbb72-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 65', 7500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbbd7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 66', 7600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbc36-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 67', 7700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbc9a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 68', 7800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbcfd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 69', 7900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbd5f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 70', 8000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbdc0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 71', 8100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfbe21-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 72', 8200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfc701-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 73', 8300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfc783-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 74', 8400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd135-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 75', 8500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd1b7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 76', 8600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd3dd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 77', 8700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd442-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 78', 8800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd4a4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 79', 8900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd562-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 80', 9000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd5ca-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 81', 9100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd631-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 82', 9200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd68f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 83', 9300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd6f6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 84', 9400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd755-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 85', 9500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd7b9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 86', 9600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd818-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 87', 9700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd879-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 88', 9800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd8e0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 89', 9900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfd942-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 90', 10000, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdb4e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 91', 10100, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdbf4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 92', 10200, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdc6c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 93', 10300, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdd04-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 94', 10400, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdd67-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 95', 10500, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfddc6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 96', 10600, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfde2e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 97', 10700, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfde8d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 98', 10800, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdef6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 1 99', 10900, 10, '65ce3a3a-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdf5a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 0', 1000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfdfc1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 1', 1100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe029-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 2', 1200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe2ee-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 3', 1300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe350-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 4', 1400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe3bb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 5', 1500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe41b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 6', 1600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe46f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 7', 1700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe4cb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 8', 1800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe523-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 9', 1900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe57b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 10', 2000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe5d5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 11', 2100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe62b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 12', 2200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe688-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 13', 2300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe6e3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 14', 2400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe73c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 15', 2500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe7b8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 16', 2600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe816-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 17', 2700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe870-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 18', 2800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe8cd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 19', 2900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe923-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 20', 3000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe97b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 21', 3100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfe9d5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 22', 3200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfea30-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 23', 3300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfea89-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 24', 3400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfeadf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 25', 3500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfeb46-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 26', 3600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfeba5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 27', 3700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfebfc-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 28', 3800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfec52-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 29', 3900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfecad-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 30', 4000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfed09-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 31', 4100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfed68-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 32', 4200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfedcb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 33', 4300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff1d2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 34', 4400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff244-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 35', 4500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff2a4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 36', 4600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff2fb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 37', 4700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff375-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 38', 4800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff3d4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 39', 4900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff435-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 40', 5000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff49d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 41', 5100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff4f9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 42', 5200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff550-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 43', 5300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff5a8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 44', 5400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff5ff-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 45', 5500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff65d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 46', 5600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff6c4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 47', 5700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff724-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 48', 5800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff782-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 49', 5900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff7db-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 50', 6000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff833-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 51', 6100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff892-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 52', 6200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff8f5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 53', 6300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff958-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 54', 6400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cff9b1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 55', 6500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffa09-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 56', 6600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffa65-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 57', 6700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffad2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 58', 6800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffb27-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 59', 6900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffb9b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 60', 7000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffbf8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 61', 7100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffc54-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 62', 7200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffcae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 63', 7300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffd15-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 64', 7400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffd8e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 65', 7500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffdee-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 66', 7600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffe44-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 67', 7700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffea1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 68', 7800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cffef7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 69', 7900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfff5a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 70', 8000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65cfffb8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 71', 8100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d0000f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 72', 8200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00068-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 73', 8300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00425-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 74', 8400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00483-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 75', 8500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d004d8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 76', 8600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00542-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 77', 8700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d005a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 78', 8800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00605-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 79', 8900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d0066b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 80', 9000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d006cf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 81', 9100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00755-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 82', 9200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d007b8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 83', 9300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d0081c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 84', 9400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00881-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 85', 9500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d008e4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 86', 9600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d0094a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 87', 9700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d009ae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 88', 9800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00a1b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 89', 9900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00a80-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 90', 10000, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00ae5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 91', 10100, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00b4a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 92', 10200, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00bac-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 93', 10300, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00c11-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 94', 10400, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00c74-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 95', 10500, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00cd4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 96', 10600, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00d38-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 97', 10700, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00d98-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 98', 10800, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00dfb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 2 99', 10900, 10, '65ce3b2e-91e9-11e3-bca6-0026222da8dc', ''),
('65d00e53-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 0', 1000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d00eb9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 1', 1100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d00f20-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 2', 1200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d00f80-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 3', 1300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d00ffb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 4', 1400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01063-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 5', 1500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d010c0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 6', 1600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01125-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 7', 1700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01187-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 8', 1800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d011e5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 9', 1900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01293-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 10', 2000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d012f4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 11', 2100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01763-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 12', 2200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d017c7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 13', 2300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01823-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 14', 2400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01889-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 15', 2500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d018f0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 16', 2600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01950-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 17', 2700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01b27-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 18', 2800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01bb8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 19', 2900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01c25-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 20', 3000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01c9a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 21', 3100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01cff-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 22', 3200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01d5e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 23', 3300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01db8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 24', 3400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01e34-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 25', 3500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01ea3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 26', 3600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01f0f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 27', 3700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01f6c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 28', 3800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d01fc6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 29', 3900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0201f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 30', 4000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0207b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 31', 4100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d020d1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 32', 4200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02138-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 33', 4300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0219f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 34', 4400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d021fe-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 35', 4500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02257-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 36', 4600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d022b2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 37', 4700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0230a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 38', 4800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02370-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 39', 4900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d023d1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 40', 5000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02429-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 41', 5100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02483-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 42', 5200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d024de-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 43', 5300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0253d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 44', 5400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d025a2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 45', 5500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02602-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 46', 5600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02679-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 47', 5700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d026d2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 48', 5800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0272c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 49', 5900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02786-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 50', 6000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d027db-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 51', 6100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02841-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 52', 6200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d029d0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 53', 6300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02a32-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 54', 6400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02ebc-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 55', 6500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02f1c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 56', 6600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02f7f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 57', 6700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d02fe2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 58', 6800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03048-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 59', 6900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d030ae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 60', 7000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03114-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 61', 7100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03178-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 62', 7200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d031e4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 63', 7300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03248-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 64', 7400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d032a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 65', 7500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03306-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 66', 7600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03369-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 67', 7700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d033e1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 68', 7800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03446-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 69', 7900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d034a9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 70', 8000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03508-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 71', 8100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03569-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 72', 8200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d035d3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 73', 8300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03634-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 74', 8400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03690-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 75', 8500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d036fa-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 76', 8600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03764-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 77', 8700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d037c4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 78', 8800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03827-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 79', 8900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0388b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 80', 9000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d038e8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 81', 9100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d0394e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 82', 9200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d039b2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 83', 9300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03a15-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 84', 9400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03a79-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 85', 9500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03adf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 86', 9600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03b3f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 87', 9700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03ba3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 88', 9800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03c0a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 89', 9900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03c81-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 90', 10000, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03cde-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 91', 10100, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03d35-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 92', 10200, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03d8d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 93', 10300, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03de6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 94', 10400, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03e43-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 95', 10500, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03ea5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 96', 10600, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03f02-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 97', 10700, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03f5c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 98', 10800, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d03fb5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 3 99', 10900, 10, '65ce3b8d-91e9-11e3-bca6-0026222da8dc', ''),
('65d043c4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 0', 1000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04436-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 1', 1100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d044a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 2', 1200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d044ff-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 3', 1300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0455a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 4', 1400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d045b6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 5', 1500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0460f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 6', 1600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04677-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 7', 1700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d046d6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 8', 1800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0472c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 9', 1900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04786-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 10', 2000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d047db-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 11', 2100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04854-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 12', 2200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d048b2-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 13', 2300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04909-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 14', 2400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0495f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 15', 2500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d049c0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 16', 2600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04a23-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 17', 2700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04a7f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 18', 2800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04ad7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 19', 2900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04b32-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 20', 3000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04b91-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 21', 3100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04be9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 22', 3200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04c4a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 23', 3300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04cae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 24', 3400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04d0b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 25', 3500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04d62-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 26', 3600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04dbf-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 27', 3700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04e25-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 28', 3800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04e88-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 29', 3900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04eea-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 30', 4000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04f4d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 31', 4100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d04fa7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 32', 4200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', '');
INSERT INTO `barang_koleksi` (`sid`, `nama_barang`, `harga`, `stock`, `barang_jenis`, `gambar`) VALUES
('65d05010-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 33', 4300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05094-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 34', 4400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d050f5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 35', 4500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0515b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 36', 4600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d051bb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 37', 4700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05216-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 38', 4800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05271-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 39', 4900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d052cc-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 40', 5000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05746-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 41', 5100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d057b5-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 42', 5200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0581f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 43', 5300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0587f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 44', 5400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05a8e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 45', 5500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05b26-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 46', 5600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05b9c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 47', 5700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05c09-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 48', 5800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05c6d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 49', 5900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05cc8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 50', 6000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05d2b-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 51', 6100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05d8e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 52', 6200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05de7-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 53', 6300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05e4c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 54', 6400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05eca-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 55', 6500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05f29-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 56', 6600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05f81-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 57', 6700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d05fdc-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 58', 6800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06038-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 59', 6900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d060a0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 60', 7000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d060fa-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 61', 7100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06152-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 62', 7200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d061ab-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 63', 7300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06207-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 64', 7400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06266-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 65', 7500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d062c6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 66', 7600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06323-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 67', 7700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0637c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 68', 7800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d063d4-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 69', 7900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0642e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 70', 8000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06489-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 71', 8100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d064f0-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 72', 8200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06548-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 73', 8300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d065a1-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 74', 8400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d065fd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 75', 8500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d06657-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 76', 8600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0f80e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 77', 8700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0f8e9-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 78', 8800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0f94e-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 79', 8900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0f9bd-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 80', 9000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0fa21-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 81', 9100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0fa82-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 82', 9200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0faef-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 83', 9300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0fb4a-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 84', 9400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d0fba6-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 85', 9500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d10245-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 86', 9600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1038f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 87', 9700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1040d-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 88', 9800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1046c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 89', 9900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d104cb-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 90', 10000, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1053c-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 91', 10100, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d10597-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 92', 10200, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d105f3-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 93', 10300, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d10654-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 94', 10400, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d106ae-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 95', 10500, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1070f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 96', 10600, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d10768-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 97', 10700, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d107c8-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 98', 10800, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', ''),
('65d1119f-91e9-11e3-bca6-0026222da8dc', 'barang jenis 4 99', 10900, 10, '65ce3be9-91e9-11e3-bca6-0026222da8dc', '');

-- --------------------------------------------------------

--
-- Table structure for table `forget_password`
--

CREATE TABLE IF NOT EXISTS `forget_password` (
  `sid` varchar(36) NOT NULL,
  `username` varchar(8) NOT NULL,
  KEY `username` (`username`),
  KEY `forget_password_ibfk_1` (`sid`)
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
  KEY `password` (`password`),
  KEY `login_ibfk_1` (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`sid`, `username`, `password`) VALUES
('8d731e38-87d3-11e3-8ba2-e89a8fb9e2bc', 'kami', 'dadah'),
('cf200e07-8d87-11e3-98fa-e89a8fb9e2bc', 'kami', 'fa'),
('e4a5d9ce-8d88-11e3-98fa-e89a8fb9e2bc', 'kami', 'dada'),
('fce77edd-8d99-11e3-98fa-e89a8fb9e2bc', 'kami', 'fafa'),
('930f83eb-916f-11e3-bca6-0026222da8dc', 'kami', 'dadah'),
('e502f438-916f-11e3-bca6-0026222da8dc', 'kami', 'dadah'),
('ebb54679-916f-11e3-bca6-0026222da8dc', 'kami', 'dadah'),
('32b93258-9173-11e3-bca6-0026222da8dc', 'kami', 'dadah'),
('7894a2d1-9174-11e3-bca6-0026222da8dc', 'kami', 'dadah'),
('8c698bab-9174-11e3-bca6-0026222da8dc', 'kami', 'asdaf');

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
  `status_bayar` tinyint(1) NOT NULL DEFAULT '0',
  `total_harga` int(11) NOT NULL,
  `register` varchar(36) NOT NULL,
  `total_pembayaran` int(11) NOT NULL,
  `status_kirim` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`sid`, `tanggal`, `jam`, `status_bayar`, `total_harga`, `register`, `total_pembayaran`, `status_kirim`) VALUES
('433caa3f-9380-11e3-9295-0026222da8dc', '2014-02-12', '00:00:00', 0, 0, '6ff7d2b8-8790-11e3-bda0-582c80139263', 0, 0),
('6ada708d-9380-11e3-9295-0026222da8dc', '2014-02-12', '00:00:00', 0, 0, '6ff7d2b8-8790-11e3-bda0-582c80139263', 0, 0),
('ba54ce23-9380-11e3-9295-0026222da8dc', '2014-02-12', '00:00:00', 0, 0, '6ff7d2b8-8790-11e3-bda0-582c80139263', 0, 0),
('bcc7e069-9380-11e3-9295-0026222da8dc', '2014-02-12', '00:00:00', 0, 0, '6ff7d2b8-8790-11e3-bda0-582c80139263', 0, 0);

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
  PRIMARY KEY (`sid`),
  KEY `sid` (`sid`)
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
