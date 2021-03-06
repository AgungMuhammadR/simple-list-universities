-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2021 at 08:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simple_list`
--

-- --------------------------------------------------------

--
-- Table structure for table `universitas`
--

CREATE TABLE `universitas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `jumlah_lomba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `universitas`
--

INSERT INTO `universitas` (`id`, `nama`, `alamat`, `email`, `website`, `telp`, `logo`, `jumlah_lomba`) VALUES
(1, 'Universitas Pertamina', 'Jl. Teuku Nyak Arief, RT.7/RW.8, Simprug, Kec. Kby. Lama, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 'info@universitaspertamina.ac.id', 'https://universitaspertamina.ac.id/', '0', 'logo_up.png', 7),
(2, 'Universitas Trisakti', 'Jl. Kyai Tapa No.1, RT.6/RW.16, Grogol, Kec. Grogol petamburan, Kota Jakarta Barat, Daerah Khusus Ibukota Jakarta', 'humas@trisakti.ac.id', 'http://trisakti.ac.id/', '0', 'logo_trisakti.png', 7),
(3, 'Universitas Pelita Harapan', 'MH Thamrin Boulevard 1100, Klp. Dua, Kec. Klp. Dua, Tangerang, Banten', 'graduate.admission@uph.edu', 'https://www.uph.edu/', '', 'default.jpg', 0),
(5, 'Universitas Indonesia', 'Jl. Margonda Raya, Pondok Cina, Kecamatan Beji, Kota Depok, Jawa Barat', 'sipp@ui.ac.id', 'https://www.ui.ac.id/', '', 'logo_ui.png', 0),
(7, 'Institut Teknologi Bandung', 'Jl. Ganesa No.10, Lb. Siliwangi, Kecamatan Coblong, Kota Bandung, Jawa Barat', 'humas@itb.ac.id', 'https://www.itb.ac.id/', '', 'logo_itb_256.png', 0),
(10, 'Universitas Multimedia Nusantara', 'Jl. Scientia Boulevard, Gading, Kec. Serpong, Tangerang, Banten', 'marketing@umn.ac.id', 'https://www.umn.ac.id/', '', 'default.jpg', 0),
(11, 'Universitas Bina Nusantara', 'Jl. K. H. Syahdan No. 9, Kemanggisan, Palmerah, Jakarta', '-', 'https://binus.ac.id/', '', 'default.jpg', 0),
(14, 'Universitas Kristen Indonesia', 'Jl. Mayjen Sutoyo No.2, RT.9/RW.6, Cawang, Kec. Kramat jati, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta', '-', 'https://www.uki.ac.id/', '', 'default.jpg', 0),
(23, 'Universitas Atma Jaya', 'Jl. Jend. Sudirman No.51, RT.5/RW.4, Karet Semanggi, Kecamatan Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta', 'pr@atmajaya.ac.id', 'https://www.atmajaya.ac.id/', '', 'default.jpg', 0),
(33, 'Universitas Pasundan', 'Jl. Wartawan IV No.22, Turangga, Kec. Lengkong, Kota Bandung, Jawa Barat', '-', 'http://www.unpas.ac.id/', '', 'default.jpg', 0),
(39, 'Universitas Komputer Indonesia', 'Jl. Dipati Ukur No.112-116, Lebakgede, Kecamatan Coblong, Kota Bandung, Jawa Barat', '-', 'https://www.unikom.ac.id/', '', 'default.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `universitas`
--
ALTER TABLE `universitas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `universitas`
--
ALTER TABLE `universitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
