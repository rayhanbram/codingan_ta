-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2022 at 10:32 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `filter`
--

CREATE TABLE `filter` (
  `filter_id` int(11) NOT NULL,
  `jenis` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `filter`
--

INSERT INTO `filter` (`filter_id`, `jenis`) VALUES
(1, 'Jakarta'),
(2, 'Jakarta Instan'),
(3, 'Jakarta Garing');

-- --------------------------------------------------------

--
-- Table structure for table `gabungan`
--

CREATE TABLE `gabungan` (
  `gabungan_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gabungan`
--

INSERT INTO `gabungan` (`gabungan_id`, `filter_id`, `menu_id`) VALUES
(1, 1, 15),
(2, 1, 10),
(3, 1, 4),
(4, 1, 7),
(5, 1, 21),
(6, 1, 22),
(7, 1, 24),
(8, 1, 25),
(9, 1, 29),
(10, 1, 46),
(11, 1, 40),
(12, 1, 38),
(13, 1, 51),
(14, 1, 47),
(15, 1, 49),
(16, 1, 50),
(17, 1, 62),
(18, 1, 53),
(19, 1, 64),
(20, 1, 55),
(21, 1, 74),
(22, 1, 72),
(23, 1, 77),
(24, 1, 73),
(25, 2, 15),
(26, 2, 10),
(27, 2, 14),
(28, 2, 4),
(29, 2, 21),
(30, 2, 22),
(31, 2, 24),
(32, 2, 23),
(33, 2, 29),
(34, 2, 38),
(35, 2, 36),
(36, 2, 27),
(37, 2, 47),
(38, 2, 51),
(39, 2, 49),
(40, 2, 52),
(41, 2, 62),
(42, 2, 53),
(43, 2, 55),
(44, 2, 61),
(45, 2, 77),
(46, 2, 74),
(47, 2, 72),
(48, 2, 78);

-- --------------------------------------------------------

--
-- Table structure for table `jakarta`
--

CREATE TABLE `jakarta` (
  `menu_id` int(11) NOT NULL,
  `umur_id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jakarta`
--

INSERT INTO `jakarta` (`menu_id`, `umur_id`, `menu`, `kategori`) VALUES
(1, 1, 'Bubur Opor Ayam', 'Utama'),
(2, 1, 'Bubur Ayam Mentega', 'Utama'),
(3, 1, 'Bubur Udang Tahu', 'Utama'),
(4, 1, 'Bubur Daging Sapi', 'Utama'),
(5, 1, 'Pure Avokad Jeruk', 'Camilan'),
(6, 1, 'Pure Pisang Apel', 'Camilan'),
(7, 1, 'Roti Kukus Keju', 'Camilan'),
(8, 1, 'Makaroni Keju', 'Camilan'),
(9, 2, 'Kentang Dori Saus Keju', 'Utama'),
(10, 2, 'Tim Makaroni', 'Utama'),
(11, 2, 'Tim Kentang Daging', 'Utama'),
(12, 2, 'Nasi Tim Ayam Jamur', 'Utama'),
(13, 2, 'Bola Kentang Keju', 'Camilan'),
(14, 2, 'Puding Susu Coklat Vla', 'Camilan'),
(15, 2, 'Bitterballen', 'Camilan'),
(16, 2, 'Lemper Ayam', 'Camilan'),
(17, 3, 'Sup Ayam', 'Utama'),
(18, 3, 'Nasi Ayam Katsu', 'Utama'),
(19, 3, 'Nasi Telur Campur', 'Utama'),
(20, 3, 'Nasi Cah Siram Sapi', 'Utama'),
(21, 3, 'Kroket Sapi', 'Camilan'),
(22, 3, 'Bola - Bola Udang', 'Camilan'),
(23, 3, 'Kue Yoghurt Pisang Stroberi', 'Camilan'),
(24, 3, 'Perkedel Tahu', 'Camilan');

-- --------------------------------------------------------

--
-- Table structure for table `jakarta_instan`
--

CREATE TABLE `jakarta_instan` (
  `menu_id` int(11) NOT NULL,
  `umur_id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `kategori` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jakarta_instan`
--

INSERT INTO `jakarta_instan` (`menu_id`, `umur_id`, `menu`, `kategori`) VALUES
(1, 1, 'Bubur Opor Ayam', 'Utama'),
(2, 1, 'Bubur Ayam Mentega', 'Utama'),
(3, 1, 'Bubur Kentang Hati Ayam', 'Utama'),
(4, 1, 'Bubur Udang Tahu', 'Utama'),
(5, 1, 'Pure Avokad Jeruk', 'Camilan'),
(6, 1, 'Pure Pisang Apel', 'Camilan'),
(7, 1, 'Roti Kukus Keju', 'Camilan'),
(8, 1, 'Puding Susu Vanila', 'Camilan'),
(9, 2, 'Kentang Dori Saus Keju', 'Utama'),
(10, 2, 'Nasi Tim Ayam Jamur', 'Utama'),
(11, 2, 'Tim Ayam Kecap', 'Utama'),
(12, 2, 'Tim Tuna', 'Utama'),
(13, 2, 'Puding Susu Coklat Vla', 'Camilan'),
(14, 2, 'Bola Kentang Keju', 'Camilan'),
(15, 2, 'Bitterballen', 'Camilan'),
(16, 2, 'Agar - Agar Buah', 'Camilan'),
(17, 3, 'Sup Ayam', 'Utama'),
(18, 3, 'Nasi Ayam Katsu', 'Utama'),
(19, 3, 'Nasi Cah Siram Sapi', 'Utama'),
(20, 3, 'Nasi Ayam Jamur', 'Utama'),
(21, 3, 'Kue Yoghurt Pisang Stroberi', 'Camilan'),
(22, 3, 'Kroket Sapi', 'Camilan'),
(23, 3, 'Bola - Bola Udang', 'Camilan'),
(24, 3, 'Rolade Tempe', 'Camilan');

-- --------------------------------------------------------

--
-- Table structure for table `menu_mpasi`
--

CREATE TABLE `menu_mpasi` (
  `menu_id` int(11) NOT NULL,
  `umur_id` int(11) NOT NULL,
  `menu` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_mpasi`
--

INSERT INTO `menu_mpasi` (`menu_id`, `umur_id`, `menu`, `kategori`, `gambar`) VALUES
(1, 1, 'Bubur hati ayam', 'Makanan Utama', 'https://i.ibb.co/JRZ6xD4/1-5.jpg'),
(2, 1, 'Bubur hati ayam santan', 'Makanan Utama', ''),
(3, 1, 'Bubur pepes hati ayam', 'Makanan Utama', ''),
(4, 1, 'Bubur Udang Tahu', 'Makanan Utama', ''),
(5, 1, 'Bubur Udang Buncis', 'Makanan Utama', ''),
(6, 1, 'Bubur Patin', 'Makanan Utama', ''),
(7, 1, 'Bubur Daging Sapi', 'Makanan Utama', ''),
(8, 1, 'Bubur Hati dan Ayam', 'Makanan Utama', ''),
(9, 1, 'Bubur Tenggiri', 'Makanan Utama', ''),
(10, 1, 'Bubur Ayam Mentega', 'Makanan Utama', ''),
(11, 1, 'Bubur Telur Daging', 'Makanan Utama', ''),
(12, 1, 'Bubur Puyuh Hati Ayam', 'Makanan Utama', ''),
(13, 1, 'Bubur Pepes Ikan Kembung', 'Makanan Utama', ''),
(14, 1, 'Bubur Kentang Hati Ayam', 'Makanan Utama', ''),
(15, 1, 'Bubur Opor Ayam', 'Makanan Utama', ''),
(16, 1, 'Bubur Tahu Ikan Patin', 'Makanan Utama', ''),
(17, 1, 'Bubur Mujair', 'Makanan Utama', ''),
(18, 1, 'Bubur Kakap Tempe', 'Makanan Utama', ''),
(19, 1, 'Bubur Uduk Hati Sapi', 'Makanan Utama', ''),
(20, 1, 'Bubur Uduk Udang', 'Makanan Utama', ''),
(21, 1, 'Pure Avokad Jeruk', 'Camilan', ''),
(22, 1, 'Pure Pisang Apel', 'Camilan', ''),
(23, 1, 'Puding Susu Vanila', 'Camilan', ''),
(24, 1, 'Roti Kukus Keju', 'Camilan', ''),
(25, 1, 'Makaroni Keju', 'Camilan', ''),
(26, 1, 'Siomay Ayam Udang', 'Camilan', ''),
(27, 2, 'Tim Tuna', 'Makanan Utama', ''),
(28, 2, 'Tim Soto Daging', 'Makanan Utama', ''),
(29, 2, 'Kentang Dori Saus Keju', 'Makanan Utama', ''),
(30, 2, 'Tim Kuning Semur Hati ayam', 'Makanan Utama', ''),
(31, 2, 'Tim Semur Sapi Tempe', 'Makanan Utama', ''),
(32, 2, 'Nasi Tim Ayam Lodeh', 'Makanan Utama', ''),
(33, 2, 'Tim Udang Brokoli', 'Makanan Utama', ''),
(34, 2, 'Tim Sambal Hati Sapi', 'Makanan Utama', ''),
(35, 2, 'Tim Daging Sapi', 'Makanan Utama', ''),
(36, 2, 'Tim Ayam Kecap', 'Makanan Utama', ''),
(37, 2, 'Tim Cah Ikan Kembung', 'Makanan Utama', ''),
(38, 2, 'Nasi Tim Ayam Jamur', 'Makanan Utama', ''),
(39, 2, 'Tim Tongkol', 'Makanan Utama', ''),
(40, 2, 'Tim Kentang Daging', 'Makanan Utama', ''),
(41, 2, 'Bola Nasi', 'Makanan Utama', ''),
(42, 2, 'Nasi Tim Gurame', 'Makanan Utama', ''),
(43, 2, 'Tim Semur Ayam', 'Makanan Utama', ''),
(44, 2, 'Tim Kentang Telur', 'Makanan Utama', ''),
(45, 2, 'Tim Mie Ayam', 'Makanan Utama', ''),
(46, 2, 'Tim Makaroni', 'Makanan Utama', ''),
(47, 2, 'Puding Susu Coklat Vla', 'Camilan', ''),
(48, 2, 'Bola - Bola Tenggiri', 'Camilan', ''),
(49, 2, 'Bitterballen', 'Camilan', ''),
(50, 2, 'Lemper Ayam', 'Camilan', ''),
(51, 2, 'Bola Kentang Keju', 'Camilan', ''),
(52, 2, 'Agar - Agar Buah', 'Camilan', ''),
(53, 3, 'Nasi Ayam Katsu', 'Makanan Utama', ''),
(54, 3, 'Nasi Gadon Daging', 'Makanan Utama', ''),
(55, 3, 'Nasi Cah Siram Sapi', 'Makanan Utama', ''),
(56, 3, 'Nasi Bebek Ungkep', 'Makanan Utama', ''),
(57, 3, 'Nasi Bebek Goreng Mentega', 'Makanan Utama', ''),
(58, 3, 'Mie Tek - Tek', 'Makanan Utama', ''),
(59, 3, 'Nasi Goreng Udang', 'Makanan Utama', ''),
(60, 3, 'Nasi Gurih Cah Bakso Ikan Brokoli', 'Makanan Utama', ''),
(61, 3, 'Nasi Ayam Jamur', 'Makanan Utama', ''),
(62, 3, 'Sup Ayam', 'Makanan Utama', ''),
(63, 3, 'Tumis Tahu Udang', 'Makanan Utama', ''),
(64, 3, 'Nasi Telur Campur', 'Makanan Utama', ''),
(65, 3, 'Mie Goreng Telur Puyuh', 'Makanan Utama', ''),
(66, 3, 'Nasi Bakar Tuna', 'Makanan Utama', ''),
(67, 3, 'Nasi Pepes Udang', 'Makanan Utama', ''),
(68, 3, 'Nasi Telur Daging Kukus', 'Makanan Utama', ''),
(69, 3, 'Nasi Rendang Telur Tempe', 'Makanan Utama', ''),
(70, 3, 'Sate Ayam', 'Makanan Utama', ''),
(71, 3, 'Nasi Ayam Goreng Lengkuas', 'Makanan Utama', ''),
(72, 3, 'Bola - Bola Udang', 'Camilan', ''),
(73, 3, 'Perkedel Tahu', 'Camilan', ''),
(74, 3, 'Kroket Sapi', 'Camilan', ''),
(75, 3, 'Otak - Otak Kukus', 'Camilan', ''),
(76, 3, 'Tahu Isi Sosis', 'Camilan', ''),
(77, 3, 'Kue Yoghurt Pisang Stroberi', 'Camilan', ''),
(78, 3, 'Rolade Tempe', 'Camilan', '');

-- --------------------------------------------------------

--
-- Table structure for table `pilihan`
--

CREATE TABLE `pilihan` (
  `id` int(11) NOT NULL,
  `lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pilihan`
--

INSERT INTO `pilihan` (`id`, `lokasi`) VALUES
(1, 'Jakarta'),
(2, 'Jawa Barat'),
(3, 'Banten'),
(4, 'Jawa Timur'),
(5, 'Bali'),
(6, 'Sumatera Barat');

-- --------------------------------------------------------

--
-- Table structure for table `preferensi`
--

CREATE TABLE `preferensi` (
  `preferensi_id` int(11) NOT NULL,
  `jenis` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `preferensi`
--

INSERT INTO `preferensi` (`preferensi_id`, `jenis`) VALUES
(1, 'Makanan Instan'),
(2, 'Makanan Garing'),
(3, 'Makanan Lembut');

-- --------------------------------------------------------

--
-- Table structure for table `umur`
--

CREATE TABLE `umur` (
  `umur_id` int(11) NOT NULL,
  `umur` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umur`
--

INSERT INTO `umur` (`umur_id`, `umur`) VALUES
(1, '6-8 Bulan'),
(2, '9-11 Bulan'),
(3, '12-24 Bulan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filter`
--
ALTER TABLE `filter`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `gabungan`
--
ALTER TABLE `gabungan`
  ADD PRIMARY KEY (`gabungan_id`),
  ADD KEY `filter_id` (`filter_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indexes for table `jakarta`
--
ALTER TABLE `jakarta`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `umur_id` (`umur_id`);

--
-- Indexes for table `jakarta_instan`
--
ALTER TABLE `jakarta_instan`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `umur_id` (`umur_id`);

--
-- Indexes for table `menu_mpasi`
--
ALTER TABLE `menu_mpasi`
  ADD PRIMARY KEY (`menu_id`),
  ADD KEY `umur_id` (`umur_id`);

--
-- Indexes for table `pilihan`
--
ALTER TABLE `pilihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `preferensi`
--
ALTER TABLE `preferensi`
  ADD PRIMARY KEY (`preferensi_id`);

--
-- Indexes for table `umur`
--
ALTER TABLE `umur`
  ADD PRIMARY KEY (`umur_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filter`
--
ALTER TABLE `filter`
  MODIFY `filter_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `gabungan`
--
ALTER TABLE `gabungan`
  MODIFY `gabungan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `jakarta`
--
ALTER TABLE `jakarta`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `jakarta_instan`
--
ALTER TABLE `jakarta_instan`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu_mpasi`
--
ALTER TABLE `menu_mpasi`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `pilihan`
--
ALTER TABLE `pilihan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `preferensi`
--
ALTER TABLE `preferensi`
  MODIFY `preferensi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `umur`
--
ALTER TABLE `umur`
  MODIFY `umur_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gabungan`
--
ALTER TABLE `gabungan`
  ADD CONSTRAINT `gabungan_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `filter` (`filter_id`),
  ADD CONSTRAINT `gabungan_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu_mpasi` (`menu_id`);

--
-- Constraints for table `jakarta`
--
ALTER TABLE `jakarta`
  ADD CONSTRAINT `jakarta_ibfk_1` FOREIGN KEY (`umur_id`) REFERENCES `umur` (`umur_id`);

--
-- Constraints for table `jakarta_instan`
--
ALTER TABLE `jakarta_instan`
  ADD CONSTRAINT `jakarta_instan_ibfk_1` FOREIGN KEY (`umur_id`) REFERENCES `umur` (`umur_id`);

--
-- Constraints for table `menu_mpasi`
--
ALTER TABLE `menu_mpasi`
  ADD CONSTRAINT `menu_mpasi_ibfk_1` FOREIGN KEY (`umur_id`) REFERENCES `umur` (`umur_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
