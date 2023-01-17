-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 16 Jan 2023 pada 02.28
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_finco`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `history`
--

CREATE TABLE `history` (
  `id_history` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `total` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `history`
--

INSERT INTO `history` (`id_history`, `id_user`, `type`, `date`, `total`, `details`, `created_at`, `updated_at`) VALUES
(11, 4, 'Pengeluaran', '2022-12-05', '19000.0', '[{\"name\":\"Jajan\",\"price\":\"4000\"},{\"name\":\"bakso\",\"price\":\"15000\"}]', '2022-12-19T20:59:04.215392', '2022-12-19T20:59:04.215676'),
(15, 4, 'Pengeluaran', '2022-12-21', '17500.0', '[{\"name\":\"Bakso\",\"price\":\"15000\"},{\"name\":\"Es Teh\",\"price\":\"2500\"}]', '2022-12-21T22:31:47.265887', '2022-12-21T22:31:47.266114'),
(16, 4, 'Pengeluaran', '2022-12-20', '50000.0', '[{\"name\":\"Game\",\"price\":\"50000\"}]', '2022-12-21T22:32:25.395793', '2022-12-21T22:32:25.395900'),
(17, 4, 'Pemasukan', '2022-12-21', '5000000.0', '[{\"name\":\"Shopee\",\"price\":\"5000000\"}]', '2022-12-21T22:32:53.146768', '2022-12-21T22:32:53.147127'),
(18, 7, 'Pemasukan', '2023-01-01', '1217212.0', '[{\"name\":\"pwn\",\"price\":\"5000\"},{\"name\":\"das\",\"price\":\"1212212\"}]', '2023-01-01T19:45:37.224740', '2023-01-01T22:02:20.668502'),
(19, 7, 'Pengeluaran', '2023-01-01', '50000.0', '[{\"name\":\"jualan\",\"price\":\"50000\"}]', '2023-01-01T22:01:44.047313', '2023-01-01T22:01:44.047496'),
(20, 7, 'Pengeluaran', '2023-01-02', '30000.0', '[{\"name\":\"jjan\",\"price\":\"5000\"},{\"name\":\"bensin\",\"price\":\"25000\"}]', '2023-01-01T23:54:07.389600', '2023-01-01T23:54:07.390927'),
(21, 8, 'Pemasukan', '2023-01-02', '17500.0', '[{\"name\":\"Bakso\",\"price\":\"15000\"},{\"name\":\"Es Teh\",\"price\":\"2500\"}]', '', ''),
(22, 8, 'Pengeluaran', '2023-01-02', '17500.0', '[{\"name\":\"Bensin\",\"price\":\"22000\"},{\"name\":\"Minum\",\"price\":\"2500\"}]', '', ''),
(23, 9, 'Pengeluaran', '2023-01-04', '340000.0', '[{\"name\":\"bensin\",\"price\":\"340000\"}]', '2023-01-04T19:59:19.742132', '2023-01-04T19:59:19.750545'),
(24, 10, 'Pemasukan', '2023-01-09', '1000000.0', '[{\"name\":\"gaji\",\"price\":\"1000000\"}]', '2023-01-09T12:23:58.979784', '2023-01-09T12:23:58.981650'),
(25, 10, 'Pengeluaran', '2023-01-09', '500000.0', '[{\"name\":\"bazar listrik\",\"price\":\"500000\"}]', '2023-01-09T12:26:59.079872', '2023-01-09T12:26:59.080079');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `updated_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '202cb962ac59075b964b07152d234b70', '2022-01-09 02:17:44', '2022-01-09 02:17:44'),
(3, 'laily', 'laily@amikom.ac.id', '827ccb0eea8a706c4c34a16891f84e7b', '2022-01-09 02:17:44', '2022-01-09 02:17:44'),
(4, 'saya', 'saya@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2022-12-19T20:53:48.247659', '2022-12-19T20:53:48.247825'),
(5, 'lailsss', 'ssssssss', '3691308f2a4c2f6983f2880d32e29c84', '2022-12-26T23:00:25.835561', '2022-12-26T23:00:25.838528'),
(6, 'lail', 'lail1', 'bc50cc9a78b7944cfb9d7e0018d72ee9', '2022-12-26T23:03:58.822273', '2022-12-26T23:03:58.825085'),
(7, 'angga', 'angga@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2022-12-28T09:33:01.918454', '2022-12-28T09:33:01.921426'),
(8, 'fincoadmin', 'finco@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-01-02T09:52:51.662808', '2023-01-02T09:52:51.666096'),
(9, 'adminfinco', 'adminfincoo@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '2023-01-04T19:56:21.113764', '2023-01-04T19:56:21.114897'),
(10, 'admin1', 'admin1@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2023-01-09T12:22:16.816010', '2023-01-09T12:22:16.818009');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id_history`),
  ADD KEY `id_user` (`id_user`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `history`
--
ALTER TABLE `history`
  MODIFY `id_history` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `id_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
