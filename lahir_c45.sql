-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jul 2020 pada 14.26
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lahir_c45`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_latih`
--

CREATE TABLE `data_latih` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `lama` varchar(100) DEFAULT NULL,
  `peb` varchar(100) DEFAULT NULL,
  `rsc` varchar(100) DEFAULT NULL,
  `cpd` varchar(100) DEFAULT NULL,
  `kpd` varchar(200) DEFAULT NULL,
  `kala` varchar(100) DEFAULT NULL,
  `oligo` varchar(100) DEFAULT NULL,
  `inertia` varchar(100) DEFAULT NULL,
  `presbo` varchar(100) DEFAULT NULL,
  `placenta` varchar(100) DEFAULT NULL,
  `oblight` varchar(100) DEFAULT NULL,
  `cukup` varchar(100) DEFAULT NULL,
  `keputusan` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_latih`
--

INSERT INTO `data_latih` (`id`, `nama`, `lama`, `peb`, `rsc`, `cpd`, `kpd`, `kala`, `oligo`, `inertia`, `presbo`, `placenta`, `oblight`, `cukup`, `keputusan`) VALUES
(1, 'hima malina', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(2, 'ida eliza', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(3, 'widiyaningsih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(4, 'fitri riyani', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(5, 'ella sonia amalda', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(6, 'nokmu', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(7, 'ratna agustina', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(8, 'titis maryana', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(9, 'siti nurchikmah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(10, 'eva ariana', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(11, 'rohmanah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(12, 'hani ulfiana', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(13, 'eva ariana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(14, 'dewi susilowati', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(15, 'siska ariyani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(16, 'siti ismiati', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(17, 'efi nuraeni', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc'),
(18, 'eka yunita', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(19, 'wartimah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(20, 'wiwin andaryati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(21, 'sri yatin', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(22, 'khairun nisa', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(23, 'mardiyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(24, 'khilmiatunaimah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(25, 'anggraini', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(26, 'nurussaadah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(27, 'yuli khairunnisa', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(28, 'sholla faidatul khusna', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(29, 'anissa linda utami', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(30, 'turipah', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(31, 'sri mulyani', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(32, 'munasipah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(33, 'anita setiyawati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(34, 'anissa linda utami', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(35, 'rohyati', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(36, 'nurul solekha', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(37, 'fina kamilah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'sc'),
(38, 'sulfi lestari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(39, 'dwi henita', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(40, 'herni laraswati', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(41, 'osi fanilah', 'p_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(42, 'jurotun', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(43, 'widya ernawati', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(44, 'dikronah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(45, 'darilah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'sc'),
(46, 'subhanah', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(47, 'carwiyah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(48, 'siti munadhiroh', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(49, 'indriana nitasari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'sc'),
(50, 'esti wiyanah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(51, 'hartati', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(52, 'lailatul munawaroh', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(53, 'titin sulaekhah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(54, 'irda yusnita', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(55, 'dewi suci larasati', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(56, 'tuzanah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(57, 'rina yuana', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(58, 'nur hayati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(59, 'nur sokhifah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(60, 'zaenab', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(61, 'fitri asih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(62, 'fina anita', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(63, 'dina rizkiyani', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(64, 'kisrowiyah', 'sorutinus', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(65, 'nur khusnadinina', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(66, 'bherna marianatha', 'p_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(67, 'ananda claudiyan novia', 'h_aterm', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(68, 'khomidah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(69, 'ninok salamah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(70, 'nia senia', 'h_aterm', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(71, 'mutmainah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'sc'),
(72, 'devi setiarini', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(73, 'istiqomah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(74, 'fatiyah', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(75, 'kastirah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(76, 'devi setiarini', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(77, 'indah fajariyanti', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(78, 'musaropah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(79, 'riski fitriyani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(80, 'siti khotijah', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(81, 'mitsalina izati', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(82, 'irma agustina', 'p_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(83, 'apriliani pristanti khotijah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(84, 'fahira', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(85, 'jamilah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(86, 'sri maryati', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(87, 'sri wilasari', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(88, 'dessy dramasita', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(89, 'aprilliani pristanti khotijah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(90, 'nur khoiriyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(91, 'ida nurani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(92, 'tina beliana', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(93, 'reka trivika sari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(94, 'kirnah yulieni', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(95, 'nur mualimah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(96, 'nurul', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(97, 'susinawati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(98, 'nuhlia', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(99, 'nur hidayah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(100, 'sri wulan sabatini', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(101, 'fitri lutfia iramani', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(102, 'anna khasyatillah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(103, 'roikhatul jannah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(104, 'eni setiowati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(105, 'amalia rosaline', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(106, 'nurul qomariyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(107, 'emilia', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(108, 'siti masitoh', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(109, 'junaenah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(110, 'fitriani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(111, 'nur khabibah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(112, 'dewi muliawati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(113, 'nur anisah', 'sorutinus', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(114, 'ismiatul muntaza', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(115, 'rustinah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(116, 'sri winangsih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(117, 'kurniyawati', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(118, 'yunida nahdasari', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(119, 'amanah febriani', 'p_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(120, 'nur khanisah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(121, 'dina yusniati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(122, 'ikromah mufrodah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(123, 'sumarningsih', 'p_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(124, 'eka suhartiningsih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(125, 'siti aisyah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(126, 'fina analia', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(127, 'dikriyah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(128, 'sri nafsiatur rofiah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(129, 'maulida septiana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(130, 'hidayatul fatecha', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(131, 'romadhonah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(132, 'maesaroh', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(133, 'esi giri saputri', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(134, 'tuti susanti', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(135, 'sri nurasih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(136, 'wachitun', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(137, 'dewi sriyanti', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(138, 'siti nurkhamsah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(139, 'riris wijayana', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(140, 'nur khamsah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(141, 'tuti indriati', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(142, 'atuk umairoh', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(143, 'adik elindah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(144, 'ema yuliana', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(145, 'aisyah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(146, 'ny, umi oktavia', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(147, 'ikrimah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(148, 'vera yulita', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(149, 'susanti', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(150, 'neti herowati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(151, 'sibeng dumi', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'sc'),
(152, 'adawiyah', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(153, 'umi andriyah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(154, 'masriyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(155, 'ristiyani haryati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(156, 'dewi lidyawati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(157, 'wiwin windiyati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(158, 'anis murtiningsih', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(159, 'miskiyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(160, 'yetty iswati', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(161, 'danona', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(162, 'mardiyah', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(163, 'ny, hanna fadhillah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(164, 'naili izati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(165, 'susanty', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(166, 'diah i\'anah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(167, 'yuli astuti', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(168, 'istipah', 'h_aterm', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(169, 'indah para meita', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(170, 'nuridzdzati zaka', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(171, 'yuliana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(172, 'tri hastutik', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(173, 'fenti suryani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(174, 'kunariyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(175, 'arinda rosalina', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(176, 'desi susilawati', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(177, 'mundilah', 'p_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(178, 'nur fadilah', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(179, 'rofi lidayani darojah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(180, 'imaroh', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(181, 'roi masitoh', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(182, 'fina fitriyani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(183, 'mundilah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(184, 'roi masitoh', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(185, 'jumanah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(186, 'nur fadilah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(187, 'haniatus shofana', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(188, 'muslihatul janah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'sc'),
(189, 'fitriani ratna sari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(190, 'alfiatur rohmah', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(191, 'redamayanti', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(192, 'sri mujiasih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(193, 'dewi sulastri', 'h_aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(194, 'kasmuti', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(195, 'heni laksita', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(196, 'nuripah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(197, 'indah azminati yusrina', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(198, 'zulfah muthoharoh', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(199, 'siti khotijah', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(200, 'sutriyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(201, 'nuraeni', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(202, 'eti susanti', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(203, 'juwairiyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'sc'),
(204, 'suharti', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(205, 'eka apriyani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(206, 'slamet lestari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(207, 'suhati', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(208, 'nur khamimah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(209, 'rantika', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'sc'),
(210, 'rasitah', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(211, 'manisih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'sc'),
(212, 'mizah kumala', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(213, 'fitriyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(214, 'dewi sundari', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(215, 'khoirul bariyah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(216, 'eka kumala', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(217, 'puji kurniasih', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(218, 'sri widyarsih', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc'),
(219, 'magfiroh', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc'),
(220, 'enny rosiana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(221, 'khikmawati', 'sorutinus', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(222, 'risqi nur indriani', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(223, 'siti nurbaya', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(224, 'sri kadarwati', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(225, 'sri handayani', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc'),
(226, 'nandya silviana', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(227, 'mu\'asaroh', 'p_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp'),
(228, 'tarmi', 'h_aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(229, 'siti aisyah', 'p_aterm', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc'),
(230, 'rizfika amallia', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_uji`
--

CREATE TABLE `data_uji` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `lama` varchar(100) NOT NULL,
  `peb` varchar(100) NOT NULL,
  `rsc` varchar(100) NOT NULL,
  `cpd` varchar(100) NOT NULL,
  `kpd` varchar(100) NOT NULL,
  `kala` varchar(100) NOT NULL,
  `oligo` varchar(100) NOT NULL,
  `inertia` varchar(100) NOT NULL,
  `presbo` varchar(100) NOT NULL,
  `placenta` varchar(50) NOT NULL,
  `oblight` varchar(50) NOT NULL,
  `cukup` varchar(50) NOT NULL,
  `keputusan` text NOT NULL,
  `kelas_hasil` varchar(50) NOT NULL,
  `id_rule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `data_uji`
--

INSERT INTO `data_uji` (`id`, `nama`, `lama`, `peb`, `rsc`, `cpd`, `kpd`, `kala`, `oligo`, `inertia`, `presbo`, `placenta`, `oblight`, `cukup`, `keputusan`, `kelas_hasil`, `id_rule`) VALUES
(1, 'hima malina', 'h aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(2, 'ida eliza', 'h aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 13),
(3, 'widiyaningsih', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 13),
(4, 'fitri riyani', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 2),
(5, 'ella sonia amalda', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(6, 'nokmu', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(7, 'ratna agustina', 'h aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(8, 'titis maryana', 'h aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(9, 'siti nurchikmah', 'h aterm', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(10, 'eva ariana', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(11, 'rizfika amallia ashary', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(12, 'ariesta asmarani', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(13, 'wilyawati', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(14, 'eka setyawati', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 11),
(15, 'sri endang', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(16, 'titik astri dwi jayanti', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(17, 'kholifah', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc', 'part_sp', 19),
(18, 'suhanti', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc', 'part_sp', 19),
(19, 'susi erviana', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(20, 'prasditya ramadita', 'sorutinus', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(21, 'umi khotijah', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(22, 'herni deviyanti', 'sorutinus', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc', 'sc', 14),
(23, 'fathia turohmah', 'sorutinus', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 14),
(24, 'rochayati', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(25, 'liza litfiana', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc', 'part_sp', 19),
(26, 'susi erviana', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(27, 'uchriyatul lusiana', 'p aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(28, 'milzamah', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(29, 'umi khotijah', 'h aterm', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 14),
(30, 'rochayati', 'h aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'part_sp', 19),
(31, 'awaliyah nofiyanti', 'p aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(32, 'umi khofifah', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(33, 'suryati', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(34, 'luluk farkha', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(35, 'fifi andriana', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(36, 'farida ida yani', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(37, 'iswatun khasanah', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(38, 'naila chafiatun nisa', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc', 'part_sp', 19),
(39, 'mifta asih', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(40, 'naila chafiatun nisa', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'ya', 'sc', 'sc', 11),
(41, 'kunapah', 'p aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(42, 'mu\'tamaroh awaliyah', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(43, 'jihan', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 11),
(44, 'khofi indani', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(45, 'vellasufa', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 11),
(46, 'warsiyah', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'sc', 'part_sp', 19),
(47, 'retno anggraeni', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(48, 'umi masruroh', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(49, 'eka setiyawati', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'sc', 'sc', 12),
(50, 'dini indah suwari', 'h aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(51, 'siti khotimah', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(52, 'siti suwaibah', 'p aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 11),
(53, 'ninik aryani', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(54, 'towiyah', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(55, 'jaza anil khusna', 'h aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(56, 'kamila rusdana', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 12),
(57, 'izatul mila', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc', 'sc', 1),
(58, 'sunarti', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 13),
(59, 'maria ulfa', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1),
(60, 'risqiati oktafiani', 'h aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 'part_sp', 19),
(61, 'dina hanifah', 'h aterm', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 'sc', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `gain`
--

CREATE TABLE `gain` (
  `id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `atribut` varchar(100) NOT NULL,
  `gain` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gain`
--

INSERT INTO `gain` (`id`, `node_id`, `atribut`, `gain`) VALUES
(1, 1, 'peb', 0),
(2, 1, 'rsc', 0),
(3, 1, 'cpd', 0),
(4, 1, 'kpd', 0),
(5, 1, 'kala', 0),
(6, 1, 'oligo', 0),
(7, 1, 'inertia', 0),
(8, 1, 'presbo', 0),
(9, 1, 'placenta', 0),
(10, 1, 'oblight', 0),
(11, 1, 'cukup', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_prediksi`
--

CREATE TABLE `hasil_prediksi` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `lama` varchar(50) NOT NULL,
  `peb` varchar(50) NOT NULL,
  `rsc` varchar(50) NOT NULL,
  `cpd` varchar(50) NOT NULL,
  `kpd` varchar(50) NOT NULL,
  `kala` varchar(50) NOT NULL,
  `oligo` varchar(50) NOT NULL,
  `inertia` varchar(50) NOT NULL,
  `presbo` varchar(50) NOT NULL,
  `placenta` varchar(50) NOT NULL,
  `oblight` varchar(50) NOT NULL,
  `cukup` varchar(50) NOT NULL,
  `kelas_hasil` varchar(50) NOT NULL,
  `id_rule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hasil_prediksi`
--

INSERT INTO `hasil_prediksi` (`id`, `nama`, `lama`, `peb`, `rsc`, `cpd`, `kpd`, `kala`, `oligo`, `inertia`, `presbo`, `placenta`, `oblight`, `cukup`, `kelas_hasil`, `id_rule`) VALUES
(118, 'diana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc', 9),
(120, 'sad', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'sc', 9),
(124, 'indah', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'part_sp', 17),
(135, 'asd', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'sc', 9),
(142, 'asaa', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 10),
(143, 'sinta', 'h_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 6),
(144, 'indah', 'h_aterm', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 6),
(145, 'rika', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'sc', 1),
(146, 'intan', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 22),
(147, 'nia', 'p_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 4),
(148, 'intana', 'sorutinus', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 21),
(149, 'mila ika', 'h_aterm', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 19),
(150, 'yasinta ', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 20),
(151, 'kinm', 'h_aterm', 'ya', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 9),
(152, 'ika', 'p_aterm', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'part_sp', 10),
(153, 'inka', 'p_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 1),
(154, 'alvita', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 1),
(155, 'kinan', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'ya', 'sc', 11),
(156, 'diana', 'h_aterm', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'part_sp', 20),
(157, 'vita', 'h_aterm', 'tidak', 'tidak', 'ya', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 1),
(158, 'huh', 'h_aterm', 'tidak', 'tidak', 'ya', 'tidak', 'ya', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'tidak', 'sc', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `rasio_gain`
--

CREATE TABLE `rasio_gain` (
  `id` int(11) NOT NULL,
  `opsi` varchar(10) NOT NULL,
  `cabang1` varchar(50) NOT NULL,
  `cabang2` varchar(50) NOT NULL,
  `rasio_gain` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `rasio_gain`
--

INSERT INTO `rasio_gain` (`id`, `opsi`, `cabang1`, `cabang2`, `rasio_gain`) VALUES
(1, 'opsi1', 'h_aterm', 'sorutinus , p_aterm', 0.175),
(2, 'opsi2', 'sorutinus', 'p_aterm , h_aterm', 0.192),
(3, 'opsi3', 'p_aterm', 'h_aterm , sorutinus', 0.847);

-- --------------------------------------------------------

--
-- Struktur dari tabel `t_keputusan`
--

CREATE TABLE `t_keputusan` (
  `id` int(11) NOT NULL,
  `parent` text NOT NULL,
  `akar` text NOT NULL,
  `keputusan_hasil` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `t_keputusan`
--

INSERT INTO `t_keputusan` (`id`, `parent`, `akar`, `keputusan_hasil`) VALUES
(1, '', '(cpd=\'ya\')', 'sc'),
(2, '(cpd=\'tidak\') AND (kala=\'ya\')', '(lama=\'sorutinus\')', 'sc'),
(3, '(cpd=\'tidak\') AND (kala=\'ya\') AND (lama=\'h_aterm\' OR lama=\'p_aterm\')', '(lama=\'h_aterm\')', 'part_sp'),
(4, '(cpd=\'tidak\') AND (kala=\'ya\') AND (lama=\'h_aterm\' OR lama=\'p_aterm\')', '(lama=\'p_aterm\')', 'part_sp'),
(5, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\')', '(rsc=\'ya\')', 'sc'),
(6, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\') AND (rsc=\'tidak\')', '(presbo=\'ya\')', 'sc'),
(7, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\') AND (rsc=\'tidak\') AND (presbo=\'tidak\')', '(lama=\'sorutinus\')', 'sc'),
(8, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\') AND (rsc=\'tidak\') AND (presbo=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'p_aterm\')', '(placenta=\'ya\')', 'sc'),
(9, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\') AND (rsc=\'tidak\') AND (presbo=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'p_aterm\') AND (placenta=\'tidak\')', '(lama=\'h_aterm\')', 'part_sp'),
(10, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'ya\') AND (rsc=\'tidak\') AND (presbo=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'p_aterm\') AND (placenta=\'tidak\')', '(lama=\'p_aterm\')', 'part_sp'),
(11, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\')', '(oligo=\'ya\')', 'sc'),
(12, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\')', '(presbo=\'ya\')', 'sc'),
(13, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\')', '(inertia=\'ya\')', 'sc'),
(14, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\')', '(peb=\'ya\')', 'sc'),
(15, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\')', '(lama=\'p_aterm\')', 'part_sp'),
(16, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\')', '(placenta=\'ya\')', 'sc'),
(17, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\') AND (placenta=\'tidak\')', '(cukup=\'ya\')', 'sc'),
(18, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\') AND (placenta=\'tidak\') AND (cukup=\'tidak\') AND (lama=\'h_aterm\')', '(oblight=\'ya\')', 'sc'),
(19, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\') AND (placenta=\'tidak\') AND (cukup=\'tidak\') AND (lama=\'h_aterm\') AND (oblight=\'tidak\')', '(rsc=\'ya\')', 'part_sp'),
(20, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\') AND (placenta=\'tidak\') AND (cukup=\'tidak\') AND (lama=\'h_aterm\') AND (oblight=\'tidak\')', '(rsc=\'tidak\')', 'part_sp'),
(21, '(cpd=\'tidak\') AND (kala=\'tidak\') AND (kpd=\'tidak\') AND (oligo=\'tidak\') AND (presbo=\'tidak\') AND (inertia=\'tidak\') AND (peb=\'tidak\') AND (lama=\'h_aterm\' OR lama=\'sorutinus\') AND (placenta=\'tidak\') AND (cukup=\'tidak\')', '(lama=\'sorutinus\')', 'sc');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(1, 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 1),
(3, 'perawat', 'perawat', '88302402fc4986121efe4a68ba6f5706', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gain`
--
ALTER TABLE `gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `t_keputusan`
--
ALTER TABLE `t_keputusan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_latih`
--
ALTER TABLE `data_latih`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT untuk tabel `data_uji`
--
ALTER TABLE `data_uji`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `gain`
--
ALTER TABLE `gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `hasil_prediksi`
--
ALTER TABLE `hasil_prediksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT untuk tabel `rasio_gain`
--
ALTER TABLE `rasio_gain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `t_keputusan`
--
ALTER TABLE `t_keputusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
