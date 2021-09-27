-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 27 Sep 2021 pada 16.09
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depot_air`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_user`, `username`, `email`, `password`) VALUES
(1, 'gilangcakep', 'gilangherlambang@gmail.com', 'botol123'),
(7, 'yogaganteng', 'yoga@gmail.com', 'agoy123'),
(9, 'agoy', 'yoga@email.com', 'agoy123'),
(10, 'ghadi', 'ghadiarofif@gmail.com', 'ghadi45'),
(11, 'rahmadyni', 'rahmadyni@gmail.com', 'rahma123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `botol`
--

CREATE TABLE `botol` (
  `id` int(11) NOT NULL,
  `merk_botol` varchar(10) NOT NULL,
  `ukuran_botol` varchar(10) NOT NULL,
  `harga` varchar(11) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `botol`
--

INSERT INTO `botol` (`id`, `merk_botol`, `ukuran_botol`, `harga`, `gambar`) VALUES
(2, 'Cleoo', 'Large', '7000', 'https://solvent-production.s3.amazonaws.com/media/cache/fb/83/fb8305fbad3e46355dbc2ad8804d4b81.jpg'),
(6, 'Club', 'Medium', '3500', 'https://assets.klikindomaret.com/products/20008767/20008767_1.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `botol`
--
ALTER TABLE `botol`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `botol`
--
ALTER TABLE `botol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
