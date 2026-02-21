-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Feb 2026 pada 12.08
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pemesanan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `api_keys`
--

CREATE TABLE `api_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `api_key` varchar(64) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `api_keys`
--

INSERT INTO `api_keys` (`id`, `user_id`, `api_key`, `created_at`) VALUES
(1, 3, '758cd408191f6660da3b0d4c6350a1e5185b55f8270c7f5d4cdf3f5917bbf3d0', '2026-02-21 17:57:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `urutan` int(11) DEFAULT 0,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id`, `nama`, `urutan`, `created_at`) VALUES
(1, 'Semua', 0, '2026-02-20 22:33:05'),
(2, 'Minuman', 1, '2026-02-20 22:33:05'),
(3, 'Mie', 2, '2026-02-20 22:33:05'),
(4, 'Pizza', 3, '2026-02-20 22:33:05'),
(5, 'Snack', 4, '2026-02-20 22:33:05'),
(6, 'Nasi', 5, '2026-02-20 22:33:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `kategori_id` int(11) DEFAULT NULL,
  `nama` varchar(150) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `harga` int(11) NOT NULL DEFAULT 0,
  `stok` int(11) DEFAULT 100,
  `gambar` varchar(255) DEFAULT NULL,
  `tersedia` tinyint(1) DEFAULT 1,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `menu`
--

INSERT INTO `menu` (`id`, `kategori_id`, `nama`, `deskripsi`, `harga`, `stok`, `gambar`, `tersedia`, `created_at`, `updated_at`) VALUES
(1, 2, 'Americano', NULL, 18000, 49, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(2, 2, 'Butterscotch Coffee', NULL, 25000, 45, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(3, 2, 'Caffe Latte', NULL, 22000, 40, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(4, 2, 'Ice Tea', NULL, 8000, 35, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(5, 2, 'Chocolate Latte', NULL, 23000, 42, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(6, 2, 'Matcha Latte', NULL, 24000, 48, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(7, 2, 'Healthy Breakfast', NULL, 25000, 14, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(8, 3, 'Fried Kwetiau', NULL, 28000, 40, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(9, 3, 'Indomie Goreng', NULL, 12000, 100, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(10, 3, 'Indomie Kuah', NULL, 12000, 100, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(11, 4, 'Cheese Pizza', NULL, 42000, 21, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(12, 4, 'Meat Lover Pizza', NULL, 52000, 15, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(13, 5, 'Chicken Nugget', NULL, 20000, 32, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(14, 5, 'Chicken Smackdown', NULL, 32000, 48, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(15, 5, 'Potato Chips', NULL, 12000, 45, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(16, 5, 'Potato Wedges', NULL, 18000, 37, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(17, 5, 'Tahu Sumedang', NULL, 15000, 34, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(18, 6, 'Ramen', NULL, 30000, 27, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08'),
(19, 6, 'Signature Ramen', NULL, 35000, 24, NULL, 1, '2026-02-20 22:33:08', '2026-02-20 22:33:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `promo`
--

CREATE TABLE `promo` (
  `id` int(11) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tipe` enum('persen','nominal') DEFAULT 'persen',
  `nilai` int(11) NOT NULL DEFAULT 0,
  `min_transaksi` int(11) DEFAULT 0,
  `aktif` tinyint(1) DEFAULT 1,
  `expired_at` date DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `promo`
--

INSERT INTO `promo` (`id`, `kode`, `nama`, `tipe`, `nilai`, `min_transaksi`, `aktif`, `expired_at`, `created_at`) VALUES
(1, 'MANTAP05', 'Diskon 5%', 'persen', 5, 50000, 1, NULL, '2026-02-20 22:33:08'),
(2, 'HEMAT10K', 'Hemat 10 Ribu', 'nominal', 10000, 100000, 1, NULL, '2026-02-20 22:33:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `no_invoice` varchar(50) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tipe_order` enum('dine_in','takeaway','delivery') DEFAULT 'dine_in',
  `nama_pelanggan` varchar(100) DEFAULT 'Umum',
  `no_meja` varchar(20) DEFAULT NULL,
  `metode_bayar` enum('tunai','qris','transfer') DEFAULT 'tunai',
  `subtotal` int(11) DEFAULT 0,
  `diskon` int(11) DEFAULT 0,
  `total` int(11) DEFAULT 0,
  `bayar` int(11) DEFAULT 0,
  `kembalian` int(11) DEFAULT 0,
  `promo_code` varchar(50) DEFAULT NULL,
  `status` enum('pending','lunas','batal') DEFAULT 'pending',
  `catatan` text DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `no_invoice`, `user_id`, `tipe_order`, `nama_pelanggan`, `no_meja`, `metode_bayar`, `subtotal`, `diskon`, `total`, `bayar`, `kembalian`, `promo_code`, `status`, `catatan`, `created_at`) VALUES
(1, 'INV-20260221-0001', 3, 'takeaway', 'Umum', NULL, 'tunai', 92000, 0, 92000, 100000, 8000, NULL, 'lunas', '', '2026-02-21 00:57:41'),
(2, 'INV-20260221-0002', 3, 'delivery', 'Umum', NULL, 'transfer', 74000, 0, 74000, 74000, 0, NULL, 'lunas', '', '2026-02-21 01:03:20'),
(3, 'INV-20260221-0003', 3, 'dine_in', 'Umum', NULL, 'tunai', 111000, 10000, 101000, 150000, 49000, 'HEMAT10K', 'lunas', '', '2026-02-21 01:04:43'),
(4, 'INV-20260221-0004', 3, 'dine_in', 'Umum', NULL, 'tunai', 78000, 0, 78000, 100000, 22000, NULL, 'lunas', '', '2026-02-21 15:54:40');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_detail`
--

CREATE TABLE `transaksi_detail` (
  `id` int(11) NOT NULL,
  `transaksi_id` int(11) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `nama_menu` varchar(150) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 1,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `transaksi_detail`
--

INSERT INTO `transaksi_detail` (`id`, `transaksi_id`, `menu_id`, `nama_menu`, `harga`, `qty`, `subtotal`) VALUES
(1, 1, 2, 'Butterscotch Coffee', 25000, 1, 25000),
(2, 1, 3, 'Caffe Latte', 22000, 1, 22000),
(3, 1, 15, 'Potato Chips', 12000, 1, 12000),
(4, 1, 16, 'Potato Wedges', 18000, 1, 18000),
(5, 1, 17, 'Tahu Sumedang', 15000, 1, 15000),
(6, 2, 2, 'Butterscotch Coffee', 25000, 1, 25000),
(7, 2, 7, 'Healthy Breakfast', 25000, 1, 25000),
(8, 2, 9, 'Indomie Goreng', 12000, 1, 12000),
(9, 2, 10, 'Indomie Kuah', 12000, 1, 12000),
(10, 3, 5, 'Chocolate Latte', 23000, 1, 23000),
(11, 3, 8, 'Fried Kwetiau', 28000, 1, 28000),
(12, 3, 11, 'Cheese Pizza', 42000, 1, 42000),
(13, 3, 16, 'Potato Wedges', 18000, 1, 18000),
(14, 4, 5, 'Chocolate Latte', 23000, 1, 23000),
(15, 4, 7, 'Healthy Breakfast', 25000, 1, 25000),
(16, 4, 15, 'Potato Chips', 12000, 1, 12000),
(17, 4, 16, 'Potato Wedges', 18000, 1, 18000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','kasir') DEFAULT 'kasir',
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `username`, `password`, `role`, `created_at`) VALUES
(1, 'Administrator', 'admin', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uRpwQxEK', 'admin', '2026-02-20 22:33:08'),
(2, 'Kasir 1', 'kasir', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uRpwQxEK', 'kasir', '2026-02-20 22:33:08'),
(3, 'Putra', 'putra', '$2y$10$ax1/zU2cy9rKIuWa/j1WQeOXtdhYPih5FoayrVoYqSNvZ241GyjIW', 'admin', '2026-02-21 00:27:16');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `api_keys`
--
ALTER TABLE `api_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `api_key` (`api_key`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indeks untuk tabel `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode` (`kode`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `no_invoice` (`no_invoice`),
  ADD KEY `user_id` (`user_id`);

--
-- Indeks untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaksi_id` (`transaksi_id`),
  ADD KEY `menu_id` (`menu_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `api_keys`
--
ALTER TABLE `api_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `promo`
--
ALTER TABLE `promo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `api_keys`
--
ALTER TABLE `api_keys`
  ADD CONSTRAINT `api_keys_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Ketidakleluasaan untuk tabel `transaksi_detail`
--
ALTER TABLE `transaksi_detail`
  ADD CONSTRAINT `transaksi_detail_ibfk_1` FOREIGN KEY (`transaksi_id`) REFERENCES `transaksi` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaksi_detail_ibfk_2` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
