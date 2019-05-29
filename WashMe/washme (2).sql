-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 29 Mei 2019 pada 03.58
-- Versi Server: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `washme`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `laundrys`
--

CREATE TABLE `laundrys` (
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
  `rating` int(10) NOT NULL,
  `username` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laundrys`
--

INSERT INTO `laundrys` (`id`, `image`, `name`, `alamat`, `status`, `time_open`, `time_close`, `service`, `owner`, `harga`, `nohp`, `kota`, `rating`, `username`) VALUES
(1, '../asset/images/laundry-ateng.jpg', 'Zauhiung Laundry', 'Jln. dr. Wahidin No 54', 'open', '08:00', '21:00', 'wash&fold', 'Zauhiung', 5000, 822568860, 'Pontianak', 4, 'zauhiung'),
(4, '../asset/images/laundry3.png', 'Fleren Laundry', 'Jln.Veteran No. 50D', 'close', '07:00', '21:00', 'wash&iron', 'Fleren Picestelia', 6000, 899295969, 'Pontianak', 1, 'fleren'),
(7, NULL, 'David Laundry', 'Jln Adi Sucipto Gg. Fitra no A7', 'open', '', '', 'wash&fold', 'david', 0, 2147483647, 'Pontianak', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
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
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`kode_product`, `nama_product`, `kategori`, `harga`, `stok`, `shop`, `rating`, `description`, `image`) VALUES
('P-1', 'Setrika Listrik Silver Star ES300 R20', 'Iron', 515000, 20, 'ChitozAno', 50, 'Barang Mahal. Yang beli harus orang kaya!!!', '../asset/images/setrika.jpg'),
('P-2', 'Mesin Cuci RZ-2000', 'Washing Machine', 2000000, 20, 'Fleren Laundry', 80, 'Mesin Cuci Kualitas terbaik. Harga terjangkau. Silahkan beli!!!', '../asset/images/mesincuci.png'),
('P-3', 'Rinso', '', 100000, 39, '', 0, 'rinso terbaik di bumi', '../asset/images/rinso.PNG'),
('P-4', 'Detergen Cair', '', 50000, 100, '', 0, 'detergen molto', '../asset/images/detergencair.PNG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `request_laundry`
--

CREATE TABLE `request_laundry` (
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
-- Struktur dari tabel `temptransaksi`
--

CREATE TABLE `temptransaksi` (
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

--
-- Dumping data untuk tabel `temptransaksi`
--

INSERT INTO `temptransaksi` (`notemp`, `no`, `id`, `tgl_ambil`, `jam_ambil`, `batas_ambil`, `alamat_ambil`, `note_ambil`, `jlh_kg`, `tgl_deliv`, `jam_deliv`, `batas_deliv`, `alamat_deliv`, `note_deliv`, `service`, `harga`, `total`) VALUES
(1, 'TL-1', 1, '02-07-2019', '10:00', '20:00', 'Jln Sungai Raya Dalam', 'Cepat yaa', 5, '05-10-2019', '11:00', '13:00', 'Jln Sungai Raya Dalam', 'Sini', 'wash&fold', 50000, 50000),
(2, 'TL-2', 1, '09-10-2019', '08:00', '19:00', 'Jln Imam Bonjol', 'Cepat woe', 6, '09-11-2019', '10:00', '20:00', 'Jln Imam Bonjol', 'Sini', 'wash&fold', 200000, 200000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no` int(11) NOT NULL,
  `id` int(11) DEFAULT NULL,
  `tgl` varchar(100) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`no`, `id`, `tgl`, `total`) VALUES
(1, 1, '2019-05-14', 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksidetil`
--

CREATE TABLE `transaksidetil` (
  `no` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `tgl_deliv` varchar(20) DEFAULT NULL,
  `tgl_ambil` varchar(20) DEFAULT NULL,
  `alamat_ambil` varchar(200) DEFAULT NULL,
  `jlh_kg` int(11) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksidetil`
--

INSERT INTO `transaksidetil` (`no`, `id`, `tgl_deliv`, `tgl_ambil`, `alamat_ambil`, `jlh_kg`, `harga`, `total`) VALUES
('TL-1', 1, '2019-05-21', '2019-05-14', 'sungai raya dalam', 10, 5000, 50000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `jeniskelamin` enum('Laki-laki','Peremupuan') NOT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `coin` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `name`, `email`, `alamat`, `jeniskelamin`, `nohp`, `coin`) VALUES
(2, 'feliciano', 'Feliciano Surya Marcelo', 'suryamarcello@gmail.com', 'Jln Sungai Raya Dalam Komplek Villa Gading Raya 2 no D6', 'Laki-laki', '+62 822-5688-6020', 0),
(3, 'zauhiung', 'Zauhiung Karyaten', 'emmanuel.karyaten@gmail.com', 'Jln. Dr. Wahidin Sudirohusodo No.82', 'Laki-laki', '+62813-4644-4343', 10),
(4, 'fleren', 'Fleren Picestelia', 'fleren@gmail.com', 'Jln. Veteran Gg. Syukur 1 No. 50D', 'Peremupuan', '089922773434', 0),
(5, 'andre', 'Andre Kristanto', 'adnrekris@gmail.com', 'Jln. Purnama', 'Laki-laki', '081345229876', 3),
(6, 'neldy', 'Neldy Siberius', 'neldy@gmail.com', 'Jln. Parit Tengkorak', 'Laki-laki', '089987435656', 9),
(8, 'bryan', 'Bryan Mahendra Karyaten', 'bryan12@gmail.com', NULL, 'Laki-laki', '081346444343', 0),
(9, 'david', NULL, 'david@gmail.com', NULL, 'Laki-laki', NULL, 0),
(10, 'lala', NULL, 'dsjfahk@gmail.com', NULL, 'Laki-laki', NULL, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` enum('user','laundry','admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`username`, `password`, `email`, `status`) VALUES
('admin', 'admin', 'washme@gmail.com', 'admin'),
('andre', 'andre123', 'andrekris@gmail.com', 'user'),
('bryan', 'hacked12', 'bryan12@gmail.com', 'user'),
('feliciano', 'feliciano123', 'suryamarcello@gmail.com', 'user'),
('neldy', 'nel123', 'neldy@gmail.com', 'user'),
('zauhiung', 'azau123', 'emmanuel.karyaten@gmail.com', 'laundry');

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
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `laundrys`
--
ALTER TABLE `laundrys`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `request_laundry`
--
ALTER TABLE `request_laundry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temptransaksi`
--
ALTER TABLE `temptransaksi`
  MODIFY `notemp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
