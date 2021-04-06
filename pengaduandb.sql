-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Apr 2021 pada 08.20
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduandb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
('001', 'Deva', 'Deva1', 'Deva1', '999'),
('004', 'diluc', 'diluc', 'diluc', '123'),
('0818277324', 'Tretan Pardede', 'Tretan', 'tretan1', '0819293232'),
('111', 'Kaeya', 'k', 'k', '1233'),
('3271046504930002', 'Coki Pardede', 'coki1', 'coki1', '081392874'),
('6771067427930023', 'tretan1', 'tretan', 'tretan1', '081332324'),
('876', 'nihao', 'nihao', 'nihao', '431');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(11) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `nama`, `isi_laporan`, `foto`, `status`) VALUES
(10, '2021-03-31', '0818277324', '', 'permisi pak jalanan didepan rumah saya rusak. mohon segera diperbaiki', '24496273370-jalan.jpg', 'selesai'),
(12, '2021-04-06', '3271046504930002', 'coki1', 'permisi pak pohon didepan warung kopi rubuh ke jalan raya mohon segera ditindak lanjuti', 'Pohon_tumbang_mainmain.id_.jpg', 'proses'),
(13, '2021-04-06', '3271046504930002', 'coki1', 'permisi pak tanah di daerah desa liyue terjadi longsor mohon segera ditindak lanjuti', 'penyebab-tanah-longsor-pencegahan-dan-tanaman-pengendalinya.jpg', '0'),
(14, '2021-04-06', '001', 'deva1', 'permisi pak pohon didepan rumah saya tumbang mohon segera ditindak lanjuti', 'Pohon_tumbang_mainmain.id_.jpg', 'selesai');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `telp` varchar(13) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(1, 'admin', 'admin', 'admin', '0123', 'admin'),
(2, 'petugas', 'petugas', 'petugas', '0123', 'petugas'),
(4, 'rina pl', 'rina999', 'rinrin', '444', 'admin'),
(5, 'erew', 'werwe', 'werwe', '4412', 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(11) NOT NULL,
  `id_pengaduan` int(11) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(4, 2, '0000-00-00', '\r\n\r\n        ok', 1),
(5, 6, '2021-02-25', '\r\nboleh\r\n        ', 1),
(6, 10, '2021-03-31', 'baik akan kami segera perbaiki, mohon menunggu\r\n\r\n        ', 1),
(7, 7, '2021-03-31', '\r\nok\r\n        ', 1),
(8, 8, '2021-04-06', '\r\nok\r\n        ', 1),
(9, 9, '2021-04-06', 'ok', 1),
(10, 11, '2021-04-06', 'ok akan segera kami tangani', 1),
(11, 14, '2021-04-06', 'oke akan saya segera tindak lanjuti', 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
