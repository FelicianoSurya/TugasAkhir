-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2019 at 01:12 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `washme`
--

-- --------------------------------------------------------

--
-- Table structure for table `laundrys`
--

CREATE TABLE IF NOT EXISTS `laundrys` (
  `id` int(10) NOT NULL,
  `image` varchar(200) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `status` enum('open','close') NOT NULL,
  `time_open` varchar(10) NOT NULL,
  `time_close` varchar(10) NOT NULL,
  `service` enum('wash&fold','wash&iron','dryclean','') NOT NULL,
  `owner` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `nohp` int(100) DEFAULT NULL,
  `kota` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `laundrys`
--

INSERT INTO `laundrys` (`id`, `image`, `name`, `alamat`, `status`, `time_open`, `time_close`, `service`, `owner`, `harga`, `nohp`, `kota`, `rating`) VALUES
(1, NULL, 'Zauhiung Laundry', 'Jln. dr. Wahidin No 54', 'open', '08:00', '21:00', 'wash&fold', 'Zauhiung', 5000, 822568860, 'Pontianak', 4),
(2, NULL, 'Ateng Laundry', 'Jl. Imam Bonjol No 20', 'close', '08:00', '20:00', 'wash&iron', 'Ateng', 6000, 94484884, 'Pontianak', 6),
(3, NULL, 'ChitozAno', 'Jln. Sungai Raya Dalam No.D6', 'open', '09:00', '22:00', 'wash&fold', 'Feliciano', 7000, 903390220, 'Pontianak', 10),
(4, NULL, 'Fleren Laundry', 'Jln.Veteran No. 50D', 'close', '07:00', '21:00', 'wash&iron', 'Fleren Picestelia', 6000, 899295969, 'Pontianak', 1),
(5, NULL, 'David Leo Laundry', 'Jln. Imam Bonjol', 'open', '08:00', '21:00', 'dryclean', 'David Leonardo', 6000, 1346444343, 'Pontianak', 7),
(6, NULL, 'Annisa Laundry', 'Jln. Veteran Gg. Syukur 1 No.50D', 'open', '', '', 'wash&fold', 'fleren', 0, 2147483647, 'Pontianak', 0);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `kode_product` varchar(20) NOT NULL,
  `nama_product` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `harga` double NOT NULL,
  `stok` int(20) NOT NULL,
  `shop` varchar(100) NOT NULL,
  `rating` int(100) NOT NULL,
  `description` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`kode_product`, `nama_product`, `kategori`, `harga`, `stok`, `shop`, `rating`, `description`, `image`) VALUES
('P-1', 'Setrika Listrik Silver Star ES300 R20', 'Iron', 515000, 20, 'ChitozAno', 50, 'Barang Mahal. Yang beli harus orang kaya!!!', '../asset/images/setrika.jpg'),
('P-2', 'Mesin Cuci RZ-2000', 'Washing Machine', 2000000, 20, 'Fleren Laundry', 80, 'Mesin Cuci Kualitas terbaik. Harga terjangkau. Silahkan beli!!!', '../asset/images/mesincuci.png');

-- --------------------------------------------------------

--
-- Table structure for table `request_laundry`
--

CREATE TABLE IF NOT EXISTS `request_laundry` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `text_request` varchar(100) NOT NULL,
  `time_request` datetime NOT NULL,
  `laundryname` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `nohp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `temptransaksi`
--

CREATE TABLE IF NOT EXISTS `temptransaksi` (
  `notemp` int(11) NOT NULL,
  `no` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `tgl_ambil` varchar(100) NOT NULL,
  `jam_ambil` varchar(10) NOT NULL,
  `batas_ambil` varchar(10) NOT NULL,
  `alamat_ambil` varchar(200) NOT NULL,
  `note_ambil` text NOT NULL,
  `jlh_kg` int(11) NOT NULL,
  `tgl_deliv` varchar(100) NOT NULL,
  `jam_deliv` varchar(10) NOT NULL,
  `batas_deliv` varchar(10) NOT NULL,
  `alamat_deliv` varchar(200) NOT NULL,
  `note_deliv` text NOT NULL,
  `service` enum('wash&fold','wash&iron','dryclean') NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `no` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `tgl` varchar(100) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transaksidetil`
--

CREATE TABLE IF NOT EXISTS `transaksidetil` (
  `no` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `tgl_deliv` varchar(20) DEFAULT NULL,
  `tgl_ambil` varchar(20) DEFAULT NULL,
  `alamat_ambil` varchar(200) DEFAULT NULL,
  `jlh_kg` int(11) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jeniskelamin` enum('Laki-laki','Peremupuan') NOT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `coin` int(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `alamat`, `jeniskelamin`, `nohp`, `coin`) VALUES
(2, 'feliciano', 'Feliciano Surya Marcello', 'suryamarcello@gmail.com', 'Jln Sungai Raya Dalam Komplek Villa Gading Raya 2 no D6', 'Laki-laki', '+62 822-5688-6029', 0),
(3, 'zauhiung', 'Zauhiung Karyaten', 'emmanuel.karyaten@gmail.com', 'Jln. Dr. Wahidin Sudirohusodo No.82', 'Laki-laki', '+62813-4644-4343', 10),
(4, 'fleren', 'Fleren Picestelia', 'fleren@gmail.com', 'Jln. Veteran Gg. Syukur 1 No. 50D', 'Peremupuan', '089922773434', 0),
(5, 'andre', 'Andre Kristanto', 'adnrekris@gmail.com', 'Jln. Purnama', 'Laki-laki', '081345229876', 3),
(6, 'neldy', 'Neldy Siberius', 'neldy@gmail.com', 'Jln. Parit Tengkorak', 'Laki-laki', '089987435656', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('user','laundry','admin') DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `status`) VALUES
(1, 'feliciano', 'feliciano123', 'suryamarcello@gmail.com', 'user'),
(3, 'admin', 'admin', 'washme@gmail.com', 'admin'),
(15, 'zauhiung', 'azau123', 'emmanuel.karyaten@gmail.com', 'laundry'),
(16, 'fleren', 'fleren', 'fleren@gmail.com', 'laundry'),
(20, 'andre', 'andre123', 'andrekris@gmail.com', 'user'),
(21, 'neldy', 'nel123', 'neldy@gmail.com', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundrys`
--
ALTER TABLE `laundrys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`kode_product`);

--
-- Indexes for table `request_laundry`
--
ALTER TABLE `request_laundry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `temptransaksi`
--
ALTER TABLE `temptransaksi`
  ADD PRIMARY KEY (`notemp`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laundrys`
--
ALTER TABLE `laundrys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `request_laundry`
--
ALTER TABLE `request_laundry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `temptransaksi`
--
ALTER TABLE `temptransaksi`
  MODIFY `notemp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
