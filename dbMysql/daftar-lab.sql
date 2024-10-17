-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Okt 2024 pada 15.14
-- Versi server: 8.0.39-0ubuntu0.22.04.1
-- Versi PHP: 8.1.2-1ubuntu2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jadwalUkk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar-lab`
--

CREATE TABLE `daftar-lab` (
  `id` bigint UNSIGNED NOT NULL,
  `nama-lab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value-lab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slot-kursi` int NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftar-lab`
--

INSERT INTO `daftar-lab` (`id`, `nama-lab`, `value-lab`, `slot-kursi`, `status`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Lab upt komputer 1 (kampus 1 lantai 3)', 'lab-komp1', 5, 'Aktif', 'lab-komp1', '2024-10-14 04:08:30', '2024-10-14 04:08:30'),
(2, 'Lab upt komputer 2 (kampus 1 lantai 3)', 'lab-komp2', 2, 'Aktif', 'lab-komp2', '2024-10-14 04:08:30', '2024-10-14 04:08:30'),
(3, 'Lab pendidikan matematika (kampus 1 lantai 3)', 'lab-mate1', 20, 'Aktif', 'lab-mate1', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(4, 'Lab pendidikan akutansi (kampus 1 lantai 2)', 'lab-aka1', 20, 'Aktif', 'lab-aka1', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(5, 'Lab fakultas ekonomi dan bisnis (kampus 3 lantai 4)', 'lab-feb3', 20, 'Aktif', 'lab-feb3', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(6, 'Lab teknik informatika (kampus 3 lantai 3)', 'lab-informatika3', 5, 'Aktif', 'lab-informatika3', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(7, 'Lab sistem informasi (lab terpadu lantai 6)', 'lab-si4', 15, 'Aktif', 'lab-si4', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(8, 'Lab teknik industri (lab terpadu lantai 6)', 'lab-industri4', 10, 'Aktif', 'lab-industri4', '2024-10-14 05:51:37', '2024-10-14 05:51:37'),
(9, 'Lab akutansi (lab terpadu lantai 6)', 'lab-aka4', 20, 'Aktif', 'lab-aka4', '2024-10-14 05:51:37', '2024-10-14 05:51:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar-lab`
--
ALTER TABLE `daftar-lab`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar-lab`
--
ALTER TABLE `daftar-lab`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
