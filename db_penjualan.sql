-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jul 2020 pada 08.34
-- Versi server: 10.3.15-MariaDB
-- Versi PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jumlah` decimal(10,0) NOT NULL,
  `tanggal` date NOT NULL,
  `jenis_velg` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id`, `nama`, `alamat`, `jumlah`, `tanggal`, `jenis_velg`) VALUES
(1, 'Made Swisma', 'Singaraja', '1', '2020-07-25', 'Volk Rays TE37'),
(2, 'Dekwis', 'Denpasar', '2', '2020-07-24', 'BBS L-247'),
(3, 'DUWEG', 'Singaraja', '3', '2020-07-16', 'VOLK RAYS CE38'),
(5, 'Bryant', 'Bandung', '3', '2020-07-17', 'Hsr');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL,
  `nama` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdDate` datetime NOT NULL,
  `username` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `level`, `nama`, `status`, `createdDate`, `username`, `photo`) VALUES
(6, 'madeswisma@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 'Dekwis', 0, '2020-06-07 00:00:00', 'madeswisna', NULL),
(7, 'madeswisma', '202cb962ac59075b964b07152d234b70', 1, 'Dekwis', 0, '2020-06-07 00:00:00', 'dekwis', NULL),
(10, 'dekwis@gmail.com', 'caf1a3dfb505ffed0d024130f58c5cfa', 2, '', 0, '0000-00-00 00:00:00', 'dekwis', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
