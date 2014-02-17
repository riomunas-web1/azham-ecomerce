-- phpMyAdmin SQL Dump
-- version 4.0.6deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 17, 2014 at 08:54 PM
-- Server version: 5.5.35-0ubuntu0.13.10.2
-- PHP Version: 5.5.3-1ubuntu2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
('ab9c2e8f-9815-11e3-83c3-0026222da8dc', 'jenis 0', 'keterangan jenis 0'),
('ab9c2fe7-9815-11e3-83c3-0026222da8dc', 'jenis 1', 'keterangan jenis 1'),
('ab9c3042-9815-11e3-83c3-0026222da8dc', 'jenis 2', 'keterangan jenis 2'),
('ab9c3091-9815-11e3-83c3-0026222da8dc', 'jenis 3', 'keterangan jenis 3'),
('ab9c30dd-9815-11e3-83c3-0026222da8dc', 'jenis 4', 'keterangan jenis 4');

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
('ab9cb4c9-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 0', 1000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb628-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 1', 1100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb68c-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 2', 1200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb6dc-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 3', 1300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb729-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 4', 1400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb77b-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 5', 1500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb7cf-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 6', 1600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb81e-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 7', 1700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb877-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 8', 1800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb8c4-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 9', 1900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb913-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 10', 2000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb962-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 11', 2100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cb9b3-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 12', 2200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cba02-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 13', 2300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cba50-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 14', 2400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cba9d-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 15', 2500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbaed-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 16', 2600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbb44-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 17', 2700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbc1a-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 18', 2800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbc71-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 19', 2900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbcc2-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 20', 3000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbd12-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 21', 3100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbd61-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 22', 3200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbdad-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 23', 3300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbdfe-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 24', 3400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbe4e-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 25', 3500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbe9c-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 26', 3600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbeee-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 27', 3700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbf3e-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 28', 3800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbf8c-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 29', 3900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cbfdc-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 30', 4000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc028-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 31', 4100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc079-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 32', 4200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc0c8-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 33', 4300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc117-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 34', 4400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc16a-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 35', 4500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc1bc-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 36', 4600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc270-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 37', 4700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc2c5-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 38', 4800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc316-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 39', 4900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc368-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 40', 5000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc3ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 41', 5100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc409-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 42', 5200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc45b-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 43', 5300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc4ad-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 44', 5400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc4fc-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 45', 5500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc54e-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 46', 5600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc59d-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 47', 5700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc5ee-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 48', 5800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc641-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 49', 5900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc691-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 50', 6000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc6e0-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 51', 6100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc734-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 52', 6200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc785-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 53', 6300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc7d6-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 54', 6400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc824-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 55', 6500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc875-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 56', 6600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc93e-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 57', 6700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc993-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 58', 6800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cc9e3-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 59', 6900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cca36-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 60', 7000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cca87-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 61', 7100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccad7-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 62', 7200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccb24-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 63', 7300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccb77-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 64', 7400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccbc8-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 65', 7500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccc19-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 66', 7600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccc69-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 67', 7700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cccbd-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 68', 7800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccd0c-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 69', 7900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccd5d-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 70', 8000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccdb1-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 71', 8100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cce01-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 72', 8200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cce51-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 73', 8300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccea1-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 74', 8400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccef0-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 75', 8500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccf41-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 76', 8600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9ccf92-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 77', 8700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd077-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 78', 8800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd0cc-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 79', 8900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd121-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 80', 9000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd171-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 81', 9100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd1c1-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 82', 9200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd211-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 83', 9300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd261-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 84', 9400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd2f0-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 85', 9500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd340-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 86', 9600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd390-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 87', 9700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd3e4-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 88', 9800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd433-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 89', 9900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd483-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 90', 10000, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd4d4-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 91', 10100, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd525-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 92', 10200, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd578-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 93', 10300, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd5c6-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 94', 10400, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd614-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 95', 10500, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd686-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 96', 10600, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd6d9-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 97', 10700, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd72d-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 98', 10800, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd781-9815-11e3-83c3-0026222da8dc', 'barang jenis 0 99', 10900, 10, 'ab9c2e8f-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd7d4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 0', 1000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd8d8-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 1', 1100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd92e-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 2', 1200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd97e-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 3', 1300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cd9d1-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 4', 1400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cda21-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 5', 1500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cda6d-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 6', 1600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdabe-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 7', 1700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdb11-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 8', 1800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdb60-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 9', 1900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdbb1-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 10', 2000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdc00-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 11', 2100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdc54-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 12', 2200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdca3-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 13', 2300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdcf4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 14', 2400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdd46-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 15', 2500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdd97-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 16', 2600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdde6-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 17', 2700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cde35-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 18', 2800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cde85-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 19', 2900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cded6-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 20', 3000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdf2b-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 21', 3100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdf7a-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 22', 3200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cdfcb-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 23', 3300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ce01c-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 24', 3400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ce13d-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 25', 3500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ce193-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 26', 3600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ce1e3-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 27', 3700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ced28-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 28', 3800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ceda5-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 29', 3900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cee04-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 30', 4000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cee64-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 31', 4100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9ceec1-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 32', 4200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf023-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 33', 4300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf08e-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 34', 4400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf0ed-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 35', 4500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf176-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 36', 4600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf1cb-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 37', 4700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf219-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 38', 4800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf269-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 39', 4900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf2ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 40', 5000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf30b-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 41', 5100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf358-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 42', 5200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf3a8-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 43', 5300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf3f7-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 44', 5400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf443-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 45', 5500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf492-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 46', 5600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf4de-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 47', 5700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf52b-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 48', 5800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf578-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 49', 5900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf5c4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 50', 6000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf762-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 51', 6100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf7ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 52', 6200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf807-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 53', 6300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf855-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 54', 6400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf8a4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 55', 6500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf8f1-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 56', 6600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf941-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 57', 6700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf98f-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 58', 6800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cf9de-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 59', 6900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfa2c-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 60', 7000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfa7b-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 61', 7100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfac9-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 62', 7200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfb17-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 63', 7300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfb62-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 64', 7400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfbaf-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 65', 7500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfbff-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 66', 7600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfc4a-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 67', 7700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfc98-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 68', 7800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfce4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 69', 7900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfd30-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 70', 8000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfd7f-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 71', 8100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfdcc-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 72', 8200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfe19-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 73', 8300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfe64-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 74', 8400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cfed4-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 75', 8500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9cff28-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 76', 8600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d00ac-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 77', 8700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0102-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 78', 8800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0152-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 79', 8900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d019e-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 80', 9000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d01ee-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 81', 9100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d023b-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 82', 9200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d028f-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 83', 9300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d02e2-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 84', 9400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0332-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 85', 9500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0380-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 86', 9600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d03d0-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 87', 9700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d041d-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 88', 9800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0469-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 89', 9900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d04ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 90', 10000, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0632-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 91', 10100, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d06ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 92', 10200, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0719-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 93', 10300, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d077c-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 94', 10400, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d07d6-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 95', 10500, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d082a-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 96', 10600, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0880-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 97', 10700, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d08cf-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 98', 10800, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d091f-9815-11e3-83c3-0026222da8dc', 'barang jenis 1 99', 10900, 10, 'ab9c2fe7-9815-11e3-83c3-0026222da8dc', ''),
('ab9d096f-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 0', 1000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0b69-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 1', 1100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0bc4-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 2', 1200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0e7d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 3', 1300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0ed5-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 4', 1400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0f29-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 5', 1500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0f79-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 6', 1600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d0fca-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 7', 1700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1022-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 8', 1800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d107c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 9', 1900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d10d4-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 10', 2000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1126-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 11', 2100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1182-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 12', 2200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d11d3-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 13', 2300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1222-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 14', 2400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1270-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 15', 2500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d12c3-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 16', 2600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1315-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 17', 2700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d136d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 18', 2800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d13c5-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 19', 2900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d141c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 20', 3000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d146e-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 21', 3100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d14c3-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 22', 3200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1517-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 23', 3300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d156f-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 24', 3400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d15c6-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 25', 3500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d161c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 26', 3600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1673-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 27', 3700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d16c4-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 28', 3800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1713-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 29', 3900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1768-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 30', 4000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d17be-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 31', 4100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1811-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 32', 4200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1867-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 33', 4300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d18bf-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 34', 4400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d191b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 35', 4500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d196f-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 36', 4600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d19c4-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 37', 4700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1a1a-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 38', 4800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1a6b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 39', 4900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1d2c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 40', 5000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1d9b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 41', 5100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1df2-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 42', 5200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1e4c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 43', 5300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1ea0-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 44', 5400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1eef-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 45', 5500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1f45-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 46', 5600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1f9b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 47', 5700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d1fed-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 48', 5800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2041-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 49', 5900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2094-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 50', 6000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d20ea-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 51', 6100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2141-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 52', 6200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d219b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 53', 6300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d21f2-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 54', 6400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2245-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 55', 6500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2294-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 56', 6600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d22e5-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 57', 6700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d233a-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 58', 6800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d238a-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 59', 6900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d23db-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 60', 7000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d242c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 61', 7100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2483-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 62', 7200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d24dc-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 63', 7300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d252d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 64', 7400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2580-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 65', 7500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d25d8-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 66', 7600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2630-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 67', 7700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2683-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 68', 7800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d26d7-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 69', 7900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d272d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 70', 8000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2783-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 71', 8100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d27d8-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 72', 8200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d282b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 73', 8300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2884-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 74', 8400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d28db-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 75', 8500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2935-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 76', 8600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2b7c-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 77', 8700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2bdf-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 78', 8800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2c43-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 79', 8900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2c9b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 80', 9000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2d15-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 81', 9100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2d6d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 82', 9200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2dc7-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 83', 9300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2e1f-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 84', 9400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2e89-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 85', 9500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2eeb-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 86', 9600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2f49-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 87', 9700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2fa2-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 88', 9800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d2ff5-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 89', 9900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3292-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 90', 10000, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3310-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 91', 10100, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d337e-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 92', 10200, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d33ee-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 93', 10300, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d345d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 94', 10400, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d34ce-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 95', 10500, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d353b-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 96', 10600, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d35a0-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 97', 10700, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d360d-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 98', 10800, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d367a-9815-11e3-83c3-0026222da8dc', 'barang jenis 2 99', 10900, 10, 'ab9c3042-9815-11e3-83c3-0026222da8dc', ''),
('ab9d36e5-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 0', 1000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3758-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 1', 1100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d37c6-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 2', 1200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d383a-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 3', 1300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d38ab-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 4', 1400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3918-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 5', 1500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d398b-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 6', 1600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3a01-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 7', 1700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3e2e-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 8', 1800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3eac-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 9', 1900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3f1c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 10', 2000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3f87-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 11', 2100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d3ff8-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 12', 2200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4068-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 13', 2300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d40db-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 14', 2400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d414c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 15', 2500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d41b7-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 16', 2600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4225-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 17', 2700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d44c2-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 18', 2800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4595-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 19', 2900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4615-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 20', 3000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4693-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 21', 3100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4704-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 22', 3200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d476f-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 23', 3300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d47d9-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 24', 3400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4846-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 25', 3500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d48b2-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 26', 3600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d491d-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 27', 3700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d498a-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 28', 3800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d49f7-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 29', 3900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4a66-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 30', 4000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4ad1-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 31', 4100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4b38-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 32', 4200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4ba8-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 33', 4300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4c12-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 34', 4400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4c80-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 35', 4500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4ce8-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 36', 4600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4d52-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 37', 4700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4dbb-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 38', 4800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4e25-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 39', 4900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4e8d-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 40', 5000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4efa-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 41', 5100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4f65-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 42', 5200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d4fcd-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 43', 5300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5036-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 44', 5400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d50a4-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 45', 5500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5111-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 46', 5600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5582-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 47', 5700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d55f9-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 48', 5800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5667-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 49', 5900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d56d9-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 50', 6000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5742-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 51', 6100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d57ae-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 52', 6200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5948-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 53', 6300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d59c0-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 54', 6400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5a2b-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 55', 6500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5a93-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 56', 6600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5b00-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 57', 6700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5b6b-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 58', 6800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5bd6-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 59', 6900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5c42-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 60', 7000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5caf-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 61', 7100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5d16-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 62', 7200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5d81-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 63', 7300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5dee-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 64', 7400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5e5c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 65', 7500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5ec5-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 66', 7600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5f2f-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 67', 7700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d5f9d-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 68', 7800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d600c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 69', 7900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6076-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 70', 8000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d60e4-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 71', 8100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6150-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 72', 8200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d61ba-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 73', 8300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6227-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 74', 8400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6291-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 75', 8500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d62fe-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 76', 8600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d636c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 77', 8700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d63d6-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 78', 8800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6443-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 79', 8900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d64af-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 80', 9000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6518-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 81', 9100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6582-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 82', 9200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d65ed-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 83', 9300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6657-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 84', 9400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d66c3-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 85', 9500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d672e-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 86', 9600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6797-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 87', 9700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6802-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 88', 9800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d686e-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 89', 9900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d68db-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 90', 10000, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6946-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 91', 10100, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6d3c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 92', 10200, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6dbb-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 93', 10300, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6e24-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 94', 10400, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6e91-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 95', 10500, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6efd-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 96', 10600, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6f69-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 97', 10700, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d6fd5-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 98', 10800, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d703c-9815-11e3-83c3-0026222da8dc', 'barang jenis 3 99', 10900, 10, 'ab9c3091-9815-11e3-83c3-0026222da8dc', ''),
('ab9d70a5-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 0', 1000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7114-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 1', 1100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d717f-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 2', 1200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d71e6-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 3', 1300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d724c-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 4', 1400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d72bb-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 5', 1500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7326-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 6', 1600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d738f-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 7', 1700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d73f9-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 8', 1800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7469-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 9', 1900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d74d6-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 10', 2000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7541-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 11', 2100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d75ad-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 12', 2200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d761a-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 13', 2300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7685-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 14', 2400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d76f4-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 15', 2500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d775c-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 16', 2600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d77cb-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 17', 2700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7836-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 18', 2800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d78a1-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 19', 2900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d790d-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 20', 3000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d797b-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 21', 3100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d79e7-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 22', 3200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7a53-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 23', 3300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7abe-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 24', 3400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7b2e-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 25', 3500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7b98-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 26', 3600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7bfd-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 27', 3700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7c67-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 28', 3800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7cd8-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 29', 3900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7d43-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 30', 4000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7dad-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 31', 4100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d7e17-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 32', 4200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', '');
INSERT INTO `barang_koleksi` (`sid`, `nama_barang`, `harga`, `stock`, `barang_jenis`, `gambar`) VALUES
('ab9d8284-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 33', 4300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d82fc-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 34', 4400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8368-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 35', 4500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d83d4-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 36', 4600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8447-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 37', 4700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d84b2-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 38', 4800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d851a-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 39', 4900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8588-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 40', 5000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d85f8-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 41', 5100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8665-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 42', 5200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d86ce-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 43', 5300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d873b-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 44', 5400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d88d8-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 45', 5500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d897d-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 46', 5600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8a00-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 47', 5700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8a7e-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 48', 5800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8aeb-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 49', 5900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8b59-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 50', 6000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8bc3-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 51', 6100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8c33-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 52', 6200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8ca0-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 53', 6300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8d09-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 54', 6400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8d76-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 55', 6500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8de2-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 56', 6600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8e4a-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 57', 6700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8eb9-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 58', 6800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8f23-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 59', 6900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8f8c-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 60', 7000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d8ffa-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 61', 7100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9064-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 62', 7200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d90d0-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 63', 7300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d913d-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 64', 7400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d91a8-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 65', 7500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9217-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 66', 7600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9282-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 67', 7700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d92f2-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 68', 7800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d935d-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 69', 7900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d93c7-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 70', 8000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9430-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 71', 8100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d949f-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 72', 8200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d950a-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 73', 8300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9577-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 74', 8400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d95e1-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 75', 8500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d964b-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 76', 8600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d96b6-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 77', 8700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9bdf-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 78', 8800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9c59-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 79', 8900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9ccb-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 80', 9000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9d37-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 81', 9100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9da4-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 82', 9200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9e0f-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 83', 9300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9e7e-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 84', 9400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9eed-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 85', 9500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9f59-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 86', 9600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9d9fc2-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 87', 9700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da031-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 88', 9800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da09b-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 89', 9900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da106-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 90', 10000, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da172-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 91', 10100, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da1e0-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 92', 10200, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da249-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 93', 10300, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da2b6-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 94', 10400, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da322-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 95', 10500, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da390-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 96', 10600, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da3f7-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 97', 10700, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da464-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 98', 10800, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', ''),
('ab9da4d1-9815-11e3-83c3-0026222da8dc', 'barang jenis 4 99', 10900, 10, 'ab9c30dd-9815-11e3-83c3-0026222da8dc', '');

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
  `keterangan_pembayaran` varchar(255) NOT NULL,
  PRIMARY KEY (`sid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
