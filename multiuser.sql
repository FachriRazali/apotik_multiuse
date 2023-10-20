-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 20 Okt 2023 pada 09.29
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `multiuser`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `PASIEN`
--

CREATE TABLE `PASIEN` (
  `idpasien` varchar(50) NOT NULL,
  `nmpasien` varchar(50) DEFAULT NULL,
  `jk` char(15) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `PASIEN`
--

INSERT INTO `PASIEN` (`idpasien`, `nmpasien`, `jk`, `alamat`) VALUES
('3094823', 'Suprachlor suspensi 60ml', 'Khusus Dewasa', ''),
('3479022', 'Cotrimoxazole suspensi 60ml', 'Khusus Dewasa', ''),
('3824098', 'Gitri suspensi 60ml', 'Khusus Dewasa', ''),
('3829438', 'BDM sirop 60ml ', 'Khusus Dewasa', ''),
('38798327', 'Metrolet suspensi 100ml', 'Semua Umur', ''),
('732897', 'Cazetin drops 15ml ', 'Semua Umur', ''),
('840398034', 'Saldextamin sirop 60ml', 'Semua Umur', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sales`
--

CREATE TABLE `sales` (
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `kuantitas` tinyint(4) NOT NULL,
  `harga` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `sales`
--

INSERT INTO `sales` (`id_transaksi`, `id_produk`, `tgl_transaksi`, `kuantitas`, `harga`, `id_pelanggan`) VALUES
(1, 100, '2016-09-20', 8, 265000, 1),
(2, 100, '2016-10-11', 3, 270000, 2),
(3, 101, '2016-08-17', 8, 250000, 2),
(4, 101, '2016-08-24', 12, 380000, 2),
(5, 101, '2016-05-10', 12, 250000, 1),
(6, 101, '2016-05-04', 11, 375000, 1),
(7, 101, '2016-07-15', 3, 265000, 1),
(8, 100, '2016-05-19', 4, 250000, 1),
(9, 101, '2016-06-17', 12, 255000, 2),
(10, 100, '2016-09-11', 12, 280000, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `nama`, `username`, `password`, `level`) VALUES
(1, 'fachri', 'fachri', 'malasngoding123', 'admin'),
(2, 'iblis', 'iblisfree', 'class', 'pegawai'),
(3, 'purwa', 'kecoa', 'purwa', 'pengurus');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `PASIEN`
--
ALTER TABLE `PASIEN`
  ADD PRIMARY KEY (`idpasien`);

--
-- Indeks untuk tabel `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `sales`
--
ALTER TABLE `sales`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
