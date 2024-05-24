-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 07 Des 2023 pada 11.54
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak07`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `agama`
--

CREATE TABLE `agama` (
  `id_Agama` varchar(35) NOT NULL,
  `Agama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `agama`
--

INSERT INTO `agama` (`id_Agama`, `Agama`) VALUES
('A01', 'Islam'),
('A02', 'Kristen'),
('A03', 'Hindu'),
('A04', 'Islam'),
('A05', 'Konghucu'),
('A06', 'Katolik'),
('A07', 'Islam'),
('A08', 'Islam'),
('A09', 'Kristen'),
('A10', 'Islam');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jeniskelamin`
--

CREATE TABLE `jeniskelamin` (
  `id_jnsKelamin` varchar(35) NOT NULL,
  `JenisKelamin` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jeniskelamin`
--

INSERT INTO `jeniskelamin` (`id_jnsKelamin`, `JenisKelamin`) VALUES
('L1', 'Laki-Laki'),
('L2', 'Laki-Laki'),
('L3', 'Laki-Laki'),
('L4', 'Laki-Laki'),
('L5', 'Laki-Laki'),
('P1', 'Perempuan'),
('P2', 'Perempuan'),
('P3', 'Perempuan'),
('P4', 'Perempuan'),
('P5', 'Perempuan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kartu`
--

CREATE TABLE `kartu` (
  `id_kartu` varchar(35) NOT NULL,
  `Jenis_Kartu` varchar(25) NOT NULL,
  `NIS` int(45) DEFAULT NULL,
  `id_jnsKelamin` varchar(35) DEFAULT NULL,
  `id_Agama` varchar(35) DEFAULT NULL,
  `NIP` int(45) DEFAULT NULL,
  `id_sekolah` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kepsek`
--

CREATE TABLE `kepsek` (
  `NIP` int(30) NOT NULL,
  `Nama_Kepsek` varchar(45) NOT NULL,
  `Tanda_Tangan` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sekolah`
--

CREATE TABLE `sekolah` (
  `id_sekolah` varchar(30) NOT NULL,
  `logo_dki` blob NOT NULL,
  `logo_sekolah` blob NOT NULL,
  `Nama_Sekolah` varchar(35) NOT NULL,
  `Alamat_sekolah` varchar(40) NOT NULL,
  `No_Telpon` int(45) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `website` varchar(60) NOT NULL,
  `logo_osis` blob NOT NULL,
  `visi` text NOT NULL,
  `misi` text NOT NULL,
  `NIP` int(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `Nama` varchar(35) NOT NULL,
  `NIS` int(45) NOT NULL,
  `NISN` int(50) NOT NULL,
  `Tanggal_Lahir` date NOT NULL,
  `Tempat_Lahir` char(35) NOT NULL,
  `Alamat` varchar(45) NOT NULL,
  `RT` int(15) NOT NULL,
  `RW` int(15) NOT NULL,
  `Foto` blob NOT NULL,
  `id_Agama` varchar(35) DEFAULT NULL,
  `id_jnsKelamin` varchar(35) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`Nama`, `NIS`, `NISN`, `Tanggal_Lahir`, `Tempat_Lahir`, `Alamat`, `RT`, `RW`, `Foto`, `id_Agama`, `id_jnsKelamin`) VALUES
('Putra Ibrahim', 7461, 475681, '2003-04-21', 'Jakarta', 'Jln.Tebet Timur', 4, 3, 0x466f746f31, 'A01', 'L1'),
('Anita Widya', 7462, 475682, '2002-05-12', 'Surabaya', 'Jln.Darmo Permai', 5, 4, 0x466f746f32, 'A02', 'P1'),
('Budi Santoso', 7463, 475683, '2001-08-29', 'Yogyakarta', 'Jln.Malioboro', 6, 5, 0x466f746f33, 'A03', 'L2'),
('Citra Pratiwi', 7464, 475684, '2004-02-15', 'Bandung', 'Jln.Sukajadi', 7, 6, 0x466f746f34, 'A04', 'P2'),
('Dedy Kurniawan', 7465, 475685, '2000-11-03', 'Semarang', 'Jln.Petra Selatan', 8, 7, 0x466f746f35, 'A05', 'L3'),
('Eka Putri', 7466, 475686, '2005-07-18', 'Medan', 'Jln.Sisingamangaraja', 9, 8, 0x466f746f36, 'A06', 'P3'),
('Farhan Widana', 7467, 475687, '1999-12-10', 'Makassar', 'Jln.Boulevard', 10, 9, 0x466f746f37, 'A07', 'L4'),
('Hadi Suryanto', 7469, 475689, '2002-09-05', 'Denpasar', 'Jln.Tukad Balian', 12, 11, 0x466f746f39, 'A09', 'L5'),
('Intan Permata', 7470, 475690, '2001-04-30', 'Manado', 'Jln.Boulevard', 13, 12, 0x466f746f3130, 'A10', 'P5');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `agama`
--
ALTER TABLE `agama`
  ADD PRIMARY KEY (`id_Agama`);

--
-- Indeks untuk tabel `jeniskelamin`
--
ALTER TABLE `jeniskelamin`
  ADD PRIMARY KEY (`id_jnsKelamin`);

--
-- Indeks untuk tabel `kartu`
--
ALTER TABLE `kartu`
  ADD PRIMARY KEY (`id_kartu`),
  ADD KEY `NIS` (`NIS`),
  ADD KEY `id_jnsKelamin` (`id_jnsKelamin`),
  ADD KEY `id_Agama` (`id_Agama`),
  ADD KEY `NIP` (`NIP`),
  ADD KEY `id_sekolah` (`id_sekolah`);

--
-- Indeks untuk tabel `kepsek`
--
ALTER TABLE `kepsek`
  ADD PRIMARY KEY (`NIP`);

--
-- Indeks untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD PRIMARY KEY (`id_sekolah`),
  ADD KEY `NIP` (`NIP`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`NIS`),
  ADD KEY `id_Agama` (`id_Agama`),
  ADD KEY `id_jnsKelamin` (`id_jnsKelamin`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `kartu`
--
ALTER TABLE `kartu`
  ADD CONSTRAINT `kartu_ibfk_1` FOREIGN KEY (`NIS`) REFERENCES `siswa` (`NIS`),
  ADD CONSTRAINT `kartu_ibfk_2` FOREIGN KEY (`id_jnsKelamin`) REFERENCES `jeniskelamin` (`id_jnsKelamin`),
  ADD CONSTRAINT `kartu_ibfk_3` FOREIGN KEY (`id_Agama`) REFERENCES `agama` (`id_Agama`),
  ADD CONSTRAINT `kartu_ibfk_4` FOREIGN KEY (`NIP`) REFERENCES `kepsek` (`NIP`),
  ADD CONSTRAINT `kartu_ibfk_5` FOREIGN KEY (`id_sekolah`) REFERENCES `sekolah` (`id_sekolah`);

--
-- Ketidakleluasaan untuk tabel `sekolah`
--
ALTER TABLE `sekolah`
  ADD CONSTRAINT `sekolah_ibfk_1` FOREIGN KEY (`NIP`) REFERENCES `kepsek` (`NIP`);

--
-- Ketidakleluasaan untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_Agama`) REFERENCES `agama` (`id_Agama`),
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_jnsKelamin`) REFERENCES `jeniskelamin` (`id_jnsKelamin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
