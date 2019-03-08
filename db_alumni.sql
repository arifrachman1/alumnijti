-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2018 at 03:21 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_alumni`
--
CREATE DATABASE IF NOT EXISTS `db_alumni`;
USE `db_alumni`;
-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `alumni`
--

CREATE TABLE `alumni` (
  `id_alumni` int(11) NOT NULL,
  `nama` char(50) NOT NULL,
  `nim` char(9) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `tempat_lahir` char(20) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jenis_kelamin` char(9) NOT NULL,
  `status_perkawinan` char(11) NOT NULL,
  `program_studi` char(50) NOT NULL,
  `angkatan` char(4) NOT NULL,
  `lulus_tanggal` date NOT NULL,
  `lama_studi` char(30) NOT NULL,
  `ipk` char(4) NOT NULL,
  `judul_ta` char(255) NOT NULL,
  `no_telepon` char(20) NOT NULL,
  `email` char(50) DEFAULT NULL,
  `asal_slta_tahun` char(50) NOT NULL,
  `nama_orang_tua` char(50) NOT NULL,
  `alamat_asal` char(255) NOT NULL,
  `password` varchar(35) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alumni`
--

INSERT INTO `alumni` (`id_alumni`, `nama`, `nim`, `foto`, `tempat_lahir`, `tgl_lahir`, `jenis_kelamin`, `status_perkawinan`, `program_studi`, `angkatan`, `lulus_tanggal`, `lama_studi`, `ipk`, `judul_ta`, `no_telepon`, `email`, `asal_slta_tahun`, `nama_orang_tua`, `alamat_asal`, `password`, `status`) VALUES
(1, 'Abdul Mujib Arrohman', 'E31141735', 'pics.jpg', 'Jember', '1996-01-26', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 12 Hari', '2,95', 'Perancangan Character System dan Game Controller pada Game Sandbox 3D \"Treasure Hunt\"', '085733009755', '', 'SMK Al-Qodiri Jember/2010', 'Drs. H. Akhmad Rifai, M.Pd.I', 'Jl. Manggar No. 139 A, Jember', ' -', 0),
(2, 'Abdurahman Hisyam Tholib', 'E31141807', 'pics.jpg', 'Bondowoso', '1995-03-20', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 16 Hari', '3,05', 'Perancangan User Interface dan Site Map pada Game Sandbox 3D \"Treasure Hunt\"', '081803535881', '', 'SMA 3 Bondowoso/2014', 'Hisyam Thalib', 'Jl. Imam Bonjol No. 880 Kademangan Bondowoso', ' -', 0),
(3, 'Achmad Romadhony', 'E31140177', 'pics.jpg', 'Probolinggo', '1996-01-09', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 0 Bulan 15 Hari', '3,21', 'Perancangan Controller, Game Rule, dan Weapon pada Game FPS \"Sang Patriot\" Berbasis Desktop', '082244415539', '', 'SMAN 1 Kraksaan/2014', 'Hosen', 'Ds. Kembengan RT 16 RW 04 Probolinggo', ' -', 0),
(4, 'Afenda Bagus Arisandi', 'E31141362', 'pics.jpg', 'Bondowoso', '1995-08-19', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 2 Bulan 14 Hari', '3,25', 'Sistem Informasi Penjualan Spare Part dan Service Motor di Erick Motor Tamanan Bondowoso Berbasis Visual Basic', '081332562628', '', 'SMAN 02 Bondowoso/2014', 'Supriyadi', 'Gg. Soponyono Tamanan RT. 12 RW. 02 Kec. Tamanan Kab. Bondowoso', ' -', 0),
(5, 'Angga Dwi Novaliandi', 'E3111769', 'pics.jpg', 'Situbondo', '1992-11-07', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2011', '2017-12-14', '5 Tahun 0 Bulan 0 Hari', '2,77', 'E-Commerce \"Kicau Mania\" Pasar Burung Situbondo', '081357726796', '', 'SMA Negeri Asembagus/2011', 'Amzariadi', 'Kp. Gedang 001/002', ' -', 0),
(6, 'Bhaskoro Dwi Prasetio', 'E31140550', 'pics.jpg', 'Jember', '1996-07-01', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 2 Bulan 7 Hari', '3,03', 'Perancangan Mapping dan Saving System pada Game First Person Shooter (FPS) 3D \"Sang Patriot\" Berbasis Desktop', '089679038288', '', 'SMA Negeri 2 Jember/2014', 'Prijanto Wachoemoerti', 'Jalan Perumahan Mastrip L34 Jember', ' -', 0),
(7, 'Egy Raka Tiony', 'E31141644', 'pics.jpg', 'Jember', '1996-07-10', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,07', 'Pembuatan Model dan Rigging Karakter 3D Menggunakan Blender pada Game Sandbox \"Treasure Hunt\"', '081805335682', '', 'SMK Kartini Jember/2014', 'Rony Anugroho', 'Perum Tegal Besar Permai I AG 16 Jember', ' -', 0),
(8, 'Elvira Safitri', 'E31140999', 'pics2.jpg', 'Jember', '1996-02-13', 'Perempuan', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 2 Bulan 7 Hari', '3,29', 'Perancangan Character System dan Particle System pada Game First Person Shooter (FPS) 3D \"Sang Patriot\" Berbasis Desktop', '082302424224', '', 'SMA Arjasa/2014', 'Adi Hartono', 'Jl. Rasamala 2 No. 30 Baratan, Patrang, Jember', ' -', 0),
(9, 'Eny Kurniasari Effendy', 'E31140986', 'pics2.jpg', 'Pasuruan', '1995-01-31', 'Perempuan', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,25', 'Media Pembelajaran Teknik Dasar Bola Basket Berbasis Flash', '082233323113', '', 'SMA Negeri Kejayan/2013', 'Slamet Effendi', 'Jetak RT 4 RW 9 Karangjati Pandaan Pasuruan', ' -', 0),
(10, 'Imam Khosyairi', 'E3111389', 'pics.jpg', 'Jember', '1993-09-19', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 6 Bulan 5 Hari', '2,91', 'Pembuatan Peta 3D Kampus Peliteknik Negeri Jember Menggunakan Google Sketchup 2015', '083847603614', '', 'SMK Kartini Jember/2011', 'Langgeng Sumito', 'Jl. Let. Jend. Sutoyo, Griya Putri Kencana AH.04, Kebonsari, Jember', ' -', 0),
(11, 'Juan Hadi Cahya', 'E31130964', 'pics.jpg', 'Malang', '1994-12-08', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2016-11-18', '3 Tahun 2 Bulan 5 Hari', '2,89', 'Sistem Informasi Berbasis E-Commerce (Studi Kasus Toko Peralatan Outdoor Cartenz Jember)', '082333582005', '', 'SMK Negeri 2 Jember/2013', 'Hadi Purwanto', 'Jl. Pancakarya 10 Jember', ' -', 0),
(12, 'Lazuardy Novanggatara', 'E31141625', 'pics.jpg', 'Jakarta Selatan', '1996-11-18', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 13 Hari', '3,19', 'E-Commerce Bata Ringan pada CV. Racha Mandiri Jember', '08883532030', '', 'SMA Negeri 1 Arjasa/2014', 'Yuhartati', 'Jl. Belitung Raya No.11 RT 4 RW 17 Kec. Sumbersari Jember', ' -', 0),
(13, 'Muhamad Fahrin Ilham', 'E31140314', 'pics.jpg', 'Jember', '1994-11-28', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '2 Tahun 9 Bulan 5 Hari', '2,75', 'Sistem Informasi Penjualan Spare Part dan Jasa Servis Motor pada Jona\'s Motor Jember', '081230598061', '', 'SMA Arjasa/2014', 'Suryadi', 'Jl. Riau No. 17 B Jember', ' -', 0),
(14, 'Muhammad Anggo Imam Zainuddin', 'E31140615', 'pics.jpg', 'Jember', '1996-03-26', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 13 Hari', '3,04', 'Pengukuran Kualitas Pelayanan Perpustakaan Menggunakan Metode Service Quality (Studi Kasus Perpustakaan Politeknik Negeri Jember)', '082326613600', '', 'SMK 01 Diponegoro/2014', 'Katimin', 'Jalan Mastrip 7 B2 Sumbersari', ' -', 0),
(15, 'Nofry Chanda Pasedo', 'E31141068', 'pics.jpg', 'Bondowoso', '1995-11-11', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 16 Hari', '3,40', 'Sistem Pendukung Keputusan Penyesuaian Uang Kuliah Tunggal', '082234103060', '', 'SMAN Arjasa/2014', 'Natal Pasedo', 'Jalan Piere Tendean Gg. Grand Duta Estate Lingk. Karangbaru No. 110, Karangrejo, Sumbersari Jember', ' -', 0),
(16, 'Putri Wulandari', 'E31140371', 'pics2.jpg', 'Jember', '1996-06-22', 'Perempuan', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-05', '3 Tahun 0 Bulan 5 Hari', '3,34', 'Sistem Informasi Penilaian Siswa Kurikulum KTSP', '083847375200', '', 'SMAN Balung/2014', 'Didik Setyono, S.E', 'Jl. Hos Cokroaminoto 92 RT 005 / RW 010 Dsn. Kebonsari Ds. Balung Lor Kec. Balung Jember', ' -', 0),
(17, 'Rakhman Fathoni', 'E31140098', 'pics.jpg', 'Jember', '1995-10-27', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 3 Bulan 14 Hari', '2,98', 'Pembangunan Game FPS 3D \"Sejarah Pertempuran Letkol Moch. Sroedji di Jember\" Berbasis Desktop', '081230499500', '', 'SMA Negeri Arjasa/2014', 'Anas Muchlas', 'Jl. Sumatra 7 No. 68 Jember', ' -', 0),
(18, 'Randy Achmad Pujianto', 'E31141626', 'pics.jpg', 'Jember', '1996-05-17', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-12-14', '3 Tahun 2 Bulan 14 Hari', '3,05', 'Prototype Aplikasi Penyedia Layanan Darurat', '082210275775', '', 'SMA Negeri 2 Jember/2014', 'Pontjo Sutanto, S.E', 'Perum Pondok Bedadung Indah Blok X No. 03 Kec. Sumbersari Jember', ' -', 0),
(19, 'Ringgi Junaidi', 'E31141275', 'pics.jpg', 'Probolinggo', '1994-12-23', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 23 Hari', '3,35', 'Sistem Informasi Pusat Data Ground Station Berbasis Desktop Sebagai Sistem Monitoring pada Mobile Weather Station', '085790950964', '', 'SMK Negeri 1 Kraksaan/2014', 'Sulaiman', 'Dsn. Kentrung Ds. Ketompen RT 001 RW 002 Pajarakan Probolinggo', ' -', 0),
(20, 'Rizki Satya Prayoga', 'E31141808', 'pics.jpg', 'Jember', '1996-08-03', 'Laki-Laki', 'Belum Nikah', 'Manajemen Informatika', '2014', '2017-10-20', '3 Tahun 0 Bulan 13 Hari', '3,26', 'Sistem Informasi Geografis Pemetaan Lahan Penanaman Kedelai Kabupaten Jember Berbasis Web', '08986444276', '', 'SMA Negeri 2 Tanggul/2014', 'Supriyo Adi Waluyo', 'Jl. PB Sudirman No. 97 Tanggul Kabupaten Jember', ' -', 0),
(21, 'Ach Faisal Akbar', 'E31141273', 'pics.jpg', 'Probolinggo', '1970-01-01', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-12-14', '3 Tahun 1 Bulan 14 Hari', '2,77', 'Pengukur Ketinggian Air Berbasis Arduino pada Alat Destilasi Minyak Kayu Putih', '085234967319', '', 'SMAN 1 Gending/2014', 'M. Safari', 'Dsn. Liyun, Ds. Wonorejo, Kec. Maron, Kab. Probolinggo', ' -', 0),
(22, 'Ahmad Rizky Firdaus', 'E31141198', 'pics.jpg', 'Jember', '1995-03-01', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 2 Bulan 20 Hari', '3,00', 'Prototype Sistem Keamanan Smart Troli Menggunakan Bluetooth dan RFID Berbasis Arduino Uno', '+6282331792741', '', 'MAN 1 Jember/2014', 'Edy Hariyanto', 'Jl. Raya Semboro 72 RT 7 RW 4 Umbulsari Jember', ' -', 0),
(23, 'Ainol Yaqin', 'E31141701', 'pics.jpg', 'Probolinggo', '1995-12-12', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '2,88', 'Sistem Informasi Penjualan Laptop Second Berbasis Web', '082244020599', '', 'SMK Negeri 2 Kraksaan/2014', 'Abd. Wahid', 'Dsn. Kebun RT/RW 18/05 Desa Sidodadi Kecamatan Paiton Kabupaten Probolinggo', ' -', 0),
(24, 'Ardian Syahputra', 'E31140450', 'pics.jpg', 'Jember', '1995-07-14', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-11-03', '3 Tahun 2 Bulan 3 Hari', '3,39', 'Rancang Bangun Starter Motor Menggunakan ESP8266-01 dengan Perintah Suara Berbasis Android pada App Inventor', '085233468069', '', 'SMA 3 Negeri Jember/2014', 'Suprapto', 'Jl. Sunan Ampel Ds. Telengsari 47 Blok 2 RT 2 RW 1 Kec. Kaliwates Jember', ' -', 0),
(25, 'Ari Musdaryanto', 'E32140632', 'pics.jpg', 'Probolinggo', '1995-04-16', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,04', 'Smart Ayunan Bayi dengan Sensor Suhu DHT11 dan Sensor Suhu Waterproof Berbasis Arduino Uno R3', '082244403668', '', 'SMA 1 Dringu/2014', 'Hari Purnomo', 'Pondok Pabean Indah Blok L5 Probolinggo', ' -', 0),
(26, 'Asrorul Mustofa', 'E32140428', 'pics.jpg', 'Jember', '1996-06-12', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,15', 'Rancang Bangun Kamar Mandi Otomatis Menggunakan Sensor Proximity Berbasis Arduino', '082144050497', '', 'SMK Al-Badri/2014', 'Mulyadi', 'Dusun Krajan Lama, RT. 03 RW. 03, Bedadung - Pakusari - Jember', ' -', 0),
(27, 'Bagus Nur Ramadhan', 'E32140961', 'pics.jpg', 'Situbondo', '1996-01-29', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,06', 'Rancang Bangun Sistem Loker Penitipan Barang Otomatis di Perpustakaan Menggunakan RFID Berbasis Arduino Uno', '085746377937', '', 'SMA Negeri 1 Suboh/2014', 'Lantip', 'Jl. Raya No. 974 RT. 02 RW. 02 Besuki Situbondo', ' -', 0),
(28, 'Bagus Setiadi Ilham P', 'E32131496', 'pics.jpg', 'Jember', '1993-08-17', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-11-03', '3 Tahun 8 Bulan 3 Hari', '2,98', 'Identifikasi Jenis Cabai Berdasarkan Ciri Fitur Geometri', '085335988859', '', 'SMA Negeri Balung/2013', 'Sumandat', 'Jl. Bali Timur Dsn. Karang Anyar RT/RW 02/04 Ds. Balung Lor Balung Jember', ' -', 0),
(29, 'Dymas Angga Maulana', 'E32141624', 'pics.jpg', 'Jember', '1995-07-11', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 0 Bulan 0 Hari', '2,96', 'Perancangan Kontrol Pompa Otomatis dan Pembuatan Alat Ukur Kekeruhan Air Berbasis Arduino', '081232729700', '', 'SMK Negeri 3 Jember/2014', 'Suwardi', 'Jalan Cempedak XV / 26 Lingkungan Kreongan Atas', ' -', 0),
(30, 'Endah Cahyaning Tyas', 'E32140040', 'pics2.jpg', 'Gresik', '1996-06-09', 'Perempuan', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,43', 'Rancang Bangun Kipas Angin Terkontrol Android Berbasis Arduino Uno', '085731497077', '', 'SMA Panca Marga 1 Lamongan/2014', 'M. Alfan', 'Ds. Petis Benem Selatan RT. 04 RW. 01 Kec. Duduksampeyan Kab. Gresik Jawa Timur', ' -', 0),
(31, 'Ersyad Imanuddin', 'E32141785', 'pics.jpg', 'Mojokerto', '1996-06-11', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-11-03', '3 Tahun 2 Bulan 3 Hari', '3,20', 'Rancang Bangun Alat Kontrol Otomatis Pendingin CPU Berbasis Arduino Uno', '089622246561', '', 'SMA Taruna Dra. Zulaeha/2014', 'M. Fahrurodin', 'Perum Leces Permai Blok F-6 Probolinggo', ' -', 0),
(32, 'Febriansyah Fajar Yadi', 'E32141804', 'pics.jpg', 'Situbondo', '1996-02-23', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '2,63', 'Sistem Pengaman Helm Menggunakan Solenoid Door Lock dan Sensor Proximity Berbasis Arduino Nano', '082302014033', '', 'SMA Negeri 1 Suboh/2014', 'Suharyadi', 'Kp. Ketah Kulon RT 01 RW 02 Besuki Situbondo', ' -', 0),
(33, 'Gian Pradipta Wafian Farid', 'E32140922', 'pics.jpg', 'Jember', '1995-06-02', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,11', 'Teknik Load Balancing pada Web Server Menggunakan Metode Static Route dengan Address List', '082257187047', '', 'SMK Kartini/2014', 'Farid Magfur', 'Tegal Besar Permai 2 Blok B-4 Jember', ' -', 0),
(34, 'Helmi Surya Pratama', 'E32141214', 'pics.jpg', 'Jember', '1995-10-12', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-12-14', '3 Tahun 1 Bulan 0 Hari', '2,92', 'Rancang Bangun Sistem Informasi Ketersediaan Parkir Mobil Otomatis Menggunakan Arduino Uno', '082257976363', '', 'SMA Negeri 1 Pakusari/2014', 'Agus Salim', 'Jalan Ahmad Yani No. 69 Pakusari, Jember', ' -', 0),
(35, 'Hilmi Hidayatullah', 'E32141435', 'pics.jpg', 'Jember', '1995-08-28', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 0 Bulan 28 Hari', '3,21', 'Prototipe Pintu Perlintasan Kereta Api Otomatis Berdasarkan Sensor Getar dan Sensor Ultrasonik Berbasis Arduino Uno', '081331553358', '', 'SMA Negeri 1 Arjasa/2014', 'Moch. Badrussalam', 'Jl. KH. Shiddiq 17 B Jember Kidul Kaliwates Jember', ' -', 0),
(36, 'Ilmi Miftahur Rohmah', 'E32140620', 'pics2.jpg', 'Jember', '1996-02-21', 'Perempuan', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,36', 'Rancang Bangun Mesin Pembuat Kopi Otomatis Berbasis Arduino dengan Kontrol Android', '085234065706', '', 'SMA Negeri Ambulu/2014', 'Mashuri', 'Dsn. Krajan RT 001 RW 003 Menampu Gumukmas Jember', ' -', 0),
(37, 'Khoirul Arifin', 'E32141842', 'pics.jpg', 'Banyuwangi', '1996-01-09', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '2,95', 'Sistem Informasi Penjualan PT. Graha Cipta Sejahtera Berbasis Web', '081230672165', '', 'SMK Muhammadiyah 1 Genteng/2014', 'Warseno', 'Dusun Balokan RT. 003 RW. 002 Desa Dasri Kecamatan Tegalsari Kabupaten Banyuwangi', ' -', 0),
(38, 'Mahesa Rivaldy Maulana', 'E32140343', 'pics.jpg', 'Bondowoso', '1995-11-24', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-12-14', '3 Tahun 1 Bulan 8 Hari', '3,29', 'Perancangan Sistem Kontrol Lampu Panggung Menggunakan Smartphone Android Berbasis Arduino Via Bluetooth', '085655145941', '', 'SMKN 1 Bondowoso/2013', 'Suparto', 'Jl. KH. Mansyur No. 33 RT 24 RW 7 Kab. Bondowoso', ' -', 0),
(39, 'Moh Andi Rosyadi', 'E32140763', 'pics.jpg', 'Jember', '1995-11-29', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-12-14', '3 Tahun 1 Bulan 0 Hari', '3,20', 'Rancang Bangun Sistem Keamanan Ruang Brankas Menggunakan RFID', '085748210032', '', 'SMA Negeri Kunir - Lumajang/2014', 'Mu\'alif', 'Dusun Krajan 1 RT 3 RW 1 Desa Keting Kec. Jombang Kab. Jember', ' -', 0),
(40, 'Nanda Febriansyah', 'E32131213', 'pics.jpg', 'Banyuwangi', '1995-06-16', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2013', '2017-10-20', '4 Tahun 1 Bulan 20 Hari', '3,12', 'Sistem Deteksi Status Birahi Kucing Menggunakan Metode Statistika', '085230751999', '', 'SMK Negeri Ihya Ulumudin Singojuruh/2013', 'Sulastri', 'Dsn. Dadapan RT.02/01 Ds. Karangsari Kec. Sempu Kab. Banyuwangi', ' -', 0),
(41, 'Oka Bagus Satrio', 'E32141340', 'pics.jpg', 'Jember', '1996-10-28', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-12-14', '3 Tahun 3 Bulan 20 Hari', '2,91', 'Rumah Pintar kendali Pintu Jendela dan Lampu Menggunakan Ziggee dan Arduino', '085749054467', '', 'SMK 5 Jember/2014', 'Juwari', 'Dusun Pasar Alas RT 03 RW 22 Garahan Silo Jember', ' -', 0),
(42, 'Rifqi Farisan', 'E32120123', 'pics.jpg', 'Banyuwangi', '1993-07-12', 'Laki-Laki', 'Belum Nikah', 'Teknik Komputer', '2012', '2016-11-18', '4 Tahun 7 Bulan 0 Hari', '2,74', 'Desain Sosial Media Berbasis Web', '087857973929', '', 'SMKN 1 Glagah/2012', 'Sumirah', 'RT 01 RW 03 Grayakan Blok F 10 Banyuwangi', ' -', 0),
(43, 'Umrotih', 'E32140315', 'pics2.jpg', 'Jember', '1996-04-10', 'Perempuan', 'Belum Nikah', 'Teknik Komputer', '2014', '2017-10-20', '3 Tahun 1 Bulan 20 Hari', '3,20', 'Sistem Kendali Intensitas Cahaya Lampu Menggunakan Perintah Suara dan Sensor LDR Menggunakan Bluetooth Berbasis Android', '081559729810', '', 'SMK Al-Badri/2014', 'Noto', 'Dsn. Kopang Ds. Slateng Kec. Ledokombo Kab. Jember', ' -', 0);

-- --------------------------------------------------------

--
-- Table structure for table `postingan`
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
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`,`username`);

--
-- Indexes for table `alumni`
--
ALTER TABLE `alumni`
  ADD PRIMARY KEY (`id_alumni`) USING BTREE;

--
-- Indexes for table `postingan`
--
ALTER TABLE `postingan`
  ADD PRIMARY KEY (`id_postingan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `alumni`
--
ALTER TABLE `alumni`
  MODIFY `id_alumni` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `postingan`
--
ALTER TABLE `postingan`
  MODIFY `id_postingan` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
