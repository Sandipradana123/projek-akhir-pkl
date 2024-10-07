-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Okt 2024 pada 20.02
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
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftar-lab`
--

INSERT INTO `daftar-lab` (`id`, `nama-lab`, `value`, `created_at`, `updated_at`) VALUES
(1, 'Lab upt komputer 1 (kampus 1 lantai 3)', 'lab_komp1', NULL, NULL),
(2, 'Lab upt komputer 2 (kampus 1 lantai 3)', 'lab_komp2', NULL, NULL),
(3, 'Lab akutansi (kampus 1 lantai 3)', 'lab_aka1', NULL, NULL),
(4, 'Lab matematika (kampus 1 lantai 3)', 'lab_mate3', NULL, NULL),
(5, 'Lab Teknik informatika (kampus 3 lantai 4)', 'lab_informatika3', NULL, NULL),
(6, 'Lab feb (kampus 3 lantai 4)', 'lab_feb3', NULL, NULL),
(7, 'Lab sistem informasi (kampus 4 lantai 6)', 'lab_si4', NULL, NULL),
(8, 'Lab teknik industri (kampus 4 lantai 6)', 'lab_industri4', NULL, NULL),
(9, 'Lab akutansi (kampus 4 lantai 6)', 'lab_aka4', NULL, NULL);

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
