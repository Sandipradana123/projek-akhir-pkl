-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 07 Okt 2024 pada 20.17
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
-- Struktur dari tabel `prodi`
--

CREATE TABLE `prodi` (
  `id` bigint UNSIGNED NOT NULL,
  `daftar-prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `daftar-prodi`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan Guru Sekolah dasar', NULL, NULL),
(2, 'Pendidikan Guru Pendidikan Anak Usia Dini', NULL, NULL),
(3, 'Pendidikan Pancasila dan Kewarganegaraan', NULL, NULL),
(4, 'Bimbingan Konseling', NULL, NULL),
(5, 'Pendidikan Matematika', NULL, NULL),
(6, 'Pendidikan Biologi', NULL, NULL),
(7, 'Pendidikan Fisika', NULL, NULL),
(8, 'Pendidikan Ekonomi', NULL, NULL),
(9, 'Pendidikan Akuntansi', NULL, NULL),
(10, 'Pendidikan Sejarah', NULL, NULL),
(11, 'Pendidikan Bahasa dan Sastra Indonesia', NULL, NULL),
(12, 'Pendidikan Bahasa Inggris', NULL, NULL),
(13, 'Pendidikan Teknik Elektro', NULL, NULL),
(14, 'Prodi Manajemen', NULL, NULL),
(15, 'Prodi Akuntansi', NULL, NULL),
(16, 'Prodi D-III Manajemen Pajak', NULL, NULL),
(17, 'Sistem Informasi', NULL, NULL),
(18, 'Teknik Informatika', NULL, NULL),
(19, 'Teknik Industri', NULL, NULL),
(20, 'Teknik Kimia', NULL, NULL),
(21, 'Teknik Elektro', NULL, NULL),
(22, 'Ilmu Keolahragaan', NULL, NULL),
(23, 'Farmasi', NULL, NULL),
(24, 'Hukum', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
