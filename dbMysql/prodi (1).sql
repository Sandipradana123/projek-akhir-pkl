-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 14 Okt 2024 pada 15.15
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
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `prodi`
--

INSERT INTO `prodi` (`id`, `daftar-prodi`, `created_at`, `updated_at`) VALUES
(1, 'Pendidikan Guru Sekolah Dasar', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(2, 'Pendidikan Guru Pendidikan Anak Usia Dini', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(3, 'Pendidikan Pancasila dan Kewarganegaraan', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(4, 'Bimbingan Konseling', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(5, 'Pendidikan Matematika', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(6, 'Pendidikan Biologi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(7, 'Pendidikan Fisika', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(8, 'Pendidikan Ekonomi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(9, 'Pendidikan Akuntansi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(10, 'Pendidikan Sejarah', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(11, 'Pendidikan Bahasa dan Sastra Indonesia', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(12, 'Pendidikan Bahasa Inggris', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(13, 'Pendidikan Teknik Elektro', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(14, 'Manajemen', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(15, 'Akuntansi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(16, 'D-III Manajemen Pajak', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(17, 'Sistem Informasi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(18, 'Teknik Informatika', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(19, 'Teknik Industri', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(20, 'Teknik Kimia', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(21, 'Teknik Elektro', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(22, 'Ilmu Keolahragaan', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(23, 'Farmasi', '2024-10-13 16:00:55', '2024-10-13 16:00:55'),
(24, 'Hukum', '2024-10-13 16:00:55', '2024-10-13 16:00:55');

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
