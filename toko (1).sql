-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Des 2022 pada 13.04
-- Versi server: 10.4.20-MariaDB
-- Versi PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail_transaksi` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail_transaksi`, `id_transaksi`, `id_produk`, `qty`, `total`, `subtotal`) VALUES
(16, 28, 1, 1, 185000, 185000),
(17, 28, 2, 2, 80000, 160000),
(18, 28, 3, 2, 110000, 220000),
(19, 29, 1, 1, 185000, 185000),
(20, 30, 4, 2, 120000, 240000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `telp`, `username`, `password`) VALUES
(1, 'Ucup', 'Sentani', '0982084723', 'Ucup', 'd41d8cd98f00b204e9800998ecf8427e'),
(2, 'Ucup', 'fenufuehfu', '2938392648281', 'Markucup', 'd41d8cd98f00b204e9800998ecf8427e'),
(3, 'Ucup', 'jduuduhde8h', '839275362', 'Ucup', 'd41d8cd98f00b204e9800998ecf8427e'),
(4, 'Ocoep', 'Sentani', '098765432', 'Ocoep', 'd41d8cd98f00b204e9800998ecf8427e'),
(5, 'Ocoep', 'Sentani', '098765432', 'Ocoep', 'd41d8cd98f00b204e9800998ecf8427e'),
(6, 'Chichi Sandra Susanti', 'Perumahan Kebonagung Residence blok G28', '081249687312', 'chichi', 'd41d8cd98f00b204e9800998ecf8427e');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_admin` int(11) NOT NULL,
  `nama_admin` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_admin`, `nama_admin`, `username`, `password`, `level`) VALUES
(0, 'Riovaldi', 'Rvnzx', 'd41d8cd98f00b204e9800998ecf8427e', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `deskripsi`, `harga`, `foto`) VALUES
(1, 'OYISAM! Tas ', 'OYISAM! Bagpack\r\nKODE PESANAN \"BAG BLUEGREY”\r\nIDR 185K\r\nUNISEX\r\nSerius Order & Cara Pesan\r\n👨 Nama:\r\n🌍 Alamat Lengkap:\r\n📱 No. Hp:\r\n👕 Kode Pesanan, jumlah, dan ukuran:\r\n\r\n__\r\n#localbrand\r\n#madeinmalang\r\n#oyisambag\r\n#oyisam\r\n#oyisamclothing\r\n#exploremalang\r\n#yoikimalang', 185000, '4398242986989_913376779277548_8579138041016931239_n(1).jpg'),
(2, 'OYISAM! Sendal ', 'OYISAM! Sendal\r\nKODE PESANAN \"SENDAL THOR”\r\nIDR 80\r\nUNISEX\r\nSerius Order & Cara Pesan\r\n👨 Nama:\r\n🌍 Alamat Lengkap:\r\n📱 No. Hp:\r\n👕 Kode Pesanan, jumlah, dan ukuran:\r\n\r\n__\r\n#localbrand\r\n#localbrandmalang\r\n#localpride\r\n#madeinmalang\r\n#oyisamTshirt\r\n#oyisam\r\n#oyisamclothing\r\n#exploremalang\r\n#yoikimalang', 80000, '7616245209188_1064987234311844_6253992711233969634_n.jpg'),
(3, 'OYISAM! Arema T-Shirt ', 'OYISAM! Arema T-Shirt\r\nKODE PESANAN \"ARTUR”\r\nIDR 110K\r\nSIZE S M L XL\r\nUNISEX (Lanang kodeW osi)\r\nSerius Order & Cara Pesan\r\n👨 Nama:\r\n🌍 Alamat Lengkap:\r\n📱 No. Hp:\r\n👕 Kode Pesanan, jumlah, dan ukuran:\r\n\r\n__\r\n#localproduct\r\n#madeinmalang\r\n#kaosmalangan\r\n#kaoskhasmalang\r\n#kaosarema\r\n#aremania\r\n#aremanita\r\n#oyisamTshirt\r\n#oyisam\r\n#oyisamclothing\r\n#arema\r\n#exploremalang\r\n#yoikimalang\r\n#tentangngalam', 110000, '8378241737705_400010401524872_7047396714592677410_n.jpg'),
(4, 'OYISAM! T-Shirt ', 'OYISAM! T-Shirt\r\nKODE PESANAN \"F*CKOFF”\r\nIDR 120K\r\nSIZE S M L XL\r\nUNISEX (Lanang kodeW osi)\r\nSerius Order & Cara Pesan\r\n👨 Nama:\r\n🌍 Alamat Lengkap:\r\n📱 No. Hp:\r\n👕 Kode Pesanan, jumlah, dan ukuran:\r\n\r\n__\r\n#localbrand\r\n#madeinmalang\r\n#oyisamTshirt\r\n#oyisam\r\n#oyisamclothing\r\n#exploremalang\r\n#yoikimalang', 120000, '9595219674220_126711899613755_1420569544175280815_n.jpg'),
(5, 'OYISAM! Hoodie Jacket', 'OYISAM! HOODIE JACKET\r\nKODE PESANAN \"HOOD LION GREY”\r\nIDR 260K\r\nSIZE M L XL\r\nUNISEX (Lanang kodeW osi)\r\nSerius Order & Cara Pesan\r\n👨 Nama:\r\n\r\n🌍 Alamat Lengkap:\r\n\r\n📱 No. Hp:\r\n\r\n👕 Kode Pesanan, jumlah, dan ukuran:\r\n\r\n\r\n__\r\n#Localpride\r\n#madeinmalang\r\n#oyisamJaket\r\n#oyisam\r\n#oyisamclothing\r\n#arema\r\n#exploremalang\r\n#yoikimalang\r\n#tentangngalam', 260000, '5215241516287_337602708161128_7262633715478681489_n.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `tgl_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pelanggan`, `id_petugas`, `tgl_transaksi`) VALUES
(28, 2, 0, '2022-12-13'),
(29, 2, 0, '2022-12-13'),
(30, 6, 0, '2022-12-14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail_transaksi`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_petugas` (`id_petugas`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_admin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
