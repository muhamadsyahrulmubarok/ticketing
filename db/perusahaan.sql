-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Nov 2022 pada 08.57
-- Versi server: 8.0.27
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perusahaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bagian_departemen`
--

CREATE TABLE `bagian_departemen` (
  `id_bagian_dept` int NOT NULL,
  `nama_bagian_dept` varchar(30) NOT NULL,
  `id_dept` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bagian_departemen`
--

INSERT INTO `bagian_departemen` (`id_bagian_dept`, `nama_bagian_dept`, `id_dept`) VALUES
(5, 'OPERASIONAL', 3),
(6, 'OPERASIONAL', 4),
(7, 'OPERASIONAL', 6),
(8, 'OPERASIONAL', 5),
(9, 'BISNIS', 4),
(10, 'BISNIS', 5),
(11, 'BISNIS', 6),
(12, 'BISNIS', 3),
(13, 'OPERASIONAL', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `departemen`
--

CREATE TABLE `departemen` (
  `id_dept` int NOT NULL,
  `nama_dept` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `departemen`
--

INSERT INTO `departemen` (`id_dept`, `nama_dept`) VALUES
(3, 'CABANG TEGAL'),
(4, 'CABANG BLORA'),
(5, 'CABANG JEPARA'),
(6, 'CABANG KLATEN'),
(7, 'KPNO');

-- --------------------------------------------------------

--
-- Struktur dari tabel `history_feedback`
--

CREATE TABLE `history_feedback` (
  `id_feedback` int NOT NULL,
  `id_ticket` varchar(13) NOT NULL,
  `feedback` int NOT NULL,
  `reported` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `history_feedback`
--

INSERT INTO `history_feedback` (`id_feedback`, `id_ticket`, `feedback`, `reported`) VALUES
(1, 'T202211220001', 1, 'K0013');

-- --------------------------------------------------------

--
-- Struktur dari tabel `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` int NOT NULL,
  `tanggal` datetime NOT NULL,
  `subject` varchar(35) NOT NULL,
  `pesan` text NOT NULL,
  `status` decimal(2,0) NOT NULL,
  `id_user` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `tanggal`, `subject`, `pesan`, `status`, `id_user`) VALUES
(1, '2016-12-04 09:24:28', 'WAJIB MENGISI FEEDBACK', 'FEEDBACK SANGATLAH PENTING GUNA MEMBANTU KAMI DALAM MEMBERIKAN PENILAIAN TERHADAP KINERJA TEKNISI, INI MENYANGKUT DENGAN KEPUASAN ANDA', '1', 'K0001'),
(2, '2016-12-21 13:42:59', 'JIJ', 'NKNJK', '1', 'K0001');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int NOT NULL,
  `nama_jabatan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'KEPALA CABANG'),
(2, 'MANAJER BISNIS'),
(3, 'MANAJER OPERASIONAL'),
(4, 'CUSTOMER SERVICE'),
(5, 'TELLER'),
(6, 'ANALIS KREDIT'),
(7, 'TEKNISI (IT)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `nik` varchar(5) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `jk` varchar(10) NOT NULL,
  `id_bagian_dept` int NOT NULL,
  `id_jabatan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`nik`, `nama`, `alamat`, `jk`, `id_bagian_dept`, `id_jabatan`) VALUES
('K0001', 'NUR SURATMAN', 'TANGERANG', 'LAKI-LAKI', 5, 2),
('K0002', 'DESI', 'JAKARTA', 'PEREMPUAN', 5, 3),
('K0003', 'MUHLISON', 'TANGERANG', 'LAKI-LAKI', 5, 4),
('K0005', 'RIO', 'TANGERANG', 'LAKI-LAKI', 5, 2),
('K0006', 'DENI', 'TANGERANG', 'LAKI-LAKI', 6, 4),
('K0007', 'DOSEN', 'TES', 'LAKI-LAKI', 5, 1),
('K0008', 'BAYU TUTOR', 'BANDUNG, JAWA BARAT', 'LAKI-LAKI', 5, 2),
('K0009', 'BAYU USER', 'BANDUNG', 'LAKI-LAKI', 5, 1),
('K0010', 'DEWI', 'BOGOR', 'PEREMPUAN', 5, 4),
('K0011', 'COMRO', 'BANDUNG', 'LAKI-LAKI', 5, 4),
('K0012', 'SAMSUL', 'JAKARTA', 'LAKI-LAKI', 6, 3),
('K0013', 'USER CS', 'TEGAL', 'PEREMPUAN', 5, 4),
('K0014', 'USER MO', 'TEGAL', 'LAKI-LAKI', 5, 3),
('K0015', 'USER CS BLORA', 'BLORA', 'PEREMPUAN', 6, 4),
('K0016', 'SYAHRUL', 'TEGAL', 'LAKI-LAKI', 5, 7),
('K0017', 'FIRDAUS', 'TEGAL', 'LAKI-LAKI', 13, 7),
('K0018', 'CS TEGAL', 'TEGAL', 'PEREMPUAN', 5, 4),
('K0019', 'USER JEPARA', 'JEPARA', 'LAKI-LAKI', 8, 4),
('K0020', 'USER JEPARA MO', 'JEPARA', 'LAKI-LAKI', 8, 3);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL,
  `nama_kategori` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`) VALUES
(4, 'HARDWARE'),
(5, 'SOFTWARE');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kondisi`
--

CREATE TABLE `kondisi` (
  `id_kondisi` int NOT NULL,
  `nama_kondisi` varchar(30) NOT NULL,
  `waktu_respon` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kondisi`
--

INSERT INTO `kondisi` (`id_kondisi`, `nama_kondisi`, `waktu_respon`) VALUES
(1, 'MENDESAK', '1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sub_kategori`
--

CREATE TABLE `sub_kategori` (
  `id_sub_kategori` int NOT NULL,
  `nama_sub_kategori` varchar(35) NOT NULL,
  `id_kategori` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sub_kategori`
--

INSERT INTO `sub_kategori` (`id_sub_kategori`, `nama_sub_kategori`, `id_kategori`) VALUES
(2, 'KERUSAKAN KOMPONEN MONITOR', 4),
(3, 'KERUSAKAN MOUSE', 4),
(4, 'KERUSAKAN KEYBOARD', 4),
(5, 'ERROR IBS', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `teknisi`
--

CREATE TABLE `teknisi` (
  `id_teknisi` varchar(5) NOT NULL,
  `nik` varchar(5) NOT NULL,
  `id_kategori` int NOT NULL,
  `status` varchar(20) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL DEFAULT '1',
  `point` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `teknisi`
--

INSERT INTO `teknisi` (`id_teknisi`, `nik`, `id_kategori`, `status`, `point`) VALUES
('T0001', 'K0003', 4, '1', '1'),
('T0002', 'K0012', 4, '1', NULL),
('T0003', 'K0016', 4, '1', NULL),
('T0004', 'K0016', 5, '1', '1'),
('T0005', 'K0017', 5, '1', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` varchar(13) NOT NULL,
  `tanggal` datetime NOT NULL,
  `tanggal_proses` datetime DEFAULT NULL,
  `tanggal_solved` datetime DEFAULT NULL,
  `reported` varchar(5) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `id_sub_kategori` int NOT NULL,
  `problem_summary` varchar(50) NOT NULL,
  `problem_detail` text NOT NULL,
  `id_teknisi` varchar(5) NOT NULL,
  `status` int NOT NULL,
  `progress` decimal(10,0) NOT NULL,
  `berita_acara` text,
  `lampiran` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `tanggal`, `tanggal_proses`, `tanggal_solved`, `reported`, `id_sub_kategori`, `problem_summary`, `problem_detail`, `id_teknisi`, `status`, `progress`, `berita_acara`, `lampiran`) VALUES
('T202211220001', '2022-11-22 05:34:36', '2022-11-22 05:37:28', '2022-11-22 05:38:20', 'K0013', 5, 'TEST', 'ASDASD', 'T0004', 6, '100', NULL, 'T202211220001-0.jpeg,T202211220001-1.png,T202211220001-2.png,'),
('T202211220002', '2022-11-22 08:32:01', NULL, NULL, 'K0013', 4, '123', 'SS', '', 1, '0', 'T202211220002-berita_acara.png', 'T202211220002-0.png,T202211220002-1.png,T202211220002-2.png,'),
('T202211220003', '2022-11-22 08:32:46', NULL, NULL, 'K0013', 5, 'TEST', 'WW', '', 1, '0', 'T202211220003-berita_acara.jpg', 'T202211220003-0.png,T202211220003-1.png,T202211220003-2.jpg,'),
('T202211230004', '2022-11-23 08:33:43', NULL, NULL, 'K0008', 3, 'TEST', '', '', 2, '0', 'T202211230004-berita_acara.png', 'T202211230004-0.png,T202211230004-1.png,'),
('T202211230005', '2022-11-23 08:36:33', NULL, NULL, 'K0018', 5, 'TEST', 'TEST', '', 2, '0', 'T202211230005-berita_acara.png', 'T202211230005-0.jpeg,T202211230005-1.png,'),
('T202211230006', '2022-11-23 08:44:58', '2022-11-23 08:50:45', NULL, 'K0019', 5, 'TEST', 'TS', 'T0004', 4, '0', 'T202211230006-berita_acara.png', 'T202211230006-0.png,T202211230006-1.png,T202211230006-2.png,'),
('T202211230007', '2022-11-23 08:53:36', NULL, NULL, 'K0019', 2, 'TEST PDF', '', '', 1, '0', 'T202211230007-berita_acara.', 'T202211230007-0.,'),
('T202211230008', '2022-11-23 08:55:51', NULL, NULL, 'K0019', 4, 'TEST PDF', '', '', 1, '0', 'T202211230008-berita_acara.pdf', 'T202211230008-0.csv,T202211230008-1.csv,T202211230008-2.csv,');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking`
--

CREATE TABLE `tracking` (
  `id_tracking` int NOT NULL,
  `id_ticket` varchar(13) NOT NULL,
  `tanggal` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `id_user` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tracking`
--

INSERT INTO `tracking` (`id_tracking`, `id_ticket`, `tanggal`, `status`, `deskripsi`, `id_user`) VALUES
(1, 'T202211220001', '2022-11-22 05:34:36', 'Created Ticket', '', 'K0013'),
(2, 'T202211220001', '2022-11-22 05:35:59', 'Ticket disetujui', '', 'K0014'),
(3, 'T202211220001', '2022-11-22 05:36:37', 'Pemilihan Teknisi', 'TICKET DIBERIKAN KEPADA TEKNISI', 'K0014'),
(4, 'T202211220001', '2022-11-22 05:37:28', 'Diproses oleh teknisi', '', 'K0016'),
(5, 'T202211220001', '2022-11-22 05:38:12', 'Up Progress To 20 %', '', 'K0016'),
(6, 'T202211220001', '2022-11-22 05:38:20', 'Up Progress To 100 %', '', 'K0016'),
(7, 'T202211220002', '2022-11-22 08:32:01', 'Created Ticket', '', 'K0013'),
(8, 'T202211220003', '2022-11-22 08:32:46', 'Created Ticket', '', 'K0013'),
(9, 'T202211220002', '2022-11-22 16:49:56', 'Ticket tidak disetujui', '', 'K0008'),
(10, 'T202211220003', '2022-11-22 16:49:58', 'Ticket tidak disetujui', '', 'K0008'),
(11, 'T202211230004', '2022-11-23 08:33:43', 'Created Ticket', '', 'K0008'),
(12, 'T202211230005', '2022-11-23 08:36:33', 'Created Ticket', '', 'K0018'),
(13, 'T202211230004', '2022-11-23 08:39:41', 'Ticket disetujui', '', 'K0014'),
(14, 'T202211230005', '2022-11-23 08:40:34', 'Ticket disetujui', '', 'K0014'),
(15, 'T202211230006', '2022-11-23 08:44:58', 'Created Ticket', '', 'K0019'),
(16, 'T202211220002', '2022-11-23 08:47:51', 'Ticket dikembalikan ke posisi belum di setujui', '', 'K0020'),
(17, 'T202211220003', '2022-11-23 08:47:53', 'Ticket dikembalikan ke posisi belum di setujui', '', 'K0020'),
(18, 'T202211230006', '2022-11-23 08:48:00', 'Ticket disetujui', '', 'K0020'),
(19, 'T202211230006', '2022-11-23 08:48:22', 'Pemilihan Teknisi', 'TICKET DIBERIKAN KEPADA TEKNISI', 'K0020'),
(20, 'T202211230006', '2022-11-23 08:50:45', 'Diproses oleh teknisi', '', 'K0016'),
(21, 'T202211230007', '2022-11-23 08:53:36', 'Created Ticket', '', 'K0019'),
(22, 'T202211230008', '2022-11-23 08:55:51', 'Created Ticket', '', 'K0019');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int NOT NULL,
  `id_karyawan` varchar(255) DEFAULT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `password` varchar(32) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `id_karyawan`, `username`, `password`, `level`) VALUES
(22, 'K0008', 'syahrul', '202cb962ac59075b964b07152d234b70', 'ADMIN'),
(23, 'K0017', 'firdaus', '202cb962ac59075b964b07152d234b70', 'TEKNISI'),
(24, 'K0018', 'cs_tegal', '202cb962ac59075b964b07152d234b70', 'USER'),
(25, 'K0014', 'mo_tegal', '202cb962ac59075b964b07152d234b70', 'MO/KC'),
(28, 'K0019', 'cs_jepara', '202cb962ac59075b964b07152d234b70', 'USER'),
(29, 'K0020', 'mo_jepara', '202cb962ac59075b964b07152d234b70', 'MO/KC'),
(30, 'K0016', 'syahrul1', '202cb962ac59075b964b07152d234b70', 'TEKNISI');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bagian_departemen`
--
ALTER TABLE `bagian_departemen`
  ADD PRIMARY KEY (`id_bagian_dept`);

--
-- Indeks untuk tabel `departemen`
--
ALTER TABLE `departemen`
  ADD PRIMARY KEY (`id_dept`);

--
-- Indeks untuk tabel `history_feedback`
--
ALTER TABLE `history_feedback`
  ADD PRIMARY KEY (`id_feedback`);

--
-- Indeks untuk tabel `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indeks untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  ADD PRIMARY KEY (`id_kondisi`);

--
-- Indeks untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  ADD PRIMARY KEY (`id_sub_kategori`);

--
-- Indeks untuk tabel `teknisi`
--
ALTER TABLE `teknisi`
  ADD PRIMARY KEY (`id_teknisi`);

--
-- Indeks untuk tabel `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indeks untuk tabel `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id_tracking`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bagian_departemen`
--
ALTER TABLE `bagian_departemen`
  MODIFY `id_bagian_dept` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `departemen`
--
ALTER TABLE `departemen`
  MODIFY `id_dept` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `history_feedback`
--
ALTER TABLE `history_feedback`
  MODIFY `id_feedback` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id_informasi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `kondisi`
--
ALTER TABLE `kondisi`
  MODIFY `id_kondisi` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `sub_kategori`
--
ALTER TABLE `sub_kategori`
  MODIFY `id_sub_kategori` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id_tracking` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
