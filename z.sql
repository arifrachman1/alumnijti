-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Agu 2018 pada 01.51
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alumni`
--
CREATE DATABASE IF NOT EXISTS `alumni` DEFAULT CHARACTER SET armscii8 COLLATE armscii8_bin;
USE `alumni`;
-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id_mhs` int(11) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(65) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `prodi` varchar(21) NOT NULL,
  `angkatan` int(11) NOT NULL,
  `th_masuk` int(11) NOT NULL,
  `th_lulus` int(11) NOT NULL,
  `jkel` varchar(1) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `pekerjaan` varchar(50) NOT NULL,
  `jdl_TA` text NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id_mhs`, `password`, `nama`, `nim`, `prodi`, `angkatan`, `th_masuk`, `th_lulus`, `jkel`, `no_telp`, `email`, `foto`, `pekerjaan`, `jdl_TA`, `status`) VALUES
(2, '83b3f8a091148507244fb5a7b1a56c89', 'Riansyah Rohmatullah Herianto', 'E31170307', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Riansyah Rohmatullah Herianto.jpg', '', '', 0),
(3, 'aa5d5f51f22b8e988a38c4b5f1a74585', 'Dedy Bramayadi', 'E31170570', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Dedy Bramayadi.jpg', '', '', 0),
(4, 'fbedc03bf43116d1f9691c8412a5d645', 'Misbahul Hasan', 'E41150815', 'Teknik Informatika', 2015, 2015, 2020, 'L', '', '', 'Misbahul Hasan.jpg', '', '', 0),
(5, 'f46b9928d173c69f4b78157e4a71e308', 'Audi Hening Cipta Prameswara', 'E31170468', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Audi Hening Cipta Prameswara.jpg', '', '', 0),
(6, '2f7caff40c37e6e539a3ec5de53cb92d', 'Adiim EF Khatami', 'E32151331', 'Teknik Komputer', 2015, 2015, 2020, 'L', '', '', 'Adiim EF Khatami.jpg', '', '', 0),
(7, '28ed579133da3844036dd1d4cab6d536', 'Imron Sholehuddin', 'E31171866', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Imron.jpg', '', '', 0),
(8, '71ea703161ffb46661d39dfd8093b6c5', 'Fedy Rahmatullah', 'E41171169', 'Teknik Informatika', 2015, 2017, 2020, 'L', '', '', 'Fedy.jpg', '', '', 0),
(9, '006b18064068a496856645c29b56704f', 'Ahmad Fakih Hasbullah', 'E41171583', 'Teknik Informatika', 2017, 2017, 2020, 'L', '', '', 'Fakih.jpg', '', '', 0),
(10, 'c0c18b2ba31a67dcdca48990fc919509', 'Nanda Muhammad Saputra', 'E31170603', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Nanda Muhammad Saputra.jpg', '', '', 0),
(11, '5b7e5edeeece2981263d8a533a9f2e6b', 'Fedya Kharisma Putra', 'E31170400', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Fedya Kharisma Putra.jpg', '', '', 0),
(12, '5a48b2c909400cd3eb4c5c8d5a9a35e2', 'Mukhammad Fuat', 'E31170001', 'Manajemen Informatika', 2017, 2017, 2020, 'L', '', '', 'Fuat.jpg', '', '', 0),
(13, '202cb962ac59075b964b07152d234b70', 'Syarifah Aini', 'E31170704', 'Manajemen Informatika', 2017, 2017, 2020, 'P', '', '', 'Syarifah Aini.jpg', '', '', 1),
(14, 'MD5(tes)', 'tes', 'tes', 'Manajemen Informatika', 2, 2, 2, 'P', '', 's', 'favicon.ico', 'tes', '', 0),
(15, '202cb962ac59075b964b07152d234b70', 'a', 'tes2', 'Manajemen Informatika', 1, 1, 1, 'L', '', '', 'favicon.ico', '', '', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `postingan`
--

CREATE TABLE `postingan` (
  `id_postingan` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `tgl_buat` date NOT NULL,
  `tgl_update` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `kategori` varchar(20) NOT NULL,
  `kunjungan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `postingan`
--

INSERT INTO `postingan` (`id_postingan`, `judul`, `tgl_buat`, `tgl_update`, `gambar`, `isi`, `kategori`, `kunjungan`) VALUES
(1, 'Judul1', '2018-07-22', '2018-07-28', 'favicon.ico', '<p>tes &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ni co<strong>nto</strong>h favi</p>\r\n\r\n<p>con yayay ycon yayay ycon yayay ycon yayay ycon ya<u>yay ycon yayay ycon ya</u></p>\r\n\r\n<p><u>yay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yay</u></p>\r\n\r\n<p><u>ay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay</u> ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay ycon yayay y</p>\r\n\r\n<p>ayaya ya ya</p>\r\n', 'loker', 1000000001),
(2, 'Postingan Ke 2', '2018-07-28', '2018-07-28', 'envelope.png', '<p>&nbsp;&nbsp;&nbsp;&nbsp; syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini syarifah aini</p>\r\n\r\n<p>yayaya</p>\r\n\r\n<p>3</p>\r\n\r\n<p>4</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img src=\"../images/Adiim EF Khatami.jpg\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>5</p>\r\n\r\n<p>6</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'loker', 3);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`,`username`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id_mhs`,`nim`);

--
-- Indeks untuk tabel `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_postingan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id_mhs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id_postingan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
