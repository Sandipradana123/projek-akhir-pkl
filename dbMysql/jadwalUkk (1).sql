-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 25 Okt 2024 pada 09.10
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
-- Struktur dari tabel `backup-peserta`
--

CREATE TABLE `backup-peserta` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Lab upt komputer 1 (kampus 1 lantai 3)', 'lab-komp1', 1, 'aktif', 'lab-komp1', '2024-10-13 14:08:30', '2024-10-23 12:51:09'),
(2, 'Lab upt komputer 2 (kampus 1 lantai 3)', 'lab-komp2', 20, 'aktif', 'lab-komp2', '2024-10-13 14:08:30', '2024-10-23 12:51:17'),
(3, 'Lab pendidikan matematika (kampus 1 lantai 3)', 'lab-mate1', 20, 'aktif', 'lab-mate1', '2024-10-13 15:51:37', '2024-10-23 12:51:27'),
(4, 'Lab pendidikan akutansi (kampus 1 lantai 2)', 'lab-aka1', 20, 'aktif', 'lab-aka1', '2024-10-13 15:51:37', '2024-10-23 05:57:49'),
(5, 'Lab fakultas ekonomi dan bisnis (kampus 3 lantai 4)', 'lab-feb3', 20, 'aktif', 'lab-feb3', '2024-10-13 15:51:37', '2024-10-23 05:57:57'),
(6, 'Lab teknik informatika (kampus 3 lantai 3)', 'lab-informatika3', 5, 'aktif', 'lab-informatika3', '2024-10-13 15:51:37', '2024-10-23 05:55:34'),
(7, 'Lab sistem informasi (lab terpadu lantai 6)', 'lab-si4', 15, 'aktif', 'lab-si4', '2024-10-13 15:51:37', '2024-10-23 05:55:39'),
(8, 'Lab teknik industri (lab terpadu lantai 6)', 'lab-industri4', 10, 'aktif', 'lab-industri4', '2024-10-13 15:51:37', '2024-10-23 05:58:03'),
(9, 'Lab akutansi (lab terpadu lantai 6)', 'lab-aka4', 20, 'aktif', 'lab-aka4', '2024-10-13 15:51:37', '2024-10-23 05:58:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data-peserta`
--

CREATE TABLE `data-peserta` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` bigint UNSIGNED NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daftar-jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `kegiatan`, `daftar-jadwal`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ujian IC3', '4 november 2024', 'aktif', '2024-10-22 08:10:03', '2024-10-22 01:27:55'),
(2, 'Ujian IC3', '5 November 2024', 'aktif', '2024-10-22 08:10:22', '2024-10-22 08:10:22'),
(3, 'Ujian IC3', '4 September 2024', 'aktif', '2024-10-23 08:05:52', '2024-10-23 08:05:52');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kegiatan`
--

CREATE TABLE `kegiatan` (
  `id` bigint UNSIGNED NOT NULL,
  `daftar-kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah-lab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah-sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kegiatan`
--

INSERT INTO `kegiatan` (`id`, `daftar-kegiatan`, `tanggal`, `jumlah-lab`, `jumlah-sesi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Ujian IC3', '4 - 8 november 2024', '9', '2', 'belum di mulai', '2024-10-22 08:09:46', '2024-10-23 01:04:29'),
(2, 'Ujian IC3', '4 - 5 September 2024', '9', '2', 'pendataan', '2024-10-23 08:00:59', '2024-10-23 08:00:59'),
(3, 'PPG', '11 - 15 November 2024', '9', '2', 'pendataan', '2024-10-24 03:11:53', '2024-10-24 03:11:53');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-aka1`
--

CREATE TABLE `lab-aka1` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-aka1`
--

INSERT INTO `lab-aka1` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Ani Imelia Maulida', 'Ani Imelia Maulida@gmail.com', '2102106015', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(2, 'Anisa Nur Afifah', 'Anisa Nur Afifah@gmail.com', '2102101169', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(3, 'Anis Latifah Widiastuti', 'Anis Latifah Widiastuti@gmail.com', '2102101080', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(4, 'Anissa Happy Yunia Wiyono', 'Anissa Happy Yunia Wiyono@gmail.com', '2102107003', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(5, 'Anisyah Tri Wulandari', 'Anisyah Tri Wulandari@gmail.com', '2103102215', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(6, 'Anita Nur Rahmatika', 'Anita Nur Rahmatika@gmail.com', '2102111013', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(7, 'Anita Reoginata', 'Anita Reoginata@gmail.com', '2102102002', 'Pendidikan Guru Pendidikan Anak', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(8, 'Anjaly Hana Aprilia Putri Rosida', 'Anjaly Hana Aprilia Putri Rosida@gmail.com', '2102109039', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(9, 'Anjani Putri Hergian', 'Anjani Putri Hergian@gmail.com', '2103102064', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(10, 'Annisa Dwi Oktaviani', 'Annisa Dwi Oktaviani@gmail.com', '2203103001', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(11, 'Anugerah Adityawan', 'Anugerah Adityawan@gmail.com', '2102101211', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(12, 'Aprilia Dwi Cahyanti', 'Aprilia Dwi Cahyanti@gmail.com', '2102101014', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(13, 'Apriliani Paminta Devi', 'Apriliani Paminta Devi@gmail.com', '2102101024', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(14, 'Aprilia Putri Retno Siwi', 'Aprilia Putri Retno Siwi@gmail.com', '2102101205', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(15, 'Aqias Tri Imanda', 'Aqias Tri Imanda@gmail.com', '2102101208', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(16, 'Ardhian Dwi Putra', 'Ardhian Dwi Putra@gmail.com', '2102106009', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(17, 'Ardiansah Dwi Prasetia', 'Ardiansah Dwi Prasetia@gmail.com', '2105102011', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(18, 'Ardila Fitriana', 'Ardila Fitriana@gmail.com', '2102101090', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(19, 'Arfina Litafuljanah Sunarko', 'Arfina Litafuljanah Sunarko@gmail.com', '2102110001', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(20, 'Arifati Mungfarida', 'Arifati Mungfarida@gmail.com', '2102101093', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(21, 'Arif Eko Saputro', 'Arif Eko Saputro@gmail.com', '2103102047', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(22, 'Akbar Ligna Husada', 'Akbar Ligna Husada@gmail.com', '2102101015', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(23, 'Indri Arisanti', 'Indri Arisanti@gmail.com', '2102101201', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:23:31', '2024-10-24 18:23:31'),
(24, 'Garnisa Imelda', 'Garnisa Imelda@gmail.com', '2103102007', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(25, 'Gilda Ratu Salsabila', 'Gilda Ratu Salsabila@gmail.com', '2102111014', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(26, 'Hafidh Nurshaleh', 'Hafidh Nurshaleh@gmail.com', '2105101060', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(27, 'Haikal Aziz Thory Wijaya', 'Haikal Aziz Thory Wijaya@gmail.com', '2106101007', 'Hukum', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(28, 'Hamida Suciana', 'Hamida Suciana@gmail.com', '2102101104', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(29, 'Haniah Adistya', 'Haniah Adistya@gmail.com', '2103101079', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(30, 'Hanif Rizki Ramadhani', 'Hanif Rizki Ramadhani@gmail.com', '2102106006', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(31, 'Harisa Patwi Sari', 'Harisa Patwi Sari@gmail.com', '2102109013', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(32, 'Hemas Anfasa Setya Mustangin', 'Hemas Anfasa Setya Mustangin@gmail.com', '2103102174', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(33, 'Hendito Kristian Yuda', 'Hendito Kristian Yuda@gmail.com', '2105101092', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(34, 'Hengky Prasetyo', 'Hengky Prasetyo@gmail.com', '2305104011', 'Teknik Kimia', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(35, 'Herlina Amalia Wulandari', 'Herlina Amalia Wulandari@gmail.com', '2102101028', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(36, 'Herlina Febriyanti', 'Herlina Febriyanti@gmail.com', '2103101064', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(37, 'Herlina Iriyanti', 'Herlina Iriyanti@gmail.com', '2102111008', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(38, 'Heru Andi Pratama', 'Heru Andi Pratama@gmail.com', '2105103014', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(39, 'Hesti Fidiyawati', 'Hesti Fidiyawati@gmail.com', '2102106011', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(40, 'Hesti Hendriani', 'Hesti Hendriani@gmail.com', '2102101127', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(41, 'Hijraroh Nurkhalimah', 'Hijraroh Nurkhalimah@gmail.com', '2102101230', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(42, 'Hilmah Nindy Prihapsari', 'Hilmah Nindy Prihapsari@gmail.com', '2103101029', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(43, 'Hisyam Taufiqul Hakim', 'Hisyam Taufiqul Hakim@gmail.com', '2102101036', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:24:28', '2024-10-24 18:24:28'),
(44, 'Arista Eka Lestiana', 'Arista Eka Lestiana@gmail.com', '2103102207', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(45, 'Binti Lailatul Mahfiroh', 'Binti Lailatul Mahfiroh@gmail.com', '2103101050', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(46, 'Dhea Fortuna Wiyasa', 'Dhea Fortuna Wiyasa@gmail.com', '2103102024', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(47, 'Galuh Puspitasari', 'Galuh Puspitasari@gmail.com', '2102101034', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(48, 'Gania Septiana Wardoyo', 'Gania Septiana Wardoyo@gmail.com', '2102101118', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(49, 'Ida Ayu Istiqomah', 'Ida Ayu Istiqomah@gmail.com', '2102101141', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(50, 'Ikbar Cahya Briliant', 'Ikbar Cahya Briliant@gmail.com', '2103102226', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(51, 'Kania Salsabila', 'Kania Salsabila@gmail.com', '2102101045', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(52, 'Karina Nurani Febriani', 'Karina Nurani Febriani@gmail.com', '2102106017', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(53, 'Maharani Diah Vinka Vinanda', 'Maharani Diah Vinka Vinanda@gmail.com', '2103102049', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(54, 'Maharani Dewi Kusumaningrum', 'Maharani Dewi Kusumaningrum@gmail.com', '2103102131', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(55, 'Putri Nadia', 'Putri Nadia@gmail.com', '2102112001', 'Pendidikan Fisika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(56, 'Putri Nurjanah', 'Putri Nurjanah@gmail.com', '2103101010', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(57, 'Putri Rahayu Sukma Hidira', 'Putri Rahayu Sukma Hidira@gmail.com', '2102101062', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(58, 'Regita Icha Pramesti', 'Regita Icha Pramesti@gmail.com', '2102106013', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(59, 'Regita Puja Pramesti', 'Regita Puja Pramesti@gmail.com', '2102101041', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(60, 'Renata Rosa Lelita', 'Renata Rosa Lelita@gmail.com', '2103102252', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(61, 'Risa Yuliana', 'Risa Yuliana@gmail.com', '2102103012', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(62, 'Riska Julia Safitri', 'Riska Julia Safitri@gmail.com', '2102101048', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(63, 'Silvia Marshanda Puspitasari', 'Silvia Marshanda Puspitasari@gmail.com', '2102103010', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(64, 'Sinta Kusuma Dewi', 'Sinta Kusuma Dewi@gmail.com', '2102112012', 'Pendidikan Fisika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:26:26', '2024-10-24 18:26:26'),
(65, 'Putri Rukmiatin Mukminin', 'Putri Rukmiatin Mukminin@gmail.com', '2103102141', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(66, 'Putri Sonya Dwi Wahyu Sasmita', 'Putri Sonya Dwi Wahyu Sasmita@gmail.com', '2203103018', 'D3 Manajemen Pajak', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(67, 'Putri Septiyani', 'Putri Septiyani@gmail.com', '2102105004', 'Pendidikan Sejarah', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(68, 'Rafli Bagus Pradana', 'Rafli Bagus Pradana@gmail.com', '2102101064', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(69, 'Rahayu Nur A\'ini', 'Rahayu Nur A\'ini@gmail.com', '2102106012', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(70, 'Rahayu Nofitria', 'Rahayu Nofitria@gmail.com', '2102113014', 'Pendidikan Teknik Elektro', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(71, 'Rahma Zaujatul Hafiqah', 'Rahma Zaujatul Hafiqah@gmail.com', '2103101084', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(72, 'Rahma Arlia Putri', 'Rahma Arlia Putri@gmail.com', '2102109026', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(73, 'Rahma Wati Wahyu Nur Hidayah', 'Rahma Wati Wahyu Nur Hidayah@gmail.com', '2102107021', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(74, 'Ramadhan Dwi Anggoto', 'Ramadhan Dwi Anggoto@gmail.com', '2103102004', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(75, 'Ramadhani Salsa Bela Fitria Rosi', 'Ramadhani Salsa Bela Fitria Rosi@gmail.com', '2102111006', 'Pendidikan Biologi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(76, 'Rara Risma Gressilya', 'Rara Risma Gressilya@gmail.com', '2102109035', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(77, 'Rasida Yuni Ambar Wati', 'Rasida Yuni Ambar Wati@gmail.com', '2103102093', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(78, 'Ratih Istik Septiani', 'Ratih Istik Septiani@gmail.com', '2102106033', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(79, 'Ratna Erlindayani', 'Ratna Erlindayani@gmail.com', '2103101038', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(80, 'Ratna Sri Utami', 'Ratna Sri Utami@gmail.com', '2103102109', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(81, 'Ravida Wedelia Ajeng Ceasary', 'Ravida Wedelia Ajeng Ceasary@gmail.com', '2104101003', 'Farmasi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(82, 'Firnanda Rayhan Syah Falaini', 'Firnanda Rayhan Syah Falaini@gmail.com', '2104101011', 'Farmasi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(83, 'Rayhan Argya Kusuma', 'Rayhan Argya Kusuma@gmail.com', '2105102013', 'Sistem Informasi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(84, 'Razendra Intan Mahayoga', 'Razendra Intan Mahayoga@gmail.com', '2103102039', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(85, 'Regina Floresita', 'Regina Floresita@gmail.com', '2103102241', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:27:59', '2024-10-24 18:27:59'),
(86, 'Ariyanti Widyastuti', 'Ariyanti Widyastuti@gmail.com', '2102108021', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(87, 'Arsyil Sephia Hayati', 'Arsyil Sephia Hayati@gmail.com', '2102103022', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(88, 'Arthur Kinanti', 'Arthur Kinanti@gmail.com', '2203103022', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(89, 'Arung Tirta Dwita Putri', 'Arung Tirta Dwita Putri@gmail.com', '2102103011', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(90, 'Asar Purbaya', 'Asar Purbaya@gmail.com', '2102101191', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(91, 'Asda Fauzika \'Aqilah', 'Asda Fauzika \'Aqilah@gmail.com', '2103102081', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(92, 'Atika Damayanti', 'Atika Damayanti@gmail.com', '2103102128', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(93, 'Audrey Regina Pratama Putri', 'Audrey Regina Pratama Putri@gmail.com', '2102101092', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(94, 'Aulia Nisa Adila', 'Aulia Nisa Adila@gmail.com', '2104101008', 'Farmasi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(95, 'Aulia Noor Lutfia Salsabila', 'Aulia Noor Lutfia Salsabila@gmail.com', '2102108039', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(96, 'Aulianisa Nuzulul Muyasaroh', 'Aulianisa Nuzulul Muyasaroh@gmail.com', '2103101026', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(97, 'Ayunda Berlian Putri', 'Ayunda Berlian Putri@gmail.com', '2102103028', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(98, 'Ayu Riana', 'Ayu Riana@gmail.com', '2102106021', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(99, 'Azilla Surya Riskina', 'Azilla Surya Riskina@gmail.com', '2103102059', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(100, 'Barra Ulfi Nazhifah', 'Barra Ulfi Nazhifah@gmail.com', '2103102120', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(101, 'Bayu Saputra', 'Bayu Saputra@gmail.com', '2105102003', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(102, 'Belca Setya Budi', 'Belca Setya Budi@gmail.com', '2105101111', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(103, 'Bella Tri Santi', 'Bella Tri Santi@gmail.com', '2102108026', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(104, 'Berlina Zaskya Putri', 'Berlina Zaskya Putri@gmail.com', '2103101024', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(105, 'Bimo Satrio Wicaksono', 'Bimo Satrio Wicaksono@gmail.com', '2105101020', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(106, 'Bintang Wahyu Erliyanto', 'Bintang Wahyu Erliyanto@gmail.com', '2103101035', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(107, 'Binta Permana', 'Binta Permana@gmail.com', '2103102225', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(108, 'Husein Nur Fauzy', 'Husein Nur Fauzy@gmail.com', '2103102192', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:36:12', '2024-10-24 18:36:12'),
(109, 'Ilham Ramadani', 'Ilham Ramadani@gmail.com', '2106101018', 'Hukum', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(110, 'Imilia Triana Febianti', 'Imilia Triana Febianti@gmail.com', '2102101213', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(111, 'Imroatu Solikha', 'Imroatu Solikha@gmail.com', '2102101050', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(112, 'Indah Nur Malinda', 'Indah Nur Malinda@gmail.com', '2203103019', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(113, 'Indah Wahyu Ningtyas', 'Indah Wahyu Ningtyas@gmail.com', '2103102254', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(114, 'Indaka Barody', 'Indaka Barody@gmail.com', '2205101087', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(115, 'Indar Ayum Ayunda Atmojo', 'Indar Ayum Ayunda Atmojo@gmail.com', '2203103015', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(116, 'Inin Ananta', 'Inin Ananta@gmail.com', '2102101165', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(117, 'Intan Febiola Kharisma Santi', 'Intan Febiola Kharisma Santi@gmail.com', '2102101068', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(118, 'Intan Nur Indah Sari', 'Intan Nur Indah Sari@gmail.com', '2105101033', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(119, 'Intan Febriyana', 'Intan Febriyana@gmail.com', '2103102229', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(120, 'Intan Gestiana Priskadita', 'Intan Gestiana Priskadita@gmail.com', '2103102202', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(121, 'Intan Larasati', 'Intan Larasati@gmail.com', '2102106019', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(122, 'Iqssan Maulana', 'Iqssan Maulana@gmail.com', '2105101025', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(123, 'Ira Andriani', 'Ira Andriani@gmail.com', '2102101177', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(124, 'Isna Febritarani Azizah', 'Isna Febritarani Azizah@gmail.com', '2103102071', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(125, 'Jesika Stevani', 'Jesika Stevani@gmail.com', '2102106022', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(126, 'Jihan Rizqulloh', 'Jihan Rizqulloh@gmail.com', '2102109042', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(127, 'Jingga Alfina Pradani', 'Jingga Alfina Pradani@gmail.com', '2102103006', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(128, 'Jini Ajeng Novitasari', 'Jini Ajeng Novitasari@gmail.com', '2105102009', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(129, 'Jodi Dwi Budi Santoso', 'Jodi Dwi Budi Santoso@gmail.com', '2203103020', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44'),
(130, 'Kalvin Febrinio Putra', 'Kalvin Febrinio Putra@gmail.com', '2203103005', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:36:44', '2024-10-24 18:36:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-aka4`
--

CREATE TABLE `lab-aka4` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-aka4`
--

INSERT INTO `lab-aka4` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Diny Aggita Hayuningtyas', 'Diny Aggita Hayuningtyas@gmail.com', '2103102232', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(2, 'Diska Arizal Nugroho', 'Diska Arizal Nugroho@gmail.com', '2102103042', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(3, 'Dita Meilia', 'Dita Meilia@gmail.com', '2102101193', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(4, 'Diva Auberta Nariswari', 'Diva Auberta Nariswari@gmail.com', '2102110002', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(5, 'Diva Alistya Putri', 'Diva Alistya Putri@gmail.com', '2105101039', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(6, 'Donna Khailila', 'Donna Khailila@gmail.com', '2102108034', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(7, 'Dony Kusuma Wardhana', 'Dony Kusuma Wardhana@gmail.com', '2102101051', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(8, 'Dova Arya Saputra', 'Dova Arya Saputra@gmail.com', '2105101105', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(9, 'Dwi Mar\'atus Saputri', 'Dwi Mar\'atus Saputri@gmail.com', '2102101042', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(10, 'Dwi Febrianti', 'Dwi Febrianti@gmail.com', '2103102250', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(11, 'Dwi Novitasari', 'Dwi Novitasari@gmail.com', '2103102105', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(12, 'Dyah Putri Rosyta Dewi', 'Dyah Putri Rosyta Dewi@gmail.com', '2102101157', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(13, 'Dyah Putri Nilamsari', 'Dyah Putri Nilamsari@gmail.com', '2102101100', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(14, 'Dyah Novita Ningrum', 'Dyah Novita Ningrum@gmail.com', '2103101007', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(15, 'Dyar Ayunda Rahma', 'Dyar Ayunda Rahma@gmail.com', '2102101061', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(16, 'Edelweis Gladis Handriavinozita', 'Edelweis Gladis Handriavinozita@gmail.com', '2103102010', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(17, 'Eka Yeni Yunila Puspitasari', 'Eka Yeni Yunila Puspitasari@gmail.com', '2102106032', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(18, 'Ela Nurjanah', 'Ela Nurjanah@gmail.com', '2102101189', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(19, 'Elin Rosela Wardani', 'Elin Rosela Wardani@gmail.com', '2102113008', 'Pendidikan Teknik Elektro', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(20, 'Ella Seftiani', 'Ella Seftiani@gmail.com', '2103101043', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:01', '2024-10-22 20:05:01'),
(21, 'Mochammad Regold Akbar', 'Mochammad Regold Akbar@gmail.com', '2102109006', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(22, 'Mochammad Risqi Amirulloh', 'Mochammad Risqi Amirulloh@gmail.com', '2105101014', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(23, 'Moh Rizal Bagus Cahyono Putro', 'Moh Rizal Bagus Cahyono Putro@gmail.com', '2105101094', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(24, 'Mohamad Dio Antya Firdaus', 'Mohamad Dio Antya Firdaus@gmail.com', '2103102031', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(25, 'Mohammad Angga Tri Pamanto', 'Mohammad Angga Tri Pamanto@gmail.com', '2105101023', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(26, 'Muhamad Yoga Wahyu Laksono', 'Muhamad Yoga Wahyu Laksono@gmail.com', '2102104009', 'Pendidikan Pancasila Dan Kewarganegaraan', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(27, 'Muhammad Adha Loren Febrianto', 'Muhammad Adha Loren Febrianto@gmail.com', '2105101109', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(28, 'Muhammad Arya Asyfani', 'Muhammad Arya Asyfani@gmail.com', '2103102060', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(29, 'Muhammad Fajar Hidayatulloh', 'Muhammad Fajar Hidayatulloh@gmail.com', '2103101017', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(30, 'Muhammad Rayyan Ramadhan', 'Muhammad Rayyan Ramadhan@gmail.com', '2102113010', 'Pendidikan Pancasila dan Kewarganegaraan', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(31, 'Muhammad Rois Alma\'sum', 'Muhammad Rois Alma\'sum@gmail.com', '2103102080', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(32, 'Muhammad Surya Akbar Muttaqien', 'Muhammad Surya Akbar Muttaqien@gmail.com', '2102101147', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(33, 'Muhammad Wildan Aziza', 'Muhammad Wildan Aziza@gmail.com', '2102103040', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(34, 'Muhammad Adam Doayindra Abiyu', 'Muhammad Adam Doayindra Abiyu@gmail.com', '2102112011', 'Pendidikan Fisika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(35, 'Muhammad Damar Priyonggo', 'Muhammad Damar Priyonggo@gmail.com', '2106101002', 'Hukum', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(36, 'Muhammad Imanullah Zulkarnaen', 'Muhammad Imanullah Zulkarnaen@gmail.com', '2103102268', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(37, 'Muhammad Hamzah Taqiyuddin A', 'Muhammad Hamzah Taqiyuddin A@gmail.com', '2105101057', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(38, 'Muhammad Ihksan Ardiansah', 'Muhammad Ihksan Ardiansah@gmail.com', '2103102137', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(39, 'Muntia Rahma', 'Muntia Rahma@gmail.com', '2102101183', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(40, 'Mustikasari', 'Mustikasari@gmail.com', '2103101077', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 20:05:30', '2024-10-22 20:05:30'),
(41, 'Sylvira Ajeng Fajar Ayu Cahyani', 'Sylvira Ajeng Fajar Ayu Cahyani@gmail.com', '2102109017', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(42, 'Tania Pramudita Rahmanisa Firdancahya', 'Tania Pramudita Rahmanisa Firdancahya@gmail.com', '2103102193', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(43, 'Tantri Kusumaningrum', 'Tantri Kusumaningrum@gmail.com', '2102101065', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(44, 'Tasya Agustin Safitri', 'Tasya Agustin Safitri@gmail.com', '2103102233', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(45, 'Tegar Aji Pasha', 'Tegar Aji Pasha@gmail.com', '2102101232', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(46, 'Teresa Puji Astuti', 'Teresa Puji Astuti@gmail.com', '2205101088', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(47, 'Terry Rahayu', 'Terry Rahayu@gmail.com', '2102109002', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(48, 'Tia Putri Suryantiningsih', 'Tia Putri Suryantiningsih@gmail.com', '2102110010', 'Pendidikan Matematika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(49, 'Tiara Putri Maharani', 'Tiara Putri Maharani@gmail.com', '2102101124', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(50, 'Tiara Noviyanti', 'Tiara Noviyanti@gmail.com', '2103101022', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(51, 'Tiara Nur Fitria', 'Tiara Nur Fitria@gmail.com', '2102101113', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(52, 'Tifani Dwi Prastika', 'Tifani Dwi Prastika@gmail.com', '2103102124', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(53, 'Titania Dwi Damayanti', 'Titania Dwi Damayanti@gmail.com', '2102102001', 'Pendidikan Guru Pendidikan Anak', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(54, 'Trenady Dheo Saputra', 'Trenady Dheo Saputra@gmail.com', '2102101055', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(55, 'Tri Ananda Kusuma Wardana', 'Tri Ananda Kusuma Wardana@gmail.com', '2102101179', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(56, 'Tri Wahyuni Nurul Hamidah', 'Tri Wahyuni Nurul Hamidah@gmail.com', '2103101023', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(57, 'Tri Wahyu Pramidiyah', 'Tri Wahyu Pramidiyah@gmail.com', '2102101029', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(58, 'Tria Aprilia Dina Sunaryo', 'Tria Aprilia Dina Sunaryo@gmail.com', '2205101010', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(59, 'Triana Safitri', 'Triana Safitri@gmail.com', '2102101140', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(60, 'Trianita Septiaseh', 'Trianita Septiaseh@gmail.com', '2102109016', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 20:05:57', '2024-10-22 20:05:57'),
(61, 'Akbar Hervansyah', 'AkbarHervansyah@gmail.com', '2105101028', 'Pendidikan Akuntansi', 'PPG', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 03:15:08', '2024-10-24 03:15:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-feb3`
--

CREATE TABLE `lab-feb3` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-feb3`
--

INSERT INTO `lab-feb3` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Akbar Hervansyah', 'AkbarHervansyah@gmail.com', '2105101028', 'Manajemen', 'Ujian IC3', '5 November 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 02:20:05', '2024-10-24 02:20:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-industri4`
--

CREATE TABLE `lab-industri4` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-informatika3`
--

CREATE TABLE `lab-informatika3` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-informatika3`
--

INSERT INTO `lab-informatika3` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Diny Aggita Hayuningtyas', 'DinyAggitaHayuningtyas@gmail.com', '2103102232', 'Manajemen', 'PPG', '4 november 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-25 01:43:21', '2024-10-25 01:43:21'),
(2, 'Diska Arizal Nugroho', 'DiskaArizalNugroho@gmail.com', '2102103042', 'Pendidikan Fisika', 'PPG', '5 November 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-25 01:44:12', '2024-10-25 01:44:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-komp1`
--

CREATE TABLE `lab-komp1` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-komp1`
--

INSERT INTO `lab-komp1` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(22, 'Abia Amillia Christina', 'Abia Amillia Christina@gmail.com', '2102111009', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(23, 'Abdul Azis', 'Abdul Azis@gmail.com', '2102105016', 'Pendidikan Sejarah', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(24, 'Addo Ferdinand Permana Duta', 'Addo Ferdinand Permana Duta@gmail.com', '2105101016', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(25, 'Ade Kharisma Nur Laila', 'Ade Kharisma Nur Laila@gmail.com', '2102101047', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(26, 'Adenna Paramarta Caprytha Dharma', 'Adenna Paramarta Caprytha Dharma@gmail.com', '2103102164', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(27, 'Adhitya Kusuma Wijaya', 'Adhitya Kusuma Wijaya@gmail.com', '2102101069', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(28, 'Adinda Maratusholikhah', 'Adinda Maratusholikhah@gmail.com', '2103102163', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(29, 'Adinda Noviana', 'Adinda Noviana@gmail.com', '2102105007', 'Pendidikan Sejarah', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(30, 'Adi Saputro', 'Adi Saputro@gmail.com', '2102106008', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(31, 'Admanezha Putri Yunitasari', 'Admanezha Putri Yunitasari@gmail.com', '2102105017', 'Pendidikan Sejarah', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(32, 'Ady Setyo Dewi Rahmasari', 'Ady Setyo Dewi Rahmasari@gmail.com', '2102111012', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(33, 'Afilia Nur Rifandhani', 'Afilia Nur Rifandhani@gmail.com', '2102101224', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(34, 'Afra Dias Afani', 'Afra Dias Afani@gmail.com', '2102101111', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(35, 'Afrilia Margareta Puspitarini', 'Afrilia Margareta Puspitarini@gmail.com', '2103101068', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(36, 'Agung Nugroho', 'Agung Nugroho@gmail.com', '2102110019', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(37, 'Agun Syahrul Frastyansyah', 'Agun Syahrul Frastyansyah@gmail.com', '2105103005', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(38, 'Agus Tiara Nur Khasanah', 'Agus Tiara Nur Khasanah@gmail.com', '2102101136', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(39, 'Ahmad Kholid Hasan Tohir', 'Ahmad Kholid Hasan Tohir@gmail.com', '2102101200', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(40, 'Ahmad Hari Setiawwan', 'Ahmad Hari Setiawwan@gmail.com', '2105103012', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(41, 'Ahwa Unthaqiya Ambiya', 'Ahwa Unthaqiya Ambiya@gmail.com', '2102101199', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(42, 'Aji Nur Abdurrohman', 'Aji Nur Abdurrohman@gmail.com', '2102107031', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:34:47', '2024-10-22 18:34:47'),
(43, 'Elsa Alya Hafijah', 'Elsa Alya Hafijah@gmail.com', '2103102009', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(44, 'Elsa Adinda Candra Dewi', 'Elsa Adinda Candra Dewi@gmail.com', '2103101067', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(45, 'Elsabela Yenita Putri', 'Elsabela Yenita Putri@gmail.com', '2102101231', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(46, 'Elsha Shintawati', 'Elsha Shintawati@gmail.com', '2102105010', 'Pendidikan Sejarah', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(47, 'Elvira Yuandita', 'Elvira Yuandita@gmail.com', '2102101221', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(48, 'Elvivianti', 'Elvivianti@gmail.com', '2102101088', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(49, 'Elysa Dwi Puji Astuti', 'Elysa Dwi Puji Astuti@gmail.com', '2103101027', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(50, 'Elza Syaharani Nurmajid', 'Elza Syaharani Nurmajid@gmail.com', '2102110004', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(51, 'Emma Widyawati', 'Emma Widyawati@gmail.com', '2102102008', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(52, 'Enggi Okta Setyomoko', 'Enggi Okta Setyomoko@gmail.com', '2102101235', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(53, 'Enggin Yuna Arinda', 'Enggin Yuna Arinda@gmail.com', '2102101132', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(54, 'Eni Milawati', 'Eni Milawati@gmail.com', '2102110012', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(55, 'Erin Dwi Praningsih', 'Erin Dwi Praningsih@gmail.com', '2103102092', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(56, 'Erin Vanja Armastyan', 'Erin Vanja Armastyan@gmail.com', '2103102095', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(57, 'Erla Widyawati', 'Erla Widyawati@gmail.com', '2102101013', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(58, 'Erly Asriyani', 'Erly Asriyani@gmail.com', '2103102033', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(59, 'Ernita Putri Rahmadhani', 'Ernita Putri Rahmadhani@gmail.com', '2102101094', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(60, 'Errina Dwi Nurraini', 'Errina Dwi Nurraini@gmail.com', '2103102203', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(61, 'Ersa Angelika', 'Ersa Angelika@gmail.com', '2103102251', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(62, 'Ertika Nur Laily', 'Ertika Nur Laily@gmail.com', '2102102003', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(63, 'Ultari Putri Indrasari', 'Ultari Putri Indrasari@gmail.com', '2102109004', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:35:13', '2024-10-22 18:35:13'),
(64, 'Mutiara Suci Mastrianti', 'Mutiara Suci Mastrianti@gmail.com', '2102101026', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(65, 'Nabila Zahra Zhafira', 'Nabila Zahra Zhafira@gmail.com', '2102108002', 'Pendidikan Bahasa dan Sastra', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(66, 'Nabilla Mutamimatul Lutfiah', 'Nabilla Mutamimatul Lutfiah@gmail.com', '2102104012', 'Pendidikan Pancasila dan', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(67, 'Nadilla Putri Ardhani', 'Nadilla Putri Ardhani@gmail.com', '2102109001', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(68, 'Nadya Tyar Pramesti', 'Nadya Tyar Pramesti@gmail.com', '2102107016', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(69, 'Nadya Ashad', 'Nadya Ashad@gmail.com', '2102103032', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(70, 'Nagia Aisya Firliani', 'Nagia Aisya Firliani@gmail.com', '2102101218', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(71, 'Nala Rohmatul Aza', 'Nala Rohmatul Aza@gmail.com', '2103102103', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(72, 'Nanda Ayu Margono', 'Nanda Ayu Margono@gmail.com', '2102108022', 'Pendidikan Bahasa dan Sastra', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(73, 'Ananda Mega Prasetiya', 'Ananda Mega Prasetiya@gmail.com', '2103102016', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(74, 'Nanda Sri Susanti', 'Nanda Sri Susanti@gmail.com', '2105101005', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(75, 'Narulita Ardiningtyas', 'Narulita Ardiningtyas@gmail.com', '2102101076', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(76, 'Natasya Eka Wulandari', 'Natasya Eka Wulandari@gmail.com', '2103101025', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(77, 'Nawang Niptyaningsih', 'Nawang Niptyaningsih@gmail.com', '2102101020', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(78, 'Nelly Agustina Rahmawati', 'Nelly Agustina Rahmawati@gmail.com', '2103102182', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(79, 'Nensi Evita Febrianti', 'Nensi Evita Febrianti@gmail.com', '2102106016', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(80, 'Nia Andina Noviana', 'Nia Andina Noviana@gmail.com', '2102101078', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(81, 'Niken Fitria Rahayu', 'Niken Fitria Rahayu@gmail.com', '2102101171', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(82, 'Niken Rahmawati', 'Niken Rahmawati@gmail.com', '2102101210', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(83, 'Nindi Alifia Putri', 'Nindi Alifia Putri@gmail.com', '2103102140', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:36:25', '2024-10-22 18:36:25'),
(84, 'Tri Nur Sriana', 'Tri Nur Sriana@gmail.com', '2103101011', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(85, 'Tya Cici Nabila', 'Tya Cici Nabila@gmail.com', '2103102067', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(86, 'Ulfatin Prya Yufian', 'Ulfatin Prya Yufian@gmail.com', '2102101178', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(87, 'Ummi Afifatul Rohmah', 'Ummi Afifatul Rohmah@gmail.com', '2103102259', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(88, 'Ummu Rofiqoh', 'Ummu Rofiqoh@gmail.com', '2102101110', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(89, 'Usfi Syahrotu Ilmi', 'Usfi Syahrotu Ilmi@gmail.com', '2102103043', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(90, 'U\'ut Dhelli Murti', 'U\'ut Dhelli Murti@gmail.com', '2102108028', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(91, 'Uzroul Markhamah', 'Uzroul Markhamah@gmail.com', '2203103017', 'D3 Manajemen Pajak', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(92, 'Valliant Dheka Firmansyah', 'Valliant Dheka Firmansyah@gmail.com', '2105101019', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(93, 'Venesia Putri Oktavianingrum', 'Venesia Putri Oktavianingrum@gmail.com', '2106101001', 'Hukum', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(94, 'Vera Dwi Agustin', 'Vera Dwi Agustin@gmail.com', '2103102005', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(95, 'Vera Rahmawati', 'Vera Rahmawati@gmail.com', '2103102101', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(96, 'Mochammad Imam Verillian Jaya', 'Mochammad Imam Verillian Jaya@gmail.com', '2105101031', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(97, 'Vica Fernanda Putri', 'Vica Fernanda Putri@gmail.com', '2103101081', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(98, 'Viga Adryan Nugraheni', 'Viga Adryan Nugraheni@gmail.com', '2102101008', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(99, 'Vikha Hersa Agustin', 'Vikha Hersa Agustin@gmail.com', '2203103002', 'D3 Manajemen Pajak', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(100, 'Villa Natalia', 'Villa Natalia@gmail.com', '2102101237', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(101, 'Vina Yoelia Sandy', 'Vina Yoelia Sandy@gmail.com', '2104101006', 'Farmasi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(102, 'Visma Valentina', 'Visma Valentina@gmail.com', '2103102026', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44'),
(103, 'Vivia Nova Awliyah', 'Vivia Nova Awliyah@gmail.com', '2102107024', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:36:44', '2024-10-22 18:36:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-komp2`
--

CREATE TABLE `lab-komp2` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-komp2`
--

INSERT INTO `lab-komp2` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Akbar Hervansyah', 'Akbar Hervansyah@gmail.com', '2105101028', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(2, 'Akila Wasimatul Aula', 'Akila Wasimatul Aula@gmail.com', '2102101004', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(3, 'Aksal Mafisal', 'Aksal Mafisal@gmail.com', '2003102289', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(4, 'Aladdin Hidayatullah Jurjani', 'Aladdin Hidayatullah Jurjani@gmail.com', '2105103006', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(5, 'Alde Faris Prayogo', 'Alde Faris Prayogo@gmail.com', '2103102239', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(6, 'Aldi Nur Ro\'is', 'Aldi Nur Ro\'is@gmail.com', '2102101143', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(7, 'Aldino Baradella Oca', 'Aldino Baradella Oca@gmail.com', '2102101217', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(8, 'Alfi Khoirunnisa Muhaimin', 'Alfi Khoirunnisa Muhaimin@gmail.com', '2102103029', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(9, 'Alfi Nur Hani\'ah', 'Alfi Nur Hani\'ah@gmail.com', '2102110018', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(10, 'Alfina Khoiru Nisa\'', 'Alfina Khoiru Nisa\'@gmail.com', '2102104005', 'Pendidikan Pancasila dan', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(11, 'Alfina Nor Kumala Sari', 'Alfina Nor Kumala Sari@gmail.com', '2102101119', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(12, 'Alfinna Rossi Nur Azizah', 'Alfinna Rossi Nur Azizah@gmail.com', '2102101173', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(13, 'Alfiyatul Mukarromah', 'Alfiyatul Mukarromah@gmail.com', '2102101086', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(14, 'Algam Lajunanansyah', 'Algam Lajunanansyah@gmail.com', '2105102001', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(15, 'Aliffian Kharisma Nur Rochmad', 'Aliffian Kharisma Nur Rochmad@gmail.com', '2105101056', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(16, 'Ali Muhajir Assalami', 'Ali Muhajir Assalami@gmail.com', '2102110007', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(17, 'Alviansyah Ainur Rochman', 'Alviansyah Ainur Rochman@gmail.com', '2105101055', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(18, 'Alvi Divaul Janah', 'Alvi Divaul Janah@gmail.com', '2103102077', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(19, 'Alvina Dwi Rahmawati', 'Alvina Dwi Rahmawati@gmail.com', '2102108017', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(20, 'Alvin Rimbayanto', 'Alvin Rimbayanto@gmail.com', '2005101072', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(21, 'Alya Adelliana', 'Alya Adelliana@gmail.com', '2104102015', 'Ilmu Keolahragaan', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:38:28', '2024-10-22 18:38:28'),
(22, 'Wahid Syaiful Anwar', 'Wahid Syaiful Anwar@gmail.com', '2104102013', 'Ilmu Keolahragaan', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(23, 'Wahyu Danang Yulianto', 'Wahyu Danang Yulianto@gmail.com', '2103102028', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(24, 'Wahyuning Diah', 'Wahyuning Diah@gmail.com', '2203103007', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(25, 'Wahyu Nur Cahyo', 'Wahyu Nur Cahyo@gmail.com', '2105101081', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(26, 'Wahyu Romdhoni', 'Wahyu Romdhoni@gmail.com', '2102101031', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(27, 'Wanda Nurmalasari', 'Wanda Nurmalasari@gmail.com', '2103101012', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(28, 'Wanda Nurmilasari', 'Wanda Nurmilasari@gmail.com', '2103102089', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(29, 'Wenny Kharismawati', 'Wenny Kharismawati@gmail.com', '2105102010', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(30, 'Widya Ayu Puspitarini', 'Widya Ayu Puspitarini@gmail.com', '2102102011', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(31, 'Widya Malinda Sari', 'Widya Malinda Sari@gmail.com', '2103102108', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(32, 'Widya Nurlita', 'Widya Nurlita@gmail.com', '2102103007', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(33, 'Wilda Agung Nugroho', 'Wilda Agung Nugroho@gmail.com', '2102101044', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(34, 'Wildan Tamir Amanulloh', 'Wildan Tamir Amanulloh@gmail.com', '2102106002', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(35, 'Wildan Gilang Firdaus', 'Wildan Gilang Firdaus@gmail.com', '2105101029', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(36, 'Wilis Herlin Aryani', 'Wilis Herlin Aryani@gmail.com', '2105103002', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(37, 'Yahya Sarul', 'Yahya Sarul@gmail.com', '2102107017', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(38, 'Yanti Novitasari', 'Yanti Novitasari@gmail.com', '2102106001', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(39, 'Yanuar Arifin', 'Yanuar Arifin@gmail.com', '2105102012', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(40, 'Yashinta Nur Azizah', 'Yashinta Nur Azizah@gmail.com', '2103102149', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(41, 'Yeni Rahma Wati', 'Yeni Rahma Wati@gmail.com', '2103102167', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-22 18:38:59', '2024-10-22 18:38:59'),
(42, 'Nining Rahmawati', 'Nining Rahmawati@gmail.com', '2103102153', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(43, 'Nirma Kusumaningtyas', 'Nirma Kusumaningtyas@gmail.com', '2103101015', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(44, 'Nisyadella Frysca Ramadhani', 'Nisyadella Frysca Ramadhani@gmail.com', '2102107028', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(45, 'Nofa Anandaluvitasari', 'Nofa Anandaluvitasari@gmail.com', '2103102090', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(46, 'Nomita Wulan Nur Alifa', 'Nomita Wulan Nur Alifa@gmail.com', '2102101227', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(47, 'Norma Anjar Ariani', 'Norma Anjar Ariani@gmail.com', '2102101223', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(48, 'Nova Windi Elasari', 'Nova Windi Elasari@gmail.com', '2103102133', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(49, 'Novi Tri Wulandari', 'Novi Tri Wulandari@gmail.com', '2102106004', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(50, 'Novia Dwi Suci Ramadhani', 'Novia Dwi Suci Ramadhani@gmail.com', '2102109012', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(51, 'Novianti Listiya Ningrum', 'Novianti Listiya Ningrum@gmail.com', '2103102035', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(52, 'Novi Arindra Sari', 'Novi Arindra Sari@gmail.com', '2102101134', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(53, 'Novi Nurohmawati', 'Novi Nurohmawati@gmail.com', '2203103012', 'D3 Manajemen Pajak', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(54, 'Novita Afryda Hastuti', 'Novita Afryda Hastuti@gmail.com', '2103102019', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(55, 'Novita Anggraini', 'Novita Anggraini@gmail.com', '2102103008', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(56, 'Nuning Febriana', 'Nuning Febriana@gmail.com', '2102103031', 'Bimbingan Konseling', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(57, 'Nur Fitriya Fatmawati', 'Nur Fitriya Fatmawati@gmail.com', '2303101063', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(58, 'Nur Vita Sari Eka Ramadhani', 'Nur Vita Sari Eka Ramadhani@gmail.com', '2102102005', 'Pendidikan Guru Pendidikan Anak Usia', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(59, 'Nur Aeni', 'Nur Aeni@gmail.com', '2102101023', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(60, 'Nur Aziz Eka Syah Putra', 'Nur Aziz Eka Syah Putra@gmail.com', '2105101072', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(61, 'Nurisa Anas Syalum', 'Nurisa Anas Syalum@gmail.com', '2103102084', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-22 18:41:20', '2024-10-22 18:41:20'),
(65, 'ade ilham', 'adeilham@gmail.com', '0987654322', 'Manajemen', 'Ujian IC3', '4 november 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-23 07:57:33', '2024-10-23 07:57:33'),
(66, 'bagas', 'bagas@gmail.com', '1234522333', 'Teknik Informatika', 'Ujian IC3', '4 november 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-23 08:05:12', '2024-10-23 08:05:12'),
(67, 'riko', 'riko@gmail.com', '0987656677', 'Pendidikan Teknik Elektro', 'Ujian IC3', '5 November 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-23 08:09:07', '2024-10-23 08:09:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-mate1`
--

CREATE TABLE `lab-mate1` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-mate1`
--

INSERT INTO `lab-mate1` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Amal Danuarta Wijaya', 'Amal Danuarta Wijaya@gmail.com', '2102103041', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(2, 'Amalia Mayestika Putri', 'Amalia Mayestika Putri@gmail.com', '2103102270', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(3, 'Amalia Nanda Riris Sarofah', 'Amalia Nanda Riris Sarofah@gmail.com', '2102107023', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(4, 'Amalia Chrissafa Zalzabila', 'Amalia Chrissafa Zalzabila@gmail.com', '2105101042', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(5, 'Amdhani Mulya Pratiwi', 'Amdhani Mulya Pratiwi@gmail.com', '2102101159', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(6, 'Amelia Putri Susanto', 'Amelia Putri Susanto@gmail.com', '2102101216', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(7, 'Amelia Putri Afianti', 'Amelia Putri Afianti@gmail.com', '2103102230', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(8, 'Amin Yazid Achmad', 'Amin Yazid Achmad@gmail.com', '2105103009', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(9, 'Amirul Ma\'rufah', 'Amirul Ma\'rufah@gmail.com', '2102111010', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(10, 'Amrina Qurotul Aina Nur', 'Amrina Qurotul Aina Nur@gmail.com', '2102110014', 'Pendidikan Matematika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(11, 'Ana Sri Wahyuningtias', 'Ana Sri Wahyuningtias@gmail.com', '2102101117', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(12, 'Ananda Rama Putra Basthara', 'Ananda Rama Putra Basthara@gmail.com', '2102101202', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(13, 'Anang Arianto', 'Anang Arianto@gmail.com', '2105101084', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(14, 'Anang Suprianto', 'Anang Suprianto@gmail.com', '2102112010', 'Pendidikan Fisika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(15, 'Andan Pramudita', 'Andan Pramudita@gmail.com', '2103101014', 'Pendidikan Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(16, 'Andhika Putra Pradhana', 'Andhika Putra Pradhana@gmail.com', '2105101049', 'Teknik Informatika', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(17, 'Andrian Aji Pratama', 'Andrian Aji Pratama@gmail.com', '2102101098', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(18, 'Andriana Purnama Sari', 'Andriana Purnama Sari@gmail.com', '2103102237', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(19, 'Angellina Widya Kinaryosih', 'Angellina Widya Kinaryosih@gmail.com', '2102101096', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(20, 'Angga Asyhari Wardanu', 'Angga Asyhari Wardanu@gmail.com', '2102101074', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(21, 'Anggrisa Eka Nur Trianuri', 'Anggrisa Eka Nur Trianuri@gmail.com', '2102103013', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(22, 'Risky Alifian Nugroho', 'Risky Alifian Nugroho@gmail.com', '2105103015', 'Teknik Industri', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(23, 'Sintiya Oktavia Salsabila', 'Sintiya Oktavia Salsabila@gmail.com', '2103102068', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:15:46', '2024-10-24 18:15:46'),
(24, 'Fatiqah Ratma Putri Ningsih', 'Fatiqah Ratma Putri Ningsih@gmail.com', '2203103003', 'D3 Manajemen Pajak', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(25, 'Fatma Arista Puteri', 'Fatma Arista Puteri@gmail.com', '2102103014', 'Bimbingan Konseling', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(26, 'Febrianti Nurul Aulia', 'Febrianti Nurul Aulia@gmail.com', '2102109014', 'Pendidikan Bahasa Inggris', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(27, 'Felia Arum Pradana', 'Felia Arum Pradana@gmail.com', '2102101155', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(28, 'Fenny Widya Kusuma Dewi', 'Fenny Widya Kusuma Dewi@gmail.com', '2102107029', 'Pendidikan Ekonomi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(29, 'Ferdin Rio Destianto Nuh Farisi', 'Ferdin Rio Destianto Nuh Farisi@gmail.com', '2102101002', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(30, 'Fina Fajar Ranggani', 'Fina Fajar Ranggani@gmail.com', '2103102181', 'Manajemen', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(31, 'Firnanda Dwiki Hayuning Putri', 'Firnanda Dwiki Hayuning Putri@gmail.com', '2102101160', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(32, 'Firsa Okta Virawan', 'Firsa Okta Virawan@gmail.com', '2103101021', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(33, 'Fitria Nuraini Mawardha', 'Fitria Nuraini Mawardha@gmail.com', '2102101168', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(34, 'Fitri Adistya', 'Fitri Adistya@gmail.com', '2102101089', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(35, 'Fitriana Nur Budiati', 'Fitriana Nur Budiati@gmail.com', '2102108016', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(36, 'Fitri Astuti', 'Fitri Astuti@gmail.com', '2105102002', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(37, 'Fitriya Mardhiyana', 'Fitriya Mardhiyana@gmail.com', '2102101185', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(38, 'Fradilla Nurlailla Safitri', 'Fradilla Nurlailla Safitri@gmail.com', '2102101027', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(39, 'Fran Siska Rahmadani', 'Fran Siska Rahmadani@gmail.com', '2103101008', 'Akuntansi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(40, 'Fraulen Realita Dwitayanti', 'Fraulen Realita Dwitayanti@gmail.com', '2102111004', 'Pendidikan Biologi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(41, 'Fredyansyah Astrianto', 'Fredyansyah Astrianto@gmail.com', '2102101056', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(42, 'Galih Kurnia Pratama', 'Galih Kurnia Pratama@gmail.com', '2102101095', 'Pendidikan Guru Pendidikan Anak Usia', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(43, 'Galih Agung Yudo Prihantoro', 'Galih Agung Yudo Prihantoro@gmail.com', '2102101079', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(44, 'Galuh Prayoga Figgo Manggala', 'Galuh Prayoga Figgo Manggala@gmail.com', '2105102016', 'Sistem Informasi', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(45, 'Rizqi Styamulya Mawarni', 'Rizqi Styamulya Mawarni@gmail.com', '2102101138', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:16:21', '2024-10-24 18:16:21'),
(46, 'Nurmansa Willyam Pratama', 'Nurmansa Willyam Pratama@gmail.com', '2103102042', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(47, 'Nur Rafizah', 'Nur Rafizah@gmail.com', '2102101121', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(48, 'Nurul Fatimah', 'Nurul Fatimah@gmail.com', '2103102126', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(49, 'Nurul Masruroh', 'Nurul Masruroh@gmail.com', '2102108011', 'Pendidikan Bahasa Dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(50, 'Nurul Oktavia Rohmawati', 'Nurul Oktavia Rohmawati@gmail.com', '2102106027', 'Pendidikan Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(51, 'Oktaviana Nur Insan', 'Oktaviana Nur Insan@gmail.com', '2102112005', 'Pendidikan Fisika', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(52, 'Oktavian Bagas Batistuta', 'Oktavian Bagas Batistuta@gmail.com', '2102101197', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(53, 'Osha Adha Wahyudi', 'Osha Adha Wahyudi@gmail.com', '2103102271', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(54, 'Oza Ardian Saputra', 'Oza Ardian Saputra@gmail.com', '2102105009', 'Pendidikan Sejarah', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(55, 'Pangestu Adita Pratama', 'Pangestu Adita Pratama@gmail.com', '2103102162', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(56, 'Pantriagung Mardya Kusuma', 'Pantriagung Mardya Kusuma@gmail.com', '2102101145', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(57, 'Pramita Putri Agustina', 'Pramita Putri Agustina@gmail.com', '2102108032', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(58, 'Prasepti Prihastuti', 'Prasepti Prihastuti@gmail.com', '2102107020', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(59, 'Prayoga Darma Wijaya', 'Prayoga Darma Wijaya@gmail.com', '2102101198', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(60, 'Priasmita Putri Wardanti', 'Priasmita Putri Wardanti@gmail.com', '2103101009', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(61, 'Prisilia Nanda Prastika', 'Prisilia Nanda Prastika@gmail.com', '2102101052', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(62, 'Purwo Aji Saputro', 'Purwo Aji Saputro@gmail.com', '2103102003', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(63, 'Puteri Enjelita', 'Puteri Enjelita@gmail.com', '2103102046', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(64, 'Putri Dwi Handayani', 'Putri Dwi Handayani@gmail.com', '2103101034', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(65, 'Putri Arum Pusparani', 'Putri Arum Pusparani@gmail.com', '2103102166', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(66, 'Putri Febrina', 'Putri Febrina@gmail.com', '2102107008', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 18:17:56', '2024-10-24 18:17:56'),
(67, 'Yeri Dedi Riyanto', 'Yeri Dedi Riyanto@gmail.com', '2102108015', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(68, 'Yessa Iriansyah', 'Yessa Iriansyah@gmail.com', '2102110015', 'Pendidikan Matematika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(69, 'Yinta Divaya Andina', 'Yinta Divaya Andina@gmail.com', '2103102218', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(70, 'Yola Ainun Bachtiasri', 'Yola Ainun Bachtiasri@gmail.com', '2102101038', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(71, 'Yoshinta Tsari Putri Salsabila', 'Yoshinta Tsari Putri Salsabila@gmail.com', '2102101206', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(72, 'Yosia Nindi Kurniawan', 'Yosia Nindi Kurniawan@gmail.com', '2102108004', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(73, 'Yuendzi Santa Aurell', 'Yuendzi Santa Aurell@gmail.com', '2102104004', 'Pendidikan Pancasila Dan Kewarganegaraan', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(74, 'Yulia Andrian', 'Yulia Andrian@gmail.com', '2103102110', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(75, 'Yunita Nur Fitriyani', 'Yunita Nur Fitriyani@gmail.com', '2102108019', 'Pendidikan Bahasa dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(76, 'Yusrendra Ilham Ramadhan', 'Yusrendra Ilham Ramadhan@gmail.com', '2103102148', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(77, 'Yuyun Anis Setyowati', 'Yuyun Anis Setyowati@gmail.com', '2103101052', 'Akuntansi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(78, 'Yyunan Inan Octafi\'istoh', 'Yyunan Inan Octafi\'istoh@gmail.com', '2105102007', 'Sistem Informasi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(79, 'Zahra Nurrina', 'Zahra Nurrina@gmail.com', '2103102146', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(80, 'Zahwa Nura Ailani', 'Zahwa Nura Ailani@gmail.com', '2103102088', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(81, 'Nur Muhammad Zeyn Abdullah', 'Nur Muhammad Zeyn Abdullah@gmail.com', '2102104007', 'Pendidikan Pancasila dan Kewarganegaraan', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(82, 'Zidan Fadhiil Purwoko', 'Zidan Fadhiil Purwoko@gmail.com', '2105101037', 'Teknik Informatika', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(83, 'Zulfa Kusnia Dina', 'Zulfa Kusnia Dina@gmail.com', '2102101022', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(84, 'Zulfa Mahmudatunnisa', 'Zulfa Mahmudatunnisa@gmail.com', '2103102037', 'Manajemen', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(85, 'Anggun Novita Wulandari', 'Anggun Novita Wulandari@gmail.com', '2102107014', 'Pendidikan Ekonomi', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(86, 'Anggun Ermayanti', 'Anggun Ermayanti@gmail.com', '2102101214', 'Pendidikan Guru Sekolah Dasar', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41'),
(87, 'Ariska Nur Fadilah', 'Ariska Nur Fadilah@gmail.com', '2102108010', 'Pendidikan Bahasa Dan Sastra Indonesia', 'Ujian IC3', '5 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 18:18:41', '2024-10-24 18:18:41');

-- --------------------------------------------------------

--
-- Struktur dari tabel `lab-si4`
--

CREATE TABLE `lab-si4` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `progam-studi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jadwal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `lab-si4`
--

INSERT INTO `lab-si4` (`id`, `nama`, `email`, `nim`, `progam-studi`, `kegiatan`, `jadwal`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 'Abia Amillia Christina', 'AbiaAmilliaChristina@gmail.com', '2102111009', 'Pendidikan Fisika', 'Ujian IC3', '5 November 2024', 'Sesi 1 (09.00 - 10.30)', '2024-10-24 02:18:54', '2024-10-24 02:18:54'),
(2, 'Akbar Hervansyah', 'AkbarHervansyah@gmail.com', '2105101028', 'Pendidikan Teknik Elektro', 'Ujian IC3', '4 September 2024', 'Sesi 2 (12.30 - 14.00)', '2024-10-24 02:43:42', '2024-10-24 02:43:42');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_10_06_152819_create_jadwals_table', 1),
(6, '2024_10_06_152837_create_sesis_table', 1),
(7, '2024_10_06_152850_create_daftar_labs_table', 1),
(8, '2024_10_06_152918_create_kegiatans_table', 1),
(9, '2024_10_06_152931_create_prodis_table', 1),
(10, '2024_10_06_153856_create_lab_komp1s_table', 1),
(11, '2024_10_06_153910_create_lab_komp2s_table', 1),
(12, '2024_10_06_153940_create_lab_aka1s_table', 1),
(13, '2024_10_06_153957_create_lab_mate1s_table', 1),
(14, '2024_10_06_154013_create_lab_informatika3s_table', 1),
(15, '2024_10_06_154029_create_lab_feb3s_table', 1),
(16, '2024_10_06_154050_create_lab_si4s_table', 1),
(17, '2024_10_06_154104_create_lab_industri4s_table', 1),
(18, '2024_10_06_154121_create_lab_aka4s_table', 1),
(19, '2024_10_07_130308_create_slot_kursis_table', 1),
(20, '2024_10_08_015129_create_data_pesertas_table', 1),
(21, '2024_10_08_130000_create_peserta_ukks_table', 1),
(22, '2024_10_18_144137_create_backup_pesertas_table', 1),
(23, '2024_10_21_070402_create_nim_terdaftars_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `nim_terdaftar`
--

CREATE TABLE `nim_terdaftar` (
  `id` bigint UNSIGNED NOT NULL,
  `daftar-nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kegiatan` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `nim_terdaftar`
--

INSERT INTO `nim_terdaftar` (`id`, `daftar-nim`, `kegiatan`, `created_at`, `updated_at`) VALUES
(1, '0987654322', 'Ujian IC3', '2024-10-23 07:57:33', '2024-10-23 07:57:33'),
(2, '1234522333', 'Ujian IC3', '2024-10-23 08:05:12', '2024-10-23 08:05:12'),
(3, '0987656677', 'Ujian IC3', '2024-10-23 08:09:07', '2024-10-23 08:09:07'),
(4, '2102111009', 'Ujian IC3', '2024-10-24 02:18:54', '2024-10-24 02:18:54'),
(5, '2105101028', 'Ujian IC3', '2024-10-24 02:20:05', '2024-10-24 02:20:05'),
(6, '2105101028', 'Ujian IC3', '2024-10-24 02:43:42', '2024-10-24 02:43:42'),
(7, '2105101028', 'Ujian IC3', '2024-10-24 02:51:20', '2024-10-24 02:51:20'),
(8, '2105101028', 'PPG', '2024-10-24 03:15:08', '2024-10-24 03:15:08'),
(9, '2103102232', 'PPG', '2024-10-25 01:43:21', '2024-10-25 01:43:21'),
(10, '2102103042', 'PPG', '2024-10-25 01:44:12', '2024-10-25 01:44:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `peserta_ukks`
--

CREATE TABLE `peserta_ukks` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Pendidikan Guru Sekolah Dasar', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(2, 'Pendidikan Guru Pendidikan Anak Usia Dini', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(3, 'Pendidikan Pancasila dan Kewarganegaraan', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(4, 'Bimbingan Konseling', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(5, 'Pendidikan Matematika', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(6, 'Pendidikan Biologi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(7, 'Pendidikan Fisika', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(8, 'Pendidikan Ekonomi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(9, 'Pendidikan Akuntansi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(10, 'Pendidikan Sejarah', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(11, 'Pendidikan Bahasa dan Sastra Indonesia', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(12, 'Pendidikan Bahasa Inggris', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(13, 'Pendidikan Teknik Elektro', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(14, 'Manajemen', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(15, 'Akuntansi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(16, 'D-III Manajemen Pajak', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(17, 'Sistem Informasi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(18, 'Teknik Informatika', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(19, 'Teknik Industri', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(20, 'Teknik Kimia', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(21, 'Teknik Elektro', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(22, 'Ilmu Keolahragaan', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(23, 'Farmasi', '2024-10-13 09:00:55', '2024-10-13 09:00:55'),
(24, 'Hukum', '2024-10-13 09:00:55', '2024-10-13 09:00:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sesi`
--

CREATE TABLE `sesi` (
  `id` bigint UNSIGNED NOT NULL,
  `daftar-sesi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sesi`
--

INSERT INTO `sesi` (`id`, `daftar-sesi`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Sesi 1 (09.00 - 10.30)', 'aktif', '2024-10-14 20:30:03', '2024-10-14 20:30:03'),
(2, 'Sesi 2 (12.30 - 14.00)', 'aktif', '2024-10-14 20:30:03', '2024-10-14 13:54:11'),
(3, 'Sesi 3 (00.00 - 00.00)', 'non aktif', '2024-10-14 20:30:03', '2024-10-14 13:41:26'),
(4, 'Sesi 4 (00.00 - 00.00)', 'non aktif', '2024-10-14 20:30:03', '2024-10-14 13:41:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `slot_kursi`
--

CREATE TABLE `slot_kursi` (
  `id` bigint UNSIGNED NOT NULL,
  `nama-lab` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah-kursi` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prodi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `nim`, `email`, `prodi`, `kategori`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'tegar', '1234567890', 'tegar@gmail.com', 'Teknik informatika', 'user', 'tegar', 'aktif', NULL, NULL, NULL),
(2, 'user1', NULL, 'user1@gmail.com', NULL, 'user', 'user1', 'aktif', NULL, '2024-10-22 04:22:12', '2024-10-22 04:22:12'),
(3, 'user2', NULL, 'user2@gmail.com', NULL, 'user', 'user2', 'aktif', NULL, '2024-10-22 04:22:12', '2024-10-22 04:22:12'),
(4, 'user3', NULL, 'user3@gmail.com', NULL, 'user', 'user3', 'aktif', NULL, '2024-10-22 04:22:12', '2024-10-22 04:22:12'),
(1595, 'Nama Lengkap', 'NIM', 'Email', 'Program Studi', 'user', 'Nama Lengkap123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1596, 'Indaka Barody', '2205101087', 'indakabarody16@gmail.com', 'Teknik Informatika', 'admin', 'Indaka Barody1234', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-23 05:23:13'),
(1597, 'Celin', '2205101088', 'celina_2102110016@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Celina Nurmay Khanawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-23 00:13:18'),
(1598, 'Belca setya budi', '2105101111', 'Hackermo53@gmail.com', 'Pendidikan Fisika', 'user', 'Belca setya budi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 23:32:34'),
(1599, 'Wahyu Nur Cahyo', '2105101081', 'whxyunc@gmail.com', 'Pendidikan Fisika', 'user', 'Wahyu Nur Cahyo123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 19:24:06'),
(1600, 'Siti Nur Khasanah', '2102110003', 'siti_2102110003@mhs.unipma.ac.id', 'D-III Manajemen Pajak', 'user', 'Siti Nur Khasanah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 19:24:16'),
(1601, 'Zidan Fadhiil Purwoko', '2105101037', 'fadhiilzidan674@gmail.com', 'Teknik Informatika', 'user', 'Zidan Fadhiil Purwoko123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1602, 'Addo Ferdinand Permana Duta', '2105101016', 'addoferdinand80@gmail.com', 'Teknik Informatika', 'user', 'Addo Ferdinand Permana Duta123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1603, 'Bryan Abel Maulana', '2105101048', 'bryanabelmaulana12@gmail.com', 'Teknik Informatika', 'user', 'Bryan Abel Maulana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1604, 'RAYHAN ARGYA KUSUMA', '2105102013', 'rayhanargya@gmail.com', 'Sistem Informasi', 'user', 'RAYHAN ARGYA KUSUMA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1605, 'Ariska Nur Fadilah', '2102108010', 'ariskanurfadila@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Ariska Nur Fadilah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1606, 'Visma Valentina', '2103102026', 'vismavalentina98@gmail.com', 'Manajemen', 'user', 'Visma Valentina123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1607, 'Khoirun Nisa Bisyaroh', '2105101041', 'khoirunnisabsy1410@gmail.com', 'Teknik Informatika', 'user', 'Khoirun Nisa Bisyaroh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1608, 'Amalia Chrissafa Zalzabila', '2105101042', 'amaliachrs0106@gmail.com', 'Teknik Informatika', 'user', 'Amalia Chrissafa Zalzabila123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1609, 'Yanuar Arifin', '2105102012', 'yanuararifin121@gmail.com', 'Sistem Informasi', 'user', 'Yanuar Arifin123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1610, 'ramadhan dwi anggoto', '2103102004', 'danrama956@gmail.com', 'Manajemen', 'user', 'ramadhan dwi anggoto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1611, 'Syifa Alicia Putri', '2103102178', 'syifaalicia2@gmail.com', 'Manajemen', 'user', 'Syifa Alicia Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1612, 'Fanny Cantika Dewi', '2102901035', 'fannycantika1671@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Fanny Cantika Dewi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1613, 'Diva Alistya Putri', '2105101039', 'divaalistya12@gmail.com', 'Teknik Informatika', 'user', 'Diva Alistya Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1614, 'Alfina Nor Kumala Sari', '2102301119', 'alfinanorkumalasari@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Alfina Nor Kumala Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1615, 'Hesti Hendriani', '2102101127', 'hestihe30@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Hesti Hendriani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1616, 'Linda Dwi Wahyuni', '2102108020', 'lindadwi53202@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Linda Dwi Wahyuni123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1617, 'OZA ARDIAN SAPUTRA', '2102105009', 'ozaardiansaputra123@gmail.com', 'Pendidikan Sejarah', 'user', 'OZA ARDIAN SAPUTRA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1618, 'Dhevitha Indriyani', '2102108012', 'dhevithaindriyani24@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Dhevitha Indriyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1619, 'APRILIA PUTRI RETNO SIWI', '2102101205', 'Aprilia_2102101205@mhs.unipma.ac id', 'Pendidikan Guru Sekolah Dasar', 'user', 'APRILIA PUTRI RETNO SIWI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1620, 'Asda Fauzika \'Aqilah', '2103102081', 'fauzikaasda@gmail.com', 'Manajemen', 'user', 'Asda Fauzika \'Aqilah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1621, 'Erin Dwi Praningsih', '2103102092', 'erindwi57@gmail.com', 'Manajemen', 'user', 'Erin Dwi Praningsih123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1622, 'Anjani Putri Hergian', '2103102064', 'anjaniputri607@gmail.com', 'Manajemen', 'user', 'Anjani Putri Hergian123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1623, 'Isna Febritarani Azizah', '2103102071', 'isnafebritarani@gmail.com', 'Manajemen', 'user', 'Isna Febritarani Azizah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1624, 'Rasida Yuni Ambar Wati', '2103102093', 'rasyda.aw@gmail.com', 'Manajemen', 'user', 'Rasida Yuni Ambar Wati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1625, 'VERA RAHMAWATI', '2103102101', 'verarahma330@gmail.com', 'Manajemen', 'user', 'VERA RAHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1626, 'Candra Lingga Pramesty', '2102108013', 'Clingga06@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Candra Lingga Pramesty123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1627, 'Nurul Masruroh', '2102108011', 'masrurohnurul777@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Nurul Masruroh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1628, 'Elvira Yuandita', '2102101221', 'elvirayuandita16@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Elvira Yuandita123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1629, 'ENGGIN YUNA ARINDA', '2102101132', 'engginyunaa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ENGGIN YUNA ARINDA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1630, 'Yuendzi Santa Aurell', '2102104004', 'yuendzi_2102104004@mhs.unipma.ac.id', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Yuendzi Santa Aurell123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1631, 'Fitriya Mardhiyana', '2102101185', 'fitriyamardhiyana0712@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Fitriya Mardhiyana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1632, 'Denis Pravita Yunarti', '2102103021', 'denispravita03@gmail.com', 'Bimbingan Konseling', 'user', 'Denis Pravita Yunarti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1633, 'MUHAMMAD SURYA AKBAR MUTTAQIEN', '2102101147', 'akbarsurya191@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'MUHAMMAD SURYA AKBAR MUTTAQIEN123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1634, 'Ardiansah Dwi Prasetia', '2105102011', 'ardiansah2081@gmail.com', 'Sistem Informasi', 'user', 'Ardiansah Dwi Prasetia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1635, 'Dea Nova Oktafiana', '2102111003', 'dhea45831@gmail.com', 'Pendidikan Biologi', 'user', 'Dea Nova Oktafiana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1636, 'Fraulen Realita Dwitayanti', '2102111004', 'realitafraulen@gmail.com', 'Pendidikan Biologi', 'user', 'Fraulen Realita Dwitayanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1637, 'M Fery Farhan', '2103102050', 'mfferyfarhan42@gmail.com', 'Manajemen', 'user', 'M Fery Farhan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1638, 'Terry Rahayu', '2102109002', 'terry_2102109002@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Terry Rahayu123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1639, 'Muhammad Farhan Arifianto', '2102109010', 'akashiseijirou4@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Muhammad Farhan Arifianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1640, 'Nadyra Devi Anggraini', '2102101021', 'nadyradevi27@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nadyra Devi Anggraini123', 'non aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 06:54:55'),
(1641, 'Nadilla Putri Ardhani', '2102109001', 'nadillapuw@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Nadilla Putri Ardhani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1642, 'Abdul Azis', '2102105016', 'azisngawi9@gmail.com', 'Pendidikan Sejarah', 'user', 'Abdul Azis123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1643, 'Alfina Khoiru Nisa\'', '2102104005', 'alfinakhoiru469@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Alfina Khoiru Nisa\'123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1644, 'Yeri Dedi Riyanto', '2102108015', 'yeri_2102108015@mhs.unipma.ac.id', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Yeri Dedi Riyanto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1645, 'Shinta Agustina', '2102101019', 'shintaagustinaay@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Shinta Agustina123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1646, 'Shinta Ayunda Rukminingtyas', '2102101018', 'ayundashinta017@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Shinta Ayunda Rukminingtyas123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1647, 'Reza Krisyulinda', '2102107002', 'rezajuli21@gmail.com', 'Pendidikan Ekonomi', 'user', 'Reza Krisyulinda123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1648, 'Mutiara Suci Mastrianti', '2102101026', 'mutiarasuci1904@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Mutiara Suci Mastrianti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1649, 'Fadilla Putri Suryanti', '2102111001', 'fadillaputrisurynti@gmail.com', 'Pendidikan Biologi', 'user', 'Fadilla Putri Suryanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1650, 'Michael Revanza', '2103102065', 'revanzamichael@gmail.com', 'Manajemen', 'user', 'Michael Revanza123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1651, 'Mochammad Rico Darmansyah', '2105103017', 'ricodarmansyah@gmail.com', 'Teknik Industri', 'user', 'Mochammad Rico Darmansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1652, 'Meyra Windyantika', '2102101156', 'meyrawtkaa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Meyra Windyantika123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1653, 'FENNY WIDYA KUSUMA DEWI', '2102107029', 'fennywidya29@gmail.com', 'Pendidikan Ekonomi', 'user', 'FENNY WIDYA KUSUMA DEWI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1654, 'Widya Intan Margono', '2102101154', 'widyaintanm@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Widya Intan Margono123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1655, 'CALVIN ASVINO PUTRA', '2102101152', 'calvinasvino1234@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'CALVIN ASVINO PUTRA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1656, 'ALDI NUR RO\'IS', '2102101143', 'aldinur933@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ALDI NUR RO\'IS123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1657, 'AMDHANI MULYA PRATIWI', '2102101159', 'amdhanimulyapratiwi@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'AMDHANI MULYA PRATIWI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1658, 'Yunita Nur Fitriyani', '2102108019', 'yunitanurfitriyani14@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Yunita Nur Fitriyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1659, 'Kiranda Sukma Ardani', '2102108009', 'kiranda.sukma@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Kiranda Sukma Ardani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1660, 'Tri Nur Sriana', '2103101011', 'trinursriana@gmail.com', 'Pendidikan Akuntansi', 'user', 'Tri Nur Sriana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1661, 'DICKY WIRATAMA PRANA YOGA', '2103101006', 'dickyyoga64@gmail.com', 'Akuntansi', 'user', 'DICKY WIRATAMA PRANA YOGA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1662, 'MUHAMMAD FAJAR HIDAYATULLOH', '2103101017', 'mfajarhidayatulloh16@gmail.com', 'Akuntansi', 'user', 'MUHAMMAD FAJAR HIDAYATULLOH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1663, 'LUCKY PUSPITASARI', '2103102054', 'luckypuspitasari647@gmail.com', 'Manajemen', 'user', 'LUCKY PUSPITASARI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1664, 'FRADILLA NURLAILLA SAFITRI', '2102101027', 'fradillanurlaillasafitri@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FRADILLA NURLAILLA SAFITRI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1665, 'Herlina Amalia Wulandari', '2102101028', 'amaliaherlina343@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Herlina Amalia Wulandari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1666, 'Akila Wasimatul Aula', '2102101004', 'wasimatulaqila@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Akila Wasimatul Aula123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1667, 'Defi Triana Sari', '2102101003', 'defitriana0905@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Defi Triana Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1668, 'Dhyah Sulistyowati', '2103102121', 'dhyah.sulistyowati@gmail.com', 'Manajemen', 'user', 'Dhyah Sulistyowati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1669, 'Lintang tri ayu purboningsih', '2102101109', 'Lintangtriayu2607@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Lintang tri ayu purboningsih123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1670, 'Akbar Hervansyah', '2105101028', 'hervansyahakbar@gmail.com', 'Teknik Informatika', 'user', 'Akbar Hervansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1671, 'Avindra Pradevipti', '2105101006', 'avindrapradev23@gmail.com', 'Teknik Informatika', 'user', 'Avindra Pradevipti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1672, 'Valliant Dheka Firmansyah', '2105101019', 'valliantfirmansyah2002@gmail.com', 'Teknik Informatika', 'user', 'Valliant Dheka Firmansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1673, 'YOUNKY REZA APRILA GHISA PRADANA', '2105101017', 'youngkireza212@gmail.com', 'Teknik Informatika', 'user', 'YOUNKY REZA APRILA GHISA PRADANA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1674, 'RAHADITYA RIZKY SUTOPO PUTRI', '2105101053', 'rahadityarizky36@gmail.com', 'Teknik Informatika', 'user', 'RAHADITYA RIZKY SUTOPO PUTRI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1675, 'Indah Nur Paraswati', '2105101063', 'backupkuliahku01@gmail.com', 'Teknik Informatika', 'user', 'Indah Nur Paraswati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1676, 'Firnanda Rayhan Syah Falaini', '2104101011', 'firnanda_2104101011@mhs.unipma.ac.id', 'Farmasi', 'user', 'Firnanda Rayhan Syah Falaini123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1677, 'AMALIA NANDA RIRIS SAROFAH', '2102107023', 'amalianandaririssarofah@gmail.com', 'Pendidikan Ekonomi', 'user', 'AMALIA NANDA RIRIS SAROFAH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1678, 'Sekar Nabila Phasa Silfia', '2102108003', 'sekarsilfia123@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Sekar Nabila Phasa Silfia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1679, 'Fitriana Nur Budiati', '2102108016', 'fitriana.nur.b@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Fitriana Nur Budiati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1680, 'Sri Nur Setiyani', '2102107010', 'srinursetiyani@gmail.com', 'Pendidikan Ekonomi', 'user', 'Sri Nur Setiyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1681, 'Selya Nedjua Resti Yohana', '2102109003', 'selya_2102109003@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Selya Nedjua Resti Yohana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1682, 'Zulfa Kusnia Dina', '2102101022', 'zulfa_2102101022@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Zulfa Kusnia Dina123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1683, 'Aji Nur Abdurrohman', '2102107031', 'ajinur150903@gmail.com', 'Pendidikan Ekonomi', 'user', 'Aji Nur Abdurrohman123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1684, 'Ummu Rofiqoh', '2102101110', 'ummurofiqoh242@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ummu Rofiqoh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1685, 'Putri Rahayu Sukma Hidira', '2102101062', 'putrirahayusukmahidira@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Putri Rahayu Sukma Hidira123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1686, 'Zulfa Mahmudatunnisa', '2103102037', 'zulfamahmudatunnisa@gmail.com', 'Manajemen', 'user', 'Zulfa Mahmudatunnisa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1687, 'Ade Kharisma Nur Laila', '2102101047', 'adekharisma153@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ade Kharisma Nur Laila123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1688, 'FARIZKA ZULFI ASSYIFA', '2102101158', 'zulfifarizka@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FARIZKA ZULFI ASSYIFA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1689, 'Akbar Ligna Husada', '2102101015', 'akbar.cpc@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Akbar Ligna Husada123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1690, 'Novi Tri Wulandari', '2102106004', 'wnovitri475@gmail.com', 'Pendidikan Akuntansi', 'user', 'Novi Tri Wulandari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1691, 'Wanda Nurmalasari', '2103101012', 'wandanurmalasari5@gmail.com', 'Akuntansi', 'user', 'Wanda Nurmalasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1692, 'Ady Setyo Dewi Rahmasari', '2102111012', 'adysetyodr@gmail.com', 'Pendidikan Biologi', 'user', 'Ady Setyo Dewi Rahmasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1693, 'RAMADHANNI SALSA BELA FITRIA ROSI', '2102111006', 'ramadhanni_2102111006@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'RAMADHANNI SALSA BELA FITRIA ROSI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1694, 'Nuning Febriana', '2102103031', 'nunengfe322@gmail.com', 'Bimbingan Konseling', 'user', 'Nuning Febriana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1695, 'Wildan Gilang Firdaus', '2105101029', 'Wildangilang14@gmail.com', 'Teknik Informatika', 'user', 'Wildan Gilang Firdaus123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1696, 'Imilia Triana Febianti', '2102101213', 'Imiliatrianafebia@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Imilia Triana Febianti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1697, 'KHOMSYATUL AMALA', '2103101018', 'amalakhomsyatul08199@gmail.com', 'Akuntansi', 'user', 'KHOMSYATUL AMALA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1698, 'Stefany Oktaviana Putri', '2102103030', 'stefany.okta21@gmail.com', 'Bimbingan Konseling', 'user', 'Stefany Oktaviana Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1699, 'Alfi Khoirunnisa Muhaimin', '2102103029', 'alfinisaa12@gmail.com', 'Bimbingan Konseling', 'user', 'Alfi Khoirunnisa Muhaimin123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1700, 'Muhammad Wildan Aziza', '2102103040', 'wildanaziza46@gmail.com', 'Bimbingan Konseling', 'user', 'Muhammad Wildan Aziza123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1701, 'Putri Nadia', '2102112001', 'putrinadiya26@gmail.com', 'Pendidikan Fisika', 'user', 'Putri Nadia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1702, 'Sherly Oktafian', '2102112004', 'oktafiansherly@gmail.com', 'Pendidikan Fisika', 'user', 'Sherly Oktafian123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1703, 'SRI SULISTIANING VIDIANA', '2102106007', 'sri_2102106007@mhs.unipma.ac.id', 'Pendidikan Akuntansi', 'user', 'SRI SULISTIANING VIDIANA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1704, 'ERLA WIDYAWATI', '2102101013', 'erlawidyawati0@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ERLA WIDYAWATI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1705, 'Widya Nurlita', '2102103007', 'widyanurlita20120@gmail.com', 'Bimbingan Konseling', 'user', 'Widya Nurlita123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1706, 'Maya Dheka Salfira', '2102103023', 'mayadekha67@gmail.com', 'Bimbingan Konseling', 'user', 'Maya Dheka Salfira123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1707, 'wilis herlin aryani', '2105103002', 'wilisherlina@gmail.com', 'Teknik Industri', 'user', 'wilis herlin aryani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1708, 'Anissa Happy Yunia Wiyono', '2102107003', 'anissahpy08@gmail.com', 'Pendidikan Ekonomi', 'user', 'Anissa Happy Yunia Wiyono123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1709, 'Vivia nova awliyah', '2102107024', 'Viviaanova20@gmail.com', 'Pendidikan Ekonomi', 'user', 'Vivia nova awliyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1710, 'Dea prastika sari', '2102107025', 'prastikas04@gmail.com', 'Pendidikan Ekonomi', 'user', 'Dea prastika sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1711, 'Shofia Azizah', '2102107026', 'shofiazizah643@gmail.com', 'Pendidikan Ekonomi', 'user', 'Shofia Azizah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1712, 'Muhammad Rakha Yanminnata', '2102103024', 'Mhmdrkhaynmnnata@gmail.com', 'Bimbingan Konseling', 'user', 'Muhammad Rakha Yanminnata123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1713, 'Dewi Fitriawati', '2102107019', 'panggildewi05@gmail.com', 'Pendidikan Ekonomi', 'user', 'Dewi Fitriawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1714, 'Puteri Enjelita', '2103102046', 'puterienjelita03@gmail.com', 'Manajemen', 'user', 'Puteri Enjelita123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1715, 'Novianti Listiya Ningrum', '2103102035', 'noviantilistia688@gmail.com', 'Manajemen', 'user', 'Novianti Listiya Ningrum123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1716, 'Masruchah claudia', '2102103025', 'claudiamasruchah@gmail.com', 'Bimbingan Konseling', 'user', 'Masruchah claudia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1717, 'Imroatu Solikha', '2102101050', 'Solikhaimroatu12@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Imroatu Solikha123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1718, 'Trianita Septiaseh', '2102109016', 'Trianita_210209016@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Trianita Septiaseh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1719, 'Aldo Tegar Jannatul Ma\'wa', '2103102058', 'itsugamadara@gmail.com', 'Manajemen', 'user', 'Aldo Tegar Jannatul Ma\'wa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1720, 'FARIDA REGINA SISKA PRATIWI', '2102103047', 'Rgnasiska17@gmail.com', 'Bimbingan Konseling', 'user', 'FARIDA REGINA SISKA PRATIWI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1721, 'Jihan Rizqulloh', '2102109042', 'jihanrizqulloh@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Jihan Rizqulloh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1722, 'Rahma Wati Wahyu Nur Hidayah', '2102107021', 'rahmawatiwahyunurhidayahh03@gmail.com', 'Pendidikan Ekonomi', 'user', 'Rahma Wati Wahyu Nur Hidayah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1723, 'Nomita Wulan Nur Alifa', '2102101227', 'nomita_2102101227@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nomita Wulan Nur Alifa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1724, 'Villa Natalia', '2102101237', 'nataliavilla542@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Villa Natalia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1725, 'Hijraroh Nurkhalimah', '2102101230', 'hijrarohn@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Hijraroh Nurkhalimah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1726, 'Nagia Aisya Firliani', '2102101218', 'nagia_2102101218@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nagia Aisya Firliani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1727, 'Prasepti Prihastuti', '2102107020', 'praseptyhasty@gmail.com', 'Pendidikan Ekonomi', 'user', 'Prasepti Prihastuti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1728, 'Kiki Dwi Setyaningtiyas', '2102107022', 'kikidwi0404@gmail.com', 'Pendidikan Ekonomi', 'user', 'Kiki Dwi Setyaningtiyas123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1729, 'Dhelfyan Hargianto', '2106101024', 'hargianto92@gmail.com', 'Hukum', 'user', 'Dhelfyan Hargianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1730, 'LULUK MUKARROMAH', '2103101040', 'lulukm643@gmail.com', 'Akuntansi', 'user', 'LULUK MUKARROMAH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1731, 'Muhammad Adam Doayindra Abiyu', '2102112011', 'muhammadadamabiyu@gmail.com', 'Pendidikan Fisika', 'user', 'Muhammad Adam Doayindra Abiyu123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1732, 'YUYUN ANIS SETYOWATI', '2103101052', 'yuyun_2103101052@mhs.unipma.ac.id', 'Akuntansi', 'user', 'YUYUN ANIS SETYOWATI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1733, 'RETA PRAMUDYA SAFITRI', '2102107012', 'retapramudya@gmail.com', 'Pendidikan Ekonomi', 'user', 'RETA PRAMUDYA SAFITRI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1734, 'Harisa Patwi Sari', '2102109013', 'harisapatwis@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Harisa Patwi Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1735, 'Dwi Febrianti', '2103102250', 'dwiifebbb0202@gmail.com', 'Manajemen', 'user', 'Dwi Febrianti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1736, 'YOSHINTA TSARI PUTRI SALSABILA', '2102101206', 'salsabilaabil29@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'YOSHINTA TSARI PUTRI SALSABILA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1737, 'Della Permata Sari', '2102101120', 'dellapermata.po@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Della Permata Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1738, 'Anggun Novita Wulandari', '2102107014', 'anggunnovita8302@gmail.com', 'Pendidikan Ekonomi', 'user', 'Anggun Novita Wulandari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1739, 'Intan Gestiana Priskadita', '2103102202', 'intangestiana2508@gmail.com', 'Manajemen', 'user', 'Intan Gestiana Priskadita123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1740, 'Ersa Angelika', '2103102251', 'ersaangelika14@gmail.com', 'Manajemen', 'user', 'Ersa Angelika123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1741, 'RINDI APRIYANI', '2102101204', 'anir4876@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'RINDI APRIYANI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1742, 'ADENNA PARAMARTA CAPRYTHA DHARMA', '2103102164', 'aparamartaadenna@gmail.com', 'Pendidikan Ekonomi', 'user', 'ADENNA PARAMARTA CAPRYTHA DHARMA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1743, 'Dimas Hanif Prayoga', '2102101225', 'bacotnoskil@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dimas Hanif Prayoga123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1744, 'Novia Dwi Suci Ramadhani', '2102109012', 'noviadwisuciramadhani18@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Novia Dwi Suci Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1745, 'Anjaly Hana Aprilia Putri Rosida', '2102109039', 'anjaly_2102109039@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Anjaly Hana Aprilia Putri Rosida123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1746, 'Esa Nugraha Fatharina Pujiady', '2105102008', 'esanugra1234@gmail.com', 'Sistem Informasi', 'user', 'Esa Nugraha Fatharina Pujiady123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1747, 'Rian Febrianto', '2103102206', 'rianfebrianto.9c.23.2018@gmail.com', 'Manajemen', 'user', 'Rian Febrianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1748, 'BUFFON YOGA PRATAMA', '2102105008', 'buffonyogaprtm123@gmail.com', 'Pendidikan Sejarah', 'user', 'BUFFON YOGA PRATAMA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1749, 'Sintiya Oktavia Salsabila', '2103102068', 'sintiyaokta16@gmail.com', 'Manajemen', 'user', 'Sintiya Oktavia Salsabila123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1750, 'AULIA NISA ADILA', '2104101008', 'aulianisaadila829@gmail.com', 'Farmasi', 'user', 'AULIA NISA ADILA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1751, 'Karina Nurani Febriani', '2102106017', 'kkarina09022003@gmail.com', 'Pendidikan Akuntansi', 'user', 'Karina Nurani Febriani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1752, 'Karisma Laili Khasanah', '2104101012', 'karisma_2104101012@mhs.unipma.ac.id', 'Farmasi', 'user', 'Karisma Laili Khasanah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1753, 'MEITA DEWI KINASIH', '2104101015', 'meita_2104101015@mhs.unipma.ac.id', 'Farmasi', 'user', 'MEITA DEWI KINASIH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1754, 'Usfi Syahrotu Ilmi', '2102103043', 'usfi_2102103043@mhs.unipma.ac.id', 'Bimbingan Konseling', 'user', 'Usfi Syahrotu Ilmi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1755, 'Naila Oktavia Nisa', '2104101019', 'nailaoktavianusa6@gmail.com', 'Farmasi', 'user', 'Naila Oktavia Nisa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1756, 'Nadya Ashad', '2102103032', 'nadyaashad@gmail.com', 'Bimbingan Konseling', 'user', 'Nadya Ashad123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1757, 'Febrianti Nurul Aulia', '2102109014', 'Febrianti_2102109014@mhs.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Febrianti Nurul Aulia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1758, 'Inggil Budi Utami', '2103101020', 'inggilbudiutami@gmail.com', 'Akuntansi', 'user', 'Inggil Budi Utami123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1759, 'Hasan Sufi Firmansyah', '2105101070', 'hasansufifirmansyah28@gmail.com', 'Teknik Informatika', 'user', 'Hasan Sufi Firmansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1760, 'Della Ayu Pratiwi', '2102103027', 'dayumadiun@gmail.com', 'Bimbingan Konseling', 'user', 'Della Ayu Pratiwi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1761, 'Wildan Tamir Amanulloh', '2102106002', 'wildantaamanulloh@gmail.com', 'Pendidikan Akuntansi', 'user', 'Wildan Tamir Amanulloh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1762, 'Risa Yuliana', '2102103012', 'risa_2102103012@mhs.unipma.ac.id', 'Bimbingan Konseling', 'user', 'Risa Yuliana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1763, 'PUJA ARIANI', '2102104011', 'puja_2102104011@mhs.unipma.ac.id', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'PUJA ARIANI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1764, 'Ayunda Berlian Putri', '2102103028', 'ayundaberlianaputrii@gmail.com', 'Bimbingan Konseling', 'user', 'Ayunda Berlian Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1765, 'Azizah Baiti Lestari', '2102101129', 'azizah.baiti.lestari9@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Azizah Baiti Lestari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1766, 'RESTY DEWI ANGGRAINI', '2102101107', 'restydanggraini@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'RESTY DEWI ANGGRAINI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1767, 'Indri Arisanti', '2102101201', 'indriarisanti184@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Indri Arisanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1768, 'Septya Sekar Ayu Putri Kania', '2102103036', 'septysekar12@gmail.com', 'Bimbingan Konseling', 'user', 'Septya Sekar Ayu Putri Kania123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1769, 'Reza Eca Windyani', '2102101135', 'rezaecaw22@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Reza Eca Windyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1770, 'Novi Arindra Sari', '2102101134', 'noviarindrasari@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Novi Arindra Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1771, 'LUTFI HANNIFAH', '2103102013', 'lutfihannifah@gmail.com', 'Manajemen', 'user', 'LUTFI HANNIFAH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1772, 'Dila Fatku Rizkia', '2102101150', 'dilafatku@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dila Fatku Rizkia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1773, 'Yahya Sarul', '2102107017', 'yahyasarulyunus@gmail.com', 'Pendidikan Ekonomi', 'user', 'Yahya Sarul123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1774, 'MUHAMMAD DAVIQ ASHIDDIQY', '2104102003', 'daviqmuhammad012@gmail.com', 'Ilmu Keolahragaan', 'user', 'MUHAMMAD DAVIQ ASHIDDIQY123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1775, 'Nadya Tyar Pramesti', '2102107016', 'nadyatyar10@gmil.com', 'Pendidikan Ekonomi', 'user', 'Nadya Tyar Pramesti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1776, 'Dina Libria Ningrum', '2102107027', 'dinalibria9@gmail.com', 'Pendidikan Ekonomi', 'user', 'Dina Libria Ningrum123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1777, 'Linda Ayu Firnindasari', '2102107011', 'lindaayufirnindasari@gmail.com', 'Pendidikan Ekonomi', 'user', 'Linda Ayu Firnindasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1778, 'Rifa Arma Hanida', '2102110021', 'rifaarma23@gmail.com', 'Pendidikan Matematika', 'user', 'Rifa Arma Hanida123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1779, 'Rakhma Arum Diyanti', '2102109041', 'rakhmaarumdiyanti@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Rakhma Arum Diyanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1780, 'Nabilla Mutamimatul Lutfiah', '2102104012', 'nabilla28092002@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Nabilla Mutamimatul Lutfiah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1781, 'Muhammad Adha Loren Febrianto', '2105101109', 'lorenloren764@gmail.com', 'Teknik Informatika', 'user', 'Muhammad Adha Loren Febrianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1782, 'Khoirul Hasanah', '2102105013', 'khoii.rhull@gmail.com', 'Pendidikan Sejarah', 'user', 'Khoirul Hasanah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1783, 'Megia Rerisa', '2102104006', '16megiar@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Megia Rerisa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1784, 'Latifatul Hanisah', '2102101058', 'latifatulhanisah17@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Latifatul Hanisah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1785, 'Muhammad Rayyan Ramadhan', '2102113010', 'royanramadhn03@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Muhammad Rayyan Ramadhan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1786, 'Depy Fitriani', '2106101005', 'devysaputry221@gmail.com', 'Hukum', 'user', 'Depy Fitriani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1787, 'Dheka septiana', '2102106025', 'dekaseptiana22@gmail.com', 'Pendidikan Akuntansi', 'user', 'Dheka septiana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1788, 'Ayu Riana', '2102106021', 'ayuriana854@gmail.com', 'Pendidikan Akuntansi', 'user', 'Ayu Riana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1789, 'Eva Dwi Hapsari', '2102101037', 'dwiepa70@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Eva Dwi Hapsari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1790, 'Rezza Wahyu Hidhayat', '2102113002', 'rezza_2102113002@mhs.unipma.ac.id', 'Pendidikan Teknik Elektro', 'user', 'Rezza Wahyu Hidhayat123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1791, 'FELIA ARUM PRADANA', '2102101155', 'feliapradana9@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FELIA ARUM PRADANA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1792, 'Dyah Putri Rosyta Dewi', '2102101157', 'dyah_2102101157@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dyah Putri Rosyta Dewi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1793, 'Kharisma Chairunnisa', '2102101163', 'kharisma_2102101163@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Kharisma Chairunnisa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1794, 'Viga Adryan Nugraheni', '2102101008', 'viga_2102101008@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Viga Adryan Nugraheni123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1795, 'Fitria Nuraini Mawardha', '2102101168', 'fitrianurainimawardha@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Fitria Nuraini Mawardha123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1796, 'Citra Zherly Fitriana', '2102108005', 'zherlycitra6@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Citra Zherly Fitriana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1797, 'WIDYA MALINDA SARI', '2103102108', 'widyamalinda73@gmail.com', 'Manajemen', 'user', 'WIDYA MALINDA SARI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1798, 'Yulia Andrian', '2103102110', 'andrian9919@gmail.com', 'Manajemen', 'user', 'Yulia Andrian123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1799, 'MOHAMAD DIO ANTYA FIRDAUS', '2103102031', 'Mohamaddio454@gmail.com', 'Manajemen', 'user', 'MOHAMAD DIO ANTYA FIRDAUS123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1800, 'Mochammad Risqi Amirulloh', '2105101014', 'mochammad_2105101014@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Mochammad Risqi Amirulloh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1801, 'Wiga Ardhi Kusuma', '2106101009', 'Wiga_2109101009@mhs.unipma.ac.id', 'Hukum', 'user', 'Wiga Ardhi Kusuma123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1802, 'Firsa Okta Virawan', '2103101021', 'firsavirawan@gmail.com', 'Akuntansi', 'user', 'Firsa Okta Virawan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1803, 'CINDY AYU LISTARI', '2102104002', 'cindylstari@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'CINDY AYU LISTARI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1804, 'AGUS TIARA NUR KHASANAH', '2102101136', 'tiaranurkhasanah@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'AGUS TIARA NUR KHASANAH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1805, 'Nurul Aysha', '2102104010', 'nurulaysha03@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Nurul Aysha123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1806, 'Rahma Zaujatul Hafiqah', '2103101084', 'rahmazaujatul@gmail.com', 'Akuntansi', 'user', 'Rahma Zaujatul Hafiqah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1807, 'Nabila Zahra Zhafira', '2102108002', 'nabilazahrazhafira@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Nabila Zahra Zhafira123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1808, 'Asar Purbaya', '2102101191', 'asar51838@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Asar Purbaya123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1809, 'Danis Saprila Argiani', '2102101192', 'danissaprila12@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Danis Saprila Argiani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1810, 'Ana Sri Wahyuningtias', '2102101117', 'ana_2102101117@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ana Sri Wahyuningtias123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1811, 'Amirul Ma\'rufah', '2102111010', 'amirul_2102111010@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Amirul Ma\'rufah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1812, 'SILVIA FATMA MARASUCI', '2102111005', 'silvia_2102111005@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'SILVIA FATMA MARASUCI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1813, 'Pangestu Adita Pratama', '2103102162', 'pangestu_2103102162@mhs.unipma.ac.id', 'Manajemen', 'user', 'Pangestu Adita Pratama123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1814, 'Alfinna Rossi Nur Azizah', '2102101173', 'alfinna_2102101173@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Alfinna Rossi Nur Azizah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1815, 'Ela Nurjanah', '2102101189', 'ela_2102101189@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ela Nurjanah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1816, 'Citra Ayu Diah Pitaloka', '2102109029', 'citraadp963@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Citra Ayu Diah Pitaloka123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1817, 'Erly Asriyani', '2103102033', 'erlyasriyani@gmail.com', 'Manajemen', 'user', 'Erly Asriyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1818, 'Ulfatin Prya Yufian', '2102101178', 'ulfatin_2102101178@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ulfatin Prya Yufian123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1819, 'adhitya kusuma wijaya', '2102101069', 'adhitya_2102101069@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'adhitya kusuma wijaya123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1820, 'Rizka Rahmawati', '2102101053', 'rizka_2102101053@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Rizka Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1821, 'Muntia Rahma', '2102101183', 'muntiarahma@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Muntia Rahma123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1822, 'Faisal Ardyanto Nugroho', '2102101017', 'faisal_2102101017@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Faisal Ardyanto Nugroho123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1823, 'Aqias Tri Imanda', '2102101208', 'aaqias3@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Aqias Tri Imanda123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1824, 'Agun Syahrul Frastyansyah', '2105103005', 'agunf972@gmail.com', 'Teknik Industri', 'user', 'Agun Syahrul Frastyansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1825, 'kania salsabila', '2102101045', 'kania.salsabila125@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'kania salsabila123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1826, 'Nur rafizah', '2102101121', 'nurnurrafizah@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nur rafizah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1827, 'Dyar Ayunda Rahma', '2102101061', 'dyarayunda0208@gmail', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dyar Ayunda Rahma123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1828, 'TIARA NUR FITRIA', '2102101113', 'tiaranf38@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'TIARA NUR FITRIA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1829, 'Ahmad Hari Setiawwan', '2105103012', 'ahmadsetiawan3487@gmail.com', 'Teknik Industri', 'user', 'Ahmad Hari Setiawwan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1830, 'Triana Safitri', '2102101140', 'sftrtriana@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Triana Safitri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1831, 'FIRNANDA DWIKI HAYUNING PUTRI', '2102101160', 'dwikihayuningpfirnanda@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FIRNANDA DWIKI HAYUNING PUTRI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1832, 'Nining Rahmawati', '2103102153', 'rahmawatinining930@gmail.com', 'Manajemen', 'user', 'Nining Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1833, 'REZA DWIJAYANTO', '2102101149', 'rezadwi2319@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'REZA DWIJAYANTO123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1834, 'Levia Vega tri serinawati', '2102101234', 'levia_2102101234@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Levia Vega tri serinawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1835, 'Enggi Okta Setyomoko', '2102101235', 'enggiokta11@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Enggi Okta Setyomoko123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1836, 'INTAN NUR INDAH SARI', '2105101033', 'intannurindahsari169@gmail.com', 'Teknik Informatika', 'user', 'INTAN NUR INDAH SARI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1837, 'Riska Julia Safitri', '2102101048', 'rska.safitri30@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Riska Julia Safitri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1838, 'Riang Ganish Ayusopin', '2102108018', 'ayuganish@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Riang Ganish Ayusopin123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1839, 'Nawang Niptyaningsih', '2102101020', 'Ttiat50122@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nawang Niptyaningsih123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1840, 'Salsabila Wahyu Hamidah', '2102103020', 'salsabilawhy2002@gmail.com', 'Bimbingan Konseling', 'user', 'Salsabila Wahyu Hamidah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1841, 'DERANA ARISDA SAFIRA HAFIZ', '2102101082', 'arisdaderana@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'DERANA ARISDA SAFIRA HAFIZ123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1842, 'Binti Lailatul Mahfiroh', '2103101050', 'mahfiroh2828@gmail.com', 'Akuntansi', 'user', 'Binti Lailatul Mahfiroh123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1843, 'Bintang Wahyu Erliyanto', '2103101035', 'bintangwahyu144@gmail.com', 'Akuntansi', 'user', 'Bintang Wahyu Erliyanto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1844, 'Kariendra Wisnu Wardana', '2102101063', 'kariendra45@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Kariendra Wisnu Wardana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1845, 'Jesika Stevani', '2102106022', 'jesikasvan30@gmail.com', 'Pendidikan Akuntansi', 'user', 'Jesika Stevani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1846, 'aliffian kharisma nur rochmad', '2105101056', 'vianpeyok1716@gmail.com', 'Teknik Informatika', 'user', 'aliffian kharisma nur rochmad123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1847, 'Risky Alifian Nugroho', '2105103015', 'risky_2105103015@mhs.unipma.ac.id', 'Teknik Industri', 'user', 'Risky Alifian Nugroho123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1848, 'Hisyam Taufiqul Hakim', '2102101036', 'taufiqhasyim9@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Hisyam Taufiqul Hakim123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10');
INSERT INTO `users` (`id`, `username`, `nim`, `email`, `prodi`, `kategori`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1849, 'Heru Andi Pratama', '2105103014', 'hheru4458@gmail.com', 'Teknik Industri', 'user', 'Heru Andi Pratama123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1850, 'Arnike sulistya adiningtyas', '2102101123', 'arnikeike08@gmai.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Arnike sulistya adiningtyas123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1851, 'Amelia Putri Susanto', '2102101216', 'ameliaputrisusanto@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Amelia Putri Susanto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1852, 'putri febrina', '2102107008', 'febrinaputri789@gmail.com', 'Pendidikan Ekonomi', 'user', 'putri febrina123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1853, 'Arung Tirta Dwita Putri', '2102103011', 'arungtirta09@gmail.com', 'Bimbingan Konseling', 'user', 'Arung Tirta Dwita Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1854, 'Selvia Puput Anggraini', '2102106005', 'selviapuput52@gmail.com', 'Pendidikan Akuntansi', 'user', 'Selvia Puput Anggraini123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1855, 'Novita Anggraini', '2102103008', 'novitaanggraini1002@gmail.com', 'Bimbingan Konseling', 'user', 'Novita Anggraini123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1856, 'Ahwa Unthaqiya Ambiya', '2102101199', 'ahwangtimental@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ahwa Unthaqiya Ambiya123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1857, 'Tri Wahyu Pramidiyah', '2102101029', 'triwahyup263@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Tri Wahyu Pramidiyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1858, 'Risma Lova Febriyanti', '2103101031', 'lovafh341@gmail.com', 'Akuntansi', 'user', 'Risma Lova Febriyanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1859, 'FERDIN RIO DESTIANTO NUH FARISI', '2102101002', 'ferdinrio30@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FERDIN RIO DESTIANTO NUH FARISI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1860, 'Ira Andriani', '2102101177', 'iraandriani45@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ira Andriani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1861, 'WAHYU ROMDHONI', '2102101031', 'wahyu_2102101031@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'WAHYU ROMDHONI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1862, 'Berlian Ayuningtyas Novianty', '2102108007', 'berlianayuningtyas999@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Berlian Ayuningtyas Novianty123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1863, 'Dik Lucky To Puran', '2102101099', 'dikluckytopuran@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dik Lucky To Puran123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1864, 'Ernita Putri Rahmadhani', '2102101094', 'rahmadhaniernitaputri@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ernita Putri Rahmadhani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1865, 'FARHAN AHMAT FANANI', '2102108008', 'farhanahmadf076@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'FARHAN AHMAT FANANI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1866, 'Nurul Oktavia Rohmawati', '2102106027', 'nuruloktavia407@gmail.com', 'Pendidikan Akuntansi', 'user', 'Nurul Oktavia Rohmawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1867, 'Amalia Mayestika Putri', '2103102270', 'amaliamayestika@gmail.com', 'Manajemen', 'user', 'Amalia Mayestika Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1868, 'Destian Villania Putri', '2102106026', 'destianvillan@gmail.com', 'Pendidikan Akuntansi', 'user', 'Destian Villania Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1869, 'ALVIANSYAH AINUR ROCHMAN', '2105101055', 'id.yantud@gmail.com', 'Teknik Informatika', 'user', 'ALVIANSYAH AINUR ROCHMAN123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1870, 'Dimas Adi Saputra', '2105101036', 'dimas_2105101036@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Dimas Adi Saputra123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1871, 'ANGELLINA WIDYA KINARYOSIH', '2102101096', 'linaa1386@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ANGELLINA WIDYA KINARYOSIH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1872, 'Ultari Putri Indrasari', '2102109004', 'ultari_2102109004@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Ultari Putri Indrasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1873, 'ARDILA FITRIANA', '2102101090', 'ardilafitrianaa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ARDILA FITRIANA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1874, 'DHEA PUTRI KHOIRU NISA', '2102101084', 'dheaputrikhoirunisa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'DHEA PUTRI KHOIRU NISA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1875, 'EDELWEIS GLADIS HANDRIAVINOZITA', '2103102010', 'edelweisgladis16@gmail.com', 'Manajemen', 'user', 'EDELWEIS GLADIS HANDRIAVINOZITA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1876, 'Nova Windi Elasari', '2103102133', 'windielasari@gmail.com', 'Manajemen', 'user', 'Nova Windi Elasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1877, 'Galuh Puspitasari', '2102101034', 'galuh_2102101034@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Galuh Puspitasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1878, 'Nur aeni', '2102101023', 'nur_2102101023@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nur aeni123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1879, 'DEVITA ANDHIKA CAHYANI', '2102101006', 'devita_2102101006@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'DEVITA ANDHIKA CAHYANI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1880, 'Ahmad Kholid Hasan Tohir', '2102101200', 'kholid04062003@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ahmad Kholid Hasan Tohir123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1881, 'Salma Hanifah', '2102103009', 'hanifahsalma201@gmail.com', 'Bimbingan Konseling', 'user', 'Salma Hanifah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1882, 'Luthfi Ustadziyatul Ummah', '2102108024', 'luthfikomari@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Luthfi Ustadziyatul Ummah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1883, 'Luthfi Bambang Prio Atmojo', '2103102263', 'Luthfibambang3@gmail.com', 'Manajemen', 'user', 'Luthfi Bambang Prio Atmojo123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1884, 'Arsita Listya Rahmadini', '2102101153', 'arsitalistya04@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Arsita Listya Rahmadini123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1885, 'Dewinta Febrianti Zulaicha', '2102101139', 'dewintafebriantii97@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dewinta Febrianti Zulaicha123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1886, 'DONY KUSUMA WARDHANA', '2102101051', 'kusumadony748@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'DONY KUSUMA WARDHANA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1887, 'Dea Devila Ranila Tosa', '2102101011', 'dea9e.derato@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dea Devila Ranila Tosa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1888, 'Haifa Halimatus Saidah', '2102106018', 'haifahalimatussaidah1770@gmail.com', 'Pendidikan Akuntansi', 'user', 'Haifa Halimatus Saidah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1889, 'Aprilia Dwi Cahyanti', '2102101014', 'apriliacahyanti2@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Aprilia Dwi Cahyanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1890, 'Achmad Jauhar Nasakah', '2106101006', 'jauharasaka@gmail.com', 'Hukum', 'user', 'Achmad Jauhar Nasakah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1891, 'Ani Imelia Maulida', '2102106015', 'aniimeliaaa@gmail.com', 'Pendidikan Akuntansi', 'user', 'Ani Imelia Maulida123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1892, 'Amrina Qurotul Aina Nur Herzani', '2102110014', 'amrina_2102110014@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Amrina Qurotul Aina Nur Herzani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1893, 'ANUGERAH ADITYAWAN POERWIDYAKHARISMA CAHYANINGSURYA', '2102101211', 'aanadityaa7250@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ANUGERAH ADITYAWAN POERWIDYAKHARISMA CAHYANINGSURYA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1894, 'Putri Septiyani', '2102105004', 'septiyanip625@gmail.com', 'Pendidikan Sejarah', 'user', 'Putri Septiyani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1895, 'Rizkiana Putri Nur Yulianti', '2102109018', 'rizkianaputriny31@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Rizkiana Putri Nur Yulianti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1896, 'Anggrisa Eka Nur Trianuri', '2102103013', 'anggrisaekant9@gmail.com', 'Bimbingan Konseling', 'user', 'Anggrisa Eka Nur Trianuri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1897, 'Muhammad Damar Priyonggo', '2106101002', 'muhadamar1604@gmail.com', 'Hukum', 'user', 'Muhammad Damar Priyonggo123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1898, 'Luluk Hermansyah', '2102105001', 'lulukhermansyah93@gmail.com', 'Pendidikan Sejarah', 'user', 'Luluk Hermansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1899, 'RIA AYU MASFUFAH', '2102101060', 'riaayumf@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'RIA AYU MASFUFAH123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1900, 'Eni Milawati', '2102110012', 'eni_2102110012@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Eni Milawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1901, 'Andriana Purnama Sari', '2103102237', 'andrianasari169@gmail.com', 'Manajemen', 'user', 'Andriana Purnama Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1902, 'Ilham Ramadani', '2106101018', 'ilhamr2511@gmail.com', 'Hukum', 'user', 'Ilham Ramadani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1903, 'Listia Fitriana', '2102101162', 'listiaff23@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Listia Fitriana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1904, 'Shofia Shandra Wijana Putri', '2103102248', 'shofiasandra74@gmail.com', 'Pendidikan Ekonomi', 'user', 'Shofia Shandra Wijana Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1905, 'Maria Ayu Trivena', '2102106030', 'trivenamaria97@gmail.com', 'Pendidikan Akuntansi', 'user', 'Maria Ayu Trivena123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1906, 'Maulana Firmansyah', '2102104013', 'maulanafirmansyah820@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Maulana Firmansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1907, 'Kor Junika Fajar Ramadani', '2103102155', 'ramadanifajar150602@gmail.com', 'Manajemen', 'user', 'Kor Junika Fajar Ramadani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1908, 'Rara An’nisaa', '2106101013', 'raraannisaa27@gmail.com', 'Hukum', 'user', 'Rara An’nisaa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1909, 'Joni hendrawan', '2006101030', 'jonihendrawan621@gmail.com', 'Hukum', 'user', 'Joni hendrawan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1910, 'Yessa Iriansyah', '2102110015', 'yessa_2102110015@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Yessa Iriansyah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1911, 'Shinta Kusmardani Putri', '2102101126', 'shintakusmardani18@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Shinta Kusmardani Putri123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1912, 'DHEA FORTUNA WIYASA', '2103102024', 'dfwiyasa@gmail.com', 'Manajemen', 'user', 'DHEA FORTUNA WIYASA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1913, 'Prisilia Nanda Prastika', '2102101052', 'tikananda35@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Prisilia Nanda Prastika123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1914, 'Deni Gusmianto', '2102112008', 'denioke801@gmail.com', 'Pendidikan Fisika', 'user', 'Deni Gusmianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1915, 'Oktavian Bagas Batistuta', '2102101197', 'oktavianbagas676@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Oktavian Bagas Batistuta123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1916, 'Kharisma qoni’atus salma', '2102101172', 'kharismaqoniatusalma26@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Kharisma qoni’atus salma123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1917, 'Tri Anggis Hastari', '2106101003', 'anggisgunawan21@gmail.com', 'Hukum', 'user', 'Tri Anggis Hastari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1918, 'Elsa Alya Hafijah', '2103102009', 'alya.elsa03@gmail.com', 'Manajemen', 'user', 'Elsa Alya Hafijah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1919, 'KHARISMA SILVIANINGRUM', '2102101071', 'Kharismasilvia664@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'KHARISMA SILVIANINGRUM123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1920, 'Karin Ayunda Satiti', '2102101137', 'karinaynda@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Karin Ayunda Satiti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1921, 'Rafli Bagus Pradana', '2102101064', 'baronkowab@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Rafli Bagus Pradana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1922, 'Devi Agustina', '2102107015', 'deviiagstn@gmail.com', 'Pendidikan Ekonomi', 'user', 'Devi Agustina123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1923, 'Yanti Novitasari', '2102106001', 'yantinovita248@gmail.com', 'Pendidikan Akuntansi', 'user', 'Yanti Novitasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1924, 'Luppy Novitasari', '2103102122', 'luppynovitasari131@gmail.com', 'Manajemen', 'user', 'Luppy Novitasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1925, 'Dhita Nanda Adelia', '2103102134', 'dhitaadhelya17@gmail.com', 'Manajemen', 'user', 'Dhita Nanda Adelia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1926, 'Desafa Rahastrya Krismadi', '2002111010', 'desafarahastryakrismadi@gmail.com', 'Pendidikan Biologi', 'user', 'Desafa Rahastrya Krismadi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1927, 'Lita Oktaviani', '2102101161', 'litaoktaviani460@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Lita Oktaviani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1928, 'Tri Ananda Kusuma Wardana', '2102101179', 'trianandakusumawardana@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Tri Ananda Kusuma Wardana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1929, 'Ida Ayu Istiqomah', '2102101141', 'iayu28111@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ida Ayu Istiqomah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1930, 'Renita Dinda Ayupratiwi', '2102101180', 'rdinda909@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Renita Dinda Ayupratiwi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1931, 'Satria heryanto putra', '2102101142', 'satriahp19092002@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Satria heryanto putra123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1932, 'Nur Aziz Eka Syah Putra', '2105101072', 'azizekasp@gmail.com', 'Teknik Informatika', 'user', 'Nur Aziz Eka Syah Putra123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1933, 'M. RIFAL AJHI SYAHRANI PRATAMA', '2103102085', 'arifalpratama46@gmail.com', 'Manajemen', 'user', 'M. RIFAL AJHI SYAHRANI PRATAMA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1934, 'FITRI ADISTYA', '2102101089', 'fitriadistya27@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FITRI ADISTYA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1935, 'Silvia Marshanda Puspitasari', '2102103010', 'silviamarshanda401@gmail.com', 'Bimbingan Konseling', 'user', 'Silvia Marshanda Puspitasari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1936, 'Maharani Diah Vinka Vinanda', '2103102049', 'vinkavinanda15@gmail.com', 'Manajemen', 'user', 'Maharani Diah Vinka Vinanda123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1937, 'ardhiaka ramadheena sugianto', '2103102159', 'ardhiakarr@gmail.com', 'Manajemen', 'user', 'ardhiaka ramadheena sugianto123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1938, 'SHINTIA GALUH KURNIASARI', '2103102104', 'gkshintia@gmail.com', 'Manajemen', 'user', 'SHINTIA GALUH KURNIASARI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1939, 'DEVA INTAN MARGARINI', '2103102094', 'khalistadevaintan@gmail.com', 'Manajemen', 'user', 'DEVA INTAN MARGARINI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1940, 'Nanda Ayu Margono', '2102108022', 'nnandaayu.m@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Nanda Ayu Margono123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1941, 'Linda Majestia Christy', '2102111016', 'linda_2102111016@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Linda Majestia Christy123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1942, 'Meisya Ratna Wati', '2102111015', 'meisya_2102111015@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Meisya Ratna Wati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1943, 'Gilda Ratu Salsabila', '2102111014', 'gilda_2102111014@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Gilda Ratu Salsabila123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1944, 'Bella Tri Santi', '2102108026', 'bellatrisanti15@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Bella Tri Santi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1945, 'Rahma Siska Nanda Permata Sari', '2102108037', 'rahmasiskamagetan@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Rahma Siska Nanda Permata Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1946, 'Haikal Aziz Thory Wijaya', '2106101007', 'haikal_2106101007@mhs.unipma.ac.id', 'Hukum', 'user', 'Haikal Aziz Thory Wijaya123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1947, 'Anita Nur Rahmatika', '2102111013', 'anita_2102111013@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Anita Nur Rahmatika123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1948, 'NANDA SRI SUSANTI', '2105101005', 'nandasusanti23@gmail.com', 'Teknik Informatika', 'user', 'NANDA SRI SUSANTI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1949, 'Marshanda Nesa Trisanti', '2103101004', 'marshandanesa95@gmail.com', 'Akuntansi', 'user', 'Marshanda Nesa Trisanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1950, 'ELLA SEFTIANI', '2103101043', 'ella.seftiani07@gmail.com', 'Akuntansi', 'user', 'ELLA SEFTIANI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1951, 'Ridhwan Firdaus Nur Prasetia', '2105101003', 'ridhwanfnp@gmail.com', 'Teknik Informatika', 'user', 'Ridhwan Firdaus Nur Prasetia123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1952, 'Dimas Maharani Asmara Sukma', '2103101044', 'dimasmaharani1138@gmail.com', 'Akuntansi', 'user', 'Dimas Maharani Asmara Sukma123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1953, 'Rachma Dwiyanti', '2103101056', 'rachmadwiyanti2002@gmail.com', 'Akuntansi', 'user', 'Rachma Dwiyanti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1954, 'ANGGUN ERMAYANTI', '2102101214', 'anggun_2102101214@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'ANGGUN ERMAYANTI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1955, 'Putri Dwi Handayani', '2103101034', 'handayanip442@gmail.com', 'Akuntansi', 'user', 'Putri Dwi Handayani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1956, 'ANANDA MEGA PRASETIYA', '2103102016', 'nandamp348@gmail.com', 'Manajemen', 'user', 'ANANDA MEGA PRASETIYA123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1957, 'Riskha Amelya Putri Latifah', '2103102052', 'amelyariskha@gmail.com', 'Manajemen', 'user', 'Riskha Amelya Putri Latifah123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1958, 'Ayu Rahma Dita', '2102101007', 'ayu_2102101007@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ayu Rahma Dita123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1959, 'DEWI PUJAWATI SOEKARNO', '2103101013', 'dewi14.soekarno@gmail.com', 'Akuntansi', 'user', 'DEWI PUJAWATI SOEKARNO123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1960, 'MAWAR RAHMAWATI', '2102101043', 'mwrrahma@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'MAWAR RAHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1961, 'Serlie Kusumawati', '2105101021', 'serlie_2105101021@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Serlie Kusumawati123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1962, 'Narulita Ardiningtyas', '2102101076', 'narulitaardi@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Narulita Ardiningtyas123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1963, 'Selfa Dwi Santoso', '2103102150', 'selfa_2103102150@mhs.unipma.ac.id', 'Manajemen', 'user', 'Selfa Dwi Santoso123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1964, 'Andhika Putra Pradhana', '2105101049', 'putraandhika992@gmail.com', 'Teknik Informatika', 'user', 'Andhika Putra Pradhana123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1965, 'Bella Desfita Sari', '2103102014', 'belladesfita2512@gmail.cpm', 'Manajemen', 'user', 'Bella Desfita Sari123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1966, 'FAJARINA PERTIWI', '2103102275', 'pertiwifajarina05@gmail.com', 'Manajemen', 'user', 'FAJARINA PERTIWI123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1967, 'Muhamad Yoga Wahyu Laksono', '2102104009', 'yogalaksonwahyu106@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Muhamad Yoga Wahyu Laksono123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1968, 'Elang Pramudya Perkasa', '2103102136', 'elangpramudyap@gmail.com', 'Manajemen', 'user', 'Elang Pramudya Perkasa123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1969, 'MUHAMMAD HAMZAH TAQIYUDDIN A', '2105101057', 'hamzahcool08@gmail.com', 'Teknik Informatika', 'user', 'MUHAMMAD HAMZAH TAQIYUDDIN A123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1970, 'Tania Pramudita Rahmanisa Firdancahya', '2103102193', '130703tan@gmail.com', 'Manajemen', 'user', 'Tania Pramudita Rahmanisa Firdancahya123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1971, 'Regita Puja Pramesti', '2102101041', 'rpramesti20@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Regita Puja Pramesti123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1972, 'Trenady Dheo Saputra', '2102101055', 'dheosaputr118@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Trenady Dheo Saputra123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1973, 'Sinta Kusuma Dewi', '2102112012', 'kusumakusinta17@gmail.com', 'Pendidikan Fisika', 'user', 'Sinta Kusuma Dewi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1974, 'Lukesi', '2102112003', 'lukesi_2102112003@mhs.unipma.ac.id', 'Pendidikan Fisika', 'user', 'Lukesi123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1975, 'Mafthuh Kurnia Arfani', '2105101008', 'mafthuh_2105101008@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Mafthuh Kurnia Arfani123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1976, 'Dian Enjellyna Rahma Fanny', '2102101195', 'dianenjellynarahmafanny123@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dian Enjellyna Rahma Fanny123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1977, 'Yosia Nindi Kurniawan', '2102108004', 'yosianindi2161@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Yosia Nindi Kurniawan123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1978, 'Diny Aggita Hayuningtyas', '2103102232', 'aggitadiny@gmail.com', 'Manajemen', 'user', 'Diny Aggita Hayuningtyas123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1979, 'Rahayu Nur A\'ini', '2102106012', 'rahayunur574@gmail.com', 'Pendidikan Akuntansi', 'user', 'Rahayu Nur A\'ini123', 'aktif', NULL, '2024-10-22 04:50:10', '2024-10-22 04:50:10'),
(1980, 'Septiana Putri Susilowati', '2103102253', 'septianas851@gmail.com', 'Manajemen', 'user', 'Septiana Putri Susilowati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1981, 'Reza aldi prasetya', '2103102223', 'rezaaldi144@gmail.com', 'Manajemen', 'user', 'Reza aldi prasetya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1982, 'Fitri Astuti', '2105102002', 'pitriastuti111@gmail.com', 'Sistem Informasi', 'user', 'Fitri Astuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1983, 'Devina Setya Okta Wardani', '2103102236', 'devinasetya12@gmail.com', 'Manajemen', 'user', 'Devina Setya Okta Wardani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1984, 'Fran Siska Rahmadani', '2103101008', 'fransiskarahmadani15@gmail.con', 'Akuntansi', 'user', 'Fran Siska Rahmadani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1985, 'Falya Sabrina Alsys', '2103101063', 'sabrinafalya@gmail.com', 'Akuntansi', 'user', 'Falya Sabrina Alsys123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1986, 'IKBAR CAHYA BRILIANT', '2103102226', 'ikbarcahya23@gmail.com', 'Manajemen', 'user', 'IKBAR CAHYA BRILIANT123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1987, 'GALUH PRAYOGA FIGGO MANGGALA', '2105102016', 'prayogafiggo@gmail.com', 'Sistem Informasi', 'user', 'GALUH PRAYOGA FIGGO MANGGALA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1988, 'Lestari Kusmaningtyas Nur Aisyah', '2106101017', 'lestari_2106101017@mhs.unipma.ac.id', 'Hukum', 'user', 'Lestari Kusmaningtyas Nur Aisyah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1989, 'STYA WAHYU DWIMURNI', '2103102227', 'styawd21@gmail.com', 'Manajemen', 'user', 'STYA WAHYU DWIMURNI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1990, 'Indah Wahyu Ningtyas', '2103102254', 'indahningtyasss05@gmail.com', 'Manajemen', 'user', 'Indah Wahyu Ningtyas123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1991, 'Atika Damayanti', '2103102128', 'atikadamayanti483@gmail.com', 'Manajemen', 'user', 'Atika Damayanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1992, 'Dhea Puspita Cahyaningtyas', '2102110013', 'dhea_2102110013@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Dhea Puspita Cahyaningtyas123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1993, 'SONIA RESTIMARTHA', '2103101003', 'restimarthasonia1@gmail.com', 'Akuntansi', 'user', 'SONIA RESTIMARTHA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1994, 'Andita Feby Nurcahyanti', '2102101070', 'andhitafeby3@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Andita Feby Nurcahyanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1995, 'SINTIA SUCI WULANDARI', '2102101075', 'sintyasuci3@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'SINTIA SUCI WULANDARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1996, 'KHAMIMA NURIZZAH', '2103102048', 'khamima06@gmail.com', 'Manajemen', 'user', 'KHAMIMA NURIZZAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1997, 'Norma Anjar Ariani', '2102101223', 'anjarnurma9@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Norma Anjar Ariani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1998, 'GARNISA IMELDA', '2103102007', 'garnisaimelda11@gmail.com', 'Manajemen', 'user', 'GARNISA IMELDA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(1999, 'Muhammad Imanullah Zulkarnaen Endrayana', '2103102268', 'endrayanamuhammad@gmail.com', 'Manajemen', 'user', 'Muhammad Imanullah Zulkarnaen Endrayana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2000, 'Arista Eka Lestiana', '2103102207', 'aristaael09@gmail.con', 'Manajemen', 'user', 'Arista Eka Lestiana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2001, 'Bondan Nanda Ardiansah', '2103102273', 'bondannandaardiansah@gmail.com', 'Manajemen', 'user', 'Bondan Nanda Ardiansah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2002, 'Andrian Aji Pratama', '2102101098', 'andrianajipratama78@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Andrian Aji Pratama123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2003, 'Khulud Ridwaningrum', '2103102114', 'khulud.stan@gmail.com', 'Manajemen', 'user', 'Khulud Ridwaningrum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2004, 'Elsabela Yenita Putri', '2102101231', 'elsayenita@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Elsabela Yenita Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2005, 'DILLA AMELIA', '2102103002', 'dilla_2102103002@mhs.unipma.ac.id', 'Bimbingan Konseling', 'user', 'DILLA AMELIA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2006, 'DEVITA SUKMA AYU SAPUTRII', '2203104016', 'devita_2203103016@mhs.unipma.ac.id', 'D3 Manajemen Pajak', 'user', 'DEVITA SUKMA AYU SAPUTRII123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2007, 'RIZQI ADITA RIFA\'I', '2103102138', 'rzqadita22@gmail.com', 'Manajemen', 'user', 'RIZQI ADITA RIFA\'I123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2008, 'Saroh', '2103102091', 'sarohhh.ayohh.305@gamil.com', 'Manajemen', 'user', 'Saroh123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2009, 'Dhea Aliza Putri', '2103102062', 'pdhea69@gmail.com', 'Manajemen', 'user', 'Dhea Aliza Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2010, 'Heni Widiastuti', '2103102056', 'wwidiastuti492@gmail.com', 'Manajemen', 'user', 'Heni Widiastuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2011, 'ROSALLINDASEFHIA PRATAMA PUTRI', '2102101101', 'rosallindapratamaputri@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ROSALLINDASEFHIA PRATAMA PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2012, 'Seftia Dian Saputri', '2103102018', 'seftiaadian@gmail.con', 'Manajemen', 'user', 'Seftia Dian Saputri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2013, 'Sri Rahmawati', '2102110009', 'sri_21021100009@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Sri Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2014, 'Elin Rosela Wardani', '2102113008', 'elinroselawardani@gmail.com', 'Pendidikan Teknik Elektro', 'user', 'Elin Rosela Wardani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2015, 'Arfina Litafuljanah Sunarko', '2102110001', 'arfina_2102110001@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Arfina Litafuljanah Sunarko123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2016, 'Alifah Rahma Yunita', '2106101020', 'alifahrahmayunita06@gmail.com', 'Hukum', 'user', 'Alifah Rahma Yunita123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2017, 'Arnis Dewi Saputri', '2106101012', 'arnisdwsptr@gmail.com', 'Hukum', 'user', 'Arnis Dewi Saputri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2018, 'YUSRENDRA ILHAM RAMADHAN', '2103102148', 'yusrendrailham22nov2002@gmail.com', 'Manajemen', 'user', 'YUSRENDRA ILHAM RAMADHAN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2019, 'Lovita aprilia', '2106101004', 'lovitaaprilia4@gmail.com', 'Hukum', 'user', 'Lovita aprilia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2020, 'DWI MAR\'ATUS SAPUTRI', '2102101042', 'saputridwi2811@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'DWI MAR\'ATUS SAPUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2021, 'VINA YOELIA SANDY', '2104101006', 'vyoelia576@gmail.com', 'Farmasi', 'user', 'VINA YOELIA SANDY123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2022, 'DIANA ROSITA ABELLA', '2103102129', 'bellapelajarkotamadiun@gmail.com', 'Manajemen', 'user', 'DIANA ROSITA ABELLA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2023, 'WANDA NURMILASARI', '2103102089', 'wandanurmila67@gmail.com', 'Manajemen', 'user', 'WANDA NURMILASARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2024, 'zefanya papingkat', '2105101032', 'zefanya_2105101032@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'zefanya papingkat123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2025, 'ERIN VANJA ARMASTYAN', '2103102095', 'vanjaerin@gmail.com', 'Manajemen', 'user', 'ERIN VANJA ARMASTYAN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2026, 'Angga Asyhari Wardanu', '2102101074', 'anggaaudio610@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Angga Asyhari Wardanu123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2027, 'Nensi evita febrianti', '2102106016', 'nensievita07@gmail.com', 'Pendidikan Akuntansi', 'user', 'Nensi evita febrianti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2028, 'ANISA NUR AFIFAH', '2102101169', 'anisa_2102101169@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'ANISA NUR AFIFAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2029, 'LUDYA EVANKA DARMAYANTI', '2103101002', 'ludyaevanka22@gmail.com', 'Akuntansi', 'user', 'LUDYA EVANKA DARMAYANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2030, 'Natasya Eka Wulandari', '2103101025', 'candusenyumnya30@gmail.com', 'Akuntansi', 'user', 'Natasya Eka Wulandari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2031, 'Diska Arizal Nugroho', '2102103042', 'diska_2102103042@mhs.unipma.ac.id', 'Bimbingan Konseling', 'user', 'Diska Arizal Nugroho123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2032, 'ININ ANANTA', '2102101165', 'ininananta73@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ININ ANANTA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2033, 'DAFFA MAHENDRA', '2102112009', 'daffa_2102112009@mhs.unipma.ac.id', 'Pendidikan Fisika', 'user', 'DAFFA MAHENDRA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2034, 'Herlina Iriyanti', '2102111008', 'herlinairiyanti4@gmail.com', 'Pendidikan Biologi', 'user', 'Herlina Iriyanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2035, 'Nur Muhammad Zeyn Abdullah', '2102104007', 'abdullahzeyn635@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Nur Muhammad Zeyn Abdullah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2036, 'Affan Surya Wardana', '2105101030', 'affanqwe04@gmail.com', 'Teknik Informatika', 'user', 'Affan Surya Wardana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2037, 'ELYSA DWI PUJI ASTUTI', '2103101027', 'dwielsaaa@gmail.com', 'Akuntansi', 'user', 'ELYSA DWI PUJI ASTUTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2038, 'Asmarani Aristu', '2102101144', 'asmarani_2102101144@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Asmarani Aristu123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2039, 'Aulia Noor Lutfia Salsabila', '2102108039', 'aulianoor922@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Aulia Noor Lutfia Salsabila123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2040, 'Barra Ulfi Nazhifah', '2103102120', 'barraulfi271202@gmail.com', 'Manajemen', 'user', 'Barra Ulfi Nazhifah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2041, 'HILMAH NINDY PRIHAPSARI', '2103101029', 'nindyhilmah@gmail.com', 'Akuntansi', 'user', 'HILMAH NINDY PRIHAPSARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2042, 'REZA TRIYAN SANTI', '2103102123', 'Rrezatriyansanti071002@gmail.com', 'Manajemen', 'user', 'REZA TRIYAN SANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2043, 'TIARA NOVIYANTI', '2103101022', 'tiaranoviyanti078@gmail.com', 'Akuntansi', 'user', 'TIARA NOVIYANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2044, 'Ariyanti Widyastuti', '2102108021', 'ariyantiwidyastuti11@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Ariyanti Widyastuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2045, 'Novita Afryda Hastuti', '2103102019', 'novitaafryda@gmail.com', 'Manajemen', 'user', 'Novita Afryda Hastuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2046, 'Rika Triana', '2102106024', 'rika_2102106024@mhs.unipma.ac.id', 'Pendidikan Akuntansi', 'user', 'Rika Triana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2047, 'Pantriagung Mardya Kusuma', '2102101145', 'pantrikusuma@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Pantriagung Mardya Kusuma123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2048, 'Venesia Putri Oktavianingrum', '2106101001', 'venesia_2106101001@mhs.unipma.ac.id', 'Hukum', 'user', 'Venesia Putri Oktavianingrum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2049, 'Elza Syaharani Nurmajid', '2102110004', 'elzaamajid@gmail.com', 'Pendidikan Matematika', 'user', 'Elza Syaharani Nurmajid123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2050, 'Sendy Ayu Wijianingrum', '2103102116', 'sendy7698@gmail.com', 'Manajemen', 'user', 'Sendy Ayu Wijianingrum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2051, 'LUCKY DHERMAWAN', '2102101226', 'luckydhermawan779@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'LUCKY DHERMAWAN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2052, 'Fadlan Najhan Ikhwany', '2102101112', 'fadlannajhan01@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Fadlan Najhan Ikhwany123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2053, 'Ananda Rama Putra Basthara', '2102101202', 'anandarama2409@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Ananda Rama Putra Basthara123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2054, 'Titania Dwi Damayanti', '2102102001', 'titania_2102102001@mhs.unipma.ac.id', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Titania Dwi Damayanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2055, 'Elsha Shintawati', '2102105010', 'elshashintawati@gmail.com', 'Pendidikan Sejarah', 'user', 'Elsha Shintawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2056, 'Pramita Putri Agustina', '2102108032', 'pramitaputri1920@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Pramita Putri Agustina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2057, 'RICKY SULTHONY MUGHITS', '2102105012', 'rickysulthony@gmail.com', 'Pendidikan Sejarah', 'user', 'RICKY SULTHONY MUGHITS123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2058, 'Gania Septiana Wardoyo', '2102101118', 'ganiaseptianawardoyo@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Gania Septiana Wardoyo123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2059, 'Fenidika Amalia Ramadhani', '2102111020', 'fenidika_2102111020@mhs.unipma.ac.id', 'Pendidikan Biologi', 'user', 'Fenidika Amalia Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2060, 'Salfa Aulia Fitriyah', '2102101030', 'fitriyahsalfa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Salfa Aulia Fitriyah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2061, 'Nur Vita Sari Eka Ramadhani', '2102102005', 'nvrmdhn12sari@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Nur Vita Sari Eka Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2062, 'Shinta Devi Sukmawati', '2103102132', 'shinta.devis25@gmail.com', 'Manajemen', 'user', 'Shinta Devi Sukmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2063, 'Regina Floresita', '2103102241', 'reginafloresita00@gmail.com', 'Manajemen', 'user', 'Regina Floresita123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2064, 'Tiara Putri Maharani', '2102101124', 'tiaraputrimaharani386@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Tiara Putri Maharani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2065, 'Khamidatun Rochmah', '2103102142', 'kangmbahe@gmail.com', 'Manajemen', 'user', 'Khamidatun Rochmah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2066, 'SEKAR AYU RIZKA DEWINTA NAGARI', '2103102111', 'sekar.778ayu@gmail.com', 'Manajemen', 'user', 'SEKAR AYU RIZKA DEWINTA NAGARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2067, 'Ristiana Yulia Sari', '2103102036', 'ristianasari66@gmail.com', 'Manajemen', 'user', 'Ristiana Yulia Sari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2068, 'Zahra Nurrina', '2103102146', 'zahranurrina04@gmail.com', 'Manajemen', 'user', 'Zahra Nurrina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2069, 'Sita Susanti', '2103102021', 'sitasusanti98@gmail.com', 'Manajemen', 'user', 'Sita Susanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2070, 'MAHARANI DEWI KUSUMANINGRUM', '2103102131', 'maharanidewikusumaningrum@gmail.com', 'Manajemen', 'user', 'MAHARANI DEWI KUSUMANINGRUM123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2071, 'Yetti Fitriyana', '2102101083', 'yetifitriyana12@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Yetti Fitriyana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2072, 'Putri Rukmiatin Mukminin', '2103102141', 'putrirukmiatinm@gmail.com', 'Manajemen', 'user', 'Putri Rukmiatin Mukminin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2073, 'Anisyah Tri Wulandari', '2103102215', 'anisyahtw09@gmail.com', 'Manajemen', 'user', 'Anisyah Tri Wulandari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2074, 'Nindi Alifia Putri', '2103102140', 'nindialifia4@gmail.com', 'Manajemen', 'user', 'Nindi Alifia Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2075, 'INTAN FEBRIYANA', '2103102229', 'intanfebriyana88@gmail.com', 'Manajemen', 'user', 'INTAN FEBRIYANA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2076, 'DONNA KHAILILA', '2102108034', 'donnakhailila@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'DONNA KHAILILA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2077, 'EMMA WIDYAWATI', '2102102008', 'emmawidyawati2@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'EMMA WIDYAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2078, 'RENI NOVITA SARI', '2103102119', 'reninovita245@gmail.com', 'Manajemen', 'user', 'RENI NOVITA SARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2079, 'Dinni Wendari', '2102108033', 'diniwendari@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Dinni Wendari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2080, 'FREDYANSYAH ASTRIANTO', '2102101056', 'ansyahfredy561@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FREDYANSYAH ASTRIANTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2081, 'Devita Maharani', '2102101054', 'devitajkook05@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Devita Maharani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2082, 'Dova Arya Saputra', '2105101105', 'dovaarya2623@gamil.com', 'Teknik Informatika', 'user', 'Dova Arya Saputra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2083, 'Intan Febiola Kharisma Santi', '2102101068', 'intanfebiola07@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Intan Febiola Kharisma Santi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2084, 'Cindy Fatika Amelia', '2102101066', 'cindyfatika313@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Cindy Fatika Amelia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2085, 'Widya Ayu Puspitarini', '2102102011', 'ayupwidya4@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Widya Ayu Puspitarini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2086, 'ALDE FARIS PRAYOGO', '2103102239', 'aldefaris15@gmail.com', 'Manajemen', 'user', 'ALDE FARIS PRAYOGO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2087, 'Rindy Duwi Agustin', '2102101009', 'rindudare@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Rindy Duwi Agustin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2088, 'SHERINA LUTFI RAMADHANI', '2102106010', 'sherinalutfi@gmail.com', 'Pendidikan Akuntansi', 'user', 'SHERINA LUTFI RAMADHANI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2089, 'Ardhian Dwi Putra', '2102106009', 'ardhianputra60@gmail.com', 'Pendidikan Akuntansi', 'user', 'Ardhian Dwi Putra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2090, 'Adinda Maratusholikhah', '2103102163', 'adindams01@gmail.com', 'Manajemen', 'user', 'Adinda Maratusholikhah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2091, 'Tryas Candra Kurniawan', '2102109027', 'tryascandrakurniawan2002@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Tryas Candra Kurniawan123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2092, 'linda ayu ristianti', '2103102267', 'lindaayur78@gmail.com', 'Manajemen', 'user', 'linda ayu ristianti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2093, 'Deva Maulida hadi nugraha', '2102101196', 'evildepol@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Deva Maulida hadi nugraha123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2094, 'Hendito Kristian Yuda', '2105101092', 'henditokristian@gmail.com', 'Teknik Informatika', 'user', 'Hendito Kristian Yuda123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2095, 'Siska Serafina airulloh', '2103102030', 'Siskaserafina26@gmail.com', 'Manajemen', 'user', 'Siska Serafina airulloh123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2096, 'Dheo Okky Hevrikha Pratama', '2102101186', 'dheoprtama504@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dheo Okky Hevrikha Pratama123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2097, 'Binta permana', '2103102225', 'bintapermana307@gmail.com', 'Manajemen', 'user', 'Binta permana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2098, 'NOFA ANANDALUVITASARI', '2103102090', 'novananda3851@gmail.com', 'Manajemen', 'user', 'NOFA ANANDALUVITASARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2099, 'Muhammad ihksan ardiansah', '2103102137', 'Muhammadihksanardiansah924@gmail.com', 'Manajemen', 'user', 'Muhammad ihksan ardiansah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2100, 'Luthfiah Putri Ramadhani', '2102101116', 'luthfiah_2102101116@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Luthfiah Putri Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2101, 'Elsa Adinda Candra Dewi', '2103101067', 'elsaadewi2@gmail.com', 'Akuntansi', 'user', 'Elsa Adinda Candra Dewi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2102, 'Maelino Montella Afral Chanigia', '2104102016', 'montellachanigia@gmail.com', 'Ilmu Keolahragaan', 'user', 'Maelino Montella Afral Chanigia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2103, 'NURISA ANAS SYALUM', '2103102084', 'nurisaanas77@gmail.com', 'Manajemen', 'user', 'NURISA ANAS SYALUM123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2104, 'Prayoga Darma Wijaya', '2102101198', 'mdnyoga28@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Prayoga Darma Wijaya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2105, 'RIZQIANA FEBTALINDA', '2102110017', 'risqianafebtalinda@gmail.com', 'Pendidikan Matematika', 'user', 'RIZQIANA FEBTALINDA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11');
INSERT INTO `users` (`id`, `username`, `nim`, `email`, `prodi`, `kategori`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2106, 'RIDWAN NUR FAUZY', '2102101194', 'ridwanzy@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'RIDWAN NUR FAUZY123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2107, 'Maghfira Ratu Paramiswari', '2102103001', 'Fira78789@gmail.com', 'Bimbingan Konseling', 'user', 'Maghfira Ratu Paramiswari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2108, 'DEA NURFATH RAMADHANI', '2103102043', 'nurfathdear@gmail.com', 'Manajemen', 'user', 'DEA NURFATH RAMADHANI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2109, 'YOLA AINUN BACHTIASRI', '2102101038', 'yolabachtiiar710@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'YOLA AINUN BACHTIASRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2110, 'Darsih Novalia Putri', '2103102242', 'novaliaput131@gmail.com', 'Manajemen', 'user', 'Darsih Novalia Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2111, 'Sherly Febriatama Cahyani', '2103102224', 'sherlyfebriatama020@gmail.com', 'Manajemen', 'user', 'Sherly Febriatama Cahyani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2112, 'Tasya Agustin Safitri', '2103102233', 'tasyaagustinsafitri8@gmail.com', 'Manajemen', 'user', 'Tasya Agustin Safitri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2113, 'Fajrizka Dwi Mirzani', '2102110006', 'fajrizka_2102110006@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Fajrizka Dwi Mirzani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2114, 'Aulia Irfanni Salzabilla', '2106101010', 'auliairfanni.s@gmail.com', 'Hukum', 'user', 'Aulia Irfanni Salzabilla123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2115, 'Errina Dwi Nurraini', '2103102203', 'errinadwi45@gmail.com', 'Manajemen', 'user', 'Errina Dwi Nurraini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2116, 'Mochammad Regold Akbar', '2102109006', 'mochammad_2102109006@unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Mochammad Regold Akbar123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2117, 'Ravida Wedelia Ajeng Ceasary', '2104101003', 'ajengravida@gmail.com', 'Farmasi', 'user', 'Ravida Wedelia Ajeng Ceasary123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2118, 'Yeni Rahma Wati', '2103102167', 'yeni_2103102167mhs.unipma.ac.id', 'Manajemen', 'user', 'Yeni Rahma Wati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2119, 'RAHIIMA AMALINA', '2102103004', 'rahiimaamalina740@gmail.com', 'Bimbingan Konseling', 'user', 'RAHIIMA AMALINA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2120, 'DEWANDA EVELYN PRADITA', '2103102143', 'evelyndewanda@gmail.com', 'Manajemen', 'user', 'DEWANDA EVELYN PRADITA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2121, 'Salsabilla Kharisma Dewi', '2102109023', 'salsabilakd24@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Salsabilla Kharisma Dewi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2122, 'Eveline Dhea Purwanto Putri', '2105101010', 'eveline_2105101010@mhs.unipma.co.id', 'Teknik Informatika', 'user', 'Eveline Dhea Purwanto Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2123, 'Alvina Dwi Rahmawati', '2102108017', 'Alvinarahmawati3@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'Alvina Dwi Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2124, 'Arifati mungfarida', '2102101093', 'arifati_2102101093@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Arifati mungfarida123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2125, 'Siska Ayu Putri', '2102103048', 'siska_2102103048@mhs.unipma.ac.id', 'Bimbingan Konseling', 'user', 'Siska Ayu Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2126, 'Jingga Alfina Pradani', '2102103006', 'jinggaalfina03@gmail.com', 'Bimbingan Konseling', 'user', 'Jingga Alfina Pradani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2127, 'Shinta Budi Handayani', '2103102190', 'shintaaa181@gmail.com', 'Manajemen', 'user', 'Shinta Budi Handayani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2128, 'CINDY GITA APRILIA', '2103102158', 'cindygita980@gmail.com', 'Manajemen', 'user', 'CINDY GITA APRILIA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2129, 'Farras Mufadhdhal', '2103102186', 'farras119a@gmail.com', 'Manajemen', 'user', 'Farras Mufadhdhal123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2130, 'FINA FAJAR RANGGANI', '2103102181', 'finafajarranggani@gmail.com', 'Manajemen', 'user', 'FINA FAJAR RANGGANI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2131, 'U\'ut Dhelli Murti', '2102108028', 'uutdhellimurti@gmail.com', 'Pendidikan Bahasa dan Sastra Indonesia', 'user', 'U\'ut Dhelli Murti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2132, 'DESTI PUTRI SUJARWATU', '2103101054', 'destiiputrii123@gmail.com', 'Akuntansi', 'user', 'DESTI PUTRI SUJARWATU123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2133, 'RISKA PUTRI RAHMAWATI', '2103101041', 'ragmawatiriska285@gmail.com', 'Akuntansi', 'user', 'RISKA PUTRI RAHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2134, 'FEBRI DWI AGUSTIYANI', '2103101037', 'febriagustiyani@gmail.com', 'Akuntansi', 'user', 'FEBRI DWI AGUSTIYANI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2135, 'AZILLA SURYA RISKINA', '2103102059', 'azillasurya9999@gmail.com', 'Manajemen', 'user', 'AZILLA SURYA RISKINA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2136, 'Deny Aqbar', '2102101176', 'denyaqbar79@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Deny Aqbar123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2137, 'Galih agung yudo Prihantoro', '2102101079', 'galihagung467@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Galih agung yudo Prihantoro123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2138, 'SENDI SELVIA OKTAVIANA', '2103101047', 'sendioktaviana05@gmail.com', 'Akuntansi', 'user', 'SENDI SELVIA OKTAVIANA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2139, 'DYAH PUTRI NILAMSARI', '2102101100', 'ddyhputri89@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'DYAH PUTRI NILAMSARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2140, 'OSHA ADHA WAHYUDI', '2103102271', 'osha.adha@gmail.com', 'Manajemen', 'user', 'OSHA ADHA WAHYUDI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2141, 'Gayatri Dwi Astuti', '2102101077', 'gayatricepu2020@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Gayatri Dwi Astuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2142, 'Faisal aries nugroho', '2102113013', 'nugrohof016@gmail.com', 'Pendidikan Teknik Elektro', 'user', 'Faisal aries nugroho123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2143, 'Rahayu Nofitria', '2102113014', 'rahayu_2102113014@mhs.unipma.ac.id', 'Pendidikan Teknik Elektro', 'user', 'Rahayu Nofitria123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2144, 'Yinta Divaya Andina', '2103102218', 'yintadivayaandina123@gmail.com', 'Manajemen', 'user', 'Yinta Divaya Andina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2145, 'Nirma KusumaNingtyas', '2103101015', 'nirmakusuma1@gmail.com', 'Akuntansi', 'user', 'Nirma KusumaNingtyas123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2146, 'ANANG SUPRIANTO', '2102112010', 'anangsuprianto17@gmail.com', 'Pendidikan Fisika', 'user', 'ANANG SUPRIANTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2147, 'Alfiyatul Mukarromah', '2102101086', 'm.alfiyayaa@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Alfiyatul Mukarromah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2148, 'Feny Septiana Anggun Sari', '2103101087', 'fenyseptianaa@gmail.con', 'Akuntansi', 'user', 'Feny Septiana Anggun Sari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2149, 'Intan Larasati', '2102106019', 'intanlarasati733@gmail.com', 'Pendidikan Akuntansi', 'user', 'Intan Larasati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2150, 'Ratna Erlindayani', '2103101038', 'ratnaerlin02@gmail.com', 'Akuntansi', 'user', 'Ratna Erlindayani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2151, 'KRISNA ARDYAN KUSUMA WARDANA', '2102101164', 'krisnaardian60@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'KRISNA ARDYAN KUSUMA WARDANA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2152, 'DEVI SULISTIA NINGRUM', '2103102020', 'devisulistia004@gmail.com', 'Manajemen', 'user', 'DEVI SULISTIA NINGRUM123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2153, 'WAHYU DANANG YULIANTO', '2103102028', 'wahyudanang307@gmail.com', 'Manajemen', 'user', 'WAHYU DANANG YULIANTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2154, 'Delia Caesariana Putri', '2103101036', 'deliacaesarianaputri@gmail.com', 'Akuntansi', 'user', 'Delia Caesariana Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2155, 'Putri Arum Pusparani', '2103102166', 'putriarumpusparani@gmail.com', 'Manajemen', 'user', 'Putri Arum Pusparani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2156, 'Geni Dyon Agustin', '2103101046', 'genidyon9@gmail.com', 'Akuntansi', 'user', 'Geni Dyon Agustin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2157, 'Sri Hajriah', '2102101188', 'hajriahsri@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Sri Hajriah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2158, 'YASHINTA NUR AZIZAH', '2103102149', 'azizahyashinta@gmail.com', 'Manajemen', 'user', 'YASHINTA NUR AZIZAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2159, 'Nia Andina Noviana', '2102101078', 'niaandinaniviana@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Nia Andina Noviana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2160, 'ANDAN PRAMUDITA', '2103101014', 'andanpramuditacantik@gmail.com', 'Pendidikan Akuntansi', 'user', 'ANDAN PRAMUDITA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2161, 'Marshanda Yovianita Sukma Hernandi', '2103101042', 'hernandimarshanda@gmail.com', 'Akuntansi', 'user', 'Marshanda Yovianita Sukma Hernandi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2162, 'Alvika Erfianti', '2103102032', 'alvikaerfian@gmail.com', 'Manajemen', 'user', 'Alvika Erfianti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2163, 'Ertika nur laily', '2102102003', 'ertikanurlaily81@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Ertika nur laily123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2164, 'SITI MAISAROH', '2102101032', 'sitimaisarohcs58@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'SITI MAISAROH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2165, 'SINTIA RINDI ANTIKA', '2103101053', 'sintiarindi11@gmail.com', 'Akuntansi', 'user', 'SINTIA RINDI ANTIKA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2166, 'Maha Suryani Indriastuti', '2103102244', 'mahaindri74@gmail.com', 'Manajemen', 'user', 'Maha Suryani Indriastuti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2167, 'ZHALZA BELLA KARYANING PUTRI', '2102101033', 'zhalzabkputri@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ZHALZA BELLA KARYANING PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2168, 'wendy tri cakti ardianatara', '2103102261', 'caktiwendy@gmail.com', 'Manajemen', 'user', 'wendy tri cakti ardianatara123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2169, 'AMELIA PUTRI AFIANTI', '2103102230', '04ameliaputri@gmail.com', 'Manajemen', 'user', 'AMELIA PUTRI AFIANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2170, 'Meryz Prastya Putri Sutisna', '2103102075', 'meryzprastyaaa@gmail.com', 'Manajemen', 'user', 'Meryz Prastya Putri Sutisna123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2171, 'Kholifaturrizal Wisnu Murti', '2103102277', 'kholifaturrizal14@gmail.com', 'Manajemen', 'user', 'Kholifaturrizal Wisnu Murti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2172, 'Vera Dwi Agustin', '2103102005', 'veveradaagustin68@gmail.com', 'Manajemen', 'user', 'Vera Dwi Agustin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2173, 'Zidni Karimatan Nisa', '2102107032', 'zidnikarina@gmail.com', 'Pendidikan Ekonomi', 'user', 'Zidni Karimatan Nisa123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2174, 'SALSA CINTYA RAHMAWATI', '2103102100', 'salsacintya51@gmail.com', 'Manajemen', 'user', 'SALSA CINTYA RAHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2175, 'PRIASMITA PUTRI WARDANTI', '2103101009', 'Putrimitaa50@gmail.com', 'Akuntansi', 'user', 'PRIASMITA PUTRI WARDANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2176, 'Hamida Suciana', '2102101104', 'hamidahsuciana218@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Hamida Suciana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2177, 'Rini Antika', '2102106014', 'rini_2102106014@mhs.unipma.ac.id', 'Pendidikan Akuntansi', 'user', 'Rini Antika123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2178, 'Putri Nurjanah', '2103101010', 'putrinur447@gmail.com', 'Akuntansi', 'user', 'Putri Nurjanah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2179, 'MAYSAROTUL MARGIANTI', '2102102010', 'margiantimaysarotul@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'MAYSAROTUL MARGIANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2180, 'TRI WAHYUNI NURUL HAMIDAH', '2103101023', 'hamidahnurul331@gmail.com', 'Akuntansi', 'user', 'TRI WAHYUNI NURUL HAMIDAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2181, 'Dwi Novitasari', '2103102105', 'dwi426486@gmail.com', 'Manajemen', 'user', 'Dwi Novitasari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2182, 'Dwita Anggraini', '2102106003', 'dwitaanggraini23@gmail.com', 'Pendidikan Akuntansi', 'user', 'Dwita Anggraini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2183, 'Devi Fitrotul', '2106101025', 'devi_2106101025p@mhs.unipma.ac.id', 'Hukum', 'user', 'Devi Fitrotul123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2184, 'RIEKE FRICILIA RAMADHANI PITALOKA', '2102103038', 'riekefricilia@gmail.com', 'Bimbingan Konseling', 'user', 'RIEKE FRICILIA RAMADHANI PITALOKA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2185, 'Nisyadella Frysca Ramadhani', '2102107028', 'nisyadella.06@gmail.com', 'Pendidikan Ekonomi', 'user', 'Nisyadella Frysca Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2186, 'ALYA ADELLIANA', '2104102015', 'alyaadelliana@gmail.com', 'Ilmu Keolahragaan', 'user', 'ALYA ADELLIANA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2187, 'Haniah Adistya', '2103101079', 'haniahadisty@gmail.com', 'Akuntansi', 'user', 'Haniah Adistya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2188, 'HAFIDH NURSHALEH', '2105101060', 'hafidhnurshaleh@gmail.com', 'Teknik Informatika', 'user', 'HAFIDH NURSHALEH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2189, 'VICA FERNANDA PUTRI', '2103101081', 'vicafrnda311@gmail.com', 'Akuntansi', 'user', 'VICA FERNANDA PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2190, 'Evi Priyana', '2104101013', 'evi_2104101013@mhs.unipma.ac.id', 'Farmasi', 'user', 'Evi Priyana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2191, 'Dela Afitra Rahmawati', '2102101010', 'delaafitra0711@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dela Afitra Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2192, 'CHOIROTUN CHISAN', '2103102040', 'Chisanchoirotun04@gmail.com', 'Manajemen', 'user', 'CHOIROTUN CHISAN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2193, 'Razendra Intan Mahayoga', '2103102039', 'razendra_2103102039@mhs.unipma.ac.id', 'Manajemen', 'user', 'Razendra Intan Mahayoga123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2194, 'Alfi Nur Hani\'ah', '2102110018', 'alfihaniah6@gmail.com', 'Pendidikan Matematika', 'user', 'Alfi Nur Hani\'ah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2195, 'RISTANUR AGUSTIN', '2103102038', 'ristanur2872018@gmail.com', 'Manajemen', 'user', 'RISTANUR AGUSTIN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2196, 'Ratih Istik Septiani', '2102106033', 'ratihhseptiani@gmail.com', 'Pendidikan Akuntansi', 'user', 'Ratih Istik Septiani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2197, 'RATNA SRI UTAMI', '2103102109', 'ratnasriutami948@gmail.com', 'Manajemen', 'user', 'RATNA SRI UTAMI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2198, 'Ester dwi cahyani', '2104102011', 'estercahyani071@gmail.com', 'Ilmu Keolahragaan', 'user', 'Ester dwi cahyani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2199, 'Akbar Fernanda Putra Rifai', '2105102020', 'dayatmubarok93@gmail.com', 'Sistem Informasi', 'user', 'Akbar Fernanda Putra Rifai123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2200, 'CHINTHIA ALVANY WIDYANTO', '2103102012', 'chintya.alvany.23@gmail.com', 'Manajemen', 'user', 'CHINTHIA ALVANY WIDYANTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2201, 'Dimas Rizki Hadi Kusuma', '2102101240', 'dimas_2102101240@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dimas Rizki Hadi Kusuma123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2202, 'NIKEN RAHMAWATI', '2102101210', 'Niken Rahmawati', 'Pendidikan Guru Sekolah Dasar', 'user', 'NIKEN RAHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2203, 'Arsyil Sephia Hayati', '2102103022', 'arsyilsephiahayati@gmail.com', 'Bimbingan Konseling', 'user', 'Arsyil Sephia Hayati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2204, 'AUDREY REGINA PRATAMA PUTRI', '2102101092', 'reginaaudrey081@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'AUDREY REGINA PRATAMA PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2205, 'Wilda Agung Nugroho', '2102101044', 'wildaagung03@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Wilda Agung Nugroho123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2206, 'WAHID SYAIFUL ANWAR', '2104102013', 'syaifulanwar5679@gmail.com', 'Ilmu Keolahragaan', 'user', 'WAHID SYAIFUL ANWAR123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2207, 'Diandra Putri Nur\'aisyah', '2102102006', 'diandra_2102102006@mhs.unipma.ac.id', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Diandra Putri Nur\'aisyah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2208, 'Sintya Nur Hasanah', '2103101069', 'sintya_2103101069@mhs.unipma.ac.id', 'Akuntansi', 'user', 'Sintya Nur Hasanah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2209, 'MUHAMMAD NIDZOM TAMAMI', '2105101087', 'muhnidzomtamami@gmail.com', 'Teknik Informatika', 'user', 'MUHAMMAD NIDZOM TAMAMI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2210, 'Clareadi Kuncahyo Jati', '2102109011', 'clareadi_2102109011', 'Pendidikan Bahasa Inggris', 'user', 'Clareadi Kuncahyo Jati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2211, 'Abia Amillia Christina', '2102111009', 'abiaamillia@gmail.com', 'Pendidikan Biologi', 'user', 'Abia Amillia Christina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2212, 'Wisnu Galih Pambudi', '2103102157', 'Wisnugalig026@gmail.com', 'Pendidikan Ekonomi', 'user', 'Wisnu Galih Pambudi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2213, 'ANITA REOGINATA', '2102102002', 'anitareoginata20@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'ANITA REOGINATA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2214, 'Silvi Setyo Ningsih', '2102109031', 'silvisetyo02@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Silvi Setyo Ningsih123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2215, 'Yyunan Inan Octafi\'istoh', '2105102007', 'yyunan_2105102007@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Yyunan Inan Octafi\'istoh123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2216, 'Bayu Saputra', '2105102003', 'bayu_2105102003@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Bayu Saputra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2217, 'Hanif Rizki Ramadhani', '2102106006', 'hanif_2102106006@mhs.unipma.ac.id', 'Pendidikan Akuntansi', 'user', 'Hanif Rizki Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2218, 'Adi Saputro', '2102106008', 'Woodypacker858@gmail.com', 'Pendidikan Akuntansi', 'user', 'Adi Saputro123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2219, 'KATRIN SUGMA AGUSTIN', '2103102015', 'katrinsugma02@gmail.com', 'Manajemen', 'user', 'KATRIN SUGMA AGUSTIN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2220, 'Mustikasari', '2103101077', 'mustikasari_2103101077@mhs.unipma.ac.id', 'Akuntansi', 'user', 'Mustikasari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2221, 'Aldino Baradella Oca', '2102101217', 'aldino_2102101217@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Aldino Baradella Oca123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2222, 'ANANG ARIANTO', '2105101084', 'anang_2105101084@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'ANANG ARIANTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2223, 'Afrilia Margareta Puspitarini', '2103101068', 'afriliamp28@gmail.com', 'Akuntansi', 'user', 'Afrilia Margareta Puspitarini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2224, 'Roro Sunsun Andayani', '2103102102', 'rrrsun8@gmail.com', 'Manajemen', 'user', 'Roro Sunsun Andayani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2225, 'Bagas Aldiama', '2102113004', 'bagas_2102113004@mhs.unipma.ac.id', 'Pendidikan Teknik Elektro', 'user', 'Bagas Aldiama123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2226, 'MAYANG YEKTI UNTARI', '2103101075', 'nntariii@gmail.com', 'Akuntansi', 'user', 'MAYANG YEKTI UNTARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2227, 'Mias Adrianengrum', '2103102074', 'Miasadria@gmail.com', 'Manajemen', 'user', 'Mias Adrianengrum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2228, 'Icha Wine Fendya', '2103101076', 'icha_2103101076@mhs.unipma.ac.id', 'Akuntansi', 'user', 'Icha Wine Fendya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2229, 'Jauhar Alifa Kholidha', '2103102262', 'jauharalifa10@gmail.com', 'Manajemen', 'user', 'Jauhar Alifa Kholidha123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2230, 'Jini Ajeng Novitasari', '2105102009', 'jini_2105102009@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Jini Ajeng Novitasari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2231, 'Muhammad Saif Amarullah', '2105103004', 'muhammad_2105103004@mhs.unipma.ac.id', 'Teknik Industri', 'user', 'Muhammad Saif Amarullah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2232, 'Tegar Aji Pasha', '2102101232', 'tegar_2102101232@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Tegar Aji Pasha123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2233, 'Mohammad Angga Tri Pamanto', '2105101023', 'mohammadpamanto@gmail.com', 'Teknik Informatika', 'user', 'Mohammad Angga Tri Pamanto123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2234, 'RIFQI WAHYU ICHWANNUDIN', '2105103010', 'rifqiwahyu89@gmail.com', 'Teknik Industri', 'user', 'RIFQI WAHYU ICHWANNUDIN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2235, 'Iqssan Maulana', '2105101025', 'momonhadiroana@gmail.com', 'Teknik Informatika', 'user', 'Iqssan Maulana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2236, 'FARID BAHRUL MUSTOPA', '2104102006', 'faridbahrul99@gmail.com', 'Ilmu Keolahragaan', 'user', 'FARID BAHRUL MUSTOPA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2237, 'Ristanti Ayu Wulandari', '2105103020', 'Ristantiwulan@gmail.com', 'Teknik Industri', 'user', 'Ristanti Ayu Wulandari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2238, 'FARIS MAULANA ARAFLI', '2102101073', 'farismaulana7752@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'FARIS MAULANA ARAFLI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2239, 'ARIF EKO SAPUTRO', '2103102047', 'arifeko992018@gmail com', 'Manajemen', 'user', 'ARIF EKO SAPUTRO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2240, 'MAHARA RIZKI', '2102101239', 'mahararizki2112@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'MAHARA RIZKI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2241, 'Mochammad Alfian Setyono', '2102101222', 'alfonsosetyono@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Mochammad Alfian Setyono123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2242, 'Afilia Nur Rifandhani', '2102101224', 'nurafilia26@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Afilia Nur Rifandhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2243, 'Salsa Billa Fauzia', '2105103007', 'billafauzia7@gmail.com', 'Teknik Industri', 'user', 'Salsa Billa Fauzia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2244, 'RIKKY DWI SETIAWAN', '2105101085', 'rikky_2105101085@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'RIKKY DWI SETIAWAN123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2245, 'SYIFA DIDA BATISTA', '2105103023', 'didasyifa28@gmail.com', 'Teknik Industri', 'user', 'SYIFA DIDA BATISTA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2246, 'Diva Ega Pramasa Ristian', '2102109037', 'divaegapr@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Diva Ega Pramasa Ristian123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2247, 'Algam Lajunanansyah', '2105102001', 'algam_2105102001@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Algam Lajunanansyah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2248, 'Sylvira Ajeng Fajar Ayu Cahyani', '2102109017', 'sylvira_2102109017@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Sylvira Ajeng Fajar Ayu Cahyani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2249, 'Herlina Febriyanti', '2103101064', 'herlina_2103101064@mhs.unipma.ac.id', 'Akuntansi', 'user', 'Herlina Febriyanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2250, 'ROY KHANA NUR LAILY', '2103102194', 'roykhananurlaily@gmail.com', 'Manajemen', 'user', 'ROY KHANA NUR LAILY123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2251, 'ROMY VERNANDA PRAMADHANA', '2103102099', 'tommyoppo131@gmail.com', 'Manajemen', 'user', 'ROMY VERNANDA PRAMADHANA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2252, 'DIVA AUBERTA NARISWARI', '2102110002', 'diva_2102110002@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'DIVA AUBERTA NARISWARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2253, 'Meliani Devita Sari', '2102109028', 'meliani_2102109028@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Meliani Devita Sari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2254, 'Fahrezi Pranayuda', '2103101082', 'fahrezi_2103101082@mhs.unipma.ac.id', 'Akuntansi', 'user', 'Fahrezi Pranayuda123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2255, 'Amin Yazid Achmad', '2105103009', 'amin.yazid18@gmail.com', 'Teknik Industri', 'user', 'Amin Yazid Achmad123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2256, 'Wildhan Haidar Nusa', '2105101112', 'wildhan_2105101112@gmail.com', 'Teknik Informatika', 'user', 'Wildhan Haidar Nusa123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2257, 'ANDHIKA MUHAMMAD NUR', '2105101001', 'andhikanur3@gmail.com', 'Teknik Informatika', 'user', 'ANDHIKA MUHAMMAD NUR123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2258, 'Devia Rohmata Anggraini', '2102107033', 'deviaanggraini43@gmail.com', 'Pendidikan Ekonomi', 'user', 'Devia Rohmata Anggraini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2259, 'Johan Rizki Permana', '2104102002', 'johanrizkip1922@gmail.com', 'Ilmu Keolahragaan', 'user', 'Johan Rizki Permana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2260, 'DYAH NOVITA NINGRUM', '2103101007', 'dyahnovitaningrum29@gmail.com', 'Akuntansi', 'user', 'DYAH NOVITA NINGRUM123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2261, 'AULIANISA NUZULUL MUYASAROH', '2103101026', 'auliasaroh4@gmail.com', 'Akuntansi', 'user', 'AULIANISA NUZULUL MUYASAROH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2262, 'Aladdin Hidayatullah Jurjani', '2105103006', 'aladdin.jurjani@gmail.com', 'Teknik Industri', 'user', 'Aladdin Hidayatullah Jurjani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2263, 'Dita Meilia', '2102101193', 'dita_2102101193@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Dita Meilia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2264, 'NIKEN FITRIA RAHAYU', '2102101171', 'niken_2102101171@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'NIKEN FITRIA RAHAYU123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2265, 'DILLA ELKANA PUTRI', '2102110005', 'dilla_2102110005@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'DILLA ELKANA PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2266, 'Muhammad Rois Alma\'sum', '2103102080', 'roislalmuhammad@gmail.com', 'Manajemen', 'user', 'Muhammad Rois Alma\'sum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2267, 'BIMO SATRIO WICAKSONO', '2105101020', 'bimosatrio961@gmail.com', 'Teknik Informatika', 'user', 'BIMO SATRIO WICAKSONO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2268, 'Hemas Anfasa Setya Mustangin', '2103102174', 'hemasmustangin@gmail.com', 'Manajemen', 'user', 'Hemas Anfasa Setya Mustangin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2269, 'Nurmansa Willyam Pratama', '2103102042', 'nurmansawillyam@gmail.com', 'Manajemen', 'user', 'Nurmansa Willyam Pratama123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2270, 'Renaldi Surya Saputra', '2105101022', 'renaldi_2105101022@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Renaldi Surya Saputra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2271, 'BERLINA ZASKYA PUTRI', '2103101024', 'zaskyaputri2208@gmail.com', 'Akuntansi', 'user', 'BERLINA ZASKYA PUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2272, 'UMMI AFIFATUL ROHMAH', '2103102259', 'ummiafif24@gmail.com', 'Manajemen', 'user', 'UMMI AFIFATUL ROHMAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2273, 'Ibnu Adityasa', '2105101013', 'ibnu_2105101013@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Ibnu Adityasa123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2274, 'Rahma Arlia Putri', '2102109026', 'rahmaarliap13@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Rahma Arlia Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2275, 'Ghea Amalia Ramadhani', '2102109019', 'amaliarghea@gmail.com', 'Pendidikan Bahasa Inggris', 'user', 'Ghea Amalia Ramadhani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2276, 'Lailatul Khomsin Muyasyaroh', '2102101059', 'lailatulmusyawaroh216@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Lailatul Khomsin Muyasyaroh123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2277, 'Kevin Aldoni Hartono', '2102104001', 'Kevin.aldoni@gmail.com', 'Pendidikan Pancasila dan Kewarganegaraan', 'user', 'Kevin Aldoni Hartono123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2278, 'SATRIO EIRLAMBANG', '2103102147', 'Satrioeir@gmail.com', 'Manajemen', 'user', 'SATRIO EIRLAMBANG123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2279, 'Anandhita Putri Nur Rahmawatu', '2104101004', 'anandhita_2104101004@mhs.unipma.ac.id', 'Farmasi', 'user', 'Anandhita Putri Nur Rahmawatu123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2280, 'NALA ROHMATUL AZA', '2103102103', 'nalaazahraa7@gmail.com', 'Manajemen', 'user', 'NALA ROHMATUL AZA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2281, 'Mesya Melina Sari', '2102102018', 'mesyamelina13@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Mesya Melina Sari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2282, 'Wahidhatun Nur Azizah', '2102102013', 'Aziizanoer@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Wahidhatun Nur Azizah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2283, 'Faizana Putri Ardya', '2103102246', 'faizanaputri@gmail.com', 'Manajemen', 'user', 'Faizana Putri Ardya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2284, 'Alvi Divaul Janah', '2103102077', 'vaalvidi717@gmail.com', 'Manajemen', 'user', 'Alvi Divaul Janah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2285, 'Yenika bunga nurani', '2103101045', 'bungayenika676@gmail.com', 'Akuntansi', 'user', 'Yenika bunga nurani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2286, 'Apriliani Paminta Devi', '2102101024', 'apriliani_2102101024@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'Apriliani Paminta Devi123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2287, 'YULIA EVA LISTIANI', '2103101070', 'yulia_2103101070@mhs.unipma.ac.id', 'Akuntansi', 'user', 'YULIA EVA LISTIANI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2288, 'Fania nur amalina', '2102102009', 'amalinafania@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Fania nur amalina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2289, 'APRILIA YESINTA DEWI', '2103102160', 'apriliayesinta0@gmail.com', 'Manajemen', 'user', 'APRILIA YESINTA DEWI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2290, 'Mevi Rachelia', '2102105018', 'racheeliamevi2003@gmail.com', 'Pendidikan Sejarah', 'user', 'Mevi Rachelia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2291, 'Candra Icha Natasya', '2102105014', 'candra.icha124@gmail.com', 'Pendidikan Sejarah', 'user', 'Candra Icha Natasya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2292, 'Bryan Ricky Christoffel', '2105101012', 'bryan_2105101012@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Bryan Ricky Christoffel123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2293, 'Denys Surya Saputra', '2103102034', 'dennyssurya652@gmail.com', 'Manajemen', 'user', 'Denys Surya Saputra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2294, 'PURWO AJI SAPUTRO', '2103102003', 'Purwoaji457@gmail.com', 'Manajemen', 'user', 'PURWO AJI SAPUTRO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2295, 'Grecynta Putri Kurniawan', '2106101008', 'grecynta_2106101008@mhs.unipma.ac.id', 'Hukum', 'user', 'Grecynta Putri Kurniawan123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2296, 'ELVIVIANTI', '2102101088', 'elvivianti_2102101088@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'ELVIVIANTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2297, 'Sherly Widyana Putri', '2102103049', 'sherlywp948@gmail.com', 'Bimbingan Konseling', 'user', 'Sherly Widyana Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2298, 'Rizqi Styamulya Mawarni', '2102101138', 'rizqi_2102101138@mhs.unipma.ac.id', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Rizqi Styamulya Mawarni123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2299, 'Aldhi Defriyanto', '2105105013', 'aldhidefrianto88@gmail.com', 'Teknik Elektro', 'user', 'Aldhi Defriyanto123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2300, 'Cahyo Kuncoro Suni Pratomo', '2105105012', 'cahyokuncorosuni12@gmail.com', 'Teknik Elektro', 'user', 'Cahyo Kuncoro Suni Pratomo123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2301, 'Adi Janus Sasongko', '2105105008', 'janus4537@gmail.com', 'Teknik Elektro', 'user', 'Adi Janus Sasongko123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2302, 'Wahyu Devita Sari', '2103102196', 'wahyudevitaaa@gmail.com', 'Manajemen', 'user', 'Wahyu Devita Sari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2303, 'Oktaviana Nur Insan', '2102112005', 'oktaviana_2102112005@mhs.unipma.ac.id', 'Pendidikan Fisika', 'user', 'Oktaviana Nur Insan123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2304, 'Citra Maria Ekaningtyas Israel Putri', '2102112006', 'citra_2102112006@mhs.unipma.ac.id', 'Pendidikan Fisika', 'user', 'Citra Maria Ekaningtyas Israel Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2305, 'ANIS LATIFAH WIDIASTUTI', '2102101080', 'anislatifah410@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'ANIS LATIFAH WIDIASTUTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2306, 'Aruna Vicky Ivansyah', '2102113017', 'vickyivansyah22@gmail.com', 'Pendidikan Teknik Elektro', 'user', 'Aruna Vicky Ivansyah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2307, 'Tya Cici Nabila', '2103102067', 'tyacicinbl@gmail.com', 'Manajemen', 'user', 'Tya Cici Nabila123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2308, 'Keisha Amaya Ajeng Prameswari', '2103102070', 'keishaaap@gmail.com', 'Manajemen', 'user', 'Keisha Amaya Ajeng Prameswari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2309, 'Melani Puri Anggraeni', '2103102161', 'melanipuri2013@gmail.com', 'Manajemen', 'user', 'Melani Puri Anggraeni123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2310, 'Zahwa Nura Ailani', '2103102088', 'zahwaanura@gmail.com', 'Manajemen', 'user', 'Zahwa Nura Ailani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2311, 'rika ulvianita', '2102107030', 'rika_2102107030@mhs.unipma.ac.id', 'Pendidikan Ekonomi', 'user', 'rika ulvianita123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2312, 'Shinta Ayu Novitasari', '2103102096', 'sintongshinta@gmail.com', 'Manajemen', 'user', 'Shinta Ayu Novitasari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2313, 'MUHAMMAD ARROZAQ FRIYANDA SUGIARTO', '2105101035', 'friyandasugiarto@gmail.com', 'Teknik Informatika', 'user', 'MUHAMMAD ARROZAQ FRIYANDA SUGIARTO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2314, 'Afra Dias Afani', '2102101111', 'afraafani5@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Afra Dias Afani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2315, 'Firdayana Alya Hendra Permata', '2103101071', 'firdayanaalya@gmail.com', 'Akuntansi', 'user', 'Firdayana Alya Hendra Permata123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2316, 'Syahrul rozaq ar.rosid', '2102113009', 'Syahrulrozaq@gmail.com', 'Pendidikan Teknik Elektro', 'user', 'Syahrul rozaq ar.rosid123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2317, 'farhan dzaky maulana', '2105102005', 'allfarhandm@gmail.com', 'Sistem Informasi', 'user', 'farhan dzaky maulana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2318, 'Wenny Kharismawati', '2105102010', 'wennykharismawati@gmail.com', 'Sistem Informasi', 'user', 'Wenny Kharismawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2319, 'Nikmatul Maghfiroh', '2102111019', 'Virohnikma@gmail.com', 'Pendidikan Biologi', 'user', 'Nikmatul Maghfiroh123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2320, 'Syukri arizal', '2103101059', 'Syukriarizal@gmail.com', 'Akuntansi', 'user', 'Syukri arizal123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2321, 'RENDY RAGA WASKITA', '2103102135', 'waskitarendyraga@gmail.com', 'Manajemen', 'user', 'RENDY RAGA WASKITA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2322, 'Fitri Nur Sukmawati', '2106101011', 'fitri_2106101011@mhs.unipma.ac.id', 'Hukum', 'user', 'Fitri Nur Sukmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2323, 'EYGA CAHYO QOWIZUL ROEDYATULLOH', '2106101019', 'eyga_2106101019@mhs.unipma.ac.id', 'Hukum', 'user', 'EYGA CAHYO QOWIZUL ROEDYATULLOH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2324, 'Maulana Ruhaedi Putra', '2105101074', 'maulana_2105101074@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Maulana Ruhaedi Putra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2325, 'Muhammad Yusuf Fauzan', '2105101095', 'muhammad_2105101095@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Muhammad Yusuf Fauzan123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2326, 'Nelly Agustina Rahmawati', '2103102182', 'nellyagustina3108@gmail.com', 'Manajemen', 'user', 'Nelly Agustina Rahmawati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2327, 'Chintya nathasya permadani', '2102103050', 'chintya_2102103050@unipma.ac.id', 'Bimbingan Konseling', 'user', 'Chintya nathasya permadani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2328, 'Lilis Febrianti', '2103102208', 'lilis.febriyanti.09@gmail.com', 'Manajemen', 'user', 'Lilis Febrianti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2329, 'Dini Fitri Wulandari', '2105101099', 'dinifitriw022@gmail.com', 'Teknik Informatika', 'user', 'Dini Fitri Wulandari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2330, 'Hestia Nurliana Putri', '2105101080', 'hestianurlianaputri19@gmail.com', 'Teknik Informatika', 'user', 'Hestia Nurliana Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2331, 'Kahfi Amani Fatihah', '2105101079', 'kahfiamani@gmail.com', 'Teknik Informatika', 'user', 'Kahfi Amani Fatihah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2332, 'Ryan Setya Wardana', '2105101100', 'ryansetya40@gmail.com', 'Teknik Informatika', 'user', 'Ryan Setya Wardana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2333, 'Regita Icha Pramesti', '2102106013', 'ragitaicha@gmail.com', 'Pendidikan Akuntansi', 'user', 'Regita Icha Pramesti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2334, 'Merindha Inggit Windhi Kharisma Putri', '2102103015', 'merindhaputri@gmail.com', 'Bimbingan Konseling', 'user', 'Merindha Inggit Windhi Kharisma Putri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2335, 'Fatma Arista Puteri', '2102103014', 'aristafatma26@gmail.com', 'Bimbingan Konseling', 'user', 'Fatma Arista Puteri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2336, 'Dina Rita Kalimantini', '2103102152', 'Dinarita98@gmail.com', 'Manajemen', 'user', 'Dina Rita Kalimantini123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2337, 'Ferninda Dea A', '2104101010', 'fernindadeaa@gmail.com', 'Farmasi', 'user', 'Ferninda Dea A123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2338, 'Daffa Figo Alfariz', '2105102014', 'daffa_2105102014@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Daffa Figo Alfariz123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2339, 'Adinda Noviana', '2102105007', 'adindanoviana185@gmail.com', 'Pendidikan Sejarah', 'user', 'Adinda Noviana123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2340, 'ADMANEZHA PUTRI YUNITASARI', '2102105017', 'admanezhasari9@gmail.com', 'Pendidikan Sejarah', 'user', 'ADMANEZHA PUTRI YUNITASARI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2341, 'Malvin Malashandy', '2105102017', 'malvin_2105102017@mhs.unipma.ac.id', 'Sistem Informasi', 'user', 'Malvin Malashandy123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2342, 'Desiana Nurayu Syafitri', '2103102106', 'desyananurayu@gmail.com', 'Manajemen', 'user', 'Desiana Nurayu Syafitri123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2343, 'AGUNG NUGROHO', '2102110019', 'agung_2102110019@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'AGUNG NUGROHO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2344, 'Rara Risma Gressilya', '2102109035', 'rara_2102109035@mhs.unipma.ac.id', 'Pendidikan Bahasa Inggris', 'user', 'Rara Risma Gressilya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2345, 'Eka Yeni Yunila Puspitasari', '2102106032', 'yunilapuspitasari@gmail.com', 'Pendidikan Akuntansi', 'user', 'Eka Yeni Yunila Puspitasari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2346, 'ADIARI WAHYU AJI', '2105101061', 'adiaryw@gmail.com', 'Teknik Informatika', 'user', 'ADIARI WAHYU AJI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2347, 'Tiana military', '2105101034', 'tiana_2105101034@mhs.unipma.ac.id', 'Teknik Informatika', 'user', 'Tiana military123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2348, 'HESTI FIDIYAWATI', '2102106011', 'fidiyhahesti@gmail.com', 'Pendidikan Akuntansi', 'user', 'HESTI FIDIYAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2349, 'riska mifthakul khasanah', '2102113019', 'riskamifthakul172@gmail.com', 'Pendidikan Teknik Elektro', 'user', 'riska mifthakul khasanah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2350, 'Rinaldo Rama Andika Bimantara', '2105101067', 'rinaldobimantara@gmail.com', 'Teknik Informatika', 'user', 'Rinaldo Rama Andika Bimantara123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2351, 'Amal Danuarta Wijaya', '2102103041', 'amaldanuartawijaya@gmail.com', 'Bimbingan Konseling', 'user', 'Amal Danuarta Wijaya123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2352, 'DIMAS AWAL FANDULU', '2103102183', 'dimasfandulu99@gmail.com', 'Manajemen', 'user', 'DIMAS AWAL FANDULU123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2353, 'feby retno wulan agustina', '2103102240', 'febyretno1608@gmail.com', 'Manajemen', 'user', 'feby retno wulan agustina123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2354, 'sinatriya prawatya respati', '2103102177', 'sinatriyarespati@gmail.com', 'Manajemen', 'user', 'sinatriya prawatya respati123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2355, 'DYAH ANGGI IKA PRAMESTI', '2102101133', 'dyah_2102101133@mhs.unipma.ac.id', 'Pendidikan Guru Sekolah Dasar', 'user', 'DYAH ANGGI IKA PRAMESTI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2356, 'TIFANI DWI PRASTIKA', '2103102124', 'prastikatifani@gmail.com', 'Manajemen', 'user', 'TIFANI DWI PRASTIKA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2357, 'Nurul Fatimah', '2103102126', 'nf5076054@gmail.com', 'Manajemen', 'user', 'Nurul Fatimah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2358, 'MOCHAMMAD IMAM VERILLIAN JAYA', '2105101031', 'veril.jaya1933@gmail.com', 'Pendidikan Matematika', 'user', 'MOCHAMMAD IMAM VERILLIAN JAYA123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 23:33:02'),
(2359, 'ROHIBA UTOMO PUTRO', '2103102249', 'rohibautomo@icloud.com', 'Manajemen', 'user', 'ROHIBA UTOMO PUTRO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2360, 'Syifa’ul Maulidah', '2103102243', 'syifaulmaulidah@gmail.com', 'Manajemen', 'user', 'Syifa’ul Maulidah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2361, 'Renata Rosa Lelita', '2103102252', 'renatarosa810@gmail.com', 'Manajemen', 'user', 'Renata Rosa Lelita123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2362, 'Ali Muhajir Assalami', '2102110007', 'alimuhajirassalami8@gmail.com', 'Pendidikan Matematika', 'user', 'Ali Muhajir Assalami123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2363, 'Rifalen Arengga Reyno', '2102105006', 'rifalenarenggareyno32@gmail.com', 'Pendidikan Sejarah', 'user', 'Rifalen Arengga Reyno123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2364, 'fandi nurrokhim', '2105101040', 'fandinurrokhim109@gmail.com', 'Teknik Informatika', 'user', 'fandi nurrokhim123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2365, 'Dian Novia Ningtias', '2104101009', 'dian_2104101009@mhs.unipma.ac.id', 'Farmasi', 'user', 'Dian Novia Ningtias123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2366, 'Galih Kurnia Pratama', '2102101095', 'galihkurniap.com@gmail.com', 'Pendidikan Guru Pendidikan Anak Usia Dini', 'user', 'Galih Kurnia Pratama123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11');
INSERT INTO `users` (`id`, `username`, `nim`, `email`, `prodi`, `kategori`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(2367, 'Tia Putri Suryantiningsih', '2102110010', 'tiaputris9602@gmail.com', 'Pendidikan Matematika', 'user', 'Tia Putri Suryantiningsih123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2368, 'Shella Nahdhiyatul Hamidah', '2102110008', 'shella_2102110008@mhs.unipma.ac.id', 'Pendidikan Matematika', 'user', 'Shella Nahdhiyatul Hamidah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2369, 'Rizki Amalia', '2104101005', 'rizki_2104101005@mhs.unipma.ac.id', 'Farmasi', 'user', 'Rizki Amalia123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2370, 'Tantri Kusumaningrum', '2102101065', 'tantri3kusuma@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Tantri Kusumaningrum123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2371, 'MOH RIZAL BAGUS CAHYONO PUTRO', '2105101094', 'rizalbaguscp06@gmail.com', 'Teknik Informatika', 'user', 'MOH RIZAL BAGUS CAHYONO PUTRO123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2372, 'Husein Nur Fauzy', '2103102192', 'Huseinnurf5@gmail.com', 'Manajemen', 'user', 'Husein Nur Fauzy123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2373, 'RIDHA FATIKA SYAHRI', '2103102171', 'ridhafatikaa12@gmail.com', 'Manajemen', 'user', 'RIDHA FATIKA SYAHRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2374, 'WAHYUNING DIAH', '2203103007', 'wahyuning_2203103007@mhs.unipma.ac.id', 'D3 Manajemen Pajak', 'user', 'WAHYUNING DIAH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2375, 'KUNTHI AYU ASTUTIK', '2203103006', 'kunthiayu448@gmail.com', 'D3 Manajemen Pajak', 'user', 'KUNTHI AYU ASTUTIK123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2376, 'Fadhila Widya Wardani', '2203103013', 'fadhilawidyawardani@gmail.com', 'D3 Manajemen Pajak', 'user', 'Fadhila Widya Wardani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2377, 'Vikha Hersa Agustin', '2203103002', 'Vikhersaa08@gmail.com', 'D3 Manajemen Pajak', 'user', 'Vikha Hersa Agustin123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2378, 'Sherly Agustina Wulandari', '2203103009', 'sherlywulandari363@gmail.com', 'D3 Manajemen Pajak', 'user', 'Sherly Agustina Wulandari123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2379, 'Annisa Dwi Oktaviani', '2203103001', 'annisadwioktaviani1234@gmail.com', 'D3 Manajemen Pajak', 'user', 'Annisa Dwi Oktaviani123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2380, 'Sonya Widya Kusuma', '2203103010', 'sonyawidya2017@gmail.com', 'D3 Manajemen Pajak', 'user', 'Sonya Widya Kusuma123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2381, 'Kalvin Febrinio Putra', '2203103005', 'kalvinputra7@gmail.com', 'D3 Manajemen Pajak', 'user', 'Kalvin Febrinio Putra123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2382, 'Indar Ayum Ayunda Atmojo', '2203103015', 'indar_2203103015@mhs.unipma.ac.id', 'D3 Manajemen Pajak', 'user', 'Indar Ayum Ayunda Atmojo123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2383, 'Lutfi Alimatul Qiftiah', '2203103008', 'lutfialimatulqiftiah10@gmail.com', 'D3 Manajemen Pajak', 'user', 'Lutfi Alimatul Qiftiah123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2384, 'NOVI NUROHMAWATI', '2203103012', 'novimalopo24@gmail.com', 'D3 Manajemen Pajak', 'user', 'NOVI NUROHMAWATI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2385, 'Putri Sonya Dwi Wahyu Sasmita', '2203103018', 'putri_220303018@mhs.unipma.ac.id', 'D3 Manajemen Pajak', 'user', 'Putri Sonya Dwi Wahyu Sasmita123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2386, 'Indah Nur Malinda', '2203103019', 'indahalinda22@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'Indah Nur Malinda123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 23:33:13'),
(2387, 'arthur kinanti', '2203103022', 'arthur_2203203022@mhs.unipma.ac.id', 'D3 Manajemen Pajak', 'user', 'arthur kinanti123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2388, 'Jodi Dwi Budi Santoso', '2203103020', 'jodisantoso04@gmail.com', 'D-III Manajemen Pajak', 'user', 'Jodi Dwi Budi Santoso123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 23:32:45'),
(2389, 'DEVITA SUKMA AYU SAPUTRI', '2203103016', 'devitasukma31@gmail.com', 'D3 Manajemen Pajak', 'user', 'DEVITA SUKMA AYU SAPUTRI123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2390, 'FATIQAH RATMA PUTRI NINGSIH', '2203103003', 'fatiqahratma@gmail.com', 'D3 Manajemen Pajak', 'user', 'FATIQAH RATMA PUTRI NINGSIH123', 'aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 04:50:11'),
(2391, 'UZROUL MARKHAMAH', '2203103017', 'uzroulm@gmail.com', 'Pendidikan Guru Sekolah Dasar', 'user', 'UZROUL MARKHAMAH123', 'non aktif', NULL, '2024-10-22 04:50:11', '2024-10-22 07:15:56'),
(2393, 'sono', '1234556677', 'sono@gmail.com', NULL, 'admin', 'sono', 'aktif', NULL, NULL, NULL),
(2397, '', 'Program Studi', 'Nama', NULL, 'user', '123', 'aktif', NULL, '2024-10-23 21:09:06', '2024-10-23 21:09:06'),
(2398, '4 november 2024', 'Manajemen', 'ade ilham', 'Sesi 1 (09.00 - 10.30)', 'user', '4 november 2024123', 'aktif', NULL, '2024-10-23 21:09:06', '2024-10-23 21:09:06');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `backup-peserta`
--
ALTER TABLE `backup-peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `backup_peserta_nim_unique` (`nim`);

--
-- Indeks untuk tabel `daftar-lab`
--
ALTER TABLE `daftar-lab`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data-peserta`
--
ALTER TABLE `data-peserta`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_peserta_nim_unique` (`nim`),
  ADD UNIQUE KEY `data_peserta_email_unique` (`email`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `lab-aka1`
--
ALTER TABLE `lab-aka1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_aka1_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-aka4`
--
ALTER TABLE `lab-aka4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_aka4_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-feb3`
--
ALTER TABLE `lab-feb3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_feb3_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-industri4`
--
ALTER TABLE `lab-industri4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_industri4_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-informatika3`
--
ALTER TABLE `lab-informatika3`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_informatika3_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-komp1`
--
ALTER TABLE `lab-komp1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_komp1_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-komp2`
--
ALTER TABLE `lab-komp2`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_komp2_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-mate1`
--
ALTER TABLE `lab-mate1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_mate1_nim_unique` (`nim`);

--
-- Indeks untuk tabel `lab-si4`
--
ALTER TABLE `lab-si4`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `lab_si4_nim_unique` (`nim`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `nim_terdaftar`
--
ALTER TABLE `nim_terdaftar`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `peserta_ukks`
--
ALTER TABLE `peserta_ukks`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sesi`
--
ALTER TABLE `sesi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `slot_kursi`
--
ALTER TABLE `slot_kursi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_nim_unique` (`nim`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `backup-peserta`
--
ALTER TABLE `backup-peserta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `daftar-lab`
--
ALTER TABLE `daftar-lab`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `data-peserta`
--
ALTER TABLE `data-peserta`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `kegiatan`
--
ALTER TABLE `kegiatan`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `lab-aka1`
--
ALTER TABLE `lab-aka1`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT untuk tabel `lab-aka4`
--
ALTER TABLE `lab-aka4`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `lab-feb3`
--
ALTER TABLE `lab-feb3`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `lab-industri4`
--
ALTER TABLE `lab-industri4`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `lab-informatika3`
--
ALTER TABLE `lab-informatika3`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `lab-komp1`
--
ALTER TABLE `lab-komp1`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `lab-komp2`
--
ALTER TABLE `lab-komp2`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `lab-mate1`
--
ALTER TABLE `lab-mate1`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `lab-si4`
--
ALTER TABLE `lab-si4`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `nim_terdaftar`
--
ALTER TABLE `nim_terdaftar`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `peserta_ukks`
--
ALTER TABLE `peserta_ukks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `sesi`
--
ALTER TABLE `sesi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `slot_kursi`
--
ALTER TABLE `slot_kursi`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2402;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
