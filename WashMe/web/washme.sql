-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04 Apr 2019 pada 17.26
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
-- Database: `ajaxlatihan`
--
CREATE DATABASE IF NOT EXISTS `ajaxlatihan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ajaxlatihan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `jeniskelamin` varchar(20) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `api`
--
CREATE DATABASE IF NOT EXISTS `api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `api`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `nama`, `alamat`, `email`) VALUES
(1, 'Feliciano', 'Jln Sungai Raya Dalam komplek villa Gading Raya 2 no. D6', 'suryamarcello@gmail.com'),
(3, 'David Leonardo', 'Jln Adi Sucipto Gg. Fitra no A7', 'davidleonardo@gmail.com'),
(4, 'Zauhiung Karyaten', 'Jln Dokter Wahidin No 82', 'zauhiungkaryaten@gmail.com'),
(5, 'Fleren Picestelia', 'Jln Veteran Gg Syukur1 No.50D', 'flerenpicestelia@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `iduser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `belajarlagi`
--
CREATE DATABASE IF NOT EXISTS `belajarlagi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `belajarlagi`;
--
-- Database: `coba`
--
CREATE DATABASE IF NOT EXISTS `coba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `coba`;
--
-- Database: `datakomp`
--
CREATE DATABASE IF NOT EXISTS `datakomp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `datakomp`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdatakomp`
--

CREATE TABLE `tbdatakomp` (
  `nokomp` varchar(20) NOT NULL,
  `cpu` varchar(40) DEFAULT NULL,
  `os` enum('Windows7','Windows10') DEFAULT NULL,
  `ram` varchar(10) DEFAULT NULL,
  `hdd` varchar(20) DEFAULT NULL,
  `lan` varchar(10) DEFAULT NULL,
  `kondisi` enum('Baik','Rusak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbdatakomp`
--

INSERT INTO `tbdatakomp` (`nokomp`, `cpu`, `os`, `ram`, `hdd`, `lan`, `kondisi`) VALUES
('PC1', 'IntelCore I3', 'Windows10', '2GB', '500GB', '1Gbps', 'Baik'),
('PC2', 'IntelCore I5', 'Windows10', '4GB', '1TB', '1Gbps', 'Rusak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbdatakomp`
--
ALTER TABLE `tbdatakomp`
  ADD PRIMARY KEY (`nokomp`);
--
-- Database: `data_tugas_vue`
--
CREATE DATABASE IF NOT EXISTS `data_tugas_vue` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `data_tugas_vue`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `belajar_vue`
--

CREATE TABLE `belajar_vue` (
  `vue_id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `belajar_vue`
--

INSERT INTO `belajar_vue` (`vue_id`, `name`, `status`) VALUES
(11, 'Feliciano', 'Single'),
(12, 'Justin', 'Jones'),
(18, 'Feliciano', 'jomblo'),
(19, 'Feliciano', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `belajar_vue`
--
ALTER TABLE `belajar_vue`
  ADD PRIMARY KEY (`vue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `belajar_vue`
--
ALTER TABLE `belajar_vue`
  MODIFY `vue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- Database: `employee`
--
CREATE DATABASE IF NOT EXISTS `employee` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `employee`;
--
-- Database: `laravel_barang`
--
CREATE DATABASE IF NOT EXISTS `laravel_barang` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_barang`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `no` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `harga` double NOT NULL,
  `ukuran` enum('Besar','Sedang','Kecil','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`no`);
--
-- Database: `laravel_crud`
--
CREATE DATABASE IF NOT EXISTS `laravel_crud` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_crud`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `ukuran` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `laravel_siswa`
--
CREATE DATABASE IF NOT EXISTS `laravel_siswa` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `laravel_siswa`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `kelas` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `latihan1`
--
CREATE DATABASE IF NOT EXISTS `latihan1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` varchar(100) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jk` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `job` varchar(100) DEFAULT NULL,
  `hobi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`kode`, `nama`, `jk`, `job`, `hobi`) VALUES
('', '', '', '', ',,,'),
('100', '', 'Laki-laki', '', ',,Berenang,Memasak');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`kode`);
--
-- Database: `latihan_1`
--
CREATE DATABASE IF NOT EXISTS `latihan_1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_1`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbackupsiswa`
--

CREATE TABLE `tbbackupsiswa` (
  `nis` int(5) NOT NULL DEFAULT '0',
  `nama` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbackupsiswa`
--

INSERT INTO `tbbackupsiswa` (`nis`, `nama`, `jurusan`) VALUES
(1, 'feliciano', 'tkj'),
(2, 'agashi', 'tkj');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kode` varchar(100) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`kode`, `nama`, `jenis`, `harga`, `date`) VALUES
('10', 'feliciano', 'sedang', 20000, '0009-03-08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbuku`
--

CREATE TABLE `tbbuku` (
  `idbuku` varchar(10) NOT NULL,
  `judul` varchar(50) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `tglcetak` date DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` int(5) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jurusan` varchar(100) DEFAULT NULL,
  `nilai` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsiswa`
--

INSERT INTO `tbsiswa` (`nis`, `nama`, `jurusan`, `nilai`) VALUES
(1, 'feliciano', 'tkj', 100),
(2, 'agashi', 'tkj', 100),
(3, 'cintya', 'ak', 100),
(4, 'sella', 'ak', 80),
(5, 'indah', 'ak', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `kodeuser` varchar(10) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jk` enum('Laki-Laki','Perempuan') DEFAULT NULL,
  `pekerjaan` varchar(40) DEFAULT NULL,
  `hobi` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`kodeuser`, `nama`, `jk`, `pekerjaan`, `hobi`) VALUES
('fl', 'df', '', 'dfas', 'dfa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbuku`
--
ALTER TABLE `tbbuku`
  ADD PRIMARY KEY (`idbuku`);

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`kodeuser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  MODIFY `nis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `latihan_transaksi`
--
CREATE DATABASE IF NOT EXISTS `latihan_transaksi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_transaksi`;
--
-- Database: `latihan_ulangan`
--
CREATE DATABASE IF NOT EXISTS `latihan_ulangan` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `latihan_ulangan`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kodebarang` varchar(10) NOT NULL,
  `namabarang` varchar(100) DEFAULT NULL,
  `jenis` varchar(50) DEFAULT NULL,
  `merk` enum('Baru','Lama') DEFAULT NULL,
  `kualitas` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`kodebarang`);
--
-- Database: `mencoba`
--
CREATE DATABASE IF NOT EXISTS `mencoba` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mencoba`;
--
-- Database: `online_test`
--
CREATE DATABASE IF NOT EXISTS `online_test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `online_test`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `classroom`
--

INSERT INTO `classroom` (`id`, `name`) VALUES
(1, 'X TKJ-1'),
(2, 'X TKJ-2'),
(3, 'X TKJ-3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_keywords`
--

CREATE TABLE `essay_keywords` (
  `id` int(11) NOT NULL,
  `essay_id` int(11) DEFAULT NULL,
  `keyword` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay_keywords`
--

INSERT INTO `essay_keywords` (`id`, `essay_id`, `keyword`) VALUES
(1, 1, 'Genap'),
(2, 2, 'Soekarno'),
(3, 3, 'Router'),
(4, 4, 'James'),
(5, 5, 'Fleren');

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_questions`
--

CREATE TABLE `essay_questions` (
  `id` int(11) NOT NULL,
  `question` text,
  `weight` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay_questions`
--

INSERT INTO `essay_questions` (`id`, `question`, `weight`, `exam_id`) VALUES
(2, 'Siapakah presiden pertama Indoensia?', 50, 2),
(3, 'Untuk menghubungkan 2 jaringan yang berbeda menggunakan ....', 50, 3),
(4, 'Pertama kali bola basket diciptkana oleh ...', 50, 4),
(5, 'Orang Terjelek didunia', 20, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `exams`
--

INSERT INTO `exams` (`id`, `title`, `start`, `end`, `created_by`, `classroom_id`) VALUES
(1, 'MTK', '2018-12-19 21:00:00', '2018-12-19 22:00:00', 1, 2),
(2, 'Bahasa Indonesia', '2018-12-19 21:00:00', '2018-12-19 21:50:00', 1, 2),
(3, 'WAN', '2018-10-20 19:00:00', '2018-10-20 21:00:00', 1, 2),
(4, 'PJOK', '2018-10-20 19:00:00', '2018-10-20 21:00:00', 1, 2),
(5, 'Fleren Jelek', '2019-01-13 23:00:00', '2019-01-08 20:00:00', 1, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_student_essay_answers`
--

CREATE TABLE `history_student_essay_answers` (
  `id` int(11) NOT NULL,
  `answer` text,
  `essay_question_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_student_multiple_choice_answers`
--

CREATE TABLE `history_student_multiple_choice_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `login_time` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_logs`
--

INSERT INTO `login_logs` (`id`, `login_time`, `ip_address`, `user_id`) VALUES
(1, '2018-12-19 14:38:06', '127.0.0.1', 3),
(2, '2018-12-19 14:45:58', '127.0.0.1', 1),
(3, '2018-12-19 14:47:14', '127.0.0.1', 4),
(4, '2018-12-19 14:48:25', '127.0.0.1', 3),
(5, '2018-12-19 17:20:37', '127.0.0.1', 3),
(6, '2018-12-20 04:40:33', '127.0.0.1', 3),
(7, '2018-12-20 06:21:40', '127.0.0.1', 1),
(8, '2018-12-20 06:22:20', '127.0.0.1', 3),
(9, '2018-12-20 06:24:47', '127.0.0.1', 1),
(10, '2018-12-20 06:49:19', '127.0.0.1', 4),
(11, '2018-12-20 08:00:20', '127.0.0.1', 1),
(12, '2018-12-20 08:00:51', '127.0.0.1', 1),
(13, '2018-12-20 08:58:34', '127.0.0.1', 4),
(14, '2018-12-20 08:58:55', '127.0.0.1', 3),
(15, '2018-12-20 10:05:28', '127.0.0.1', 1),
(16, '2018-12-20 10:06:01', '127.0.0.1', 4),
(17, '2018-12-20 10:06:24', '127.0.0.1', 3),
(18, '2018-12-20 10:47:33', '127.0.0.1', 3),
(19, '2018-12-20 14:09:16', '127.0.0.1', 1),
(20, '2018-12-20 14:10:02', '127.0.0.1', 3),
(21, '2018-12-21 05:38:45', '127.0.0.1', 3),
(22, '2018-12-21 08:15:11', '127.0.0.1', 3),
(23, '2018-12-21 08:42:44', '127.0.0.1', 1),
(24, '2018-12-21 08:43:16', '127.0.0.1', 4),
(25, '2018-12-21 08:44:06', '127.0.0.1', 3),
(26, '2019-01-13 17:33:32', '::1', 1),
(27, '2019-01-13 17:34:07', '::1', 3),
(28, '2019-01-19 06:14:35', '127.0.0.1', 3),
(29, '2019-01-19 06:18:23', '127.0.0.1', 1),
(30, '2019-01-19 06:19:19', '127.0.0.1', 4),
(31, '2019-01-19 06:19:46', '127.0.0.1', 3),
(32, '2019-01-19 06:21:18', '127.0.0.1', 1),
(33, '2019-02-01 07:06:49', '127.0.0.1', 1),
(34, '2019-02-01 07:44:06', '127.0.0.1', 1),
(35, '2019-02-01 07:44:54', '127.0.0.1', 3),
(36, '2019-02-12 07:23:10', '127.0.0.1', 3),
(37, '2019-02-12 07:24:43', '127.0.0.1', 1),
(38, '2019-03-13 09:33:56', '127.0.0.1', 1),
(39, '2019-03-13 09:34:32', '127.0.0.1', 1),
(40, '2019-03-18 12:13:45', '127.0.0.1', 1),
(41, '2019-03-18 12:14:12', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `multi_choice_options`
--

CREATE TABLE `multi_choice_options` (
  `id` int(11) NOT NULL,
  `text` text,
  `multiple_choice_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `multi_choice_options`
--

INSERT INTO `multi_choice_options` (`id`, `text`, `multiple_choice_id`) VALUES
(1, '2', 1),
(2, '3', 1),
(3, '4', 1),
(4, '5', 1),
(5, '6', 1),
(6, '2', 2),
(7, '3', 2),
(8, '4', 2),
(9, '5', 2),
(10, '6', 2),
(11, '10', 3),
(12, '20', 3),
(13, '25', 3),
(14, '30', 3),
(15, '35', 3),
(16, '10', 4),
(17, '2', 4),
(18, '1', 4),
(19, '3', 4),
(20, '0', 4),
(21, '30', 5),
(22, '20', 5),
(23, '10', 5),
(24, '18', 5),
(25, '25', 5),
(26, '1', 6),
(27, '3', 6),
(28, '4', 6),
(29, '2', 6),
(30, '5', 6),
(31, '1', 7),
(32, '4', 7),
(33, '5', 7),
(34, '2', 7),
(35, '3', 7),
(36, 'omivora', 8),
(37, 'herbivora', 8),
(38, 'ovipar', 8),
(39, 'ovovivipar', 8),
(40, 'vivipar', 8),
(41, 'herbivora', 9),
(42, 'karnivora', 9),
(43, 'omnivora', 9),
(44, 'vivipar', 9),
(45, 'ovipar', 9),
(46, 'optional', 10),
(47, 'nirkabel', 10),
(48, 'wireless', 10),
(49, 'ankabel', 10),
(50, 'jack', 10),
(51, 'WAN', 11),
(52, 'LAN', 11),
(53, 'MAN', 11),
(54, 'PAN', 11),
(55, 'WLAN', 11),
(56, 'Cetak gol', 12),
(57, 'Menang', 12),
(58, 'Kalah', 12),
(59, 'Seru-seruan', 12),
(60, 'Gembira', 12),
(61, 'besar', 13),
(62, 'sedang', 13),
(63, 'kecil', 13),
(64, 'aneh', 13),
(65, 'keras', 13),
(66, 'PSBSI', 14),
(67, 'PBBS', 14),
(68, 'PSSA', 14),
(69, 'ASC', 14),
(70, 'PSSI', 14),
(71, 'a', 15),
(72, 'b', 15),
(73, 'c', 15),
(74, 'd', 15),
(75, 'e', 15),
(76, 'a', 16),
(77, 'b', 16),
(78, 'c', 16),
(79, 'd', 16),
(80, 'e', 16),
(81, 'a', 17),
(82, 'b', 17),
(83, 'c', 17),
(84, 'd', 17),
(85, 'e', 17),
(86, 'a', 18),
(87, 'b', 18),
(88, 'c', 18),
(89, 'd', 18),
(90, 'e', 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `multi_choice_question`
--

CREATE TABLE `multi_choice_question` (
  `id` int(11) NOT NULL,
  `question` text,
  `weight` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `correct_answer_id` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `multi_choice_question`
--

INSERT INTO `multi_choice_question` (`id`, `question`, `weight`, `exam_id`, `correct_answer_id`) VALUES
(1, '1 + 1', 10, 1, '1'),
(2, '2 + 2', 10, 1, '8'),
(3, '5 x 5', 10, 1, '13'),
(4, '10 / 10', 10, 1, '18'),
(5, '5 10 15 ...', 10, 1, '22'),
(7, 'ayam berkaki ...', 10, 2, '34'),
(8, 'Hewan betelur disebut ...', 20, 2, '38'),
(9, 'hewan pemakan segala adalah ...', 20, 2, '43'),
(10, 'Jaringan tanpa kabel disebut ...', 20, 3, '48'),
(11, 'Jaringan yang mencakup dunia ...', 30, 3, '51'),
(12, 'Tujuan main sepak bola ...', 20, 4, '56'),
(13, 'Bulu tangkis adalah permainan bola ...', 20, 4, '63'),
(14, 'Persatuan Sepak bola Seluruh Indonesia memiliki kependekan yaitu ....', 10, 4, '70'),
(15, 'lala', 20, 5, '74'),
(16, 'baba', 20, 5, '78'),
(17, 'caca', 20, 5, '82'),
(18, 'dada', 20, 5, '90');

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `classroom_id`) VALUES
(1, 'feliciano', 2),
(2, 'david', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_essay_answers`
--

CREATE TABLE `student_essay_answers` (
  `id` int(11) NOT NULL,
  `answer` text,
  `essay_question_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student_essay_answers`
--

INSERT INTO `student_essay_answers` (`id`, `answer`, `essay_question_id`, `student_id`) VALUES
(1, 'Genap', 1, 1),
(2, 'Soekarno', 2, 1),
(3, 'Genap', 1, 2),
(4, 'Soekarno', 2, 2),
(5, 'Genap`', 1, 1),
(6, 'Route', 3, 1),
(7, 'Router', 3, 2),
(8, 'James', 4, 1),
(9, 'Rodigues', 4, 2),
(10, 'Fleren', 5, 1),
(11, 'Fleren', 5, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_multiple_choice_answers`
--

CREATE TABLE `student_multiple_choice_answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student_multiple_choice_answers`
--

INSERT INTO `student_multiple_choice_answers` (`id`, `question_id`, `option_id`, `student_id`) VALUES
(1, 1, 1, 1),
(2, 2, 8, 1),
(3, 3, 13, 1),
(4, 4, 18, 1),
(5, 5, 22, 1),
(6, 7, 34, 1),
(7, 8, 38, 1),
(8, 9, 43, 1),
(9, 1, 1, 2),
(10, 2, 8, 2),
(11, 3, 12, 2),
(12, 4, 18, 2),
(13, 5, 22, 2),
(14, 7, 35, 2),
(15, 8, 38, 2),
(16, 9, 43, 2),
(22, 10, 48, 1),
(23, 11, 51, 1),
(24, 10, 48, 2),
(25, 11, 51, 2),
(26, 12, 56, 1),
(27, 13, 63, 1),
(28, 14, 70, 1),
(29, 12, 56, 2),
(30, 13, 63, 2),
(31, 14, 70, 2),
(32, 15, 74, 1),
(33, 16, 80, 1),
(34, 17, 82, 1),
(35, 18, 88, 1),
(36, 15, 71, 2),
(37, 16, 77, 2),
(38, 17, 83, 2),
(39, 18, 88, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_score`
--

CREATE TABLE `student_score` (
  `id` int(11) NOT NULL,
  `student_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `student_score`
--

INSERT INTO `student_score` (`id`, `student_id`, `score`, `exam_id`, `classroom_id`) VALUES
(1, 1, 100, 1, 2),
(2, 2, 90, 2, 2),
(3, 1, 100, 2, 2),
(4, 2, 90, 1, 2),
(5, 1, 50, 3, 2),
(9, 2, 90, 3, 2),
(10, 1, 100, 4, 2),
(11, 2, 50, 4, 2),
(12, 1, 60, NULL, NULL),
(13, 2, 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, 'kelvin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `job` enum('student','teacher') DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `job`, `student_id`, `teacher_id`, `remember_token`) VALUES
(1, 'feliciano', '$2y$10$8QsgmpRFJr4ZYdCkSV1tTuIeXBMOufeIyXCp7Ce4CUYUb78lAYKlm', 'student', 1, NULL, 'fVc9dURQ3EWh6Ql6BKJHVfDIGSAbjchZk8RFutCoj1rX84wmKWZAOuWE38lx'),
(3, 'kelvin', '$2y$10$mO8q9rK1qudY2msp5e4PNuyyN7I3PUOsBi5DNRQJXerGxzkIqFYty', 'teacher', NULL, 1, '7JQK9QkSVIHI2Z3EH5THr1v0XAcCQ0G4AeWCaygwetFpbvtou2LeRZYMW1Fk'),
(4, 'david', '$2y$10$wDfVK.3STNy7QfN2sSHsv.nAJa/.RcuQtdvLxMw2R6gO4e8yIBrZS', 'student', 2, NULL, 'mDsAzGqNN2IdS9b75D3xMPilYZTT971x5g2sQQmEwrK8AkonljCAMyq3njJ1'),
(5, 'ano', '12345', 'teacher', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essay_keywords`
--
ALTER TABLE `essay_keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essay_questions`
--
ALTER TABLE `essay_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_student_essay_answers`
--
ALTER TABLE `history_student_essay_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_student_multiple_choice_answers`
--
ALTER TABLE `history_student_multiple_choice_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_choice_options`
--
ALTER TABLE `multi_choice_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_choice_question`
--
ALTER TABLE `multi_choice_question`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_essay_answers`
--
ALTER TABLE `student_essay_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_multiple_choice_answers`
--
ALTER TABLE `student_multiple_choice_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_score`
--
ALTER TABLE `student_score`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
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
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `essay_keywords`
--
ALTER TABLE `essay_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `essay_questions`
--
ALTER TABLE `essay_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `multi_choice_options`
--
ALTER TABLE `multi_choice_options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `multi_choice_question`
--
ALTER TABLE `multi_choice_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student_essay_answers`
--
ALTER TABLE `student_essay_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `student_multiple_choice_answers`
--
ALTER TABLE `student_multiple_choice_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `student_score`
--
ALTER TABLE `student_score`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `pd`
--
CREATE DATABASE IF NOT EXISTS `pd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pd`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkelas`
--
-- Error reading structure for table pd.tbkelas: #1932 - Table 'pd.tbkelas' doesn't exist in engine
-- Error reading data for table pd.tbkelas: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `pd`.`tbkelas`' at line 1
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

--
-- Dumping data untuk tabel `pma__navigationhiding`
--

INSERT INTO `pma__navigationhiding` (`username`, `item_name`, `item_type`, `db_name`, `table_name`) VALUES
('root', 'siswa', 'table', 'smk_belajar', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data untuk tabel `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"washme\",\"table\":\"laundrys\"},{\"db\":\"washme\",\"table\":\"users\"},{\"db\":\"ulanganajax\",\"table\":\"tbdatakomputer\"},{\"db\":\"api\",\"table\":\"tbuser\"},{\"db\":\"transaksi_xitkj2\",\"table\":\"tbbarang\"},{\"db\":\"online_test\",\"table\":\"login_logs\"},{\"db\":\"smk_belajar\",\"table\":\"users\"},{\"db\":\"online_test\",\"table\":\"users\"},{\"db\":\"ulangan1_tkj2\",\"table\":\"tbsiswa\"},{\"db\":\"mencoba\",\"table\":\"nilai\"}]');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data untuk tabel `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2018-06-09 00:24:20', '{\"lang\":\"id\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktur dari tabel `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `products`
--
CREATE DATABASE IF NOT EXISTS `products` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `products`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2018_06_14_231025_create_products_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `status`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'baju', 15000.00, 1, 'production', '1529022635.jpg', '2018-06-14 17:30:35', '2018-06-14 17:30:35'),
(2, 'baju', 15000.00, 1, 'production', '1529022817.jpg', '2018-06-14 17:33:37', '2018-06-14 17:33:37'),
(3, 'baju', 15000.00, 1, 'production', '1529022856.jpg', '2018-06-14 17:34:16', '2018-06-14 17:34:16'),
(4, 'Nasi', 5000.00, 1, 'comingsoon', '1529248770.jpg', '2018-06-17 08:19:30', '2018-06-17 08:19:30'),
(5, 'Kue', 7000.00, 2, 'sell', '1529249238.jpg', '2018-06-17 08:27:18', '2018-06-17 08:27:31'),
(6, 'pakaian', 0.00, 0, '', '', NULL, NULL),
(7, 'Kue', 5000.00, 3, 'Baru', '1549081951.jpg', '2019-02-01 21:32:31', '2019-02-01 21:32:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `satu_market`
--
CREATE DATABASE IF NOT EXISTS `satu_market` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `satu_market`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `cart`
--

CREATE TABLE `cart` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `seller_id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `seller_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 6, 30, 1, '2018-07-26 02:08:42', '2018-07-26 02:08:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `catering`
--

CREATE TABLE `catering` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `comment`
--

CREATE TABLE `comment` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone_number` bigint(20) NOT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id`, `phone_number`, `facebook`, `instagram`, `twitter`, `whatsapp`, `line`, `created_at`, `updated_at`) VALUES
(1, 85350697501, 'wd6Ruph89D', 'emlB4eDIzO', 'gLD8kPl1kF', 'cfgRYBKvZZ', 'KO6zKxBO5h', '2018-07-23 08:33:48', '2018-07-23 08:33:48'),
(2, 85350697501, 'BTthd3gX4j', '7IwFQAESpd', 'ZPAC6znSSD', 'w7Q2nQHomr', '5SNfceqoW2', '2018-07-23 08:33:48', '2018-07-23 08:33:48'),
(3, 85350697501, 'RRyYF8qIV1', 'bYfpzsEbxC', 'EZQTuJbOAb', 'ke9XtUnQ8D', 'NcVthL5cfi', '2018-07-23 08:33:48', '2018-07-23 08:33:48'),
(4, 85350697501, '4sWL6iuTtI', 'ArPe6gSHFP', 'Dz0zb5WtzT', '47WxMmBHO0', 'cETLe3VZ0S', '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(5, 85350697501, 'h8sQ26tB1b', 'HhwfnFT3zT', 'ek6FQCIoHE', '5BvZ69JJsc', 'jbIyk9Eq8o', '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(6, 85350697501, 'krVBZSQbfU', 'BAv8ICPoGG', 'DottgV5OcG', 'vly2PZ9nm5', 'EIglzlujgt', '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(7, 85350697501, 'tTPKH18h88', 'Y1E39VJCag', '4Tv46RM06k', 'sUosoAPbPS', 'yMuQ6ROJEd', '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(8, 85350697501, 'i5WZDLb4TR', 'qK0p9LcoPN', 'bF8MWk10sS', 'K7HUd4wA7r', 'Jpykxzip1F', '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(9, 85350697501, 'NrWMEp7PM1', 'FItdJwObrM', '4A6cWJhgq9', 'H4qyOeEvLD', '9abtn64ZVo', '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(10, 85350697501, 'xGtec0GkfI', 'xthNzKsPqC', 'jV4WGnfjXP', 'IlDAadGNEZ', 'dbmdwVCToC', '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(11, 85350697501, 'RTDrMoKxDg', 'sTCoRopg03', 'OSWjuZvL0j', 'quKpxIrua1', 'UnTACNuwJi', '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(12, 85350697501, 'KhReYa2iSe', '1KbXNgGW7J', 'o60bwNq7iY', 'r3OFzQSGLF', 'mWZGyT27tt', '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(13, 85350697501, 'YInupEdC08', 'uHqIV8Jxg4', 'YFWK6OelIW', '7t4CfFVRSu', 'C3bR8IYmzf', '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(14, 85350697501, 'Gq3CQRyS04', '0srUY5Im75', 'flaNTXujy7', 'LneEmpYN4h', '9y14iT437U', '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(15, 85350697501, 'iFfofqc75r', 'pvRrn4hByM', 'tCEUm1DUGz', 'ImulnhHC1m', 'wWr8qLGnNo', '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(16, 85350697501, 'tDzeTLu8A9', 'J9fZBK3CTn', 'DxzxW2fTUr', 'kHVN2vTnwt', 'e6FXXuNLx9', '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(17, 85350697501, 'PNFOlFcGLi', 'gn15Jye1qR', 'YCKg6LfNIr', 'NqQfkBZZZZ', 'Y47Sy2rzMR', '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(18, 85350697501, 'Ym2JtOI49i', 'VGdaSDYtFZ', 'G6DQDZTBr7', 'qzCw6IOq0D', '53xpZalVVJ', '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(19, 85350697501, 'DPOeUOjhzB', '7tOQHFwbiB', 'EX3ZI0NLiA', 'AFfZKZhqAT', 'X5eOmtqejH', '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(20, 85350697501, 'Y6344Qnlfz', 'DREYTrdlWF', 'EJxJ3CD2lG', 'HbC2hkCLtd', '5dKIKn3Itg', '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(21, 85350697501, 'E5CqPoQwUN', 'stHXJv6hhl', 'ZCQtBAL8R1', 'HpLQUCwd3v', 'RxGDenhFvp', '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(22, 85350697501, 'LQpvVcHax4', 'NjfmAwXH4K', 'HdJ2zPCmAs', '4jielekBtK', 'qpbVnqeY2N', '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(23, 85350697501, 'AwHG0LMZte', 'IEACnp2kiv', 'yNDqHUG4VA', 'ApdScEjOeR', 'uM5nHPzrY7', '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(24, 85350697501, 'a890D4BNmq', 'q7LRiW2mK9', 'XC7cGIuFg9', 'ZHozdExaLm', 'KOIZD44mBG', '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(25, 85350697501, 'WGVStZGTK8', 'FAwtoyT0WZ', 'FCUHAp5MTQ', 'OElrQRiLhI', 'aOlRUiO0Ng', '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(26, 85350697501, 'M6eE6HortA', 'YKiVufEBkp', 'b01HdqLtbw', 'ny1PQAHZbv', 'd4Lwb8gJL6', '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(27, 85350697501, 'NCIQRaiy7v', 'CwL5F0AcV2', '33SCqBo9FI', 'YcC5qsQhnd', 'MbaIqUHAaO', '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(28, 85350697501, 'folXGEY4Z7', 'JxEZ15hI51', 'UGgGEVcNzJ', 'X8AUDR3qcw', 'fXYA81dykw', '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(29, 85350697501, 'RoKqCjq9c2', 'xSghDfjT1r', 'XHP2w4BbOf', 'J7gqD4rgXQ', 'LzZC4aHIym', '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(30, 85350697501, '2tyIH1x5vK', 'x3xkIIQBvW', 'oguGat2wTd', 'Uwd5wHa3N7', 'cbrldjZqjY', '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(31, 85350697501, '5rnTwgwPt4', 'oh6wiGlQvU', 'UhEHS61Erj', 'BOddoljcbY', 'trw5DQGXan', '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(32, 85350697501, 'NUv3JvpcBm', 'ruA4N8BUO1', 'mPFhwXjboi', 'TlZCBEV1sl', 'QhdBtbXyWa', '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(33, 85350697501, 'rwbLx8HELl', 'BoHgBiNZyK', '5XL54RLIQG', 'BAkXaWt7JE', 'rWwyHb6CYz', '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(34, 85350697501, 'Yzj9t5sbBy', 'q1lsaYJqNf', 'cWPW2A9cnW', 'tMF35oFgmD', 'y60hJxulZB', '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(35, 85350697501, 'JxFuG4fWDI', 'M1WSImVqFp', 'j1FLSdkZMA', 'H80qF0gnBj', 'uRky97SqNR', '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(36, 85350697501, 'Cmyh0y5Sos', 'Oxx81oqH3e', 'ocSAeDM3m8', 'eMUOAiD9t9', 'hAtb22uaYy', '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(37, 85350697501, 'zoiijUPriW', 'q2FnS1Zu3b', 'azXdLp2jxo', 'Uok5fOXiln', 'iuh6bU1XFY', '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(38, 85350697501, 'Fl61ErbYAq', 'L28Q3Aw6Iw', 'pFC0UKxucq', '7R8VSpzVxW', 'ZGnNywRQkH', '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(39, 85350697501, '66lhOlM3P6', 'elxPFLSQrB', 'pXTB0C8d5b', '5r8XJ7xgUN', 'TuEzPnUMfF', '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(40, 85350697501, '7ELARL1WRt', '3mi1JwqB6c', 'vLySzlcGqY', 'GikqFp9G0e', 'JSjedvJM5a', '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(41, 85350697501, 'LabG7vXqEH', 'LUDxXLevPM', 'sbiwcEMoTp', 'jTWv0ihbq4', 'mVzhm7P1Dq', '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(42, 85350697501, 'DFFzwVrXFb', 'SSC6aXCGUb', 'Mkh5EupwwI', '6aRt76hsvI', 'fVImHaLLMP', '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(43, 85350697501, 'bWbtbyOKXO', 'I0OPiYaBAP', 'qhr8UpL4cO', '03QWpQgEqQ', 'HcTpsK92Jm', '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(44, 85350697501, 'zcCJOGV2YA', 'QNna3SUFW9', 'e3lOv4xTIR', 'zOc9ZiOdaw', 'FVMH29TeK1', '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(45, 85350697501, 'RlOwkvEvYf', 'PYlrGujSLp', 'JsclX0A2AG', 'iCN71odv1D', '12jwybtQeW', '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(46, 85350697501, 'Wdt0esM7pd', 'OQGSpef1fh', 'xGsIQkpwBT', 'EUtnuAQQU6', 'AOeqVyJFUq', '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(47, 85350697501, 'PZRRLpdbNc', 'u034fBF2yg', 'Vl6Nkawr3l', 'vWBWRrfJJL', '4sCwgJv3i1', '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(48, 85350697501, 'W5Ts8F7a8t', 'a7ioug5lzp', 'ihgFiIivzQ', 'qzAzSwH1aE', 'uyi9tNoqQZ', '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(49, 85350697501, 'sOntJN0I3P', '9G5uRLlQQi', 'Fy1wyVWGlW', 'jwAsmpRjyh', 'kyj67vQ072', '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(50, 85350697501, '6TuM7xVNka', 'ghqBbzpUX5', '6fRrSktpvB', 'KxnrulwWg9', 'tQQ6oE0Izb', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(51, 81256939175, NULL, NULL, NULL, NULL, NULL, '2019-01-29 06:16:09', '2019-01-29 06:16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2013_11_23_072453_create_contact_table', 1),
(14, '2014_10_12_000000_create_users_table', 1),
(15, '2014_10_12_100000_create_password_resets_table', 1),
(16, '2018_06_21_023956_create_product_table', 1),
(17, '2018_06_21_024102_create_catering_table', 1),
(18, '2018_06_21_024111_create_token_table', 1),
(19, '2018_06_21_024122_create_cart_table', 1),
(20, '2018_06_21_042719_create_verify_user_table', 1),
(21, '2018_06_21_071903_create_comment_table', 1),
(22, '2018_07_08_052150_create_transaction_table', 1),
(23, '2018_07_08_052411_create_transaction_detail_table', 1),
(24, '2018_07_17_093059_create_story_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) NOT NULL DEFAULT '0',
  `sold` int(11) NOT NULL DEFAULT '0',
  `weight` decimal(5,2) NOT NULL,
  `favorite` int(11) NOT NULL,
  `minimal_buy` int(11) NOT NULL DEFAULT '1',
  `people_rated` int(11) NOT NULL DEFAULT '0',
  `rating` decimal(3,2) UNSIGNED NOT NULL,
  `image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci,
  `image3` text COLLATE utf8mb4_unicode_ci,
  `image4` text COLLATE utf8mb4_unicode_ci,
  `image5` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `user_id`, `name`, `description`, `price`, `discount`, `qty`, `color`, `condition`, `view`, `sold`, `weight`, `favorite`, `minimal_buy`, `people_rated`, `rating`, `image1`, `image2`, `image3`, `image4`, `image5`, `created_at`, `updated_at`) VALUES
(1, 19, 'gJ5OR4Q1Bj', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 3011490, 63, 57, 'lightblue,', 'good', 953, 15, '203.85', 28, 2, 82, '4.24', '17.jpg', NULL, '16.jpg', NULL, '11.jpg', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(2, 2, 'ObxIT31BlA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 226241, 3, 96, 'lightgreen,', 'good', 2379, 7, '38.94', 68, 4, 84, '2.53', '5.jpg', NULL, NULL, '2.jpg', NULL, '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(3, 13, 'XkKx24HAng', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 5673726, 57, 83, 'yellow,', 'good', 1428, 20, '211.59', 4, 4, 82, '2.35', '7.jpg', '5.jpg', NULL, NULL, NULL, '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(4, 15, 'iPGuHXIESa', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 7448887, 7, 40, 'yellow,', 'good', 2429, 16, '39.05', 28, 4, 77, '4.99', '22.jpg', NULL, NULL, NULL, '6.jpg', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(5, 8, '6A8HRy94uQ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 916010, 35, 74, 'red,', 'good', 4370, 19, '42.67', 7, 5, 24, '4.41', '4.jpg', NULL, NULL, NULL, '16.jpg', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(6, 30, 'eHr37YiqAo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 9093932, 33, 67, 'lightblue,', 'good', 4777, 19, '56.27', 55, 3, 33, '1.63', '8.jpg', NULL, NULL, NULL, NULL, '2018-07-23 08:34:02', '2018-07-26 02:08:40'),
(7, 25, '5fi8ksriym', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2723326, 63, 54, 'blue,', 'good', 544, 5, '28.13', 56, 1, 57, '2.91', '15.jpg', '21.jpg', NULL, '18.jpg', '19.jpg', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(8, 33, 'jYdd5bbYjD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 5353478, 30, 71, 'lightgreen,', 'good', 2167, 17, '78.33', 84, 4, 0, '2.31', '3.jpg', NULL, NULL, NULL, '22.jpg', '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(9, 36, 'M4Kze1myMV', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1384228, 77, 88, 'yellow,', 'good', 3995, 15, '158.54', 67, 5, 10, '1.19', '8.jpg', NULL, NULL, '21.jpg', '1.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(10, 5, 'maJtYz9bnG', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 7886040, 74, 70, 'blue,', 'good', 1765, 19, '48.37', 11, 1, 29, '4.03', '8.jpg', '18.jpg', '13.jpg', NULL, '5.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(11, 44, 'BgPz2HFHsQ', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 3820708, 23, 41, 'blue,', 'good', 2911, 0, '33.73', 57, 1, 88, '0.05', '18.jpg', '18.jpg', NULL, NULL, '17.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(12, 12, 'j17DM1FIvG', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4062328, 33, 75, 'green,', 'good', 1483, 4, '165.75', 84, 2, 10, '3.26', '20.jpg', NULL, NULL, NULL, NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(13, 46, 'bGvSEK3JRA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 8242550, 50, 63, 'red,', 'good', 4120, 12, '198.51', 59, 2, 65, '4.79', '16.jpg', NULL, NULL, NULL, NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(14, 6, 'Ojn3oeMRd5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 3024320, 18, 89, 'yellow,', 'good', 1114, 8, '110.45', 84, 3, 12, '2.68', '7.jpg', '2.jpg', '4.jpg', '13.jpg', '14.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(15, 33, 'Mgax4vftKC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2424347, 97, 63, 'yellow,', 'good', 1451, 9, '189.15', 26, 3, 81, '1.20', '18.jpg', '14.jpg', '2.jpg', NULL, NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(16, 36, 'C16NlQVqLt', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2336881, 29, 57, 'yellow,', 'good', 740, 17, '75.94', 24, 5, 83, '1.43', '18.jpg', '7.jpg', '6.jpg', '8.jpg', '6.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(17, 17, '0rVlux7SLK', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2123599, 38, 97, 'blue,', 'good', 4772, 9, '31.03', 63, 1, 8, '3.11', '18.jpg', '20.jpg', NULL, NULL, '15.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(18, 20, 'XqmRo0YU1b', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 8075213, 4, 71, 'yellow,', 'good', 2484, 14, '178.05', 57, 4, 93, '1.87', '6.jpg', NULL, '1.jpg', '7.jpg', NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(19, 21, 'KskZI0vM3J', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1895731, 60, 91, 'green,', 'good', 2323, 14, '43.62', 85, 2, 44, '1.61', '6.jpg', '21.jpg', NULL, NULL, NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(20, 15, 'tLwKPlWac3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 3191466, 8, 87, 'red,', 'good', 1584, 3, '123.21', 47, 1, 23, '0.79', '4.jpg', NULL, '6.jpg', '18.jpg', NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(21, 30, 'jdCJjzEkO6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 9742424, 98, 71, 'blue,', 'good', 2269, 20, '6.87', 48, 1, 95, '4.28', '20.jpg', '20.jpg', '1.jpg', NULL, '14.jpg', '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(22, 9, 'qjRcIKtjEb', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1358879, 10, 94, 'blue,', 'good', 3031, 17, '173.87', 0, 1, 43, '3.40', '3.jpg', '17.jpg', NULL, NULL, NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(23, 13, '6DbqLL8GNu', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1671153, 62, 88, 'yellow,', 'good', 4238, 17, '155.83', 14, 4, 34, '2.46', '2.jpg', NULL, '7.jpg', '21.jpg', NULL, '2018-07-23 08:34:03', '2018-07-23 08:34:03'),
(24, 9, '4AIWyHmSxW', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1049888, 17, 72, 'blue,', 'good', 4040, 16, '73.11', 78, 4, 9, '4.62', '12.jpg', NULL, NULL, '17.jpg', NULL, '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(25, 37, 'TypmfKPbqY', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 7579434, 75, 86, 'green,', 'good', 3982, 10, '8.29', 75, 4, 1, '1.48', '21.jpg', '15.jpg', NULL, NULL, '19.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(26, 29, 'BYBTiHcTvb', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 9250270, 53, 79, 'yellow,', 'good', 3035, 7, '81.17', 98, 3, 19, '2.24', '11.jpg', '13.jpg', '15.jpg', '17.jpg', '20.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(27, 12, 'EUC7kE77z3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4784740, 55, 76, 'lightgreen,', 'good', 1187, 2, '73.50', 90, 4, 63, '4.90', '3.jpg', '22.jpg', '17.jpg', '1.jpg', NULL, '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(28, 39, 'nYLGHzvRWc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 1924592, 27, 76, 'lightgreen,', 'good', 1983, 7, '188.99', 92, 4, 65, '0.33', '3.jpg', NULL, NULL, '18.jpg', '9.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(29, 16, 'nCnoVqn6VD', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2349758, 38, 57, 'lightblue,', 'good', 3334, 7, '34.17', 83, 1, 61, '1.29', '14.jpg', '13.jpg', NULL, '16.jpg', NULL, '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(30, 48, '1T3URYBO72', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 6603259, 21, 46, 'blue,', 'good', 4315, 11, '134.54', 87, 4, 63, '2.39', '16.jpg', NULL, NULL, NULL, '17.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(31, 32, 'a1syOUIkXP', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2481406, 20, 73, 'lightgreen,', 'good', 4484, 22, '84.01', 3, 4, 98, '1.73', '12.jpg', '21.jpg', NULL, NULL, NULL, '2018-07-23 08:34:04', '2018-07-24 03:22:54'),
(32, 7, 'L7SCdE9p97', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 6549850, 13, 68, 'yellow,', 'good', 950, 15, '41.93', 84, 1, 91, '1.83', '11.jpg', NULL, '10.jpg', NULL, '1.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(33, 35, 'wAxQjzIVyi', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 5762808, 9, 72, 'yellow,', 'good', 1268, 6, '47.21', 77, 3, 56, '3.60', '6.jpg', NULL, '5.jpg', '14.jpg', '2.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(34, 23, 'OUA26tgSm3', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 862649, 52, 73, 'green,', 'good', 1532, 19, '60.62', 19, 3, 6, '3.54', '9.jpg', NULL, NULL, NULL, '2.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(35, 43, 'CR634tR0W7', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 9168093, 60, 55, 'yellow,', 'good', 4117, 4, '44.00', 43, 4, 79, '4.77', '15.jpg', NULL, '20.jpg', '7.jpg', '20.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(36, 11, 'geRZYmkLsN', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 8401984, 85, 84, 'yellow,', 'good', 1541, 23, '196.36', 32, 4, 19, '3.84', '10.jpg', '8.jpg', NULL, '5.jpg', '10.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(37, 37, 'QX5Cba5Q8X', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 2700246, 5, 67, 'lightgreen,', 'good', 2704, 5, '97.90', 8, 5, 20, '3.32', '19.jpg', NULL, '4.jpg', NULL, '11.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(38, 49, 'VmXgvSJh19', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 7119093, 49, 79, 'green,', 'good', 702, 12, '101.10', 46, 1, 28, '4.44', '10.jpg', '9.jpg', NULL, NULL, '1.jpg', '2018-07-23 08:34:04', '2018-07-23 08:34:04'),
(39, 8, 'SMpg66fmGz', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4681327, 29, 57, 'yellow,', 'good', 1973, 8, '126.27', 36, 2, 52, '1.42', '17.jpg', '6.jpg', NULL, '1.jpg', '1.jpg', '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(40, 15, 'We6ecNEUK8', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 3831071, 99, 88, 'yellow,', 'good', 2848, 21, '15.01', 55, 5, 3, '1.03', '7.jpg', NULL, '4.jpg', '14.jpg', NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(41, 11, 'g20G1sSdwo', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4510932, 86, 68, 'yellow,', 'good', 2576, 17, '110.66', 91, 4, 33, '1.13', '15.jpg', NULL, NULL, '17.jpg', NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(42, 48, 'f9uoVx64I6', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4924944, 55, 60, 'green,', 'good', 4664, 19, '186.81', 57, 3, 51, '3.60', '2.jpg', '12.jpg', '10.jpg', NULL, NULL, '2018-07-23 08:34:05', '2018-07-24 03:23:03'),
(43, 33, 'SJCkCLJWob', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4288090, 63, 44, 'red,', 'good', 2321, 7, '161.17', 76, 2, 51, '4.97', '21.jpg', '6.jpg', '10.jpg', NULL, NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(44, 31, 'eOtiIUhwvY', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4304900, 16, 63, 'blue,', 'good', 3251, 11, '115.58', 80, 3, 72, '1.18', '12.jpg', '17.jpg', NULL, NULL, NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(45, 25, 'nhypLMUbqc', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 8587518, 15, 83, 'red,', 'good', 4300, 16, '210.13', 73, 1, 17, '4.05', '14.jpg', NULL, '2.jpg', '19.jpg', '8.jpg', '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(46, 20, 'ofRpGhtgYz', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 6861691, 2, 68, 'lightblue,', 'good', 3650, 23, '183.50', 81, 4, 15, '3.94', '7.jpg', '18.jpg', '22.jpg', NULL, NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(47, 19, '1lgjfv2jj5', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 8108128, 28, 48, 'blue,', 'good', 2937, 8, '12.83', 66, 1, 77, '0.15', '2.jpg', NULL, '3.jpg', '7.jpg', NULL, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(48, 25, '1ZlRNwPFca', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 9507671, 30, 94, 'red,', 'good', 1364, 12, '192.85', 28, 3, 23, '2.70', '12.jpg', '12.jpg', '13.jpg', NULL, '2.jpg', '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(49, 21, 'xFP7bov7DA', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 4230689, 44, 72, 'blue,', 'good', 366, 20, '131.74', 31, 1, 82, '1.55', '14.jpg', NULL, NULL, '8.jpg', '15.jpg', '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(50, 44, 'AgGYUZdwUC', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Soluta dolorum eum et inventore adipisci blanditiis iure in eligendi, quo at dolores repudiandae porro neque provident cumque, iusto molestias a veritatis.', 5762979, 98, 90, 'yellow,', 'good', 4287, 10, '111.78', 26, 5, 70, '2.03', '21.jpg', NULL, '3.jpg', NULL, '16.jpg', '2018-07-23 08:34:05', '2018-07-23 08:34:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `story`
--

CREATE TABLE `story` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `story`
--

INSERT INTO `story` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 48, 7, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(2, 18, 11, '2018-07-23 08:34:05', '2018-07-23 08:34:05'),
(3, 16, 2, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(4, 8, 5, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(5, 46, 33, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(6, 39, 33, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(7, 44, 45, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(8, 31, 13, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(9, 6, 11, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(10, 2, 49, '2018-07-23 08:34:06', '2018-07-23 08:34:06'),
(11, 17, 4, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(12, 38, 10, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(13, 6, 24, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(14, 23, 9, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(15, 1, 17, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(16, 34, 2, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(17, 16, 33, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(18, 21, 10, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(19, 16, 36, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(20, 38, 44, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(21, 21, 49, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(22, 5, 34, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(23, 22, 24, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(24, 45, 12, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(25, 50, 28, '2018-07-23 08:34:07', '2018-07-23 08:34:07'),
(26, 43, 33, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(27, 1, 37, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(28, 37, 31, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(29, 42, 23, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(30, 49, 5, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(31, 50, 3, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(32, 42, 7, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(33, 24, 41, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(34, 22, 36, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(35, 24, 14, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(36, 6, 33, '2018-07-23 08:34:08', '2018-07-23 08:34:08'),
(37, 42, 43, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(38, 24, 8, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(39, 18, 25, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(40, 21, 1, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(41, 43, 15, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(42, 30, 2, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(43, 27, 24, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(44, 38, 23, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(45, 5, 18, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(46, 47, 36, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(47, 20, 1, '2018-07-23 08:34:09', '2018-07-23 08:34:09'),
(48, 9, 26, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(49, 20, 9, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(50, 18, 5, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(51, 20, 41, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(52, 23, 20, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(53, 31, 17, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(54, 48, 47, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(55, 10, 45, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(56, 31, 21, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(57, 44, 17, '2018-07-23 08:34:10', '2018-07-23 08:34:10'),
(58, 50, 27, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(59, 6, 10, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(60, 43, 36, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(61, 19, 41, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(62, 41, 32, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(63, 15, 23, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(64, 36, 9, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(65, 32, 42, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(66, 24, 34, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(67, 30, 3, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(68, 19, 12, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(69, 20, 16, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(70, 28, 15, '2018-07-23 08:34:11', '2018-07-23 08:34:11'),
(71, 4, 47, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(72, 20, 38, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(73, 10, 12, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(74, 26, 24, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(75, 14, 44, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(76, 4, 19, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(77, 15, 43, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(78, 46, 38, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(79, 11, 44, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(80, 3, 6, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(81, 20, 44, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(82, 1, 32, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(83, 8, 45, '2018-07-23 08:34:12', '2018-07-23 08:34:12'),
(84, 16, 38, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(85, 50, 32, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(86, 21, 40, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(87, 3, 13, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(88, 20, 50, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(89, 6, 38, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(90, 50, 34, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(91, 39, 32, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(92, 29, 20, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(93, 44, 39, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(94, 19, 45, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(95, 46, 18, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(96, 3, 34, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(97, 25, 11, '2018-07-23 08:34:13', '2018-07-23 08:34:13'),
(98, 12, 7, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(99, 40, 40, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(100, 27, 41, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(101, 48, 7, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(102, 23, 48, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(103, 28, 43, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(104, 15, 19, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(105, 3, 33, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(106, 2, 11, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(107, 5, 26, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(108, 19, 24, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(109, 37, 28, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(110, 9, 39, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(111, 46, 37, '2018-07-23 08:34:14', '2018-07-23 08:34:14'),
(112, 25, 50, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(113, 18, 47, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(114, 22, 47, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(115, 38, 43, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(116, 12, 21, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(117, 20, 45, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(118, 45, 11, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(119, 39, 38, '2018-07-23 08:34:15', '2018-07-23 08:34:15'),
(120, 35, 22, '2018-07-23 08:34:15', '2018-07-23 08:34:15');

-- --------------------------------------------------------

--
-- Struktur dari tabel `token`
--

CREATE TABLE `token` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `token`
--

INSERT INTO `token` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(1, 1, '60d64ca73ca2d1e1243409f508b892e4', '2018-07-26 02:08:04', '2018-07-26 02:08:04'),
(3, 1, 'e85460e03d47741cd9e57aa426e1550a', '2018-09-06 01:49:38', '2018-09-06 01:49:38'),
(4, 51, '2dc54fc8b68ac0d3228ac25c49742d3d', '2019-01-31 11:42:27', '2019-01-31 11:42:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `grandtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(10) UNSIGNED NOT NULL,
  `trans_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `wallet` bigint(20) NOT NULL DEFAULT '0',
  `rating` decimal(3,2) UNSIGNED NOT NULL DEFAULT '0.00',
  `image` text COLLATE utf8mb4_unicode_ci,
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `city`, `gender`, `birth_date`, `wallet`, `rating`, `image`, `verified`, `created_at`, `updated_at`) VALUES
(1, 'Glen Breitenberg DDS', 'arc@gmail.com', '$2y$10$w4TyI4DRKZrZYWnhdq2InOcg0JylC1jbSwoJg21fKPYDDwF./7Fmm', 'user', 't3ETMAU7qT', 'laki-laki', '0000-00-00', 2651346, '2.03', '7.jpg', 1, '2018-07-23 08:33:48', '2018-08-31 22:31:01'),
(2, 'Dr. Orval Ledner', 'jazmin05@williamson.biz', '$2y$10$AmdZv.ygbrYK.jx91YuOxuJKg/0BaSGN1DAIa9f2UhN5oOh4mMVda', 'user', 'txHWR20qcz', 'laki-laki', '0000-00-00', 5897475, '3.63', '6.jpg', 1, '2018-07-23 08:33:48', '2018-07-23 08:33:48'),
(3, 'Mrs. Constance Rodriguez Sr.', 'bryon15@gmail.com', '$2y$10$B7TPLtySW9.OORHT43e.ZOTowzVAylrgKsPCsm838BMBb71JqH766', 'user', 'okFm5GGojJ', 'laki-laki', '0000-00-00', 2264960, '3.15', '1.jpg', 1, '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(4, 'Miss Mina Renner', 'garrick.franecki@kub.net', '$2y$10$pvZjRqwcxzVra6cUW5kKA.V1BvtM.P/YDDVwjW0WCOG9uXaN0/YI2', 'user', 'KpGPGbvFiL', 'laki-laki', '0000-00-00', 4435032, '3.72', '7.jpg', 1, '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(5, 'Arielle Ratke', 'edwin.schneider@hotmail.com', '$2y$10$zF9aZvFCLGn8eD5GjuQEounBIeN8ofsdw9Dq/iabq62KCcJmr5SFa', 'user', 'TklKsAulMw', 'laki-laki', '0000-00-00', 185919, '2.06', '2.jpg', 1, '2018-07-23 08:33:49', '2018-07-23 08:33:49'),
(6, 'Mr. Stuart Schmeler', 'mohr.terrell@hotmail.com', '$2y$10$bY1SGf7wAw1Jibd489AoOOzvl18QgvDx/rTLlmupYuP4fmW7pQ2r6', 'user', 'hHBxD3o2nP', 'laki-laki', '0000-00-00', 3491496, '3.90', '4.jpg', 1, '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(7, 'Luna Koelpin', 'isabella.kulas@waelchi.org', '$2y$10$jbowJI38VIMaKxDrK7yldO7L8PeDxGdK4FLRBBbkgcs/zzov/tVEi', 'user', '9ZuiuaHfgp', 'laki-laki', '0000-00-00', 3307982, '3.42', '7.jpg', 1, '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(8, 'Berry Swaniawski', 'breanna.abernathy@runolfsdottir.info', '$2y$10$CSbvatTl8Wwx2/uA7QKS2OYWmNxFoQ0.al7lKcKptGOu07txP3ovm', 'user', 'tZEWwCQ6C0', 'laki-laki', '0000-00-00', 8856539, '3.91', '3.jpg', 1, '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(9, 'Mrs. Everette Mann III', 'ischimmel@erdman.net', '$2y$10$y7ECq9jI3/j6rMqTjFu5vusWXzPdZSo7eApkxcDEzjsdvjx6MLKTy', 'user', 'hC1ClNBfso', 'laki-laki', '0000-00-00', 436107, '4.71', '4.jpg', 1, '2018-07-23 08:33:50', '2018-07-23 08:33:50'),
(10, 'Lindsey Mayer Jr.', 'reinger.stuart@russel.info', '$2y$10$VIGlu8xoaYgSGxzldLieau1b.Vu/mGDb8CRD7klJDfGPvj.SdOa/y', 'user', '0N6nHr0vWy', 'laki-laki', '0000-00-00', 2574215, '1.71', '1.jpg', 1, '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(11, 'Hazel Berge', 'schulist.vernon@yahoo.com', '$2y$10$Seg.X2CAkZ4nO3h3DU/Fd.SgKn1RBOgH3HyscMYQzgH9r5F.QAIxa', 'user', 'M7OKesFfEU', 'laki-laki', '0000-00-00', 7703336, '2.31', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(12, 'Rod Emard Sr.', 'pierce.wunsch@gmail.com', '$2y$10$bR.QtR6Ry/UJBC7673nKUeiGjZ.xOgJF4VI92t.hbXR1xzcKmAK1O', 'user', 'HFDBgWSSjG', 'laki-laki', '0000-00-00', 4838756, '0.82', '7.jpg', 1, '2018-07-23 08:33:51', '2018-07-23 08:33:51'),
(13, 'Rossie Parisian', 'nona12@farrell.com', '$2y$10$RorIu0ECyjo49FOMvBxNT.lLIDMtG3NqsCKK9JP9rXIF5MMFuZ90a', 'user', '7PdTO5hyo9', 'laki-laki', '0000-00-00', 3237555, '0.82', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(14, 'Yasmine Von', 'zieme.edwina@johnson.com', '$2y$10$WJD2A7NMJ6Dc8iyAUWkP7eDvrfyWuJWmOJC4xYTssgGUHV7VsZTHS', 'user', 'bEOuqArJk0', 'laki-laki', '0000-00-00', 1500242, '1.61', '7.jpg', 1, '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(15, 'Ethelyn Jones', 'dibbert.eldridge@yahoo.com', '$2y$10$HNhuK2ambDw/TwsKDc0q1eOgh6FC20eRd0YkZia2hUHrmVnOLxbTq', 'user', 'NKhP4R2Ixs', 'laki-laki', '0000-00-00', 5721351, '1.50', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(16, 'Prof. Niko Streich', 'shaun.hills@rath.com', '$2y$10$KVu4jvDEJ.KsoKoM15hk5uBQFzwYuohMXJpAhHuGhdlckZndsikeC', 'user', 'ulvj9NG3nT', 'laki-laki', '0000-00-00', 1452087, '0.60', '1.jpg', 1, '2018-07-23 08:33:52', '2018-07-23 08:33:52'),
(17, 'Hal Fisher', 'zbatz@gmail.com', '$2y$10$NU3XVcqT5MECknhDhf8BOeftbrBSReGmf.1zfNTq3c6XbmJkxJBrW', 'user', 'Ieq1Qn94gn', 'laki-laki', '0000-00-00', 6458608, '4.56', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(18, 'Josiane Beer', 'hoeger.virginie@hotmail.com', '$2y$10$cMeQtZEnMqjmeUHTCIAIJebSiaTfTJEz7Jw12zXqy8MKCgUfq2L12', 'user', 'tfbD0F8Ney', 'laki-laki', '0000-00-00', 6593735, '3.43', '2.jpg', 1, '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(19, 'Kenyon Feeney', 'noemy.boyle@hotmail.com', '$2y$10$52EFh8Bu9.O7mxcrk3/x3.AsijOFhLmTFBoCoV9DYlcCukLJ3M3Q.', 'user', 'Lf9DTaw3Dp', 'laki-laki', '0000-00-00', 8966124, '1.42', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(20, 'Kayley Steuber Jr.', 'stefan20@effertz.com', '$2y$10$tzzG0.mE/mXwJQUYIQsS.uwYdbWUS61pA915EDptMvXzu4x0wpKBy', 'user', 'WnDo6ml5JJ', 'laki-laki', '0000-00-00', 1694644, '4.62', '7.jpg', 1, '2018-07-23 08:33:53', '2018-07-23 08:33:53'),
(21, 'Larue Rolfson', 'shanahan.annabel@hotmail.com', '$2y$10$ifQfxeRZ8oR2KZoU8wiAHO9v7AcmcERHL32WWC3BlDA2fAs1R7pDa', 'user', 'bKHTQFFbp4', 'laki-laki', '0000-00-00', 8518969, '4.17', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(22, 'Trisha Gerlach II', 'dach.john@miller.net', '$2y$10$XlpK7Ix9o1ni9ERvV9WyLuJf3kQG2CRwjcbWn/j81kGYZVZJbWmlC', 'user', 'nn0z7frFC1', 'laki-laki', '0000-00-00', 440757, '4.99', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(23, 'Joelle Davis I', 'jon.medhurst@gmail.com', '$2y$10$mgJHVc6.yeKkiOSFCPb3YunsoT0lQF1mxcOAYkcp7wl3T.H9K8uK2', 'user', 'n7XMj5uhxp', 'laki-laki', '0000-00-00', 1329771, '0.92', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:54', '2018-07-23 08:33:54'),
(24, 'Edna Herzog', 'ypfeffer@schumm.org', '$2y$10$XxfhRDIbl/CEbYo39lPFqOrlubMdEwQdlfX/NRD4UjIwmdCnE87yW', 'user', 'TzEPE9qb4s', 'laki-laki', '0000-00-00', 3986706, '2.82', '4.jpg', 1, '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(25, 'Miss Malika Spencer V', 'conn.eleanore@mcclure.com', '$2y$10$mPjmE1LPRd8NeVF7WJAyxe.HeMX06DYGHbIprgygoTjk6x7R1jqri', 'user', 'HlBU3AlUnz', 'laki-laki', '0000-00-00', 2327120, '3.32', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(26, 'Jannie Schoen', 'vhuel@schimmel.com', '$2y$10$UpkSn4NisgcN5IARtp9OaulKyRyxnWUuOue/v2k0IRP3f32PEIncS', 'user', 'VOHy2WS61V', 'laki-laki', '0000-00-00', 6301733, '1.28', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(27, 'Mr. Drake Stark I', 'providenci65@mueller.net', '$2y$10$V2QD.d0kt7KTJSkNHK0mE.Osg2iGH7cnMnbH1u4mFdS.XnzrSgYp2', 'user', '0TFlaLIKiC', 'laki-laki', '0000-00-00', 3386629, '4.97', '4.jpg', 1, '2018-07-23 08:33:55', '2018-07-23 08:33:55'),
(28, 'Keyshawn Dare', 'greta47@hotmail.com', '$2y$10$hsT3JUld6mWkCK1hq9uER.cGKpHQqb..50SGF8o2Rhs/P30Ln5qLC', 'user', 'I2EHHaISMF', 'laki-laki', '0000-00-00', 8087450, '2.96', '1.jpg', 1, '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(29, 'Hayley Tremblay', 'doyle13@yahoo.com', '$2y$10$sBiAajr7JwC4iUlA0FWBwuc..PId32hViIWwW5B1IvVnrhDubvZn.', 'user', 'iSJK4f8PnO', 'laki-laki', '0000-00-00', 6409711, '0.21', '2.jpg', 1, '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(30, 'Lizeth Durgan', 'fredy.hermann@marks.com', '$2y$10$QvOH3t6pQdOdnwhFHtQjzeoA0odbki7/CesYcONKwvroVnSQjFH9y', 'user', '0Eiye0SV0U', 'laki-laki', '0000-00-00', 6984380, '1.23', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(31, 'David Rosenbaum DDS', 'thalia31@rohan.com', '$2y$10$XkSKyBh40NqvwMckVbRe/uI4eBN0hf8LNXhMQ.dq0LA/GszWmCtwa', 'user', 'mK4Dwfkyxg', 'laki-laki', '0000-00-00', 1854940, '3.21', '7.jpg', 1, '2018-07-23 08:33:56', '2018-07-23 08:33:56'),
(32, 'Heaven Gottlieb', 'simonis.benny@keebler.biz', '$2y$10$w9yyA2ktXZK67j/5.6W19eL.QsgqaiwQ1mLrG0NxSjsZ4mnx2RQn.', 'user', 'KEodM2ZzSS', 'laki-laki', '0000-00-00', 1491367, '3.82', '5.jpg', 1, '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(33, 'Jacinthe Spinka', 'cdavis@crooks.biz', '$2y$10$e6mfKMKibCv0SIroQmmoxOdHajl03QmXVtpYIVrCDdb1DZtZzeRKK', 'user', 'OQc5XmEJzh', 'laki-laki', '0000-00-00', 8244898, '4.24', '5.jpg', 1, '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(34, 'Cameron Doyle', 'uarmstrong@runolfsson.biz', '$2y$10$DjJncVEKQ0dRCW4drejyeOD/mhKdzvviVi4AxvxgrvRmGvU1hb6BO', 'user', 'Ulh1FsurLk', 'laki-laki', '0000-00-00', 8645846, '4.61', '4.jpg', 1, '2018-07-23 08:33:57', '2018-07-23 08:33:57'),
(35, 'Marcelina Baumbach', 'monahan.grayce@yahoo.com', '$2y$10$/sZmxybn/UcRlLdnubK9kue3YglqP4awj0xY3hiR4cYsdGVUrjpf.', 'user', '1xPiUFTETG', 'laki-laki', '0000-00-00', 4450400, '2.94', '4.jpg', 1, '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(36, 'Skylar Trantow PhD', 'orion.goyette@yahoo.com', '$2y$10$8KRZXxS7Hgv19oCqLKDBcOZX2IPFzDx2vuJxSeI40ySR1ZMEZyrHK', 'user', 'wfXVCiKOHC', 'laki-laki', '0000-00-00', 8293922, '0.96', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(37, 'Muhammad Okuneva', 'kale67@hotmail.com', '$2y$10$B5VNfNBYDqK85mxObImAAu8H96NMEhreiSYqU6MWUqEEdLimxER/a', 'user', 'NLEkZHujDr', 'laki-laki', '0000-00-00', 765647, '3.39', '3.jpg', 1, '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(38, 'Prof. Rowland Jacobs', 'ohara.janelle@greenfelder.biz', '$2y$10$vX9HyE4QLkonqiASawYDMOX/eM8t6OXhxwuVf78wHsFTr3Lvm4wIq', 'user', 'w27RWwJcCj', 'laki-laki', '0000-00-00', 2094634, '4.96', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:58', '2018-07-23 08:33:58'),
(39, 'Dustin Dooley', 'olga00@lakin.net', '$2y$10$o.OKkrChmfbTLyGvdKB9U.S1gWWcXdiDS9WwG1kEhONJ6m.vjM6AW', 'user', 'zBL4Nlo63l', 'laki-laki', '0000-00-00', 7866025, '2.57', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(40, 'Celia Halvorson', 'kmoen@grimes.biz', '$2y$10$/vPLlz4Js/k0ZNVO22ebnek6pHpDsIe86yziIN5ekLhMn1MH3J5wa', 'user', 'GQAfcOOsPg', 'laki-laki', '0000-00-00', 297926, '4.02', '5.jpg', 1, '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(41, 'Jasen Schroeder Jr.', 'jamal.hyatt@yahoo.com', '$2y$10$Ys/C67yOiqlPtLghkj1kPuz1to0CBq8wnNEHoUQWVuxX9F4qmmo2S', 'user', 'Q5zhKnIBMW', 'laki-laki', '0000-00-00', 9315446, '2.16', 'SatuMarketNoImage.png', 1, '2018-07-23 08:33:59', '2018-07-23 08:33:59'),
(42, 'Shanna Turner', 'ftorp@price.com', '$2y$10$XcfNaIxlwGTUHAlJjKxjnevNgVVRk5PUSm9y5WC8tRAJtgOizQYcq', 'user', 'WQwh1bTPBA', 'laki-laki', '0000-00-00', 8344607, '1.13', '2.jpg', 1, '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(43, 'Petra Abbott', 'jordon.feeney@yahoo.com', '$2y$10$HvCjSHuP3hi56QGJfF3EsuCoyq8fjRVtbLtXGiTi5rOJzGvyfJr1q', 'user', '46FXkPsN8E', 'laki-laki', '0000-00-00', 4303675, '3.71', '5.jpg', 1, '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(44, 'Mr. Buford Balistreri DDS', 'mohr.devonte@yahoo.com', '$2y$10$qPahKJrfFdkw6v6hPNPmqO0rjrpNbcSVBroxN0lZlCS.0Jq67PMYG', 'user', 'qQB0QYWtzm', 'laki-laki', '0000-00-00', 5637378, '0.87', 'SatuMarketNoImage.png', 1, '2018-07-23 08:34:00', '2018-07-23 08:34:00'),
(45, 'Elda Howe', 'johnston.icie@ledner.com', '$2y$10$9eGqykVQ5r5jxHZDxryF7Ou7fmiRMDqUMYJPeX6IMw6gZEYMEingq', 'user', 'EYxe2N0CCm', 'laki-laki', '0000-00-00', 8601936, '0.89', 'SatuMarketNoImage.png', 1, '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(46, 'Prof. Lawson Morissette II', 'liliane84@wiza.info', '$2y$10$AvTIvrM45I/Y8WM6dAWowuVbgslrQU6XxIp2/3pPptpoPz5LoaBW.', 'user', '8L8OJmU5Me', 'laki-laki', '0000-00-00', 6382101, '4.80', 'SatuMarketNoImage.png', 1, '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(47, 'Brody Robel DVM', 'layne.larkin@dietrich.com', '$2y$10$z6m.JezERZ5sEmCizbSpBuaQGgx7AQr7YtiPTdvJF7oFg48kJlX32', 'user', '9sUb4e4ifh', 'laki-laki', '0000-00-00', 6905423, '1.86', 'SatuMarketNoImage.png', 1, '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(48, 'Mr. Jocelyn Johnson IV', 'corwin.olin@king.com', '$2y$10$EMnmik.hXL9oA857TZu.te/3ZgTMemxhA64q4f5lvqhPw8jurSCM.', 'user', '7BQUNuL82L', 'laki-laki', '0000-00-00', 1099961, '1.72', 'SatuMarketNoImage.png', 1, '2018-07-23 08:34:01', '2018-07-23 08:34:01'),
(49, 'Dr. Alexzander Rohan I', 'scotty39@hotmail.com', '$2y$10$/53STD1YxYSpAicWqoddyeZLFwrRCZ4S1C8DcYQ7GH3lusPCJweCq', 'user', 'yKXXx7uC0B', 'laki-laki', '0000-00-00', 4003566, '3.35', '3.jpg', 1, '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(50, 'Ms. Adelia Schmeler', 'lauer@hotmail.com', '$2y$10$ItDsktEDsXR3LFP21XAXyeTnuwJ9ii8o1UHOKPL4L7TtKy0.hXD5K', 'user', 'yY3PoQmLNh', 'laki-laki', '0000-00-00', 128329, '1.78', '2.jpg', 1, '2018-07-23 08:34:02', '2018-07-23 08:34:02'),
(51, 'ano', 'suryamarcello@gmail.com', '$2y$10$occ7kLFprjQ3IkM6xDmA2OlxGumQHtWJQXZdlizxncsIvmroISbiC', 'user', 'pontianak', 'male', '0000-00-00', 0, '0.00', 'SatuMarketNoImage.png', 0, '2019-01-29 06:16:09', '2019-01-29 06:16:09');

-- --------------------------------------------------------

--
-- Struktur dari tabel `verify_user`
--

CREATE TABLE `verify_user` (
  `user_id` int(11) NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `verify_user`
--

INSERT INTO `verify_user` (`user_id`, `token`, `created_at`, `updated_at`) VALUES
(51, '7JrTFXAjOOTEYhwz4JJlEpgJ34PPurPPpkmZiN06', '2019-01-29 06:16:09', '2019-01-29 06:16:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_product_id_seller_id_index` (`product_id`,`seller_id`),
  ADD KEY `cart_seller_id_foreign` (`seller_id`);

--
-- Indexes for table `catering`
--
ALTER TABLE `catering`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comment_user_id_product_id_index` (`user_id`,`product_id`),
  ADD KEY `comment_product_id_foreign` (`product_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_user_id_index` (`user_id`);

--
-- Indexes for table `story`
--
ALTER TABLE `story`
  ADD PRIMARY KEY (`id`),
  ADD KEY `story_product_id_user_id_index` (`product_id`,`user_id`),
  ADD KEY `story_user_id_foreign` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_id_index` (`id`);

--
-- Indexes for table `verify_user`
--
ALTER TABLE `verify_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `catering`
--
ALTER TABLE `catering`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `story`
--
ALTER TABLE `story`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `token`
--
ALTER TABLE `token`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `cart_seller_id_foreign` FOREIGN KEY (`seller_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `comment_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `story`
--
ALTER TABLE `story`
  ADD CONSTRAINT `story_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  ADD CONSTRAINT `story_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_id_foreign` FOREIGN KEY (`id`) REFERENCES `contact` (`id`);
--
-- Database: `sayur`
--
CREATE DATABASE IF NOT EXISTS `sayur` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `sayur`;
--
-- Database: `smk_belajar`
--
CREATE DATABASE IF NOT EXISTS `smk_belajar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `smk_belajar`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `classrooms`
--

CREATE TABLE `classrooms` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `classrooms`
--

INSERT INTO `classrooms` (`id`, `name`) VALUES
(1, '10A'),
(2, '10B'),
(3, '11A'),
(4, '11B'),
(5, '12A'),
(6, '12B');

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_answers`
--

CREATE TABLE `essay_answers` (
  `id` int(11) NOT NULL,
  `answer` text,
  `essay_question_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay_answers`
--

INSERT INTO `essay_answers` (`id`, `answer`, `essay_question_id`, `student_id`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_keywords`
--

CREATE TABLE `essay_keywords` (
  `id` int(11) NOT NULL,
  `essay_id` int(11) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay_keywords`
--

INSERT INTO `essay_keywords` (`id`, `essay_id`, `keywords`) VALUES
(1, 4, 'asdf'),
(2, 5, 'asdf'),
(3, 1, 'asdf'),
(4, 2, 'asdf'),
(5, 3, 'asdfasdfas'),
(6, 3, 'adfad'),
(7, 3, 'asfasd'),
(8, 3, 'asdf'),
(9, 3, ''),
(10, 4, 'afdasdfsd'),
(11, 5, '23asdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `essay_questions`
--

CREATE TABLE `essay_questions` (
  `id` int(11) NOT NULL,
  `question` text,
  `weight` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `essay_questions`
--

INSERT INTO `essay_questions` (`id`, `question`, `weight`, `exam_id`) VALUES
(3, 'asdfasdf', 34, 2),
(4, 'asdf', 324, 2),
(5, 'asdf', 3, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `exams`
--

CREATE TABLE `exams` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `exams`
--

INSERT INTO `exams` (`id`, `title`, `start`, `end`, `created_by`, `classroom_id`) VALUES
(2, 'asf', '2017-05-11 14:00:00', '2017-05-17 01:01:00', 1, 1),
(3, 'asffa', '2017-05-16 00:00:00', '2017-05-18 02:00:00', 1, 1),
(4, 'matematika', '2017-05-15 01:00:00', '2017-05-19 01:00:00', 1, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_essay`
--

CREATE TABLE `history_essay` (
  `id` int(11) NOT NULL,
  `answer` text,
  `essay_question_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_multiple`
--

CREATE TABLE `history_multiple` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(11) NOT NULL,
  `login_time` datetime DEFAULT NULL,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_logs`
--

INSERT INTO `login_logs` (`id`, `login_time`, `ip_address`, `user_id`) VALUES
(1, '2017-05-17 05:21:50', '::1', 3),
(2, '2017-05-17 07:28:28', '::1', 3),
(3, '2018-12-17 10:05:13', '127.0.0.1', 5),
(4, '2018-12-17 10:09:31', '127.0.0.1', 5),
(5, '2018-12-17 10:10:22', '127.0.0.1', 5),
(6, '2018-12-17 11:23:14', '127.0.0.1', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `text` text,
  `multiple_choice_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `options`
--

INSERT INTO `options` (`id`, `text`, `multiple_choice_id`) VALUES
(1, 'asdf', 2),
(2, 'b', 2),
(3, 'c', 2),
(4, 'd', 2),
(5, 'e', 2),
(6, 'asdf', 3),
(7, 'asdf', 3),
(8, 'asdf', 3),
(9, 'asdf', 3),
(10, 'asdf', 3),
(11, 'asdf', 4),
(12, 'b', 4),
(13, 'c', 4),
(14, 'd', 4),
(15, 'e', 4),
(16, 'asdfasdf', 5),
(17, 'a', 5),
(18, 'asdf', 5),
(19, 'asdfasd', 5),
(20, 'asdf', 5),
(21, 'asdfasdf', 6),
(22, 'b', 6),
(23, 'dc', 6),
(24, 'd', 6),
(25, 'e3', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `question`
--

CREATE TABLE `question` (
  `id` int(11) NOT NULL,
  `question` text,
  `weight` int(11) DEFAULT NULL,
  `exam_id` int(11) DEFAULT NULL,
  `correct_answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `question`
--

INSERT INTO `question` (`id`, `question`, `weight`, `exam_id`, `correct_answer_id`) VALUES
(3, 't', 3, 2, 6),
(4, 'Apa warna?', 24, 3, 12),
(5, 'asfd', 3, 3, 17),
(6, 'asdfasdf', 34, 4, 23);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `classroom_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `classroom_id`) VALUES
(1, 'Siswa 1', 1),
(2, 'Siswa 2', 1),
(3, 'feliciano', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `student_choice`
--

CREATE TABLE `student_choice` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `option_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` int(10) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`) VALUES
(1, 'Guru 1'),
(2, 'Guru 2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `teacher_id` int(11) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `student_id`, `teacher_id`, `remember_token`, `status`) VALUES
(1, 'guru1', '$2y$10$EcvtWLIwy7OtfhzI8vMxweObyMtR/nTy9Gd7UEVsiaZF03gcpYwKO', NULL, 1, 'YeoL8hlXaJyXFjDJc2pgZBHsOXMNyBEmFsLkqEp0k3wN7gmnNKSWqVdlIspa', 'teacher'),
(2, 'guru2', '$2y$10$JNCi/ctC6QkV2zO/KQ.ajuP1tOh8fSOlJ/XvYYsVABSNOx/BoJq9m', NULL, 2, NULL, 'teacher'),
(3, 'siswa1', '$2y$10$pChCgSe522hNG1Vwo9Nd9e0N//v7OQO/Z5XtS03vimaxwPNvTcsM.', 1, NULL, 'ba1WkxaTP0oWYtPaK9yRxycutjnlh4lAKc9weY8NiWjzRXDfKXuzt9kW1Uln', 'student'),
(4, 'siswa2', '$2y$10$zt2W54bCg2rVgobCXO6jheH7ZkbY7KBp4qbY5UNgrN7GLtxaLcg2a', 2, NULL, NULL, 'student'),
(5, 'feliciano', '$2y$10$1xRnQQkvkyT0jZD5cq6LbeuknKgUG6qxNIWSn6kAt99gxga5idxOq', 3, NULL, 'Gu2YvQgaGLsayi6ua6s6jSODA6VmYED6PEvU5TIDfCzY5qpGFd1BIi9J5qK5', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `classrooms`
--
ALTER TABLE `classrooms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `essay_answers`
--
ALTER TABLE `essay_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `essay_question_id` (`essay_question_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `essay_keywords`
--
ALTER TABLE `essay_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `essay_id` (`essay_id`),
  ADD KEY `keywords` (`keywords`);

--
-- Indexes for table `essay_questions`
--
ALTER TABLE `essay_questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `exam_id` (`exam_id`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `classroom_id` (`classroom_id`);

--
-- Indexes for table `history_essay`
--
ALTER TABLE `history_essay`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `essay_question_id` (`essay_question_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `history_multiple`
--
ALTER TABLE `history_multiple`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `multiple_choice_id` (`multiple_choice_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `exam_id` (`exam_id`),
  ADD KEY `correct_answer_id` (`correct_answer_id`),
  ADD KEY `id_2` (`id`),
  ADD KEY `exam_id_2` (`exam_id`),
  ADD KEY `correct_answer_id_2` (`correct_answer_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `classroom_id` (`classroom_id`);

--
-- Indexes for table `student_choice`
--
ALTER TABLE `student_choice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`),
  ADD KEY `option_id` (`option_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `status` (`status`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `classrooms`
--
ALTER TABLE `classrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `essay_answers`
--
ALTER TABLE `essay_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `essay_keywords`
--
ALTER TABLE `essay_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `essay_questions`
--
ALTER TABLE `essay_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `history_essay`
--
ALTER TABLE `history_essay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_multiple`
--
ALTER TABLE `history_multiple`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_choice`
--
ALTER TABLE `student_choice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_ibfk_1` FOREIGN KEY (`classroom_id`) REFERENCES `classrooms` (`id`);

--
-- Ketidakleluasaan untuk tabel `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teachers` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);
--
-- Database: `tbtoko`
--
CREATE DATABASE IF NOT EXISTS `tbtoko` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tbtoko`;
--
-- Database: `tbuser`
--
CREATE DATABASE IF NOT EXISTS `tbuser` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tbuser`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kodebarang` varchar(10) NOT NULL,
  `namabarang` varchar(100) DEFAULT NULL,
  `jenisbarang` varchar(50) DEFAULT NULL,
  `jumlahbarang` int(10) DEFAULT NULL,
  `hargabarang` double DEFAULT NULL,
  `kondisibarang` enum('Baik','Rusak') DEFAULT NULL,
  `warna` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`kodebarang`, `namabarang`, `jenisbarang`, `jumlahbarang`, `hargabarang`, `kondisibarang`, `warna`) VALUES
('L1', 'Lemari', 'Mainan', 8, 8000, 'Rusak', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpelanggan`
--

CREATE TABLE `tbpelanggan` (
  `id_pelanggan` varchar(10) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `jeniskelamin` enum('Laki-laki','Perempuan') DEFAULT NULL,
  `nama_barang` varchar(100) DEFAULT NULL,
  `alamat_pelanggan` varchar(100) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` int(5) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `training`
--
CREATE DATABASE IF NOT EXISTS `training` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `training`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `vue_id` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`vue_id`, `nama`, `status`) VALUES
(1, 'Feliciano', 'Jomblo'),
(2, 'Justin', 'Single'),
(3, 'Agashi', 'Single'),
(4, 'David', 'Single');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`vue_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `vue_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `training_laravel`
--
CREATE DATABASE IF NOT EXISTS `training_laravel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `training_laravel`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name_category` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`category_id`, `name_category`) VALUES
(1, 'Pakaian'),
(2, 'Makanan'),
(3, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `image_path` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `status`, `image_path`) VALUES
(13, 'Nasi', 8000, 5, 'production', '1529375732.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Database: `training_lks`
--
CREATE DATABASE IF NOT EXISTS `training_lks` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `training_lks`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Peralatan Sekolah'),
(2, 'Makanan'),
(3, 'Minuman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `products`
--

CREATE TABLE `products` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `category_id` int(10) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `image_path` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `category_id`, `status`, `image_path`) VALUES
(1, 'Roti', 3000, 2, 'Makanan', NULL),
(12, 'Kue', 5000, 2, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Database: `transaksi_xitkj2`
--
CREATE DATABASE IF NOT EXISTS `transaksi_xitkj2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `transaksi_xitkj2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kodebarang` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jenis` varchar(100) DEFAULT NULL,
  `merk` varchar(100) DEFAULT NULL,
  `satuan` varchar(20) DEFAULT NULL,
  `jlh_stok` int(5) DEFAULT NULL,
  `hargajual` double DEFAULT NULL,
  `hargabeli` double DEFAULT NULL,
  `ket` text,
  `image` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`kodebarang`, `nama`, `jenis`, `merk`, `satuan`, `jlh_stok`, `hargajual`, `hargabeli`, `ket`, `image`) VALUES
('L1', 'Roti', 'Makanan', 'Lama', 'Buah', 564, 5000, 3000, 'Enak bangett', 0x696d616765732f726f74692e6a7067),
('L2', 'Kue', 'Makanan', 'Lama', 'Buah', 548, 10000, 5000, 'lalaofdj', 0x696d616765732f6b75652e6a7067),
('P1', 'Bakery', 'Makanan', 'Baru', 'Butir', 1011, 3000, 2000, 'Enak', 0x696d616765732f62616b6572792e6a7067),
('P2', 'Susu', 'Makanan', 'Baru', 'Kardus', 1011, 5000, 4000, 'Segar banget', 0x696d616765732f737573752e6a7067),
('P3', 'Teh', 'Makanan', 'Baru', 'Kardus', 1005, 5000, 4000, 'Segar banget', 0x696d616765732f7465682e6a7067),
('P4', 'Pensil', 'Alat Tulis', 'Baru', 'Buah', 1012, 3000, 2000, 'Segar banget', 0x696d616765732f70656e73696c2e6a7067);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbeli`
--

CREATE TABLE `tbbeli` (
  `no` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kodesup` varchar(20) DEFAULT NULL,
  `kodeuser` varchar(20) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbeli`
--

INSERT INTO `tbbeli` (`no`, `tgl`, `kodesup`, `kodeuser`, `subtotal`, `disc`, `pajak`, `grandtotal`) VALUES
('BL-1', '2018-11-11', 'L1', 'feliciano', 530000, 53000, 47700, 524700),
('BL-2', '2018-11-11', 'L3', 'David', 830000, 83000, 74700, 821700),
('BL-3', '2018-11-13', 'L44', 'Fleren', 550000, 27500, 52250, 574750),
('BL-4', '2018-11-30', 'L44', '', 5000, 500, 0, 4500),
('BL-5', '2019-01-24', '', '', 21000, 0, 0, 21000),
('BL-6', '2019-01-25', '', '', 228000, 45600, 36480, 218880),
('BL-7', '2019-01-27', '', '', 560000, 168000, 39200, 431200);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbelidetil`
--

CREATE TABLE `tbbelidetil` (
  `no` varchar(20) DEFAULT NULL,
  `kodebarang` varchar(20) DEFAULT NULL,
  `jlh` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbelidetil`
--

INSERT INTO `tbbelidetil` (`no`, `kodebarang`, `jlh`, `harga`, `total`) VALUES
('BL-6', 'Nama Barang', 0, 0, 0),
('BL-6', 'L1', 11, 3000, 33000),
('BL-6', 'L2', 17, 5000, 85000),
('BL-6', 'P1', 11, 2000, 22000),
('BL-6', 'P2', 11, 4000, 44000),
('BL-6', 'P3', 5, 4000, 20000),
('BL-6', 'P4', 12, 2000, 24000),
('BL-7', 'Nama Barang', 0, 0, 0),
('BL-7', 'L1', 70, 3000, 210000),
('BL-7', 'L2', 70, 5000, 350000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjual`
--

CREATE TABLE `tbjual` (
  `no` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kodepel` varchar(20) DEFAULT NULL,
  `kodeuser` varchar(20) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `pajak` double DEFAULT NULL,
  `grandtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbjual`
--

INSERT INTO `tbjual` (`no`, `tgl`, `kodepel`, `kodeuser`, `subtotal`, `disc`, `pajak`, `grandtotal`) VALUES
('JL-1', '2018-10-04', 'L99', 'feliciano', 10, 1, 0.9, 9.9),
('JL-2', '2018-11-13', 'L90', 'David', 250000, 25000, 22500, 247500),
('JL-3', '2018-11-15', '', '', 1500000, 150000, 135000, 1485000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbjualdetil`
--

CREATE TABLE `tbjualdetil` (
  `no` varchar(20) DEFAULT NULL,
  `kodebarang` varchar(20) DEFAULT NULL,
  `jlh` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbjualdetil`
--

INSERT INTO `tbjualdetil` (`no`, `kodebarang`, `jlh`, `harga`, `total`) VALUES
('JL-1', 'L1', 100, 5000, 500000),
('JL-1', 'L1', 40, 5000, 200000),
('JL-1', 'L1', 2, 5000, 10000),
('JL-2', 'L1', 100, 5000, 500000),
('JL-2', 'L2', 92, 10000, 920000),
('JL-2', 'Nama Barang', 0, 0, 0),
('JL-3', 'Nama Barang', 0, 0, 0),
('JL-3', 'L1', 100, 5000, 500000),
('JL-3', 'L2', 100, 10000, 1000000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpelanggan`
--

CREATE TABLE `tbpelanggan` (
  `kodepel` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpelanggan`
--

INSERT INTO `tbpelanggan` (`kodepel`, `nama`, `alamat`, `telp`) VALUES
('L90', 'Feliciano', 'Serdam Villa gading Raya 2', '082256886029'),
('L99', 'Fernando', 'Serdam ', '09029902');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsales`
--

CREATE TABLE `tbsales` (
  `kodesales` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsales`
--

INSERT INTO `tbsales` (`kodesales`, `nama`, `alamat`, `telp`) VALUES
('L1', 'Fleren Picestelia', 'Jln slksdjlfdaksj', '091287123123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsupplier`
--

CREATE TABLE `tbsupplier` (
  `kodesup` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsupplier`
--

INSERT INTO `tbsupplier` (`kodesup`, `nama`, `alamat`, `telp`) VALUES
('L1', 'Agashi', 'Jeruju', '08123456789'),
('L3', 'Jusitn', 'Imam Bonjol', '32983298238'),
('L44', 'Fleren Picestelia', 'Jl Veteran Gg Syukur1 No.50D', '08992959698');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `kodeuser` varchar(20) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`kodeuser`, `nama`, `status`, `pass`, `ket`) VALUES
('David', 'David', 'User', '55fc5b70996287690378', 'lalalla'),
('feliciano', 'Feliciano', 'Admin', 'feliciano123', 'Saya adalah Admin'),
('Fleren', 'Fleren', 'User', 'flerenbaik', 'Fleren Baik Banget');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempbelidetil`
--

CREATE TABLE `tempbelidetil` (
  `notemp` int(5) NOT NULL,
  `no` varchar(20) DEFAULT NULL,
  `kodebarang` varchar(20) DEFAULT NULL,
  `jlh` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempbelidetil`
--

INSERT INTO `tempbelidetil` (`notemp`, `no`, `kodebarang`, `jlh`, `harga`, `total`) VALUES
(26, 'BL-8', 'Nama Barang', 0, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempjualdetil`
--

CREATE TABLE `tempjualdetil` (
  `notemp` int(5) NOT NULL,
  `no` varchar(20) DEFAULT NULL,
  `kodebarang` varchar(20) DEFAULT NULL,
  `jlh` int(5) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tempjualdetil`
--

INSERT INTO `tempjualdetil` (`notemp`, `no`, `kodebarang`, `jlh`, `harga`, `total`) VALUES
(5, 'JL-4', 'Nama Barang', 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- Indexes for table `tbbeli`
--
ALTER TABLE `tbbeli`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbjual`
--
ALTER TABLE `tbjual`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  ADD PRIMARY KEY (`kodepel`);

--
-- Indexes for table `tbsales`
--
ALTER TABLE `tbsales`
  ADD PRIMARY KEY (`kodesales`);

--
-- Indexes for table `tbsupplier`
--
ALTER TABLE `tbsupplier`
  ADD PRIMARY KEY (`kodesup`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`kodeuser`);

--
-- Indexes for table `tempbelidetil`
--
ALTER TABLE `tempbelidetil`
  ADD PRIMARY KEY (`notemp`);

--
-- Indexes for table `tempjualdetil`
--
ALTER TABLE `tempjualdetil`
  ADD PRIMARY KEY (`notemp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempbelidetil`
--
ALTER TABLE `tempbelidetil`
  MODIFY `notemp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tempjualdetil`
--
ALTER TABLE `tempjualdetil`
  MODIFY `notemp` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `uh`
--
CREATE DATABASE IF NOT EXISTS `uh` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `uh`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` int(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `kelas` varchar(20) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `ekskul` varchar(100) DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`);
--
-- Database: `ul2_tkj2`
--
CREATE DATABASE IF NOT EXISTS `ul2_tkj2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ul2_tkj2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbackupbarang`
--

CREATE TABLE `tbbackupbarang` (
  `kodebarang` int(5) NOT NULL DEFAULT '0',
  `nama` varchar(50) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `jenis` varchar(15) DEFAULT 'barang'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbackupbarang`
--

INSERT INTO `tbbackupbarang` (`kodebarang`, `nama`, `harga`, `jenis`) VALUES
(1, 'pensil hello kitty', 5000, 'atk'),
(2, 'pulpen', 6000, 'atk'),
(4, 'nestle 300ml', 3000, 'minuman'),
(5, 'indomilk UHT', 5000, 'minuman'),
(6, 'snack kedele', 3000, 'snack');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbbarang`
--

CREATE TABLE `tbbarang` (
  `kodebarang` int(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `jenis` varchar(15) DEFAULT 'barang'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbbarang`
--

INSERT INTO `tbbarang` (`kodebarang`, `nama`, `harga`, `jenis`) VALUES
(1, 'pensil hello kitty', 5000, 'atk'),
(2, 'pulpen', 6000, 'atk'),
(4, 'nestle 300ml', 3000, 'minuman'),
(5, 'indomilk UHT', 5000, 'minuman'),
(6, 'snack kedele', 3000, 'snack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbbarang`
--
ALTER TABLE `tbbarang`
  ADD PRIMARY KEY (`kodebarang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbbarang`
--
ALTER TABLE `tbbarang`
  MODIFY `kodebarang` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `ulangan1_tkj2`
--
CREATE DATABASE IF NOT EXISTS `ulangan1_tkj2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ulangan1_tkj2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsiswa`
--

CREATE TABLE `tbsiswa` (
  `nis` int(5) NOT NULL,
  `nama` varchar(10) DEFAULT 'noname',
  `jurusan` varchar(10) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `spp` double UNSIGNED ZEROFILL DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsiswa`
--

INSERT INTO `tbsiswa` (`nis`, `nama`, `jurusan`, `tgl_lahir`, `spp`, `kelas`) VALUES
(1, 'Feliciano', NULL, NULL, NULL, NULL),
(2, 'Justin', NULL, NULL, NULL, NULL),
(3, 'Fleren', NULL, NULL, NULL, NULL),
(4, 'Agashi', NULL, NULL, NULL, NULL),
(5, 'Serra', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  ADD PRIMARY KEY (`nis`),
  ADD KEY `nama_siswa` (`nama`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbsiswa`
--
ALTER TABLE `tbsiswa`
  MODIFY `nis` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Database: `ulanganajax`
--
CREATE DATABASE IF NOT EXISTS `ulanganajax` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ulanganajax`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdatakomputer`
--

CREATE TABLE `tbdatakomputer` (
  `nokomp` varchar(20) NOT NULL,
  `merk` varchar(50) DEFAULT NULL,
  `ram` varchar(20) DEFAULT NULL,
  `hdd` varchar(50) DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbdatakomputer`
--
ALTER TABLE `tbdatakomputer`
  ADD PRIMARY KEY (`nokomp`);
--
-- Database: `ulangan_transaksi`
--
CREATE DATABASE IF NOT EXISTS `ulangan_transaksi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ulangan_transaksi`;
--
-- Database: `ul_transaksi`
--
CREATE DATABASE IF NOT EXISTS `ul_transaksi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ul_transaksi`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbfilm`
--

CREATE TABLE `tbfilm` (
  `kodefilm` varchar(50) NOT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `sutradara` varchar(50) DEFAULT NULL,
  `jlh_stok` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `ket` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbfilm`
--

INSERT INTO `tbfilm` (`kodefilm`, `judul`, `sutradara`, `jlh_stok`, `harga`, `ket`) VALUES
('KL-1', 'Dilan', 'Feliciano', 15, 100000, 'bagus'),
('KL-12', 'Perang Saudara', 'Felix', 0, 50000, 'bagus');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpelanggan`
--

CREATE TABLE `tbpelanggan` (
  `kode_pel` varchar(20) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `alamat` text,
  `telp` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpelanggan`
--

INSERT INTO `tbpelanggan` (`kode_pel`, `nama`, `alamat`, `telp`) VALUES
('PL-1', 'David', 'JL Adi Sucipto', '8162836383'),
('PL-3', 'Erick', 'JL Imam Bonjol', '445473537');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsewa`
--

CREATE TABLE `tbsewa` (
  `nosewa` varchar(20) NOT NULL,
  `tgl` date DEFAULT NULL,
  `kode_pel` varchar(20) DEFAULT NULL,
  `subtotal` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `gtotal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsewa`
--

INSERT INTO `tbsewa` (`nosewa`, `tgl`, `kode_pel`, `subtotal`, `disc`, `gtotal`) VALUES
('NS-1', '2018-11-07', 'PL-1', 750000, 1000, 749000),
('NS-2', '2018-11-07', 'PL-1', 1250000, 100000, 1150000),
('NS-3', '2018-11-17', '', 2000000, 0, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbsewadetil`
--

CREATE TABLE `tbsewadetil` (
  `nosewa` varchar(20) DEFAULT NULL,
  `kodefilm` varchar(50) DEFAULT NULL,
  `jlh` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbsewadetil`
--

INSERT INTO `tbsewadetil` (`nosewa`, `kodefilm`, `jlh`, `harga`, `total`) VALUES
('NS-1', 'KL-12', 5, 50000, 250000),
('NS-1', 'KL-1', 5, 100000, 500000),
('NS-2', 'KL-1', 10, 100000, 1000000),
('NS-2', 'KL-12', 5, 50000, 250000),
('NS-3', '', 0, 0, 0),
('NS-3', '-Kode Film-', 0, 0, 0),
('NS-3', '-Kode Film-', 0, 0, 0),
('NS-3', 'KL-1', 10, 100000, 1000000),
('NS-3', 'KL-12', 10, 50000, 500000),
('NS-3', 'KL-12', 10, 50000, 500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tempsewa`
--

CREATE TABLE `tempsewa` (
  `no` int(5) NOT NULL,
  `nosewa` varchar(20) DEFAULT NULL,
  `kodefilm` varchar(50) DEFAULT NULL,
  `jlh` double DEFAULT NULL,
  `harga` double DEFAULT NULL,
  `total` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbfilm`
--
ALTER TABLE `tbfilm`
  ADD PRIMARY KEY (`kodefilm`);

--
-- Indexes for table `tbpelanggan`
--
ALTER TABLE `tbpelanggan`
  ADD PRIMARY KEY (`kode_pel`);

--
-- Indexes for table `tbsewa`
--
ALTER TABLE `tbsewa`
  ADD PRIMARY KEY (`nosewa`);

--
-- Indexes for table `tempsewa`
--
ALTER TABLE `tempsewa`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tempsewa`
--
ALTER TABLE `tempsewa`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT;
--
-- Database: `ul_transaksi_2`
--
CREATE DATABASE IF NOT EXISTS `ul_transaksi_2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ul_transaksi_2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbcustomer`
--

CREATE TABLE `tbcustomer` (
  `customer_id` varchar(20) NOT NULL,
  `nama_customer` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `ket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbcustomer`
--

INSERT INTO `tbcustomer` (`customer_id`, `nama_customer`, `alamat`, `telp`, `ket`) VALUES
('C01', 'Andi', 'JL. ABC no 27', '787888', ''),
('C02', 'Budi', 'Jl. BCD no 89', '8989999', ''),
('C03', 'Chendy', 'JL. EFG no 78', '787888', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbproduk`
--

CREATE TABLE `tbproduk` (
  `produk_id` varchar(50) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `harga_jual` double NOT NULL,
  `harga_beli` double NOT NULL,
  `jlh_stok` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbproduk`
--

INSERT INTO `tbproduk` (`produk_id`, `nama_produk`, `kategori`, `harga_jual`, `harga_beli`, `jlh_stok`) VALUES
('BRG001', 'Barang A', 'AAA', 60000, 50000, 90),
('BRG002', 'BARANG B', 'BBB', 15000, 10000, -20),
('BRG003', 'Barang C', 'BBB', 25000, 20000, 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtransaksi`
--

CREATE TABLE `tbtransaksi` (
  `no_transaksi` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `customer_id` varchar(20) NOT NULL,
  `subtotal` double NOT NULL,
  `pajak` double NOT NULL,
  `grandtotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbtransaksi`
--

INSERT INTO `tbtransaksi` (`no_transaksi`, `tgl`, `customer_id`, `subtotal`, `pajak`, `grandtotal`) VALUES
('NT-1', '2018-11-30', 'C02', 1800000, 10000, 1810000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `temp_transaksi`
--

CREATE TABLE `temp_transaksi` (
  `no` int(5) NOT NULL,
  `notransaksi` varchar(20) NOT NULL,
  `produk_id` varchar(50) NOT NULL,
  `jlh` int(5) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `temp_transaksi`
--

INSERT INTO `temp_transaksi` (`no`, `notransaksi`, `produk_id`, `jlh`, `harga`, `total`) VALUES
(2, 'TR-14', 'Produk', 0, 0, 0),
(4, 'TR-14', 'Produk', 0, 0, 0),
(5, 'BRG002', 'Produk', 15000, 150000, 0),
(6, 'BRG002', 'Produk', 15000, 150000, 0),
(7, 'TR-14', 'Produk', 0, 0, 0),
(8, 'TR-14', 'Produk', 0, 0, 0),
(10, 'TR-14', 'Produk', 0, 0, 0),
(11, 'TR-14', 'Produk', 0, 0, 0),
(14, 'TR-14', 'Produk', 0, 0, 0),
(15, 'TR-14', 'Produk', 0, 0, 0),
(16, 'NT-14', '', 0, 0, 0),
(17, 'T-14', '', 0, 0, 0),
(18, 'T-14', '', 0, 0, 0),
(19, 'NT-14', 'BRG001', 10, 60000, 600000),
(20, 'NT-14', 'BRG001', 10, 60000, 600000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detil`
--

CREATE TABLE `transaksi_detil` (
  `no` int(5) NOT NULL,
  `notransaksi` varchar(20) NOT NULL,
  `produk_id` varchar(50) NOT NULL,
  `jlh` int(5) NOT NULL,
  `harga` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_detil`
--

INSERT INTO `transaksi_detil` (`no`, `notransaksi`, `produk_id`, `jlh`, `harga`, `total`) VALUES
(1, 'TR-8', 'BRG001', 10, 60000, 600000),
(2, 'TR-9', 'BRG003', 10, 25000, 250000),
(3, 'TR-10', 'BRG003', 10, 25000, 250000),
(4, 'TR-11', 'BRG003', 10, 25000, 250000),
(5, 'TR-12', 'BRG001', 10, 60000, 600000),
(6, 'TR-13', 'BRG001', 10, 60000, 600000),
(21, 'NT-1', 'BRG002', 10, 15000, 150000),
(22, 'NT-1', 'BRG001', 10, 60000, 600000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbcustomer`
--
ALTER TABLE `tbcustomer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbproduk`
--
ALTER TABLE `tbproduk`
  ADD PRIMARY KEY (`produk_id`);

--
-- Indexes for table `tbtransaksi`
--
ALTER TABLE `tbtransaksi`
  ADD PRIMARY KEY (`no_transaksi`);

--
-- Indexes for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `transaksi_detil`
--
ALTER TABLE `transaksi_detil`
  ADD PRIMARY KEY (`no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `temp_transaksi`
--
ALTER TABLE `temp_transaksi`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `transaksi_detil`
--
ALTER TABLE `transaksi_detil`
  MODIFY `no` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- Database: `washme`
--
CREATE DATABASE IF NOT EXISTS `washme` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `washme`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `laundrys`
--

CREATE TABLE `laundrys` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `status` enum('open','close') NOT NULL,
  `time_open` varchar(10) NOT NULL,
  `time_close` varchar(10) NOT NULL,
  `service` enum('wash&fold','wash&iron','dryclean','') NOT NULL,
  `owner` varchar(100) NOT NULL,
  `image` blob NOT NULL,
  `harga` double NOT NULL,
  `driver` varchar(100) NOT NULL,
  `nohp` int(100) DEFAULT NULL,
  `kota` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `laundrys`
--

INSERT INTO `laundrys` (`id`, `name`, `alamat`, `status`, `time_open`, `time_close`, `service`, `owner`, `image`, `harga`, `driver`, `nohp`, `kota`) VALUES
(1, 'Zauhiung Laundry', 'Jln. dr. Wahidin No 54', 'open', '08:00', '21:00', 'wash&fold', 'Zauhiung', 0xffd8ffe000104a46494600010100000100010000ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb0043000503040404030504040405050506070c08070707070f0b0b090c110f1212110f111113161c1713141a1511111821181a1d1d1f1f1f13172224221e241c1e1f1effdb0043010505050706070e08080e1e1411141e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1e1effc00011080258025803012200021101031101ffc4001f0000010501010101010100000000000000000102030405060708090a0bffc400b5100002010303020403050504040000017d01020300041105122131410613516107227114328191a1082342b1c11552d1f02433627282090a161718191a25262728292a3435363738393a434445464748494a535455565758595a636465666768696a737475767778797a838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae1e2e3e4e5e6e7e8e9eaf1f2f3f4f5f6f7f8f9faffc4001f0100030101010101010101010000000000000102030405060708090a0bffc400b51100020102040403040705040400010277000102031104052131061241510761711322328108144291a1b1c109233352f0156272d10a162434e125f11718191a262728292a35363738393a434445464748494a535455565758595a636465666768696a737475767778797a82838485868788898a92939495969798999aa2a3a4a5a6a7a8a9aab2b3b4b5b6b7b8b9bac2c3c4c5c6c7c8c9cad2d3d4d5d6d7d8d9dae2e3e4e5e6e7e8e9eaf2f3f4f5f6f7f8f9faffda000c03010002110311003f00f2c6538f4c75a72a9da09fce9cd903d067d29719efcd7c1ecb43efeeefa8c03903a9a5da073ed4f65c2961e94d29f301934857626dce7f4a45e31ce4d3d50e79624d38753f2e7d2a9eab52b6622a9038fa9a5604153c73da9d8cf038c8e6971b8814a3b6c2b5d0c55241c9a554e3352639e7814a011c678f7a6dad8446aaa7834a1703a73daa458c0e4f7a461c606302a10d2bbd08cf4c8ef430607a8a7e083c9a500649e28b828d88d7d314f030b4e03be7f0c52aae4628bab0bcc691903007bd181c8e86a458f8279c52edef8e695b4296c2201807ad098e4639ef4e0ab8c0249f4a7639e9cd178db4dc7cb7dc68070003c0f5a701b58719a72803ae1a9d800671439d8528df4184fcc07414b818c629cd8ee39a4da770e47d6ab98954c441b4e4fd29c40cfad382679238fad1b41c8cf1537d41c46e33dbdfad3486614f5002803a74a76df4228b8289185e9fad39541f6a1b8391f4a075e954bb8dc440a092393ec28db8fc297d790297208f7f6ef54d2bdccda7b91903d28c6ee001f88a90e3834d3d7d852b2e8524d2b9185c64039a36e39ea4d4a429e541fc28c7cbd3153b8b5212996cd263241eb528186e7a51b31c839f4a767d0132bede7918cd34a8f7c0fd6ac8550467b546c0631923e9549aea095ddcae4100f1d6a2618209c8c55a2bf2e3a8a8f61e40c106939229a2075c631d698c0838f41cd4e539190690a0dc7e98a71698b91958a9dd8fce947a138a9b66d00f534800c0c01ef9a7dc396c47b460d2633f853b9c8e7069f8cf5c63bd24afa21a641b4fa0a36e4f5a9780c0f0076a461cf4a86d15ca40cbc91de998c738e4fad4e0631415cf079a4cbb2e841b71df34280dce338a94ad20523a11d6aa2eda892642ca76e33f850899038e6a52993cf5eb4847039fc6872426d8ddbd302940e4e69e01da314e0b97e94369ea4b4c60f6f4a0a927a53d80e475f71401c75c52db725c74232a08e99e6828320e3ad4a00db8c7e148cb901734498af6222a776282a3b806a5c600e9ef4883a902a6e52232a32413c76e6959095f41daa52a08271400339e82ab56c574b520084a923f3a565e7e82a66e39c5215070791496e17ea42ca71d29a10ff854f819ff0038a303dcd53445884c7ce4139a45400f273dea63ee7834800ebd452b94dd9e842532d91c6691871c0cd583d47b504646474cf357664a7a90018e0727b5152ed0411e9453bdc39d2dcb986db963c7bd2e3be69d8c81d29703680413e959e86ed084678efe9eb4dda09e78a7a804e33914a47cdc0c8a7657ba26d664606475c1cd285da0824e3d6a555c1ea39f51498ea68e47b82b363147a74c719a5c9271c7e74e0bc003d29db7ba8cd1b752bc854e854f4fe740e0f247d2979ce0f3f4ed4b825473de864d96c206c8eb48c3bf1520c05e948541c679c7b52b24ee5f2a5a8d1f43f85000ea30334f1c1c9c50c09191f96294b6b8098c11d31e98a700bb3000cf63420c035281f2e4d43d7507ae847839c9ebe94adc374fc29c7ee8fa669d8f5a775612490c1cfca0f34e1923a714a3d4d3d41c73c7d2806f423c5387b8a7608e7f3a50bc64e2868ab8d0bf303fad0c327d3d29e570393cd3c0e878a6f7b09c50cda739e291978f7a914024f269c17a0e29d92d885721da40c9c0cd01403d78a98820f23f0a69049c74a976b944471f77ae4d26d239ef5332fcdd32680bf36071c50af62b9910f380318cfb518e3b8a978ea78a4d981c814ddc561841f7c7d2a323aff3a980058e7b51b78e7ad2e65d476e8458200fa5267181d2a4036f51d79e6855cf3d695d0b96fa1112720014f55c0e99fad1b5bb77a70181cd53138ab0c20f719a89f1efc54edcf20d46e3b60fe54db6a238c489b1b7814c604918e054c5476e00ebc534ae304771d2a1bbeb62dab6846cbc8c530a9ee2a661dc1ef4c62031e074eb494afb05ac42e06307f4a4c12d8c629e7b8c0f6a43d2b4b5cc9eac611cfbd376e33ef520ed919a561f2f4ab4d8588828cf5eb4c7c8231536c39070291c1a86c767721dac71814a41c1e0e6a420738e4d37040ebcfbd2ba96e539588f1cf38c5263d7eb4fe338071eb41e878ed4d593d46d7518338c1ce074a66dc8e466a5e0e4118a68181dcfbd24f71098c0fbb9a31c7008a7edc67d00ea6823a678a6ee9086819e4823da940e714e03ebf8d380c8e9d2a347a8377198c63906970770cd2edddde9ded8c1f5a7633716c8881c9cf4a760f418e69e14f5e38f5a5099c03d696a8a4aeac306e00e48cd2280073c83526d39c5001c1e2ad34d5c869119e7bf14b81c67b0a7852472291c61bafe3eb57ab42f318570323bf6a4c618e074a936fcdce4d230f988f7a4d6c0f5d88dd78c639c522a9c6001c0a948c8cf3cd22af3819a6d14e2ba9132e181ed48cbb97af7a9b0411c1a029ce70318a16e669684413d3bd1530c0191d33e945177dc6ae89ce4f5c601a503e5c93f5a5c127e5391ef40524803bd16e5668c4006e03a83ed4e206eec001de9d8c704027d694a7183d7d7ad0ec98b722c6320727b1a55195e73934f40327279f5a5da0f39208a18d5ac3597a74fc28f98fca3b9ed526de3b0346dc28c7e9537ee3b8de0e474f4a00c0c01c538280707ae734e009ed8a1d8be6bee3541d84e7348c0ed04e29db47538cd2e3b71532d341a698cc1241040fc29e318196ede94a9d3fa51b39c939a88a6c6ecd8a8833c7b53c0e39cf14ddbce7d69c334d3b12fc85c803d38e285cf1819a02fe7e94eec3039a1d90f9443c923daa454c8c9e69b1afcf82dfa54a9d4fa76aa5a327948c2823069fdf6f7a730c903be28d873c8c0fe74aeaf64572dc400e4127a52f05467ad3b69e0d3f69c74cd1a326cdec342900f20fa526d01724f269e172a0720d2631cf23343d05b885463834857a722a4038e94d19cf00524fa97ca86e067ae2931c7dec8f5a7ede700f14abb4039cf0286f506acc8d971c1ef4857d08fa54840dde948c01c64f3da8d18da6425467a669c54f0720fd69fb7919a31c138a424ac45b08e68da7b54847033d290823a534c7aa23da3a0eb498c1e29e549ebcfbd0cb93c1c66927ae84b2365c9c6690ae7a1152e391c73d334c207619a2526f41a890329039a6302b83d2ac301839fca99d48c77fd2a6d734512174efda98ca306a76072707f2a632f04f4a5b3b8f42bed1d3f2a5db95040e6a511fd285030467a7ad5f35d98b44413348ca473d6a42085e3bd04657deaaeb643e5644a07a8e69acb8e9d7ad4bb460e314dda3d4d3bad84d598c0985cf534cc7049a948c1c67f1a4c0208e68b25a9328dc8b6f39a6ede4e49e6a50067d71d29081926972df52e375a11edc668c0e9d69e39e8290ae09ea294746292d0615e339e3b0a5507183e94e2a3b5007cdc537ef6e4a8b4801c1fa76a503764fdda3807009028c52ba40e37d85c0c741f5a52140ebf4a6aaf0493c5382f03a55377071d84c76eb4a077cfbd21e3bf4eb4ab9270322a6e902831e40e72d9a611f2e08a70562c475f6cd2e0f3c0fceb4b828313040ce78a42b96c8c1a73671cd181c607e34b993d0393b8c6183f5a6edc64015263b6280001ce7029b6920715623e949c063c9a7b839e290e339033cd0ea37b13ca340c9ce7b6719a4e3de9f80475e7bd281fc2071da9c6eb71b4ba0c183dbfc28a50a40271f85155a91ca5939ce3afe34a140033c1ef8a715e7ee8ebcd18c1ea7d6a7ccd2490c231dc9a7f6c746341424827f0a0a9c83e94a3b85b41140c9e3af6a7018c8038eb405c93b49a00c0c12734acee24d20c67afa52e06e0474a520e7af419a50a09f7f4a4b5d45cde437af7e69e3bf18a465208e4d3b2714fa157ec3719ee28c1046319f5a70e719ce294afa75a9df72ae276e8334ab8e0638eb43e4f4c01ef4f0380d9a56760b0c5039e4fd29d8c0ce3f3a503e738cfb52e3e6e7ad0deb61a428c0c16a50b8c1c528527a8a710783f854b6914222e4e40a7afdfe33488a7b914e0324927ad2e61daeae3b838f5079a71009f5a419a5c60fd686df41f28e0064839a14003d4fd6803e6201e9eb430e3239fa52b93cba88d93820018eb48477c53d064e452f001279269365a486e36ae08fad1c70080053863ff00d74bc0e782688dc4911f4e31d6900041dc3e99a9369ce719a69562a7bf6e94eec12ee31b91ce0fb629083c0db52053b3d73fa5054f6e69735c6fb0c231c75a45e09c63de9cd92719ce68d84fcdd0d35dc4c4c00083428cf6e3de9c7201e29bc6304f34d3b93ca30f07a0a470c0820549b7e5e339c50c38e726857dd09ab11609cf029bb547cc3a8a9463b7269adc8e3a1aa775b0b5b900191c7734c906307deac601e78fcaa291338ef59f334f5365110a8cfa530f52315263d7269bb483d684efb0344670bc814c2170339cd4d8a6ed18c1c9e69dfb916b111503fc6823e51d054a476fd298cb93d327a50d06e47c0e9f8d2118edf954981b79e299b49eff004cd69cd7d0ce57b91b7d314de2a4dac07ad1838a5a9514888fcb40fa7e75215efc9e69bd4e40e946ab4416d468c13f76809d46063eb4ec13c6718f4a31ff00d7a1356b05c630e08c5039f63e952143fa534ae39c8a36421857d852019cae31e9521ce73c1a02f1c8a9932d2b0d038c0a5238c8ce715288fe5f4a6b21db8e2adb97415b5231d483f9d3b9cf03bf5a78524f3d714e080e79e2947b8683392c31d68c11d00ddd0d3c46412474c52846c1e4556ad6c36d1195e070726919471e98a9191b1c5215207279a4935a8b4ea467209e291460f7a780780720d011813c6476a1dee26bb0d238eb9fad263a53997033ce69f825578cf156a7aec4bd0882853c9c7b5285cf4fc29c4331271fa518233c7e35560b31b8f9b9e28a76d24f1c1a29ad3a88994704934a073ce3f1adb6f0c6b91921f4f97f9d432687a8af2f677006323f766baa582acbecb3cd8e6d8397db46530c80071ee2851f364d697f65de0e0db4ca73fdd2299716134654b43201d7906b0787a9fcacda38ec3b7a4d7de535f9726942f1924669c50f276d22a820fae6b3f66d2b347546a425b3b8d2a48fe54e40739238a5d9939538c5298db3df9a9b5b42b913d469193938c1f4a3b640edde9c5589c0e29c178ebf954d8ab590d0bcd2e39e31ef4ef9b8cf5a5db83c8149dc121a571c8ef401c0cd48776471c50c83ae0834d377158620f524fbd39571c8ec7bd394119539c7d69c178e9c50efbb2935611413ff00eba520fd47a52a280bef5200bb41078a9696e3d0680074f4e69c32320e2954607209fa52a8c72147a63d6a356c77481738e7073de8c1cf1c538a657ffaf4e033d40fa8a6e4ba9498d1b4718e4f5a32074f5a7853e9fad0170303351b05c660f5cd3b1b81cd380039c124f7a50bec07d28521a1806074a180c8ce3f1a760e7d691d7200e78f6a2f62ac841c9ebc5281904139f4a503eb477e7bd4b6ba05c6ed3820d263a10714f20f4146de3345acb515d11043918eddcd260e7bd4c4638ed48aa3d4d3f425dae45c9a4c738a94ae4f047d298781d08c553d1021a5483cf5a473cf0334fe4e724e698d9040c7e147331b447ceee98149b792474fad3da9a4139e78f4a6e5b08690073d7e94dea0fa76cd3d7a73fca908e3d4512d4b5618c33d073da983a9fd6a424fa60f6a4c103a8a22958994d244446693181d69e7a52761445590db23fe2ef432e47b7d69c47f10cfa75a418cfafd69bd0c991b01f28f7a693861d69f8c71807351b9e7818fc6ab45a8d2bbb0373dcd3493eb4e63c534e3191f8f34363b59887838e68201a73364d21eb9a4ecb60d430003e948a091c8c1a0f3c76a507b0fc68e6498ad702081c63eb41ce46714a7eef19a695f981e7f3a25256d10d4442178e29db4019181463d7f1e68e718e4d2e6436b515739e4e69e01039c1fa5363ce3a715203c671549bea4b1b82303d7b5006338e3f0a792338f4f4a00073cfeb441d9e826340e724d1d38c1a793cf38e38a3692076ad37d89f318783827de8da0fd7b54b8190318148ebcf23a7ad425d0a76b10e0e4e053b0483eb4f6180480727ad370b9eff5c55293d810cc1ea791eb48571d3241a976f00f414328c719c77cd4d912f5236462063f9d336e4f3cf3daa523a0cfd29e01e005c9aaeb70bdb72b88cee27f3a2ac85e0f207d28a1d839cf568fc751759b48bb4ff80e7352a78eb457c09ad6e509049568aa4f2a21d40607d45452410b70d0a0e7bae6bf486ac7e3ae0ae4b1f8cfc34f26e32e3dca54e7c49e179d4092e6df9e006039f6aa1269d627ef5ba1f40140cd559f46d3598092d2223a74ce052e545726ba335b7783aedcfefac37e3a0201c7d29ade1ff094e41ff46c93c7ce0560c9e1bd2db3fe8ca09ea4679a60f0be9bcb28910fb31acdd2a6deb146b17520b4933a09fc13e1d9f055829c7f0c98a84fc38d29f262b8997a9043e6b10f85a1272979768c791894ff008d4f0f876f010916b178bff6d09a99e128cb78a2e18bc543e19b2ebfc3085b7797a8cc71dc8155a5f8617183e56a43db29562db40f112362dfc4571ec1941e6a64b1f19c236a6b8afb78f9a3ac5e598696f1358e6b8d86d519913fc34d6957305c5bb9f752054707c35d7dc9f325b6419ea0939ae861b8f1f5bb717167381d32a41ab716b1e3d5259b4eb19b1d30c466b3793e17ac4dd67b8f4aca672d77f0df5d8e32d088a561db279158b2f85bc476f912e9336077519e2bd2ecf5ef1cab13ff0008d79c7b88e506a41e29f1342c0dd783ef7279f9486aceae4b879eda1ad1e22c6527abbfa9e492699a9443f7ba65e27b984d44f04912ee9edae5067f8a1618fd2bda60f1acab9fb6f84b585e3826d491fa50be3cf0fbeefb4e8d7e847de0f66df2fe95cb2e1f835a48ed871557eb04cf0e796dd586f93673d586d1fad3cc901202ca87db70af6b97c49f0f6e88fb541122affcf5b7200fcc52c379f0c25c155d2c6ee7051467deb17c3d6da674478b5dbdea678aa95fe1753f8d48109e3922bdc22d17e1adf4988d74d563dd5c0a749e04f02ce4ac0222dc72263c0fceb37c3d517c32368f16527bc0f0f553cf722976fcb8e7f2af6c7f863e1978b6a4b32e4e72b3726a8c9f09f4c2488f54b8c67bb0e2b9e7906216cd1d10e2ac2b7aa67916d207039a52a7200eb5eb87e15e96a981a84ecddce45559be1444466df53979e3040c7e559ff60e211ac789f07276d4f2d01be94a31c935e8727c2cbf4dc63d5559bfda8f154e7f867af28cc335bbf3df22b179462a3f64e95c418192d647124020819cd295e4735d3cfe01f13c4bf2dac6f9f47aa93783bc49113bf4f248feeb66b0965d895f659bc738c135a54461609e3348cbc569cda1eb30ff00acd2ee40ff0073355cd85eab7cd657007bc66b1784acb7833a239861a5aa9afbca7b4e3a9a181006066a6922915f1246ea475f948a6956cfdc38edc5672a335d19b2c45292d24bef2108d924e71ef4acbc8fad4aa416e181fc69db0fd7bd4f235ba2d4e3dcae781d3f2a685e79e86ac98d89c014d31b29e454f914995de31d477f5a6946efeb53b0c703348571ce79a6925ab129dcade5f278a1533f854c546718a403e66e7a7e949d93d06b5202b8ea29a47191c7b54c7a6077f4a61c7249fc69e8369a20650473d45339f5ab120e33dc0a89979c71c0cf154bc85bee42dee29b9f4eb52953e86936fc952f51f326464fa6052641ed4eda0f51d29197e507f2a9f985ae3197a814c2beb5281ce0f5a4c0e73577d01ab321038f5a461c1e39a9881c1ff269ac0939e98c0f6a516526b623c7233d7bd215f98fa54853e6c76f6a0210dd38a4936eec3d46303b7da840bd4f41e952004f43c633cd0abdf3f8d55b5076447ec47e54ac006047e02a465cf6e94bb3149dc8bd91195e3ad0060f4c54817a8ebc52a29c28ebc73529750d1ee46012a7ad3c6303029fb0633fad0339ed5adf94344f518464f4a5da324e314ec60039fa50393c8e286f51dc6e096e33d7d29d80bc139a520e714053cf43ef429684db501f8e293041e7a5382fca4063c53f000c1c83da9a93b03572361d4d22aeeec71d3a539476249269dc01c1c7d29fa116dac336aedefd686c63a1a791c7229a7961dea93571d9dc6800119e87914a3af4ef4a41edc5295c75cfe74ee4f2f511400a7228a5f9b3d720fbd1549233763d859707273c544c338c64f153e0804e3ebef4c638c10081dabf4795cfc9ecae46a064124e71c669255ee7f4a7edc9c6d3ba894600caf3536ea1d4ac076238f7a96200f72314d03e6cd3a355d9924f53496e69d076d04e4f5ab56d9caedefd2a10a0a8f5ef56ad94ee0076f6aa13d8ecbc1fa4c57b633dcc8a4b0071596f0b076f3136b67b8aebbe1d2b9d3a55521727bd56d7eda4fb71f955fcb1b9f68f5ad6c9e872b9599cf0b76500153cf20e2b42ded9930b221048ee2ba9d4ed239b4482ee1542f080db40fbdea2aaeaf3c3742dcc4002179c76f6a695c4ddcbfe0fb345864765ea715bbf62b532073182cbc0c8aade1a8c269eb82327935aa0572d59be6763b70f422e17645e5c6aa70063e951dbdb42cac4c51f279f96a7971b48a6c5f70007a7a5669b7135e58fb4b14f50d234d9e1293585b4aa7a8310354dfc23e199e3025d074e7181d6dd7fc2b62718183934edea91819c5177cba0ed05377394bbf869e08b9cb3f87ac949ee89b48fcab2a7f843e0c909315b5d5bb7ac572c2bb992e3276aa13ee2a193ed0549552b5694bb98d49c2feec4f36d4fe14e9369b5acf58d66223a0fb493fd2a827c32d4a40e6d7c53aac7c1e4b03fcebd27c99aea60246208f5ad6b7844081474ef5a49a8adcc61efbf23c69bc01e32b37df178b25917b092107f33511d17e20c32816fae58c883a996023f957b4cc637fdd9039aa3776119c14041f6a14afb952491e52da67c50850c8971a2dc85193f7d6b066f1678e6d5b6cfa1dab907f825e3f0af5ed4e296da1daa4e08e715c25fa82e477249a6ddb61d38465ba39b8fe226bd1126ebc332b2faa38352ff00c2d121b6cfe1ebe5f52a01ab938f9480339fd6a9cb0a93f32ab7e150e4cdd6162d12afc53d10e04f617d18c724c24d4cbf12bc1d203b8c887bef84ff008567fd960279894fe14a9a759bb12f6d1367fd9152e5e468b091b6ecd983c65e06bb1cdcdb003aef5c55c8353f035ce374da79047b5625b787f469e4c3e9d6e79e7282b4c781fc3aca036976e33d82e3150d27f6509e1d45fc4cbafa3780ef46e56d3cb1f420554b9f03f83eea3f2d4c68a3a6c9314e5f877e1b98806c420ff6588c7eb57ecbe17f869880e6f141ee970c3fad43a507bc10d7b45b54660c9f0bb459433da5edcc631da518acabef8597807fa16ae081d448808af475f845a1019b4d6f5eb7cf64bd247e469adf09e48d08b5f1a6bb19ce46f657c7e62b92582c2cb781d74f178c87c350f2b97e19788171e55ed9b8ff006908a8ef3e18f8a5503411da5c6782b1bed3fad7a3afc35f19a4ee2d7c724c23ee99ad8331fcaa56f06fc4ab48f6dbf89b4bb9c7fcf4b76527f5ac3fb2706fecb46eb35cc62b49a678fc9e05f12c2ccb369136547255d4d55b8f09eaf1ae56cee99cf54d838fd6bd1753d4fe2969b7925b4ba76957810fde8e42b91f8d4563e25f1ddc2b83e0e85d87f12dc28fe759ff0063611f566bfdb398eeec79b4de1bd42141bed6e049fddf28e3f315526d1e68d4196392327d50d7a04ff13750824686ebc2376851b0c530df5a6c1f12ad6e9fcb3e16d55cf4f92d8bff002a8964d857b48d567b98c56b03ce1ec26ea149e71d0d579ed1e000cac172718af4d9be25f84a391a1bbb29a064382b25b9183ef9a8a4f1a7c38bd6db72f6c3fdf8b1f95652c8e935eeccde3c498a8bf7e99e64617dd850589f419a4fb3cfbbfd4c84f7f96bd520bdf8773fcd6f7364a7d9b06acc50f84653ba2d4a0e7a62602b159035f68d67c52ffe7d9e3e636e8d1b0fa8a614279ede95ecbff08fe8336ff2ef55f77fd35071f4acf9bc07a2c8ade5dcb063fc5bf38aca590d68fc2cd69f14d1fb7168f28f2d8814ddb818033cd7a5cbe006dc3cbbd565031f32f5aa537c3aba12338ba8d8750b820564f27ae9ec74ae24c26eee79fedea318a69cf4f4af428fc093b40c8d1c1e6e387dc7f9566ffc205ab0770db08fe1da719a89e518882d11ad3e22c149d9bb1c782a791cd29503f9d74571e07f124646db78645cf187a8d3c23af06227b0603d5581fd2b25976257d93a7fb6b02f69a30114671e86976e4fb56ccfe1dd4615622dee5c8e8be5f355e5d22fa3280dbcc0b1c6361e3eb59fd42ba7ac596b34c1cb69a33ca654e32050064019c5589ad6ea176468243b7a9d86a330c9bc0f2a4c9e402a4544e8555a72b368e2a84f69a19800ff002a55c818c73eb5235bca002c8c053421cf7159ba738e8d1ac67096cc681c90697180075cd2804f03f5a5e7eee054dadb9a6ad0dc1e06001410075193eb4f51edda970ca71f95528dd5c3a5c60e7028c1db5205c75a6edc0e00a08bdd5868017d6948c1073d69c5460127ad1b7903078a06ac96c308ce7d69cbc03fe4541797b6b6ac1669363374a7adcdb34624fb445861c7cc335b2a151c6ea2ec733c55252e57243f1ea7a5180074a14861f2918eb9a7aaee52467eb593bc5d8dd3bab8c036f6e28e33fecd2e09231fad29538c638a23b03b751bb475c8268a08e36e4e28a2ec9ba3d93195c0a6c68cce405ce3d29cc700e4f434914cf19223e33d6bf4cbbb9f90e83d6268caca707927da96fa58e53948d14e392b4824de8109c0ef55650429c13c9ed4b708a6d8c20e31f788eb4b8240c7e74d5c72403d2955b0319c7d28b1a6c4cb9da377a73566dc9ddf4aae082ab83f9d4f0637f5c714d224ea7c317f2d94a1949db8e47ad769a4c497fa65edc3005e663c81d38ffeb579c58cb803072335d9784b584b685ada4c2a364e4f63569bb18c9599d1f8536cba304619c641079ae6e48b1a8cb1a7ca048428fc6b57c2b791c62ed378d818b2fd2b3f47985cea88cc3efb93cfd6a9269b6436a564769a5db882dd10019239fad5e1f4c546855507029db875ae093bbb9ec5251847420bf7096b2b138c29aa3a3dcf9884b139f53d2a2d5ee84ee2d5187fb46a5d363dc36f02353dbf8ab78c3969bb9c152af3d64e1d0b93c8644f9471eb53451a00a7af1de91d404017802a550360edc560de9a1db08be6bc80e14138031ed5427bdc49b514b007938ab92a332150dd6996d6eb0ae0f3eb4e2d25761563393518e88cd9aec2ca0e0d56b9bc95dfe46217d2b4ee2d526b8048000a820b0ff49669141407e5ae85281c4a94f98ce569a490618e4f7cd32eeeee2160bbc9e7bd5dd52dd239635886d24f6accbdb671751c0598b38ce4f6aa4efa89c5a7664175a9bcb132328635c6ea033216f5aefdb4ab7b681dda5dcf8fc2b81d489f30ede454bd8d295ae664aa09e78c55670739cd5a93a7422a02403cd64d6876c742241c9e9f954d6caa0e3269abc743d4d4f0a8271536364ee8d0d3e3ccca40e735d4e9d02bb0f3980f5cd62f872d526bf8e262304f3cd7677da67951868b242f6c552461527ef0d5d3886ca10c09ea2afc560e98c934cd0639f7fcc1b663bd6f60742054ca4931462e5b998239add811922ad24a661b0647a9a9a6c053d391d29b041b3e62793d6a79932945a7625000181d3a53676db1b31e80669f51dca799114dd8c8c5475347b1e77a8dd87bd964933f3124573779a84d133f92fb3ae315d17889608ae1e38db7ed2466b8fd418124d29b68e8a508c919370e1b3900e7ad59d235096cd9cc3c6462a9cbc8e98aacb2ed6201efdab964edaa3b79149589e6b1b26b81772dbc52c85f736e506b41a0d161bb8f505d3ac167553832401b159666c700e0fad51d52eccd6fe5efce3818a884ecc9f64e7248c3d5f48d2753d4aeaf2658829248c201bbf2ac28bc35a74d2332c0001dc1c62b66e4ed383d7daabdbb10e79c6ecd67527adcf4a34928db739fbbd12181c98a69d39ed21aa04ea70c998b56bd4038c79a6ba3d43827a5615d30049c75ef50aacd6cceaa585a338fbd0442352f13c44797e20bd1cf037e47f2ab4be27f1a458f2b5d73fef2039aa6724839e29cf811e475ad1579aea6b2caf0cd7c08d01f107c6b6e7e6b9b6902f1cc753c5f14bc5a07ef2d2ca43d3a119ae4e666627a9a920188f3c56b1c54fb9c13ca30ad7c076e3e2c6b712a99f438a4f528f8a963f8cacad89b40947bab8ae066987965727d6a94ce493819f7ab9622a233590e1a5ba7f79ead0fc66d18713699771f7e06455c83e3078464c1916e63fac55e2722eff7fad40235cfce07e542c54f7b213e1aa0d68da3e808be27781e6c66f5578c8df174ab5ff099f816e936b6a765ff00025c57cf4820c8cc4315666b7b568d9d6203f0aa78b4b789ccf87229da3367be19bc0779c0bbb17078c6fa62e87e059f949ad1587429360ff3af9c8c614fcbd7b0a75bc6f92e1d948f463cd64f1149bf7a069feaf6220af1accfa2e4f04f85ee1818ef190ffb13f5a81fe1ce94e730eab74076dce08af9e9a7bd5fbb777007a0908a923d6759800f2355bc4c703129e3f3a897d524fde816b28cce3f056fc59efcdf0dc6e1b75672b8e8631cd539fe1dea61c88b50b76f4dd19af158fc59e2b8ce63d7ef179e9bb357adfe21f8e20c08f5c66c7f7d01a3eab8197d91bc2e794fe19dcf5793c03af2af12dab8ee391483c0dad8e3642547a3d79a43f163c7b01c9bcb7987fb51e2af5afc6af19a1c4f6767281c92062a7fb3700ce7a95f3ba4eed7e476d3f83b5b8d71f65de39e8c39aa33e81af419f2f4a92420646718ac6b5f8f3abee3f6ad16df8feeb126b4ed7e3aef3997435edd25c55c327c2dee9fe273d4ce33451719c7f039abdf0af8b2f279259b499f3f418c7b5258f83f5693227d3e7840e9f2f5aee6dfe35e9e4e26d06f31eb190d5693e347854b627b3bf878fe28bbd7a6b0f15eea3c29d7ad7bb5a9e75ff08ef89f4fbf516f67712405be7ddd07bd6fae9f7822df24057039e79aebe2f8c1e019f0ad7fe5e47491318abb178ffe1e5d6dcea96678fe20057062b28a75ddde87a385cff15874a2d5d1e724159369c28fad29c74cf03debd24eabf0eefdb2d7da6b67a7cc01a7ae9de03b82409ec403d312e33fad79d53209f491ebd3e2c83569d3679a6d04ee3d7da8af4d6f0df8465fb97312f1c049ff00faf4573ff60d65b337ff005a70bd99a2db76e187bf35186009514af2a9e99ce3d2a357049ddd7b57d9b89f0d77b92633ce4fb0f5a6b1e3a52b48a06de39ef51bb7ca3be6b34ac689b133c9c52e38cedea299ce38142b63be48f6a36d87ab275500026a68ba803f3a833f30c1cd49113b80aa0e86a5a918c8ea2af432155ff1aceb3258f9639f7ab6188c83d4534ec67245eb6bd9a3dc109c1e08abfa7cee932306030739ac453861cd5eb67079c8007eb5af319726b73d434bbe8e6b406495377d69b7fa9c714276b82c7815e7d1dd49b3e56c54b15dc8d2286726b354a2ddcb7527b1bd14723b972fd7be6b5ecae7ca50ae78038acbb5792688bec1f28c702ac0f963cb9c3568d732b1cc9d99b51dd875c6e15a11b6547e95c9c177b6508401935d4dbb6635e3b57257a7ca8f470751b6ee4b4d90803934336073518cb7ccdd3b573d8ef94b4b26431bfefceefc053a6bc8e3c6e618aa37b727cf22219e3048a8a3b5de374cc466ba3d9a7ab3cf55a516d216e6f55e50f1a862bd2a95c99ae240eea4151d454f2cb656b38dec0a8159f757ad70c426550f402b58a5d0c9ddb1b7f34715a32972cc7af35c4deb86738ae9ef59638d8120b63806b95ba61bba7e34a7b1b525629cdd3ae6aab804e48ab328c9a85b19c81591d49880027a54f0e013835082b9cf19a7c783c8a46a99b3a448d15ca34676b03d4576967adca8424a37283839ae0f4c709711bf5e6bb35b6492c3cf041cf61d726aa263516ba9d359eab692a643aa1f4abb15c45202cac368ea6bcedd9adc80cf83e99abd6ba84b12eddd9cf6cd438a2a2da3b581fce632630b9c2fd3d6a7ac8d13505b94f2c6030ec2b5c74aca4accd20ee154b5a99a0d32e255fbcb1922aed53d566b78eca5f3d86d28411eb4914cf2dba9cbc8460b73dfbd73ba9bed9186dcf35d0b4989d8b2608e9581a944cceee7d6b2a9b1db46c99987e7889ef9c7d2abc966d1da3dc3c8011d1475ad7d274c975099a34380aa58f1595777290131146279073f5ae7696ece88bbcac8c896565c9cf7aa72b1c641a9aea5ccadeb9f4aa72484a9278158b68f4211b1527dc5cf7f5aad92b2631d0d5b43924d4530ce48038ac9c927637b946f4a96f4eb5877041600f001adabd3c8e86b12e0fcc7a5127a687761d6840fc107bd5a8bc8fb17cc72fe95579cf4ad9f0dc7a4457d1dc6bf697571a78fbcb049b727b671c91dbf1aba693dcd2bcdc237461dcc70aa650119e87d6aa4431b83f4356ae86f96468e2f2a32ec523ce76a93c2fe1d29f14048cc8300f4ad5db6473a92b5ca2f1465b284e0f6aad73b63f94ae2b5af2258002ae189ea00e959370caf212e381daa65e6694df3142439ced1c53510be70714e7914e401c7d2a02590f06a169b1dd18590bc2300473539b85d9b47e3559b7360ed233dea431648008ce3352e76348d0f69a909209c0eb53202b0163d0d218f0707f1356258c7d93191d326a633ee744e9592467b547b71f31007a8a7b2f04f439c546c085fbd9a7cc3f6567a0d65007149839e9814a18b1c548aa48c0193f4a4bd456b6e44304e2a7b78b70238c9e8695210bc6de69f1a11d01eb4aedbb13a586b58281b9883f41435a44405d82a7657dbcf5a91632a141ce4d691bb39e718b5a99ff6500e559d4fb1a1dae13a4ad8f43cd694d190bf7474eb55a48d31c9c9ad3dace3b339de0b0d3d65145688967513c30cab9f9b720ad39343d12e10cff6485063e62bdaaba45fbb1b8aafd6aedbc902d9bc6654f31810066bb70f56abf8b63c4cc30382d391d99cd5dc1a5ee31dac73c0b9c6f0735345e1c696d3cfb5d464eb8f9c91566eace685431030dc820d59d1e4992658c1210f27238a238a6e76922259152953e7a5323d2fc39ac7facbad61eded0756f3793f419a29bae12fa8f123111e36e3200a2ae58d8c5dac634b86ea568f3a68fa67611fd314d31b13d0f1d6ae1505b38e6a58d54a9cf6f5af49ab1f13cc97433c215037526083ce47d6ba0b383cd60b02ab6393bf1c5676aa23462a183377c54b4f71a9ddd8a08463bf1476e7b5371d871c75a01210f3d3da9a2efa589d768c60fd69e08ddd79aae0f6152ab107d3de95ec0aed1720720e41a9d5d803dc93cfb545a7c42670a393e9562688c52bc4c0a95e0e7fcfbd37e41d458dfa12726ac24a41c86208f7aaaabdf35622883752141e49f4a2f6249fce7dd8dc6a78a7646f4c534dbc4b1075983367eee29a6320e41c9a6a4268d6b7d66e62c857c646315326b172df79c1e7d2b2562393cd5ed3f4f92e64081b1df26ab9992e3165d1aa3990310b9adb83c51224615a15247bf6ac5bad0aeada232332b2e33c75a962d16ee429b1e3f9867ef702895a5b82b27a1b5ff094ef603c91ef834b71e25f362d91c7b09ee0d62cba44f01cc9716fc7a3f3553c8989db1abbff00ba339acdc62ba16a527d4ddb3d762b7077c5bb3d4e7bd477de20690108a5548ed584f6b70bf7a3607d08e9503a4993c1355a5ee25145f9afd194641273eb5245aa411a1dc086ed5873065ebdbd6a06948e0f14ae5a8a34aeefd6676666209e958f3b9249c6290b127bf351bb75cd4366b1488dd89079a84939c640fc6a53cd46c00e41a866f16349e71919a746e41dbc537033eb4e4c03d324f7a4f4348eacb96b26d753d315d169dac9b34758d95958743d8fad730aac17201c7ae29e338eff0095252b16e0a5b9b4d75e64a65675249cd3e3b86df9dd588ac738a9a377c139353cd72a34edb1d569da83dbccb22360d77365a85bdc40ae25404f504d790a4ce3b9e3deaf5b6a3320016420fd6a5d9ee374ddf43d60dcc0067cd50077ae4bc4fa9db4d3795036fd8396f7ae62e35abe542a677da6b1ee750944e5c4879a872562e3464f734dd97ce667ea4561ea5bf763395269b35fcc4962ddbd2b3eeb529d177000e0e71eb5cd2b3563ae14a45ab4d46eb4c695a1c832215c573573be691e673939c935665d4659d99dc000fe159735e1572a1063ebc56526daf43b295069dfa90de1009359d2920f3cd599ee41909e78aa92dc26ec30ac1d91dd08cbb08a700e0d45231fa537ed083240a61b9871c9e6b3b26cdb91be854bcc038e2b167e58e700d6bde4b1b1215bf1cd644a002496a523bb0f1e5890e0ef1d6a6925f2e3eacc3d33d29d669e65c05cf07b51ab468b3948f040aaa68b9c549d8cd9247924dc490055b37111880248602a08d226942cb298533f3363245335596c567f2b4e32bc6a306493ab1f5c76ad5a667ece2dd82e2ec6dd800e7a1359b73824b6e0734aca58e49c0a8a5da0f273daa5bbee68a094b420c8009c0f6a2ce0334c09195cf34ad8e71d2ae5ade471c7b02f278cd4cb5d0ec853d05be801da157007a5471da8dcb960beb9ed565a556cb374edcd55770d9e6b292b9db463cb1b21b30065540013516a981b5578c0e6a6b188bdc727a7355f53e67619e3a0ab8c538ea65395ea28945b01719e6a16cfe15330e091511233de8b5958bddea08a49e0d69d844002cc0035521007247156e176c1201f6aa8c648c2b4d7c24924601e3a9a62829d319a74acc87f78a413d05412ca79c1c1a7cc8ce9c3990f670324b7349e792e14707daaa79d904118a66f00efcf23bd0a5a152a1d8bf3dcbfdc6ea3da9b6b1877124842a7bd40b246aa6e2762a8067dc9f4ac3d466b8bb937bc8608f3f2201cd7761e8a934e5b1e26658cf63174a96b23aad6a1b68ecc491ca3ccf406b0b025877ef0303a66b0d85cb023ed0c40f5a14cc99025c9af4dce3f0c4f8e50a919734dee6ce9d733437c27b893302f0549e315aba9def9e44b6cc5100c2815c6cad74c36924afa0abda46a26085a091727f849ace2aeecd1d13ab35f0b2c4faa5cc3262555901ea0f5a2b2efee1de76675c0f4a2a67085f546b4b155a31b735be67d9a5b23af1f5a789547e5d2a934ac48254ff852f9a40e63c8e99cd7648f97b17a3b8319254e38c553b97dc49627ad42f21dd9da706a3b8918f55c60548d21ccfb72bd69af322a73dfd29a58119ce0d413a07e474a2dd8d16a4fe63374e2a58b716c1239e71559490aa33cfa5588fa8e70690d3d0d1b094c6ca55b6907ae7a56ede2dbdc588b947fde8fbd93d6b16ded37599b805cf3f86290b08a3249fa8cd34c8693d8b1e6aa2924d4b15e46060b019acf8a45932580f6cd55bb976c88318cf4a7b94a09e8ce9629948040ab3131278524d61e893199d90f41d2bbaf08e982eae03c9ca8e08a1ab12d58a36f617cf179cb182befdeacc3f6b5c12ea98e3815dfdb58dbdb43e5ae08e9cd72bad88d6e99570307800511926434d15a5fb53c004b752367b76adad074ab69d4bdcabc8c30002e40fcab2adede468c4a49fa7a56cdddc7f66185e3208917041fe744ddd5849d9ec6ac561a7c47e4b7857d7815234d6b18c2951f4ae42e2f5fcc2fe61c1e7ad527bd62586f20f5eb59727734f68de891b1abcb1c9712103a8e2b36dd2dd58bce46df4aa325d31ce493f8d44d3ff7b39ab6d6c424ee41abedde4a0c0cf1596e73ea6aeea12e48f6fd6a831c114b7378a02a76f02a16c83cd5953fbb39c5559081ef4ac5c0616273e8298c78a566c8e3205433cf144079b2a267a6e6c66a773643f383d29f137b55659e06e93467e8c2a6898718653e9822a6499a2691d2c4a24d08218f9dc0e6a9cc1553601ce3934b677d24760d0e5707f4aacd2e5b1d7d6a5846e9922a8caf1935bde1b8f4f9af238af61468fa9cf4fc6b9f3c6003f95685a12ac8f923d6a1b48d353babcd17c35f669248adede37c64143dff003acad6743d2ec34a8640aef7729014eeebc7a566c336e39dd815b5a76a1a7c67ccbd632488b84cf38a5eea42e769e8cc993c3f19d11efa576570c0053d319c5626afa5d98b58da0b96673d78ad9d5b5796489a047fdc93d3f1cd629ec4f3584e515b1b5394f76c4bff000d18ac22bb5b8c83c329f5ac91a24b71f221525bd7b56f2dc3bda3a65881cf26b7a55b5d2bc3f034fe535c48cae150e4fe9472464958d5622703cc6e3c3f751348aabe6052795e6b16f74c9914484051d39afa234f6d16ef4bde26b71bd46ff98022b8cf895a7e95fd9912e9cd103192ccc0f2d59ce83b5d33a2863e5ce93478addd9ba9ddc1cf15466b5908cece3eb5d2dcc6a587b555588348d93851935c33bd8f66159ae8730d6f2e4fc86aa4b1480e361ae9e5da73b00e9cfa536ced6da663f6894a1fe12bdeb9d36ce98d76ba1c7cc8dc920d539864fb1aeb75654b78658142b293c377ae5dd464f1569db53b2855e75b059b88cb3ede474a8640ce59989a51c0c0e46696560213c8aea82d3522ab927a193392a5b1ce2ab8e58647d6ac4c32a49e86a08c10e0e3359c934cde2f41e4c610fcb541c658f615afe547e5e64dc39e302b3ee1034eca9f77380686caa2b9a4526e84678a23207bd3a485d4956186f4a5b68b0f8905656bbb9dd7b4498b12a327f0a6a23c8df2b003a9a92e63d98dbdc74f4aade6953b54f23ad5a8f71aaad4742ed80f29a47241f973599712ee949c0e4d685be7ec9236393c5654c0ef20f6ab924e2614aa4b998d66e7007069b83bc0db9ed4a7918ce3fa549029efcfbd44626fceec5cb35855332eefa0a259be6cc6318e94c6e1411d4f4a841cb73549b48e7f6777716577624bbe4f7cd4321e09ab0572383c5445031dbb49349a6de8529245639db900631cfbd2cbb2040f2f24fdd5cf26a2bdba584f95080f374c63a557861218cd7b2ec3d70dd6bbb0d83bfbd33c2ccb3c8d3fddd1d5924a934f209642760fbabd8511db80497652c7b9ed5712f6c361548679f0324e302a8cdaa5bc8fe5c7664f3d49aefa942135ca9d8f9fc3e36b509fb4946efcc9da28a083cc211e43f757b7e35946d6496424e0bb9e48e82b423826b8c62cdd47aeec66a09c476efb7ce78cfd7351ec5528d9314b193c4d653aaae97405d300603e6c9ef5535cb34b6d92467e6fe202acc97d731e1a1955b8ed597793dcce76b938efc54c28ca2ef267462b1b46aa51a70b17602351b60a02f9cbd411d68aa9a55a5db4fe65ac72b38e708a588fc05154eed9c94e314b53ebf76c67e6cd44ae08eb9c75a8589c9e739f5a91506cc704e3d6bba67cda5a920233c1c9f4a4bae637c9c1c62a18a6d9372381f90a65fdec3221558ce4f7cd46acd396c24255d0e78da79a64bcae1588f7cd54865db291c80dc7e356921f972efc751ef569584d6ba0e8ddb6e18e7deacc67e6dc09231555d48405412bdc629048c194eec2af6ed536652574767a344d3694db109fa5666ada55ca589ba94b038f963abfe1abc9a3b232070549fbbdaa5bfd424b857490023f8475db45ecc97171672fa5accd16e97209e719e452ea2e7e43bba1c63de9ba85f0b66088bf5f6a824f36548a763cb76c74a7d4d12bbb9bbe0ffde5d95dc4e3835eb7e1dd1121804ccdf3b723935e71e10d3e48af561243bb80d953d2bd8ed6d36daaee5e76f734a72b6867357655d423113b48dc65719ddc0ae6923fb4dc931b1383dcf5adbf103348e228632c231f31cf19f4ae58cef0dc798ac5181e80f4a22fdd32b1d6de2c10694382188e79e6b0f5ebc8e79a368f384403f4aa735fcb32e1dd9b3d7354a590f39c521242c92b31e7a5314191b1d07ad355f20f7c0e29f03e3271cd4b9169587cb0ed5041a80039e4fbd2cb233f19e3d298a095c8153728a97a4ee19aa84fcd93f955bd43923154588ce7df8aa45ea4ea731e3a55494f38ef56016da2aa4bc31e791437a151d043c0e954b52b5b5b8889b8884981c71d2ad927bd4721f97daa4d933ccf518c41abcb6b1bba22b0c60f4c806ba8d2ae34bd2e6080caf70501662c4f26b98d69bfe2a4b90081fbd5c73ec2ba7f0ddbc52eab70d226ed8a98279ec2b33ae295b53afb3712c29201c1a95be523be052dac6bb140185e9562e228c0ca963f850677572149095c9156167200627007b555894e7bf5a8b5520471db2366498e303a81deb26aec739248ae359c6ac1bcd221fba076fad6f0bb00fa83c8ae27c410416ef1b5bb70876127d7d6ba4d0c8b9b08dcccac4000d67285d5c8a2ecf5373499acdaf41bc6c47df23351eb1ac59412cd24702bdb866d8471c76aa93c01212fe629cf6079ae7bc46de4692e413f3301fad67176d2c6f563eedd3362c35496fa1774b745403d78c55c6cce63453b8800707a0ae5f40765f0fdcaab9dcd2019f4e6b4b4c91adfe4f30b1239cf6aaaad462830f16db66cb4a605701c9651d01ae6759d6924252e239be5eb9e95a62625dd81ce7f5ac5f11b23cf6ea00265e318a885452562eaf341f32655b6097b1b3c692220e8cc3afd2b2aeef2d927304ad3440719d9f7be94eb8bc9e6bb648b3e4c676260e06071525f5b8912dd65006e7c6e3f4ae6bc5cb96c6aabd68d3e7e62979513c5e65bcde6ae327d6aa4eaca02ae01f514afbf4bbc6947cd116c1f42334f9a44940961c156f4ed5cd569f2eb13bb058ef69ee4f7296a1095b2334d2a229e066b9c9d2dcb102f2dfd7efd74b72cb25a490498752a7191deb8282d628753b87b81ba0b624e3d71d057450a509c753a2ae331142768bd0d97b19522491991636380c5b826a8cf6ef8204b137a61c7356a1d527be6449604f24642ae3017e95cd5ddb23f885e02488fccc707a57553a5096c3c463f134a1cd2b6a699b29f6ff037a61c536d2cee05c01244707d08aaeb7b6104b2436fa6c642b91b9c924e38eb4d9af6ce66fded9bc449fbf1390694e8d3bdae3a78fc5ca1751468ea04a21cc457b7359d140b2069259d2241d8f24fd054d09b88184bf6b6b9b66e88fc9abba86992410457d2405164c1f2d88c8aca78771d56c75e0b345397b392b48c2b981d98b431cc57b16435098e44525c3f1ea0d696bb7f3a69f2ddda5d4f13c6065777cb8ce2a9689a8dccf646ff0052d527550c1552351c9ab8e0d495efa153cf2ad197b3942ec8e466283af4ea7d6a08a22d2633d4f15b57b7374605b9b5b949e2c7ceb228cfe9573409f4ebb81e69228e2b888f52b95fcaa9e09dae998c788237719c1dcc6903476e23623eb59732fce4e722b57c53abde69d78913c367342d8fde7943fc8aadabac7fba921da43a6e257a67d052ab86708dee7565f9b46bd5f67cb66676071819e7b55a8c10bd2b4b4a82ce5b50cb14324c0e584848e31daa9c57a9757cd669a103229da4a4a40a9861e52574cdf119c52a33e4945959cf04026902b3118ebd856a5ed9a0917c95180b97c36403e80d5cb48ff77b55add3771b9bfc6b1749f358eb8e2633a7ceba988b148c769f971d49ed54aeee88dd0db1c0fe390ff4ad6f13016f22dbadd43302374be56703db3583b3cf04f2b103c01d4d7753a50a11e791f3f88c5d6c754f61436eac823cff00cb01c9e0c87fa55886c50869676c8032cec6ad410a9439c2a2f26a9ddccd73cb92902fdc4cf27eb4939e21ddbb44bab4e865b0514b9a6c8ee65332986dc79500eae78dd4cb143f76dd7dcc8c3f9549140d291e68213f856b4e18e38d033e71e83f8bda89d67754e90a8e5ce6beb18b7a761360480f9b21098f9989fe558d761677f9404847563dfdeaeea64ee0d29c64fc910edffd7aafe5190832e303a283c55732a4af27764ac3cf192e4a11b47b90a88170905bf99fed11c53d6c1dfe77655f61571100c638c5264efe4e3dab96a632727a1ebd0c870f4f596acbde11827b6bd2f693b5bce0ee0ead83f5068a6c293c68270c1474ceee68ad618c715667062387a9d49b709687d06ed81cf53d29ce498c75f7a0af2467a52a80cd827007635edc97bc7e729ea569373363276fb530c67760fe06a6600b120639a722e5b18a4f4342b18c1cf1525a4a4158e5e48e953b443cc3d691edf2801183eb53a045d91a3632ac728660bb4f041ee2a3d46d121b9014028fcaf1c0aa70cad132249d3a0615ad27953d900c41603835561c5dc34e966f2fcb888ebce3a0a9b528f516b09daceca693cb8cb493042110019ebeb49a540ed6ec7cc5e4f18e2aaf88354d534ed2eeace3ba916de68ca1407239fe559b5a9a28dfa9ca4376d3cb1a972e1d867231d6ba9d5d92c605b5580339894ee1cedaf3eb2768e6556620647e55d25cdf33feeada791d1d006c9eb53cc6f520d58ebfc03aa9835913be5885c00c7b57a94de2ddd658118566e339e95e25e10611ea637b738e95d7cb72738fcbdaa9abee72cf46751a8789a692258230aa0752056409d9d8b13d6b391b29924e7dea7470aa3a1e7b1a57d0cd2b17a39d973b4f3e86a232b31c9eb51c2c0b13df1c53413ba9148b103fcf86f7a7125738aa8495901e703ad5cd9c0352d5c1e8c5814b1e29f22b26462a7d3a12e49e8053eead9f19c679e2a947415cc3bfc82a091541f9715a3a92946e7a9acf2419318e29a562932723f7793e9d7154dfe87deaf2e3cafc2a84879cfad16ba2e2ee33df14c7efce29e7eef151b92463bfa54b3489e5dadbe7c4f7236e3130fe42bb2f09ff00c846f3af1b39c7fb22b87d5a546f13dd10d91e76323e95dcf8486750bd38eebffa08acac8ed6ed14769668ce57ebd2ac5f830e14a76f4ab1a7c11c50c7348c157049c9a999c490cd34e47979c4755c9a1caea24cc857f2a22cc42a8e49ac583508a779af0ca8923e521527a0f5ab3ae5e2315d3a17c3cbf7f07eead67c973e5eaa96f6b6e92450fcac401c9f5ac24acc4db93d094dadb2e952acf7513cac0b0f9bbd52f0c5f3453881f3b64ee7d6ba1ba92d5a2130b08cb11fdde95c6f8819ad7528ee1415ded951e98a96acb429277d4edd9c9c006b1fc54e06944b9e77aff3ab5677227b48e60d9dc39f6acdf1565b492739c383cd6096ba9d7397353ba1da46d1a3310df319063dfad5e4c2b7a13587a2333e941548c89013deb6d0fcc493d2b1af27648bc2df95963ce48060286e39ac6d5a479b51b2658f1c9ce2b4a5236e473597a9cc45f5b463248467603d315953a8e4ec8ac4b5ca8cdb15db6f1ed51f373f8d4da84bb1ecb726732118fc334ed31316c8cc9838e9e9ed52dcc26eaea085400e80c99cf402b3a7ad466f5edeca3130f62dc59bc7292324e09edcd63d9bcd61732432e5a03cf3e9ea3f3ae926d3e4b746490e58b1a22d15f50b2963725001957c726aa13526e321d6c2a8d35521b98b76a02ac91e1a36e4115c96af180d7dc1f99d4715d3c9226984d9dc93b73c9f4f7ae73547491ae1e36dc8655c1f5ade8c3922ec52afedb9232dee47629b6589476ac3b8ff0091b1c73febaba0b4dbf6841f9561c0b1b78b2667ced591b207d6b4c1f99e8672b9631486408b891b1c9739fce9d1c60b9ca8c55a87c928de5aff0011ea69f1c6ad2614edf5f7ae6ad27cccf6b054d2a31561a8acb693794a0154247d6b2748bdba9edeedee676932bbb2cd9ad6b9905b69d7972c7e5588a8f72781fceb9c756b4d246e204974e1107fb23a9fe95d945395277d8f031c94318b93725d6642be1bbb607ef6d5fcd8553d0e26bad2638e25df893254738a9b5ce3c332e783b907fe3d50e9b68bff0008ea3dacb2437a5f2195b1903b57461e29d2b5ce6ccaa3862949ea6ddc24965a35c3c913a332948d4ae0b31e06077acfd35e4b158eca43fe93724174fee267bfb9a4f0c6a92cb04f0dc65f5040423c87247f852e83652add5cea17649930793d7354ed462e2d914612c7d6538ab58975681351b69ed89f9c64a1acbf0fdc1b9b5934e9ff00d7427e5cf5abde718e6de3ae7d6b2f5c4361a9dbead00f9243b587a9eb5850a9ed62e9c8f4f31c33c2548e229fcce8f4881e38a49cc5909d88ea7b2fe759baa0bab67fecfb771e7b92d7322ff789fbbf85742354106991def9623675fdc479c907bb1fe9593a7460e65970647e4e7ad6739ac3ab21469cb32acaa356456b7864853f7923331f7ab7691492ca00040f53575ed98aee5922504f249e6ae69b61a5a9592ff5975c9f952341fa935cb4e5cf2b9ee4a3185371473370b6d6b74cd72a642e4f7e0525c805408d404ed8f4ad2d7a5d03c99905abdc4cc0ec91a42003d8f15cd5abc88a42b9017a0ce6bd3a945574accf9ac262e580ab2e78bb326d4ee3ecd641541cbb638a82d61f391661dba5493b34f0ed961561eb8e951d9c9f6525155b61eab55f5692a5cb1664f33a6f19ed651ba2f5b465a50adc026ac4b73124eeb1a07641b549f5a96ca5d2fe52f24a8e7d578abdad5ae9335a4171a6cb6e975b8f98b8c0607b9358d0c354a777d4f4b34cca8d78c629e87322162c669b97249fa51b4f42bd2b5d74d96e22dd1bc2c54f2378155a6d3afd1b3f667da4f51cd7155a55549b923e830389c22a4a34e4915a352179a8dc7ce481dea79639a304bc6ea47a83503e3a1e335cce3dcf4d4a325a32512128064e3b0a2a03d720fd28a56b995ec7d30b1e5b18c53e680a38c9e319cd5d8e10a371edd78a4b8f9828ce71ea2beb5b773f115a333c4397fe552ac4a39a958638e38f4a68cfa707bd27a97711541639c0e38c8a0a8c7241c52af00e79a53c8271f8548bc8608978dd8c1f5a83c47343a3d9f9b1ccb333a642a7406b23c67ad49a65a2241feb64e01f4ae1c6b57778765d4bbc0e99a529247561e8b946eceaf45f10ea864199be52fd319c0aea3c577ab77a744b6b3dacaa21266f306d7073c607ae2b88f0ae9b77aa3916d2c71e0e4b48702abeaef716b3b5a5cac6ce0e7cc527040e3151cda9aca9c799450970eab38c8e6b66cae206291c31313fc47bfe15cc46c5e5e4f39ad8d3ef26b0b88ee5515d179c30e2b06ee6b38ec8ebfc23385f10c0cdb9170701d7aff8d743ad5e493eaed286448f00050302b8bd06fe6d4bc4c2e9e46f6c8e833d00ed5d56a16af23ac91005c7ad742670d5567a9a71ca083cd48ae48e7f4aa766b315fde002a75e49e9d684645c866080839f6a904abdb83fcea9669d9cb6467f3a2e5256366dd126b676e091eb4f4656886060d66432b052a0900d59b4931c0038a6ecc9bb37b48c081b1c9cf14f96e02b159100aceb7b911c6c54739e6892f37c7ea6aba136bb286b8eaf206000159471b81abba9b65f18e9540021b8edeb49ea34ec5f400db96e3a566381cf22b4a06cdb38c76acc75cfad1b22a121a7eb8e2b275cb26bc51ff1309ed9141c88ce335a8c2a0b885658ca480143c11eb50e2d9b466799eab61a3585d2e2faea6918eeca81c7d735d07872e26bc4636babb5b0ee1a3073db9ad893c33a5b9dcd6cb9eb9a92dfc3ba6c4484871c7ad66e275ba919237ae34cba9346825935a91d94124800034c8f555bbd357498ee33728b932ede3356aceca35b38a2577daa3182722a3934b8e0be370840f9401818149bec73595cc496c7ec9702493508de4639248c9abfa22a79b348c603938f97a9a7ff0063dab3991cb16273d6a1fec98609fcc8e474079c678ac19a461aee6cb189e352bd0704573be33b192f2380da889550e58bb6303f2ad69264118083040e6a95e86b8b66889003704d4f368742a7cc8c0d066bbb193c9692092263c8f30f1f4e2ba1b9f2a78648d8078dab0ffb061850dc4b2e401f2a67926956ea7854a8200078c564d5cde9506f4121b3d42cd8c9690192024e414209fa56845a8c6a313595dc4c3a8099ac2d566bebb5005f4e98e005638acb49b59824f92ebcc8c750d924d29a8c96a54705563f0b3b392f1a441f64b0ba918f0be662351ee7359ba94925b412191d65bd986d3b3808be82a95aea1a94ca559954d5ab4b4e4cb712176ae59c9456886f0d36fdf65dd2e169228d14e18004aaf5fa556b6b7d6a3d4eeb5192dbcb807eed7e538da3d0d4ca4432f988e55bb0156df55ba7d3ae20dbba465db1b6ee17df159d29c637ee5d7a326d587eb4b98127d801ead9e2ae43a9daa7879dd2225d30b8c73cf15c793a81f2c4f706427a866ab4cd22dbe067683d3b5439462f996a76d084a54d29189e31b74bfd3e62a9e5c98caf3d6b86b40cba632baed6f3c647a5775ac48cd031c7207a5713a83dd49731c780220dbb0a31cd6d87c42e4699ac703352528ad2e5d448e045bb9e68e2881c658f35ca5adfc09afcb76cdf233961edcf15d2bdd4891ec08aeab9c0233596f777ed39716d085edfbb15d3869c226b9ae1ebcd5f744d670db496eab6d796efcff13e31576c2d2279cacb731818e91fcec7e8054704f287566b2b6623ab7963352c3aa5cfdbbcb5448d7183b540aa9429377161f118ce450d914f59b65662d7fbadac61e63833fbc99bd5b1d05726cd71a96a66768caa29db1c6070a074005759af5b89e7769a40d939c03c563c045b4a1d17ee9a8f6da72d8eac365ce53f6b2d5f9947c548d6fe1ef2e6023792550a84f271924e2a1d1c4ada75ac900dc636258019c7d6ac6b573a7c8ecf3e98934a7b9635434ad4e0b3b8dd1e9ab183d42b360fe15d34e71f67689e6e228d7789e79c4975db6316cd5acc6d907fac51fe7ad6fd85ddbea5a019a065fb41203c63ae3d6b34dcb48924a5030909254f4ac68aeec2cee83a58cb1383c94948cd14e71ab1719742f1184ad82acaad3574cd2987ef086041f7150f8a631fd97601b8ccc4853e8075ad1875686e2ed2e161c2aa80077cfad56d69b489c89aedef659bb7ef320565868c235373d0cd6ad5af868ae4d096f54bc56996cc6908e3d4e69818e3238a4d3355b08addad57cf2acbb40948341c607b5658a85a66f914dba3cae362cc6cb2236e2477a58decd55d65859df3f2b06e82a28b0c40c53264c1dc0e0d71c2f196a7b5ecefb925e359980a476e32792c79359524319cf1838e3156db827e604e2a26e4735af3bbfba53c3c1ad55cae2dced015d87d298629037df07eb56f2429c546b92d922ae35aaa5b9cf3caf0b5359410f48a7660b1aa127a646055fd616f16d628a5890151c6c007ebdea18e411e1b0322b7356d7ecaeb4a8adadf4b8e199061e52e598d6d0c6d4b6e70e2324a12925189c35c3cb1ff001386f6e29b16a97b11fddddccb8f5635a73fcdc9c7bd5730c529e1173eb571c7c9bd51cf538721f62561f0f89753500493acca38c3a839a79f128618bbd32d2519ce42e09aad2d9c2c30179f6a81eca207826ad6369b7ef44e696438aa7fc39fe269ff006be8729ccba6cb093c1f2df81f4a2b216c9896c107f0a2b5f6b867ad8c3ea99ac345267d7ad8c605579172322ac95e79351c8a07539fa57a523e057914cf5e466931c12054cc858e145445486c7030793525a7718993dba75a189c1c7e14bea7f88d0c063fc290d1e79f13ee732c10807210b126b8c849c67f0ae9be2748575b89300a98783f8d7356519b89563461b89e98e95cf59ddd91ece0e2a34aecef7e19cc81e5491979078269bf10a5ff0089a40ab1a80632738c77ae5ace79ec2e9c41291221c122a4b8ba9aee633dcc85e4fbb926929da36647b16eaf3ad896271b81aeb3c196906a7786dee554aaae46e3d6b8e53d0fbd6f786b558f4cbb12cdbb691dbb54ecd5c75969a1d5da58c5a7f8b625b650a8ea491e9cd75aad924571563aa5b6a7e28b56b70c022306278ce6bb88b6f00f03e95ba5a1e64d3bea229e3d2a453f95318fce707201f4ed406c2f2302ad25633d4997079e29e31c702b17fb7f48494c6d7a819490c08e953c5afe8e738be8b1f5a86d7434e576d8db128d817bd0b212c482056547ad696f8db7d09cff00b5d29c358d3474be80f38fbf42762795f63611caa12c734338eaadcf5acc5d4f4f703fd320c76f9ea637b62aa4fdae1ffbec55735c5664975233c80b1aac739cd45737d641862ee0fa7982b335bf10e9ba540af2cc256660aa91b027356909be874113ed8cf1d462aa3e41cf14db6bb865b68a62ea8b22ee01881486e6d8b11e7c471d7e6152388ad83d298d9ea7ad0f2c27a4b19ff810a3746492b22103fda145ae68b614139fc29173b8d38727395c11d8d395739c107d79a9945dcb4d58bb079a5170ac7d3de894b82778c7b7a559b7984683a1e2a09c976f947bd64d6a55ee43bb9e49c76a8a53b8f24fd2a795004c820b1aab824f2719ace5177378320954ab1c70298ea5143b118eb572e215545287731eb8aa376246c280d81ed59b81d14e496e67dfdc3ccdcf41d05664a5b1576e23949ced6cfb0aa92c327428c7f0eb438dd58f429b8f465566600e49a859bb8c60d4ef0cb820c6dc71c0aaed1bee3f2367e86b070675c2a2ee356465e4356a69f3bbc4549e477ac8d8d9fbadf956ae9b67701430644dc3214b6188ac654db5b1a569534aed9724864f9482a49f5351accb164bb0623fbb48b0dc5c5c98d10bb0e08cd56bab79a09da29542be324571ca9b5ad8508a6f5632eee95ce11719ef9a88bb3a05321007a5432e3927f0cd46ee3cb18e05632b9d6a0922b6ab948dbe62723815cece3f79c8cfd6b72f1649a23b524931fdd426b22e609c1cbc32a81d49422aa1176d0f430d384559b2948b93cfad25bc45d8f1c1a736370c354227689885c0cf7ad95d6e764fde868699031c01c566cfcdd6319f6f5a05ecbb7a039f6ab1a20171a8a9940da39c1ad24eef431847d9ddb452d415973bb038e82b165e0e704f35d4f886302491846157a03eb5cc4806e2702876474e1e5cd1b9564557249151ed4cfdce9ed53b8520edcd46ab9fe21f9d25aea745a296a3a2641190547e355a68e366f9914fe156c47fbbea2a078989dc39f4a1bb0463196e451aaa9f940069f24711c165c9fa52989830ce29ce87b0e69a76ea68e9c64ad62af91106cec193e82a6270a001d3a52846cf079a468cf4a5cd76384230d90a199597069f2be474e7eb51b230c62800eec8e71536b8dc6ec4da41e578ee699293c0ed9a948763cf1eb51ba9f5a577b204ac46d9c60714b02ee9074e69fe5e7183cd3a341bbd3d29ee1725689072c7b554948ce00ab3221c0c9a81a3e37038a1ef608bbeac81c1032475f5a4039c8fd2a564caf2453e08be52dc70286b40e6498d11e4ee23e95195f9beee73cd587ed8e29bdc9a4930e7ec566ce485005156000074fce8a4c98bd0fa95bae3d29cc14aee240ec6aa493927e518a89ddcf3d6beadc6e7e1a4d3cab9014f3ed55dcf3df26907b8c9a43d47526958a8e81c7a9fca90e4648c7d2940c8c638a42a48e00f6142452670bf122c629da29482240bd40eb815c4787a548f528d9c0c03c835e93e359e382d833a86255873db8af278d8f9a08e33d6b0ac95d1eb609f35369ec5eb8b927529651f759c9e3d2b46531b5b2b215c77f51582c479be83eb5343290719f94573cd5d9d7cb74bc8d689cb385c06cd4d22ba9c3022a9d9c8247539c1ce38ad3953783b589f5268e631a9b9afe063ff0013e8429f98915ea8bd48cf35e51e06623c450e0838383cd7ac020e71cfd2ba22ee8f3f11f10ec8cd2b0565c63a8a66013927391429047046455d91cd731aff00c2da3ce8cc6231bb9c960c735c1f8a3473a45d2ec977c0ff00718f635e97abd99beb27b7133c448e190e0d715f10ed96cb48b3b72c5ca49f78f7e2b395356d0de8d469dae7356f302d8690807a9ee2bbbf0af8634bbdd2fed574c652c7ef16c62bcb52e36b9ed5d949a85c5bf836c7ecd3346659c2e41f6a8a74fb9bd69e968b3b693c23a24a8a882418eeb29aa179e09b72a7ec97f2c6dfdd63906a8e9fe1ed5a6b38a6fed695370dd8cf4a9c78735a470e3559641d704f35b4a091cf19ddb5cc71be2dd0f57d298492879211ff002d10f6ae7ede469264666ce0e464d7a5cb6bad5a5f2c77317daaca41b64079233deb84d7ac174cf10bda00446c43a0c7407b54b5646f4ea5f467a25f69d61a958e990dddecb0cde57c8b1b6335caf8afc317da45a3ddc17d34d0af2413c815b579b86b9a2a0241fb3e7e9cd5ed62cef63b3d5ae2eee3cdb77818a478e9c53714d1cf06e2cf2537d73bb3f689b9031f39ad2d0e2d6b55bb16f612cb239ea4c980bee6b050e55403d3bd76ff000c6474bbbc915f056dd88c7a8158abb76b9df2d23746d597823586c1bcd7a543dd63c9fd69f79e10d6618f7d9eb934ccbd15d88cd73fa4eb3e28d44a8b4926933c92071f9d7430daf8cb058ceb9cf03dab576663cb3ddd8a6f73acd8c2914f2dc2b81c9dfd6addb789b5ab460c499231c90f5a97b6b7f7fa13bdec023bcb719561fc63deb959a7592107ef0c76359c959dee2505d51e97e1cd720d5a3c30f2a6c64ad684a15320706bcc7c2971245ad5b3090a216f9bbe7dabd3ee36994a29c90719a49b7ab1c559d8ccd5e2be9ec1a1d3ee96098b021d876ef5c86ae9e2cd36269e6bd13a0072d1f6aef6542ab803e627839ac198dfc9a8dcc13a8364633b4e3927149ea528f53cc25f166ba4906f641c9ad0d1356f156af3343677ca362e58b8e315c8dc155b87519c06207d01aea7c1974d65a1eaf7ea0168e1f9735316d68d9d8e11e5bd8d9687c74b9d97d66ddf96aa17f7de3bb305a4896441d4c786acfb6d775fb98f7c30864ce0102a45d7fc450313e4b0f5f978a9e74ce85857cb72b9f1aebebfbb91a356e84345835dafc2f8e4d6e4b8d5753b8dd3711c433c019f4ae53f71e28b79166b55b6d4a3e5594637d775f0c749934c863f39184920dec0ff000f3d2954764b539e4a37775a9ada448b1789a4452180908fcba8aabe2e52dacc85576fca05655b7996fab5dc9e692ff6876ebd32dd2b460632cd25e5dc83ca8816727a1c572c9f32e43be12504aab33a4d3cfd94dcdecab6f6ebfc4c793f4154a1d504e043e1fd19ef581f9a597a74eb4cd46fff00b675a86131a3425b0a9fdd1f4ad1d7b51b4d1d7fb3ec14c5120c10bc163df34b9214e37b5d9cd2c455c4be5bd9193ab3f8ecdabb2a410e17212375c8ae32fbc57e2cd3ae8477cce08ed2a6456deadaedf3db1fb3478c77159906a926b0bfd99ad421d587eea523953e95ad19a92ec3961a505cdb9143e3282e6558f53d2607dc79922f948ab1ae5a4103452dbee11ca9bc293922b8dd42ca6d3b577b39b928e3693dd4f435daeb45ae2f34fb28919e536aa70a3d7355569a70bdb53b72fc4b85649c9d99964e573fceaee85ff1f5c9c0f5356ee342b8b3847db592390804459c900fafa54de18d1ae6eef8c70a9231d7d2b8231e667d2d6ad4fd9b95ca3afb4b21f2901605b0aa075354a4d0a1b387ed5afea30e970e3215b9908f615bbe32d597c3ad1e99a3c06ef5594e3cd65cac67fd91eb5cf7f62e9fa5b8d53c5721d5f5890ef5b776dc917fbdea7dabd08e16315cd519f3d3ce6b557ecb0ab5ee4116a9e1addb747f0feabadb0e8cca76923d855b4d57c411c45adfe1e47127fb50ee6fe750df78caf63888b7952da25e91c081401e9c5621f1aeb224dd15c5c13eec6b58d4a4969139e785c5cfdeab57f166addf8cefece329a9f83ad6003925edcafeb55d7c67e1ab923ed7e1958bfbc61931f954c7c75ab41631adfdac57d13e774732e78fad655ee9fa1f8a6192e3418869fa82f2d6cc7e463f4ff0add42135b2382752b507ac9faea6dd9b7843566db61a94f69337dd8a71907db359dac584da65e35b4c433603023b835c2698d343af416f3c4c9247305753d41f4af45f1bdd249af940c18a41103ff7cd71e2a84230e68ab1efe4799d7a988f63525756327f9538018c75cd462618e0569689a549a93bcaeeb6f6917cd34efc2a2d79d1a729bb451f5f88af0a10752a3b229dadbc97132c3146f2c8c7015464d6d3786a2b18fced7b54b6d3463222cef90fe03a54d67abdcddf9ba6f826d85a59c795b9d5ee3827d769ec2b36e6cbc19653f9baacd7bafddffcb492598a464fb01dabd1860e1057aacf8faf9ee2713271c246c97509753f025aee52751bd707fbc12a03e24f0411b4e937e99ee26cd32e35ff00012ab44de12b32bd0ec2775663daf80b56629637175a3cc7002c8dba327f1ae9852a52f86278f5f198da7ad49b5f337a09bc0fa8284b5d52eac256c7138cafe7525ff86efade23756cf15edb6789206cf15c1788fc3da9e8d1f9d2aadc5aff000cf0f2b8f7f4a87c37e29d5345ba596cae498811be2739461f4edf5a896169cba58d70f9d62e96aa7ccbcceaa5201c9e838c7bd42ec3919ce6ba36974cf16e9cfa8696a21be8d7f7d00eadfe7b1ae6643b090c39070411c835e6e2284a8bb1f6796e634f1b4b9a1a3ea86373f852a391d4526e5c74229ee4796a474ac127b9e8b57635d89c1a611c0e7f0a1e54078c0e29bbc13d695eda31dadb0f1f29eb45377668a341a4cfa6589ec2909c8f9853c904138c531803d6beaafd0fc334007b743e94638e7a520c12704fa6694e41c718fe7458134267923a507e652b9c11436067b7eb4c7c8e3279a121bd11c3fc5060b6f6e037f11fc78af35dd97cf4e6bd1fe2a1c5bdae0639207e55e680fefbb1e6b2adba3d6c07f0c7cad89067a52a4800e3d2a299817e3a8a584fcd8ed584f5763d08bd0bd672949064e07a56b99e410e47ddef9ac04600820e0835b63749123a630473595acccaaf2a37bc0af8f105be3aeeaf5ee70074c753eb5e3fe094ff008a82dc83f36ee3e9debda2de38f3ba4c1fad75c0f2f12d5f42009b949f4ea69500edcd4f318cb154fc6a30a36fcbf4ab4ac72dc400e39ae0fe2ce7ecd6a030ff005bfd2bd26cec6498679551dcd735f132c6c5ad6dede485e4cbfde1c907145ae34ec7881197209ea7b576d0c3e7f832d0f430dca9246702b9ad5b4796cd8c9107923cf53d47b574bf0feea0b9b59748bb9085931b0e78cd3d2e8d16aae7a9e94a9f6089723fd58c0abb1c4380326a9d845e55b4519209550324f5ad1328118543c9fbc45391cf1b5ca17a016000f4ce6b80f1bf856fb56d6e1bcb578628d176b173ef5dfdd30f33daa9deaf9b6f22f5ca918a9b5d58b8cb95dce1679e17f1769b6d14c930b68423b46723766baaf181dbe1dbe3d0f92d9fcab8dd0745d420f1479cd6cc90ab9218f4c575fe3320786efcf19f25b3f95091a3b5d1e071380800e4e2bb5f86a7fe4207b8b67fe55c2c6e362e7b8aee3e19e5c6a4a83731b67000ea4e38ae64fde3d29a5ecf53b4f85c89ff0008ec6e10027ad76039ce3807a5723f0ca2921f0dc71cb1b46cbc1561cd75911f980c5746870c9fbc5996388da48acbc15e6bc5ee64b689a6546924db230519c01c9af6ad52686cf4a92e64c6d44ce3f0af1899a5babd09059032bbf11819c926b19b6b62a9bd4bde09dd7bafc5b7e5861fde4841e8a39e6baff08eae6ff51bb76c3234acc98feee78ac8d67538b43d1db4ab74b717f7083ed2d18fb83fbbc77ab7f0e6da60af7122a0461f28150e6dbb1d50574e4762eeaca0edf9b9e7d6a1ba319864223c1d8738fa56b442130e5957f2ac9bed421b682e4ac08cc15b07d78aab7627a33c0753b58e5b926df7639ce7ea6b5fc3c8dff08bebd67d5fc9e31d0f7ae62fb559aea57936888b13909c0eb5a5e0ad592d754f26e5ff0073703cb627b678ace29736a76da5c88edbc2a8a9a241b5700ae7a55f64566390307da9d6566b656690290d18cec607208a52b96ebd6b3942c76d3a919ab9d1786347837c57496f6ece3a330e456ad843acc7abc8d796f6c964b9dacafc915cd697a8cfa7f421a3f4ab3aeeb4976b0a472322861b867ad47237a3672e22129cb992295abcd39bb2e9122195994af719eb597e34b99e0f0dc10c1f7a79c6f00755009ad46dc6066501549c0c719a6eab08baf0f49122833c5f321ee3d7f4cd2847de682b5fd8ad0f3cd26f64b4d5a1b990b615b9e2ba0d634db89f5592f9ceeb59bf788c0faf6a8af2f34f6b3630c31a498009703233d6b4ecbc4d630588b69210f01e327f87deae542f0e5b9cb4aba85453b5cc7b88822903001e82b319144c18ae70723daba9d4ada2bbb4375a7cab71111c6dea3f0ae764b77f3769f5e4570ca9ca9bd4fb2c2d6a35e9fba55f1a68f79a85f6977765633cfe647b64312120004633fad6bea6d2e9dae5bc510f2e44b640c40e41f4a885fded9c0d1c1752c6a47456ac4d3b5196e35067937338eace7935d4eb2953b1e2cb033a5884fa1d3ed92ea52f3316790e5989e7357350d6a3d0e13a569db45dc89bae24ee83b2d54d2e7482deeb54bac6cb58cb819ea7b0fcf15c9786fcdd5b5b632932492bee727be4f35586a4a2f999966f88bbf651d91d14125b58d8cbe21bcc3dc3931db0dbc83ddbf0af37d5e7bdd4afdcabb1566cb313fcebb0f8a1705b5c8f49b72160b385102fab1e49ac6b6b511458ee7bd3c4d4517aee6b9261dcd69a2ea51b4d3a18acc860646ee4d36381030c281f856c34062b3767200238159f07fad008ef5c0e4dbbb3ebe8d0a508fba84d412378c26d0463d2b32d6dd6dafe3b98331ba3678ee3b8ad6ba196765ce075aa0e4e6aa3371772a585a55a9b8c95c778d74c23c5fa4ea16f0b32de01e66d527e61eb8f6a778bf8f1bde8391b5235c7a614706acffc251ad69fa7b45697180a38dc01c572fa65c5cea17f3dcdcbb493cafb99cf526bd0a95e3528d8f97c2657570798272f84e93c3fa54baa5f0841c22fcd231380aa39269f7d7c7c59ae41e17d15cc1a25b93e6c83832e3ef3b7b714cf19df1f0ff83e1d36d9ca5deaabba661c1108ea3f1acff08cbfd8de03d4f578c113ce5608cfb3707f415ae168aa70e6ea71e77984b135fd9a7eead0bfe30f115bdb409a46940456307c91aaf5723f89beb5c73477778c5e790aaf6028d3adde763733f3cf19ad2385c6d1f8570d6aaf9b73e972dcbe2e92be91eddfd4a0ba6c1d5b27ea69afa5c07819fa1abe7d4d275ae655669e8cf4a59761e4adc889741d56fb466f266cdd69edc3c2fce07b554f19787a1b3116ada48dda7cfcb20e7cb27fa54c304e0f35d1786b65d5b5c693380629d08507b13d7fc6bd0c3e2dcfdd99f319b644a92f6d434ee8e0741d66e748d5a3bdb772197875eccbdc57a1789e282ee0b7d6ecf88ee401201d9bb5797ead692e9fa8cb6730f9e172a7df15df7802737fe10d434f7209857cc4f5001cd74558fb4834fa1e365f5e585c4c671d9ee53e58803a5493f0aa9f81a8d08ce4d1b89279af0af667e99149ea88d87a81f95332031e69ee4924038a673de8beb71c47a606727f3a2914633b4673454dd0d23e9f18393cd201ea285e80b0ea391e94acc2beb5ad4fc2134274e01a518ce7bfad341e7d73e94fcf700fe5492634ee264f38c1c5569646047cbdeac63a72698e9bcfddfcea97713699e77f145d82db75c6ee467d8d79c823cf03b66bd1fe2cae12d36a93f31cfe55e6d1e4ca70a720d655f747ad97dbd9bb85c70e719a5438193cd2ca0961f29a00627a13ed8e95c93bb91dd1947a122393203d056fe94565888dc06d35ce8421b201abf64ccadc6e5f5e29288aa34d1dbf8423f2f5bb67ce3e7c62bd6da41e71ce6bc73c250ce753b790bb7dfcd7aaa960e724f15d74637478f8b9f2c917e1c1cf073eb5a9a7c30ec0d291ec3d6b123918f4cf4ad4b3dcd0e71d6b4e4671295d9b6b347e4edcaa0ae4bc79716b6ff6570e016931fa56ca2b9ec6b8cf89f6f2c89665549c49d3f0a4f4348abbb18d32e9d77725deed155860a1c62b0357d3edac6433d95c4646ec808795fa5422d252c432e0f5e6ba0d3748d26df406d4755b27b97de1400f8e2b1e6e63a9c3956e1a778deeece38d2f2159d00e181c37e35bb1f8fb47214ba4aa58572770de158d493a1bb60038f38d5cd263f055e63769fe513d99b38a399bea47b385ee933697c71a2dd5e25ac7e7095db0bd315d2ae3233915c8476be09b3bc49a28ede3913e60c7a835d1d86a9637cdb6d67490af500d691bdb509463ba45fda0648c7bd6178d947fc2357d9e3f70dfc8d6f0fa7eb5cf78e58ffc22da81ce310b7f2a76b2153f88f9fd23c46a0b12302b63c370ea8af2de696eeaf02176c1ea076c562a60201ed8cd77df0a664823d46e245dcb1c0c587a802b8629f3b3db9f2aa77b17b40f88ef02245a859ef5eef19c7e38ae857e2268630563b863e838af3ef1a69691795ace9c87ec572016007dc6c5615a3e2e131ea2add59c256665f56a3523cc8f64d4a6d6bc5af6d6f6b0fd8b4d04333be46efafad3bc4715a785f4768f4e6417b38da6e1f971ee3d2acf8475e8ae74f16b20ccf0c6368cfdee2b0eff0049d43c4fa819a68de0891b68dd9e0537aeace2514a567a230f4ed3a5d42f163888919882c73f9935eada759c3a7e9f0dbc5b72abf3107bd57d1b40b0d26d025bc38703e66cf24d5a751b307b54c62af7357516cb60bcbd7f2446840f522b16fdcfd86e58004f94dd7e956a73827838e959daa9234abb39e9137f2ad522dbd343e7c2e360f5c76a6f984739c0f5e94cc9f2d7b7ca2bb1f0243631e95aaea573630dd35ac24aaca32bdab99c5b96876b9a8c2f621f0f78e351d2e21033a5d420602ca7a0fad7456df11b4d77025d286eefb25e95cfa78bad4283ff0008f697cf7f2855fb2f176925c19bc3f62a4f5db10ad53b7531e593d545a3b2d0bc41a7ebd3fd9a0b368582e7717c8a9a509cf1c03deb0ad7c61a5431335bd8456ee7825100356ec35017f6e268970a4e393d2b3a967a9d384524df31ab14cc59519f0bd866ae2c9e4b170c841e08cf5ac569189191ed53c2eac36b6013ea6b07a3b9db28292b3d88b5bd174dd4a5796ce48edef1864c6cf857ff00ebd72ba941f611e45d0589f38c135d55fe9d0dca7de2b22fdd753c8acfbbf2361b2d76d45dc3c6d9c0f996ae15232df73c7c4619d3778ec638d5ff00b2e28e6b09955863280f0df5ad5d3759d275f9b648ab677d8e47f0b1accd7fc331c7a6b5f6919ba83afca7e651ee2b86c949b209047e041ab714d5a5b1186a928be683b33d2354b59ede431cb1f18e187435949144b26780deb51f873c5442ae9dab113db3701dbaa568eb1626da5478d8490c8328dd78ae3a941c758ec7d4e033055ad0a9a48678be610782e181303ed738ddfeea8cd61fc3c9d935d58c9037f03f3ab1f1227d9a468ea38ff587f415ce7856fa5b7d66da4ce06f1fad7a14d5923e6f16f9aa4dbee6ff00881a4baf1bea72b8f9566214fb0a46c8f948e2adea96bb7c417f2b1cf98fbc7e22aacbb5720035e662257a8ee7d764d4d470c9aea55bf919d42e7007415523186f4a9ee3a9624e6a193a023ad6373dca7a46c0ce49237601eb54a500b9fe5533673ce6abbb7cc462a62eecde9ab211a35da430041f5a9b45b4493538638d541671c0ef4c52586d35a9e12543aec19ecd9ad68ddcd18e39f2d094baa471bf152f0dd78c2e914feead82c09e8028e7f5ad39232df0b2d154f0d78a4e7bf06b99f1812de27d48e4e4dd3f5fad755a166f7e1c4f001b9ad6759081db9c7f5af79bb45d8fcc6093a906fb99f1208e05520600a613f3631d7f4ab0ea76f1c543228dd9cd780f73f54a6946290de3278cfbd37af1d297201e949dfa54b7a686aa42af0335774e9fecf7b0ca09c861d2a8e4e6a58caf9cb81dc5543492665562a7068adf162d562f104574bc8ba803e7b123827f9558f856c7cad5c93f22dab13f9549f1614187436ce49b67ff00d08543e135363e0ad6ef8ae3cc8c40873d4b1c715ee455d367e5f5972cedd98b049ba157619dc074a7fcb8e322aad860da27240038a9801bbe95e0548be63f4fc35dd38bf202476e3eb4abc9e4134d7c1e2a780fc9c0383eb5163693b6a8622707e5a2af46010011d38a2b450b9ceea33e907959d36802ab36e1d6acb02a2a27049e981eb5f55167e1b2436362a73d6a712b818da2a204e0103eb4e19c939c679cfad12771c55b71fe6c873c0a6b48e060e08ed480923ad0f92bd723d281d95cf3bf8b734b1c768540e58e73f4af32171379fd80cf615e9bf17558fd94ede327bfb5798a21139e326b1af269ab1ea6069c654f5249ee652d8e334a93ce7a0fa54728dadf8d4f044c62c838c560e6ee77468ab1189ee4b9e9f9559b7ba9c37383ea0d53e55db3ebd6ad5b2e48dbce6945dc99535177677be0495e4bfb6e0e77f435ec4f01321c0fc2bc9be1e44aba8db0cf24e6bda82a0273c8ad69c9a3c9c559cb43305bb97fb9d3bd6d5845b6dd5700d41b79c8e95a762aa6203f5adaeda3923048411305e0571ff10fccd96fb63ce1fae7a715dce300d71fe3e2d9b71d016e71f4a4f6358e8701e4bbc99752b8f6addbd818f830ef19ccc2ab44d079a7ed126c8d7a9ee4f60056d4c15fc268dc14f3c6326b2e5bea6f3a978d8cbb7f062dcd90733150e9903ae29da77806081897b877cfd2bb8b1c0b08c85c1da2a2ccb9ce3f1a4a9c4cfdac91c05efc3f825b9676b99307f4ad2f0c7856df449de68e4776618e4d7513e77f07ad4638ea3ad6d18d89f6f26acc8cef19240c5739f1026d9e14d448519f21bbfb574ae7e56c572df10f03c25a81e3fd430fd29bd1042ed9e071ce0a0f978aeebe1dcaa34ad68aa838b57c1c7b579fa1c2aafe06bbbf007fc8075c638c0b46c7b715cb0d65b1ead5ba86e777e0dd3e0d47c1315a4caaeaeb8e471d3ad79deb7a05de8dacb5a491131e7313e3a8f4af4ff869c785ed47b03d2ba2d6746b0d56c88b8b6f3661828e1b05707b56b3a6a4722ace12d0f28d366bab1ba82e23425908cfb8f4af5bd07518f54d363963501fa3af706b98f10db69d1225b69f66d01441e66f937127d73595a46a92e8da92969d443d1d00a954c9954e67747a54b9ee0555955ba01daa486e12ead96785b746c3208a4949d84679a7ca38b32e65627a567eb0186917a42f3e4be3fef935a57120c9da4f4ea6b3f5a70742bd6dc3881b39fa535135e7763e79f25b62e47607eb5d8f85203ff0876be4a904c18ae46efcec2f944818f5aeb7c2eb3ffc20de203b8ee308c73df22b350b48e89566e29177c3fe0dd3ee74a8a79d5cbb73c1e9574782b4a47dcd11247b9adef0a2b26816c1faedf5abd2063196d8fb738dd8e33e99ac9c6c77c2b37a23971e16d2d400236e3deb5f4ed2d6ded8a41b5101eac703356368c719c9ae4fe296a0f6f6d67a4dbb91348fe6c814f217a01f9ff2a14398556bfb38dd6e75325948850165656380ca7229ab1590bb166352885d703ca039f5a669919b2d2b4cb4639731091f279cb735c45e5f8b4f89d24ce7813804e7a703147b24dea653c5d4e556677e5480ca4e594e0d41750f9b115600afbd5895d16e2519c87f9c7d0d32565da7038ae0ab0717647a54a5cf1461dcc17ba7466e34f9769ea508e0fe1589ac6996fae5bbded9c02db508f99a203871ea2ba8bd73e56d39e7f5aaba4449fda91b82036ec7d6b5a151bd1915f011e4738e8cf2e070482086ce083dabd1b4295af3c16ad249cc12855cfb9ae1bc490c707882fe284fc8b70e07e75d13ccda3f836c6dcf135ecfe691dc22f7fceb7946f1679f4aa72d58317e225b2cfe17b1bb518f2262adf422b88b104bef8db05391f857a4c291eafa0dde992be0ca84c7ecddabcbe012dab5c5bcc85258895707a8344358a66b8da6e15daee7a5cce9a968b6faa4032ea823980f6ef5893ca0739e7bf358fe0ff131d1ee5a2ba3beca6f96443dbdeba3d5b4d22317d607ed16520c8643bb67ff005ab9f1141cbdf8a3d8c8f308c17b0a9f23299c383509e4629dbba91cfe34c2cbfe4d7072b3eb232431cf18aa9203e674e3ad5a7e012292c6c2f7519fc9b2b7799bb951c0fa9aa8c1bd8b75614d7349d8ae87afb569787a411ead0b11919ad011e87e1c9e3875165d535591808eca0cb2a93fde23ad37c6691daeb318862581cc08f2a2f1b5cf38f6ae974274d29c8f25e6d431952585a5ae9b9c0fc45b3369e2ebe4dbb55dfcc5f706af7c30d4218752974eb8e21bc429cfae2b67e21e9e358d0ed75cb505e7b64f2ee147529ebf81af388a6920916585f6b29055857a9192693ee7c3d4a52849c7aa677dac584ba7dec96b28c6d3f2fb8ec6b2df83d33ef5d4e8da85b78cb484864648757b65c0cf1bc7ff005eb9fbdb796d2e1a0b88d9244e0a918af2f1141c5e87dde5399c3154945bb496e8ab8c649fc29ac78c1a73608e7f0a637070718ae63d7ba6009381d8f5a9ad62325c4617a96c62a24e40f515d26856f6fa558cbe21d5be5b5b7e6356e0cafd947d6b6a34a539248e5c6e32186a32949ea73bf14899b5fd3f4a840692ded950a8fef3f38fe54ff19e349d234df0b42f99401737607663c2afe5cd5dd22236515df8f7c44a1a699cbd9db1ff0096b21e9c1fe11c73ed5ca599bad53569afefa432cd2397918f73fe15ebd59aa74da3f3bc2529e2f12adb5ee6c5a2010a0c74502978079f5a9090ab8e94c1b5b393cd7817bb3f50a6942290d6653d2a7847ca0d438038c03f854f19181da84993295b62cc23bf5a29623c671d3ad15aa5a1c92a8ae7d20558f5e698e8c4f6a91b77618c7b522a4aeace1010a32735f536b1f89464e43046e382460f6a70898b73d7eb4d12b0206d39381c5482525b18391d68e540a6c408c0e3b53bcb6c638a9911e442db48f7c50ca40c679ed536457333cebe2bc123a5a6dc01b8ff002af365b5904dce08fe66bd57e28a31168bd4ab13fa579e6c6f3393d0d67562b43bb0d55c616322f6da48c06382338a7e9e49c8c0c66a6d65b08a33c66a1d31808db0466b96a45291ebe1ea7bb763668434c4a0e49ab9a759c85c17200cf4aea7e1f7816f7c58d72f6d7b6f079209c38249fcbb5674f653d95fb5a5d91148833cf71d8d52a4d2b9cd5315172e5b9bde0ddcbaadb28e407f5af6c8dd4e77b63038c5789784501d5ad08997264038ebd6bdb8a0fef03ef5a42363cec43bb16390648e6b4ad9c2a800e062b31026ec13f9568c656383737415a5ac73bbb2cf98a4e0572fe3578fcf82338c9e7afb52dcf89d630fe4d94cec091ca9c5739797175a8dd9bab885cb76182001e94ae8d2299405cfd9eec49e4c53104fcae3839ae8a712def87247d912bf9cb232443e5403b573aeac670c217ebd3cb38ad28f58bfb481a48a32d18eabe59c1a516ac5cd763adb36cd94581fc23ad049c9e38ae7f43f1335eceb6a74e9632ffc5b4802ba42aa47cc71c738a7633d4a721f98d44c38e0e2a593ef673c546c38a7d044257087b9c76ae43e28cc907836fddc801a3da327a93c62adf8b7c4979a44e2ded7489af3284ee4048cd795f8cb53f1578919219f48ba8ad94ee589213827b127bd4cdd91be1a9b94afd0e3173d315ddfc3961369daad8291e75c5bb2a03eb8e2b951a06bec06dd16f893e911abda6693e29b0bb5b8b5d2350575ff00a675cd0f775b1e8d57192b5cf69f87714b0787ade395595d7860c3a115d6a3ed238cf35e65e1bf13f8a8dc436d7de1d9c2b101a429b703d6bd3a0196071d7b575269ea79934efa99be20b1d124537fa8c7a99318f9c5a3852c3f1ae1afee7e1bcd179d09f1419b1c069576e7debd525855e3c380430c115c1f897c156bf6896e6c98a97393102073ea29f325d095077dcc9f06f8a62b2736cde6fd981fe33c815e946dee9f4e4d4561436b2636b0901383df03b57964de1cd4a00cd16933118c0c95e68b0b9f1a69a822b4d3e6f207dd85a40547be335b52f66d3e7dc552352ebd9bf53d0aeeea5fb349688aab1c8c19b0a3271db3e95535ab0bed57c3d750e93616ab2adaba1dd208c48c41e493dcf1ed5cd4daf78b069a8c9a0ab5d3360a92385f5fae6b97d71bc7bab9c496b3dba60aed86508083d8e0d2a34e93a89d5d91a54a95bd94a345abb38272e30af1b230255949070470467ea2baff000d9c78075ded955033eb9ace1e0bf1228551a6aa8edba6515bde1cd3fc5ba35acf6a9a3d8cf14f8dcb34ca7245635141cdf26c74a97b8b9b73a6f0c80343b6c0fe0ad02b3cd17909e63a2b165519c03eb580350f1e05db1e83611a8e00575c0fa76acad521f8977f1b4798a08c9fbb1caabfcab0704ce98e25c3636fc41aee9de1cb6696e658a6bbc7eee046c9cfbd79869f35cf88fc5d14b72774b3cc09c7403d3e9535d7817c5aecf34d6d1b37524ce093563e1d40f63a95f6a1731b27f674123b6e1801c0381f9d35d90a52beaddd9b0fa8cda87c499238a4636f0ca21400f18418fe79ae5bc71295f176a2cac73e7120fa56c7c3342fa99be972707713ee79cd5ff1678265bfd42e351b3d52dd4ccdb8c737ca01fad4bb6b62e507149f4357c01af5b6b166b6177208ef635c216fe315d45cda98895922231df1c1af25b5f08f8a2cee63963b312ed390f04a1abbdb1d4bc5f6a9e50b29ae38fbaf1671f8d61528f39d14317ec76d517f53850c5b2385b7803a0eb59f75245e1cb36d535201260bfb8849f999bb6476ab97b7be37ba84adb5bdad81618df26011ef588743d3adae3edfe21d4db59bc5e447d2353fd688518c35933a278eab5a3ece9c4e6fc39a31d41e6d7f59668b4f5732339eb33139dab55752d525d5358339882c2309145d910741577c6be217d4e68ed63751047f76341f28f415474e802279ce3e734a751b467430927515fa1ab15c3db15788152a7349e20d160d7ad9f51d31a34d415479b09e37fbd5196e41f94127e955da69e0712412b452af2ac3ad6749b8bf23d5c7538d78ae5dd1c25e89a3b87867468e54c86461823f0ad5f0cf89f54d064c5b4c5a0272d031ca9fa7a57477baae87ac2adbf89ecca4ea30b7900c30fad675c78185d0f3342d7ec6f232321273e5bff8577a8df547cd3938cad35666e45e2ff0a5fa17d4f4c96d256fbcf03719f5c528d47c04c33fda5a82ff00b3b466b953f0f7c581886b4b523fbc2e9307f5a923f87f7e8776a9ade93a7a632dfbdf3187e02a7d8d37bc4e88e615a9c6d1aace8ae3c47e09b550f6ba75ddfb01ff002de4c2e7dc5456fa978c7c56a6db4481348d2d0e249957ca8d57fdeee6a8dac3e03d042cb23dc7882e9795f37e4881ff00747f5aafae78e352d4d44102a5bdba8c24312ed551f4a128d357489756b625fef24ede6cd98e6d13c23191a638bed4d8625bf979c1efb476ae746a92dfde3c9233392725db924fbd64476d7779702498b6cf735b10a436ff002263df15c55e6e7b9f4796538e1da7056f3ee6d681ab9b095966512dbc8312467bfb8ac7f17f84708fabf8797ed564df33431f2d1fae07f4a49307eebd2d86a5a8e993fda6c25dac3ef211957fa8a787a9cbeecb62735c2aaffbca7f17e671b6b753da5ca4f6b3345246dc321c106bbdd2fc69a76a96cb67e28b5cb0185b9887cc3eb4dbfbcf086bcfe66b3a7cda65f9fbd716b801bdc8acf97c19a54ee4e99e30b2618c81711953fa577a8292ee8f9a559d395dde3247463c3563a87ef344d7ec2e15ba24efb187b547ff000856a48c7cebcd2e24eecd7238ac08bc04eae0b78af458ce7ef2b3135a90784bc376e036afe2fb8bec758ad97683ed939358bc1d2ec7a74b3fc6a4a3095fe45ad9e15d0e4459ef8ebba8e7e4b4b35254b76c9abb77633dc4916b3e35d90450aeeb1d1e3fe0f42c29916bfe1df0f5b94f0e69d696ad8c19dbe799bfe046b93d5751d435cba73179b217396918e49fc6a79a34d354d17ecebe2e4aa62a5f2feb62bf8bb5abaf10ea68848f2d3e58e351f2a0f4029fa7db0b7802ed24f7abba7690b6a03300653d4d5c6b5c1c91c570d69b9e9d0fa2c0d0a743df7a7e8674dc2e79a877000718fad5eb9878c0071f4aacd01da7d3deb154cf4a58a5d08b7f230475a9d480149aaea8dbb6a8cfa9a477c49807a528d3309e35245f8e438cfe74540b2e579e68ad9533cfa98bd773ead8c5baccad711f9910237286c66a16da257d802a162703a01e951dc32807a8aac8fc8c938eb9cd7d0282bdcfcbfdb49c14342c4eaaccbe58098f41d688e3689f7139cfb541e6e5bae3e94e32938e4fe7556312fc4c446416ea698ce636dca0671550cc0700934d32f66248ed4ecc68e3be275ca44b6c0b8f3a42d818ec3a9af3a697e62c0e4935bff16e7ddaedb64b00206eff00ed571b0dca97c67ebcd6536ee76e1e1eedcded06ca0d575cb5b6b98f7445c6e5f51deba0f1de896361649796f6f141fbd54dabdc118ae6fc3baa5be9bac417530011581e7a56bfc46f11586a5636f69632f9cde60762a38502b3767b9d6b9b995b62af823c53a8787751379a7153cfcd1bfdd71db35b93cafe2dd5ad85c2a42eedba675fbcdfe15c5e9198d1a429d78e95d2f83ef61b7d6e19a5cc6a1b938a29c9dacc55e1152e65b9d63f8760d16feca7b795991a608449c9af461231c1046081dab8af125fc33b582c522973386014e78e79aecd1330c6ca0f2a2b5e548e1ab26d16559b77254715a16ed98006e959918f9b2ea40abab301101c0c526ac4c42f2e6d6da132ca15507526b06ffc4ba6c48cd0e2461d0015a978b05cc6629b6b29ea2a9268da48e7c84cd2e54526ba9ccffc24f782427e5ebd31c0aaba978a6fcc0db4aa67fbabd6bb03a3e9401ff478f9a827d1b4a74205bc59e9d29f2db62d4e3b9cce81e31b600a5e92241d5abacd2f5ab5d451feccfbc2f7acc8740d3164667b58883c0f9455fb682d2c9192da348c1ea14628b684ca71b96dcf71d299270b8181500936b0c1cd4f9dc38a1216e57942142efc8033d2b86d5fc7ba5d9bcd1476f249321db80b5de1525597191cd66368ba63b967b48c9279ca8a1d8aa724b73c5b55f1aebf7974f2c33cb0c44fc91a0e3154d3c49e243ff2fb76df4cd7b98d174d4ff9738460f1f2d3c695600e7ec910ff0080d4f2dce9f6f1fe53ca3c33e35d62d2e945d2cd74a4ff00103915e9fe18f12aead74d0adbc911519391c55b4d2ec438c5b463fe022b420b4862e628d63278254628b58c6738cb645c77276fcc739f5aababda096cd9c7330194c1c73ef5383b706a39652073cb1e94ac2e6678ef8c65f11dadc31bcbab9dabf7562271fa572f3eb7e239250ead7a028c2fcad8af7bba892763e6a2b1f71555ec6d403fb8427e9d2aac6d19c56e8f2dd0fc6dae42160bbb19a7f7d872055ad4fc79a9c4cc96fa44db80ea54915e826da004ec8507e150496d07fcf25fca8e8529c1bd8f0fd4355f135fde35c3fdb1598e40556000fa54904baf363cc5bdce73d0d7b33dbc4063ca5c7d29a638860845c7d2a1a3a2328be87176de29d62daca387fb365660b824834c1e2af10cb192ba73c67d76f4aee3cb8f1ca0e9d2a194215c2a8c1f6acddec6e9c7b1e5f77abf8ae5bc12a09c0539002f06aaf88fc41e23bbd39ad6f93c98a5389311eddff8d7a8b463938154750b0b6bb8fcbb88838ce79150e4d1b468c26ef639ff00005af93a409187321cfe1573c556725fd8c90c2db588c8e6b4a1892de358a350a8a3000a47cf719ac5bd6e77c12f87a1e7661f1069dfeae5b803fd86356ed3c4fe27b1e44f3b21182ad5d9bc20be0e0fe14af6d13dbfcca981fecd255189e0a9b3966f135f5ea60bca92b71c838acdbd8f5cba043e163fef0e86ba79a3863cec8d7afa551bb7915728dc7a543927d0eb861dc63a3d0e7adb4f8ed8ee725dfae48ef4f69c8539ab1737009c3a6eaccb9950a9daa43678e69f2b6f522738d3d2224b73b0ee1d450f726ed46d421c75f7aa8adc9c8ce4d48f7615f646817e95d1656b58e375b5bdc49ed62917128f9cfe9585796d2432968643c74ed5a37d2b9f9b9c9aa524db9769cf14a29ad8caacd4f72b9bcd4950a8b8948f4de6aabcb3cadfbc2c7ea6ae090229c74a5851a76c22739eb5ac5491cbcb0e8574d327906f2e306b42cac923019b048ab16cff0067cc44873f5a9a058d1f7b13f4ace49b3aa938c761379da5426d5f5aab2b8f33e539c54b7b74adc2f005456f245cd65ecbb9d9f5ab6cc760b61d4d5f4547841cae6b38c91b6e0a706a4b69ca80adf2e78a3d9a2a9e21ca5b935cd8477030ea0e7b8acf97c372b3136f30e7b37f8d6da7cc4106b42d222d8c9ade14e5ba31af3a69ea71abe19d519fefa83ebbaaedbf852fc8f9ee5147ae4d77f6fa73b2eec6054f15803192c48e715a3848e1552943638db4f0bd9a00d712b4cc3ae7a56e5869d020091a041daa5d4cdad901bb2f21e883a9a75bdcb2c00ce8a84f231d8544a8368da38c8c3e11b756b1c4c43632075aa323c7f306008fa54d35ec53391bf713c0159f79796b0aed18693d33c0a9faadcd6398beacaed71079acb27cbec7bd559dd5c10a405150dd9175207046ea047f2ed0724d672c3d9d8b78f9586215519ed5997130329c1fc6acdeb9886ce41c56637cc739a70a3a98cb17777b97a190e39e7de8a8eda32577b1c0f7a2a9d132fac5cfaa6eeed4bf0b81d296ced24bd8cca6f2dade35e0f98c724fb0aa572a41dc31d727d2a176247181e9835ea2d4f919685dba892065db731beefee9ad7d27c3dac6a0825d3a3b7ba61c94f38038fc6b97707764f7fd6ac595fdcd94a1ede678e41cee47c63fc6871ec172edd0bbb29654bfb592dde362ae0af0a47bf4c50b2c6c81d1811db35a3a0f8bef2ce67176a97904bf2c8920ce41ea467bff003aced6e3d22daee36d22e9a58248f73c6571e5b67a0ff0a2c2e6b1c17c45d19efefadee212a3820eee9ebc579fe996cb2eaf04215483260fa1af65d7228e5488e43001b23d3835e376d74b6bad24a1301653dfb66b3a915a33bb0d36d345bf1e40969a9bc600055540c0c76ae621ba747257e522ba3f13cdfda37335cedc6e1f28cf205726c76b9c81915c95f7d0f5f09f0d99a0757ba1c2c8579ed5326b1787044cf91d2b09e5033c75a75bcc49033834a321d482e63baf0cea9772eab087b8720b01c9afa16ce76fb343976c7963f957ccde169146a509c0e18735f44db49fe871367f807f2ae886a7998b4a2d58d096ec990804e07bd44d74edcef3c55049304e4fd69de6f38eb5a58e24cbab23336771e69e2563c64f1549242481d01ef5754a151b4d26857b0190e7a9a6ef24e79a61386241c9349c904e6958a4c7bbbf634d2c4b7049a61e07bf7a9171d7a550ad763b38c7ad4f031391da9b15b4b22968d4b0ef8e71445946c54d8d0b07eef1d6a1231d88a977633d0d44ec7d852b15d056e7b6694a1eca4d355b0334e0581ddd07bd01a89183e60e0f5ab4b9ce2a18c3673838cd5950495551f3526ae172373ce47415525762704f5ed5a135ab46bfbc91413daa83a90dc11c77a2da1498af180371e47a0aaf3be461540fc2acbe7000350498519268455f529ba10a48ef559ba63a9ef57e421b183daa028b9c9a1b35452209e00a430355b906178eb55e46231c9a866b1762378c292771c55499bf841e05589189ce05566539e454b46f1915896d808c1fc6a07661c77ab0e0edf947e5503839e41e959b475426c89ce7b77e6a191cf419ab05496e3b75aad28556393ebd0d652475d295d88cff0028c6723bd37cc1b769a4c8e7bd33cbcb02d915933b612453d47e4390320fb564dc326724915bdaa1511ae00e076ae7351258902b3d4e94f429debac836a2a861fad64dd46b092f2fdec67156676318ea7359b3dd166c4f82b9e0d6f05d0f3f16d2d4ab3dced24800531a6daa253de9b7e85e163115358ef348b16c39e1ab78c6c79351b66d5cdec6e8a0a8cd64cc4b4c79c035392af6a19b87aaf1cc143061b8d5c75276572dda40a843ca7e41d8d4e670ce23b74da0fa550b7df3b1de4e2af41188d4b2b8dc39ad634f4b98caaeb626ddf678cb3a82e4678acd7b99379c9619a6cf3c9bf2c322a1deaed907359f2599b3a8dc6c873ca4f07268590a0cfaf514840eb4c619e453b2239e48b31ba97cf7ad18ca4916ec8e3d6b0c928dc7e956ed1cf003719e94946cf637555f2e8743a7ef3b401915d268d6efe602ca42d6368a13680460fad76da2246e000437a0f4aec841238ab62276b32ea796106e200c562eab7b2bcef65a6a66407e676e1541ad2d5ee63b007e52cdb791d8572d36b48af23b7c993dc75abe556bb38e139caf62c8d276219249ccd70472cdd0541716d23c44330da382c7a54767ad5b9e659811d973d6a96a7ab79ee557e54c702a9462f629baa9d9a31f55730965b76c76c8eb5892c8e5b2cc727deb66f1e391091cb1ac7b881b767a0a9714d1b46a489eda5609fce921b87fb4e413814e09e55b85eb9155a3fbe08e3d6b9b9753a936d6acb572e2e5f0786aa622103ef94e71d054f1b88d99ca82dd89aacb3ef7db280413446ccce526b61e6777f651d0514ff20f2c9c8ed8a2ab96e4a99f4fb8dd9ce7afe14c641b46320fb5487819c77f5a4de3a557a1e35d48824889e7ad46f111c8c16c735333e001dc52b3ae470381eb56993b14bcb6c9c9c7b0a57523ae39ebcd5805704e319e94995271b462ad3b212d59cc78bafee2c62816390a2c84a75f6fff005d798ea09e5df300db803c1aee7e2cca23b5b323a79b8c8e3b1ae16e240c03638f5ac6aeb63bf0f7e5b94f55b890228de40fad6496254f7cf7abda9f21727359aac4b11cd734d26cf5285e31b8c7c83c5490100f439a89cfcc7be29d1b64f4aca0acd9b549753a6f0d311a841cff0010afa26df2d61011c7eed7f957ce3e1870752857afcc2be8fb639d36023a08d79fc2ba69aea7978c6b41a01c641a72a9c8ea4d28e4f1c7afbd4a8b85e4735ab3cfbeba0b1139edd6a6048a8c123185a5ddf3738a120b8f079e39e681f29c64e69a1bda95793cd0d5c771ebc96f7a760839001a48f1b393d29c39180735255c9a29644528ae42b7040ef48bc6334d3d38fc694e7b8a1a609eb727ff009679150f1f43520c6d1ce38a8db1935268b6150f726a68c81d6abe476e714fc827bd3417b965586fc77a94b94f98751dea9a9c4809a9d8e54f3c50d5b61212592576259b27eb503b1ea493433b62a2727ffaf9a2c3d4977e40ed55a6f9b24d3836d38ea4546e7ae78345acca446738e2a277c2f352646e38e6a193a678a2c8b8b1ad2f3504a7272c69cdd320546e5bb7eb52d58d93ec46ee40f97ad4630e096a9102b673514870481d7a9a8b5cda2d8d936f23b557775ce00e29c5b00e79aacee6a1c4eaa6c64ce324a9aa5264939f4ab4db49aad28f9cf1f2d65248eba4f5b91a920e00e49ad0fecf99ad565756456eec2b3c060c36af1eb5767bcb878912494b2af419e959b8a3a949b7a19ba8c023849f3039ed8ae6efc91b8632735d3dded3130c573d769976c64564d1d69fba7377a5cbede79accbdb705705f9ae8752508a0a282c7a9ac792d8c8c48600fbd74415cf3b112d4cd8616890b2bee03ae6a95e6db81b9542b0eb8abd30601915bbe0d5031b445b35d0ec796dbb91c80f92173d2a1551b8f7a7162cfd302a4f264605a3c1a49587cafa8c8a568830c820d491cecc783d7ad4214efc3f14f5880394e47d6aaeda25c527a0f9541e49e2a0f2bcbe53a66a6c14e09cd5858936176e952ae534ad74cad1c64a73f9d26d5071d2acc8ca1095150c63702c7079aa51d4c652d089a27e48c52423610c41cfa55892401703ad57e58e01eb571d5ea1cd6d8ddd3750018260924f41d6baeb2d55a18f1012a36f7ef5c069bba29b8e79cd7476cccc410063eb5d70461526a4acce8a6d5c4e863b88f783d08e315ca788361b850adf21eb57ee6648e263bb040ae5356d419c90391ef4ab45ce2d235c04e346aa9b5716e088ee94c4fb8639e6ad2ccbb8067ae7a499b00a120e29c970e392c4d6347f770b33ab1935889f34558dcba9e145c82338ace9af37118c62a9bcad21da3249a747185f99f923b568e5739953491a68e6e231ce1475350e2333800918aaa2776380d800f41daa6464760490afeb5362acd6e5999d101e41aa0a55a4c7033cd2dc6f46c1c9e7ad4516379cf4a8b598d59a342290a746183454311e7028a1332713ea19ae004207ffaea93ce40ce7391da878a46c72493d693c8253006083d0d74289e2dd0d12924e5b8f7a5f389ff000a3c925b18ebed49e51623b50243925e4e7b52f9a4e30bc9e6848bae4d4f1429c00319fd280479e7c5e52da75a313d26f4f6ae086ede06491e95e93f1761ce9b67d49f3c7e401af3a53894e41ac6b5dd8f4309ac199fab11851deb34b0f33f0eb5a3ad1c94c75ac7dfc9e39ae69ad4f529fc1663ddbf79d700d3871d3924d576fbd9f7a7a903819e6a5277b17a389bfe1e7ff4f8b9fe215f4d69c376976e060830af4fa57cbfe1e6ff004f8dbfda15f4ee8adff12ab4cffcf25fe55bc11e66334b1260e73cd3cbb63a703b5230c499dc79a10658e49ad794f3aed829e3dea545ddd79351b00178c7be2a45200c63eb4fa0d2b8b83c81dbb53803f8d0a4eef4ed4bc648ce7152343c0ecb520040e79a974c581a5fdf1c2fbd59b88edfccc44e5c1ef8a45a77208103bfcc400064d4472f23124e3a8ab5398e288451e7793973fd2ab4600233f4a485d4760e083cd4673fad4b9f415091f8d0d1698e518fad3875cf1c5307dde4629e49e0535142b8f4237818a9738150a8e7dea6c64d26acc69b2bb83c8c9f6a6feb9a964040e475a888da4531a6ee342f3cf5a648a37138352f01723ad4721c8e82922efd0ae475f5a8e419e3d7b54ce3e5c038a69518cf7a4ee38be85668dc03e950ba9c8cd5e2a48c90714d1086c0ce054bd4da2cce90f6036fd2ab153cf3fe35ad22c519ea09c7a5559ca9cb6d19f4152ddcd62ccf65ca9e83d2a078ce6adb927a6335137404e2a19d5068aa6219e4d44e8bbfa73562456dfc54655727d47350e373a61249d8accbed8f7a464ca83e82a67c64e2a32ff2702b2713b29c8a9719f298103358d725371dd807d2b5ee896523d7bd605ef0e77f22b2d6e755f433b502aaf9c822b2e46f31b685e6b49a3594ed273e9482dfcbe5be503b8ef5d54a373cdc54daba4628b350c7e524f7359b786212ec3c815bbaadc0688a27cbf4ae66f2295632c14926ba64ba23cbbae6d58a6389df118152ab456e3a8cfe95971b5c2b7dd231534844e30d956159d8dbe166bc034db98584887ce23e520e3f3acdb888c331555caf6aad6e9246c70c462acbb3b6082703b52e961b488c9ce720022a6e0dab1cf351950579e09a8a39305a33f953e864d223f318290f4b6caf31f9381dcd11c5c9791805f4ee6a7fdd343b13e53f5a7d750b5c63b4480aeedcc0e09aa8e48e4138a7797863d69b236169dc2c496d7a236f9b19adcd3f53842e19c03f5ae4caa9627d694311c823dab785425d14ce9efaf51f761c1e78c5668812727951df359a37820b12b4f57939da4e0d53a972630e5d89ae922846c8f0e7b9a83cbdf855183dea648b72fcdd29c10a807071dab297637824c6bdbf90bb9413c75f4aac0c8ce40c9ad08a5656d9264a11d2964b6420b47c834ef740959ea511f230e3af5ad6d3ac629e2259b6b6339354d2d7f89b071cd3a7ba741b1781d38a9e6b3b30941f4193c8119a33f3f6a8a3c8edc5461be6c9a962c0383d2852138d9134795ed454f0448ebc11b8d145d993dcfa1742d4a5bcb6c9689a4dc4000f18f5ad493720cf438af2bd1f5f4b7bb52d0e15fa8438e2bbbb2d7ec6ed628887b77ecacd9c8aba75798f12a43951a458f6e3de9304b1ce452dcb2431ac8e786e14fad469710c93148e75665ea14e6ba2e99ce9c912a92091da9e09c1e48f7a8669e2894b4b2aa719f98e0d4516a16d212b1132907b0e07e3472e9a8d49b764735f15942e8f6e49e7ce1c75ed5e5ff28979e84e2bdaf5ed322d7618e2b82c91a36e213bd2e91e15d06c0878ec62690ff14bc9fc33585449d8f42856e4859ad4f08d6571b461b07dab2562c93856e3b01d2be9cbbb2b038dd6d6c001ce540acf9acf495561e4da8f5002e6b2942eceb8e32cb63e6cb85612ed08dbbd00a72c7282331bff00df26be81ba8b4d810b15b5523d0026b3f4e592f25323599f288f94941d29723468b13d6c79368995bc8c32b0248c7079afa6b41e744b224609854e2b8c8c69d138f345bc243756415d8e9f72925b46525575c71c8e055c55b7397133f689685f640d9033914d442a3268598ae391cf7a93cc52a5b22b45239790b36b6c6e14085b2fe87bd473db491cdb2656561d45311e45daca483d783d2a792e24918090963d8d2bb1f4b13e9da69beb84823bbb7b62ec06f9f3b47e545fd81b1bc9ed9af6dae8c47024801dadf9d4714d10624a6463d69cd3c39c2458c54eadee356b5ac360899feeae7dcd4bb8444ed2091df350199ff878f60295016c6734585a0e04bb64e47bd48a3be29abec338a78271c5034212304118a8bb907922a5c70723ad30e4718e94f42845c9ce7b53875cd029714c439393520391c9a8d00cfe95267824f3e952cab88dc838fc698e993c53f27a80683dce681dc8ca8c62a171b454c4f150c83af145ba8d3e840d4d24e7a54a463f1151b8c102845458c7770b80738ed50bb93d01e3ad4879e4735148719c54b5a9a2642467927e9513213c9eb53330c6303ad42efc938e2a59b41a2175555e47350b719e952484e339a81f763159bee6f16452b12dc7e955df9efcd4cd9c9cd40c0e78c0a991d3077646edc6e1d6a3249e83ad3ca1248e99a9522c2e315933ae0eda99b7a802920f6ac0d41b2c46324d7497f190849ae7eea3249da3f5acec77424ad7318b14909c74a6cd7383b58656adc89fde00566dca9662179c56d06d1c7888a9105c88799233b813d0f6acebc9630a73dbb55c963e30010d551ec0c8483c1f4f5aea55743cb961db7b197912c98502997109df803a77c5697f67c91be042f9f6534f8ecaea724c36f2483fd952467d2b27512d4b5425d119d6d0e3ef038a99e24038356e4d3eee24def0c8146392281a4ea12c8a82da50586e5e3a8a8f6ab734f6537a58cc95390a0839a96de1823dd9556908fcaaf43a25f4e81e2849f9b6f27bfa55987c317e18bc815429f986e1c54fb68f72a383a8fa1ce4b1b9662bf85401641c63f4aec26f0e5dacb1c45515e5384e739aab69a25c4fa8b5926d12ae41cfb50b111657d4e6734c182e0feb4c95310ef3923d2ba7874392fa16923962e1f605ee4fb567ea7a53584811e4dc39dca4720d2f6eaf6358e0a5639b60cce3682327156228923c066c9ab5222af118e3d6a211fce38e2a95648160e6596b38e45de1b7103a5361b560dcaf4ab56bfbb21b19c76ab9bd27521884fc2afdbd958cd6024dbd0a8d6de581cf069b750131803200f6ab52b22fcab9207eb492dc6530140f4a6f109ab82cbeadf6319c30902e08c77a9e23220e3047a0a9de3de7781cf7a509f281819ac9d7b1d7f50934b418c8245c8f94fa7ad559a0624820d686d20642f1dcd2fdf5c119f4a4f11a94b2f933361b5ca33370474f7a16120ee278abf244ea9819c1a6c56ec3a9eb53f585d07f5092d2c36de3c1183d7f5a2afdbc31a807692474a29ac45f732797b5d09a19b7c8b231e06302ba6b8bf179f64137ca170018c60815a1a7fc3c5895deeaf5d9724ac718c7d39acdd06e426b1f6182c776d90a93b72c2ba234dc0f979253774ce94e95a94f08992691a2c02885cf4ab1a69fecddfb2c7f7f277df938ae8e3b3bdb85da02db2763d5bf01daaf58e95696cd90a5dcf25db926baa3a6e72bb33901a4ea57999be6690f38e807e35b7a3687a8280d772244a3a2c7c9ae90855fba3b535989c924003deaa53e61a9243608638902aa741d4d62789eceeee668fec8ac7675c1c56e8652bd734a5901e5b9e951768499e61acf877c4d73704a4a02f6cc86b264f0778a9b3899464ffcf435ebd33a17c6f14d474e9bc633d2896a691aad687925a783bc4914cb24ad1c8aa7eeee3922bb3d3e49ed9563b8b768f0392391c574de6c59c8917eb9a6b3c18c3303ed8cd3b21caac9e8ccb58f4ebc0164489c9e70cb57a1b0b650be5a940063e534ff0022c9dbee8fca94c51c67f73237d0d2173df411ad66520acc587a1a7245220e4641e4f34e8e4901e483eb53aca0f1b793ef4f5ea4dc921b80002e08c74ab29323e3691ef545dbdb3ec6a26964f98a81bbb50d02b1b084671d734e070d8feb5cedaeaac8713291fee9ef5b36322ceab283db22938d857d4b6b9ea734f46e07a7a52a83b0e3bd014e7a8a562931e383d7b539323b5340e49a71e940ae213c1cd378229c4607a9a681c648eb42b0d0b428268c71cd38f414312dc131bf1b973f5a7192253cc8a3f1ae4351f323bb936b31fdff001f37418aaf339fb2dc4a1b322ca070dc739e2b92789e576b1ebd3cb39a29dced9a78963deceb8f526a33730ec328963080649cf4ae57478a2bc850df4a760cfcb9e01e31493476725dbc11ddb496e98dcb9e339e94feb0dea90e597c63271e6d8e996eeda5cec9d1b1df351c77505c0631c8180e09ae7355b9b0b53e5d9907232428e05548efa486de4512223283cb1e003ffeba4f1367b0472ee6574ce89b54b357f28cad9edf2d243a8db5cbb242589033923d2b9e86ee12201232163904f4e339cd45a5de8b5ba9dc45bf7e4617aa8a51af26ec6d2c042317dcd89f5bb5889055cf24723d2a27d66df6b131be02e78ae7bc41791c690bbc722a973c6dc75a2e2fade2914c9f292a36e4706a5d6a899ac707479135bfa9af36b50a30062719e467ad42dad234de525b9ce703279358ba8dc033c4ed91b940438fbc6a2b9be6b69e149e160588c31f4fad62ead56f43a2384a092bfe66e7f6abb96558572339e6a7bd9fecf6de6b80a71ebdeb931a83457177188b2e10b2806ae69f2df6b1a6acd36cd9b8f3d315a4653b3b99ce8535256d11a1717b280ac194648dc7154ae2fa612611b07b6075ace9b5189afd6cd4640ca86cf048aa73dfdcdb9613a09220f80e3b544b9e4744234a3b1d0c6f3197e793e5e2afadd0fb39ebb88ebf4ae5ade7375aa471b3ec578fccc838ab1a535c892ed4bb34519f909a493b6a5cdc6eaccbf3cb34b88f2199b9ebd2a92a5bc88eb230040c839c1cd52b4d41252f2b36c951880b5423bd1737328b8f9181f9474cd66e323ae324d6e6e43676d711c611544c0670c7ef0a43059c3a7c976f1431b79fb40dbdab01eeef1aed1b7956e8871d00e955ee2e2fa4b778e691ca87ce0773eb55caee6729ea7673416fb830b75ff8f52ff77be2b2b47304b6aa2e5144cd3aac64819c739ac7b8bfd414c4a25720a6d3f4f4aab0c974f01fbc24cf0c7b50f46118f368cea65de9a94f2c2b986366c6e38aa37d7d047a779fa7ca02cf28f3231d8f7c0ed5ceff00a779ce0b4ac318ea71482ca668c32828c1b240e950a363569cad646978bee08bd8a04dac8604e01ef8e6b474cd52d61d36dae677c4d0bec5047507fc2b19eda46b94671c05c1a5bcb2f322d8bd47238a973b2b14b0b2776689bdb24f1046b6d2016eb2798cddb27d2ab0bd88d96adbe606477c458f4dd9acd4d3dd6556ddd0738f5a6ad9b0df9604b9acdc91b4709292d51b675bb559b4b667f96353e671ce73dab0f4ad4a387c47717a4168f73107d334db8b10c1304fca7f3a852c8465fae5bd7b5275125a1bd3c0c9e84b657b696f9daf215126ee3d6b3bc43a9b6a73c0850af96982c472dcd48ba79563d7ad3934e2642db5c91ec6973d9dd9b7d4f6b9986df271edcd392d7dba56bfd8a463858c923b0152ae9975b78b6933f4a5cf35b1d2a8d08eed190b6d8f43ed4be4e3f135b2ba55e1e7c861f52054a343bdda0f9718efcc82a94a7264ff00b3477923144401c372286b75ce40adc5d02f1c1c08f8ebf31ff0a9a2f0ddfb8076f07b8463fd2851a8fa12f15838ab39a39c481464f4a3c9cf18aec22f06ea328e1263eb8b77cfeb57adfe1fea527221be20f422dbfc68746abd918bcc700bed9c0988e081d29c21c28e2bd2a1f867aab904da5f9ff802ad5e87e14ea0c3fe3d2ec9edba65507f2155f57accc5e73808ab391e4de564d38458ce064fae3a57b1c1f08751720b5901dfe6b8e7f415717e0d5f31c982d107fb4ecdfe154b0957a98cb3fc0476b9e276f1e18faf6cd15ef56ff06661866fb103db31337f5a2ad6126734b887077d99cfdd492490b0694807d38ab3e19b682d639a58a24539183819393cd66df4fe4db3ca46e0a32062b4f4a76fec7495942b4a795f4af6a563e0fde4b42f49793744caf3d4534dfcfb71bb9e9d6a83382f8e8691e4507036934ae8848bc97b2124973d3afad33ed729ead903dea8ace3072cb9fe54a26e719e2aa2d31b8f91a02e1f0097db9e07bd3c4ce0925b35404a3ae47b52ab9f314e4d17159d8b534a4fddff00f5d377923a9fa0aacf236ee84d386e3d7774eb557404ea411839e0d2ab1c8c83ed5504a0639033efde9e92a6412ea3f1a5b0ddcd38186467ae2a66603b8cf4aca5beb589be69d37719f9853e5d4ed0607da23dc7903344b51a4ed7349186303bd48a7a64d642ead64a7e5b8c9c7a548bac5985dc1cb0c750a68bdd12fbb359893d8e3eb446bb8329c7d2b362d66d189c094ffc00f3566cee3cf9ff0076ae00e4ee5c51a8aeac5368c24aca17a1e335bba23ffa3819e41ac9b8b7b86d41b644c63233b856be930c91821d719e9cd54b55631836a5a9aa80b2026a41c0a64470801a90302704d64cded6178c5046314e6000a4e7be4d3b0d8c39f4a00cf6e6a509b89feb4e0b85e9cf4e94581118527a8e3343af600e054c14e07a52eccf25463de92f32b64717e2fb04b3d26e6ea3965326e2c39e326b12dedeee28656666922fb3f9a180e03e3a7d6bd2a7b68a75f2e64471d7148b656e88576c6a3d38a9f674fb1d51c65651b5cf3b5fb4b787e04892696e997749b57181c66ba0b7fb25d69823b3b564936742b8c1aea63b2895415f2541e29e6d214ff968800f414f960b644bc45596ece1f438cc7a6bd95dd8c86e13219f6fdec9e2a8cda1dc98d2c4c24ef2f249203c03d857a31820c677671e8b4d11c27eeee24751b28f737b0bdb55bee79a8d0f536d360792256b98e40140e8101ff0cd4b6da76a316b375762d97f79b4202785f5af410a87a5bdc3107b2d396d7232b69393ee295e3d8af6d51ab36711e2ad22e351b58218d572b22b3e7d3bd67f893c3526a57566519628add4f007249af4096d2e7188ec588f7a85b4fd4998916201ed934b9e362a329aea79fc9e1dd42492d5dee10fd941d995eb44da05d5c656e6e7783d78e9f4aef4e95ab31e2d6353d3ad44742d649394817d80352ea248b5391c3d9f8756da79e50e5bcd408323a0ab767a62d9e986ce3739f9be6f4cf7aeb8f873556eb2a2fd169cbe16d41cee92eb00f60959b9c773453d4f3e93c3768d047136eca1ddbb3c93f5a743a25bc368f6db37231c9ddc9cd77c7c2175bc96bd6c7a60734e4f08e461eea43f8814a524691ad63ce0e876eb32ca62e42ed07d055d8a08e28fcb4c01e9eb5ddb784acbcbc4f72e463bbe294784f440a3cc9170063993ad4368d63893cca7d36d849e698a3ce79fad413595a799e63ac20fa922bd5a3f0d7866160cc603f56ce6a7fecef095b26e2968723b28350ed63558d9476478f5c5ac01865a318e878e2a08eca20c581de3d8122bdb41f09c0a0edb600fa4639a77f6af8561076247cff75054b70ee6ab1d59ed03c6134a697e64865207a44681a1de48c7cad3eece3b884f35ed0fe25f0f44a70807ae14545ff09a6878ca4193dba544a54bf98b8e2b16fe187e079247e16d4df695d36e893db601fcead43e0ad65fa69b71f42ca2bd3bfe137d349dab028c7634d6f1d5a804470a67b706a3da505bc8d157cca5f0c1fdc79e8f87dae38cfd8557d774a05591f0d358923c7950a91d0972735da0f1fa8eb6f10fc33556e3e20dd1ff00551c4b9e985ac9e2b08b79176cd64f44ce621f855ab9ff005b2da8cfa678ab69f09ae88ff8fab653ff005cb3fd6b4a4f881a9670bb00fa5559fc6faf33656e42af600547d7b06ba97f55cda4b7fc444f846ca3f797eb93dbca156edfe14d9aa1df78c73dc22d655d78ab59b84647bb7c375c1ace8f56d4638cc6979363fde3512ccf0b176452caf3492d67f89d6a7c2ad297e692ee439efb80a9a3f86de1b8f1e74e78f5980cd71916ad7e9d2ea53ff022734c7d42edbfe5bc9cf6dc714bfb5b0f7d113fd8b8e7bd4fccef23f00783206de563dc4f39909cd4dff08bf822162d22da9efc935e7ad7f75907ce7233dcf4a8e6b8965e5db7718e6a7fb66974894b87f10dfbd50f4afb0f80e120f9165ec76669df6cf03c20623b7623a623078f5af2fcb16e3f0a772547352f3a5d225ae18bbd6a1ea63c41e118b1b60523fd98c7351bf8bfc3aaf88acddb9fee815e6041e07534b93bf81593cf24f689aae18a2b57367a79f1b694ad98ec5883eb54e6f1e289330d846abefd6bcf10b9279c75a78c83eb52f3aadd122970e61568db3be7f881385fdd59c4b81dfbd43ff0b02f5b83044a7d40cd71288776719cd3803c8c93cfe559bceabbd8d970fe093d51d7cbe3dd587113449efb6a33e38d5645cbc8411d7078ae5881c601269bb40e82b379c627ab365916057d93a2b9f18eaf2ffcb66c1ec1b145739839cd1597f6b625bf88bfec4c0ff21cb5fddc97703456d6d70ca70376dc0c7ad6aea1aa496b6569047672ceca8598820043e99ad365b28adb1fe90db9b80b11e7f4a5fb0c32c0aed6b7673e8b5f7378bdcfcb6556af489cb1d4b5391f3169d81df7c94ad7dac104b58c43d3e6e6bb05d2b2762585d9f4cd584f0fc8ce0ff654e467196347b8439621bd91c3236b52a9758edd17d1a9f9d5c71e6403e809aef9340be2ac23d2720f72f52a786b50241fecc807a65e8528217fb435a58f3b8a0d7257319be48f2782a9cfe54ab61aae4a9d51c81fc417a57a643e19d4c306105b201ebc91532785b50c8cb5b8c9e78a154815cb5de973ccbec1a831e6fe6c1ee053ce9374d0fcd7372f9c735e98de13bc9179bb8e3041c909576dfc2d32aaa9bc6da0765a3dac3b03a559fda3ca6dbc3b229e45cb0edb89ab23c353127f7737b65b1f957a9c7e13f318192ee6fc2ad47e13841dc67b86f6ddd69fb742fab4ff0098f2cb6f087efd1a480b0cf3bdfad6a1f0e411b12238381dd857a32f86ac4152ed23638e5e9e340d29305d508ff69a97b65bd8a5879a56e63ce174882304308001c0e87353476d6c170248b0072057a32691a085cb7d9fd796152259787e256005b0ddec297b72d612fd4f3d482d7cb1209178f45cd5a8d2107e412b679f950e2bbccf87edd797817d06291359f0e29c2cf1123b62a1e27ccd2383ec99c85baa96c0b7b963d7ee1ab8b0ca4068ac2e189c75ef5d2b788b4089c02ea411c63149278af458464ff3a878a8f7378e0a6f68b307ecfa8f45d39cf6c6e14f4b2d5d8e574e1f8b5691f1ce8ebc88988a41e3db0c9021518fceb3faec17da378e5d55bf81958697ad1e96d0a71d18d39744d75997fe3dd477e29d378fadd48f2e35fcaa8c9f1166dc4456c9c77359bc7d25bc8d6395625ed06687fc23dadc80e6e224f70b48be13d55b04ea4c08f451592df11f50db948a3dd55a4f883ab36482013e9dab1fed3a0bed1d10c9716fec1d443e12bc03e7bf91aa74f07ae732ddcededbbad711278eb576c7ef8af3cd566f196afbc9fb4373db350f36a1dcd96418b7d11e8b1f83ec90966925627d5cd489e18d310e58267fda6af2db9f14eb32c99376f8f4cd4275fd498ee3752723d6b29673451bc786f12f7b1ec10e97a3c076892007be4d4822d1e35e67800ebd6bc50ea978ce58dc48491fdea8df52bb24033be3eb593cee95f44cde3c2f59ef247b5b5d6848768ba878eb8e6a19355d022e7cf43f402bc54de4fb4e656e7ad46d3ca792ce7f1ac9e7b14fe13a23c2afaccf6a7f10e84a09073e9c8aacde2dd0d158e3a7a1af1bf3dc0e0b7e750b3f5e4e6b379eb7b44de3c2d4baccf5eb9f1c68e8bc460fd4d65cff00106d448162b6561eb9af3079182f151b3371efdeb29e7753a246f1e19c3addb3d2e6f8869fc10a67e9daa9cff10ae4fdd455f6da2bcf9cb6723f9d079f4ac5e755bb9bff00abb844b54cec2e3c7da9339f2d828f5aa1278d7587ff00978c7ae2b9b64e339efc5319477ace59ad77d4de191e0d7d937a5f16eacff7ee5baf41555fc4daa9627ed4de983590c3231ce29b85ce6b2799621ef2368e4f855b4117e6d7b5094fef2e64e3918350beab78fc99dfdb9aa8114138fc68da3a023e959bc756beace88e5f8782f85161afa73c34d21ff8152fdae5006646355c051c8e9de9fb47d2a7eb553f98a585a3fca87fda5dbf88fe74e595980c3f4eb508001faf7a7a8c71c7e159fb79f5668b0f08ec87999fd49a723b71df8a6301934b8c74e3d3dea3dab6f53474ec878639e78fc69ca4938c9a8ba9a7062ae33c66937d4cb644abdb9fce9c381c533f1eb40e0534ee84d0f18ea7b53c609c0e7eb511e781cd28e0fe99a399a15a439b24e7af6a09eb403cd009e7ad5293b046170c6067b1a33919ebdb3412719c714dce14669dd8383b8ecf20134a320f3de900ee38a9235040eb9f5a08b771807cc491f4c76a923008c92081eb430ec148cf4e68db85cd1e834acc90019cf148dd7de9d8014051c7ad21049e78a71d099b56019ea39a7a83d33c76a4518079e297381c0a767726f110311de9c33d73f5a55049c918edcd23007e51cfb0aab751790e04b1c1348339e3ad182067a537243601246693775665a4901ce71d85141276e0039c5150d22ee7a54bacf86e2467df19c0cf0b55a2f13684ebbd0a9c0f40315e3a657006588a40ef93838cd7d0bcf23d227c5ae18ef33d91bc53a683f75001ea464d22f8c34ec6e58c1da3a16af1c05cf1939ee6946e040ce6b3fedd7d225ae198f591ebcfe36b354e618b1dfe7e7f95432f8fac939112e3b024d7940638258e79a325b1818a4f3a9b5a236870d515bc99e9975f11635388ad55fdea8cbf116e88cc76d129cfa5704e48000269a5b1d8543cdeb743a170f6156f73b893e21ea641db1c4bd7a0e9511f881ac1e8ca3f0ae30b8ce29727078159bccebf7368e47844be13b27f1eeabb38c03dea06f1aea8e986724f739ae579cf4fa734b8c0e9c9fd2a659956fe6348e4d845f60db97c43aacacc4dcb2827800f4a647ae6a0af9fb4b7e2722b2941eb918a503839e4fb573bc6d77f68ea8e5b854b48235a4d6f5197e5fb43607a531751bc7e5a67e39eb5481ea31d69ea70a00e6b378bab6f88d6183c3c76822796fae5c0df2b37d4d3164727af4f5a8faf518a5ee31c8f4a9f6f525d4a54692765144de7393f798fe34ff36427af1508e481d2a40700f6acdce57dcd7960ba1202cc01c9c7d39a707e71b41f7a621f9738fad393d88a399f71e9d894b1c7278a0b718047e15183ce0f3460e7d2a799956d0706620e0e2900e73cd31f231cd38120723a77a57624b41f9a4ce3a75a6163c629acdcf39fc295ee558909f9bde8c8009ec78a8c124e4e47a52b63a679155d42c3c1ef9c51bb8e47351fcc476e2821b860738f414d92c7961d31824d008dc4e7a523313e99a6b9231c8fa567a5ee5c62c5723b7e55131c9a52e71818a6ee34db1a18c0e33487d7b538fe02a37600e09a96982760cf5e3a53319c9e2949f9831071da9a4a827d3eb47258ae7d01b38c1e29b9e318eb46e2472067d6909cd52409cbb8854e69a70294923fc69a4e5b19a5a32d39099eb4d7ce03606734e6c6318a637b76ed4d2b92d8a1b18e79a76e39c7151ae33cd3b009c63afbd371d2c89e6b126ee4d2abe3b62980004d1d09ce4d438ea5733649bfb74a4ddee4e3a5461be5ce2973c03c53b684ca72649bb24707e9527c9bb35013ce7914b91d8e6925dc5ab270d927038f6a706c8eb51213b4950714fca118f6ed49ab6a871f31e4f1c714e2727838a6291b7ae053c74c64629ab972b587678c01483a1eb40fbdc9e286c818001ad0cd31400739a501719ee7ad314e073d6876c75fc29a7a932761f9e38069ea4f1823151c6c4b0e3ad48dc60038fc2aadad8caed207907af3daa407231b496f4ae5bc377d25ff00c4386ca676f20cdb76e7d2be87b7f0c69304615cc608009e39ff0038af7703933af0e76ec7cf6639eac254f66a376791aacacb8585cfe15616d2e99b1e44848e0f15ebf168da4c4ab85cf1c10b5a36da5d8cb909110a3a6462bd58e41496ed9e354e28af6d208f168b4bd45c822ce5208f4ab11681abb1256d71c64e4f35eda9a6db81f7178a6b4363015490c685b800f7ad964587f338e7c4f897b248f1d8bc2dacb655a245f7dd8c5598fc17abbb7cf240a074c026bd7145a336c8da36623803ad5736b2eec80063ae4f5ade3926156e8e7ff5831b27f158f18f10e9336937290ce412e0907d6b333d01c7b62bd03e2fc015b4f9fbfcca4fe15e7849e80607ad7c966986587aee31d8fb9c9b152c561d549bbb17203648e4f18cd15196c020119cd15e7289ea3673cc41520d3e3c60134c38f42734ec8c7b56510571fbba007934a321b9ce3daa23d73fce9c18678245171b43d7a636f3de9c08c1db4dddf2e4e73ed423038207e74e2813b0f201c63d29add7a719a09e723269e70067f4aa5be84f3223e0b74c528f97b8a5c0ddc9fa523819e69d9b0e6d017939cf1ef4fe08e323351f1839e7e869c9923d2972b4f50e68df4240463be3eb41c6e23279e299818c9c81e94fce0e79fc69f2eb7e82244cf6e29c38e39a8831db91cf1c5481890327149a57b0b9b4245e7bf6a7e2a25f724ff5a918b10b8345adb0b9ae4a98e9d4d047cd8cd31739c76a72b9cf6151246b1d5d8954e108cf18a400673934d041e3b9eb416e3b1fe9493b1b356d0990819e7ad01812319a854907fad3831038e94d909929191939a420f62290302707938a4dc3b0c0a514d9526ec285c9db8e2809f374cd2ee031efe948092df4a6d10a7a8118ced07a734de71c8e7b734f3c8c9cfe148e7e63bba74c50da29cb41158e07f4a09c01838c75a701c7a531b19233d6abd094c767278ce3f9546ff78e4e4fad296e7d01a693dea2c5f391eec1e683c8eb9fa1a8d9fe73d867ad5e1668d00689f9c74cf7ad2149cef633a95543728c8e00c1a88b64f349700a3e1fa8e2a373c8009fc0d4ecec52f795c9588ea7f0cd35981cf350b484b1e781c52004b6453b7305da1c1c8dc3ad30ca451271d719a693f2e450a364573214b1ee7342b939e71519208f4cd34b8538e9c51643e624f30924649a4c8c92455357c31233f8d3bcccae69f28d9677f5c1a7a93c7154a3738dd8ab08ed8e2a1ad45a165581e32334cdf83ed50e49239039a72e3ae41a6924524480f0334e05483cf07dea23f77233f8d2a82deded52ddc6d58997ad3872707a5440303c0a9550e4034257d8571ca4629ea47ff5a9026015c528463ce0f3deaada12bb8f1cf1c62a4427381d2911085dc71f414f55c6326a52b0a5242e4e41c0e2985b9f987153852074e951b8e7a1c53d185862704f22942f2727bfa53957e9f5a63139daa39ee6aa2ee673648170463d71f4a25044648e78eb42161d7bd4774ffba761c1da6aef67a19b7a1c1f866e5a0f1b7dab71f927c838f538afb1ec043359433140c5d01271ed5f13d93bc57171720918907cdff02afad3c39af95f0ed948ed1a21b7562cdcf3fe715f7f94eb4123f39cf94a5896e274d318d0fcea1699e7ede10e33e95cb5ff008a24332c70c90ca3192db718f6a84ebda82b02244507d074af594343cea783a952376cee97ed18196c9acdd555a6b90ad61e76d190e5b183f4ac16d4aea4193792283d79e95d068972ef60acede63648cd248c6b61dd25764300bc898343a7c4840c03bbb53ae67d5fe4e215f51e956fed2cce14ae0f5e951de48cc546c240e4d5efb9cae69b38cf8a2b7127872da6b80be6a5c7257a0af3166c9e1b8f4af55f890ab27876760a77290477ee3a579348ca3907bd7c5f10c2d59347e85c2b579b0cd76605b839ebda8a899803d3afbd15e023e99190bc8e3823f2a70eb8279a6ed241048eb4a0639cfd735cb6d6e5bbb1cc78c64669aa4e78c7148c79c6734d2e7a77ab4b430d993a36063afd6867e98c60540ae7d78a5f98af1d7d314d2b21742c212577639f4a71c9e09c1150c5b80e4e295c3b36777e3570bb1b649925be5ee3ad23e49e4d08318a56e71cf3f4a6ec44ae22d38b60018fc29833dcf19e28208c734ac38b5b325078c7534a79e45357181c9e0f5a7672685745d87aa81d38e29e338e0f34c0304e73fe35221cae3149bd434b587c7d30c47d6a60171c6315047d7ad4a589ff00f55260ae283b8f1c1a1b38e833489f7a827ae0f1ef59b4d9b410e5e3f1a7ed1d48c1c741cd3071ee29c0f6e9f8d4f2db7367a8b83dfad203f3600e68c127009e680181f7f7a7ba20917d714d6e87a75a4079c30c53da3e3da9a486f54346588029c3a9f6e942a10b9cd2ede6b4d0c24ec01b18e704d26e182702828722828003c7152ec8a4fa0ddc47349249c703f2a76cce7b0a468c8ee47bd1aa29a444f210bd334c2c06727f0a9767348c9924e306921dd22a4a4e323a1a16691233827f3a9d906324544eb9e06288b06d35a95dd9a4ce58e7de988a4ffbbdead14c0c639a00000ce2927dca724958a9b4f39e734d3bb1800f1568a8e718a6b2fcdb7031f5a6a561249959c391927f1a40188dbd2ace303a03ed4d3b473c55a9112d1903039e9cd44ca541ef5609ea474a8867773c9a86f9477b91140570063b8a6ecc0f7a9ce4f5a8dd79c83429752d2d0646a770cd593c0e38a863cee519031d41a9bbe0517136371938c714f8931d071fce8c11c9e86a541819cfe149e8b51c64f613cb1c7191f5a72283d28ea300e29ca081effcea5bb9a21ddfa0a728258e680318078a94a9271eb4465ae80e20c318c720508cc7ae69e913004838155751bd8aca22f232e2ab9b9894922f248318cd4c8d10c16651f535e67aff008bee554a5a3040475aa163ac4d72a3cd9d8b1f56ade8e1e53d59cd5eb2a6b53d75a7b7c6448a7f1a6492c47fd59078af358ef245cfef09fc6a192f6e727648cbea735d6f2f5ba96a712cc5dfe13d3030cf6fc2946d073c0cd79a43ac5fc3f72e58f39e5b35d1689e2379a4486e9572dc2b0ac6a612a27a6a6f0c6426fb1d4b7dec1aa9a9b6db49893d11aada9246727eb597af332e997077104a119ac69fc56359ed73cf1ce34b95ce72f20c7e15f44f80eed2fbe1ed834f189815116dce327b7f2af9cb52629a5c49fde7ce3dabe80fd99ee12fbc24f6aea1becf2fca1874f7afbfcb572c2c7e759acef51cbccd093446b66631a991b230aac4815a4ba6c96f61fbddcf24a7233fc3ed5d7496d10760411cf65a9bfb3d1e30c72463a1af513696e798f10deb73cfaef578ede530ae9f3c8cbc6429233f85761e04bd92e74d732444306185c702acc767116f28c21413c9cd5eb1b48acd584036ee39356e5731ad5f9958b6ce41fb837552baba08db0b0f31b8000e6a67071932e39aaaf143b848ee0bf2a18f6cd2471dd58cef15dbacfe1abe56232606dbc77c578703b946e1dabdeaf5226b09600c5b746c39fa57ce936a70c45a20ac5918a104fa1c57ccf10527251691f67c2b5d454e2d974921b1dbb515857baf08159c444e3d0d15f30b0d53b1f5fede9bea4e32393da9eaf9ceea8f2492011ed9a17853cf35c3a5b43aaf7d452096ce7827a521193ed4b9e70304d21dbbf038f7aa8c990d5d8e183c67e9814f56db838351afcb9ed91c53806c649e29c65745382b5c9b70c06ed46e19f5a8437ca3b0f6a703f37347a12f443f23f3a706c373fad458c00739a37e4818a6d99b57dc909ee2981b9f98f7a6e476fc68470474e29a2ec4e1be63d48a923e31915102338ed4f46a4db7a969752c1618c63f1a037c83d7bd3076e4714ecfcb9fcaa43744a303eb52678cf35121c104f4eb530009e69269a1b4ac1d39eb4b9e3a5007a9c539031edc54b7d8da9a6b70180bd73f5a3f91ef4a7207a8a70efd811e9493bb354390007191cd28c121fb629a0ae00eb4a9cf41c75a5768cdee3b0031a7f3c7d29bc9ea00c528193daa55d0dab211cfcdd791da9a5b0dc1a7c9d6a32a0904600ad23276316afa8f1c9cf1480e4e0539be5ee09a45193d69ea4fa09803be40a56195c01f8d3f620fe2073e948ee0e5578aa77ee4ead90ecc1e4d46480fc934fc9c924726a37c9e7bd67cd666a90c66e0f4fce9ad907380734ae383e94aaa4f7278e945dee82c45211b73cd35882a00e829f20f9874e2984103046334733655b4b0d6e07393de99d320d3fbf14c9149ce0f347330b202dc138a89d867814f2a42e39348eaa179028e664c880b64e2900f7eb4e6ebda9a0641a5cd72909d8f6a6f6ef4ee7a1c52608143914848c719fe752ae383dfd2a351ee05387def7a2326f71389213db9e2a441c722a304f407ad3933c8ea7d6893761c50f00e7a0a782303d6a31c9e805381c9c8e6a2edb354d1375c54c08279e71db15003819cf152a91c639f5a149a1b4c9327691d2b91f1cb911c6809c7718aea9b3c60715c6f8f25dad1af5e2ae8b6e46753e1382d48f1d7150d8dc14078cd375590f02abc44ec1935ed534d40f3e5cadd8ddd3ef87984bf41d39aecfc3977a0baeed46d1a400f61d6bcf6ce27b67f3a50b223f402ba3d0d0cd3a800ae4f4aefa35e509c636b9f3f8bc3c2a294936ac7a9dfc5e041a10bab5d1596527ef1500935c768d1d9de6bde54682258fe600f393d856eeb512dbe856ca320119eb587e10810eb0b3b70c0f1ef5e9579fb8da5d0f1f0916aa46f27b9dc98d557906b1fc50e89a44a00033c64d6d67819fc2b9ef1ab84d2dfdcf4af8ba73bd447decd7b8cf3ff00110db696e991eb9af59fd94350f2eeefec59c1dcb915e43e24765b6b4527398c96fc4d75bfb39ea6d6be3c8ede3c9132e368f515f7d81937f71f9ce3e1752b9f40eb1e2afb2cd2ab10023ed6f6abf67ae9b8b59e70e3ca89376474aafaef80f4cd60ca2e2496159a4f31d637da49ad0d1fc2361a5a18a39667464d851df2315ebf326b4679129534acd6a72377ad4b7f15e5e691aac68d0105f39248c741e95d47c3dd59356d0ddde732ba3624e724134a7c17e1c81d8fd8225dff007b071bbeb8eb562da1d2bc3b66d1585aa428c7255075a13b2d4c24d3d11ae52375e3383eb4158c2e08fc6b2935b81a16949d8aa33d7ad64cde2ab178331dc445fba86e455269a32e4773a49846b1305c648af963c636e6d3c4faa5bb3636dd390076c9cff5af5dd4be21e9f62d319ae176a2e4293d6bc0b5dd7cea9aade5fa8c1b8999ce4fdd1f5af3b31b4a163daca39a9d47265c10b4d0ee0c300d15cb5d6bafe44d6314a70403907a1a2bc98c2296a7b729ca4ee7a48205338cf1fca9c177727191d40a55185cf38ce6be322d2763ee1ad44e55b9eb4d720b81d01a91f0572319a68193838a9e712dc3be01073c53a30401e83834910192a7ebf4a56e48e7343b5b41bd0372eec114abd086f5a691c8e9cfad285ebd735a3b6840eddd97f9533249e98f4a71c03d79fa50543631436ba0921154f208ce69e01cd22a549b78e4f18aabec1d45239f7a728f6ebc52aae471d3de9c060633c1eb421dec48a0120e33f5a939c743c743489d319a71dac318c54e97d0498ab8e091cd4e338c019a8900073d7b7152ae464720d66f445c5d8521b3cf142923db8a56e4f3d69dc039cf3532ba36566387030a0e3b52a80b839e7da9072bd7f0ed4f5009008c54dfb15615473c52ae40ea7142a8ce453bad3be84eec685f4029dc9e3b76a4c9c9c74a701927919cd2d1b1ab89824631484007d69fb580e78cf7a085207007a557426ddc8c8248f4fe549b78e4e7e94e6e0fb9e868c7073f5a1bd2c53446485e79a764601000cd3588c60fe9485495e0e3eb48761b9da4f18a6311d303d69cdce4e7f3a61c673ed4f7d5895818719a6e714ec83c638a47c6dc03cd17b89ab0c623bf0298fd69cf80319cfa66a3627208349dac35a210e413d2a3624fbe29739ef8c546580e7dea7a05d6e260e7ad2b0c8c60546d2283b80a6f9bd4e78a15d038a612f04018e9511201e49c512c8a4e0e07a540c46ec679a770b226de070294367bd42840c9ef49e680318a766f61b26c9229e5b0411559653819e94bbc0e777e74fd4496a582dc738cd3d4fbf3eb9aca9355b40ec81c332f0702a582fe32a30a7a55fb29c9688875e9c77668ee3ebfad3b780393cfa5659d41402021fa93597acebe6da2c47b7cc3f7455ac3cef6b10f1545ed23aa33a8e59b007a9a61d4ed5061e640de99e6bcea3bbd4f509c979dca9e8a3802b5ed2c36e0c92166239af5286550e5e6ad2b1e3e233a6a7cb4637f33a86d76c57fe5a331f615c47c42d56232a347f36473c74adcb3b68a29097dadcf434fd46ded6e612a608b38c0e2bd0a781c1455d5ee79d5334c74a567648f1ebed40bb80aa715620767897038eb5b3aa783f50b89de4b1b732a29c9da300563f932db3b452a323af0558608a2a528c57ba8ebc14e75dbbcb52d432bb108cc719e0575de19dd9de3395e4571304844a09eb5daf832ea2f342b0e4918ae785e35137b1d55b015aa5371846ecec35896592c2dc4879db8c62a5f0f8b7b349269b6ae06727b572be32f1098eefec913a8f2f048f4358775e21bbbab77b7336d8d8738eb5e94ebc25069f53cba5936229ce2de9a9ec31dfc32a02adbd4f42bdeb9ef1abdc5c5904b7b773839238ac5f87da8e65632cede563001f5aebf51115cc40820f1dabcdc365d4f9af73b730c74e8c9d35a9e59730dd5e5c62e93c945001fa0adbf86d245a378ded2e23778e366d9907919f4ae8a6b2b6ced7843718e6abd9e936b16a90dd4318cc6e18281c122be969d1e55a33e42588d5b67b2e8f7770356870355b8224c167276ff002af4d9e3b9924189982673815e691f8cf5d95425ada5a5b0c71bb04e2a0b8d6fc53739ddaa0894f4d8b835db469b8c75670e3b15ede49a858f45d6b1f6721f2081d73d0d79d789fc4f6d0dacf035d460a8c025f9ac3d5ed752bd522eb5bba7cffb581f4eb5c2eafe160647769da4e78f9b39ad2abf76c71d185e5767410f8f34eb5b1921b8bc0c0e4003ad797788bc5111d4256d3269154b67238cd5bd63c2b3cb03185c20038056b898f4cb883565b7b9c27cd8249e08f6ae09d592563d5a3429a77b9aba96aaf7683cd439ce4b1eb59ad72d2c8caa4245deb6351823b7b49330f246d4c9e7eb5cc09d60575c7cd9eb5c929b96ecf429a5cbee8fbe95236fdc8049eb4551322162c589cd1589a72b47bc1ce780452ae4ae08fafbd49fc3d0fe340c15c8ed5f0fcc96c7de31846580e318ef46373638e3bd4c428e3a9a60e186475f4a9b85ae376e5791f952aa71d2a60a71fce821431c0cff002ab8f999b6c848f97a74a4c7cd8a9d932a09ebd4d44c307ad529684dae371cfdd3c50395ce31ed9a78500761ef4a0739c83c5252487cac44e98c139a791c6334463ffd752638000ce7ad5b95f61f2f708fa63df835280bd0af7a1571d453ba827047d29296a370b8814e738e94f5c71918cd083be6a4006d19e7b53b582d61caa00cf3f8d4aa31c9fc29aabc024669fc03f2d26d8ec340c93ed4e518ed9a5c1c9f979c714a091c9e2b29368d231245e07229548c75fc69a3a734f038e7a50d5cd45e3e943107a0e94127a71464e391f8d4dae43566206ed81cd3d00db9cfe9518ce78e94f0ddbbf724d2453d07139c91db8a69e8053870bf8d377f7c60568adb137d053d075fc6a366201ef4f240edd3d7bd46fcf040fca935663b90938ce79cd2b9c28f534d6fa007d6a277dbc67f4a2ed6c52d4792319f4ef519701b3fca9a5c127afe551b1249c1c51cda6a0913023b5296f6155d64c003b11419393cf1d295ee4bec3a472323823d6a191c2b64118a63b8e9fcaabcb2e300f352ae17d099a5edcd452498e7819ed5564909279c76cd412cc149c91ebcd5a466d93bc99248e79cd2093200aa0d70a09064151ff684499c3863ed5ac29bbea0e691a12bfcd4c67c375e9deb267d4c96e3f3aaf2dfcec78c83551a127b222589a71dcda330f5a85ee4039ce2b0a49a520867233e951a4d26d2379247bd6b0c3cba994b1d4fa1d0fdb171f780c5666bbab7d9ed0ec3f31e9cd6734cc40cb37159badc724f1870c723b5691c36ba99fd7534ca169a832dcb3163c9c9c9aea74ad512540a48cfd6bcf599926607a83d2ae595f344c06481dabd2f67a6879952777767a4b3a91d45626b966d2a99a2e587eb54ad75862982d9f4aba35052a03e08c528e9b98352e8c668ba9c7028b7b85f2dd78cd6f43731bf21c1fa1ae7a66b6b81f32af3f85509227864cc13941e86b78da6f567372ca1d0ed24b81862a01e2b3a4d5cc65b742c02f735856979a8c0c595d64e318352c9acc9b36dc598e7b8e953285452f7751c2b43ed1ab69e2f36ea1517033d3a66ad6a17365a8d92dedfd8a18dc955902f39fad6245158ea11a6cb750578ce306bbbbdb4b383c022ce64036a6471d49ae9c37b49c5dfa14fd8f32715b9c42685a3dcbe6d6f1a1663c2b8cfe15a31786af749937b10005dcafb4e3da9fe01d047990ea97e4f90932aa29ee49eb5ea922f9cee8f18913a7233c56f0a4aaad56a6b3c757c1cbdd9b68f03d4b4c92ee579cee12124939eb54b47b3792f5526185ce0e6bdcef7c2fa5dd45248a7ecae32772f02b91bcf0cdd5b4a648a159a3ce43c7d7f2ae6af0a94da5cba1db85c64310a4dd4d5f7ff0032ad8430db46123014022b422ba910fca4fe7544445782083dc1ed52a1f4c62885577d0f231546a427fbcea6c43770ccc3cef95877ad0d3e38da656ce57d40ae6d1955b776abb63ad369ea7cb2013d8d7a74b13a7bc793530dade277168c5a45525b19eb572e5c26dccdc67b9af369fc597d2bf9711de71d00a962bbd5ae57ccbbb810a9e762f7add6369c16acc2a60e7267677faa40090b2e7b71cf3595797ab2ae118e3be78ac4374235043166cf535526bc790e17a9ac2a63e525eea1c30918eecd59ee1638f6bfcca6b88f185ac7793c53db2ec78f39c77ad87779072e7d6a168b8c9c1ac1d57bb3754d2d0e32f175563f382ebd1467a57397d15d2c877c4e0e7ae2bd324891b39150c96b09fe0523e953ed6e6c95be13cd20b79273b554e7e9457a30b0853958d17d7028a8f688be691e8423caf1c9f4a528bb3de9c0e4e0734f0062be2548fbfe55d5916c191cf4a6f97f37239cf4a9081f8e29cdf780ee4500d2183be0f4f6a3b67a7e14eda79e69060ae471f5aae67b10e29211b9c1cf1fcea3752cfc7e1ef52e3e5fe54dda71f31e29f912bb8c55e79c7d680b827a0a948cf4a67f160e695ac5b698a83b9c669c01df93d283c1f41eb4e278c834e33d45a5878c12013c934b8048c66984703919a7ae7bf6a13ee34d589060120e38a9148db8c63f0a872b920e73eb4f0723824d1cd721b4f4240ca3807029e08cf0463daa118efcd3c1e9d7a51a951b126ee4faf418a552bcf39f4a8872de94ee172739f6a4f6344c9872bd718a7fe58fad42847d01a93231bb34b745bd079e1b9e98a507bd46cd9e0741de83cf1d29f2d81b4d8b939e4d381c77ebdaa34039c1fc4d3f3c6314a29898f19db49c86e94c2d91814a4f19eb55cbd48d5ab0e6e79cf14d72bb09f4a89dc1e87eb50cb2818038fc6a935b8ac39c8d99cf5aad3313839e3b52cb30d8401f5aab2499c1278a4df52a3a1233734d661ef9155ccebeb9f6a826b91123331e0026972dcad8b724aa392c055796ee255e6415c1eb9e2b9c48441b703a1354b4ad7dee1cadcbf535d34f0926ae7355c5423bee7793ea50ae46f5cfd6a8cfa992484071eb59a851d43707d29b73208a3dd8240e6b78e17b9c33c6bd922c4d7b333607150b4ce72243f4ac89356cb7c91103d4d51b9d4ee583636a81deb7faaa473bc55466fcac083939cd56c8519181ee6b1e2bab8dbcb97cf615613ed33028c362f635a72c52327394f766909933c1148f21e4d5516e06007fc69c0374cd6774b61a88e66ee4d359b00118f7a84c6ecc7e734ef2c84c649fad253ec5727563cc808c6466a37dcc7007147964104f4a42eaa78a7ab1691ea666aba6f9a8644501ff009d736db918ab6411d8d7692c9b97d45646a7609302e9c3f535d7467caad230ab696a8c8b6ba68cf26b62daed648c053935cd4caf0c855811524170d19054e38ae89d35257460a6e2ce8d9c839048fc698d2331c8627f1aa715ca4cb86619a7eeda700d62d289bc64a5b97639e456fbc2ad457618625008ef5948589f979ae8f44f0ffdba259e69f62678503934e09cb4429d3495e5b16bc311c775a9a873b218c6e3d85766fb35cbd861924f26c61009ff006cff008550b1d32dece2f2e3817dd8f53576359431c851e8715e8528b8ab339ead6a4d5e3d0dcd5e2b18b4cb74b794471a4f18031db757517725ba102ddc48bd491deb838903baf9ec5c06c807a645497b25d8fdec370ea31f741aeee754e1748f26509622a59cad72ef89f53061fb145c64fcf83d05625a6a971673a8b72589e366ec8358fa96a2622cd2b36e27249ef59b6ba84d3c8e6d50b4801c63f8457935b11294ee8facc2e0e9d2a367aa3a0d7752866bdcb22a3841bf6f4dddeb3fed910236b0e7a62ab4492491e6e3018f602a392d62c771e952af73c8c4cd39dbb6c6b34375347249121644192476ac7782ea59b12b144fd6adda5cdd5ac651257552724678a91a5690967249c5693e56924ce25296a5cb54b4b5b4d91280cdd58f534e79c9c7cddf8aa4ae0019269e064ee3d2a546dab1caed13eedcd838cd202304715112493d9a98dc1ebf855b3356b136462984e460671de90b6d5040fad46cc71b89a2f7d02c904981c0231fad40e417181c0a57620e3351b904631c517ec81d850e47041a2a2ce0e3ad159b9345dcf42e8385e3bd3864738ebeb4cc363a9ebc538671d41af8e4d1fa0b4071f4c507a9c0c529038f9734c6392791549e9a8ac855c93c92540e31411f37cd9a5e8a369cd27439ebf5a49bba6276b063b814707a8a327233de9093bb83c7bd68b630d1bb0d6249c71c74a01e9bb938a46eb819fad2703be7e94eddc6958901e8003efed4bc70b5106217d3db34b93b73d6a6cee68b525de0103ae4e29c1b1d08f7a8071d7f014f049f5c01447562b12b1ebcd3a27c2fb0a854eecf414a840e86af6d4871d6c5a278dd8e94a1b200ce2a02cc13049e69e36f19208a96db7b14969626cf2793416ff39a837e78c62977f38c8e29357348e889f70f7f6a7863c671d2ab86cfcc053837ff005e84d21b77dc9d4e080bc9c529e71eb55d1c939e98e952863d73934d828df61e095f9719a52dce7fad4658f73c8a6e78ee685ca1ba250c3918a40c738f6a67f0f5a8d9f69393f4aa64587393cf355646079cf6a49a660323a0359d7370ca8d8c91f4a7662ea3e6980271ebd3351b4a5b9c63d2b345c92c73daa637aab1608cd53835b8292b92492edeb585addf2b40f12b1e78241a354d4252a5618d893e8326b9b9a794c721656c7f11c70335d74283e6bd8e4af884bdd4cac34b6bfb810dbb7cedd2a09346bed3a768e542483c103a8adef0d3da40cd772ccaaf182793d2997de2d4b972891ab28246f3d48af4e2a363c7956a8e764ae2e96f3040ae08c74abee0ca3611d6b36dbc4310c0fb2a7d6b574ed5d2662eb1aa9feed472aee29ca5d626549a69776daa4557fec290ca5a52c141e066ba46ba7925ed8ebc556b8999ce467ad33253bbb58a2b68b1e0f9607bd3d9022e4f1f4a91ddc8c54323123049a4e2b7072e88acec19f8a456c1c938c52c832d91c62a36ea411d6a58a2edd4779c141da0914d698b0e6a2380d9c714d7a7a5b4457bc96ac74937a1351b49cf1c1a639c7039a61268b2b9a2448cc4fd3da984e78ebea69a99c9079a427b01cd34268a3a95a473a9c7de1d2b9d991e162ae08e6bb054ebb8550d5ece39e1270370e86b7a336bdd68c2a25ab39e8a42ad953ce6b5eca469d82b2e703ad62636cfb483f29aed34282178449f2e081c7ad6f5237e85e1795cbde7a0416fb1578cd767e1d4d96aaa01031580b1e463a0adbd3e548a1552d834538f23b9b626afb48b48e92150c17e63914b74cf14464e30bcd6547a8246061c8e7393515eea9e7c0d12b0c31e7079c576ba91e5d0f1a3464e7aec2cba8cf2000385c9ea290de305dbe6b31fad4704113272327d2acc163030c91800f4cd75d2a4f975dc8af5a2a7eee88c4d4ed7ed6a4ee1bb3d4f6aa3a55d49a4ccc1b04b1e4fa8aea6fece15b666450081915cceb16725c4717d9d599f38c0ae1c5d2717a1ed659595483537746b457105d904b8526992178a531920e3a1c715870c52dbb0590956ed9ad68e6f360c370c9d08ae7e5762abe169b7781650e79238a5c7bf3daaaa4a31907229e26c739c8fad2d158f2650e4934cb18039ef8a7965da086c7b555dc08cee14b918c839a4ddc96958b2180c92693cc3bb23a7d2ab8739ea48c52866c9f90f4f4a39ac4593d913492375a6b9214107348c25da18213ed8a416f74e08f2ff005a952d4721a46e3d39f5a8d9482467bf4ab4b6770146570c69bf619c125dc003bfbd1cf145248a9c004923eb9a2a792c946374a3db3452538d876ec8ee43123248fca94370491cd33702bea734e1cf503debe43667dedee3f70e58fa5341e7a819ea69b9f7cd1d0e3b1a2e5598e18c64528191e951ee19c1245389033b7923a54eeee4cd3b58713d483ed4cddf30c74a40d93cfa5203f74b1ab4dd8c9256d419b9e474e4535d811edd687393c639e94d6eb9c01424dbdc7b8a0fcbd38cd21639c64d359ba0ce7142e3d0fb5559a62b58937678c7d68c9c103d6999efda85e9906a9ab0225dd839ea69f11e4e4e6a153c5488411c0c51b6a1b9316cf39a50c0367238a8793d48c0a65ddd456b1f98ec00a96ee5c63d0b5f789233f9d20c73cfd2b999bc5102b9da9c0f4fe7441e2a81f03c962e78c0aa7076d0ec5849daf63435fd53ec51f96a72c2b04f8a25cc71a3632d96f5accd7afae2f27c988a2e4f06b1aed9206560d963c9e7a56d0a299e8d0c2c52bc91ec16d71e7c31c8a78600fe356b70033d4d729e0bd496e2ce385dc1755e33deba2de7be48ac5c5aba6799561c9268b1bc631c8faf6a42d81c5421fa0e38f5a32b8cee3d6a52ec624dbc0524739a8a46cf5e94c794e083ce3d2abbb027d056c97531931256f988edd2a9cd1b3a9500f4ab7b4127934c7da091d3d69c9ed60b9991d90192f9c545771471c44f03d2b46595563ce7f3ae7b5cbe0aa4138039c55fbcd90ac91937d7ad14cc226c16182d5d36a969358fc099b506b4b4c5feab1c464327ef58282781e99eb5e7b77705e5273556fb52ba9ac63b26b890db44e6448f71daac7a903d6bdbc0d454935347898ec3bab24e2f66674f3b619158e0f5e6a1b27e5a9929ce4f4c532d58073576d1937b48d585cb291d31572c2e9a19410d819e6b260971360e315698ed6c0ee6b092b3364d4d58ed2de712c0acbc646291891d7ad636857aa0981b001e9935b0c460f7154d5ce09c3964309c827f9544e4104734f6c1edcd376b30180695ada137bbdc81f9c6298f8f4ab46de43cedea68369c7cc71c50a2ee129c13d599c727e5c7439a69566c907a568b4312a93924d464c68dc0c1ad153ee43c4416c8a02273c91f9d218f9e7a559b89c6cc8aaad38dbc739ea6854f5ba17d65b130a84f03da9aec817dea377c927350c8e31d3deaf96c6729bee3ccbc9c13556e24c21c639a748db89e6abcdfcab551213699cfdd645c9c7ae6b7340bb7184c9c0ac5bee2e4d4ba75c18660ddab66b436a135191e8161751b651c8561c8ad049a139c64b7d2b8db7baf3e61b1827a9cd5e79ee557f76d9fc6946a6b668ec961dcd5d334b55bc937aaafca3d477a4b39fc9b82d21dcadcf1540289a25692e30de952baa3e0aca1463d0d39b77bc51bd0a515171933a48756b7246c3cfd2a6fed381932b2371ed5c912507c92827e95a365711222ef719f535d10c4d4d99c95b2ea2b58ea6f3ea70c9191f3938c70b55f4bbc58f55b5f2e3661e60dd9e98aa767a85d34e3e445b6271b88e4d5db0d3eee4b966882a7cd9f31cf02955ab295ac4d1c3421197369f33acd47c3b637d28948c7fb20f19ae66ff457d36ee65864df185c81fd2b75b55922845a5ab096645f9e53d07bd72916b57892caaec24de4a927d2957ad4e1ab5a98e0e8d56ef7d1741b6b6b3142f91863eb56e0b091c65a40066b326bf98b91192abd87a5422e27724348dcf5e6bc99622373aab6167526e4f63a01676cadf35c263dcd4a534d4037dc0e0f35cd8dd839724d2b4670324fbf359bc4db612cb9c96ace97ed7a6c5c4782dd3da91b56b251fea89efc015ceaa8e074a7950076a8962e4d1a472da6ad766ccbaba37dc888e78c9a89b5598e005518f41596801fafa54a3e5009ea3ad64f13336582a49ea8b52ea376c410fb71e9c542d73712677cacc4f727ad3622339fbc3be699230c900719a5ed26fa9b470f4d3d10d7691864be68a4049271ff00d7a29393ee6aa9c7b1e8dc6de3bd2838ea4d145790a09c6e7b4b462a1f948e83b6293240273d28a2a121a5ccf51a5b393edd6856f949e4914514f6225d869391d7f2a03723ae077c74a28ad23aa57307eeec217e33f952724f5e7145144e294ac813d04fa13ef48a41f9b07345145acc24f41c49029377cc0633ef4514d69a8e1a8edc39c1a7a3617345154b61bd05122eee460d73be2eb91b3603c7b514535147561d5e499c84932f4a5b3bb89261b982e0f24f6a28aeb54d347bb2ab25a222d57535dcfb189507835cbea5a8bbb614d1457a184a30dcf0739c5d584128b3a5f0d6a53d91827e78c647ad7a269dadc7736c24c9cf718a28ae2c44529330a73728ea685b5cc730dd9e4558f330a7a7b51457242289bb6c89dfe5c9e0fb546afb9b3edde8a2a3a93bee3a47e09155da53b5b38c01c51456892b0a4ac675f5c79719c9c9ae335bbaf3643cf4a28ae9a295ce7acfdd31246e09cd5295bb8a28af429abea7154294adc11d6a1809f308a28ae95b1c137ef169061c39ab31c85baf5a28ac65aa374f95e84f0c8cb22b038e6bb9d1d239ad91e4192451453a4ae72639b49345e682de30488c7d71503b46a0e147e54515ad92679aa4deac8259bfce6ab4d2e391d28a2a65a3d0bb5d1977578124d8aa49aaf2cb7041e4014515b38a8aba08a4ca574c550967273daa349d11000724d1456a9294752252717a0e0d91baa366f5e945159c522ae452367a1e2a373f2e41e28a2a82fa9877e0fda4d4601078a28abb9a43545db6b868c6179ad4b59de48cb0268a2b39415ae7a185ad37a3278e7f2f2d2007d6b4adaf2ce74e983e828a29c5f2e86d55f3489edf4d797e7dd8ddca8c54935ac9015dd861f4a28ade74a3ecf9ba9cb0c5d575395bd0b124d2dc8447c2471f403802b423d57641e5421ee1ba7b514573529c92b9dd569426acd6c417735eec0d332c685b01178aa836b11c039e94515e6e3e6f991a504a510c20ea3f2a5eab9e9f5a28ae2a6b4b9b5f71ea542f0286600e0d1456b24ac1ccd6c1bb18e3346e1f951454cd2436f510b6391d29eac48049e3e945152b562dc553c90320534963c9eb4515495ddca8ee359c0c9ce41a28a29c62ac43933fffd9, 5000, 'Randy', 822568860, 'Pontianak');
INSERT INTO `laundrys` (`id`, `name`, `alamat`, `status`, `time_open`, `time_close`, `service`, `owner`, `image`, `harga`, `driver`, `nohp`, `kota`) VALUES
(2, 'Ateng Laundry', 'Jl. Imam Bonjol No 20', 'close', '08:00', '20:00', 'wash&iron', 'Ateng', 0x89504e470d0a1a0a0000000d49484452000001f4000001770802000000dc902eab000000097048597300000b1300000b1301009a9c18000000206348524d00007a25000080830000f9ff000080e9000075300000ea6000003a980000176f925fc5460004f40c4944415478da8cfd59ac6ed9911e887d11b1d6dafbffff33ddf9de9c33994c4e45d6485695aa4a25a9a51e205972b71af004fbc580013ff9c180e107037e31e007038601c37e32ec471b6ec32d351a2db5a52ad520d6a022ab8a2c9249e6c09cf3e61dceb967f887bdf75a11e187d8ffc98461c0be04c944e2dcf30f7bef58115f7c03fd0fffdbbff8e1d3e9ecb4b2a001fd6271f3d6fdc3e55149e84bba3c7d3cd5e968b5faec934fffe27b6f5f0e63497971b438b84547ab348cbebdc28d83e5c90d1a5b9b26bd3cafcfce87615b5d3dafcad79f932fb54d7617a12e4961723726108188dc3d893899bb89081159ab68d4bef646bd799beb04723783a4453db7dd851dbc006283b2646dd5895892abb10820ee4ec46e4e44cca45ec104c0dd898821ae2649dc1dde880000a0f82f113191990170672767e6e6e67026721888c8410e7710093303644d9b37626222000e23f0fc7b99c8c4d4c04e4e4464dedcdd48185ae8a7f073f3a53b9174ee937b31bce6c844666622a4aa22e26ea64d381191aa113141604e042238a199c201827b7c18323398333b93bb3b600498c3dc416ce6207757662677375738dc1325777668d30a220798293e26b388800cc49925330b318b2422809c841dec985f4a9baae9fc4e3cbe2f212266103333b18040cc9c59e64bc3ec4cea46462c89c809b4bf3ae4ae06cb9c080e752206e0664899db2efdec0f4a1bda440c081159f545bffbdaef5a7f8c36c1e1803b002782fb48be135142556b0e07331139b5d3f5abebe1c154773e4de6def57c717e2e447dce87374e4a2eee6eee20686bbbed46913bba4878b8cce3c9aa42842813d85ccd8cc89ca4d9adda24be1837b4e6ad596bd6493e3e5ae54e1c206226823b400e65267710b99909913929402466001991b939b380080e328b9b2d253137378febcd4c40fcb38185e06a60e7f85e89e3a3584a29a5b80420c19ffdebbf7eefdd478b5569932e1772efe4b00ef5f4f26ab158ad96e9ea720350ce72763934c362917ef2c915e5f48d17968f4f87ed30f5390908e444b4e8cb7637e694ba2e9bc35dc771e85261a1616c5f7ff5c1c4f4cfffec1d637aedc6e13ffaf657fff8671ffde5bb9f1d2f0b0bdfeed3dff9ce57fee4cd8ffee69d47b78fbafff097df787ab9fb173f78e76021ffe46f7dfdd9d9f42ffeddcffea3bff5da71d7fddfffed4f5fb8bdfc07bffce5efbef9f1bb9f9cdd3959fded5ff9ea8fdfffe407ef7cfa5bbf70ffb53bb7ffc5f7de5b37ed05bffd8d97a76abff783775f7eeee6375fbcf3c73ff968bdabdf7ce9f095fbb7724aebcb0b10746aedf0e4e56f7cf5a53bb7bc2998c82d1e13c0090c507cc37067967c74d21ebe59defad39e760a646666b82b48a6090feefa7ff01fa4dc01482c6480bb118159dcb6939dac5fffdf8c2ffe231f3f218ba797405135086eee7670d87ff8de27ffd7fffc2faf2c27813a86d1124b129eaac66d0678d576d8a5d572b9aba4066621903b6a1dab22b1a72cc3e3ab331897522e76bb9dd61b8be3833e1d1faf4a97fb4569665ffac6d74e5e78e1c76fbefdc9fb9f6c2fd7eb0b3ceda47499c99f8cd393a76caa7598869d3aacefe9c6add54bafdf7a90347db016a144440410084ecc4cc4047737526172678fbb91d955f3a34772f35625b8439889a80d5b628670fc1dd3c6c266c480333191c3e77ac04c70b5262251719cc80c0c972480479502e0e651df0022829a3231113ba0e66ec60c228ea2c52420c0954104695ac144027122a666c60e00e6c6cc44a4ad014e44a62ac2ea0e57661118111abf6af533f24b6601817dd170cb4c400a8088cdc194dcc02c6036277267c96e0698c2c919308b934ce0e4680680491c4e0c80d41471d710a9358f62c9ee70809a2a11e2968c23816066ca440637559142446e20c09d4042c43e974a8fd3919cc8d9016276433305931b84a2c0280c22700211c160ae921247812180c81d6010819c40c4f13dba8388406ace2071268008c6ee300271e296c4ceae96cee5e0b83e3ee394d45c9c541960376790c3cd8c99693e979d48dd1bb18bb0b9391cee02eecbeaecc966a597dd9d3b6797cfae9e9d8bcbdd3bcf2d0e57b53533331011c661b71b6ac274909ef6ddd3836ed3f74bf7a5b5067207d41d801acd7d869bc781590dee5d4927878bbe5f10897b7c6a00460c8fc602602633238aab1877b5829d006206b9aa0a25278048c80c544de39824628efa0308b13bbb032c420677128a132aee313700e4eee430605b1b89376dcd1a717290923353741bc4e48ed68c984c0da06a580909b39a8104ce4e602280d4a1f02c30a89a098b3bd40d10c013a76db50a08799fc820db5d2372627273e9d805e330092813757d9aceb41a4ac99c785b4730722e9ba935f5be749cbcd611c0b24f996dbb1bddb190de1d4dab300b53cebc1b2acc0f4a22c73855125e2449c470031901ea4dba9cb2801c500603c6cca6c659604e704e526b33d5eee8841efd30ffcdef1706fa3e93bbbb9a25612236ad4747b9ebb959e3e40e07014cf397c08be28f97efff2febea9576f3ab3c3c722327276647dc030e82a4b45d6f2fb61beb8e84329c4a76828dd358ab3a5c849b5a9717dcf7154c8c3ea5ed38b4a68913712250e24c30aa930dc3b03af0a9eec6edd574b079b6e89fed1607fd3211576d17db5afaf2ea1baf7447dda34f1eea605a4d6b73f5dd6eb26a4ec8596edd29b7eede7ced8dd7160bafeb27b83c174197888413c5bde5998988dd95281e2e626637d7d648843bc2d5b96ece6d79c85a8993c264dc2089b9c1e1aed10782e23ea6a956e66446cc863807196a8d00c4ddee7010819b29b313899983a265273383139cc034172f9afb46330381285a6f2722f378eee6a384082cc244681a65fdfae16126376789ea0a778ed6dea0f0cee50560a36e6e44bc8077e46a317d30e0707310a939139ba93b1816bf5a84e31660f738f55d3dde8d6a8b9168eee210a728404c20c0dc8d626e0208703839e04624444471f29ab940d5a25cc441486c00ef7f294dd34444a514c001328f0e04da14312cb8376d4229ae8819982149b0ffe2cce2f7131ca620e2f8dee3b8e5f96b8ea90b70330740e64eeec42c29fbe6dc87ade62310c5c99accc1e22cd1c512c0cc6ac60412908189017698c3ddcd69aea846ce6eeb77def7dc3fb93cbb7fe3c6ad5b77cda9d6aaaac42cccc36edc5c0dc6e727ab47b70e86dc337cd19a93579fdf9f01eaeeaa662e0035d37198ccadcfdd6279b05a2e88a1cd9ab5a8c54471769a133555063b47959caf767c21cc04da372210223800c088a294c7c7703706cc9d582c0e33501c1bc4f1e3747d96c75c0b77c9b9d6dac6eada283113724a2cacda0c6e6e6a666eccc240536d0633b89b2407b9a9c32ce56c985fa89956b3554a1673a299bbc70704bc9454c79d194aa29c939a8dadb1c49b4149198e3a35c0531649b2d3c91d42d42519c6c11d59683b3637745d026852237661026c6a13015978321b9be622444cc06e1acdbccfec6eb519276290c1e33f6ae6042689022092d4aaec6f2a41ae5a45985c09960e8f71fe73fce0f78bc04b217266aeb5311311c3dd1d393b25c2c4981b5a37f8dcdc123c1d2ddbfbf6f3fff9d5f2ffd2d201d5f53c04cfa583a2045d5d6ec6a996a5ec762391ac56cbed6ee3e4a52be6aead9552a25512962ee771aa6e56eb5851fbae9ba69686a92d12fefe6f7ee3bdf71e3f79f4e8eb6f7cf9adb73ffef4e3cf6edeba310dd3455ebb5a29053887f958ad7293555f569485cd9a571770d775076571d02fef3c7ff3f6fdfb94964f1fbe6f6e79d949117127262198c674ece446ae2ceca0fdfcae891d426449b5d2b8a5a31368252634f3d2a3f4c4025718a2e2108898a6515dad3f10910262f546c466e6666646c4e46650136e6a806b33c0988938b913f37c459825a0158038ae0166d0c0e0664a5117dc888d40aad1d7706d9a92384747fbf9d3480430cd4d6e5c361013b9c7939bdc6f3009e07075cc3517cc0427607e54f6f5740694f6270a319911493257d526d1fdc2ccdaf5072126a2f9d1da57090361fe8592ccd4cd988849d4cd9b0bb39b7ba02a888b4398ef367622e11977121100aa2a2444209059739f9b652202a06e6e937054f57887d1de11339b99fb3c8ec6ff46611761f7e84f893d10187247f4e04c440475136bd4766d544feb240210133b8c5802eab83e45e6c1ce3dde153cbe87f99402e064d46c94747ef3d6a2a4d75e7abd2fa9b6c9d4dd35e5ae79bebcbc92dde33babcf0e8e2ffb4e40591530278a09c088615acdcc9dccd11a4dd3ced4bb6ed92fbac3e5022c559bab09a718814c63ea87fb7cb3453589822ca098b144c4cc8960708ad114ce04356327df5f2e9f9b0f435cf67d9312e77cbcd0fc2ff6784e4c0644dca606359114672131abba3bcce72f9059e204323711898b26cce406772631727752d70c61901bcc2d0943dd4de3c23988d845646c6a06012f7202ac99c57dce4c256737b7d6989185011fb51223a74c90f5766246c9e952dd1d5964321ea2b34cccaeb5b55cb8ebcb345587916b49b924995a856191b2c39bd941ee98d963a27723323035464a2931ab2a81dd8c85534a6e4d98e06e4db95ba18ed38ffe68e9e0c5026e04b4d658384e0680b45a5f0c85a83101c430b5782a0960e1666e5916177f3a3dfc17f6da7fdf6d1b2733339bf98c51bb9faeb715b24a598c249769aa4cdcac4d3aa45472ee88a92b5d4a69aa75ac4dd544a474fdd4ea5087711cd358eb8d65f7ed6fbffe9bbff1abcf4eb75ffee55ffee483a77ff1dd3ff9d19b3f7dfcf8944be69499076210519d2a98bbd2ed76bb1d2b8b689d5607fdc12ae73e7bc997bb3a7cfc495323db1d955cf242164f71b586b0a44470d3f9c9070908446e808d8d6e2cf1f24bfeeec7be59bbc1c651881468ad0ab39f3caf6a62663aa8833d118c258100a3b32b7fb6de1daeacf4198cd2a59c3909091373025c5de1de5a753535d756a39a34737204e210e76b802bcc128f464c073e03390002a48579403a06300bc55942b4ff64f4f90fabe2badb8539331bd84ce36e99fb671043aa3777177655636216717761d2f85b66f36346545be3806a4d0348219a41efa88cee1e7b80281934377da0fd1c03825a8bfb8980b92b0e6c8a190e554d92dc9992a4c4cc42ce049efb4777668961c0f71f98450c6e6a2c70d76198d45a4ec9dcd839a60cda7f35b1de202272063909e1f3a129262ee2d855909bdaf57112e5cf99c86a9a36a913eefa3a6c728a9203221296ea2ed147cce7479cb881d62b538021318b98b94d533b5cdd3cf9ca6b859808c3b863614e62d66f27d7cd873d3fba7d6f73b09c88ba490566315bcd4726cc0dad353757b7a98db5e53e2f97c77d295d123633b4fd2a021a2814339b7b3cf934631ad1b83911358be319aa6a6e046666778a139a666c1d716f44c348d8a3f8047682631e8fe2d62472281133cccc39b0312290b749adcef3a89bbb1bb3bbabc78b9a03cef38d041132b76a2e326fcf1cf3e686e029e7eba7c0ac99fa3c9fc5700127729de00e77eb0a57d5ed34089303aaad886bb3493da5d48998e976d7085874c94c87aa8b8e4568184706ba521436b50aa24597d4da5495089269bbabb15b607638dad458d0898c536b6ac20476089b36477410c859849960aa958844e2cb37e619b9858849969ffe6139bf4a377b984bdcd1ee04238836035004cb5ee0d89fd60e7271379a813a823b2dc157ddf9ef0fe37fec9c5d27fafca100086daa9b6d25ce5a1b33b7364dc318336c2c90babec3fe8162e6a8ecd3548569b5e8d7db8d9ba74434a99d3d3b7fed5b6ffce2effc2a71feca37badffa7bbff3b31ffff48ffef00f1f7df0ce346c9fad77ad2984ba5b87478b83e7ee1f6d9afef02fdf7ee1857bbbedf4dec79f9c9f6dbb2e2f978bbe2b6053f79b07fdf1bd3ef59d1c1dd0f91ad1fc32b173544d90ab19bbb33008b458f8ea708650089c6246c1bc13332449eed69ae6ae272132824184524eab1bb7aa1725ddb4564d8b89bbc35a1659646772d59a7362e1d2757d29a6ad8e133371620269ab660af3d6aa9992235a3f8d9ed7219c98bd59ecbb28ee743390390564bdef0a99f7b595ae0b0aef876b1023e00206039484cd755e3a328b48ad15e6421c600d13b91ae0d1ad45615507b300719e3809512cade6c738301c17cce7011c468d8819b1d3343899b9113b3b834c2daa41f30a42dc827dc97033b78b8bcdd54e134b4edc2f97878b6eb5ec178b8ef6408902eaae3a63f170da4d8d600e6f6a49a070728341129b3bcfbb178ff7e6f3b6ca89e782b587c2e665400c3d2c4c01101333602c5e1b8d57520ae765b52b207e004662cc62e4066282f97cc2053e0363997708736d3653a7e6c80942d6cc9849449cca3882f569479f1e1e3f5d2e41d25715b5ca680256428bbbc5add50a90b94e7567e6a99c1c1cde5bf4277037b5a64a444e4620266e5a99985862676770118a6ae7fef994777df3b3b03837537710313199e935b4e50408937ba00c0122eeb7bff0194264358b2540e05d40cc730c8208aae9d42a11ccdce1c2ec307363e224a2a6eecec24cccc2c2509d2166356faefb4e263a1677722608b19ac5b11d27b7b9a52444d6acc6b158b2346fd358a31521c3a264736f06385222260c5325a04f4c6643d5d2e52cb46be68c3e731bbd1988bdeba89a8d55fb9498793b8c0028719793c377536326c9320e93991789af9258c87d1e9124256651f70046dca9b516eb6bd34944d2c18df6ce5fd1276ff1616ad54a6266366d31289a2901e69412779def67230294084e713b929b120394a5306fff8aafdeb49bdf649be2facfd33b505b1d47cfb9afb5b6565944adb95a4e39979846842411d1388c0412495757978140d4dd7a9a26354b4ca9f958adeeb6e3d5665a2de4f26a9772fed6777eedf9975f7eefafffcd74f5e966b3db0e3b16295d5a957eb9cc48f2d5fbabdb774e52ceefbdffc28fdffef8edf74ecf9f5c3a2931eda6ca2fdd48cfafdc5abb7f279d3e9369749e6745779d277e754e04622ad027a77c792160f4b9ee2a3ce65330338c98c9dc6a1d53e9256737b2585398a96175bcea8e6e799ddcc9dd5badd54c9bd5b1ee2e772571b7bcb1adb55d0dee53ab57cf3d7fe7f0c6cd3a4ec3f6aae994854be94aa2dd665ba78198cce7d1d5cd85c9c90397578d02c47387c96cfb0aced151faf5459dfbd3fddc4df159ac696cbb289a3d300066b81b809c535434769e0f8419319f9f7503000d48d6359a3ec21e3fa17deb178f3d073ce5c6e2c49e8486a16dc666e67da622941213916b0cea04e6652f9cc9d52ed7f5cdf7ce7723fdc2d7eedc28faf46c181b9d6d5ad2d61c2de58e78d5e7e393d5c9c9aa5b74ab5572adebedf8e993cdf9e5c8e2b78f178965576bee12b1338b9b1265507618cf8f90ef3b5f62e63d6414db717282993305b4e6e626cc6eeafb8d88aa3b1991a5405e6070208bb3b09bc5aa603f2bb8cddb813d5a4371c1c04c2dbbb1d2446ecc445476ca6d787a201f1c2d4f970b18755513aa932b3199b99b3ab9d90cc5105cdb68da38df5cacee2cfb13965cebe846292577373791c0c72da512f3847b8c89e46eccec3aef166243335f4990aa4687eca6101216c05a6b245155c809308ec560c02eb18b318002457675c03cfa067772f2fd94e06ec0d8a6d11ac71c639e2489e11af4071931403cb73b2cda2cc80ef3719b04f12af191d404482ca6169bec38f9cd3d313361ac130149a494a4ad353348124980f65d6e6ec334c19113bb595563429f05a6d3584b9f986437aa08165d1a269d9a0a734eace6b5d9c1227589c7b181188e92921076e344c429d1ce8d0829b1b02492aad58918c2442c19207730b19b3373d52ab21f2abb553bfb38bdf767b9409d040e706dea66cc9eb3c4a3cf60674b05fbc685081257c4410648bb2242cd879e5665f7717ef6077ae7db5e831a32af4f24894ee3f9c5e530d6aecf39a720b401424c22a9e492733142ad2dcedd711c889024a999364d929d911cd4e7ae4b196e9238a514148ecdd56eb7d9556dd2e7dbab6cba40302780a68d9bbff1d5fbb53616faf5efbcf68bbff0fcc79f9ebff3de67e757dbddba3e3ddda40e00b199ae0eec95e7f35b3f27336782c54348cc4c22064353eebbf2eaf3e3a347ed6c0d216620f7d5c0e0287466368d932491545ce3b6a5c0cbd4717535ac78741f0130516b1af5623b6c3ffde8e3afbffef2577fe117feeafbdf7ff1c18bcaf4f4f47468dd8dd5bdbc4a9f3df9d1d566c8dd328bde5c59e1d8b2e2baf52699b16fcceccd8062c0337f894060703c91b41fc466ea4294edf96fc21d6e364fbe30665155268991bcb60640e6117b3e1892044ee788f743208daf8e4c951c5918043357b59404c0dcbf839aabc29829711ab40e838fb53e3d5fef264f49fa8e169956490e3b59763ca98daa39a7f71fef7efaf6936fffca2b0fcffc8ffefc090c1f3fdafd77ffc9d7eedebd354e06b369aceb4d3bbfb8badaf9d3d3d3dd8766be00f9f171ffdc9dc3f5b6bdfdde9383c5e2defde3d3cbe17055cceb31ad0880aaa7ae6ba779fda4ae5ec5e2d8758ccde1fefc8bad772ca5296a5cb4f0b14965620bf68f3b114c3531a8b5b6ddc5ecc48266a86909495e0726d2cfb7145118998562f163ae0098a5599d6af009131ceafd385cb07e70bb3fbb713c3a9756939ace44219fd78b739b024cd358dbc0944b77bc5cdecee53849015a6b137372c0cc893cb6d4b10e9da7efd824c706665e23c70fc7a837538a747e219f393f31edce13e17ed3ec4176726676c0d499a2018003aa1a1d89c7a63d8034e16bb02eb1b4aa6daa9919c449726226328b3e43e00a2756376d551d59a45523e64c643a8fa4d7b5cce1242c22d19011e036dfc0147303f17668709079ca32e9357d733e81a7495b33632e39c3d15a13e192c5cdabd665ea4c6daa0d8494b8b6d6cc85bc4b4515e69e84d9bd5503c8dd4a12736be63927611a5b752091c80cd22983dc8c8473cec41cfc5d493c4d93c193889a515a3069fbf91fb1552c17c915e6a6ca049638112925d2a66e2849fa2e984e3463a34e0e27ab4c6d73f7efa3bc981ffd73d28d30caf6bdb18d4649d0e61f77952ce767c3e9f92e97a5b097926a6bb12849b908278025a53a4c759a72cacd746a2de554a7b1d5d6f50b27d6aa89898771c8a9ac167d2e45724924cec4c9bb652f42c376a82c6ed5bd090b08c2e2eaebab3188c8bbdd554af2d26b775e7dfdfee3271b9b707cb27aff9387efbef36eee3b9e2a3d77db2ecff247e77e904c02bd98e1d43def2f902836384dce2bd1c3159ac2d0b4c5addff51d116b0baa4cec79848474ac1f7dfad9d1688b659f52ca89697e7668b7dbae37cf945fbbbadc3c79f8e9fdbbb745bae393a3ed6ed0d692c8e2f0241f1c3a78dc5c6e878df43aefac3c901202912b000339c89992399c34289232f7f81062f5c62444acda2c5652ee8c3d1b036c36b7fdee1c5c5690c44ba96a6ca79ab54012e2f436751082f36e061666216be66e2e092911b9b74a66ccec0e558ba6d7a12c0422013e3b1f2f074f2246d21fde583854a7a7cfd6e74c473d9d6fad2f3859a61b47fde9e9f65ffec187eb4b3d9b1e0f4303a12cf8e12757bfffdd4fffe93ffc6a9d2e99d0dd3cbab979ffcb769a7efd9736fcf2d5b3cbb30db6dbe9a347cfbefbefded55646ad1f4d97b7efdd01c61fffece3d75ebb2b4c040625b289b71f675d63d7ebe25099c9212cc11fc57eaf6ac1cf9e4991732f4f4422d274a68a0202b01341d5770398207be2d0ea169ce732c9c1949f870310999abb5ec3d06e44e68048ea1bf238ec3a7e7ca37c74d45f75fdc1d0d8d5bd69b41171fea82a410ca46d6cad82f2a23c4872b838b80d11d7aa3a5e634401fb4793a21adb9bf9a89f67f099181c1a8bcf794cb1443138c99e3b8019408f624fc434df54cec4264e60370753802d817012cd646233dbafc9e70d79bc70530593a90b912469ea44244c06539813b3c85427830bb17006195a40f69425999bb9d94c4ce0c0d89abac2d41a11dca9598bd51688388901833a0984d1a53456330b7d472b8c455786491b714aa9ef3b331a271750575273da56bbdb774218eb2489fbcc1743550727eab2b466d5d0775920bbc943e2901219ac195266c9b2ad8d8832130b1cb060fac2c0059fcf926aea4d35461333e7d5817ef83d7afc94568988d8d95dd55a2a45849a560a20d2a1668b2516cb8c281c06226709faf9e45af5e5ff515dfeaa3cfe57c5cf90a9acbf2f57eff8d16b6897d131824884b69bc9a92c963da1366dee28b998bb502aa957f36118369b6dce79b3dd02c8298dd3b8db6dbb940918a79188534af9f4fcd97b1fbcffc21bdf5c1edd3a39b9d527566bda5409bc5cd03a7a2887bb991248e3e0673118dc88a8a95f5d0eab83c5dbef7efaa77ffed3e75ebcd5f77cdcf7c2deb4a276f6a5d7daf4567eb2e605c58662e647c19158c7aa6fbead021860682fbed45287aa3158c5831d8b1d66aeaa00a5240e4fcc22fcf0e1a3c74f9fddb97d92965d2e393a68565f5f5ce4c4d5e8f1d9e9d8b6579bdd729586a1323327995add0d35c0ebf3b3ab1b4774e320b51aa0648b51cce39160325322ba9e7c636475b73da1c3181cdcee208f1b60040906bdba13835cdbe010e71c5c46000676040198a3cd619062c6a367fab81b31bb69c89a48c828a536e0f4a1027e784ccb0399a6d65a600cf3dac23d717a7cb97d78311df5ab92b85f2c24256d3a8c9e4bde6c474d3410d6a35fedda54f5c6e1eaf5976fbefd70fde9c74f305a5e4a7c9c9fbdfbf87b3f5cdebeb958ddb8716c969f7c942ed53ffba0bcfc8da383e58307abb56acb6d1cd627c7472fbd78ff834f9f119424fff4bda7cba3e51bcfdd26179642e387e483ca61b22bab572887ec6641b70e854150e7685eb710e00e85339c62373033e0a1f32a98ccc0999b35276257cf6ccb23560b083ab0ad38f9667a0c0bacce7a377785e54ec6a93f7db24ef983dbc717c78b9d64697634b5808c66e83ada676baae66e53ab23712ee5c1b2bf9bd222e040d389437460ee06734d696e608397353308454c3dba450a2599d93537140ef0fc920e04e0c4f39771bd6f9dcf2c620e4623ed97cfb1b7f060ddc1e62547e8fadcf70460b85ac8030964e056d55ab3949c6ce6889168a00f7b529303cddcd528bbaa33b380ac5910578312de544b266dcdccae8fb758b63ba01a92406820ae225dee37c3b635f47b8d4adf95abab51ddc5ac309b727577d792d2d8746a382842aebb498ba02419dace1c39a52ee7f3edd00c5d4aaebe9d5a708afb3ea9fb34d6b4e8093455232211081351de8f4a0c308bb0045b4eb456114922b5552e2baccfe8831fb0c040c90d706662a4d875cd1239f3f81ea478ea00dd23a51ed71424c931f17409794664a6e0d4f1eedd74fa5dbbf175d735cd2a044f24e376cde26072756d9a5249a54cb54daa46d5ccea58ddbc5ff4d993a9b656a771ec73c949866930c05c936bbb7972fce8d1f91ffceb3f7cf0d6b3a31b370e8f6f1c1c9d2c162b2aa5d6364ead24a2f8f4c2223cefe5430ae1e41e771208d22ff2c3a7a76f3d3cbf7fb2f89d5f7e8517ccced4d44b3f7ce5abbe7c3f3d7a8a9d22c185af191dc2acac3cc216525f7e996e3fe036399b88b025338b0d12588800d5b8f5cdcc8cbb2e91ea071f9f4ee3b65f15772fb930c8b4d5aa89fcc38fde7ffaecf46a1c7ffee1fb77efdd11c8f1c98dd5c1c1f9f9854199791aa7ab3aaeac13b0cc259cf61c10720fe856ae415222b2997ae870a53d611033b02ec109a0fd765898897c9aece9e574b85c2e16e28024666606ab19195bccdfce6d66ac3b791c1233b7d9f62c72ee7a595fe59fffd42e0700e88bbff802ddbb270686398c884d0178f376398ecb2e2f7b716255db4db5ba57cb7975bce069a76d21b4ca3ad4fad945dbdad6189bd32d12d282e32273a1619a7ef2d6a3459f067e72807638e098f9c627e3cde38b938372b11efff59ffff8ed8fae5e7be1c673cf1ddf38e8ee7cf3a5474f36e3d896ab340e1327f1cae435d74b21a1246e93ebc0744c340bafa2eb0cdeb73b82cfc12c668d98c112a831339b29dc9889433de530f2d8e3b5e6b63cc4f24875024741b46b36ff0c8220368ce4e61a4c38a48675e11fdd3dd6a3a3ae591eab3369d45753e538754cd5d16a559b922cbbfe7e576ee6726c6e8a898963b4837e2e13a53d7433ab09f6bc220d8d526032ccee2e226a0a426b4a64226916d6060134b4b9d1769b0204def353dd5d1544223353f69a2f7badd57077d84cb4e599728d3857ccccc142a45355b3ec666acc21750849072589d300a0982c5952aa1edc7358f33d65680625854593cbfcc167b2567c4c55cb3935b5ddd404c44492f2d86cafd60001c23cb6aaea489e73aacd5a53665af5799aaac6c655b11b5b1612a2711c0124e292cab65db863d517908ed32420265e74b9b536aaddc8c28eb129098b5062b906a66250ef4bcec1759fa9093c8bf84ad10fff226fb7b414a83b2c89c067aa8cba5ecb33016f55bb924bda93c18251166ab9f97e18a96d4d2b989c120bcaf6fb55ff07ce053ac4028d859f9d5fadd7bb7472643169256e66b974d674dced56ab6591340cd3388c4c747575b91ba652b2b08ce368e606e39c1380247c787472f1e4e1c3777f062291aeeb962977dd62993bd73602543a9124a9d0a2cb078b3e752549e9724e492449f4457ddf2f975dcad94d1ceca620096802e398bb4e5f7fa3deba9f9f9de5f333de0da8f36d63ac5ec4ef1ffb0b2ff1c10d8c6bc09892a981899398913962f11e4605d1298c93e68eff7bffc9afbffdc1d9dfbcf9fee6d96eaad315448828712a69029daf3fed846bd3f3abab8bcde9329fdcad7674f7e6f9c5e5f9fa92987657dbdd7aa307e2109f3586602223e268cf4133300a039119dcb65095d4212d40ee561d14160801b973fc0522289b3b6770e26d5d5e5ca4c38a2260f64527ab45017b6674a5a88e300d9d96696d533598622e1970368bff6bf2febbfe74e00366261d267febe760933b2fe8b833f5a0b7b3f0aeea34d18de3636686b39a5f6da7679357e260928e4a97d58f906f2e8eb61717dffdc90757131fdd5c5e5e6c551da470787508fdf66f7ce378a59f7cf2f4f2834f3615effa72f3ee7a7af7fb24c825af77368d0aa371db86ae7504f75ab2dc581d74b968532686eebc56a4ec66e24e3e5af02909c06cfc8079591d2d36c5c8121cd52867330accec66948452a2a8bf224454b7ca778f64b9d461774d0c04a0c1389a9b6f271682ba9988a8eb34d9a2f3d75e216bfd38c5aad1dc5c67ee9a05a16fac93b656727774703fa57b220b00e635b6b8337674bd498fd991594da383b1b9ccc1e65242b365c47eab4944c4b059e760363b2370004ab14a99471027220e068b99b3ec55a49f6fef63a9e070db2f8a3ea76f05970e0866a3905910fedc1dec3092b9ead9fc4a2ccc0cb39080c48ab0a9394c125ba319028a95b8f8bc9b8a7f1964042798c5489153568b330c4c24e253abfbe52e254166a953834384bbae53adad59d7a59c78bd9b9aa3ef5253adcd0f171d916b55101243e0c3d41cc8c216ec5902c318de6a55c3226586efc606f2cc2e44ae1e03310148424c1c3799b9b0045155faa56e2ee8b3b724c57760d78b35339b37da41ff8adbc6ac484a196a81ea58a834dd2c8e6383932979a559750c6e9f605aa32cf6c32509fba78f2f3ffaf4c9f3ddeaf0f858d59b41d56ad3ccdc2fbaa6ce425c78d8ecc834092fba420c8e4b632e623a8d297a0835edbaaebf7797c049c8546b1da6ddb6d50c1277db0e1a0404c073c99424e752922c724e3923a5be4bb7765376bb75d8ab2b998e4d0f59da4c80256a951ac9f1b1dfbc316deecbeec2c7419b118173c1e10ded974424c3263067e7d91064d6706bfbbc9d26529def8f69985e7ee1f677befdf5f73f78fdc9a3f3f56658ef6a1d5be9f9b5d7eeffd11ffff0bbdf7dcb9765b5eac76dfbe8fc931b27bba7e74fdf7aefad7eb17437336dc3b85e6f6f1d65c222befca0c1585c98997ca2b1210551373db2eda99b8964e4a371711752c4cc60d1e0cfca37bba6ae4015e4b875f7ceb6151db783b22b26e5edc4adee586cd59bd5c6a49cd0979c735f24819408d65ad32a94d4b4c2ecd9395d5da19fb93abc4a76d5fcc38fedf83688894350c3c2b8d868f365bf3c765337ab86b4c81db5ed6ed8d4aae4e6185a7bb8b37b4b7df5e8e6d1eafcf1e593e3a3c39be9f0ecf40a06ca4442defc473ff9f0dfffdd2f7de3f513498fcb45dbd6f194f3a383579e8ce56c57b71f7d4c3cbdfde1d9aae4575ebaa78e2c345527969299404649ea08845e80c94d60ca506d2209301031e4f3be134a3e2bc09c43190583cd42613825f29c2a2769a04c66268949500feeea2c03a46bb2a09949a299e84f641a257e6637c50dd55a0a66676807280021405b1da766ee926571b85a2c5689efb4daa94e446440684ccdcdd4a219dc976bf7fdb62da8b5668e992d382f21436d17b59f899cc0896516b1ed41f9d96d868848f7e55b4d439be5e4b136c435898b299c90e06049a18f8a5f72bdea37b3285539f1e1d1eae06069da826ae930d0bc31767306d4d4cce7af8fc45d4db5364b2989d0d6cdd542076e3007748f1f32b1cccdaf1a7bc9b9ea9484dd791c1b00c944e4adc63ce5ec9c848593560720449df8388ce620f68ef999b93b4af251b5a9772909c930810922ecc0542d5ad5f05e1166b82682566f862e892b86a93111b3a59482922722aa4a445dce8919e60ee5909a137997ede3bf4ceb0d96cca094c2e54985905290d789885c2dd8adc2d47586e430b2f83db374406385ce619b421c188e33787824e323eb5efffc42d7bad90ca95bba6a1da7547a58632638833ce5bcdd0c50aae334eeb65d5f168b45adf5fcfcb4eb3a071460a79c3911933b094b9ccae66a9ec02279a631a89a24c998b7834cdc4ca77132b59dea85c2cc1c9e45dee78f4a925ffcca83b1aa33777d6ef59a0041660ac7cc812b65eaef71126dcac200a136d6e670758fdebcb64684d85f3351292564a729a5904284ac9d9c1f3dbaf274707c7c78e7ee714a6090ba127070b41cd61777562b43faeaebcf23e57ff5677ffde1478fce3e79e2e0c3a32316717303d6eb717377021123816772829bc5281b6d00b928216d3f91dd678e124631b679286deb47af82b2ab51cc6d3e2be9312b3ee6661404c929513f8e95e1cdf4ecd3a72f3cffa05bf58f1f7e767472d28876c360eb9a930942f8058e52657a72b264d8747a2a029add78cc14e9a8ec8649cfcff2ed7b3469f8cd6873e2944a67ce29613be844858e4ad7ed8e3abebcda9d5e0dcd5418eefaeeb3d3ed30fdd2affe6279fbdd9ffdec831b378eefdc393a3dbb2262cade9affbbef7ffc8bdf7c70bb4c58577562abf71678feab776fbef6ad1fbc73fec94145bff867bff7e67ad09cd81b84449849dc190e61924c53c91d28169bec60da1b40ec591673833e13a14c99d809619b32235c149030044429f1ead89f3c161175c3d474d5b59b2f506d7b246d46ae5310f5e04462e106b5377a33f3d021389c66c2abb9bb9a0236d6c1cdbadc755de9fa9e39a96bd3d151c208298c8c006724e29908180225a76bc5f21e9f9bf9d414db484630dfe7317136d7c13c72308bc161b667bcc3f600c22c6763eca71ddf7b49c0dd2976ffb36468e61b214c09cc030f14506dadebfa71ac3ffec9db1fbdf7e9e67c7b7c721834b3a8cb0626e3442cc4eec6f3f668227766993428f0d1639188d01ebc11ceee1ade3564a1cdf0c449d5553de732596b6e4c52b2a422bbdac2406d5e818b6ca78980454a7dc669ad0a14e12e631a2b087dc9aa68d5fbcc8968ac3539fa242c3c8e2d390efb6cae536b909452ea923cdbaa3aba2ec14ccd5842c99042831d2a3626c93911b91372ca6d9a24e5899cce9f2c1fbf2d051ed21b626b2d33ed87cefd3a660f85b9592e8444dc98883c9c38e0cc0c57554056848dd895ab28190bd27426e3e39abec60d704f2cc36eb8dab5d5d149ce79d8edb82a9852ce0ee7c4536d01449a6ad72fe0360c3b22ee4a5fdb44b9a492a671d7f7ab347b92cda7bd339343e19024aa1aea12b3f99832331212e292b333c5039c92ec3f1d4db59665596621709daaaab188bb3193380720d9ac09125ad5c999991a8599e12c6e42d81f222701a8858c13b3c823648ae64e8e78409a4e26dd506dbbdbf65d128a3da5b9fbe9f9fa952fbdf8cd5f7cfde7ef3ddd5eb5e7ee1efda7ffe4b7df7ff8f8e30f9f7ef6d1a7e767cfdcd175cb83c3a3072fdcb87bfb78bbb90c8fca40d033b3efad4e881960f6c6d35555e322140f5159a57a85cdc7edf0b570838203464eb31f486b0a263093c1cd9b36add3380e66365c6db7a7e7cbafbcbedbac01dcbc7fdb0c69b31b37bbedd5b66abcaca594d8936038383082f162492218ccf2dedca6cf9826a881c8827f6268ad955cf4aad5a11edd3ebcdc4cdc2795bcb6dd661c29c9c98dc3ed6e7779b9066cc9e5c34f3fdb6c87dffad6374f96fdf7ffeacde5d1e1c9cdd5b3d34d2c767ff1ebf7eedd3dae9f9c2fb46973324c8d78b0c76fbdf3c31fbcfbc68b27cfdfbbf747dfff5055c9f7e0074bdf65e1e4e182e54d726ada66fa9105816ed6250546c13c4ff8ee41c198575d4a1e0c62383809b96b6bac45ee3ec0276fbb364a6213ec8597f8e098769b6bde89ef1fbdbd5d561827909b9a06fd88c3d860ae9bdacccc1db54d4d6b2972727c92721691569b6a0367b884b1c4de0c27800a12620bab293337779e99ecb10c0fc4dbd4026a86dbccc5149addd3d4c867bfd4b0a9212667720d3b813d88beefd06def2a114692d7fe9ab0785dfbc232227695cc42008fe3b0deecc6a1bef05c17d2ccaa36d5297302119c8b142154d3e0e49a2acc99c560aa95532682818401d7d62c7455b826d9bbbb435b6bc2418f8cb72a2204e4945b6bcdc0c222c492c68aeb0d44571233ed2605831989699aaa194a2a601fea94049264dcd628c1004dad99535732805dd5cc5894541b5a736127784a343527504ed26c52b5d2e52cc99a3183dd838b9f52ca9298c45d83545a5b1d25ad4e3fe6f525f7a999b393a9f25e07de9a85add435bcee4d19941203364bf23c80b518b094184289dafb8cea54e0e648e45b9a4ec92526b624bcdb8ceb5d23e17118b52a67ed974b66b0c85475370c00ab36661a77a3a9964e4c9b03c2a5eb16aa93b00fc32e993707542d49029c7cee2ce2fe085754de5382be604a65706291d074cc96b984dc170d9a39b9ab058f6b7e5cc1335cc5c99c01235030d6938813ab39cc44d8d42c86e46b9397d90783e633b0fadc7b396a6bcba39b8737ef3cfdf45df7daf74500384783d6ac715abef5ce47ffe5bffccb07f76f1f1cf4aba3e5c1b2fb6ffea3bfd565da6e865ca4f4e5e69de57bef3dfde98f1eaffa1432025388841ec46370de8ffbc49213c1d4cc8d739fba9be334789b203d9193b1f3ac232111684c9d71769a359d86a9a9b5d6cceae1d162bbdb6e36eb9393236dba1ba7691c4c9b9abad5bde712a9f3d1c912546d6abe3a9a6edeea3f78ec85aabb2c7ad4c6043a3a6875a2bd409f93b0cbb297cdf9e6e6ade36e7970d94c52ea574753d3ede5257377b85825c7b3f57ab7ddacfafef4d1933ffcee5ffcd62f7ffd9bbf3cfef86f3eecbafee8b8bf78b23b3929fffe6fbdd6aa9352dbb5f01d3047c9f9f2f2ea7cfd0c7c63bb9bba9c73294c0c9888b4ca25a7ae147030895be309987d3c45928b78d32f7aef0478ed664c264902cd0edf61f0ac9d75378efde134b6a3bb74f33e7ffa9993c99d05bdf84dd46a1e3e0d6c7b6c3b2aac99baa904e066461eed04c1f788b39b9a4eb5baf972d19ff487b9a458f94fb5325898d505c86e443c57558393b910d40c80c10c81b387eb4b0c06ec4e4e0496f8bc6614360f6e4ea198257677fe821f4c00f088ad036638e55af3fc0518fd0b4bd4fdd52710530a76591656b6711cc7a1d65ddd8db535cd996b6b47cb83dff8ce2ffef66ffff27ff5cf7fefa73f7cffe8e8c0c9f6db8990b505ed9ec2fbda106650b1e748c431ef28b93891b98ab0c160485dc2b563dd0c04494a29e5b4a9aa0a76cd49dc30d5d903bc2a7216266f93822104b80fb5c121994169a84d1899f9aab5e6e8baac8ea1aa30e72c309faa499152f2e5669cdc0f66fa8b47711776859b7a0eea10e0dae060660549ca39090bbbfb54c7566b533fbc79ecd39519c8893d3a4f0a0828fc30428f9968f63e4a9208ad740c81b77dcbecf0b828290be7f2deffd1da9a4ac7293b4048b001f51c7b3fa79cf86c3b6d774ac44e6ae4deea66b3d18d2f96cb69b46a552475a583bb56cd398dc34e92e4926ad53a0d30edba5ed593cd8c05b65964e414c3b3aa108367e906cf32836b032c0e3f0073276262b6b02db55982cf4c2c125b06613272334d94421f1f3406623824142171bc3187d0cb59044ce6b36c65f6d1558dfb3510110f4285ebfb3f7de7f69d176e3c78757dfa709aa62e93cc2783bbc1d4bbbe482917c3f8e46a6d1f7b027ee92b2fbff20b2f5f5e5d9955751dc736ec26c22c0c2130cbcc60119e89c96111454e0c52b3107687ccc48d542ba725b929936b387f81cd20e4e68985882f9f5c9c6e48c8556d9c6a265ff5ddd3b3d3dd7a5b16072d541744e68161128801db8e534e992537ada60d2efee297a7edc467e74ea875a70cbc74cf162bdb0d29e5783885851947878bd3edfaf1a3f35bcfdf5f5f5ca8dac17255bafeb1f2ee6ce7b00597eef8e613d5cbb3f365eeb7179b7ff3dd1ffefaaf3dff4bdfbaf7373f7a0ae6e551fef77ee74bab83eeb26a81bb8133c3542429792ee5fefd97cce0ae61099652419d0834ecb670139019730279759dfd90a133711bb38ded2c5b8f6d27fa05d56d2234b4fdfe90427f2061cb134bfada1cddf4fa7728ff28d74b7ded1734f7bedb39c14cc1123575de6e07f52cf4a9a60409170937576de6eee66d9a9c7cd12f4ac95dce29b141c3b625b86e66e2de83c469f6806430b9cbde985e44c2b76ecf4cdf2beff74e30be8798f005fb3f5cfb6cec211ab0e8ec00744d6fc7f50227dcc182324fd7b6a6a06bfba358f344fd0278bb9db6bb611c466d4aa0ae640e1d22a55a5b6badd3dc264f929809cd4b4ac2d4d440422c08238c78fc9d5c414e66d631c5c2909992a4aa7bc20cb3035d2944a6cd612e222989aaa95a129ed6aa069ebdc042e2cf335546a435afcda0c84924f1d88c0842429ec6daba424568373527acfabea9d7a64ce85232f3d6342694696a2072e1ae9392a55633b62ee7da1cc4220cb870b23684c7a60aa75c44a469d5d69c20922431b9210618f3c4a13bf1e85379be0e81cad1bc576722f2ae37a48cb1b9c7c91da7a311923ae3eccf5302f7277b7b22bff69f89d33aa5b4be5aef7653bf38ce6c8e9d4dcd5599a4ed1a3367ce16e2181867de6ed78ec644c3d408e18fc9ee4aa034552d9209d460a4eeee24020561f6cf15e2d9bec49d60e125c4cce12e0b8f0a6b668039e0b391bab9803cd8576604ecedd6545228f7b49a32736252dd7b65ccd28be00292cff2f379520df36f55e7b9992710ad0e0e7efee31f5e9e9effd2dfffed83a33be3faacea90734a7936bf4e59faae84536c49d2d8b37b9da6611a76bbdd9c8c91386771b893249130e432d558bb31050d4625f72827beb972118400252568031ae73cbb9045b3c2b2dffa5298ed9524cf2e1e7ef0747d7278a0930dbb1ddcaf16abbe1b87ddb652ded569b1284e324d53532716b8d556af769bd5e27098a63eb12b5c47296578e36bf2e823da3cd3e67ef396dfbf2fcd4944bd31e6062433d47174d26fd6dbcc7ce3f8f8d3cb7541d72ffb1b77ef0a9d0f9797ebf3cbdd34de393959547afce869629a36eb3ffb93b77ff5175ffed26bfc573ffdf44b2fdfba75e3e09d8fce6fdf3b145796e0b0a9e60c22529b363bdc3864a692e76d774222a0b6ed2a532f422eac8dd14ac9adfa6ca240126b54a6b457600ac19961eb47967a95a25a094c9ccc66ae3a910b279fe5f48c69e46e81affd46f566eab4db847d47b051f7ad10b9bbb619ba8721349f206f4d093c8d2d163f29e7e56a914b4670d42df8321e9547cdd885a977e7c46caa089fd81952df77d6d7d62e70063b826d3f67303091c203a398456dd1fdec1d74e2c76cef7aecaed7acda60ceecc5576c3e5b42c63c4c2cb3aa998584cd6c98da76a8adeab89d089453e2c44d753bd94407391b93119c888661988621a8e8e4f1b49bb6a67bd8cf01534bd7f6c2eee6545226706d3af353410c660f4b266dda18145354006d711e32516bd61c99507207e5561b3139b1535b94a266936ab486ccb9aa82b8cfd9159b9df685b3603b5510fa9c4cddd4084889aab65a3544c84d1b13bb5a1296c443ad04ea8a8c53dd4eba24624ea196086a1a9973295d57186a4442e2b066deea54da9018006b0ba9a05998bdc29abab0cc1a62a2706ec899fb1e08d0780e4b606288b339916d3243d342cdd81a66690cc23e2276e324b2db0d539d6445aa15e65c92e99c11b41ba75232998d75db75791877cda69c13272484a9a4e79c003320c14db529d879be4fa2d44a1273675033e5593d12ab223302143013a670010d9fd8f02254dd977437c41d090f39123359acb10085138562de67bc75366391d965397887eeccb3210863bf2cda6bfc548d449e7be5d6d5e5c31ffef1ffebf0f846624a9296cbbe3f90be2f7dbf08e1ae79ad55d4adaab19a735a2e0e76dba65a638c306e3e5bfcc4cb07fd2e646c8670fcd1e6abe75cb7343e254970f6d6889856cf931cb82a683ed27cdea6eea97eae9c134f999f2ddb960f5647afdc7fddcd9e9c3efee4e387927c7db11b37db7ed975fdc24d49b8b5d6ea344d63d5094c971bbd7372dc9a3435b40a217de105b207140ad9f639fb8bf640ab30736bcb55afad3d7bfaf4e6f32f9d6dead56653188ba3be1c3eb83ced1edc3eba7fe3f89d77df6fa53b385c5d9c9e2dba7eb71dffe27b1ffdd237efbdf1a51bcb45ffc9e9c6208b410f75cce44aac0e160649cea4ad5ad3a069743905e94544405eba88acd0607dcd2ec46e1022e99933e93e96034c4c9c17fce89dfc933f6b5ffd553cf88a8f6b92d92e71ef7a396314b3c402e475246510a3d57d876e5155cd5c588c4c432411e27e9059d816a9aad53a9969d7957ed5972eb1b99951444bcd46bc86d826ba9867f714b72191ccc02068ef1c607b62d50c858765e9cc5308e78979adc5a1610e13df20dd63ef0a39535fe89a18cfa14dc39e45195a53094c64ef227bede15cc736aeeb34aa2a9a996a93c4c2d45aa5d4132f79d81de859cf4c7cc022808fbb696acac1f1754e2985695b1c546d36e97107bb1133abc3c12585350785877db84404bf9283b04a60f3ed76e79c7d26114158da6c9e8e454ad57453476189c77a913b329fea24894bceeea8d508bee81213c651bb9c45d266984cd16571b3aa4e9216a598eb587d75d015c1145db3a3cb0566d3a44229890f5ad591994bcab467e7bbb981b92426e399956b222949221f315e2686839abba945eac1ec3836dbd407cd848cc8ccb250ee18d0a07bcc7cdc588ad858fb077afbd7d2c5f77cfda94be1d9161ccc332219bf7cbb9d2635ec862e85d92a724ed3548761e8172b37afe30872641102c1d8ad6a250741bad249a420244981c700c246167960a660d646e1bfe46e64c85988109e7914d81f919a8329fcc4298c1add79f6f19dd32f2c7487301116068367131dfe3cb94a9863d60b2eed3c8a3283d8acc1c20d39569d26e0bd950b82702439ddbc7d4b6bbb3afd8c9898d3396540c15c4adf2fca380d7fef575eb81af46a6863e37137ae2f3f7efc8876a38b14e69c9124a7aaadd6913db181390e680bbf979075b43672ea70f8a59c32a64b8510112f1e68be65ae912c61fb1541b48e7ba7377ff2f8ec7ff23ffe5fbcf8c2375a1d8f8e8fee3ff780d8dffcd19befbef5eef268f15ffdb3ffe24fffe28f3f9e3ee98f17dd2af55d0fc354c7a9ee9a4ef5dc17e525915bd5c112ced9cd9a3a0913416bb0ac0d10123753b7b06a4d34a81c2c8e4eb69bab71bdbd7770b239fdcc6a33c9b9eb97272787c7f8dacb2f1e2ffa1ffdf0c7d3b86bab9369b7ed17dd6e377cfce8f495e78e4bd7ef1a75c9af061b6af7bcd9a18e9303dd9272f1cdce1cda4cdd7262617690c1248b8345388988908986169598a1e46661c869ae80f0ac007303f8f493b405b6570d449040c9ae0d652209c003f7b46bdb79c76c6010b7902b2c9011f3204341d5e06666ee1ad687431d1c544a3959ad721133a7884409c9c63e7b8445e091a39081c29cdd424a1afc90380c66724e74a97b57b9581aef59b1ccc4a44dc12422d334b147df467104cce130fb6a319783391660e645e59ccd4cb525913053a3b0ad60b4aa9bed7a1ca75a5b533305389999694ba9eb56873af974b5eeb79f94edcfb7d3fa93f2fccd175e7047ce1216e4212cb07dae8083dd559810dbb5fd78c2446aa6e6e15ce7360f2e811288e4d06412d1e5386d17375e7cfdc6d5fb3f579bd15c49d84d539487454e83b7ddd418126eac5dc9e384aae6a67dc96a36d4067849524d47d3e3dc9bda584d124a925dd3e6462425e7a65acdba9c00de8c1ab1944c04b3b0c816c1a48d88f2b57934624de2262c655e53430d220e6761acd7b4db52849278a8d4e246c31e829a692b14a6a6e094ac74f1a5cd4d489c1ecece364c07bf317de97fb5fcd17fa7f30f8dfa506f81c965b1aff244b0f3abdda85eb455472ed95b33d752724a8960d354552b48c7515b6ba66d725d2c0e4b2e3a4d02b8bab3e74ed293b37529d2e7c211aa21c928851ab0b596f62c2d9d7de534b6f7ccac6e6661e94136c7de20547fb33fd86cdfcca09995d55aa33d5815b6880e9fc3ae84dd8d85cccd5489c960c1ff9d69067bdc26d49b060f9becf9db239048bf5c11d8d488853999791dc7dd76ddf7e5febd1b774c193235657cb23dffdef7ffe4afa4e49493f351b77c4d157d97c09899d86632b35f4824edad96c5b5128bae5ec7a2a929289164d389e60844c0c141b3dbdbb832c3616dc0777eeb6fdd7aeec1176d237fe5777fe5577ef75700fcc3ffd63ffaf37ff5a7bff7af7fffa73f79f3edf7df7efcd9a7ce23dc6e1c1f27cf1ffdf4e72f1edd40b8c482d41d8424a9b5e6049684d9833b802f23824199a424db4c1be9ef66b5cbf3d37b2fbc72bb5bbcfbe37796b76fe7971ff47dbe38bdfca3bff8fed7efddfdbb7fe737bfff177f75f96cf3ee679fedc676f7b9c3659fce2eebd14105da24bc5c1dc8ed2fbfd716cf3df9c91db82e8f9412cc127103b9539f24b1389341011cac6ea4dc259a553620984ecc450896168d0ab516fe6b664ae4a082699bea8e0ab43653750e1921ae131863fd03b0a9d26c881f0780238c56f6f91b3a0b7942e9636ef1ecbbc3ad8d30ebfb6eb1ec4bc944a6aa339e12ae127b9d4afc23c7c983ec96dd8c2589a43dab206007239e6de4a2e63ad175b9d77de05434ef04b2a66996da467b33d76f8dae9f3eb774ff42fc8b31cf12b9a0d5e7943949ad751ca7f8d35a0b2e4d4ed2604ddb7275d02d8eae76bb9f7df07878f8e8257a34d9e5ed0737ffe0e3a3b3bafbaddfeddad482d9e27bc250a0f8a6503761126102842239cf9a594e0433374d2200cf25cc49f6e92bc10466e893cb816edd7ee5dbbff1c30fdeb3d69c292711a6a16a14c7d289d6b046357226f2aec87ad2dda449b8cbe286b11a33f55d6a6ab5eab22be63c8e56045d2ac36e57d584b5481ac7a135eb0a1368aa3531bb7b97128ca6a9e5944bcac3a806648ee378f62275d310fdc5a66286d363dfb17eca75f01297db98d883cbc744e4fbd407a334830d665656b65850e01201c661d63432085e9ec7708edd23a4bd721acda94777cfc9661db063bd9d28a5d5b2db0de36eac304bec9dc8e16ab1be5aab4d928888c761e766256775d569e2454162736516269aa629fdeca7cf84bdeb1227493997beb070c9d275b98877997266116627220f1eda1c67e724c46eb393af9103ec06336d3c9b28aa86452d24b1aaba835c9939d45c7bcd9eba9993b8441c305c68def9bb7392d97d77ef9538cfa4418704661069ee65e606218c78e14839a5c2006d761333338bdb67cc9fe69c5bf336ed5ad3aa17175725f349d7a578ed99a7b31f8a237f746f586804375577026730b9d518f967c7ce392f34647de0809edc25e7d3a7a7ff1fc5fd8b7f7efd1ffce6afff83dfc40eefbdfdd1f7ffe64ffff2af7f8f73feedbffdbb8707b7fef4f7befb6cf7e9e9939f1c15dbbb34cd7af299cfc34ca17067825362560fdb1f2e7eb6de8cddeab9b6db0dbb0b816d3e7b72f6ee87879fbe70e75b5fa34591da11f9c3c79f56dbddbbbf38baf5fc7a3d98f36a919f9e5e3e7ab659241a8666c62fa643bdf5facf15e767efbdb6582e733a83b9a019a979126206277167b5e9e8f8563f1d9c3f791fa6c8894ba6b60509e09c979216e18e36e78790b924de5c72ab20c01ab9c18c4bf4109e52da9bf9d03e440930de0b29f973e167a4e1ec1362cdd5acb9db385655e4ec3953c98bc572298236bb3d40e6488a997abf776d0ccf020112a10715075fb353e64cb188f18a7f4f01c2539846cd56c6c40159ce2c4687a9ed154c3afb5d60f668bc36b0bfa6c438f99e2d0a33e384ae646daada76e3b01b865623594272ce11a2454429e792979757faee5b6f7df8e1078f1f3dfdb5e770780bf9e8c6d9cddff9d1bff9577fff57ee64e1ea6091381b66e0d590a52042d3e66c61373892b02af6ca3230a794ac45270f77672118cc4cf659e84ed42e9f3dfce0139744a63096c2c4549b01c8225d5fa6b1a9599214dd5f4a52a7d9b67e21428ea19a30f75d01d026effb0cc230b624d467b9baa80ea4944a928b8d9a639133dc276b4c0cb3be138335f5ae2437a915c29c99521037221a8d664b9879ce663153663112de5db25a28775362be365ac0ec281526af1c146ea6d6ac2b901c9a8a7d39e0d92bca0c9eefb03ea1fa784e0d36c09be08868019fcd685ad3ddd8522a229c9884589b775d81db76b3d6565bdda95bb7e85316adcee4a5f47db720a2da423fe2b555354dadba39a651cd2b68707221c4a19d04cc48254b9645c725a194223995ae749d09214949922925f2bdd50b73909401285c528a07c19abb5b12767373c59c02c37b0bf2c06ac8e7343b382891609f9811320ddf7b7134378e2e7e6fa71eb4d3104b318bd00c04248fcccc999630d50abf1283732209d262e90a113d35f4b00322c37eaedc079805e889d90368f61e740af5a4ed8de442c3178b89985f6362055888c1bbedd626fcfffeb3c0abdf7af1d56fbdf8ab7ff72b6767a7b7eebdf4ca9dd77febb7ffde7ffd7bffecfffcbffbe3c3178ef7f1d1e14c2221fe8d185227269aad12c380cb4d977d6edbcbcb0b39b8f1bcd636ec76bff01bdffeecbdb7dff9f19b5757c3ab7feb57974787e75757d4b66dc07b4fcf1edc39ba77e368bddd696d0f6e1dd65a99fc85fb372e2f371f7ef0c9c9bde7afa6ee49ba77f1f8ead57c76727440f4e966d8110e53ce2269de27135dad2fafd6db454e442ea944a332a758a59571265460f681266703dbb4f6e96a4e96818b144744ffc87526ec75a04f0b0ed2ac030f97c3b9a246eb60507736d5364d53adcc3858f96221926e38ccd49a46520f0973f80087e48685c35199293535b80007a00c16d8ace09f8548cc70a4f01d228f907b266ef320c07beb120b9391cfede9c399ff9a03137461f8b561cc176d4f426e2a891dae4deb308cd3348dd32c68e419282042216111265e2ccad9f9f6f7ffeb7fbb7eb635c12f3cd7bd7e77dc717ff797fed33fffab4f8e65fbc6ab47bb51c373472db227673a4cca8948551b2389c8388d51fec29f35a8e5e428899b356d761db4146fc50cb09038f176bb3d7df8b055cd22de4c28b9f954551870cf92556b6868882839ba94d7db21b6c94578aab5364d445dc23456732cbb52ab56b765c929f9d4aa39e524597898aa037d1607359b3d7552a166de9c7a11e73c28721c314c22a90d16fb42ce9c4b4f0edfafee23df20da56758b2f38303791f91bffc20de9b3fb0ea42b968b5fe7d70638189ef80e101fa6e923d6c953deff000c2b97c3d8cd30919ab6667063f2c5a21bc6ca2549a269b2360d6ea636a9eab0d52e7753d3c5a2efba8e8409bc582e45a4aa4e0635a4a3c3a5850f31b2a9a956990d867c9aac5665d239a171e6aa2512ee3beb0a49969273c945927499bac2a5935424a7243c43fdd10369d01875b619e3193b36378f8dc1d46a9204c0558939111b8cf61be4391380e798a99932c898251be62cc480c63ed6adc1c3fab1ed632ac3040ce4aec589140d0e1261490e769f80817040ae51cd2d96c333cd9fcc1a1311e7f9e86209168147a20db990cc2e34fb98055723b7bd7c5c0c9b9fbef3bdaffeda2ffcff51e071b9be78fcf414d0b3478f176979efc6739797eb5c32d1e77666f381e58855181148e644efebb450b8abf2c162d9aece2e2e70f3ce97fabe82cab7bef35babc3a30f3f7ef2ee9ffce52fffe6b7f2a2eb1abdf81c0fef7f7c7e35eca6dc6549c264f695971f9c9e3f33d59b378fc19c65fdf3478fb7bbf5302ecfce3e7ce9f94321044faaa4d4a5a4aa66aeaae334b6714c8799054eec7c045ac39d28553932789840469a9e9b5d87c61119339c9c72328f54205c9bcfccae25d784ee399ccf0071875d9bf39812505b9bc651b21f1cd1a25761738b85a77f21a6db0021220bbda8c3552315ca9c08c5d1397584b4cfc3a339b10fb338250e13660e1ed0bc669bad08ecf3d46f07cfd115e17cc73c9b57b3a9ce718034fb4ccde90e4024dc1a6c1cc73ad5699aea545962710902a524c494c22279ef0b96250ddbf55477e8d3f3c7f98ddb83527ff4f57f3c1ebefcde4fffc57337212c208efc6a6d6a8e70dae19909a1b32e678ed1730e8749f32434546322d94332492849b2397d853d0e2226f2767070f0fad7dff8d1073f2617304a16376b352255bd643edf99aaef93bfbd4b59dbd60d6e75d1e5aa56d545b82b69185b383e36a7716c87ab4e184333264ac24252eb3eeec6a84e11ba227d4e53c530d98d9394126fc649c873e2585cb987b78569844cb110dc55e7adb08122787e5e9b479311e458034138d4f710e15a2b13e09e3b92c41ea32747571828941a81f3a14f8fd1006127631254b4c56b6df52a6c8c7cfa69aa9bcd50abb666e7670fddd2c9dd3bdada380eaeade4c49298532ec939ddbf756b6a364d5587514d77c3ce74ccce7d9f8f4e96e9f2ec92b3a42e27e19ca5ebb2b098997b63222dd69a9a07c129e41e950cdbc6db0db94d8e0ddc85a508b1909097ae704a5d9fbb8e4b09c3052985564b1e0011ee4ae471eca9b81efb9939ee9d66819dba611fab3b6f265b6bb10b6162805a6dcc242c6a1a996a81a244eac53c22ecfd4a7c1f794a9cc30c90393948d567e533040475179a154bc489f72c3707cd8b16f0fe5cdebb05b90b0bc066d74e5873910d54cecd9decf6dddbdffdb7ff19247de56bbf7c7272b3ebfae31b3724fd7f2fee3138017efbf68dbeeb0dbedb5d516cbcc2a1c9dd10858982730f01cd7a7a8ae4aacfc3c78d0e57cbe1ececfc53baf3dc0b6df4cba7cf5e7afdeb771f8cfff9ffe3bffccb3ffab37ffc0f7f5b9b27a1e76e1d3fb9d85c6d9bf7e9b04fe4dada74ebe8e8c9d3f367e3f6e5e76fbcb2daf1fdfc838fcaa78fd6e3895f6d36478707ac3e69ed16ddde9103ec7ee7c6fdf7af3e9cea548a80e0e9a68f8f32264d2735add835126fe60e372633ad68e60c637662779539e961c6b3af6599b37b805b8c77ee70d770b45755336350ab6aee8b6557169af344802a611f87bb6f8d7d3e2dd868569592bb8b240399bbba081604090af09e543ee3757b8fe5792821505367a224d911aba3cf7dd066c9d217edc5827b8636076905d7600fb809939a696bbbdd505bd35acddddd72ca0497c4d1308b90c1c35f656f0acf24440e55f4597ee1f66e91d9bffcdf2877dfb878fac922e164b1bcd8f02b59a6c9494847d5c9d3c2b14f704428c99885c09c5a9d94749ec9e0b51a44b224d319d4320d73309fa58e1167c572314e2c79d52fc761a380a4ec6ed61a8193784a34d57d3a234798250fe3ce090cce22ad999ba74c5dce9bf5a8c022679db455eb5316a2cd3899591121a2619a98d11769b58eb58118ec9d481d6b6bd66516ab1ede1c209698ec9d9834ca02c91c49a86ce1f8ef06b59c006653e399bc244420f6563585ffab53e44282c854731664a05100583083100ce446d4a13bc0f66f18881877b8a2416fbdeefd0de899393163dcec6aa31bb7efb1d7e5c1f2d6edfbe6320e93371a6c330cc3e5b3d371987212a776f1094faa2218375b9026b1a3c3c5c9c1611159da2efde37ffa1f3d7bf2f4f4ecd9f9c5d65b0fa7dd669c86c9b4aa564a9a57922517d9272798133c6cadcd4803b574df55a5c66ece9b217c2baf993d2452324a21139624a51716ea13f75d2792fa2252b82b39176381c88c2833933525fedc3c378c578984686647683397587bcff723114c67a963c8cf2214193eb31a3297f82506091c8988a10609f915b7803bc01106386fb884cda0365336699efef74e6fe64c3e4b0eed3a209b4014414ecc4cd2eb34fecb7ffebfffa3dfbbb5ec4f722a2737ef3d78fef5e35b374f8e6f1d1c9c1c9fdcba7df741bf4a00fad5c1f2f844b59edcba77946f02302a9bf525df59d9cca8b5d9335638c8ce0099867deedc4bce91117b83acbb370e2e2f2f9f7df8f33b776e372e4f2f2f0e97ab5fffed5ffe377ff0473ffec9cfbffea517b6db2b11e972de8cdbf500613aea05ae2cdc2dca93c74f3697b9bbf7fcb77fedf9175f5affe1f7defbe8f4f2f6cd95d9785b16d394b69bed839b275d97d7ebabe39b778e9ffbda5ffecdf76e1e1ea5949a2aca616a47ad5d0c8b5739f570c59c10383b26bab338d96400ecf081a4d2c6d1980c2e4caeeef485e6dd3cc2113c454131d5166c99711a5535734aa9f4252d96e2d8d54a42cc62c4b3729fe69ca299396aaa25e58072449281dd082e821ec870a1596fe27bad7cdc6caca6422424add5c8c0dbebb7c198730b88a3cb9d4de5f78cf559aa1ffd8bb913a9482261576bad0d639dea58a7eaf30d694cc4e1fcc2b24f38309047ec0428dc3ea3b8cb643e297ee57e3b59a0bdf277fb07afeb78e1d6824d28295f2bcda7d6d4349990438485c94dc7aa5d97415eb5466c6d443013f1d4cc5d73e2a9eab56236b0fe184de2e8ed928cdbc11a4abf9886ad9a317155acc7c6ee9d884086719c955ee6a54bc4b41da780d1b394a10ee6e852ee29d56ac25896dcaa3743c98920d3a4b43796d94ccd1c4568d2dacc2827862691ad0e20ea44acd61afb700eb7f1703d3526e6ae97247c2d3b0f555af8491162e3cd2c33559f999d131381cd66cd1a33512230771d2113da2c859ce359e1f066dd1defeff1939f719aa3eae193364cddd7a964dfaabb73c9ed5cdf7bf327ef9c9e66ae8b8393abd3a7e79717c330d549ab6e37bbab9bc7cbe3455f37535732316e1d2d97074bf8619692459868378ebbed76dc6dd2fffa7ffb3fdb5cad2fcfaf1e3f3d05df5ef42f5d3cbd7afaf0b3a78fce1e3efcecdd8fdefcf8c39f9c3e79b8bd9cc67132772731422979d1256663e15272ced2aa319199b5a600d7d6e0d29a1a9ccd8611db0186168783396549a6e749b82f8505254b2e248553e6aea42e49e93227942e972cc42839730ca2ccfbc40256835a13a63d8fdaf60fbf9a3953e29946e62c0188abda01fc81e0a9eb60462e4a6ec0c2bd8c6de2d84c3ae2f40ee5c0ec850202e6bc059e59c9040ab5a26b3cae3002a7194f65559d3d173c6ce1f8e4d62d874ef6641a71fee1076fbdf327a65e52c9a92fe5f0e6f1fd83e393a39b3737d3e5e5e6bc748b175f7ee5a597be76b83c7af4f14f930811339346563248580c1e0a20df3b78ec7b5b092c8066df5103d2d1f1eaea727df6f483bc3c5c94e3cb679be33bc7af7de58df5551d76ad3615e2942497529b0e9367a1659fddfd60b5e83a22e8aeea68bb7bf70efed1dff9f2777ff0d1cf3e3cf3039a5ccae2fe8bf7fdf4d9facffedd9b25d1f2cee2c3cdcf3797dbbb37bf14423c4a6c875f6acd3c1f0bd4699fa53cf7b60e525b1cb9817a69c777ad8e90a076cf68a65a8b321241100158479f1e97b8d649551dbe582c4bcea5ebe06e5a41ec1e23943adbcc9977272255670693109305294d679754f802b462c966612107334b89229f213cfdf6b9020ea803ae26f205635d8a199243d317c6817392eade0ac662e2e4e04f53d536adb7dada344d91e246b09cbac8a94b9c99111ebc6e460e1676da131342bc9dd8d508d80cf660e52f9fa8bdf8edf4e2afea7841ee7dbf7cfece014f4f0f16459b05ac30d629d446aada3377390dbbadcd8bae08930b0b159a254bc42092b0aec31c5910f60d0005e75d0d04b7dad43c976416beb3ac4e639ba145216e358ca5c8549390b38eda9841b09465da54530f9af5388c20e494d6c34e1d5d12738c6a9cb8ef9848a7a649b864696ece20776616465305216732b361aaa1041509929db3118cb9ef2933b9cbded92ec8ac42b00a67279ee9d741e8f0481d8f439cc3717a76074bf9dab2cd6720c20c442699a5e687ff07bafa01527244efd5ac5bf8f1d760ca8093979ceb587ff4bdef7effdd374f8e0fa66ab5693323e6dc97aeeb29a53b37bffadaab2fa72030105aad43ad443c4d6d9c9488557954529bd2d5d5c0a9bbf5e0f0f6fd5b07b75eeae9b52fe2030efcf06ffee0e73ffeb70fdf7f67dc0d57979bd367578fcf76a7679b8babddd5d5f6e2d9f9e5e5362d16ea965b23d7dc959473ce9272880ff754362273afb5ba39b3b4a64c6c6ae330c17d7b6d81e09a25cde87a61c992730a5143df25168a40c5d4712a2eec5de19433732a2c4eca420e580bcdbbd6360a27356f911dc3dc4c985f342f8e3327409d5d38dd76cfd63c78402c14de05342bd867aa2a4590198b2294324ac4c4a26a2cb3bd7f58815358f145272f1cfaaff979070314dd53b7b099384ad6ead387a70fdbc3360c031198c554fffabb8d8453923ec92b2f3f575b154e343b3b84809729bac5d9ecc2f7e3c8e7bbba795407e5dde99d763a49fff40ac3f4cc81d3d61d1d77cfdd7bce530168aa5544ba52cca7aa76351a098e0a2d570737560729c51c85cbf5d0f5f4f77ffb4bf7de3a79f3670febb0f9e4d3b79e7bfee5c3dbf79d161fbef3ee9b7ff6bdabf1eaa5fbf78e4f6e371b6298ad585049995a0c43d7624709f3bc71c70737c6175fd572c0fd02c38e4822facad51cc64c6a16e26435dde73fb466aa4d5bf59c53bfe872caa51400aa754f8417a10ed4dc8ca9cdd6c1b357d24cd50db4c41d4ce2267001f56ac9f68d258b709070588425e44ed796bf6aca33016676e98a71020ea234a3e1f239b571068588924828425badadb5ddb09b869149885d285c128b3083a24196407e676514fbfe2a5fc7f6d2ac77a4b462fdda11f8c56fd22bbf4bd386dd48d2546dd939b1c49a2146cc36cc569b0c4b2ce6a6aa7e1d5e3b671990468433d1541b8105dc5a100f38f234828539690d6b842c895d9b83a4b4d69852e952b3f0e0415f4ace79ac1ada4655ce2919da76a84294454aa2695203fa45c9396fb6a3304a92699a085875c54cb7d3e8a03e09b98ecd84a5f43c6e77a62e6c39f742bc1b4687779d28796d2a05cc4822663acbe2882427a2c83bf7c8804922cd4c272d11e9b8176809b3aab290c2042c29996b2466060fb624822b5134783e53dd9998176457f2d9ffcd85a92ce7d0f20a3dfe96defc2ada9a990dd661f9f8d1938bdde6e0b93bcf2e766d5000613e3d0ebb75aa89f9cf9f7eefc77ff3b3dbf76ebe70fbe6ad93a3aeeb936489264e35c13be642951327776a93b571d7da6ed2f3fbf7c05f28ee04bcf2c6ebb76f4de32f3d77789418ac6ab5eae5f9e6d9ee70d70ea671fa2ffeb3ffe78fffe80fcba25bf7478ab4bbdcecb69b3a8c97575b6d5555d590333273ea32954e329150df2572b8ce1be3aa0a079a3b12313555077c68baab4e8834c700b9ae7393538624945e92e4c45232750bce59247329d275a54b851352569ebd228337a7eec3d04e888e44dca1ec927dde45d666ccc26e2231c1abc143587b1dd9d2d4089ed899c4345cf104a0006d02ae1299f3b27dce0e9ed76f6a35ce18b8c6da4cbdc67000e29c4b4aa55b2c8939e222e0ee564d6b4e257af3a6754e1b15629921e0f03998c7fca8f566fbd6de988d28d3f609d69f3ab8f3f176f187b5abd57b4c9b897ef4f6c5f3776ebe74f3b632eda6895c0968665eeb76c032256d6daa9e38e594c7569930ec6c6cf66bdf7a81d47efad14349fd4f7ef283d7bff4e5d75fbb99c6e5f377ee0ded76d37e9c5ace69f6132703d4823afe05c58fbb0b180ab7e65ffe4d33a57147345b885f275dfa4c8e9a3d239b191cc338356ba574cb55b7582cc24326661791a4aae4026287c1a2a9de328b9bee3196b9e0ee932ec44d1c99b933cb414b9fd30e43dd731ddbc2416f894d20cd4c1d9b070af30067c94d896def674bd7b0d2de96dd54753b8dadd6dada344d5924a784393d7e3e2722c83b7a2d1101dc10268bf31e729fba14646b10a7dab0c405bf708b5ffd7b64936b73a252cab367a7df7ff361a3edbdd7a9649e26b8510484c70c944be1e035bb812db64fb187686a9204eeb57a4e9244b4359bf70d29e2b1e2e164e13a79a4646caa778b9e4c5d7296acda6a6be6e84a4792d693c5982d4c256732af7582531226603dffa408d3b6d62492128faa0a942eb766e3301179df77ea5c5b4b89732e9775131b2f499445c649c3eba65557435f529a9f4d169003738c2e453e0f401e202071623789a7387cbb2d727f2bd0ba940125d2c404526693c2b5eaf109e356876d902d74367a4e73e83320048128aa924d60e4e7ff6977fcaaf963587657a0bf7afcf0d55ebe76eb79bad37a266217b745e6459799b84b99d89dade47ce3607178dca745979063512ce46c06b8702f9c12738ae98a397f6e3e84cf255c9babddc5b3cbabb3abcd1587608f734a9ddcbf79af3b7af5cecd07bbedfac1c5fbb78f97ebaf7d67f1f257c6f3f37118b6579bf367179bcd767d71355c6daf2e2fcf2fcf764f4f87cbcbc9502de6704b92480866b98824b6944b962410b3e8435bd33d1b32e866b38939c187c982a408d2b8d185d96022489925a14b1d6791e225734e39e0a32c498852e26e519085530241a1c2297059e1a46aae481c80acb60ae2acd11483a2dc57b71c0e33f3de2cfa74ff3cb82bb89d1619b0acaeb3db5e106767c70d30aea52b681ad139a1c7719ebb3016c961061e01e5f18d9085fdc89e23e8b327c9e7a94371d2ccb6278dc60b27562482757af542bf7da88bc90f6f16b5493ffee0c3cba74f5e7de185e3830316eec6b6d98d536d6192d2b4d5a99694c2e936100c335c6d86175ebef9f6271f6fd7e3a2c83b6ffe20ef4e6f3d77b39417b4f9d9b36db42d411a9139105cf7ef16eeca2cfb20b2f09f9d3832695902f122779ad9e5067235757577af53357396b45a2e178bc51c1eebb31764842410450cac9b13431c509bd89cc8c1ca88bc532326b038d85ddc3b92485b488c39fec2f1c5a028e8dec4356e5155656662316b3198a99b9084d9ef75f8d135f737983a751c8761d76aabad861436a5c481a6079eeeedbab85f9f077bc1eae7ae90a19c8b5184893cacfeea1687f7ba7bdf01914d5ba6e4ee4cacaa3ffff4948ee08553b0c2acb570c0777347407f504b922425bb2639c46e647639448c2e3566c42045985162776578a2cc828365bf38bbe8ccb83f3411b8f72557b56ddd37cc4c9bdd6e524ccdb469e9722a6933d6b11927ee1765bd1d26cc61c6e7db8944baccdb6954809310b0deb69d224b72f3b3ab5afabea47eb3aebbc95dda2148089bdd342a4a4e75aadb114bab099e84ab2a99200e60e4bef4b92f30af930a1190b82cf2f224d6a8667107a751ddd08378f2349b1d1a7192d66206e5d36d57ffa60e57d3a2e44577200cf3d46a69c6948a2ab99935726321345dd64f37f6d7ffa76938d3aad6d4ea8e3e79ef7ffaef7d7591fb60f584888e93a49428659264206767e6663ed51ac193c1c20a0d1d9c1c4d754a73a48b0596475fc06322790892824c939863862502b5eac37a3bb46760d6a135c3d576379e6ff9eec0896fdeba79fbc1dd5773ca398727ea388e9bddeeecd387d3f7ffed707a7a3a7029c9418f1e3fb9da0e93d376d4b1d6a66d9c68b3df4135374989987292941840664a896130b5e864a3a2b5a642734a959a4d9b894836bc336d4412201f93e594120b134942d717116621c9944bee732e1da74e52e6d2e59c62f3c292d889e72e8fa9d9ecbaede6956c6eedcc2c38337b670523862945c4103c045c738682bbab06c8407b1f7bb3c62c08502f5c26dcc8a164700bfef8f55f0f9db29ad6da8478b6aa9b0f14182cf9fcbea20c39c8d13a1189c03bc3d4a8147fb05c777e7c3a7547077ab058adb79bb7defb68b9582e8f56b74f0e8e5679a8ad13ea44afae3699f8e4f060523585c4d84234d5b628f9cec172bd194adfaffac3dbf71eb8db38b69cf3ddbb2b72034918f7063e3d23136eeeb1969ea3cd887c8ea363a72491bef585545007a1d6da545b6d0092e465dff58b7e8fcf68ec3f822239570f0ea78ceb8cdfec7e006af0066b864a60083c88b99ad47a4226cd3166abef4d81c919f39200730ec7ac4ba130acde0bacd48c9c85d95d898545e22c134971a0b5a94ee3d85aad750a70294be2487513fa42e2a0b308edf56a915733e75081c2b838922602d28550c88e82574dad2eefbc31d1a18e1b0a8910c938b5c3c3c3bffd3bbffaeed93b630d0112a9691dc760a01119cf8212058c9c67bf405580d4e680150f4f7c78d588b99abd74e675c4542bd983e75f5be674f3e8eee2f1077ff6d187f9ce83571dc346b7555fbfbd0270ebb03b3f3bbbd9e774ef9819756a877d393fdf1d97aebf596e2efbb38bf522a52fdd3eb873d45f6cb6b70f970f4ef2b01d57397fe3c1cd936eb1dbb537eedd50f851cae36e7ae3ded1c17269c3b448f9abcfdfee4abab15a0e3bbd7b74f29dee60c16c24df7ee5eec9aabbb1e82ecf374c2130a4bc3c94757df2d73fbfe86826cc01c2620edd30eb9771399374254b039b11461f8621f11ccc648eda6c9c00b3b7ced3bda5dc392acb9c3a498bbea8799b1ce1a541e250e6ccc4eeecc4a6bf5f6c30e37dd4aa95d541b75a54dd34ca403667167115b2b0b16e6a6aa142f79938725d3aae39be11ea90248cba88dcdb7514ee179b77e1c239130bc858242011a2c470e69453ce79d12291b936adcdb40d3ef83073cb9b2918801192f407b7efdcec16b85bf9c1dd939b378e1f7df6699ddae18d9361ace358c76177b96beb5ddb6c87f3f5e6d1c56e1cdba64e9ba98e1bd5d69a73d869c4c89e4b26b2c4c25d0f32a1b95b2314b3588ba5c0bacdcd8d141c3c1f1f0d9b71b670a2593ac842b9cf449e32e794734a7d29d249ea122759e65cb2904024314b5f24b98367bf7b06a987e50e93c35a051007094c95e010d71a869aaed14f339cd43474c8916646e1c6c4914ea7213bad539da18c3d6589e02c4c0a837b188bbbcd4371707928141871154c241b71530dea2911370853bbb56cf9f0e4f472bdde5a3e5899fbe56ef7e9ff9bb5ff8cb735bbca3bd111e67cd30a3b9d7cea545425855228258410921002816d3026da6dec761b9b76bbdbbfbeb76ddaeee4d0cdb5ef6d9bb64dfb671a773b1b1b30d8242110882484109462554955528553a74edc71a537cc39c6b81fe65ceb1c81b0dd617faaaa136aefb5de35e708cff37f6ecee6c7c5a9e9c8574517793ef48bf9e2fc999de97824b933cdf7bf883967af7ce8aee54a9e7d697f6777a769ca65bb724c906df7a946588b0c25b5f9c995bdf6bf1825bdf11ae1a8897f9df3e3140831aa88480c310c033bdf8c9aa66e10d134e306718310464a883e3349203dcd277e922f5486d14c19d060508deb693b022063014629c5fe8ea50070daa74106da79f20868202a6aa0c0d9d9a020c8a956ca3117cc0c0e11300c4186d80faba11fd012da1dc979e71cadbff335aa9773490e4c4c98b5b67981b716e65a5203c33a1935f5b68a29010173a7a0430a350320300b5db7359ebee3abdef5c2cfbc84a622824422167a214422c09802834cc4c02c0d80921f3f4367b26242ab1af3540a31a824728933442405f08ca3ddd3abfd83e978b2bf7ff5e0f0e6dec54bda2de627cb68f0c8c5bda1ef9dc3972fdfbcb835baffec6ed70d6ddf5748572f1fdebd3b1d8daae5b27de60b2f8f9bea8df79d56801bd70eef3b3505d517afee8f8ae28df78dfbd01f75f1e1bb4e33611762d7f3e30fdd6b2af393d9f6a439b5354a6f5fbbeacfed4d2e112e7b61e4c72e9d25e2ce8693a393aaaa527e9c73c562ffa0c3635f78e79c269638638c4ac5888ad3168223e7984d6282f786d005710e0b88340c3a04ad1ddeb3dbdcb3539ddb29f6c6634f380cc3100213154c5a6b3a244404c99b2595763003c0115a9303bc8814c915857a078ed1b99c4c0bc8c0a93dca491ab8a62a61ba60c8d4c8b19a206c344be832002119700d0c04c1dd79be33a7cc3d8f18997d1281651b222210b9aa26761b8228ae7334526816848848202812d3b91242e87b9c2f5b205ab63d0122d2645c6e8d2bb4a9236472aa06a8b70e8fc210d5fb5b2747ab453b9aeeec1f2e67b3161c766d375bc9c9aa6bfbd8abf4a1eb0733d094fdc4ce0d2228b14473deb36347049e924293d0a51f1a72b1913b56238ad154a45b4576e2d89d60972d8b268c58388f4c69225a95ae281c7b760e8bd239ef1c7351b8a220206346660254322402471cd3ac27d9664c1912ec5ed2398490fcb94a0048a01ad58039113a11127ac352bc4992b52328a023514d8735e65d09022830219245c92d86a991d362ecda13d8647a82443501d75438f2c5ac0afbf3d8053bbd353a8de37e88f345db1dcdcb8a4fed540fdf73763caebbd87ba6f5009a01cc118621d4d3c9ce29efab82d987284c0e511137fa2263cadaaf34754a1050490e24d1e4cc128d949d038a0004a092f202ac1f628c41543dbbd178d2346326160debb0524564304cb1f406a092a95f9a59176bc22192a88210331b219a4bbc5e5520766611cd889c2920902180c6358737870fa4346085fc3e22995a52c4220027cd1612aa0a2138e7428c2184beef34448d5152138698786ad9bc4e391e2739625291b80eecc3542d00a29a66657baadaf2e40ac1c892dd0f314fc861434ccb3e2a4b0178cef9c2fdd407dfff85a76feebef54d292238aa0e43c42cc78464fa5585825de9592559b208113508a7a4baa809203c88208277ce102c2a7281086ddb37a7c6e3c9e9f9c1c1bc5d567bdb67ac9b9cdd7af8de479fffc8c741211a2af23044040c22d2f54c04882106e730040931fac2552a7ddf028873a42203ba1882992d57a1ed3ae71800e6cb900c6ec4243218988a884a9fc458a600b00843bade9c73f32e4562619180e0608e7ddff6bef0d3ad2d95286628c85c445526210c100632200b169200c608cd5944c255df11f0b971f5c05e7361a73cbf5355050f4310e8faa8865894891c2408a02699db9a96d0a068c6ec20c5885625fbca908c999d07028da9004c85693a96d1b285273d03f9a44d626e03b5d41a30834114452647489a0df39c1d6ef8c5861a72cc05b24bd202460264b3c8496a84e06bcfae60eb29e3fb34c1fc688de04144450350720e881da36360974c4f0ca6aa1202aa42aa4692f02084d8b78100f6769b1263a8eb0bf7bea25fcec9ac9a8e43d702bac572b56a07051b42982de38d837d45be76b0d83f3c71143a182da9ee565ddfae4218a284180414d881632c9cf785c7c23bc71a8373e4bc4724553603c72e4b2a32dd510c2d88424c5983345f22a74e3a1160c90322131615222a7b478e9da3a628d061d6163b726e60c6a270e05135aa6ae11c03a948fa204515034504471ca224fdb2ad2f6dcea95002946aca1cd2a62a49a8b379ef0404d10850cd80502570b915c6ea97d71c441100052b77cc37310c04b835a9c74d5cacc262d0285238694a2e7db3b55d8e1b5fbaaa1f065402cfe901034449de7d4491305fc4e9b446a418c539ccf707118012f29a9d8c841b63ed6dc7909a00aaa2aa68de4c4a8ae2d3e4740d2178576c4db6abba4ad5ba5a5cc32130598132a5c9d25da8884cc8d900753ba22eade32919e7f2fa11095355039c940f2959d7749dff079a902909864409659a52982023bb33db0b113887124b88ed7215fa5e44458509d17141de332b0027b74c5a9312b91c58026b93545a9c92a510295aa3086073f46709664ae825a44cae05ca3e72440246604bc1286006c66571707c74ed53cf5e14c7c4c08080214a1f232088484af4063359c725ac9d70983646492f1073186776080391a9861886b69b8b964df19677bfa76ace5e79f6339369539e9a5efead4f342f1dfebffee41febae1f7deee39f9e6c6ff9824308947cdc12905c597094808865e54405119aa60c811339d93906c4e42b0500244e38a524ec010095107a65efd2159716f8a9b951d094ca9d028d098991904d44aab20233327465d9752b8d160500a4f02eaa4a0c8848c4ce390413113225a241ac1b64e2e955e7c6af38bb7d715a6ed5aa867db49365cfcc19559220579476f76bf731e51016624f44e83cfaa4016760ced6e8c44ca6b453434b23412034dbfc6866b7255269378a04a6ca44a61262442466e72067aca464f63ca1843b86334c057385e4818519cd92a88f1cb22123b0f3de927c1734cf5101d31399c624a846c8a9fd4d7e9f247e28d879ef2506caf509a8a97305132f57f393c383aeedb7b6b76290107488da87b858f5a15b6e132a225a744cd351e59d6bca1208afeffbc9d6f6f1bcbf72edf2b99a65efeec503afef176db758cc97ddb0ea87b65fad168bf962355bac66c7abc549e8fa3ef408bc0a31748b14e3cb9e9c2bc022b19273852f8aaaf44caa4a8ecaa22474c996a616c11268d7cc540cdb365dd31132782095ba0068de9177c80e9c23641c4f6b46d410abb2709418e18404ce812f1851091529c3b455051193322f4f2c727842f258403a6ad328c6c040649d108d60a9111229b68d98e372500172586d1b18990aa00460c2f1c84dc628aa210a22d57509447d509301d21a4d8c19731b4848cc51e21a229f6ba8543a26a71765a5a7b251f2df274975da2ca48996da3a3f03515441d5d44208210c00c0ce35f5a8a946ce3b49713e66ebba2149392823b6d6d217220630d1983df9e98ca7dbe36c3520722a8290bea535bd7cbda04e2173b7b98c98b470b6debfa5e22b0fc952687b9affc41086be6fbb564525462470c485f7c93ecdcc88c6604488c06ba26f1e72ad23cce8ceccbc8dc42665621051c227a4ea3eef90d32028411b129e356f0a74eda2310420031075846541de171285bdeb8e8f578b25a47654c411a961b0a89b9010ca902c4062e753975f384eb341261ada6e7f7fd89ee2dbdef165175e71f762b178f0b56f7ae9d9e7ba93a330ae2755fd558fbf716b525efedc53b7aede28ca32ebff1d536a20931c9609b1c07cff434a92caf041d5a228c02cc0c0ce11a46a26e3d5cab2844c9b480f04e6c9673a0201004855139f8d318991505529059e2013620803003171e199d8ab49e13980a417324a8c1105aceb85002fec8cde74717adf6e7976b7a90b5eb4c3bccf9089b40f4f660b4c64f2a45b1549240703a4b2e4a23424700511a801b2334d21bae99d2223d4741ee7139cf2ac0f95b2355ab3a90ed7520a3040149410a38a3a87210c2e0d3d53f706eb5ee68b67ee2ee3c980889c8a1a9223cc9e5b20f6053aef04582380914bf3251c62f44449e599c70e1a937923e99773e54beb6757a223068383835bedea84089b69558fcafce3319b0992ade6738cd2ec6efbb204a51825c45e15c474d9c508ab215a54eb238765bb9a2fb6b677ce5d3c57d47ebd9b4353e8ba76b65cb6b76ec44ffcc6f1f1e2cbfff09f989ebbe7ea73cfdcbafaecfce46871b238395a456ca65b174337cc668b76d9ce4f5a50ebfbf6e4e844b0ad9b821c774340425fa077bef00c6089b799dae318622a2593093274434841d951d0e0e456874861e8c96de410ea1c3181232a4bf6ceca8a9d73845614ec4b4f8c48967e03ad931b939e201db86046cc31043370dea99a690404428e1a018214e3588cd2b1af12c0b2373781de4c2c9547cc8e90a22098e510e0fce9b1a408c6b5c5c51199217206844042fa0310819a8231704286e27ad599435dd2543a7df70416452469c745354630f3ecaaaaa9ea0ac981c13004cc66614aeaa9acf84c5480dbb85f13d1cdf197e13b6bcc13620aefcd75776e240c52df6339aaddd6d5f1fa874a76305ce7d3326396f4103111638ca15d0dc3d087618821422ef9981c3972794d94bf0053679ebdacc6c884598eb33626e4f6221daf6b1e9f6d4af8fc1b13ca0a718d6042332503000ba680293e2131ed8c10558c9c3f75aa2ea39404518d1d6fef9ce9fbd0777de15d22df02a326092fa2a555902a014533561511342bd903e26ad91d2de015f7ef7ecd37beedecb9d3f3652b02bbbb3b43e8f65f7abe1935ab93d9e8a0fca6dfffae2e2c7feb431f591e9fb8d299091132b924f2e1fcf37051208086109df3e96df1de5b7ab6800ccc1795f32ed90e1c39401249941e15a164194f13183348776d968a614ed850d52892f448ebbc5953482c4f6276be706a2a2148346697b89e31daa20f95730f9f6a1e3a57ddb3dbec542e88ad566d1f8bf5bd9cc9ee9a9347d1b2c6db0c819c23cfc08e9d43f6960628d9d96ba68640a696eeb42892a23030f78e2016a2262c3a8a0aa8185a1ad399643e6a3adb44d5407de989d0441d6ef219759d3a7d47e19034b6483e138e311dd62ee3ab8988d0fb920093cb41a23a4ac502259318a4074b15007ce17d510190813082cb890d46442a428c0c74747873d9ad4eed9d6ac675b76ad379c1848a247de71977f676568bd5c1b5abd3dd9df174cf14192271a236410c41c5c0089d8b6dffb94f7e4ecb667b3a0687d5a43a7b6aead9a56d991fd595eed25633427eedeb1f7be8756f5d2c5f83fd174c5a0d363bb9556fbde6d2857702401c74763c9b1f2e21c2c9f1f18d9b373ffa5b1ffe8ddffa158af8c0a54742c49383a35b27fbf3d5b189b5ddb28fbd5800068558788784e4c19715956a261e51a37a7612428cd19785c82051054c34d1f74d44280348cd251903a1f38e1c3a0f654555c9a5f755e59d27664c024f57f03a8e52811050f2e4394d971208476216e32123ba04b85cb779f9f44aa786983a86048c435e6f52724a30ac77bbb096ac27944eae7c533c7c5a4b262a9ee55b2efda188e840d32c41cd4c6310b341420cd11155655d57b5e7021145834ab2b2a6e885b456416280940a99786db4865498e6bb28a942935e3e271b59ca9ab604a8461443024d10ac14874b944c85bab11a253bbfe5d31c89192135592612fb218610bb5517e2906e145738e7bca2219a773ebd7629583a794bd7fa7d434c9b52ca7a3f80f5861f373755669b694295a566286bead3099f348ae9a5c989a0aaec0a5887f08165e08f112c978b37bce9cb774688a043df430f5ff175df4ee5c5bff53ddfab71b1737a8bbdd79459880829783629b65515d00c5272591cc28d97af9d3975f61bbee3ad7b17f76e5cbdf5ece7af96155d3c77a6ebfb5fffd04f77378eb7a7d3b66f67d76e7ee05ffc38881565391a8f4e16c7a52f1d1739f022e16c8810b1ef3b222424956006bef00828229000878e8928f421b53f4308e92a06b018c37a63415995b94e454fd412cf8e9053059484551b501565663d1b0291c6d047919c9e06160c19f9d4081f3b5b3fb053dc7d6e6bd2b8e5d1e1f1f1e0b80c432f2b2ccadaaa5a253a0946649624730ec8c879f46c44e81cba2461a3b4bc49eaa894bf65909e3a972b0d132464e6e43d4e5c95945243b91af1aa6268cc94c0180802001a0754c3342d268754bb75824cd68e01daefa8dc111cbb227567905fc534c9214032435f965c14d81b62923a6854456fcc0caa8e5944628c4448860229081e634cbc245a078d32209c1c9f84d09fdedbae47d5c97c3e9f2dc6553d1e8fd2c7cc31b5430c1a4f9ddb3d3a3c3839d847a3c9d69e29119240968be54c65473579edf5e078363b3c9e94754f76658429438b89dd6874c6e01e8445d7deb8bebf777cebf8d63e0e8704830185a12fc7b9897105ed9ed9de3db30d000017015ef5d5dff4ae0ffdca4f4caadd37bef9ed00a04bf8c233cfad96abaaac6f5ebbb1bf7febf8f0643e9f1f1f1dcc66f3d9627e727874383f3e5a1e77ed5c340e2a8883730004cc828e23f6ccc4c414c1827823889042aca2a18ac518d13486289a1803ca44c4e018bc2364f61e5d85445cfaa228a9689c272908465555144c2cceb9a22852e841821bc25ac346294a02110d614d3b0162330531e4029373868019d36c2a7579e9410083dbe1d7e9e9dc186411350d0a411202d7c008586214154232b121f621f466c6e427f5a8284bef0a001495bcc34a7a4a4091986041291d2995d86b17748a7adacc37744d3d8675e097c2c6210a39873d810c1151532a6b7291af41bb798c93e2d10d13c411106394a1ebbaae1d86903a27222eca921811b0f02e05faadf3036dad3d48d7639e36d83a8969ed8b48d439978c7c390bc22c69e7d706145dbfc29a1193a98a62d2b44501163047a4c9cb92fdb74084d16205eed4a9ddc564bb0bed94f709d4547efec77fecdddff8c7bff71f6cff953ffb174ef64ff8019420aae88813a52925a2a90535f465b1989fdcece1b57b93777ce57b965db87663fff2e51be3a63a7bf73da0c32ffddc2f7efea9974e9d1abfe6e147350c68cacc43d717de6f6d4da304041afa9e90d8255c73723798aaa828932784284a842a6202a2c91c0022826b9b0873a638619285601e696fccf0681044122b227bd4d207993999e4d3202eaab26322520985f316c5107d596888abc5cc3b3e7ffacca5a93e70babcef810755e2d1d5ebcb835573f76bc7cd647eed5ab3bde3c65bab1b2fc3ad17a8aae8ccddb05ac4d53139e70a476569aee2a240e64c530660e732402541526e1f59b01ec7ad65c26975be19d424af7b123b8ba477c6a447a40005ba8ab8c4d1488b09541370b5f9c6cab15bebaed0684d68832f9ab923113947ec501d92334ddb2a5d8318d115ce1505f6e81004911d9baa88785f6cfaca7c8580113b0525742a0060ec1c21111812f45dd70ffd643aadabeae0f068de0e8543e71d208a4aaa2601ecf068a6263bbbdb847e767c58fa6a349e280829108273e98530cf3e221191ab68716bff7bbefddbafcc677ffb47fee9683c72ecc0508e5a70f06083bef0941078088844e0348dcf917f2f24efc9d1016bdf8cebdcdc8ce0c1d7676cc3c3f0c0effcdd1156fbedfefee1d5abd797b3d962beb87aedda8d1bd7e747c7c78747c7b3e3e572369f9d9ccc8f4ffa59087d1f57ae40e753d633a8a8234a073aaa39226404736a1683f683119859442215350366742e85886ae1a072ce15ec4a2cbdf7059fbf6bbabb5be6fd40fad880594c673cdede3c1a8008a25b0b98410936a8af4443cc137d4ab0aa1ced8c0c8494b68b94cf6558e73b9ba514468028d1404562370ca65a38aeaaaa2e1b629298ec0b9a811d8a96c2de80d64cffa471c9c39375c0aae551c61df3f76458cd0949f9a087db90f475692f312976f0ce5fdd10d5d3849d89d4a4ed56a11f42087d1852119d84682eddcccc686a1a093909722873bc0140c97948f1501bfcd9260a1630ade1d2547ded851058db686f8fe6d7c47ac816d714e34429613965e7c2c6509d32ca1000a074c562b9b87e7074b4186ad79e7f64db39ae46e3277fe1d77fe6c77ee91ffcc2cffd6f3fffd05ffa8effe8c6e517a75b53134087deb9559770892a6621865bd76f8c9ae64ffff1f7de7761ef85cfbff8b9675f9eec6ebfe6550f1edebafe333ff2a3ed7c396aaaf1d46f4fb7b6c7db27270716021745551548e8bcabaa625495438c49ad4aeb5195889868e18b1409eaf3d94786e03223de86ae6b57f3a117442acad2b9c2ad2b00461f43370c1d9879efcb66c4be0030106176c9d4859606d8ca445c9666c68e53eaa1734e8690124606b1eee8787ceadc635ff655f755c3dd279f2a27153df6b587740158dcfc27cbf1a9d53d6fdfbffcd2ddef7d9f1eddbafefce5bd37be919efa99e2ec7d7acf5b6cffe5eddafca8866125b35b72f01c861e8b32c7e92225e739ac6365684315851c3ea4ebec688866266009852416834ab2ef21fa89f96d71b5d6db5c4db5de856a87a8926a1bca1192572264d27456a48e30675ad8efacdc19d19143f479548a945925eb56c8914b7d84378ca688442e0dd4c039976a7666175583869292aacc90402d244250a265f643e73d8fc6cd72b96cbb7e7b32a29caaa4944a7b33c7dcd4e5c9bc95a8dbd32902cce60765ed8ab28c51391feea908420228cb92624493eda276e7764a5f8d4623460c217036e71a65c52713f1fade52ef4b912849aafcbbbe423f748bae1bb5777ce4be589571e79783e65c7df7b98b77bffae2effa8b60356b97c78be5c1eac6cd1b376edd3cda3fba71e3e54f3ff5db4f3efff1c393a3938393e52067ce945559488caa903c8f3106d175dc668a7244719e340da373cc32870861505da6f372390ce22b3a73ba8a31fd1e65cf8869a59a4d1498579ef95d06486cf58d92dc6e1f4c00941f47d91005208fb8295b5073fef51ac88e90080a51e2d0f740c8ce97be1ed59567a7a631063040f44c982139b45907292299091121647f00427212257d7ff6606cb2863340770d6648b7f5c6c66b6be47d16cd108ae8ed731f21919ccd544417ddb26b5b8951c3e01c57556900aa52fa224d3d530e30924b03e2346a484c25c89a45cb136195f5cbc9eb94254a02c7dc3924613e5a1242aeade268d91d0fc849df990e6ecd22b9a42936028d0286e4105045d26bd2d4f5d35ff8fc172ebf7cf7a507c64572782021ee9c3e75f9df7ee4bbdef39eeffb373ff683bffcc17ffe37fec6a77eed2337af1f54a3912f7c18e274e4876e383c38542c5ffb96c7f7ce9d592abcf0d2cd7e155ffde84307b3fd1ffb973f323feab7b7aad367f6a2c4beeb4765e5289d9699466066c8c4de159e980bb1bc824ed302ef7d8c312d401de7c40f0406b076311f96aba21addf5c083a72eded34cb726db7bca4d2fe2c88142551651bac57256d7154977f0d24b979f7d66ffea655fe0646b079944021213600a3e4af7091311b116918840410917bd5884537eb8ff6daf7fe8ed5f1f177af6817bdc93857a3ceac79ff8f11f7ef5ef7bd7e9caf94bf7bdfcf4a7ae7fe6e9c77eff373cfdfe1f7ff627fed523dffa471ffac37f7af685e73ff30fffe1a37ff44f405d3cfd0b1f68ce5e1ceddebdfbea87e1e58f87979e31766091d959d128589a57e7d1bce6d9dadaaa2708822a10054115c8b8b4620b9b71e02d2b26aede0ecd19f553284af30d704104aa1654d18c41c98205b3602ae632413dd3e5e8771f4f08c009b7937b0745485493e4ea305f96e43d0114843da19a154c2222aa8df71283a89073d17490c8068e983926179ca1f54328fac131a8aa2fbc8af443bf3d69aaaa58757d8a9864c4a0d1c044d5319ddad93e991d2fdbe5f6d6e4e8e8a85bcdabb23000769c54264cde4c01454554d599ce8f8ff0cc85a61ab1f39cd6eb4c22c13c0188a8b073cc0e8809cd4cebc9f4eab3cf4ee9957b97be4430ded00d4ce49d832cfb0449f223c7f07feacb43b357377bf5e907e05eb8e7f699df85a73effa983a3c3094e9ebff2e25ffdab7ffef8d68dbaaa29c92dc84549134312559124ed000513d33c30cdfb43dc281088b962008d2ae99b5622a751098d1854c4d1faacce069e147e921fbe843049ca904c46645ed7d57944902324f21d60aaa930c93801359520718851221038efa7e3715994291749349a319227904d8e5db298ad7531e91f9c654c3f00a6515f6ae992821e0c35a7a7dd8609e771f91d157d9a446b16dda4d0533500728e2ca9d10d873084b0ecfb2e0c21c4000a655951d12478ba0190f3b81686de3189e2e4245de72022a46a2639422581d259d7319e0cb876ed26c6c6fa985f6f34d2f79fa57508c42c2a5f44f7334dcad4748fa11964719a66ad0bd8b26f27a3e6fe4b77a1d95de7ee226e4562591721e0e9f3eef0a56b7ff6bdeff9aebff2dfff91ffe67bbefca94ffdd2cfbeffa33ff3cb4f3d75e5dcd9d1eed68ee2f0e5ef7bf7e8ecb9b2aa449166ab6a8b3e7fedfa2f7de857c460b255ef9d1e2744254430b004798e121c738c312bb690eaba393e4a6f4b522ca59dad6252cb02441551f2cca15f1c1d1c6d6dedbdea0d6fbbf8e8ab8458b1ee0d4e66b32f5cb979707cd2764b8d320c613c6af6764fed9e3add1e1e154d75f1e1c7bfec2deff0a1dd7ff213bff94b3f17a59fee9e0685db5cbf24c3757e353b6957cbd16884be6efbe1e25ef3d8e9f29ebb1f3df3357ff893efffc0173ef0f3571f7bc3abffe037575ba31bffe64747956d6d8f8697addede5d5ef9e4dd8fbd56dbe3f6e0e62bbfe99b8f3ef7e4cdcf7cb6bd76b9a874efde739ff8bebf7172f5e6a3dff1c8f1e5e70e2fdbd957bda6b867a7d8da6557c88d67c28da7894bf0556e7393a1d8a299608c22828eb5985a3971db5b529d0ac53695532bb7ac189bab8d7d4f0c2a209110c804c232e551bb0417cda15c8086127b97035dd2567d43aafc629f2a9163cf1ad378364d1e13278810a9280b768529788748a80631d91c98e330c8fa83ad22ce31904b9d23113b76ce3b205c2c9700e61c56de757d8b607559180227ef359812012380a59fc0314da7d3be1bc46434aa56abd5747b5257c5728565e1cd08544c84bd472211d92e8b29bb8394da8ed9c4c89c060d5438ef89d30f03942634bcec162f3e79f9950fea973c936314432caa62f322113b44f8bff8f53b4dc100a5ddfbea071f065f41fd2678eb3ffadfffeef5975eaaaa6a9dba0e8e5df29740a211249d8319223ab70eed3450300185dbc9674ed42446204794ccfa990b058829ae136c73222778bda4006430b514cf9e30e294d058bca9cdd76a19c8b302405549dce394fd22a2493e5455be6aaaa6ae0950544c0dc900d8b44366358720191960a80a6b8e2e6ef4dd88c09bff8a943c7ba8242a09bbe0900d32376633fdce77066509657609655c8a0180738e888721f45dd777fd3074217448e01c576599541629a02b8bee386ff06ecbef32469160fdda6e34c169f399b656d9799ce7f98a6b05e45abc9f23d8d42c4dc352a0708a4e32d1f5e60dbe7862935282d067095dfe2e536877db777bbbbb67764980774ed75571a4211eec1f5fbf7ea886672eee2d4e8effe7effe9e5f7def97bfeb9bbff66bbfed1b1e7ce8c19ffae73ff1cad7befa2def79cfc1cb2f7de10bcfd6e3adc9a49e75f2f4473e79ebb34f8240312a1db3635e23cb015451cdf9427413ac026a924a3d5f14a2198b3f84c181e3c4e78be0b25f01e3d0bf7cf5e5bb1f7cd5977df53717bba743d1bc7c74f2e4934f5c7ef6b9e3e39b87f39355df39978a3044b21865548dcf5fb8b0ed46cf7efe0bb361f99ac71f7ff33bdef1e6b7bef7dbdef0151f7bffbf7cfa898f4c774f533536b0d49c3a57cc8f4f2e3cfcc83dafff8a6b9f7962f1f9df7ed32bb61f3d3fdaf346af7fd7131ffaf57edebfe13bbff3637fffaf7fb682d77ef77fe37cb3bcf9e9c383e5e8c1f73ef9c4f3e0c60f7ecdd75ef9eddf6c17ddebfffc775ffed9f73ff5bf7e2f907ff84f7dcfe2a5176e3dfbcc6bfec877ee9daf4edffbf86f7dffffba3a3a7edd77fda72ffcf4bf59edcf2fbcf635db8f3fa8cf7c241c5ea3b26035d518c8a31b617546eb535ad654efc8e8bc56db528ecc35a0aaa02283c540d2a10db04986c92d69c245a7f1794ad7d264ec5aad966e6de1e3e40ef9dd274fd2aa331662a060d96244689a49d2ccde5715135bb67d233b72ce3362d777866b0f1e338a0166a05d22a7974571e1aeb32a1a43d41899289811123303a308b5b3c5f6ab1e3af7f0439ffda99f27b5a2f04b1004a88a5283c42855592c97abf97c5ed72326ac8a32863ef163d69642d89a4caaaa74b8de8d1912393513536262205003464342f440d64c9a2ffce6f32f3ef992ff435ffac03684105563dc1cca2104e7f84bce70fefd5fbfeb7f225156ede2380cf7ecdd3d0cb1f0856340cba6a41863be2f3545826521e9e6639e202448a80a02e00837439164260015669f6c9800691a0319082562666a2020940bc739c218b10133c8713f40ceadcf595cef0333e36553689b418c51554308c3302070558fa6cdb82a0b3355d1b0a9b8d19b1e113ead5203bc0ab9348d96251b89d799a8fa7123284cff77556586b5543169cbd82c3d686917b876e200607203a6fbc0640d554bf9304588d2b55ddff7433f8418458409923c6ef3cea6e11b262ad87ae29f9a5a4612d0b5041e88dc9a346939c13c2561274f9aa541162559d4e66487f54a10288f1655241b97d647ff1de3a6dfb13f487993948652e9370265dd2a1333f168dccc97edd39f7b5ae6fb47374f0e6eee2f177d35aa6288cd786b34924ffdea873ff52b1fbeff550f7df37ff61fffd9bffc3dcf3dfbd90e07dadbb9fa4bb7ee9b9cfac4879ff8973ffca199c1d7bceec27cd1eb30478414919dd621834a59f8e9a82646268c49728a8a043174951b15bee88601b22d4f8812d0cd0400198e6fde9cd4e3afff637fa63cff8a9bd7f73ff991dff8ec273f29ab7640eb49d9513d1e8fb7b7c1400c0814089858627cf1e517edfca5b77de55b9f79f6994f7ffc639ff8ed8ffcd0d6a9afff83dffabe6ffdd30f3df6e69ffb917f146536dedaebdbd5fcf868e886377eedfbbeec2d5fb1eae081af79e7e8d4d15856f3d9e1e291b7cc0ebb177fe1671ffaba6fabee7ae4957fe84f3ef3cbbff8cc2f7cf0aef7fc3ea8ea93c393016aa3fae1b7bf2aee3f0b58dcfb555fdb3efbd1bdfbcfcc5ef7f6e5c9b0f5c8ab9ffa3ffe9eafebf2dce97e194f9e7ae2e0ca95d77cdd372f3fffa9177efa47ee7def372e0faf2e0ef1f4dd6f6fee5af427d7e2a2b3ad0ba1dae1fab41bed86728ce4949caa800caa6aed0c2de4cf473ad2534473e2116cd644b69e7f65c3a8698cab76d5b6adbb8da6cfff605fe2f021a234924e3ebafca0261785bab2245f9844934880455139c27e1854743a1e45898b76659480464cec20c7a8e56fa95df569419616888c9c8c980e499d6b11afddb8d69e3b558f46592d80866408501405a03a579465313b592c163d308c449ca3b22af33a5722010e6af3aedb3a7d616bd410d31042e2ba20a101a7538288815c3278a373bed71d70f3d5729caec176351e8d6f4fd14ba76c126f77c749aa05ff4f7d21724a74042b8aa26c4a662224354130221e8288c42c124054d08d9d27878b661dba3161322603a1aa26592100c6283e5f45963915d973c596212a8608861120001a12678e251221a5f1427e9cd643edcd2a3221d74524842022ecb0699aaa19574595259e88a0695aa460242aa42f120d846a76c5e0156994b1a985d734e3dbeaefa88ad9c8950e165b1fa992963ac9ee9c02714c3585b7a5285034414426470e4562ca9beeba7e183a35f5e4abc22b38e7c831e17a75b0f64d19273337e46828ca81aa967c5e6bdc67d6e724efd25af18cb606036f14c829a7d4d61d73d24083814649ac8bdb7ec43bf491eb5706efdc00339325e40d12321bc414b29a013b442f5d7ef9895fffe593835bd20b23556559142ee11a529f34d99976cbf6c6cbd77ffb23bfb9bbb375e3fa4dfad827defb2ddff2c0430fff7ffff2dfbbef0c6fef96b5908a862808849032188099006110ad9bb2f4eb16079819d490002d46422ccbba97a002ec53d0342191776e68dbe3abd71fff8a773ef2aedff7d44bd77ffe1ffcc0ad2b2feeeded9e39b3d70fddfe6cde0f832830d13a9a24a6518e2100d37432b97ae32a223cfce8c3aba1efc21062f847ffe0fb7ff9577ff1bff99ebff62d7feebffbd91ffcbec3975fdab9f715effc037fe4e8c6f5475effd8c16f7fe4b31ffe9577ffb77f6974dfabfae5aabfef547bea9ee73ef8a1fbdefed5671fb8b78476ebf77ddbee97bf4f406c5c3efc1dff914690b677d6ebcde786cecebee675be84fee90fba62f4c037fdc1b86cbb2bcfee3df8d0e9bbef3d7ef180b9387ee6a5877effb79e7bfcf14ffeddbf5c7ab8f4a6b72dae3ef7b1bff337e53bbf7be7814786e2d4e4f50f8aab3975b81a492284def2bac7d621434684809cbda5999dbd792ab2fb2ded5b603dc11b4268db56445c92d96659c0edc3fd8bd961e8897d8e83cd7559f297a92a14852bea52d59caa6747c422c2e41c61fa461cb1a241c13e40e1aa4448404406248076d5061103f08c5b9391f7ac1a5369af5143082e8611589fbf39732eb16d0c0552b4de643271ae1ba21465e9bd0f61f04c604aeccaca9330485ccce6a719ceef6d1f77cb84e132200342c682d92359ba6e9808304439b33b3d39353ed83f38ffd0838878f3da8de2922fcae4a8c2202148ab20772e54ff1f39d597437f74342b4a206f3bd3ede42b74ce515a5171d62c2382a211a5e4ca0de521b11f703313478794fdfa8000c43e1884a8de79245201e6544ca643024dd75542aee583ea4094442003904f16f794f30c0888bc3e59c8b237da62901825860000455936a3a2ae2ae70b049018730ba1c6ecc492458609f70956aa1533021c469b138cd7c8aff473c54d1b99e1c6a8c8c8e970012326d884a05926d8a80951e274a35a22ac00610e950e21f6ab7ed9cefab68d5198bdf7ce934f6bbf34b0e1c4f14104cebb5d0123e4b5093763c236c94a6bfe722e5c3666abc46cc82389f5fdb4b9a8f25434016a72f4400a378fb87e91bf68758f7847c17ee778cf3083ca899d637231ca623e6f976d1fa46c8aa73ffec4d1cdab45d150e52acf2e734c33293fbd8fa3ad4914fbad9ff9e5665caefaa106b1e5eadddff1edffedf7fe67fffa7ffbc1fd17faeddd1121c5a4cccb4b6d53538911441d71519419f09031cc29ba5d14c179ef12d01892f694987976b45fb8e2dbfef3ffdab62ffce0bffce71ffed0afbcea15f7dcf78afb8f67b3970f0f83469508a888646400d91688000c20a6064a48e3e9f8eacd6b7ba7b62f5dbaf0f4673f57d6f57df7dd7d70edf9fffacfff99bff6bd7feb3d7fe23ffde00fffd0577feb1fde1209bb3ba3075f75fdf2b3a332ae6e1cc4bdd7de5cbc00e5b9bdddfb1efd43972667764e5efa5c7b7444dd2045d1deb866fdf2200af1406524642e1b628f9fbeac5080db2bb1e6e3635f1695d1d6e36f3691eee673ddece09eb73cb6f5ea37bef04b3f37bb7af4d0377fc7677fe8fbc96f3ff0cd7f7cef91479effc97f0d3cd97ee51b408435cab05a47ac6c70e1b7597296540a0804647976bcbee0013043eeb20a592d8618ba6e156370de39404e72b8ecd7cb9319fc5d75a4b7f5d2082c27fb249fa177be2aca0501a1a169df0752f1de13d9108381894959d7ae28fae3a5208942b27b8898a935752a1f74b15a863094be683b81758cd9c8fb7b1f7c787acffdd73ff6e90a5d726d17cc444e49d4088986761542af66060518980a27b1151a7b227634b8d07512a5170da285f7895825515502a7223537ce8cc64cace4165ddf2e97d9161f350429ca5c2b89480ceb908d3b946dff77beda282f9fecbf7ceb65eaf4c1bbef028900494405cc5ea26c5c386a2a26ebac544b5910649ad8f629b01b091452281427b535a8015b7239996ad23aa919a54450c8cc3f2686db981a0555432348e00331a4c4202447b8aec1131d418540ac0ffd30f408346a9a7155fbaa64ef62148bb2e68982a822a125ad2e02a2321c12a9085b240525d7024cf34505186304c82e4d552566454b8bdb946e88ba81d8273466de0a13b2992a686a59933b5c4556edaaeb56c33068143341a6ba2e9df30890d48d60ca989415b499592180001272d21a0a64402ee53949ee7f36ad6faa9737e772da70201821259ae76d15b22a60de2524492910a2633235134005cb7acfa4f7d8cc676ebb9c528997713b48c4fb4727c747b7c838f6ed783c996e6d8f46be809e88bc73de710851d39390a16aa8aa60e699a7e31184a15b74dd6ad99c9a7ee223bff9e4e79efdceffeabffcf3dff73fff0fdff3bd4f3e73fd551727622822a2ccc886a600438c2252168523dff57d089d586266a90d1a86104220e708504dd2ba5dc90eaebc78dfc3af7cdf7ffc5ffcc6d35ff891bff7bd61397fed2b1f8e22fb472751a51dbaf4faab2a91019029ae8d7a6684bd8a1a38500650b32e0c779d3df3091115a908cf9c3ddfce17dffb57ffc29ffbf37ff1bbff7f7ffff33ffc831ffb917f44175ff19687fee6e8aefb06f1fbcfbd78e62df74dee7ba52fb1882fb7c72f1f3c75456431bb72303c7f1c87a59a54450944d59ef124820031aa1993b487be3b2e9aadb11f4faaadbd726fafb8b05bec6cd593a6d9be1fb059cc87e6c2bdaffe13ffd5cea38f5effb55fd9beebf4fdffd1770db3fda6aed96361ab5bcf7f3e76ddf8d2fde04acb0c3acd4f72762b43b6702325b0c2bad8d8487569cde253558d12fbbeebfbcec0caaa714840068aa4d9acf825777c44ec11088c121e3d77a80800e0c9fbaa06268d437bb288be947ea89aca179cd417c3d003531f86e5725944dd2e4b3f04004e2d00033a664d4bc218a9aa9c737dd73321a132d3d00fcb61288a0207493895c279e7b9ef3a02902822e29cf34c1265185a433130768e196c506072cc08ead925c74a5594c3d06b94289256b6884669570c9402c8cc7b452009b9a09ecdfad5ce68dca4e3aca92b44b23b84f0ff772af7793f1c2c4f6e1c1ff6c3e05cb9756accde019aaa1a04045ffaca829981737c3b73793d70579364bfcce76c363c806242cf2822802a3b9786d4946c2939432a9dde06cc06928e0f532302335389ec101490d3703cb15a208784dd41ff105109310c03318dc7e3aa6c467595a26ca304b34dbf91214a6a798540c0403dd809023283a9a802599fc52b39391ae176801c6ca61a64d98808947e2e4e691e692e940aedc4e6266211edfb10866ee8fb6118447b042dbc77be264c4e773090f5a7284b4193c2304b1453706a82b6af03f6148c0c98d8c8a246ca10184b71d2c94e75c7c2399b53d7ebd4ec04cbcba16ce7554baa9fbca92658ef0c28892429cdd87893d39272bc529b6c0a6aa2aa214464dadddad99ade5bd5257a7ff3eacbf3c3f96221ef78f76385c2077eeed7b7b62644086296f972a0804308c41d13295a5116be707b674e7dfac997ff87effe9eeffa0b7ff6affcadbffa0b3ff6534f7ee4a3ddaa27e6d4aba510736032a6c21500a82239997d4dba8f12808028d1dc444490f0cae5e71f7fcbdbdff11d7ffaefffb37ff5819ffac97b2e9ddd3d774a4c8630f4a15ff6bd9a7a9f9a7fced079b0945ed88ac61827dea9c53e5aab2031f68b167675cce8342e57a11d8211f72707fff407fff7c7dff0e6a61cd1eec5bbdef27678f999aaa9beecbfffdb6585ab93191cbd70ebc50faf6e3c4faa44ecaa128e35b6919b8aa810c0a22aa9c172e2631f24f645556a1cd0625d01f4f36e75d85d7b114aad2e156e3c2aa7f78d2ebeb2baebe162b277fa9e476388fdd1fea9d7bfb35dad66572e8fa6235ff0c1677eeb4921e8bae6dcd9eac23dec496344dca47be5665c73cc17e64a23dbc8bf681607193e61aa1a87108741458aa22ccbd269547204a090621f6e0b386ed7ef8448c479709bc866888428993349453d4272a6b1efba412cb42d100e812406201089ec5c88b15b7524ea98d7358dae73668d999bba5e2e571262d334f3c5a2eb3a66f27539df3f5a3df9599040e45303ce4cc3d0c5388c47635115c5bd9da973bc58748858960591f543376e2a2670ce79e72484eda639bdbd7378f548013dbb212c50d5910b164d8581889c51f69d544d559645b75c65d7d2feadfecc993b30c8aeae477047e5fe7f61e03e84b0d278b86c6fec1f74c3a26e9a73a72f9475ad3122a97748cc02ea007ce1137942258734101190020032a308a7934c35b984b271ccb16d10176998bb36911231a47833e474bb9b2a3a20465dabb015d4c01820a90dd5d414d8e13aae1336e9b27d3ff4ed5038bf35dd6e9a51b2586b140001a6bcdca7ec62674a5e6a4d837133645a210e9abe4d04e74bb1082068094bbd4e56b43c54414d1eda755a6c4a3aa6847bc9fceba40167c70a16a39e1ccffa368a68882a3a303be7abbac0c23371cec063224097a95589f07247305e0a5b4bdd010130b241daf9262c62c276c23abd8fee2008e48f6b9a17a919e006080066808ca090e05939979539252a6e2651c97789808cb456c2eb0611bcf956a388011280985cbc70be2aeeeefbe1f0f8e8facdebf3b66d0fe7c3aadb9a36af7cdda3573efb598992bc0de98e4ea3a5341208431f0ccd3425f40cc3303d350eaafff46f7eff836f7dfbb7fdf16fbff5e28b5fb87cab1a97cc146348187d04f2cca3b24c984d8764b4a6412082598892147210d58c0e6f5e7be56bdff0c66ffaa3dff7b7ffeee79ffacc5bdef4eaa6693c1762da0ebd99a98801747d38991fcd172784ecca7225da0ff1745d9c613d3f1abfe9fe8b65c32fddb8399bad9af2d4b87245bbffc81b1f9a4c462f5c3f9a2d3a47fc6205bff4c4c7ffcedffb3b7fe9cffce78f9ebe70ea81fbfc6ab1e8427bedcad5277eeddad34f12cfa797005dedea092082272a74ebdcb80b9d2f4a44ecda7677f7fc100eb82ccbf1b45b1e17d50ec02cc4c1951ed80d5d986c55658d6139cc0f3f3e7feeb77934715b0f37a75eb3fde8ebeb0bf79c7fef370dc787e0fdcd5ffdf9973ffa6ba7dffe759357bd717aea8c1f8dbabed7d0676f6d56f0ae576179a0b081a9e7dd58b219ad4d12a82a061243e8fb6e1806665f950db377ed7239de1aa7fe33277f7fe9059f63761b5be25a99903e7664c462486a4050548ed1933755f19e11511818191cb8c2a14309416284d26fee762274cc2a5a57d5300407386a9ae572816893c996857ef6d493c6058d1ad54048f3f93c4828cbba28cbe3f90c187c512464041988a40e4519c1339b5937f45dbb401126cf85d7a86aa4a6a9a6a3147309c4ec941c193b4a05b2f65d977efed562b958ad6e7f5e11cbaabe13b27607cfefdfffd50d434478f1e6b55b27c708d094cde9ddb36555b17326a25190d1341a9a8038b094f19c8dc992b19f89d0c5c4eb433339798898a28a2342a6085939c1198c65ecf2be34216d33f73b8951921a6a1d1da5068e51553c67aca86ad454262a02838a488c7d18c8683a9e8c2693b2ac256d871498283101d2ec2265893051ca9564264355030242eb0122408180060402083db2a9009811b1a86edaa2947b9914200604eb45e466728200de33621186a19df55d3f2c575ddb76ec3c8089982b2b5f6f8919f3d23b17459d731be9011224d23caec5307992aeeb1c1b4bc05e3305664a3ec3743a72e6ffe628bdcde3910eb894ac40601b8d535449ba52024442954c1cdbd0c1923c1f12fac43685d76dd57fbadef476d462c23d312abf7cf5ea7271ccbe1c4270c8779dbf7875f55cbb5ceddd75d1cc3df3ec8ba57796032cd7320bd8fcbc4a00a25255456a0611b069ea62d4fc9bf7ffdaa73ef98987ceec34936acd01e6845d3435261a5523338dd2a77a705d2f5afab9caa22c9c531569bbd367cebdf57ddff2833ff00f9effdc67def4e6c74b5f17ce03e249bbe8644083c217de57a3095cbc78b620fff4173effdcd52b0fee4c5e7f6efbde73bb67a7f5e99db37b17cffaca0f8bb65b2c8899bc3780a2ae7ded5fdfb6a10b9edde1f1ecd5673ff3915ffae0a7defb756f7aebebaf7ce2378f3ffbecf133cf74fb57a960cf851b4fdda46c26d3b85c5259bb82dbc5ac9a3472d4392640f40528f46118aadaa51ad863e3a9f53b4dd18cdaa3c3d15da7b15ab5dd318173d5c8003ce9f2c9df3c3cfc8da3dfbc6bf7b177eebce9dde30b7785d0ab6f2efd81ef3cf7ceaf37b361b9ecbb21c9a90c805c818810878d7b1932156973c8e448b22fe25980a9896a0ca18f3180992bbc2b3c9173cda802d3db4b1bfc1233770324f44983c5ecd4526a94421ed310793f482c50b7a6631e4f4328d87b4d835d0033a8eb3a6a14723c2cc991d33cfb453262604ee2721689c4340c61d45493f164d9adfaa1afab72b435592cbac400eaccda2e34a36a7b7bb25cf5cbae3bb5b5cdc802a20612223219a173de3139220911c810a20354853e84827c177aefb8f685c0929c7369e94c89ab4d460c4488227db796b173bb986f5e90beeb178be5e9bddb27bbaafefb75906682d85978eeeae593e562babb33aea745c1655522ba28314a2ccb129987a12b0a8da2228bb26e8aaab0a4c27359ad0451d5948c2546833c492724a0148d0d98011129933d49eb48d5124b25cb1909c134658690e35c1da7c957964d2ba246335f14c9ab192512b05ad430a8283b371e4dea7a5c568d6808a1235adbc0720e5ca2ce6682ee46e3a1aac4901c13a003ae03ddd6f2f6a0310214069270c0b76dae6b80d91aedabc9db0980e4980ab620cb45bb58f47ddf0f5dd7765d5137d56824216231aaebed7ab485ec56b35b68cbd492ae618d0060bc11b27cb18128fb6f21ad3735999418c84c4135269c711eb9670a1813890adc16a327ea51d22c6a42bea438979cd9078ae9fd53cbe99919abb08ebe5eefbad7ab0e4dafc96d0b6ec2432089c0d0c5a2a8c6a3f1d6d64e5d95d3eddd9b2fbec89e41c32ffcc407af5d39a847557a54008d1da1a16adca4282b442464e2046116050718cdea8a416c1802ac6b84f49d1898a890515178205311cdd192a62244144d54021745e17cd4b09ccddef16ddff5c2b5e3eb2f3c7ffacc99cb575e62f422b18bc3a25b0611330535e79d818d47e3f3e7ee7ef0b1378eaaf1574ce3efffcac76359a22b21f9de07a5665c8e2649a394103ceda0ae1afb1101c085d3a7bfe3d2c5373ef712bff09b2fdcf8b56b9ffa8dc50bc7de4febd37b68e6ebb11f150833762ea0695828f818c2fed517caba5a1c2f4460bcd3ac8eae91f7dde24467528d9ac317afd80aca3174274788e047088536e37321a8ae16c56834bb791843d5ec94727cf3d6cfffb3f9a77f7dfbcdefdc79e3bbcf7df9d789b6c3c17e92390082b273d5a82ccb6135971898bd88ac118d6b75c06d3d236f8ee7a48551155509431c425055efcba2280b5f1aa0f34591306a4848893b969238e1f6514500443e5bca120a266bd034c71fb05310d36812f27e4fd5d404c1730e88eafb615d781865141390434ecc1035666676aac17bb76c57e3d1e8d4ee4e3774222251d11440099de3a2aac79351b56afb5b878b9de9ced6b44140e75ca2f8331112936334408929895e24168ca3a60e12eba29ecd66e00b44309522afee3167c7a7b5244053f16e89c9a879e3e6d5d3e7cfdd5e7eae16c707b7e4ae87fec38730116c21c3c16c76707c64d196cb6ef794df393b19428c41a3445575cedbc63e1fa51e8d420800c0ce9bc23a85810031297c533d98123c32cccd0c19c95024e53199a92485ac01605a2864262a9a0a801233228b2a41c2b68888666e11181918a1292029b25391210ca252d5a3f168abaa47ce7b035309296c2221fbd70d234092f7ac6f14034322914896bf49420594c4305877849ae633a94cce52fa8de83d5f91b4ae5b8c1099bd190c5d982f66b3d9ac5bf531c4a2aac857c5a81a3985e3836aeb7c73d72b557575b28f2485f718392536aea3830589552cc5d2a68378337f5a8b76700351a00d8e8108d796253391754a8ea026ee71f2d38369eab8d3ba002da9cd0212a79f1dd0526965b7d5eb6629624d33766d733d6c66a7b76db7006660081ac531df7fef5d8577dd30cc67b31bd7aef5fad2d1d14133aefbb67dee9983b2ae52024de15d5ac9c528b3f96ad49485f36a30aaeaf4178620889896fb61084430696a433434b4c49b233048e0f08a0bef5c4c22a8c4730692189510d0244634202e0eaf3effd677bed74e5dfcdfffd6df7cf48107eaba3a98df7af9c6b5b6efa209a1632211351142f4ece6abe5c1a77eeb6dfdf1b73d7cf7a969a9dba72c8a8848e8b3c122843437dcb8c91031f4593936e0c06571efab1f6a67f383173eef0b985eba2833dd3a7b3ecc4f62e8c332100df3fdab4c053b8ac38004655da5c7b52446162e1941c58c0ba783a00232c77e4837f5e2f0e5729bd4442496555955a345bbaaa65efa1e5ccdf5a4db7ff1e6affea3e1e8a3dbaffdc6e68177901f87f618108b7a4220ababcfde7afae3abcb5f80b23afb9e6f6e4e5f92aecfa11f39776d135a4077a8d5d3ec4a638c71e8540202b077bea8887c88d151ce5e480500c1edc8973b37ab88e4523a697a92712dd321400274de395f948e97692396c572765b630b204110d908008d08a2443373cc22b6d9467aef559519bde7b6eba3c4ba2a028418206b9c9927e31100ec1f9dccbb6132aaf77646bef02ae92730468694c3694c9822de910a1aa42f88464d236222c2e0ca7224d61b219884101192979dc0088190c85035ac9266f9e8e4e8e4f8f8f65ca55d980e84f81f32735f86be8df168319baf56214ae18bbdf3a7c8bbe562391a4f65ad18a31c5e604058788f3620595d9500e03c2725ab49de76661636662a79422422aa993162345b9fb28a9c72863415d0600249ccb70667a5272669e1f2aa16d4a21a24a6379842042196beeb48a1aec7e3d16e59d69e3d214a8c846070a75b72e36c023454cae92290159369a39b0eaeb4400a4494e4ba0608aa48620022925e902c374c4fa81ab9c4324b3f05491ce6f393e5b25dadba45db72c1ae19831627c7d1f5eda3f7d67d7f62db53dedbb97efd89108fe3b03f6d5eb1b7f310c2410262c2ed0927274e32aedb8bac1b48aa33cbc329c8277bf2f9534a8a004df26067c94d9a41956b6d9be5d708b21c1e92896ad3cde4041e334472396d2713bec112de1bd7aea8fca94ce0a38d2c32ab99094d51156eddba75343f76544bdbf9ca6fefee3470fee6b39fe9831052bb587aefc7a38689346a3a76b7a75bc4202112735594edaa4526660e430443665a0dd1d41c7108318a384abb6c0343474e258caaaaf0ded6f862334d93c4d4144334330cc3504f4f5d7ad397fff8077ff1ccd9bda003469e4ef6c6a3f1b2eb861024aa631e35e3a2aa87b683a2ac65f680ce5f797e67f7eca8d93bb55c2c1d73062602e654a6143494162f6b0f4e06179b38538d918a62efde4717b383e58d9bed6236bf794d634cb4c57a54f8aa22a3b414490bace4ec4face934884b5622ed540663d22c4664282725600ced0a09fb5657d7afe0504ecfeeae0e0eb42c621b786f5a9f73dd8da76f7cf0f9e6fa733baffb06373d85d01f3ff9c4feaf7d60f1f20b17def8e6ad862e3ff5a933effc8339ef0e93ab23e1e6371bd4b56e1d00d144a2aa481cd2714a8e9d4f612066228e7102ccc006393a75fabbdd93085894654a05c335d93d67e92132705114065090398400c048ccac60a016356eb258c550d121232b26ef62122230538c5144bc2fbd7784e6bc6382b66d571abd73023185b300e8b26ddb2100d3b9b3db23ef5562df695595298a862833a44494091d22a103a455b78a3154ae246215a99bdab1f368e83a510548492e9c5e37472e6aece2a2ef3a88e2bcbbf78157ac568b2f9a53f9a26fbbdb8cce2fa59669255e39383c9c9f40ec88b9ac275b5b635f1412a52ccbf9ecf88e5b214758a59ceea1eb4987da46ddb01a9c450d806079720d1b3eb9c226e3535191088dd836964830514003265cdbad521317995d8a5d06a2e415e4cc90b1ec7252d98c49a2a842ebd43b5f6ded6e4fa67b8a18864124a277496ff3c52aec7412c95acf6586197ae700c508d77882ecd6d188a8a921cc33dc4cbcf2b60eb1301304436023cca9e36a5dd7f66ddfae161206052b4a7f71676fb9b4673e3febdb395bfbaa7b4745299d2b630307274f5cbbfe743d2a4fedbc623c3a4f945e22a49c93a56848b9d44b05e0863286776aca53d7947192a29ab30e3181d8708d2fc12c61213050c92be5f515b8ce07a74d5e15af837138c5406932d6267afea657581b5933d6763d9fc9691eaac80e0d145d3fc4aeefabbade1a6f37555d8faab2aa8f475cd6cd30ccee7de8fcd9d3bb97ee397bf3e6e1877fe193555599415d16a77676967de8da364608a2d1cc2928411f82aaa9422ba2963e2c9cb6c299114168602ab1297cfa2c27ac4d81ac662e4662f4dea1a9239c1fcebefa4f7ed727ae5cf9c04ffcecfd0f5c2a2b1ffb6505a3dded9d53bb04e082889a8e9bc9bc6dafef1f1dbe7ce35df78ebffaadaf1f9f3a1f9086bef5889edd20c97390ea94cdec6e0376b764b85484edade9b2ed3efbdc95535bd3ddede9687a66b5ffb2849585123da591148821e88632ef9c53125070ce21107b63871a371a6ecc0d1f820c524c1db81cd0086628001dc77e38bcfca2f33c3975be2b5a9c76aa227edb593c79e25f2cae3f71fe2bffccf65dafa1aade7de33bb65ff558ede2e15357a6af7eddf4d2fd12cd4fb76531531122976fee8d2b2fbbbf93fad1428c430c711d95e57de19d4fa7abfb81bff6bf8ec6a36a5c344d5d4daaed5377ed9eba7732dd2a9bbaaa2be77341da70b37b66af2e8db90050000f1006181730050057d5a15b0e2bdfad8650f43ab4e0088144b28c211d7f4c9ce2e29193f80a0cc890987d8caa12b100e7b282ba2a3da375c360604c286029f28a084f6d4d9af1b86ecad57215a3406a01f35ec91c1353b2ea450d41069af52d9ef6754d8d2fbaf9b2988e3dfb55bf226682943d24f9339ad97e28aa41a3c5c1fa1ebdab47cda86e3647583d1ef9a28831ae1dbc40469b6c17316b8778d2b52f1dbc3c3f5e6e8dc6ce177ba7ce38ef8721f47dafaacd68dcf5ed6ab52ccb4a5599dd5a5741b10f0d912a74ab364581aac6ec50cbbc712444976d0b4698245389ed2149366549ba07bc2e93158191120f2f7f185293941161960e6903b575190a6a12dace50abd1d674bcd74c4f574d15c3a032241093a56014265853c6d70c9514b29584d40899270a2a4ac09b68a324dac78d254fcd902cad7e9152a19cacaa29988dd90d31867ee8baaeefbb2184c4912f9bc6396276dbdb5bd7af7ca19dbd7ce9ae7317ef3a7ffeeeed55506cbbeef865b670cfdd5f39deba775c9f2aa8589e5c0311f4ac067961619a161ae93112d14dd441f2226d8e90a4e149c34c4a790bb61e9c9b81e5a116dac67c6439609228b1de10280fbd4c73c4442663276d3fa7fc5b4cc9d7b9ed81cd843dc98168dd7d31b3668a0ea6a158513577ef9c2b3c1d9d9c2cfbd58dfd1bcbc5a22caa8b8fbc7e6bbb7ad5c3935101e3adede3e3e5d0c7a6c1188598c1b0ed5a4268bb8eabf1683a6de77355e7ab1adb5510d8dbd96a61a5223177f4b4c6cc59d4e8bd2b7c01aa6622316656651e03e6d761ffe5eb5ffef57f7074e1de7ff53ffd7f76f74607070737afdf288aa2699a515333c31042548d212cda76be5c9da9abd79cde7efda5fbeab317141dc6d8ab32bb71533b8db3459b1dbe906ebe0d9b223b9989705496bffadb9ffce19fffb5575cbae75daf7bd5a82c9ac9d6eef9bbc3ade3d8223232111859d4c4384a3959e4684071ce557543405c0b3a63ce5e620329bc573400f0251753a71451d31fc430d338882f591455f0f8ca4bd5f9727cfe625cb5aba3abca55b5b5375c7bfaca3ff91bf6d5df75facdef8aa205cbd51ffedb074f3e79ef77ffb7d5a9b3c3e56766cf3e5fdd7d3fb9e4e84ea187bc7948100114d3524e4394202990d2fb829d774c715003703ff5433f215d0b22aef065e57d519a2fcad1563d1e554d5d8cead1a4aeebba1af9f1c84d274d332aeb5155d4553d2a9bc94e355aee9e3a7766e7d4a36f78f7a8e69dbb5fb12ca7fd6211621450530b1287300013791efab85a76fd6ac564aa18fbce5515aaaa08030a701675a10198632f24064a6cacac32a8685156685055a5aa0e7d6252695178335d47a8a87758b28b2acca4b15fce62016ad1623f4cc7e3c5f19c091db3285675a5a68ce959cc3b8a04c3f258d7c55860d9cf4faaf18800998bcde15e954d18e21d5aa23ca19975ddfe6ad9f7fdac6b67b363023b7fe6ec7832064435ebfb41331584cab2d008fbb70eee7fe0feae6bf3d39f127d2516959fadfa3e0ca3c9242e56a691e9f6929c1075ed3a4322403289c0195142c029fd206d5753581a22113128186e941b6b583891455b47a6500401051359751d7b6846cd68ebf478eb0c5361262a119100594d5cba0a2def5dd28650444d2d55bd29d170ad1f49742e25d3753e5c5a1e82a3c47cce061dd56056019199a00221b067526edbd5d0cffab66fdb0ec99c73de7b2ab8709e7312202d96ab8b779d7df8b17b263b75ec4288321a9d6ec6d3babae764b95f14e74c7d5e59023a77db14c680844e54102c9d95006ac66994bd497a07555ce780001813695e3fdb7a340f1b27c0edc637ebe5f3119e6e8035f92b8d989236815248421ae224fa444ee4c89bc28d7129595252f5bec6141ba6151db097a82fbcf0a2c43e60342287dc3455534feeb9e7deaab661b8d2cf9711dc72de7972293093100bc72612c59ce776b9e4100d68b11c0a4fceb1485cb4110cebb2e8fb3ecb4f6fb76ce4981c7314492382d4052280d8000222ae6ffba6de7ae557bdf76f7effdf591ecf4f9f3fdd7583f75e45daae1393844f30880254d5e32fbfb0f3ae872e3e70efdd7e6b4f8de6f393675fbcf989679f7ff6c6d5bd9ddd6f78db9b5e73dfc5ae1f0011d065840e93484444220760de790478f1eafe1b5ef9e8b7bfef2b214a8c01248eb6cf4dcedc9a5dbe498963684a809e7d5eaa975ed4bc33e77d12f0f892d1e70ad0401d138dbda948883cf1f5de5865300d8868514218aad2a59473f3569e69ca53659c1d31b933171eec87c57276cbc9f9b83fbbf6937f9fd0b6dff44e005075bbaf7acb3d6f7ff7c9b31f7be99fffc0eaf8e8ee3ff6e726f7bc26ae16b82641af372e60796e642184182225d89377cefbc43c17113370ffdddfffdee5f1fe62beec566dbf9c9f9c2c0e0f8f57f345bf1cdaf9cd935bede555d70ebdf47168a3c4e81db1736ad8d4f5f674e4abba18d5a74fed8db726cec572fe3cd723020e7d2f665533aa4655d14cc65b5bc6b4ea079c8e27675de8561af5cca42e9d9a81481c56abd80f668268a6d1cc18a3c656bbb62c9d819874a183b26089c3105c52dd755dc78444652aaf98331a0d9379841c238ceaba1223010758bbb270aef01e0cb9646296080e30a59d51cadd0644c4c215a6bc389ecbd00340d70f43b7bf799255a4eb5a5acb6342db0f60c7edf2e5839baeaaba55272ad3d1643adef2659197a5ec922499d8ab6a0cb1699aabd7ae755d47c4514c6260464652a4aeeffbbeabc7e3f96cde8caadde98ee99d4bb6a481c939196b334b0a9a6526d618d60195b77bb8acb7022262335455ef5c72dbc2da0aa36a2616bb4164289bf1f69973e3e916fb928086be45229ff5de096c9b0e1ace01d299dd85299432cf8c984cc44421dde7d9349e4a104d6d5b9aed0392a922382443251123c6b26cfa6158ce67fd7cb958ad4218bcf345e98baa72ceaf3305314d3310514dc75b13661f162a43ef46e747e3bb16f35ba3d1f66a7572fdfaaff5c3e13d17deb6b7f76a3443a364075c038bd3d43b6a1608c27a6092c545e9f8809cc699b57d6a9190d703fabc00598b2033167fddd4a09ad07a3ebe16bf3322aef7acd990a2697b9e5fd3f5350909d849d9c89abaa635c79e10d5729d2f6aab55671a7de1f6764e8f9aa62a2b405c2de6478707a0ab0ba7a2f31e40fbbe07d3cc50102080dd493d9bf765e36d085d3ff8a22818fbb647f295a7e7ae2f8c7db5376abbbc4251550575cc4850208c2b0f68310c985546e9db270305835b37ae7fc79ffb934f3dfbdc077fea672e5e3a1583262c28e4382d2322266e839e74dddb4feffe91b73d7efe818b3d7a55ebdbd5fefed1eef6d6bbdff8d8a9cfd74f7cf6c597aeeebff61577afb9439aaa134bb28bc441020b1245eddbdff7eee9b85eac9602e87d19632c9aa6dcbd00570f180d1c9b00a50862425588dd0003b06705ed62474810d14926d1c9a03a1891030472e42a13e951019199312c8504bd773944a9827297cc14c586be27745c23db7858294cb770585cfdb1bf8b8cbb8fbfb37af4ad5b6f6c6efcf2bf7df6c77f64ecb9d8dee6a249198012c59073fb9eaa31118b1a35e6eb1c8098bc2b98188955555401d4bdf91d5f7bc79438298e430cfdd00f7ddfc5aeed57c3bc5d75f3c5e278369fcf968bc5aa1d8665d72d176ddb77f376316fafdfbab6bafce272d1c5c51c2ca61187e302885d5536a38a4a575765d594655d38e7d8955559dc5c15e35151360581455d412164a174d85465c1e408a65bf3518c45e17dbba84f87baae41a29f2f1c73e10a440c051118c43e9391630fcec0d844c04c6270e853e0ac6774a4ce211a16be083100288121e4fcb6b5f7246115080918fdd0a5d048108361186e531b434c20c924187afed6cbb7e6c77e3c5eaee6bb55ed8a62e48ab2aec04c6324e634642072d9054318a34eb7a6abd562b55a36a331823aca8c2a21725ca84adfb755356eea518e7fcb2b0a509134694cd880f578dc2484a465c4b55f8192bfd190802c4a9e5bdd29c6484310336612d3d0f5a8c6de6f9d3a3bdade73652112c07af4859a95ceadc70b99a09b5d16069a09e3891195fda2062a2289346d9a5895ba9e7e919a822a218295b929c9ac9c28563315a6fdc18d6bed7c19ba859a15553ddeda7685c704cda7b431c03c03414af5fb10e4787f7566abdc3ab51dd92f1737dbf670d91df5710871bf28b019ede48c13c8fb545c4f3009d19093bc0f6fd7e619ccbb2197e9da046b90a4ee9be86d33544434c194d1bc16b9672165caa7543362ca7153aa1b3f6d327da4008bfc3ea6a81a55042220c335d83ddff086f9ba7696ffb0035531d8de9e5eb8705a0ddbb69b9fcc5e9e5f55531842d7c7dd5d8fe018d90c421892c5572532936307622186a62acab294a860366dca6389bd48e98baaf0111c98c62094c51c089230f4da94d578346257a0aecc8c91d2ca20d1dc640867efb9777ae915ffe4fbff97b3a726884c2c10d688e984f4406c2df631bef3dca96f7afcc153f75c6a9187b6038341e28573a7cbb240b047effb8a6ffc8a3707d5e393e3756641a6d5a6873331eb442489e882d97edf5a521ca552a705d714e8b95b7558385488d1ac662bc0a211210cd02e8775ee10db402199f83cc463082782dc9b1a7bd2866438616057942ababa31a0e2e04252aa95955f2efa14f680c43aefc3151b4f2f68ddcef78f8aa689cbe3177ee8fb83c2b9777cc3f1673ef2b99ffde0a3dffc1fcbd5670eafedef3df4eae5fe2ded3bf005189091a1a51a286dea5544a2a4919477cebbc2f9222dc053289b0358adf5b36956e5014ae7a7ce6333fe77f052146000e8a30c610843d72e67f3f96c15db6e395f2e57cbd572b99a2fe68787c7b3f962d1ae9627ba0aedf1fcf85a3f041982ccfb2ef42d1a999a7354382f2655514c26e3a2aa9aba72a52bbd735561d0d7254fb7b7b7ab3db55e5dd794cec685c6c8f5c582a9acd0345431627d4484def9adc1458da3912f3beb8f638cc2c8433f30d162be327fd0b52b23d6c9a47742fd2af6fd3aa4854c532189cc85f4a15f2c00c0157e3a9edee9e9622ee6edfc0bd72f43595d3dde5f2de7e7b6b64e9d3e6f00cea06a9a548d1133022027b50a6463c79a09346a1a910890a8258caae8fcd4c4f7ab55e85986e9746f5cecd475edd6adfe3a0ec36e730411988880c0d420a7cd802a68125ca4993210b1a946b5a0ead1a5f2d30010594da240e8232257d3d1a8991665ada631744c64006246ec53aa675a6bafb5d860aa6b669921816a625552d2e7988266913bc19a57a0498fac7912855467db4456810262c5ae58cc0f8f6ebcc4c08646989053ec4b0f84431fbdcbc1d3c4bc41dc78e6a3457770fdf0ae9d335cfad9d1cb08e85c85d04f46d3d2bfada876cb6a47a4cdd2433024d228c9682a59ea98272884282a96c720e0d8e57562d6eca7f912269b18644201aae677294996d28baf2ab636163250227392cbd65600205a0b1955d38294c0218058cc86814c2fb8430ab986c8a9685ab0a21a2001d2e16c76f9e5b9064300093d391e8f2793eddda2aeebb2633800e018b45d0e29d48990aaaa24040911c154a22181291aaac46886e8125f9e1d3239550401f406440e1c230140e18ba26acc71a27a00b0f11a650178727cfc15bfff8f3c7fe5f2c77ffba317efb9345bcea30a39d2986b1147144cfb41df737efb5bbffcf5a71eb8d429e8d03b4f225a3aef9c8b2188ea104312146d8654aa26fd8088c4a06212340e3129c14cd517ded5de1545de8a981a58595555e3e7cb0e739a2e630a270664c230445f7059d62a889eca12c4a2b180212bab4362543157327b34a1642a0cf328d10a4f68a0a2e5366395b27490981cf9385799c9d1d1e57aba73eabe7b8fae5c311cb9a23bfcd83f2acf9dae76cebff6cffca5c9b479ea231f38fbfa379f3cf1a14fffe80f5dfa7d7ff4ccebde1c4e66c99f0d19c5a6622296d61fe80aef9c77ce25575d6a3d0dccad35b3b83eb20132ecd0eeb4c3dd71fa6f6e020f503a4657435dc3d6ce97bc0324b5020addd0c5a10f31f67ddf75cbae5bb4ed72717c3c5b2de6ddaa8d7ddf2fbb7e3584be9fcd67b3c572b56a0f8f66ddb25bb65d18428c4186e80a57562513144d5970e19d73ec9b51591484c915eea9ae4ad512c99f04371ed5efb9e0560787ae2983ad4eefed7ee3d77d0d57b85c75cbaeaf90ef3a65b03fd9dadba9c195cdd9d8ac409da7badf9a83611886e5ece434c0683c2d2a773b2929f44555f471f5f2b5174f5fbcaf9b77bb3be72693dd76b942c4aaaa10c96737796e07280f78b31b090d106118c2aa5ded6e9f1a309a017a7fa62eaffff44fefd7e5ee1b1fc6bef7de23f87317ef439729552a6a680868a2c86406c99b9aed95692240c8e8c04049735a44cacf42f6dea7ef2373fa735a050efdc0ce35a3868b028842181c7a433644221605c4c4eb3747597b9e47fc84199f624a8a680e39d18ef2103fcf18b28cdd0829ad528dd093334355de5c0eaa03e08878cb309a59d5948c3ecdf1cba2e887ee735f78616767fbde7bef8a31b3cf363a252222e734ce4b399ecda12da5e0865d5537bb45b1835c0f91d598314550af758968c46489d98be97cccaafa047330341063a6d4f2af4b45daac5b361e544cee90f5f273cd675fe3f2b36a3f099615505139657a67c50e6c74f394b9cd902c2569a91bf39808092cc5f7ac3f98c8c95a9cf24c14a05db5dac7c9d674341a8f9aaa198d54e26ab558764bb261541122c620ab7640441045538728710812008929a99592df154191884d2caa5568281a657da3ab821a3078a292999c0b2a31c6247f4e223c53b018cbd1d6e9075ff9a33ff16f9b519501b548ce610c620665e12242d72ede7be9ccb77cf96bf61eb8d82b9804c44d8f42aab2ced8d1a89a068c51621c22025a8c12a29a10713ae992e136274920631e485a1a5d1263b135f2b3393b66e752cfe93d292902106b5139e7bd0ee64a4252468744124c01d93b34a0128a6d2467889e9d0b2b950e9b516d263a5831f26edb44858080b0a89c1c9bcec0154e94421ccaae2b7c435b5a9f9f84e5fed187ffd985f7fec5d1b98b071ffe89feea8b2f9ddcec5678ef577cfdd9c75e1f43d0e412364cd580aac4184218008d98c939767e0da536919806f42e0f17be143bf48bb324ee44896d6e02852f42c0ff8edf993e0325404930ae2aa8aaff10bb4f00185487a1efdab6ebdb76b558cc4e4e968b65bb6cfbe572e8dae56cb938592e97abe572dead56ddaa3b9a2fdbe532f471def56d3f0060dbad2448553aaf767a3239aaefbe717cd2bbe6e489cfed9e9aec8e27db86bee22bb342e1defd275f3a893f341e8fab3296b534bb5bedcd43041c4fabd9e208002edc7beef917be907eba172f5ffedcb39f2a2bee57dd873ff12beffda6b355d5241f4d5295a54fdd6d2041aa55738a11a9aa4505d410b4ae9bd56a25a289f6cade3dff0bbff8b11ffc870f7ddbb7dcb37d5abb558ad0f4be0643b45c1826750df1edb5e4c6dd609a38543918349f3196251d08282268000849259d568289f2e9bc47465388aa9ccae18d7f470dc8985d1a652691d9461e98430d559322dbb258de5484d81039995dd38a290d8f990b07daf72b11705c227aa60e801105a012ad10236a66b8113bf42c603bbb5b1ffdf8e786a0af7cf481f9a2dbe80291728cb708941ccf5fd81d9d7d98cbbaa9b783f232e072be1c866e19fa73a7b6b9a8068949e89245666b20e266694deb58e26ca1421400cc18485a8b16e04e1c98ad5dbd9653c36dad8edf2853d7d47bb0347e52b04db0497a683485e4ad3d1379fa9fae9e4c91492bd9640bcb8797410e330133b5686817cf9fde1a8fa2c262d19ecce797af5c8941cc24223e72699b893465948b70a2c88181a92534c45a689b600fa816a3a037358ba2650a6931035346a77995ac2515a372e48aa29fcf2d463161c7641035aa6abb5c3cfad677dd5aae9ef8d86f6cefee9043e75d2f810993b04d018e4ee65ff38657fde1b7de57ed6eb54141240faf6eb3d1d48c123c71edd655e788b090180dc9984cc979f6de0382440144f684c4c444846b14505a8a13d744259a80818904270e8012be8999836ae887a47c4fb46634c060169118258a2fc9572c129d6342b75cad1088982c009456ece5d2c99cb12759c07062e412918e24eaecc6f5d3af7b90a7b4b871d58ff6e4e0b3479ffcb133effe538adc07dcbdeff56ff8d63f86519ff9977fcf5f7a68ef6def0db3597a35d4cc4473202610af2f33ce0b6e14113563408750a437687d282b6c3234bfe88bbe648ec7fa977eaff838f90f481ebaf3ce480d81271a553554f5bfcff50903c0d00d5d18bad80fed62b55cad66c7b3f97c717c7cb43c9e9dcce6370f8e861bd7d1e26cd697e73cc4feca33b700b0eb5631c610350a483f748b25b9a26c2a2e5c207af8e2eefbdef2ba450c4d5dfdc48ffe9b5ffac59fa2a8b79ebafed8dbde70fed285bdbd33d76e1e1271d38c55e372b5dcdedb238498fd261be6d4ba11b4dc592769bfad958865594ea6937ee8abb254d0b05ac9b9b3f7ffa93f39dad9d66ea941238895a2163d3302aa2a02387204c089cb62908855c890f5e396f18e94e0bd0933208084268a6694e48ff9d036dd4474028a00b1a10a32e7f56f3ec435e9e10dc013a7a9bdace5d5406062c8686b295e0eeb4a8786999a3233201290771c86a16d57edaa9dcd8eeb517d7aefb4590db8402b11cba83bb68e1b3733237418bbd97e34b2eed43d97ce8f9bb2ef87941b93ee4cc3ccfe95d04dc6a37af7b53d9f5975cb176ecd3c39563b393c988c4aa5949b91872844a9f057515907c0ac238eb236855163e2dba4144a40c8f941b441f6c21a4d0c6b59ba116c228ff379be96306699b2e69428b3a4a74baf642233df91bfb171c3c2ed9ca9040546424ebfc80431754aa0084cc8cc6e08f2ece75f8c36c4181570369bed8c77f64e9f2aabc697ad68cbce633452738c8a0a088e50d3954fced4244ae6eaaa59b246495455a63c38720c907d58e03c79a2aaa88ba25cc811815922e498802a12745d7ffae2bd2f3effc2ad9b37460fdc474cc4097697065c72ebd6fe030f3ff89ec71f734510e3187a66a779d32e849c634c103288075d76e4653e92b9aaa88b11a6b1e7c6b29fa40780aa82068a864c081663ce2741460986a649902431c618d83313a6987251031504303140b608a291d9231b15662660888e87558fc245e9542c46a9ce38ae4806354474a801bb0361f5546094a883faa22c2f36831dd2dca55438aa9ae3cffd4471fefe9d57bdf595e7eeda3e7dfac6af7de0c91ffd211fe36e6827af7d2b9795aeda94bda89217c8c4c8ce3b768444444028222a4a80aaeabe78f6f2ef38a97fc7a96d5faaa2bf9328f925ffd4bffbbfdb7f40bae89dd70c0334004d554055008c6167ef4b5e0074f9da277efd07fef1f26076df635b7ffe6ffcc5a67012623fb42184beebdb65aba2cbb69b1f2fdbc562b958dd3c3a2996476ada2e43e3dcc195677fe9dfbcffc2b9f31ffdf98ffef57ff2038fed9db9b1bdfbc24bcad62939665f781724ce8f6780d834235f1489bf186230406234c98f0f2123a43350bdf7cc1c863074475b77dfbd6a5b4238ff9ad7ecdc7f6ffbf215ed7a43667608bc35dd016601234232328514bf919142842699f0cfcccc242296914d08624a96a5d966e93365aacc04390b159339d60c11480d1878f376e4d67b4d2747a2642848a3fd8d092bfdf15c60229845c83c3b5205768e994564d52dfbb60f7d1b860191ebb21a550d22199c023d445ca89d333843a0844ce4c817c3eca83fb826433f9aee1ddcb8b235b9b0bdbbb75aae7c5d65375dc2c06a52b6f4f5e8cce76ff2d55bcf8d1d9eb4ddce747c6aabaabd1286aa99a68409894ac949240a00bc8e8657db3cd398441e809c5cbcb086f521263301e33ac18e88c1d04ccc2c2d00d2c16feb4b823686dc0c18c8b386f46a6fcc5f094e962e92cd540701d50821bba20cd68952e91217454abb0185344111e0c2eb20ab7ed58c9bd3674e7bef0bef9df77dd7ef1fce38b6932d4244138d21a6561fd3ac1e009098c839274348910a22aa120b2c44c0005d8a125725662370e4621c245ac13c1a97ecc954c831201082631633c74cecb16a5e7cf605c8a2819c04aa518870369b9d397dfa1daf79cc4eae866a877341a898449a6b8f2fb3ab8a0a250eed220e2b2a1b6e4a89aa86a5f769f0a52a2080041b86a221001233d555139302bfeb8018008718cd65d92e33a5631350115824e59a434cc9599ad03f260310918880032d7450254018a09f099a135389e62688a584de4c953c696fc381303974a02adaab2bb9bcc0ae867636e7c24fcf9c9d1fec2b1518e787bff2afa7dffebaed7b5ef199effb8bc79f7bf6eef77ce3c5f7beeff0377e61fee9dfd87ef3571bae0c4c4512243131a5bd77cc2e715e1140a398687a8fdc5fff8b7fb11c55cd78326ec63b3b5bd5645c8d9a7133d9dede6e9ac6d5852fcaaaae19ddefc855fd3d0340017f8fe31bbf787473e7f1fd7f0a86ae5ffc0f9bbfc136748df5bfa6dfe0aac9cede7df7fb4ef6af1fbcfffd3fbd3df6d3e9f4f4f656d3d4aef2bb3bdbdbe3ca178ec82b92f3ac84cf7cf6e9e73ff6a98acb5b576efc816f7bdfdbdef778ec6d356ff72e9d01802871b99835d3eab34f7ffed56f783c7d7a93de000d240afb7cadaaa9899a1811514a62001589317b46b1a99b93a38361e8010c88daf9a29f1d339b111a98670280aaa94d05d0818269d2ca1340023b8299021a0112a18824d51db1034453b91df59901ec6096723b39c92b759d3a4da069caaa598dbd8ee85155034a0967ebb7ced6b3a7a407d528b0c989414b7b442222e4a816fb303b3aee97cb3e7600581645d334455120a0f3ac1600f6141e8c7189740e8010040199999647f3975e30e4ddbb1f71e3edede9cbfd95cb87576dfb15f77b2b13792b1d95849c2f27286eded85f2cdb725a79540488a6edd07691b7273b8e1981442db118a3a6a9366d8892eb48105bcf9c4835c5391198ac73ed925626cda074d3e86666aa999a316e1091f9304f89e4ebd52b00984a063f246a1a318091c97aecb0c1810112b1aa994a26522b6aeaae10923e84d7f3868888c8a3ba7ee4e1871460369bed1fee9bdad047365cb4edf452e55cad8631a6501042c054f899aaa821a59e22b10328692509212a3251c1a0449cf2a9b3281389a1f44559d72a12fb0144801953ae370202eeecec9ad90b979fab478d8aa91a2381681cc2d0b6f7dffbc0430f3f0a87379b7bea72320e5113562163ef00d5a0191515c2f18d6b2f5cb9717c743cf4f3adaded07ee7f707ae6ec0a25c728a6a133a19a247d28188a425df9715d1e1edd24c07ab46dce03b1e88010273ba340267d34ca3c2002f684e0883dab4404f49e1d61504941f34c2ca25400395655f62c73d55e7d4900e42a2db748318a44ef1802b6b7820347cc661a627415d7174aa82c0c3d152e6a6c17275cb878d2ebf16475f3d9fd5fffe94beffbf662e7f4dd7ff0cdf77dcb7f32288ccf3c79fdd34f48ff9588641254d2160701c1a5fd01f1ba8b04553510003350f7c95fff70dabd121033275454546946a3ba698a715535e3a6994cb7b6265be366dc94be29aab2a8cbb2ae8aa2184f26a3d1b8198d9b5155967559d4d96cf9ef39ee7fc7dd80ffce9add7eef0ec0beb8d540bc7df483aec9f6ed6a056585c312a2fdc4cffcfa332f7c6a6b7bea990aa6a6aab7ea7a5216b5f7ceb9b2aaaab212d5ebf3d9230f3ef8f5af79e4647fffe1ade9def987d60b8115000c6dd79e1c9dbef4c072b5baf2e28bf7bfe23ec75cd615224a140c3298f05a6c0b606a6031a499bb880c4348954508c3643a9d1d9f9c9cccb6b6b64288296aa62096100793bde945307bf10b4fd64d1d6348f4a9a4611749a411c2847c5b972969b1aa6ac494221df2a01f2ce16a614d6ab314bfa19b792e402adb119038fbba1111890961c3824fa94829012f7b40c4f246c199092210338086302ce7b3beed43df4b0cdef1b899f822759180c4eb9d63f2c59e05668390c60ce85c5c1eddf8dc0bb4559d7ee011728d44f3a7ef8d8be393cb2f8d2e9c69465ba9333133c8b9afca666ac00e1d593f0caa6068abb63b6e9570988481a03195cc1ec1ac2d075a231d71ad31b70d0912d22a3541a9364906d95d94f25dd35f869c546aebbdace6680544024a7f2dae19c50e58400d33b02feb872ce7eedc19967d3b3135634bf3e43d0566a6c0494da832333575ae5c85d8f6c7fd72a5a8ed1043b4715317eceaaabc78d7b99d6a1142ebcb2a86210c21b98b8989892104304d02365525766920944851438ca981889a15f7801835021853f291a18884d08b282a1000328182f4ed647b2f2abe7cf9721c42df7626d2f50329dc75fed2686baa16978b93bbb8dfdb391fe5ce0f389992986e4fc7d02d7ef2173efa91273f7f2cb117daded96df8e6f6a75ffa86af7adb7d8fdebfecc2fa0f2139973c7e4828d1b6b746fde2e4877ffe579e3b3c89b3fe6d8f5c7afbdbde84a3d1f26411075905561352603447cec4cac6d78d83d659492727fb82c5683c2a1b55ad62d010229b27d3620f5b0ac30020107a7345517a5795ecf7004ab3c84c340cf1e8702028c93323144438aaaa732ea2f51d11132295956769ebad4bcbc3d5ece4866baac38ffcf4f4d56fbcf40d7ffcb99ffcc7377eeb57a7e72f5ef9950f041e21b39849d4d46ee6d07376a97e5f07c7638c69f18e00e42a478a2cc2c4a492a1db85431dda5686c5b166962ce4b0161153d0c16234283c375555143579578f8ad178d414a3aa6cea715356ce37e3a2ac8baa1e4fa6a3d1683c9d3475e3bc2feaa22eebba1a1765e19d83df8320ff1f30a3ff1d27be7e914a27db08158054f5e4e468e2f1f4a9c9d90bbb2fde2c94611efa7ed9f37c669240887903036664b8ecc21fa876fe936fb8ffb9cf3cdd9f2cab669164cddd72d54a7ff3e68b64ba3a39be78d799b6ef55a4ae2a8b3ac40101d91566262ac9144e4880a62a90e2ea10bdf79b6da41914752d22ccaeeffb8c14341b867e3c2a9efed8877ee4877e541b9ceeec1c5cbf96b82a69c4837c9bdcaf1a53fe1c505ede6e6257f22e1789901444d6a74f4a50b1b59d3dcfd8137716b3d8019154159145a55ccb4420811413c80c504509811d25203e801b8661b19c2fe78baeeb6294d2715595c564cccc6b9c0b2481e866e78c400011400c4015c895382c8e3efb0471b977efab88bc0e3d00006e95a71e2a6ffc76b77f63ba778ed919dc8eb6634c3b06f345e17d8f606aa8266d1715cbc562d6f5ade1ae81916e4c4688062a39792ae70bde916a92080a9b0071b46cf805455b779c9bf9784ee106021405a5c441335383a417a59cfc9b3432d9689090ac9031eeba66b267cb7e4ea4ca585d30d820591101f2e01593b3296798f4fd10066146e6727bfbd468344a0740d7f7c3d0ab8a2202f210428c81a95c6302209a9919636a5390d921c0aa8fc1b421ea63daf7f8ae0fd162012972d80fc38000555910b3c44124669a842612055894a219f7407bbb3bdbf7df5b14de54984bc2a26d5b032ba97ee4be071f72c7ec5d0831498213395a55b7b646c362f1b7fff1bffe8dcb278fbcfaad0f6e8d3effc2d3c7c370df6bdfbc7ff3d63ffce95ffbd393fac2dd77ad9643da48986a5e652a4e265518ba7ffca31ffe8de76f9e7fc5fde7ef3fff93bff9e19d533b6f7dfbe38b83f6e39f5d3c756d4916ce9fdd7dd743bb303fa99b6239d8079e383205e98757dc73fa0d776d7deaf3575f9a8769339a1d1fddba7e7d32d93d7ffecc5ef4f7de556e4ff0e07a0fd1ed4d9a21cacb0bf9ece72e5fbf76ebcc850b0f3c70f162ed279e3a64046bbbfe46b06277840771c4dd74328a02cd889c2b3ef7c9231a9e3dbfb7c71562310927d76f7ef467effbc3df73fa958f5ff9d7ffc7eafa1540beef3bffdf061ac3a0a2e9b9232266c7ec52e9b549fb8a31a6660e119d9a168e2318130e510d148d5348a92148dee0a72632553be210d9484d0b62ece3d09d28e8e2c00e1d992a190092a802b165cea2d575595675d70d5163d994de7be7aabaaea6a7c6a37ad23493d1745295455dd7aeac9d2babb2f66559d765559675331a8f475555795f3857fcde9701af07f1b0a11da78deef6cef6b9bb2e0e57af680c6f7fc7a37b17fbc23700308438f4a1ed4314e8a34a8c1a863e04196cffe000b4dbbfb53fddaeddfaff88d07ce6331ffdd73ffccf77b6e8c2d95343bb78f4c107b8a8421462ea562b402e47b5c6a862ceb9a4eb76cc92227232b5350f61450400620ce3717374701262c44c5bb19dedbd8256efff67ffe4c77efa6775baf39ac75fa7a029d82e7fda290bc629fd0733a0dbb47413004c317db6b6b75b4a55553334543322678677b899724e634a5fe2ec46da6cdac14cd1909808490d04d7f10e84ceb177854459ad16eda2eddaaeef5b24a80aef47b5f7de399fc88e94579a4a6b1f673a4633931430c185bd77d73ef5c9839bddee238f207b93088044ec098addbd76b79e1d1eec769d9b4c4d35138c37ca466242558bc40c4154d4114519a24604e4d4e4244699e618aa14429a2657775cba9b7858252258cfd3ef589ffecee27afd2b8a4829b93b5d9ce908cee1b148b8165eae23b02c6107f3fc1ded36fdf18eef41cd985dba80376bfab53b2af37c0c20046dca7a6b5a57551d421c86e1e8f078d575abb69d6e4dcfec4cd3b40891fb2e8668e88408887cda9083a2a63bd140451ca39819a1118674ac0005450036314101a488e01d35656980a11f98585189c97b6786642aaaf568822693b23e7bf69c6357385f16c5f16c71b2bf3fa9aac7def8d8e73ef789f3e7bc3f7f6918a2194391e89b529625c5f0033ff273bf78f9f8f7bff36bbeeccbdef5e8ebdff8ec673ffe3ffe8fffd533cf3df56d7fe88f7de8fdf4131f7ae24f7cfb19264c6bea0dd59d081de18f7fe0e393577dd5fff297bfe1fbfeda7f3d6edca557bef5b73e7be5f1c7e7b19d5d3fee67835ae84bac78ef829e1c79729f7a71f6c44bb382f564debef67d5fbf5b1d3ff5c14f7d7a462407f73dfacaaffa2ffecba73ff61bbffce15f285ea85f79efdebb1f9e54588e77ca1b07cb0f3d7ff2c967afddf3ea377ef59ffa0b1ffbc04ffd8bf7fff623779ff99a47ce8c0b52914f5e6b3f7275d1d473a0ea5bbfe10d8e5e741a39b81ffeb1a7ae15aff863dff6aed18d4f02dbea78e69ac9f2a94f1c3ffdc4de9bde23caf3173ebffdd89bfdf97bbad989e633d888c83976cc488e88d7879e89886a121a1b12baddbd1d18c4114411f345143390186314881ac9bbb418015307a8a2ccce443d133b0f88a2869a39a9d20919001382991840244243634013095d8f666c16fb6e0053b30351ff050f6b61193203a766ce81110132133b6a9aa66c1af254550d15057a57d7952f7d55354559364d827a8deaf1a869aac978e24acf8ecbbaf4ce2183b2b561359a6e5dffdc8db08adbdbe3f156336ab6bccfc18c9a420ed00ae75482591480cafbfb2fbd46b92ab9eb433b02872000d0aebae7ffffa4fd699465c775df89eebd23e29c73e79cb3b2b2e642015540612240100021029c298ea249cdb665c9b6d4f293e5b62ddb2daf567bd96ecbf6f3f39207d9b265bb2d6b1e28d2a2484aa4280e00416220066246cd5356e59c79e7734ec4defb7d887313d0ebd55eeff5cb4f642d209195f7de38113bfeffdfefb50bcddb0f02040058dcb7dc1f8c94316ee6ac7ae747b6d156c178e08df36c661fb3580cc01cf18e12ef7d0273a3d1dc5cdb1c74bbed4e8b81e6f61fc04b2fffdeaffee267befea4ddb7df97059465ead208a68fb7f60ccacc80d1bb56b524a0822956e576993471008943c986aa63042082814abd62a201830803078b6995c4a7285985c45a160632a0518f8760084c249d1aeb9caa7051f677bae341b7cc7baa9065b5e9a986b10e118c31f1af19030fa07b884534d6f83ceff77a5333d395a0158083ba7a5dba2babaf5f3633b3b5e98e8400448a482e21109335d0cc96dd6b5c7a2003556528de4048bc284e1d1130998448a2986b381c95790004138f50d59db0c6406445b19ee82ff648d971a92622426415cf5cc12da4024889e8045915b3ff54716324ced2ab87d61e0e7a4f9e33c189554e8ff81e991c8d307e4a89285e6130b302586b63367252b032fce6e166d5111350b036190ec7e72f5e160567d210caac9ed66a5996384245831a9410ca92b50af50345bba9442ebb48080a71b04295f55534b018b206208fe8059af8678247ca92c4898410ca2a6c5da96350948cb5692d2bcbe2dad56b257b54a865b583070e68591e3cb89ca4e9d3cf3ca53cac1d39227bf4cd9896029de934bffee48b9f7be6dc5ff8d11fffd047bea7353b73ff3bdeb6b17bbdf4e1f5b36746c43ff5b7feeebfffc77ffffce5eba78e1f1d8ec7267e1401003031f8f2cbe7e66e7bf8affffccf5d7aede2d5ab2baee64edd74fbcacbd78add4177a53f5271960d3952f4ac8dcc5ddf1cbd706da79181e13075f0e0f2f4ccb5d75ecfc14db771b0337ad77bdef5438fdcf1ac6c6cbefecce6387fed72777976e69d475ae7af6dfcee4beb57d6b6978edffcb7ffd1df3c39adb5b50357ce3efbf2ea763dcbde7762ca3abbcd0044f968347fece8e2cdb7d26be7a94cfedba75e7e653cfdcf7ff39fccae3e7be5cc6e60f1e332ad65ea3786579eaf2f1d6b9dbeb77df7db8b719e77b759119c0329a2618690880cd9b8ae543456911294a34fdc91b57ff3677eeaec13af4e2d34d737375357dfdcd985d1b817643ceae7a083dd1e1903856780bc18e465f02533496a89850b1f40390e0a32e78284789007d414d1384384aae09c356410d49251c0dc7bef99632830b035868c414066284b8f68c8229120000a68c0719197bd6e100ec201a00c010d10511902203a634551448cb3ce186b9dcd52464dacb3c622a94d4c50ffdebbde9a389397f9d1990330bd8b361564cf1e40c09ad297e3f198c5a3013492587bead65b6f7dcbfdeb4f5fda7c6d736967170e5511fd13470ebee7adb794b6cc8b30dd6a4ecf747a8381b5d65933353d1dd657b0bbd63e7d5fe9cb105855898c004831c2a411e37d644838a88221b269628d31ced61ad9381fcfeddbd772f6c24bdff9d4bffec767d66fe8ecbe4bd756463b3b0fbef5ad699a6a60751a835322319f062040a6029244160941244013ee3511704fae028159990d59d4e85e7e93eba7aaefb122065124358012fdc9150e1111100d3aeb40c0073fecf5c6ddbe1f17c1079760b3d572ce5ae38c358a441433d11cb7caa852cd8cad6380321480a196253a01a52b803596402fbdfe023858387a20e67fe28f68ac89ab57d6ce328232cf1b144f03d54f1e437186d012a489095c7a5fe423062e0968716e6eba51c358e26716f66a511184990ced99acf776e2716a8413f466a507d1583d9518c40488fa2d15e1583398c4ef26dabbc9e63a9ed226be118daffe6491078e79a40a2a59f590abfbb1782789714451e153e25379c2647ec31b15d5190a201c8043b3d56e36dbad4623cb52165f14e5683448ea65620011f2bc001104601163c85244cc54b09dcab787104442c5ff4244352021300b031a0074440628312e71291195f938785f6d69e2c5747c1a095b92cd9deddd71fff8e123f37373ec2531693f1fded8dea09aab0d2ce703b28bc8f1f6048c2597a4e3fef0eb4fbc70f36d772e1f585c3e7dcb81c5e5af7ff92bffea17fef7ac59c722ec6e6d9f7ee8c1777fe4236e7c218460d054cd4155444aad1d0ccb71ad7ce1f9effc9b7ff64f2e5dbdf8b677bdfdf02da7fce605288a951b837e5e46cf48e02064b3d49d3db7bab1d39f6b4f8fcafcd0b123cbcdecf1abeb5d30a9519c5b6c1b7cfa977f7e636d254d8ce5b4bfdb6f1c3c55b8f167bffd744f6d8af0818f7e787ae3d5affee22f6f0f329b651d91b53c0c67663b7e77302e124b451ef62d2d36c7fdde0df9ddaf9f7955e6ffd56ffdd2cc95279ffacd7febd2b6e9b4eafba6c0e5ce69b9f162317807501afc2e246936351b7c39dcde416044223471c839b907ab7a8d1142bf57adb0c360b2d9cee2d103cdb9c599b9e9b2289b2ec1566b707da57de0c07075dbb61aebaf9dadef9bddb872d976dadb67af4a232bbb3dc8929debaba6d5ec6f6f0968d12b3875dd6ed758abc23e84e083924a0871cd2802f7fba32c4b1da0b1665c042402889014216b638a43422899e37433867b2c4233cb50153d5b001165d6a04a0a6831becb4155f2d2230dfc00ad01059f17717c1142585d5979f7a9b72eec5f18e7f9786c56aff4dad36de76c626b8d2c6b6435ccb4a87906a8a54e4138047f69b4155ecd58bb02a1577cfdd13f2924ec5bd857ac3f7fea58766e2dec0ec78b071b18ab6ea90b41acd18dad4d331eb5cad297051119220474d68e55387832e91ef1dc5a1a8d865b2b97b25a9aa68908f77afd9a39f4f497ffe43ffebffe09b7b2fafcc18d0b17fa9b3b248a66b2de00b208a80019c4c87cd5bd2565c28f4505a14a3901a210c3ca8a2a15d414109414abde6ad4ab4642b0825669798977aa93323d802239e312c7c2c37e3f1ff48b7c14cad2a2c9b25a67aa61131bf309c61245d1a482083b43d59a28629214c885d166b171a9bbbd2b49676ae97034c7465697cbeabdd54b5b2bdbb3470e27b506fb323e21305e22100040a3d3e8a5104a8f58e52d25de42000a1219b214c6a3817354afa79d76c7022f2fd5b02cfa5bddf9d93900e5482ac649e8676292ddbbcad3d8ab07ae606a93d3469c24ed4180e3872b840018593a7b1571a982947fd62c18976644243431e33459cc21d65b41272fc4a422112fe3e33dfcc4cb5149ea2b95c31b3a409e88d7c3d4f4ccbec5a5719e8f8bf1e6f6ba2ffdb82814d1819f39542730a2127c19739c12a9182ce2192b3d800260f081083c0ba221a49299082b876215410755b0d664c658e79224e5d273080ae0c855f9236510e5d29b20533333a76ebbadd968a0ca70b8dbeacca1da4e63eaea8d4beddefaf23b8e975cc6aca702086051e4abe72f1f99e9dcfff027bef1adaf7cfdf1476f3979eac96f3efad22baf4c4dd79028a1ac04b8fbed6f1f3edb2dc6636393894e9600d05a67b2f453bff12b9ff9d46f6c77bb8d466376fec0f103cb5a37838dcdf5feaead25759bf6ba5d5f781018e67e6520070f2ce7fdbcf430db69b7acef8e0bb496c4cf2cee6bd5b051a3cb8dfa56d12d0683b4de7ecbddf73dff47bf7d63584eb7d3faf2a1834bad1bcf3d516b2d84c190d0b8c49405eb54a7bfb6331805eb9211e0d1030bcddee8371e3b7ba975e45ffcdb7f39b3f2f8d3bffaefb2993949eccccd0b986a776d15b5566e5f1eef5c6eecbf2b71991fed6c3ef3952b5fff32b5e76efefe1fa52423452443934cd19eaa969903f3dea591fda9bff3bfa1e12c6da42e4b129b6549a359af37ea54fa5667ca11cdccce865eef507ed8f7860b53d3cd7db353fbf74b3e5ebee948b1b2d639787074e37a737eaa7b752b5d9cee6e6cb866a3d8d9a25a6df346d7ab6ad91de42121b7dbdf1d169c8f86d66a312ef2b2ec76c7828690c7e5b8188ea39c38cfcbd2fbc0ac48492d1b8f730d5c783514751d685441d0000a30788faa56310e8808d591e5c00a6a8df1ec5520b516457776064b33d369ddbd7ce1ea2ffefa6fcc2dcd399b2649e2c85a226b4c926449ea6ace34d3cc395796e36230f8c11ff8a1f97d8ba4fca5dff9ecf32f3db77f79fe8e63eda58e6c6f8f0bdb505f745a73697d3784b2f4defb7c7aff4165d9deda30499ad4921863368a41141ded711be218c465e9caa54b179f7baed16ced3fb4bcb5b5f1ec173e75fef5e769aed3db1dae5d7b9912373ddd19ec760397f806ae3a9619e37d21c582922a8045d4d8d788dad2f8288fa0c6894e37821008452148b0100369b1b68622ac55dc434c54352a242ef1c2c658e7d2a2180f7bbdf168e8c34835242e69779a499a3a97262edd6b69be112f8e230b94ea46376bb38c871baf6ebef602e4bed1ce76777746adb9e6cc34871061c588d2bbfc72bb9576f61f07f61211c76428d26a58b50c16a40c60cb3101a971d12b12ebec2808a08b8b33e3c0045a06cd5c36dcb9963a91320751431442100984a00a026ae3b34ee44d89abf8589249eae00d967aa50d418ab039221491e831de4b4f4e6cd571e0be5767dd438dc720474578dffb53a96ac5950eb7badad58ad2bef71df60ab1151aee0dc76b55fe203222e1cad56b795116f9b856cf108202b8ac9e65b576665c9257cd375f54fd4fadc07681032161a54ec3780f200a86acaa06666b5c7c714d24d30346cc4ba75ecb6a758da06943550c8b485519d15ab3b3b579faaec5f7bdef7dc3513eee0d5d2b6b65ed51311a85d1e50be7d66fdcf8e4fd275bcd462e221260a2eceeeef6216d7eec23efba2261757dfddc99579e7bf25193a4f7dd7b5fb3963efbf433876fba399400e36d944230416155896d1e092c82a03af2e34177fd6ffcccdf5f5c3c2a1ea7c697f6b9eed66ab1d11fdc79efbbbb1b37566f5cc5ac6e0d3c7d6ead7ef08e9bf6cf7cf1f35f00a45ad62807e3411944c5e7fed8c26c87cad5cd9d6757463b3b7d0ef2937fff67179bf8c273df69346a655e1c387967dbf1ced5abb55a5aa025eb9c2551b464fa4528142c42ad563f7868fa5bcf3efd8d2b9b3ffc777e74e1fa334ffda77fd7585ab43309d6281f6d714f2c59440afd41b97aae75f8deb52f7ffae21f7fa61c0d5a4b079ccdcb9df5e68193ea0b346f242027792a9510e2e33f7ed911145ceae6708b853904d1c02c1cbc827011d2247168800c01d51bf5c4b924718d2c718e1acd3609b51acd84a0de691b81a9d966cd259da96929f385c57923b69e6649abdd6ad3c2fcfc61e5b9fd4bfd6e2f4b6ae3e1800c6e5ed9049b0c7abbf585f6e66be76a0bb3ddd575acd5fb9b9b49a3d6dbeeb9665af68a809a8f87a0a096c6e352bce44589098c47a3b20cbef441a5284bae4c6ce28b1038f8bcb059520445967ad6dcdcde1a2c34971617a6a79a0b73d333d3d345519251e68255475e61dc4b5ccac2c09ab8c425f6d2d51bf7ac6cee3fb1e81067ebcd72737b753878df0ffc1df6f9fa99cfce1d4c1effcad70fddf496d9f99910b8284b15aea52959f29e8555c6de589b385be485a2b52ed1890a8f5455a1dd68de72ec96d5175f3052e657af9f7ff5b95757aecccccf8e7bc3fee6761ebc061f4401201f8caa5ea070e44c81a8882a0a000a6b2cd4c81b33cbbd28869255a8ccdfd5d49f4590400179af822f5509c8908927eab8f137ce080b87908fc6bded1d2e3d2225896bd65bae963ae712eb2c45f922a96a84dc4c4416130f1358321988963beb5b979f5abfb24e4967eaa607b37a9ebefaa4030f4a084620d824e9adaf6c5edb9a3d7e33192232de3382d91b53089a94bb50ae1302e6a36a62a231181a4c553934649c700c8768a0be146347edda54b3e612ac021cacb120a3a820a0d5cfff868fb4ea85467e46dc52c7d1bc101021b1c43bd26a1d9c001a71ef093719a9cbdeffddab3201b0463ef224e110f969ba771f38c935bec1888fa6d049b888b9da62c31b9a57412443e4459825fedcb333d3ad76bbd16858eb14755c949687c01c6f7dbd574252101535642a766e8c4ca8a80aa28b8f0e225061636cb396aa6ac91c7ba0088a2aa9a156a3ee922cf7392a18b2b1906c8c05100e3e495c918fc0e0cefaf68dab97ebd3d36b3b9bc3ddeecece4691e7ed4e6b7a6a6aaa3d4dcef22847b0f1e916bcb72eadcfcc81c365f2f3b5c69546ab95d0f2a19bfef57ffaf5e1eae6a77eedd7efbaefed5b57cee6e79f06824aa980002abe64329497e383cb0bcb73b34fbfb425aef1e0bbdfbbf6cd3f1e5e7ed9d64c7fb72ca9b9ffe8899deb97393070b99dfb8b7df7f60f3c78e6b96f2228ba74bad3ecaf6fec0c73efa15e4faf9e3fff5faf5ddfbc76be1ffcd113a77ff8a7ffee6d0792affd9b7fbe9dab4d4dafdb9f5f58aae7a3f5713fada5a35282a86171b5b4d16a5fe97a1fd8389e9e6e3dfae837cfbd7466e1c0f2a527bff5ea5a63fae83e98ae936115c94765736646bc2f8763240ddbe7b5ecf52e9e6d2d1d5afef80fcd1c3fb1f1e81f8e6eacb40e9fb67f76bb501d0d5942886f4b8c45017bf32d37fbc0419599cbe001948040b90c25218168084141f3a25051effdc88f777a43042cafaf2a802f4b41f06530cea2b0b58e808ca5c498d4b99a4b09d13967133b3f3b7bf8f0a1ce74bb35ddca92dabe8599b4c9f37373333033bd343f7770a93937e5bb83acded0bc483b0dee8e4c6af35e9f85d1fbc1703c3dbfafbfb38b361d747731b37e301680ded68e47198f86a37149a9eb6e6e91b1c3dd5e61a4bbdd2f54073bbb83d9392b6c134d0cd7b3b4d96cb51bf5504ff2bc94c0318b2c0cb55a2d84c01c0c813334d3c81a89258bd6c1dcec74925829c3fa6ef7837ff1c7f3d1f8f96f7c696763dcefad740edd0c6005d4a569198288a649165858c0a9207856a5b41e73f7511c6c9304ad53b28d5aebd607effbf6d3dff8e6571f5bba69e9c4ed379f7ff5f2a0bb9bd43307d9d6ce4e90301a8daeaf6e01a021324041399a6ce3c260c80829b35453730088a98c787b2eaa3c2944c66e0e559e5253e531f6b8e3042200ea6c42c6886ac8cb62549465115bfa0090d56a699aa6f59a758e90ac3544460148d51aa3114e4b0e8880a582a473003f2806577aebd7d7ce5e2c47da3a70d3d2cda7b2e9d9301a044c94c7556b9f8c31b6bf72de354c637199bdb7a98d3249ad385fe86c6aca4d3265bd0ef938570e38995b1b9b20a804297d18e5b9847c3c1ed5ea6d0aa1545184e083ba34ca62854b83b1bb2493b409be696b0c134787d9bbaba88e23485401c427e0208d033185c9bfbd2735addc7b936fad6fe00822b52c0ed4614f5da90af067a6fc202aa4551b27aeb2a4082a0e0d4f02f9938d9b54de0e049724070f4c25495a783f180cb77776f332d710fa79b9d849e6162d2088aa2fc50046e793215215c53dd0a8aa42546d8882250cac02e0ac615116316f6493d09a243ee5c3b0f0de4f46bef1aac09031d6a5c3de3694c382fd532fbf32d3a0f7bcf58eb7dc7f6f966567cebdfec5a75e57a5a5d976046c4454199215d566ab65ac1de57e6eaaf9e7de7eeb6b57ce6df6fb0780cebcf45a677aeecfffad9fb5c4abdffa63ccfbb6d616510031842148391836673aa3222ccc75feca471f6e925d7df1d98dc353b5d195ae4a89be4c30e9cc4d672afd2d936446e58b5ffbd6f22d779e38b6fc87bff26cadd6d07a737a26d97cfddab02c9593eee6d6031f78e03d1ffde4338f3ff68dcffeee68d8fbd6173eb5e92fee6eef94ae86c05ea4d3b0babb2a8ae3b2e896390016a37cfac051974dadde18002119d3ed765fffa3d717e7e7b3c45d5fdd1a9c9a5a9aaa8dc6c1978c15db154420ea84fbd7ae747adbed5b4f075fccdff70eec6e0cae5d31f3c7adb3c03ebe39f7f60731172b93ab9ef8e7765ce421f27b9c4dd41a8cec344954ac75d1ff612d29700852fa103b0e3103eb43092a81594442e911940307f608ca65f0217425a8a88cc6bee72f6cad3ffeeacb281a732fcd46d66cd5675ad30bfb16a767a7a766671a2e999f9f9120e35149116e56161c0a3fca21e8eed656a3d5d4c237eb1df06563aa9d25a9cbac116d375bd62633d3a635d7ee4ccf4ccdccf9413f5b98eaded8b24952f4776bf5f4dab3af9763e96f774f1d5cfec487dedbddd971f574677bbb70ce8f02014899a3b1a3c23b635c6a95fd6cabb930376f1bb5d217ed4ecb21264996af6ff48bedc6be79f63ecd1c20763a33f9b81c17a351f0699a596301d018836480a8f48c44682830a331a8624c528ef39906eeabb5cf3793175f78696b6dab31df59bbb1312a460ae2b234a6598d35f9b8e80fc7dbeb5d11018a16748cd5d30a501c756771a9468c67ea89b91b29da31083dab4c58ee55165bc1c6ed6aec02100a2b87c002a52f25b0b02062524b53e75c9264594a64d23475c61a228d7d1f40a364addb190c38e0fcf434f328dfdd059f072eb81ccb6830d8be311af5f212a036bf7cea8ee9a5256344f291b3c6a4569931d670c04a3118ac5f6b2e2c934ba8926660e41dc69b554744a2d63893822fcae003d904b9babc5120048a15fe388a8f7478556111562d999162213647ac4a7e087b3beebdabd4cab13751272912109a8a7c0f31aa88d5a0a67a9e529ce454dbdf6acb1dcb466f50588d317b737505c1ca523731714f8ed821048851b16a948aa2401021168a20552576928b8d878c18753764c0b895f51bdd610941957dbd5e170c897173ede9d9b6027a5155efd907ad9e9b1a8953cc1c033a12373caa915e6155c83855298a425d7d82c82167289421b12e4b6a3631a1f4314410ff8ecc21f61983eab83f2847fd03c74e38f8f2cffdc49f7fe48e9bfb5bdbcd66f3819387bf737e63736d7bae53034583a80a2c6a54ac73882acc866877d8bffb96fd7febe3effa83475fd8dd5c7ffc0b9ffbf0f77d42762f6cbcfc04ec5e37f54e65d841a320ad56bdbfb27a63581eb8e9e8705cdc7c78e1e77ef2e31c38acbc14ea6d0e634b9aab62ad35950085dca68931e6ec992bdff397ff5ab9767e3c18b8566776716ebed3babcb3530a24960a4c6f3a75f4b0be3277c2efdc74f8a917cf7ff1f21f8cefbae9d8e2229f3d27164d52aba72eef6e35a6b250c36160041c0c46b307961d989dad7e9ad58a7c94d49a77df7fffeaa58b08d8ed762f767bcb8b19f47a4840882631457fc01e652cc58e8efa9bfd6bd7dab7dc72fef77e857efb97f3ebafafbffaf2e99ff868d58a4678730a4b2be84c24855459597be1e295204c68abbe74c5a0416b1dd9c49075d6a231ce8121ac901a0064635fd9584a5d6694b03a4522184bc22c1c471012a9c300828412783ccebd6700cd87a3b5ddad4be3abac21142c48d618e70cc45e8c2a9a784435d61a8318bc570e69560366058989690474c6a649e2a3222a21544cb22ccbd25a9a8c7ba3662d5bdc373b3b33dbf43ab515ea9dd9faeccc6d274e84f1a8d648cbb2104bc39edfee76536b62ba30515c3a7c6834ee7796e6c3d0ed6c74c9660d937df47d1f540d379fba759eed195f8a20fb2273ce39371c8da3fe418298cc02a0000a4ba555ac3eba061410ccf4eccc937ffad5cffde1ef7fe8a3ef7efaeaf5b3afbd8465e80d06dd8d4d01048bc6a683614f81b35a7a7d75ebce5b0e3c72f7c15ff9ad9738deb951cc115af54184ad71f1646e8c65611126403206404350c298369138b9166191b84513258aa2864a9a43e80bdfebf7bd97244db3244d92c43aebd26442b8c5aa0a17ef36e3864f63b612d25ab3b7dbed5f7e69b071211f75d1100bab8a0f88d954327f607a6a5f6b769e9c4566091af7e92a242118435e31a965bb975e1bf564eee4415f965996a832543615aabaa01a500b636c2821dec16a74de4ad5a344446b0d9404aab5cc120a26a61c81b5d6198b9168c839a15766306e823e557c436835c92ceeb5ffab02134fc0cab0d70cd87b18ecb1bd5439e6dcdf807ce9debcfecfce670063be07f7f83c31dd247baa10a818732a6fbace454564a8aec0dff8512bf00d80a208042f96a835dd6ad6d35a92a5490a203e28ca8ef7439b2420202547f21caa5a53eda6148d71e8bdc4ea778c5fec7d6f83c82241344b1c2a08b3416aa64992a4aa1a8ab2122a224d02a02a22a86ad2e4b5679f3af5ce0fffc3bff603f7ee9f79f68b7f5a1625281ebae3f4e983075fd8de69d4b3c0d5a57fe4740847673d2a8006d91de46fbbfdd4ad870ff7cbb2d5ee8457bfb4391e38635cada5ca524de7a451cffac3d1179f7dfd2db7df9a3a1ab28ec76562ada860521300f6799a24dbbdf5acd14cb5b08469da188c0677beedc1bb8f1efad27ffe57b599ce382f97f71f984fb267bafd02d3c4d0fcf2c126e085a7bfa6f90616a1d66a635fc2d47eb7b408f20a51ad31d569d64886c3e65276792becf443922485c089134792a2372a0a486c777bf7033ffce1f73c70cf3ffdfb3f579023d2eb6bbeb869c1dabe2689785f748bc4756a6963e3f235e514ca6e7ef5b5b97b1fda77c7dbceffc1efa275a77ee827e76fbd7db0b63699b6eb64988688c0c1330b129135481600ed91b96940158031c7c60796ea59143510499010bc6801a320226cac63011655048e734b454b8484c699d89034c622a821eb1217f33a80608c356430d534cd8228284a3b20822873f0f15ebd7a8900c81a042030d11468c81822608e350f5609aca5f73e308800ea280431d80f39e64a445c0cdcc089671f8245c26b9776777744cdc15aeb277ef0fbf7d75adf7efeb57df353b59eab59db70644b49846a49dd97f952ab393dd5c2a4069eb4c7fbe66621877c346e4c4dddf9c8dbcad1b83935bd549f99ea4c171ebc0fd692808e8b92a2f74c95c818e398595955a49a68c4dc39a2211a0fc76f79fb835ffb83dffb7bffe09fddfa8e075207175ebfd8f765bcd50b05d76a406877bb5deb1ca97dc77d474fdfd519fde7e164f6fb068b272e32b162261040d5c4786424c74e6c6ed51eb2e259116195751355940aaaa12ad61a638983a44992a629c6b3075255d38f97b7134c0daaa1a46ec483aa6799999aa2edd75e7bf649db6a4fef3f0649d39ac426994db3b456773603440215ae86605a2ddbc4795181cb88066b9766e63bf5ce4cafdf35ae2d9c4fdcd11ad5b10a04caa09a38b20c9e390300c010c90a84a820a280a6962600250b1b4764ad3007635c95232c413d80825aadb286f8466ae50d98e744533be13d440f4ad5289d78b4f7a89f95441b69ef4f4585c04c9061884891ed1c87f308a00c31b1332925019a6a0b1a1f065275624998810028d2e6a9a24a47a83a544aa658808b5bba43cb870c41bf181779510cba79ee85c3680c8b5334b56480d0b332737cb740c5dd55896e95383422ad7a5588d66059fa2270e25cfcf1238a39305b03b5d4a66946c6717474a0895f936b1814a0c1a07fef6cf3ddf7dcb161569fffca978cabb7e61787db3b83ddee6dc70f6c5e3d6313c7f15c5465fa544110d5c4909f28fbd01f8dd37a92d54c99f7ac0a64358d5837c49814cad2da7894ffbb5ff98cd69b77df73aa1c8d8141010a1fadaa00cc3c0ec6c0765f9a47a633332244b269afbff9befbef4f7bd72e5fbeacd6b11fcecf4e9bd0eb8e189df3be589e5f9caba7b0839ace6d0d5790301f8f5bf3b353fb96bc1772dc9eeb4c65c2c341234b777ac35cd08efb0b878fdc75f4e6737ffc9b234004cdea8dd9b9a9fae0b5fd5370b60bcd46bab5b1bbde5b3c983646bddc0f028f31d822506113cba23486b2bb5d6c6d2cbffdfdfbdff2a01f0ec6bb9b97bef43bf3b73f606ad338e961548f7661e610f9804426a6bcecf1341341cfbe04b28420ded81aa4c633b030a61629a85200ccd9972a0a46088208800f8a8a262832996899040109a58806c4711eefe45995acb1a22ac811a4c41254d546eb1da275c63827a2aae29c738ad61a20202234c6398706136b490114b2240db1bfe35c848ab244da9e606c3fa1418d5966265550bebe72f1da85abafae5c7ff195b36f7bf777bded130f17799e0fc6793eee9765087e909967cfbe70f7c9bbbfb379e3d9c73f9fb6ea878f1cbff8f295d3478e7ddf773db27ae3dac98fbd7dfae06c7fd01b0c8a127205ac65ce05a79573ce4428a0b556942d3a636202b09a9732071025c466ab9d25f6dcb34ff6f33ecccc9cbb7071d0db728d2c1d43afdf0f418bb2188dc6cd763b496b889266c189afd9b45633e31c01505958d51ab21455cfac0a864cb46f19b2a112c2198a6ff9c85faa9e0652d1c023478c5022bc8a0815c89a66bd1e128e224f631c99784cafb687088662a81e414474b80db536a064f5d668ebeacb8f3ea9edc5a3f73f54afb7408c42a864e731c380a0ac930384208a50526f75baababfdadcdb4ddca07bbbb9b6b73876e61889b0f2a4245a207834a26883a04424390a699c59c8579825998a49008148c6a406415f13e6459a3d66c1781f330863aa97a112fb0eba80e9061a51dad36eff0a60ad304c1b81734d4d883052261a66a2e026fdeefbfd1f29dacf5817d04b74496244c928b15538caa69ff64c88ed5463d727b602f3d39b12c4d024ff1450430883201e8c5230c09e0ce6e7778b58789cd3540f044688cad27cd769b5bf502345595b228cad2a3412004612450e0287994e09919d11251f02c820ae2035782730143c42202060012039925408cc62a22d2c931889008c0a3e96eac7df803ef5b7ae0bd9ffef4a74ef2960ab97a3d8c73536b4e1f3d3a45385c3f111584559f4be3c5384e38805a2976558ac8aab48972008c99d438f83200e29907a3f1bb1fbce7c0f252918f030b9115095009691041817d91cbfadaf88eb7b97a1a5c4aebe757eab38b77dc7ae8dacb5f1c234af02ca1594bfda837f485888e07c3e5434b870f36d757ca272e8c6ef4381fed8cc4dc7ecffdb3dbafb69c591d15b3364d32a8a55a16e1d28d11285fb978f5affec3bfbe98e57ffcfa2b6c92844cdae84c4d59f0ab4796e6ceeeec586bb6777b976ff40f2dd9b03e469790255146b0680cb05732f9a06f9cd97ef9b9d5c7bf38ee6f176b379ab30bf3a7de424926f9e84defd888101055413093f31cd85b1eba290464ef31b084108a12852470f46a0333286a105508227959469648dc637b16510c02686cfc1497caa5354aca18cac041202081924b4909bd1a3000ce946c34682c4ba231818535b0863204cf631e08b20211332844570d10a2b218b2a94b8c212203680049ab668941639234233486c8dac41ae3ac71a9b54459a3539fed7228d5fbb9f94ee396bb4351b2f83278ef4b4b987b5f7ba6d36974e6cdc2c5d6f699b5e787cdf3df58bf76f5c66def3f75077abbbe79addf583f3473abd861003fce8bc49167e6c0a94b268476b4c6a94808deb91ac79b9138eb4648b2da74a7f9fa2b67ae9f7bf6b1affde98bafbd662c96db3e5ae209092df962c0c283de28aba559b32efdcd8fbefbfe87def72ef19b04aa91ae1d7bfa11082062ad05115189a87e9d800827404100a924a1182b405510a252fd9021058dae65224022200542632b3f601cefc623369256533e9799ed1573ee1be6f43b65e67096e2cb4f3fdb5773e77d0f4ccd2df8d186ea1aea02988e8847558a57d62450152c217258d3e976b874a97bedb57db73fb0b3be123cb6960efb50186bab0c64d5d8a4c92524aa229229bc165e8d21add44893a8ba33e0121c0942f0de8fc7012408e7cde64cf0a196a62282d8035a553e4218f1bbf1c696ab7612d2a4a7fa46002612689028eeef89a28caaca5fbe192fa3a20431ab4b1398812a709cce1b322c41c14d28f0a22a84a6a2bfc58f2a6b5ce35474f2474284aca02ac650e5508bb91095c85321205620c5801a381882344ba6eb6de76cea5c2d6d06ce7b836792c48a2cdb847c51144589442a8c84c6a07000116312a98e85a2022c0aa006b00014550b242c2c1c69ec0cdc48d2c4d2a828709c7b5fc60718882208017881add51b7feebb3f70d3873ef1fd7fe3676fefe07ddf754f1728e4636ca6271e7aa439d71e6f6ddd7eebad015810c8189160aa3738c6761a1900acf078644d9ee7ecc34cbb36188c8c4b8db1ce1875240086a8b9b470f34d477cc9ddc1c8195244241bb722c659290a09e578e84f3ef4e13b6ebfbd77e98ff62d2fcdf7e61ef9c8c79668e7b90b678a741e47a3e6ececbe85f9cdab2facacf7768712cafca5a79efa4fd75eb971f9c2eb2b23cf3c35b5f053ffe8e74eccd5569e7af6a177dcf7ab7ff8e8c533af9c7da976e7bc3cf6ccf5275fb8d1ebe73ff4533ff7fef7dc7be6b3bfe0b35479c0c2f5d9c54edbf5567696e7daadb49b8b188495b5de707ec13808a41a38049e595eeeae6df9dd2133a76104c0bb6b377c7f276b344efee59fce57ae0c37b666168f014dee6f62dbae2a6823582432880680adcf0ca14d2975ce90a9c2098420080ae09094e356824100584a5f8018142c0a0685300a7e5ca20465610ea351598420a8ec3d08b0a8893f44bca96326825cb48ca30525010091a0a4aa62936053054115a3c4600ae50022a8a584aad284a8cae322e445d1a8d7e2698139040daaa88a222c00154649d433cb783c375b9f6ea6bd35ec74ea508651b710f6b168174259aab61a8de5e9857ffd1fffcd4ffcf85ff9899ffefe7ffb5f5eadcfd43ff62377ac7f8d87885373e9707375b5181cb9ff749907b2050918eb4a5f5a1b336c1ad3032c9238b7674702883b6b6d4e75ea89fdc697bef0a5cfff41590cb7777693c47a9f3b432280d600e8a83fb22e15289bcd0cf2e1c2bec587bffba11ffcc10fd63be9e37ff81bea03104a7cdf1384aa2f83a0801493917b302c45040294ea9c4e154e206258004403aac18acc6b415520b2f80809c8c6049fbfb1b6d16c4dcfcd3544834d084d649f595006e3b2f1861d943cda7207efd8bafeeac6cad5c3a7ee6a75a64311104740ab221d243268b4a201a302440d0d0188a841a4b491350d6b28763760fbeaf4fc4cd6ea143b3b640c2072e0108452a8bc7e848a2490aa0cf98d7908ec39bf4d9afabc30a3422015e62c496a599639b2942ccfb5c4b4c166455900ec181d803a152143d12757cdad2a9c4e95048917a7, 6000, 'Atung', 94484884, 'Pontianak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_logs`
--

CREATE TABLE `login_logs` (
  `id` int(10) NOT NULL,
  `login_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip_address` varchar(100) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login_logs`
--

INSERT INTO `login_logs` (`id`, `login_time`, `ip_address`, `user_id`) VALUES
(1, '2019-03-18 07:02:59', '127.0.0.1', 1),
(2, '2019-03-18 07:28:15', '127.0.0.1', 2),
(3, '2019-03-18 19:19:26', '127.0.0.1', 1),
(4, '2019-03-19 21:48:10', '127.0.0.1', 1),
(5, '2019-03-19 21:48:27', '127.0.0.1', 1),
(6, '2019-03-19 21:48:58', '127.0.0.1', 1),
(7, '2019-03-19 21:51:56', '127.0.0.1', 1),
(8, '2019-03-19 22:15:37', '127.0.0.1', 1),
(9, '2019-03-19 22:18:13', '127.0.0.1', 1),
(10, '2019-03-19 22:19:19', '127.0.0.1', 1),
(11, '2019-03-19 22:34:06', '127.0.0.1', 1),
(12, '2019-03-19 22:34:56', '127.0.0.1', 1),
(13, '2019-03-19 22:39:02', '127.0.0.1', 1),
(14, '2019-03-19 22:45:12', '127.0.0.1', 1),
(15, '2019-03-19 22:49:46', '127.0.0.1', 1),
(16, '2019-03-20 23:27:16', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `nohp` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `alamat`, `nohp`) VALUES
(1, 'feliciano', 'jln sungai raya dalam', 393939019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `jeniskelamin` enum('laki-laki','perempuan') DEFAULT NULL,
  `status` enum('user','laundry') DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `laundry_id` int(10) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `jeniskelamin`, `status`, `user_id`, `laundry_id`, `remember_token`) VALUES
(1, 'feliciano', '$2y$10$FGx5R032j.JZGX44H7X/2O3rfaL/Vv0i4kcM5KWrPUEC8CM7vtBEm', 'suryamarcello@gmail.com', 'laki-laki', 'user', 1, NULL, NULL),
(2, 'fleren', '$2y$10$6ltOlKrBWovOIVXD9v7rMO0jKi7vuX7tDVt74i3mfvF/1SWThKHFm', 'flerenpicestelia@gmail.com', 'perempuan', 'laundry', NULL, 2, NULL),
(3, 'david', 'david123', 'davidleonardo@gmail.com', 'laki-laki', 'user', 3, NULL, NULL),
(4, 'zauhiung', 'zauhiung123', 'zauhiung@gmail.com', 'laki-laki', 'laundry', NULL, 1, NULL),
(6, 'kelvin', '1234', 'kelvin@gmail.com', NULL, 'user', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `laundrys`
--
ALTER TABLE `laundrys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_logs`
--
ALTER TABLE `login_logs`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login_logs`
--
ALTER TABLE `login_logs`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `xitkj2`
--
CREATE DATABASE IF NOT EXISTS `xitkj2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `xitkj2`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbuser`
--

CREATE TABLE `tbuser` (
  `iduser` varchar(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `ket` text,
  `status_aktif` enum('Y','N') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbuser`
--

INSERT INTO `tbuser` (`iduser`, `nama`, `status`, `pass`, `ket`, `status_aktif`) VALUES
('feliciano0', 'feliciano', 'Admin', 'kalasnikov123', 'kakakakakak', 'Y'),
('fleren', 'fleren', 'Admin', 'lala', 'aku fleren', 'N'),
('justin', 'justin', 'User', 'justin123', 'lalalal', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`iduser`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
