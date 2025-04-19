-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 09:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `baak_pens`
--
CREATE DATABASE IF NOT EXISTS `baak_pens` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `baak_pens`;

-- --------------------------------------------------------

--
-- Table structure for table `baak2024`
--

CREATE TABLE `baak2024` (
  `NIM` varchar(15) DEFAULT NULL,
  `NAMA` varchar(20) DEFAULT NULL,
  `ALAMAT` varchar(25) DEFAULT NULL,
  `KOTA` varchar(15) DEFAULT NULL,
  `NIP` varchar(15) DEFAULT NULL,
  `NMDOSEN` varchar(20) DEFAULT NULL,
  `MATKUL` varchar(15) DEFAULT NULL,
  `JAM` varchar(6) DEFAULT NULL,
  `RUANG` varchar(10) DEFAULT NULL,
  `NILAI` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `baak2024`
--

INSERT INTO `baak2024` (`NIM`, `NAMA`, `ALAMAT`, `KOTA`, `NIP`, `NMDOSEN`, `MATKUL`, `JAM`, `RUANG`, `NILAI`) VALUES
('1001', 'Anisa', 'Melati 22', 'Surabaya', '2101', 'Bambang', 'Coding', '1-2', 'H-204', 80),
('1001', 'Anisa', 'Melati 22', 'Surabaya', '2102', 'Anang', 'IMK', '3-4', 'JJ-101', 90),
('1001', 'Anisa', 'Melati 22', 'Surabaya', '2104', 'Bambang', 'Bahasa', '5-6', 'H-204', 80),
('1001', 'Anisa', 'Melati 22', 'Surabaya', '2103', 'Neli', 'Inggris', '7-8', 'II-106', 70),
('1002', 'Budi', 'Arjuna 37', 'Surabaya', '2101', 'Bambang', 'Coding', '1-2', 'H-204', 80),
('1002', 'Budi', 'Arjuna 37', 'Surabaya', '2102', 'Anang', 'IMK', '3-4', 'JJ-101', 90),
('1002', 'Budi', 'Arjuna 37', 'Surabaya', '2104', 'Bambang', 'Bahasa', '5-6', 'H-204', 80),
('1002', 'Budi', 'Arjuna 37', 'Surabaya', '2103', 'Neli', 'Inggris', '7-8', 'II-106', 70);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` char(10) DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `alamat` varchar(25) DEFAULT NULL,
  `kota` varchar(15) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `nohp` varchar(15) DEFAULT NULL,
  `NILAI` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `kota`, `email`, `nohp`, `NILAI`) VALUES
('10001', 'Anton', 'Kertajaya 101', 'Sidoarjo', 'anton001@gmail.com', '81126608801', 80),
('10002', 'Bimas', 'Pahlawan 222', 'Gresik', 'bimas002@gmail.com', '82126608802', 90),
('10003', 'Cicik', 'Manyar 333', 'Mojokerto', 'cicik003@gmail.com', '82126608803', 77),
('10004', 'Duduk', 'Pacar 44', 'Lamongan', 'duduk004@gmail.com', '82126608804', 66),
('10005', 'Erika', 'Tambak 515', 'Malang', 'erika005@gmail.com', '81126608805', 88),
('10006', 'Fredi', 'Kapas 63', 'Jombang', 'Fredrik6@gmail.com', '82126608806', 86),
('10007', 'Gilga', 'Polisi 77', 'Nganjuk', 'gilga007@gmail.com', '81126608807', 95),
('10008', 'Hilda', 'Arjuna 88', 'Jember', 'hilda008@gmail.com', '82126608808', 85),
('10009', 'Ikana', 'Semeru 911', 'Ngawi', 'ikana009@gmail.com', '81126608809', 56),
('10010', 'Julia', 'Pakis 100', 'Blitar', 'julia010@gmail.com', '82126608810', 65),
('10011', 'Jingga', 'gubeng 11', 'Surabaya', 'jingga011@gmail.com', '8212000011', NULL),
('10012', 'Bimbi', 'genteng 212', 'Surabaya', 'bimbi012@gmail.com', '8212000012', NULL),
('10013', 'Yahfi', 'darmo 013', 'Surabaya', 'yahfi013@gmail.com', '8212000013', NULL),
('10014', 'Denny', 'bubutan 414', 'Surabaya', 'denny014@gmail.com', '8212000014', NULL),
('10015', 'Bila', 'brawijaya 15', 'Surabaya', 'bila015@gmail.com', '8212000015', NULL),
('10016', 'Kuni', 'batu 116', 'Malang', 'kuni016@gmail.com', '8212000016', NULL),
('10017', 'Hasya', 'gondanglegi 717', 'Malang', 'hasya017@gmail.com', '8212000017', NULL),
('10018', 'Mila', 'siliwangi 018', 'Malang', 'mila018@gmail.com', '8212000018', NULL),
('10019', 'Yeri', 'batara 019', 'Malang', 'yeri019@gmail.com', '8212000019', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD UNIQUE KEY `nim` (`nim`);
--
-- Database: `booking_studio`
--
CREATE DATABASE IF NOT EXISTS `booking_studio` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `booking_studio`;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id_booking` int(11) NOT NULL,
  `id` int(11) DEFAULT 1,
  `id_studio` int(11) DEFAULT 1,
  `body` text DEFAULT NULL COMMENT 'ada pesan khusus?',
  `tanggal` datetime DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_kelar` time DEFAULT NULL,
  `status` enum('pending','confirmed','cancelled') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `studios`
--

CREATE TABLE `studios` (
  `id_studio` int(11) NOT NULL,
  `nama_studio` varchar(100) DEFAULT NULL,
  `lokasi` varchar(100) DEFAULT NULL,
  `harga_per_jam` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `studios`
--

INSERT INTO `studios` (`id_studio`, `nama_studio`, `lokasi`, `harga_per_jam`) VALUES
(3, 'Studio A', 'Lantai 1', 50000.00),
(4, 'Studio B', 'Lantai 2', 60000.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id_booking`);

--
-- Indexes for table `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id_studio`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id_booking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `studios`
--
ALTER TABLE `studios`
  MODIFY `id_studio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Database: `goodhealth`
--
CREATE DATABASE IF NOT EXISTS `goodhealth` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `goodhealth`;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id_dokter` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id_dokter`, `nama`, `hp`) VALUES
(1, 'dr. Ahmad Andri', '081234567891'),
(2, 'dr. Dedi Suryadi', '081298765432');

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id_obat` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id_obat`, `nama`, `harga`, `satuan`) VALUES
(1, 'Amoxicilin 1mg', 1500, 'Tablet'),
(2, 'Ambroxol', 2000, 'Tablet');

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id_pasien` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `email` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id_pasien`, `nama`, `hp`, `email`) VALUES
(1, 'John Connor', '081299999999', 'john.connor@mail.com'),
(2, 'Arimbi', '082139675766', '');

-- --------------------------------------------------------

--
-- Table structure for table `pesan_obat`
--

CREATE TABLE `pesan_obat` (
  `id_pesan_obat` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `alamat` text NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `list_pesanan` text NOT NULL,
  `total_biaya` int(11) NOT NULL,
  `ket` text DEFAULT NULL,
  `is_selesai` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `regis_poli`
--

CREATE TABLE `regis_poli` (
  `id_regis_poli` int(11) NOT NULL,
  `id_pasien` int(11) NOT NULL,
  `id_dokter` int(11) NOT NULL,
  `tgl_booking` date NOT NULL,
  `poli` enum('Poli Umum','Poli Anak','Poli Gigi','Poli Syaraf') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id_pasien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `id_pasien`) VALUES
(8, 'pegawai', 'a431ba54c55ae2cb91be1785398ecd595ca96b7a', NULL),
(9, '081299999999', '485e6bc2f6d024534b4fca8ebe5385adc1148f14', 1),
(10, '082139675766', 'a1706a5587ab5d34f82b79a851520f5033d31c80', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id_dokter`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id_obat`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `pesan_obat`
--
ALTER TABLE `pesan_obat`
  ADD PRIMARY KEY (`id_pesan_obat`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `regis_poli`
--
ALTER TABLE `regis_poli`
  ADD PRIMARY KEY (`id_regis_poli`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id_dokter` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id_obat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id_pasien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pesan_obat`
--
ALTER TABLE `pesan_obat`
  MODIFY `id_pesan_obat` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `regis_poli`
--
ALTER TABLE `regis_poli`
  MODIFY `id_regis_poli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesan_obat`
--
ALTER TABLE `pesan_obat`
  ADD CONSTRAINT `pesan_obat_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regis_poli`
--
ALTER TABLE `regis_poli`
  ADD CONSTRAINT `regis_poli_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON UPDATE CASCADE,
  ADD CONSTRAINT `regis_poli_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id_dokter`) ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"baak_pens\",\"table\":\"mahasiswa\"},{\"db\":\"BAAK_PENS\",\"table\":\"mahasiswa\"},{\"db\":\"goodhealth\",\"table\":\"pasien\"},{\"db\":\"goodhealth\",\"table\":\"obat\"},{\"db\":\"goodhealth\",\"table\":\"dokter\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'baak_pens', 'mahasiswa', '{\"sorted_col\":\"`nim` ASC\"}', '2025-04-05 04:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2025-04-05 04:35:32', '{\"Console\\/Mode\":\"show\",\"NavigationWidth\":0,\"Console\\/Height\":111.98599999999999}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
