-- phpMyAdmin SQL Dump
-- version 3.1.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 02, 2016 at 11:56 AM
-- Server version: 5.1.35
-- PHP Version: 5.2.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `verlyperpus`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_buku`
--

CREATE TABLE IF NOT EXISTS `tb_buku` (
  `id_buku` int(10) NOT NULL AUTO_INCREMENT,
  `judul` varchar(20) NOT NULL,
  `id_penerbit` int(20) NOT NULL,
  `id_pengarang` int(20) NOT NULL,
  `stock` int(40) NOT NULL,
  `isi` text NOT NULL,
  `id_jenis` int(20) NOT NULL,
  `lihat` int(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `picture` varchar(40) NOT NULL,
  `nama_peminjam` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_buku`
--

INSERT INTO `tb_buku` (`id_buku`, `judul`, `id_penerbit`, `id_pengarang`, `stock`, `isi`, `id_jenis`, `lihat`, `status`, `pengirim`, `picture`, `nama_peminjam`, `date`) VALUES
(1, '', 1, 1, 20, 'buku mengenai aplikasi RPL', 0, 0, 'T', 'Rudi', '5f1.png', '', '2016-03-02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login`
--

CREATE TABLE IF NOT EXISTS `tb_login` (
  `id_login` int(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `avatar` varchar(200) NOT NULL,
  `level` varchar(20) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_login`
--

INSERT INTO `tb_login` (`id_login`, `username`, `password`, `avatar`, `level`) VALUES
(1, 'admin', 'admin1', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_peminjam`
--

CREATE TABLE IF NOT EXISTS `tb_peminjam` (
  `id_peminjam` int(20) NOT NULL AUTO_INCREMENT,
  `id_login` int(20) NOT NULL,
  `id_buku` int(20) NOT NULL,
  `nama_peminjam` varchar(30) NOT NULL,
  `judul` varchar(20) NOT NULL,
  `penerbit` varchar(20) NOT NULL,
  `pengarang` varchar(20) NOT NULL,
  `isi` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `pengirim` varchar(20) NOT NULL,
  `picture` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_peminjam`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tb_peminjam`
--


-- --------------------------------------------------------

--
-- Table structure for table `tb_penerbit`
--

CREATE TABLE IF NOT EXISTS `tb_penerbit` (
  `id_penerbit` int(20) NOT NULL AUTO_INCREMENT,
  `penerbit` varchar(20) NOT NULL,
  PRIMARY KEY (`id_penerbit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`id_penerbit`, `penerbit`) VALUES
(1, 'Ferri Achmad Effindr');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengarang`
--

CREATE TABLE IF NOT EXISTS `tb_pengarang` (
  `id_pengarang` int(20) NOT NULL AUTO_INCREMENT,
  `pengarang` varchar(20) NOT NULL,
  PRIMARY KEY (`id_pengarang`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_pengarang`
--

INSERT INTO `tb_pengarang` (`id_pengarang`, `pengarang`) VALUES
(1, 'Madcoms');
