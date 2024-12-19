-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2024 at 02:58 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siakadsmp35`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `pertemuan_ke` int(11) DEFAULT NULL,
  `kode_mapel` varchar(20) DEFAULT NULL,
  `nisn` varchar(30) DEFAULT NULL,
  `keterangan` enum('Hadir','Izin','Sakit','Alpa') DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id`, `id_jadwal`, `pertemuan_ke`, `kode_mapel`, `nisn`, `keterangan`, `tanggal`, `semester_id`, `created_at`, `updated_at`) VALUES
(91, 125, 1, 'SDP9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(92, 125, 1, 'SDP9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(93, 125, 1, 'SDP9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(94, 125, 1, 'SDP9', '0105718054', 'Sakit', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(95, 125, 1, 'SDP9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(96, 125, 1, 'SDP9', '0085456340', 'Alpa', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(97, 125, 1, 'SDP9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(98, 125, 1, 'SDP9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(99, 125, 1, 'SDP9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(100, 125, 1, 'SDP9', '0106840313', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(101, 125, 1, 'SDP9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(102, 125, 1, 'SDP9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(103, 125, 1, 'SDP9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(104, 125, 1, 'SDP9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(105, 125, 1, 'SDP9', '0096231971', 'Alpa', '2024-10-17', 5, '2024-10-17 13:18:43', NULL),
(106, 125, 1, 'SDP9', '0088724540', 'Alpa', '2024-10-17', 5, '2024-10-17 13:18:43', NULL),
(107, 125, 1, 'SDP9', '0106227120', 'Alpa', '2024-10-17', 5, '2024-10-17 13:18:43', NULL),
(108, 125, 1, 'SDP9', '0104579517', 'Alpa', '2024-09-17', 5, '2024-09-17 13:18:43', NULL),
(109, 125, 1, 'SDP9', '0091347671', 'Alpa', '2024-09-17', 5, '2024-09-17 13:18:43', NULL),
(110, 125, 1, 'SDP9', '0102154711', 'Alpa', '2024-09-17', 5, '2024-09-17 13:18:43', NULL),
(111, 125, 1, 'SDP9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(112, 125, 1, 'SDP9', '0098744951', 'Alpa', '2024-09-17', 5, '2024-09-17 13:18:43', NULL),
(113, 125, 1, 'SDP9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(114, 125, 1, 'SDP9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(115, 125, 1, 'SDP9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(116, 125, 1, 'SDP9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(117, 125, 1, 'SDP9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(118, 125, 1, 'SDP9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(119, 125, 1, 'SDP9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(120, 125, 1, 'SDP9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:18:43', NULL),
(121, 125, 2, 'SDP9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(122, 125, 2, 'SDP9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(123, 125, 2, 'SDP9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(124, 125, 2, 'SDP9', '0105718054', 'Alpa', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(125, 125, 2, 'SDP9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(126, 125, 2, 'SDP9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(127, 125, 2, 'SDP9', '0109281890', 'Sakit', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(128, 125, 2, 'SDP9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(129, 125, 2, 'SDP9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(130, 125, 2, 'SDP9', '0106840313', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(131, 125, 2, 'SDP9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(132, 125, 2, 'SDP9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(133, 125, 2, 'SDP9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(134, 125, 2, 'SDP9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(135, 125, 2, 'SDP9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(136, 125, 2, 'SDP9', '0088724540', 'Alpa', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(137, 125, 2, 'SDP9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(138, 125, 2, 'SDP9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(139, 125, 2, 'SDP9', '0091347671', 'Alpa', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(140, 125, 2, 'SDP9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(141, 125, 2, 'SDP9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(142, 125, 2, 'SDP9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(143, 125, 2, 'SDP9', '3100496165', 'Izin', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(144, 125, 2, 'SDP9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(145, 125, 2, 'SDP9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(146, 125, 2, 'SDP9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(147, 125, 2, 'SDP9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(148, 125, 2, 'SDP9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(149, 125, 2, 'SDP9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(150, 125, 2, 'SDP9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:19:36', NULL),
(181, 126, 1, 'BIG9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(182, 126, 1, 'BIG9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(183, 126, 1, 'BIG9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(184, 126, 1, 'BIG9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(185, 126, 1, 'BIG9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(186, 126, 1, 'BIG9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(187, 126, 1, 'BIG9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(188, 126, 1, 'BIG9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(189, 126, 1, 'BIG9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(190, 126, 1, 'BIG9', '0106840313', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(191, 126, 1, 'BIG9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(192, 126, 1, 'BIG9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(193, 126, 1, 'BIG9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(194, 126, 1, 'BIG9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(195, 126, 1, 'BIG9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(196, 126, 1, 'BIG9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(197, 126, 1, 'BIG9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(198, 126, 1, 'BIG9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(199, 126, 1, 'BIG9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(200, 126, 1, 'BIG9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(201, 126, 1, 'BIG9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(202, 126, 1, 'BIG9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(203, 126, 1, 'BIG9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(204, 126, 1, 'BIG9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(205, 126, 1, 'BIG9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(206, 126, 1, 'BIG9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(207, 126, 1, 'BIG9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(208, 126, 1, 'BIG9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(209, 126, 1, 'BIG9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(210, 126, 1, 'BIG9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:33', NULL),
(211, 126, 2, 'BIG9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(212, 126, 2, 'BIG9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(213, 126, 2, 'BIG9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(214, 126, 2, 'BIG9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(215, 126, 2, 'BIG9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(216, 126, 2, 'BIG9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(217, 126, 2, 'BIG9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(218, 126, 2, 'BIG9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(219, 126, 2, 'BIG9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(220, 126, 2, 'BIG9', '0106840313', 'Izin', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(221, 126, 2, 'BIG9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(222, 126, 2, 'BIG9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(223, 126, 2, 'BIG9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(224, 126, 2, 'BIG9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(225, 126, 2, 'BIG9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(226, 126, 2, 'BIG9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(227, 126, 2, 'BIG9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(228, 126, 2, 'BIG9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(229, 126, 2, 'BIG9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(230, 126, 2, 'BIG9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(231, 126, 2, 'BIG9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(232, 126, 2, 'BIG9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(233, 126, 2, 'BIG9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(234, 126, 2, 'BIG9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(235, 126, 2, 'BIG9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(236, 126, 2, 'BIG9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(237, 126, 2, 'BIG9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(238, 126, 2, 'BIG9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(239, 126, 2, 'BIG9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(240, 126, 2, 'BIG9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:33:46', NULL),
(271, 127, 1, 'PAI9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(272, 127, 1, 'PAI9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(273, 127, 1, 'PAI9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(274, 127, 1, 'PAI9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(275, 127, 1, 'PAI9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(276, 127, 1, 'PAI9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(277, 127, 1, 'PAI9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(278, 127, 1, 'PAI9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(279, 127, 1, 'PAI9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(280, 127, 1, 'PAI9', '0106840313', 'Izin', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(281, 127, 1, 'PAI9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(282, 127, 1, 'PAI9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(283, 127, 1, 'PAI9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(284, 127, 1, 'PAI9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(285, 127, 1, 'PAI9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(286, 127, 1, 'PAI9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(287, 127, 1, 'PAI9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(288, 127, 1, 'PAI9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(289, 127, 1, 'PAI9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(290, 127, 1, 'PAI9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(291, 127, 1, 'PAI9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(292, 127, 1, 'PAI9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(293, 127, 1, 'PAI9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(294, 127, 1, 'PAI9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(295, 127, 1, 'PAI9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(296, 127, 1, 'PAI9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(297, 127, 1, 'PAI9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(298, 127, 1, 'PAI9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(299, 127, 1, 'PAI9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(300, 127, 1, 'PAI9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:41', NULL),
(301, 127, 2, 'PAI9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(302, 127, 2, 'PAI9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(303, 127, 2, 'PAI9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(304, 127, 2, 'PAI9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(305, 127, 2, 'PAI9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(306, 127, 2, 'PAI9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(307, 127, 2, 'PAI9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(308, 127, 2, 'PAI9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(309, 127, 2, 'PAI9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(310, 127, 2, 'PAI9', '0106840313', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(311, 127, 2, 'PAI9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(312, 127, 2, 'PAI9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(313, 127, 2, 'PAI9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(314, 127, 2, 'PAI9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(315, 127, 2, 'PAI9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(316, 127, 2, 'PAI9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(317, 127, 2, 'PAI9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:51', NULL),
(318, 127, 2, 'PAI9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(319, 127, 2, 'PAI9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(320, 127, 2, 'PAI9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(321, 127, 2, 'PAI9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(322, 127, 2, 'PAI9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(323, 127, 2, 'PAI9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(324, 127, 2, 'PAI9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(325, 127, 2, 'PAI9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(326, 127, 2, 'PAI9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(327, 127, 2, 'PAI9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(328, 127, 2, 'PAI9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(329, 127, 2, 'PAI9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(330, 127, 2, 'PAI9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:35:52', NULL),
(361, 130, 1, 'BID9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(362, 130, 1, 'BID9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(363, 130, 1, 'BID9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(364, 130, 1, 'BID9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(365, 130, 1, 'BID9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(366, 130, 1, 'BID9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(367, 130, 1, 'BID9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(368, 130, 1, 'BID9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(369, 130, 1, 'BID9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(370, 130, 1, 'BID9', '0106840313', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(371, 130, 1, 'BID9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(372, 130, 1, 'BID9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(373, 130, 1, 'BID9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(374, 130, 1, 'BID9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(375, 130, 1, 'BID9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(376, 130, 1, 'BID9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(377, 130, 1, 'BID9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(378, 130, 1, 'BID9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(379, 130, 1, 'BID9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(380, 130, 1, 'BID9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(381, 130, 1, 'BID9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(382, 130, 1, 'BID9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(383, 130, 1, 'BID9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(384, 130, 1, 'BID9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(385, 130, 1, 'BID9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(386, 130, 1, 'BID9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(387, 130, 1, 'BID9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(388, 130, 1, 'BID9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(389, 130, 1, 'BID9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(390, 130, 1, 'BID9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:35', NULL),
(391, 130, 2, 'BID9', '0103279197', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(392, 130, 2, 'BID9', '0104875474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(393, 130, 2, 'BID9', '0093425519', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(394, 130, 2, 'BID9', '0105718054', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(395, 130, 2, 'BID9', '0104810496', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(396, 130, 2, 'BID9', '0085456340', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(397, 130, 2, 'BID9', '0109281890', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(398, 130, 2, 'BID9', '0109224872', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(399, 130, 2, 'BID9', '0103624404', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(400, 130, 2, 'BID9', '0106840313', 'Alpa', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(401, 130, 2, 'BID9', '3105325514', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(402, 130, 2, 'BID9', '0113027587', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(403, 130, 2, 'BID9', '0102837458', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(404, 130, 2, 'BID9', '0102036027', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(405, 130, 2, 'BID9', '0096231971', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(406, 130, 2, 'BID9', '0088724540', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(407, 130, 2, 'BID9', '0106227120', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(408, 130, 2, 'BID9', '0104579517', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(409, 130, 2, 'BID9', '0091347671', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(410, 130, 2, 'BID9', '0102154711', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(411, 130, 2, 'BID9', '0096940219', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(412, 130, 2, 'BID9', '0098744951', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(413, 130, 2, 'BID9', '3100496165', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(414, 130, 2, 'BID9', '0098544013', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(415, 130, 2, 'BID9', '0102574323', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(416, 130, 2, 'BID9', '0101937474', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(417, 130, 2, 'BID9', '083153252436', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(418, 130, 2, 'BID9', '0109680083', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(419, 130, 2, 'BID9', '0104903811', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(420, 130, 2, 'BID9', '0092150388', 'Hadir', '2024-11-17', 5, '2024-11-17 13:38:53', NULL),
(421, 125, 1, 'SDP8', '0106840313', 'Hadir', '2024-03-17', 4, '2024-11-17 13:18:43', NULL),
(422, 125, 2, 'SDP9', '0106840313', 'Hadir', '2024-03-17', 4, '2024-11-17 13:19:36', NULL),
(423, 126, 1, 'BIG9', '0106840313', 'Sakit', '2024-04-17', 4, '2024-11-17 13:33:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status_guru` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`id`, `nip`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `email`, `alamat`, `image`, `status_guru`, `created_at`, `updated_at`) VALUES
(12, '199611082022212010', 'Adinda Wijayanti, S.Pd', 'Perempuan', '1996-11-08', 'Jakarta', 'Islam', '082261622042', 'adindawijayanti23@gmail.com', 'Jl. Ikan Baung No. 34 LK. II, RT 30, Kelurahan Bumi Waras, Kec. Bumi Waras, ', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 20:02:51'),
(16, '199301172023211010', 'Galuh Wahyu Pramana, S.Pd', 'Laki-Laki', '1993-01-17', 'Bandar Lampung', 'Islam', '08976113884', 'wahyupramanagaluh@gmail.com', 'JL. Murai No. 21 VB 10 Polda 2, Kelurahan BERINGIN RAYA, Kec. Kemiling', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:53:11'),
(17, '199109182019032009', 'Iskadina Eka Putri, M.Pd', 'Perempuan', '1991-09-18', 'Jakarta', 'Islam', '089523101440', 'iskadinaekaputri@gmail.com', 'Jl. H. Komarudin Gg. Ismail 2 No. 63, RT 5, Kelurahan Rajabasa Raya, Kec. Rajabasa, ', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:53:29'),
(19, '199408062019032003', 'Klara Ken Laras, M.Pd', 'Perempuan', '1994-08-06', 'Bandar Lampung', 'Katholik', '085768227131', 'larasken08@gmail.com', 'Jl Ratu Dibalau Gg. Timbul No. 28, Kelurahan Tanjung Senang, Kec. Tanjung Senang', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:53:58'),
(20, '199501112020122017', 'Lela Tri Indriani, S.Pd', 'Perempuan', '1995-01-11', 'Bandar Lampung', 'Islam', '081957031825', 'lelatriindriani@gmail.com', 'Jl. Merpati No. 3 LK. II Perum Polda II, Kelurahan Beringin Raya, Kec. Kemiling', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:54:11'),
(21, 'kharina.oktaviana3@gmail.com', 'Kharina Oktaviana, S.Pd', 'Perempuan', '1992-10-17', 'Bandar Lampung', 'Islam', '082186446875', 'kharina.oktaviana3@gmail.com', 'JL. DR. SETIA BUDI NO.60 LK I, RT 3, Kelurahan KURIPAN, Kec. Teluk Betung Barat', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:53:45'),
(22, '199702082020122021', 'Shofura Farah Diba, S.Pd', 'Perempuan', '1997-02-08', 'PENAWAR JAYA', 'Islam', '082269399269', 'sfd.farah@gmail.com', 'MEKAR JAYA rt 2 rw 3 desa Mekar Jaya, Kec. Banjar Margo', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:57:37'),
(23, '199412182023212025', 'Rizki Samty Ayuningtyas, M.Pd', 'Perempuan', '1994-12-18', 'BANDAR LAMPUNG', 'Islam', '08111634599', 'rizkysamty94@gmail.com', 'Jl.TURI RAYA Gg. PALEM No. 28	LABUHAN DALAM,	Kec. Tanjung Senang', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:57:08'),
(24, '196410071990032004', 'Santini, S.Pd', 'Perempuan', '1964-10-07', 'Teluk Betung', 'Islam', '081369563904', 'tinisantini427@gmail.com', 'Jl Ciptomangunkusumo No 61 rt 0 rw 0, Desa SUMUR BATU, Kec. Teluk Betung Utara', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:57:20'),
(25, '197310091999032004', 'Ristiyana, S.Pd', 'Perempuan', '1973-10-09', 'Padang Ratu', 'Islam', '081369207337', 'ristiyanahasan@gmail.com', 'Jl. Cikditiro Perumahan Wismamas Estate Blok D 3 No. 9 Desa Beringin Raya, Kec. Kemilin', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:56:56'),
(26, '199608242023212013', 'Ani Sulastri, S.Pd', 'Perempuan', '1996-08-24', 'Bandar Lampung', 'Islam', '082380125893', 'anisulastri902@gmail.com', 'perumahan Pesawaran Residence Cluster Plamboyan Blok H No. 11', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:51:19'),
(28, 'annisaikalestari313@gmail.com', 'Annisa Ika Lestari, S.Pd', 'Perempuan', '1992-03-31', 'Bandar Lampung', 'Islam', '08139022226', 'annisaikalestari313@gmail.com', 'Jl. Untung Suropati Gg. Makarti No. 39 1', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:51:37'),
(29, '199203222022211004', 'M.H. Mudrik Mubarok, S.Pd', 'Laki-Laki', '1992-03-22', 'Bandar Lampung', 'Islam', '081280800926', 'mudrikmubarok22@gmail.com', 'JL.PRAMUKA GG.VANILI 3, LANGKAPURA, Kec. Langkapura', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:58:44'),
(30, '199610222019031002', 'Maskur Ahmad, S.Pd', 'Laki-Laki', '1996-10-22', 'Bukit Kemuning', 'Islam', '082376850835', 'maskurahmad83@gmail.com', 'Perumahan Pesawaran Residence Cluster Plamboyan Blok H No. 10, RT 23 RW 2, Negeri Sakti, Kec. Gedung', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:54:47'),
(31, '199306072023212027', 'Mentari Puspa Sari, S.Pd', 'Perempuan', '1993-06-07', 'Tanjung Karang', 'Islam', '08976001256', 'sarimentaripuspa@gmail.com', 'Jl. PURNAWIRAWAN. Gg. SWADAYA 3. LK.I, GUNUNG TERANG, Kec. Langkapura', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:55:17'),
(32, '197007122021212002', 'Supini, S.Pd', 'Perempuan', '1970-07-12', 'Gunung Terang', 'Islam', '081292964132', 'supinilp3333@gmail.com', 'Jl. Purnawirawan 1 No. 44, RT 3 RW 0, Kelurahan Gunung Terang, Kecamatan Langkapura', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:57:50'),
(35, '199511092022212009', 'Puteri Indah Sri Wahyuni, S.Pd', 'Perempuan', '1995-11-09', 'Bandar Lampung', 'Islam', '085763886392', 'puteriindah09@gmail.com', 'Jl Jati Dalam Gg. waru No. 91 RT. 18, Tanjung Raya, Kec. Kedamaian', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:55:29'),
(36, '197908262014072001', 'Rina Fitria, S.Pd', 'Perempuan', '1979-08-26', 'Tanjung Karang', 'Islam', '081272377741', 'inaega3@gmail.com', 'Jl H. Nasir No. 5 RT. 10, KOTA BARU, Kec. Tanjung Karang Timur', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:56:39'),
(37, 'resta.niriza02@gmail.com', 'Resta Niriza, S.Pd', 'Perempuan', '1995-09-02', 'Bandar Lampung', 'Islam', '082280149542', 'resta.niriza02@gmail.com', 'JL Mangris Blok Tm I No. 3, RT. 3, Way Halim Permai, Kec. Way Halim', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:55:42'),
(38, 'rifkifarindra0114@gmail.com', 'Rifki Farindra, S.Pd', 'Laki-Laki', '1993-12-01', 'Bandar Lampung', 'Islam', '081231801881', 'rifkifarindra0114@gmail.com', 'Jl. Imam Bonjol Gedong Air Gg. Durian, RT. 7, Gedung Air, Kec. Tanjung Karang Barat', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:56:29'),
(39, '199412192022212016', 'Defriyanti, S.Pd', 'Perempuan', '1994-12-19', 'Bandar Lampung', 'Islam', '082178948008', 'defriyanti64@gmail.com', 'Jl. Putri Balau No 148	Tanjung Agung Raya	Tanjung Agung Raya', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-19 11:09:55'),
(40, '199609042022212003', 'Devi Septiani, S.Pd', 'Perempuan', '1996-09-04', 'BandarÂ Lampung', 'Islam', '0895640010210', 'septiani.devi94@gmail.com', 'Jl. Teluk Bone I Gg. Masjid Jami Nurul Huda No. 71, LK.1   Kota Karang	Kec. Teluk Betung Timur', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:52:51'),
(41, '199407032023212033', 'Dian Puspita Sari, S.Pd', 'Perempuan', '1994-07-03', 'LAMONGAN', 'Islam', '082175753506', 'dianps023@gmail.com', 'Jl Tamin Gg. Sumur Santi	Sukajawa	Kec. Tanjung Karang Barat', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:53:01'),
(43, '197505112006041010', 'Bambang Budi Wahyudi, S.Pd', 'Laki-Laki', '1975-05-11', 'Bandar Lampung', 'Islam', '082281848577', 'bambangbudiwahyudi718@gmail.com', 'Jl. Bahari No. 58, RT 4, RW 0, Dusun Sukabaru, Kelurahan Panjang Utara, Kec. Panjang', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:52:26'),
(44, 'ramadhaniannisa378@gmail.com', 'Annisa Ramadhani, S.Pd', 'Perempuan', '1993-02-24', 'KEMILING', 'Islam', '082282450953', 'ramadhaniannisa378@gmail.com', 'JL. TEUKU CIK DITIRO GG. MELATI 3 NO. 33, RT 17, RW 7, Kelurahan SUMBEREJO, Kec. Kemiling', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:52:10'),
(45, 'mellydrmynti95@gmail.com', 'Melly Darmayanti, S.Pd', 'Perempuan', '1995-05-25', 'KOTA BUMI', 'Islam', '082178856969', 'mellydrmynti95@gmail.com', 'JL. PAJAJARAN GG.TERATAI NO.59 JAGABAYA II, Kec. Way Halim', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:55:00'),
(46, '198211212010012004', 'Suwartini,S.E', 'Perempuan', '1982-11-21', 'Rantau Temiang', 'Islam', '082178031116', 'tini211182@gmail.com', 'Jl.Perintis Kemerdekaan No 145, RT 2, RW 0, Kelurahan Tanjung Gading, Kec. Kedamaian', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:58:02'),
(47, 'yosiagustiyarini@gmail.com', 'Yosi Agustiya Rini, S.Pd', 'Perempuan', '1994-03-13', 'Bandar Lampung', 'Islam', '08981601092', 'yosiagustiyarini@gmail.com', 'Jl Pagar Alam Perumahan geriya Sejahtera Blok M No. 1, Kelurahan Gunung Terang, Kec. Langkapura', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:58:15'),
(48, '197906062005012020', 'Yuni Dian Sari, S.Pd', 'Perempuan', '1979-06-06', 'Tanjung Karang', 'Islam', '082376291068', 'yunidiansari06@gmail.com', 'Jl. Pulau Tegal GG Apel I No. 48 Lk. 2, Kelurahan Waydadi, Kec. Sukarame', 'default-profile-picture.jpg', 'Aktif', NULL, '2024-11-17 09:58:29'),
(55, 'anggimaretasiska220@gmail.com', 'Anggi Mareta Siska, S.Pd', 'Perempuan', '1996-03-22', 'Teluk Betung', 'Islam', '085788687303', 'anggimaretasiska220@gmail.com', 'JL KH A DAHLAN GG M  YUSUF/67 LK II', 'default-profile-picture.jpg', 'Aktif', '2024-06-02 19:07:22', '2024-11-17 09:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal_pelajaran`
--

CREATE TABLE `jadwal_pelajaran` (
  `id` int(11) NOT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `kode_mapel` varchar(10) DEFAULT NULL,
  `nip` varchar(50) DEFAULT NULL,
  `jam_mulai` time DEFAULT NULL,
  `jam_selesai` time DEFAULT NULL,
  `hari` varchar(20) DEFAULT NULL,
  `aktif` enum('Ya','Tidak') DEFAULT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jadwal_pelajaran`
--

INSERT INTO `jadwal_pelajaran` (`id`, `kode_kelas`, `kode_mapel`, `nip`, `jam_mulai`, `jam_selesai`, `hari`, `aktif`, `semester_id`, `created_at`, `updated_at`) VALUES
(2, '7A', 'PAK7', 'annisaikalestari313@gmail.com', '09:00:00', '09:40:00', 'Senin', 'Ya', 1, NULL, NULL),
(3, '7A', 'PKN7', 'annisaikalestari313@gmail.com', '10:00:00', '11:20:00', 'Senin', 'Ya', 1, NULL, NULL),
(4, '7A', 'MTK7', '199301172023211010', '11:20:00', '13:10:00', 'Senin', 'Ya', 1, NULL, NULL),
(5, '7A', 'BHL7', '199407032023212033', '13:10:00', '14:30:00', 'Senin', 'Ya', 1, NULL, NULL),
(37, '7A', 'PJS7', 'kharina.oktaviana3@gmail.com', '07:00:00', '08:20:00', 'Selasa', 'Ya', 1, NULL, NULL),
(38, '7A', 'IPS7', 'yosiagustiyarini@gmail.com', '08:20:00', '10:40:00', 'Selasa', 'Ya', 1, NULL, NULL),
(39, '7A', 'BIG7', '197906062005012020', '10:40:00', '13:10:00', 'Selasa', 'Ya', 1, NULL, NULL),
(40, '7A', 'IPA7', '199412182023212025', '07:00:00', '08:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(41, '7A', 'IFK7', '199109182019032009', '08:20:00', '09:40:00', 'Rabu', 'Ya', 1, NULL, NULL),
(42, '7A', 'BID7', '197007122021212002', '10:00:00', '11:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(43, '7A', 'PAI7', 'rifkifarindra0114@gmail.com', '11:20:00', '13:10:00', 'Rabu', 'Ya', 1, NULL, NULL),
(44, '7A', 'MTK7', '199301172023211010', '07:00:00', '08:20:00', 'Kamis', 'Ya', 1, NULL, NULL),
(45, '7A', 'IPA7', '199412182023212025', '08:20:00', '09:40:00', 'Kamis', 'Ya', 1, NULL, NULL),
(46, '7A', 'BKL7', '199511092022212009', '10:00:00', '10:40:00', 'Kamis', 'Ya', 1, NULL, NULL),
(47, '7A', 'BID7', '197007122021212002', '10:40:00', '13:10:00', 'Kamis', 'Ya', 1, NULL, NULL),
(49, '7B', 'PAI7', 'rifkifarindra0114@gmail.com', '07:40:00', '09:00:00', 'Senin', 'Ya', 1, NULL, NULL),
(51, '7B', 'IPA7', '199306072023212027', '10:40:00', '12:00:00', 'Senin', 'Ya', 1, NULL, NULL),
(52, '7B', 'BIG7', '197906062005012020', '12:30:00', '14:30:00', 'Senin', 'Ya', 1, NULL, NULL),
(53, '7B', 'MTK7', '199611082022212010', '07:00:00', '08:20:00', 'Selasa', 'Ya', 1, NULL, NULL),
(54, '7B', 'IFK7', '199109182019032009', '08:20:00', '09:40:00', 'Selasa', 'Ya', 1, NULL, NULL),
(55, '7B', 'BKL7', '199511092022212009', '10:00:00', '10:40:00', 'Selasa', 'Ya', 1, NULL, NULL),
(56, '7B', 'BID7', '197007122021212002', '10:40:00', '13:10:00', 'Selasa', 'Ya', 1, NULL, NULL),
(57, '7B', 'PJS7', 'kharina.oktaviana3@gmail.com', '07:00:00', '08:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(58, '7A', 'BID7', '197007122021212002', '08:20:00', '09:40:00', 'Rabu', 'Ya', 1, NULL, NULL),
(59, '7B', 'IPA7', '199306072023212027', '10:00:00', '11:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(60, '7B', 'PKN7', 'annisaikalestari313@gmail.com', '11:20:00', '13:10:00', 'Rabu', 'Ya', 1, NULL, NULL),
(61, '7B', 'SDP7', '199412182023212025', '07:00:00', '08:20:00', 'Kamis', 'Ya', 1, NULL, NULL),
(62, '7B', 'BHL7', '199407032023212033', '08:20:00', '09:40:00', 'Kamis', 'Ya', 1, NULL, NULL),
(63, '7B', 'PAK7', 'annisaikalestari313@gmail.com', '10:00:00', '10:40:00', 'Kamis', 'Ya', 1, NULL, NULL),
(64, '7B', 'IPS7', 'yosiagustiyarini@gmail.com', '10:40:00', '13:10:00', 'Kamis', 'Ya', 1, NULL, NULL),
(65, '7C', 'IPS7', 'yosiagustiyarini@gmail.com', '07:00:00', '09:40:00', 'Senin', 'Ya', 1, NULL, NULL),
(66, '7C', 'MTK7', '199608242023212013', '10:00:00', '11:20:00', 'Senin', 'Ya', 1, NULL, NULL),
(67, '7C', 'MTK7', '199608242023212013', '10:00:00', '11:20:00', 'Senin', 'Ya', 1, NULL, NULL),
(68, '7C', 'BHL7', '199407032023212033', '11:20:00', '13:10:00', 'Senin', 'Ya', 1, NULL, NULL),
(69, '7C', 'IPA7', '199306072023212027', '13:10:00', '14:30:00', 'Senin', 'Ya', 1, NULL, NULL),
(70, '7C', 'BID7', '197007122021212002', '07:00:00', '09:00:00', 'Selasa', 'Ya', 1, NULL, NULL),
(71, '7C', 'BID7', '197007122021212002', '07:00:00', '09:00:00', 'Selasa', 'Ya', 1, NULL, NULL),
(72, '7C', 'PJS7', 'kharina.oktaviana3@gmail.com', '09:00:00', '10:40:00', 'Selasa', 'Ya', 1, NULL, NULL),
(73, '7C', 'IPA7', '199306072023212027', '10:40:00', '12:00:00', 'Selasa', 'Ya', 1, NULL, NULL),
(74, '7C', 'BKL7', '199511092022212009', '12:30:00', '13:10:00', 'Selasa', 'Ya', 1, NULL, NULL),
(75, '7C', 'PKN7', 'annisaikalestari313@gmail.com', '07:00:00', '08:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(76, '7C', 'PAI7', 'rifkifarindra0114@gmail.com', '08:20:00', '09:40:00', 'Rabu', 'Ya', 1, NULL, NULL),
(77, '7C', 'IFK7', '199109182019032009', '10:00:00', '11:20:00', 'Rabu', 'Ya', 1, NULL, NULL),
(78, '7C', 'BID7', '197007122021212002', '11:20:00', '13:10:00', 'Rabu', 'Ya', 1, NULL, NULL),
(79, '7C', 'BID7', '197007122021212002', '11:20:00', '13:10:00', 'Rabu', 'Ya', 1, NULL, NULL),
(80, '7C', 'MTK7', '199608242023212013', '07:00:00', '08:20:00', 'Kamis', 'Ya', 1, NULL, NULL),
(81, '7C', 'BIG7', '199109182019032009', '08:20:00', '10:40:00', 'Kamis', 'Ya', 1, NULL, NULL),
(82, '7C', 'SDP7', '199412182023212025', '10:40:00', '12:00:00', 'Kamis', 'Ya', 1, NULL, NULL),
(83, '7C', 'SDP7', '199412182023212025', '10:40:00', '12:00:00', 'Kamis', 'Ya', 1, NULL, NULL),
(84, '7C', 'PAK7', 'annisaikalestari313@gmail.com', '12:30:00', '13:10:00', 'Kamis', 'Ya', 1, NULL, NULL),
(105, '7A', 'BIG7', '197906062005012020', '07:00:00', '08:30:00', 'Jumat', 'Ya', 1, NULL, '2024-09-14 03:38:55'),
(106, '7A', 'SDP7', '199611082022212010', '12:00:00', '12:30:00', 'Kamis', 'Ya', 1, '2024-05-15 20:32:14', '2024-09-14 04:56:53'),
(108, '8B', 'IPA8', '196410071990032004', '07:40:00', '09:00:00', 'Senin', 'Ya', 3, '2024-06-02 18:53:24', '2024-06-02 18:57:53'),
(109, '8B', 'BID8', '199501112020122017', '09:00:00', '10:40:00', 'Senin', 'Ya', 3, '2024-06-02 18:57:13', '2024-06-02 18:57:13'),
(110, '8B', 'MTK8', '199611082022212010', '10:40:00', '12:00:00', 'Senin', 'Ya', 3, '2024-06-02 18:58:46', '2024-06-02 18:58:46'),
(111, '8B', 'PAI8', 'rifkifarindra0114@gmail.com', '12:30:00', '14:30:00', 'Senin', 'Ya', 3, '2024-06-02 18:59:42', '2024-06-02 18:59:42'),
(112, '8B', 'BHL8', '199407032023212033', '07:00:00', '08:20:00', 'Selasa', 'Ya', 3, '2024-06-02 19:00:33', '2024-06-02 19:00:33'),
(113, '8B', 'SDP8', '199412192022212016', '08:20:00', '09:40:00', 'Selasa', 'Ya', 3, '2024-06-02 19:02:06', '2024-06-02 19:02:06'),
(114, '8B', 'SDP9', '199608242023212013', '10:00:00', '10:40:00', 'Selasa', 'Ya', 3, '2024-06-02 19:02:59', '2024-06-02 19:02:59'),
(115, '8B', 'TIK8', '199608242023212013', '10:00:00', '10:40:00', 'Selasa', 'Ya', 3, '2024-06-02 19:03:58', '2024-06-02 19:03:58'),
(116, '8B', 'BK8', 'anggimaretasiska220@gmail.com', '10:40:00', '11:20:00', 'Selasa', 'Ya', 3, '2024-06-02 19:08:27', '2024-06-02 19:08:27'),
(117, '8B', 'PKN8', 'annisaikalestari313@gmail.com', '11:20:00', '13:50:00', 'Selasa', 'Ya', 3, '2024-06-02 19:09:41', '2024-06-02 19:09:41'),
(118, '8B', 'BIG8', '197906062005012020', '07:00:00', '08:20:00', 'Rabu', 'Ya', 3, '2024-06-02 19:11:00', '2024-06-02 19:11:00'),
(119, '8B', 'MTK8', '199611082022212010', '08:20:00', '10:40:00', 'Rabu', 'Ya', 3, '2024-06-02 19:11:40', '2024-06-02 19:11:40'),
(120, '8B', 'IPS8', '197310091999032004', '10:40:00', '12:00:00', 'Rabu', 'Ya', 3, '2024-06-02 19:12:37', '2024-06-02 19:12:37'),
(121, '8B', 'BID8', '199501112020122017', '12:30:00', '13:50:00', 'Rabu', 'Ya', 3, '2024-06-02 19:13:24', '2024-06-02 19:13:24'),
(122, '8B', 'SDB8', 'mellydrmynti95@gmail.com', '07:00:00', '09:00:00', 'Kamis', 'Ya', 3, '2024-06-02 19:14:54', '2024-06-02 19:14:54'),
(123, '7A', 'SDP7', '199611082022212010', '15:00:00', '13:00:00', 'Jumat', 'Ya', 1, '2024-09-04 08:13:05', '2024-11-20 19:46:18'),
(125, '9A', 'SDP9', '199412192022212016', '08:00:00', '09:20:00', 'Senin', 'Ya', 5, '2024-11-17 04:40:17', '2024-11-17 04:40:17'),
(126, '9A', 'BIG9', '197908262014072001', '09:20:00', '10:55:00', 'Senin', 'Ya', 5, '2024-11-17 05:22:01', '2024-11-17 05:22:01'),
(127, '9A', 'PAI9', '199610222019031002', '10:55:00', '13:40:00', 'Senin', 'Ya', 5, '2024-11-17 05:22:57', '2024-11-17 05:22:57'),
(128, '9A', 'IPS9', '198211212010012004', '13:40:00', '15:00:00', 'Senin', 'Ya', 5, '2024-11-17 05:24:10', '2024-11-17 05:24:10'),
(129, '9A', 'BIG9', '197908262014072001', '07:30:00', '08:50:00', 'Selasa', 'Ya', 5, '2024-11-17 05:25:34', '2024-11-17 05:25:34'),
(130, '9A', 'BID9', '199408062019032003', '08:50:00', '10:10:00', 'Selasa', 'Ya', 5, '2024-11-17 05:26:39', '2024-11-17 05:26:39'),
(131, '9A', 'IPS9', '198211212010012004', '10:25:00', '11:45:00', 'Selasa', 'Ya', 5, '2024-11-17 05:27:34', '2024-11-17 05:27:34'),
(132, '9A', 'MTK9', '199702082020122021', '11:45:00', '14:20:00', 'Selasa', 'Ya', 5, '2024-11-17 05:28:36', '2024-11-17 05:29:02'),
(133, '9A', 'SDB9', 'resta.niriza02@gmail.com', '07:30:00', '09:30:00', 'Rabu', 'Ya', 5, '2024-11-17 05:31:02', '2024-11-17 05:31:02'),
(134, '9A', 'BID9', '199408062019032003', '09:30:00', '11:05:00', 'Rabu', 'Ya', 5, '2024-11-17 05:33:21', '2024-11-17 05:33:21'),
(135, '9A', 'MTK9', '199702082020122021', '11:05:00', '12:25:00', 'Rabu', 'Ya', 5, '2024-11-17 05:34:35', '2024-11-17 05:34:35'),
(136, '9A', 'BHL9', 'mellydrmynti95@gmail.com', '13:00:00', '14:20:00', 'Rabu', 'Ya', 5, '2024-11-17 05:36:08', '2024-11-17 05:36:08'),
(137, '9A', 'PJS9', '199203222022211004', '07:30:00', '09:30:00', 'Kamis', 'Ya', 5, '2024-11-17 05:37:45', '2024-11-17 05:37:45'),
(138, '9A', 'BID9', '199408062019032003', '09:30:00', '11:05:00', 'Kamis', 'Ya', 5, '2024-11-17 05:38:26', '2024-11-17 05:38:26'),
(139, '9A', 'TIK9', '199608242023212013', '11:05:00', '11:45:00', 'Kamis', 'Ya', 5, '2024-11-17 05:41:06', '2024-11-17 05:49:03'),
(140, '9A', 'IPA9', '197505112006041010', '13:00:00', '14:20:00', 'Kamis', 'Ya', 5, '2024-11-17 05:42:39', '2024-11-17 05:42:39'),
(141, '9A', 'PKN9', '199609042022212003', '07:30:00', '09:30:00', 'Jumat', 'Ya', 5, '2024-11-17 05:44:43', '2024-11-17 05:44:43'),
(142, '9A', 'PAK9', '199609042022212003', '09:45:00', '10:10:00', 'Jumat', 'Ya', 5, '2024-11-17 05:45:16', '2024-11-17 05:45:16'),
(143, '9A', 'BKL9', '199511092022212009', '10:10:00', '10:35:00', 'Jumat', 'Ya', 5, '2024-11-17 05:46:33', '2024-11-17 05:46:33'),
(144, '9A', 'IPA9', '197505112006041010', '10:35:00', '11:25:00', 'Jumat', 'Ya', 5, '2024-11-17 05:49:47', '2024-11-17 05:49:47'),
(145, '9D', 'SDP9', '199412192022212016', '10:15:00', '11:35:00', 'Senin', 'Ya', 5, '2024-11-17 06:07:54', '2024-11-17 06:07:54'),
(146, '9E', 'SDP9', '199412192022212016', '13:40:00', '15:00:00', 'Senin', 'Ya', 5, '2024-11-17 06:08:46', '2024-11-17 06:08:46'),
(147, '9C', 'SDP9', '199412192022212016', '08:50:00', '10:10:00', 'Rabu', 'Ya', 5, '2024-11-17 06:10:27', '2024-11-17 06:10:27'),
(148, '9B', 'SDP9', '199412192022212016', '13:00:00', '14:20:00', 'Rabu', 'Ya', 5, '2024-11-17 06:11:20', '2024-11-17 06:11:20'),
(149, '8D', 'SDP8', '199412192022212016', '07:30:00', '08:50:00', 'Jumat', 'Ya', 3, '2024-11-17 06:12:56', '2024-11-17 06:12:56'),
(150, '8C', 'SDP9', '199412192022212016', '09:45:00', '10:35:00', 'Jumat', 'Ya', 3, '2024-11-17 06:13:31', '2024-11-17 06:13:31'),
(151, '8A', 'SDP9', '199412192022212016', '11:05:00', '12:25:00', 'Kamis', 'Ya', 3, '2024-11-17 06:14:27', '2024-11-17 06:14:27'),
(153, '7A', 'BHL7', '199611082022212010', '18:00:00', '16:00:00', 'Selasa', 'Ya', 1, '2024-11-20 19:49:25', '2024-11-20 19:55:35'),
(154, '7A', 'BHL7', 'anggimaretasiska220@gmail.com', '19:00:00', '14:15:00', 'Selasa', 'Ya', 1, '2024-11-20 19:55:56', '2024-11-20 21:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `tingkat_kelas` enum('7','8','9') DEFAULT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nip`, `kode_kelas`, `tingkat_kelas`, `nama`, `created_at`, `updated_at`) VALUES
(1, '199301172023211010', '7A', '7', 'Kelas 7A', NULL, '2024-11-17 10:03:38'),
(2, '199611082022212010', '7B', '7', 'Kelas 7B', NULL, '2024-09-14 03:34:03'),
(3, '197906062005012020', '7C', '7', 'Kelas 7C', NULL, '2024-09-14 03:54:54'),
(5, '199501112020122017', '8A', '8', 'Kelas 8A', NULL, '2024-09-14 04:53:06'),
(6, '199702082020122021', '8B', '8', 'Kelas 8B', NULL, '2024-09-14 04:53:11'),
(7, '199412182023212025', '8C', '8', 'Kelas 8C', NULL, '2024-09-14 04:53:17'),
(8, '196410071990032004', '8D', '8', 'Kelas 8D', NULL, '2024-09-14 04:53:23'),
(10, '199412192022212016', '9A', '9', 'Kelas 9A', NULL, '2024-11-17 08:04:54'),
(11, '199109182019032009', '9B', '9', 'Kelas 9B', NULL, '2024-11-17 10:03:52'),
(12, '199408062019032003', '9C', '9', 'Kelas 9C', NULL, '2024-11-17 10:03:58'),
(13, '199609042022212003', '9D', '9', 'Kelas 9D', NULL, '2024-11-17 10:04:19'),
(14, '198211212010012004', '9E', '9', 'Kelas 9E', NULL, '2024-11-17 10:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran`
--

CREATE TABLE `mata_pelajaran` (
  `id` int(11) NOT NULL,
  `kode_mapel` varchar(10) DEFAULT NULL,
  `tingkat_kelas` int(11) DEFAULT NULL,
  `nama` varchar(120) DEFAULT NULL,
  `nilai_kkm` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mata_pelajaran`
--

INSERT INTO `mata_pelajaran` (`id`, `kode_mapel`, `tingkat_kelas`, `nama`, `nilai_kkm`, `created_at`, `updated_at`) VALUES
(1, 'SDP7', 7, 'Seni dan Prakarya', 65, NULL, NULL),
(2, 'PAK7', 7, 'Pendidikan Anti Korupsi', 65, NULL, '2024-11-17 09:59:48'),
(3, 'MTK7', 7, 'Matematika', 65, NULL, '2024-11-17 09:59:44'),
(4, 'BHL7', 7, 'Bahasa Lampung', 65, NULL, '2024-09-11 05:31:47'),
(10, 'PKN7', 7, 'Pendidikan Kewarganegaraan', 65, NULL, '2024-11-17 09:59:41'),
(11, 'PAI7', 7, 'Pendidikan Agama Islam', 65, NULL, '2024-11-17 09:59:38'),
(12, 'PAI8', 8, 'Pendidikan Agama Islam', 70, NULL, '2024-11-17 10:00:18'),
(14, 'PAI9', 9, 'Pendidikan Agama Islam', 75, NULL, '2024-11-17 08:07:22'),
(15, 'PKN8', 8, 'Pendidikan Kewarganegaraan', 70, NULL, '2024-11-17 10:01:11'),
(16, 'PKN9', 9, 'Pendidikan Kewarganegaraan', 75, NULL, '2024-11-17 08:07:15'),
(18, 'BID7', 7, 'Bahasa Indonesia', 65, NULL, '2024-09-11 05:32:10'),
(20, 'BID8', 8, 'Bahasa Indonesia', 70, NULL, '2024-09-11 05:32:15'),
(22, 'BID9', 9, 'Bahasa Indonesia', 75, NULL, '2024-09-11 05:32:19'),
(25, 'BIG7', 7, 'Bahasa Inggris', 65, NULL, '2024-09-11 05:32:23'),
(27, 'BIG8', 8, 'Bahasa Inggris', 70, NULL, '2024-09-11 05:32:28'),
(28, 'BIG9', 9, 'Bahasa Inggris', 75, NULL, '2024-09-11 05:32:32'),
(30, 'MTK8', 8, 'Matematika', 70, NULL, '2024-11-17 10:00:26'),
(31, 'MTK9', 9, 'Matematika', 75, NULL, '2024-11-17 08:07:32'),
(35, 'IPA7', 7, 'Ilmu Pengetahuan Alam', 65, NULL, '2024-11-17 09:59:35'),
(36, 'IPA8', 8, 'Ilmu Pengetahuan Alam', 70, NULL, '2024-11-17 10:00:05'),
(37, 'IPA9', 9, 'Ilmu Pengetahuan Alam', 75, NULL, '2024-11-17 08:07:26'),
(39, 'IPS7', 7, 'Ilmu Pengetahuan Sosial', 65, NULL, '2024-11-17 09:59:31'),
(40, 'IPS8', 8, 'Ilmu Pengetahuan Sosial', 70, NULL, '2024-11-17 10:05:45'),
(43, 'IPS9', 9, 'Ilmu Pengetahuan Sosial', 75, NULL, '2024-11-17 08:07:11'),
(45, 'SDB8', 8, 'Seni Budaya', 70, NULL, '2024-11-17 10:00:14'),
(48, 'SDB9', 9, 'Seni Budaya', 75, NULL, '2024-11-17 08:07:19'),
(49, 'PJS7', 7, 'Penjaskes', 65, NULL, '2024-11-17 10:05:41'),
(51, 'PJS8', 8, 'Penjaskes', 70, NULL, '2024-11-17 10:00:21'),
(53, 'PJS9', 9, 'Pendidikan Jasmani dan Kesehatan', 75, NULL, '2024-11-17 08:34:53'),
(55, 'SDP8', 8, 'Seni dan Prakarya', 70, NULL, '2024-11-17 10:05:31'),
(56, 'SDP9', 9, 'Seni dan Prakarya', 75, NULL, '2024-11-17 08:07:42'),
(57, 'BHL8', 8, 'Bahasa Lampung', 70, NULL, '2024-09-11 05:32:02'),
(58, 'BHL9', 9, 'Bahasa Lampung', 75, NULL, '2024-09-11 05:32:06'),
(62, 'PAK8', 8, 'Pendidikan Anti Korupsi', 70, NULL, '2024-11-17 10:01:15'),
(63, 'PAK9', 9, 'Pendidikan Anti Korupsi', 75, NULL, '2024-11-17 10:01:25'),
(64, 'BKL7', 7, 'Bimbingan Konseling', 65, NULL, '2024-11-17 10:05:07'),
(65, 'BKL8', 8, 'Bimbingan Konseling', 70, NULL, '2024-11-17 10:05:35'),
(66, 'BKL9', 9, 'Bimbingan Konseling', 75, NULL, '2024-11-17 08:08:31'),
(71, 'TIK8', 8, 'TIK/Informatika', 70, '2024-06-02 19:03:21', '2024-11-17 10:00:00'),
(73, 'TIK9', 9, 'TIK/Informatika', 75, '2024-11-17 05:47:34', '2024-11-17 05:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `mata_pelajaran_predikat`
--

CREATE TABLE `mata_pelajaran_predikat` (
  `id` int(11) NOT NULL,
  `id_mata_pelajaran` int(11) DEFAULT NULL,
  `predikat` varchar(2) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `nilai_min` float DEFAULT NULL,
  `nilai_max` float DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mata_pelajaran_predikat`
--

INSERT INTO `mata_pelajaran_predikat` (`id`, `id_mata_pelajaran`, `predikat`, `keterangan`, `nilai_min`, `nilai_max`, `created_at`, `updated_at`) VALUES
(5, 2, 'A', 'Sample Nilai A', 80, 100, '2024-09-03 23:28:48', '2024-09-03 23:28:48'),
(6, 2, 'B', 'Sample Nilai B', 50, 79, '2024-09-03 23:29:15', '2024-09-03 23:29:15'),
(7, 2, 'C', 'Sample Nilai C', 20, 49, '2024-09-03 23:34:22', '2024-09-03 23:34:22'),
(8, 69, 'A', 'Test Bahasa Inggris', 85, 100, '2024-09-04 08:25:35', '2024-09-04 08:25:35'),
(9, 69, 'B', 'Test Kalo B', 60, 79, '2024-09-04 08:26:07', '2024-09-04 08:26:07'),
(10, 69, 'C', 'Test Kalo C', 0, 59, '2024-09-04 08:26:27', '2024-09-04 08:26:27'),
(11, 25, 'A', 'Test Kalo A', 74, 100, '2024-09-04 08:30:32', '2024-09-04 08:30:32'),
(12, 25, 'B', 'Test Kalo B', 60, 73.9, '2024-09-04 08:30:48', '2024-09-04 08:34:10'),
(13, 25, 'C', 'Test Kalo C', 40, 59.9, '2024-09-04 08:31:00', '2024-09-04 08:34:16'),
(14, 73, 'A', 'Siswa menunjukkan pemahaman yang sangat baik terhadap konsep-konsep Teknologi Informasi dan Komunikasi/Informatika. Aktif dalam pembelajaran, mampu menerapkan teknologi secara kreatif, dan menyelesaikan tugas dengan sangat baik serta tepat waktu.', 85, 100, '2024-11-17 08:10:11', '2024-11-17 08:10:11'),
(15, 73, 'B', 'Siswa memahami konsep-konsep dasar Teknologi Informasi dan Komunikasi/Informatika dengan baik. Mampu menyelesaikan tugas dengan cukup baik dan menunjukkan upaya yang baik dalam mengembangkan keterampilan teknologinya.', 75, 85, '2024-11-17 08:11:05', '2024-11-17 08:11:05'),
(16, 73, 'C', 'Siswa memahami sebagian konsep dasar Teknologi Informasi dan Komunikasi/Informatika, namun perlu lebih banyak bimbingan dalam menguasai materi. Diharapkan dapat meningkatkan konsistensi dalam menyelesaikan tugas dan memperhatikan detail dalam pembelajaran.', 50, 75, '2024-11-17 08:11:48', '2024-11-17 08:11:48'),
(17, 43, 'A', 'Siswa menunjukkan pemahaman yang sangat baik terhadap materi Ilmu Pengetahuan Sosial. Aktif dalam diskusi, mampu menganalisis peristiwa sosial secara kritis, serta menyelesaikan tugas dan proyek dengan sangat baik dan tepat waktu.', 85, 100, '2024-11-17 08:13:30', '2024-11-17 08:13:36'),
(18, 43, 'B', 'Siswa memiliki pemahaman yang baik terhadap materi Ilmu Pengetahuan Sosial. Mampu menyelesaikan tugas dengan cukup baik dan berkontribusi positif dalam diskusi, meskipun masih perlu meningkatkan analisis dan konsistensi dalam belajar.', 75, 85, '2024-11-17 08:14:36', '2024-11-17 08:14:36'),
(19, 43, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Ilmu Pengetahuan Sosial. Diperlukan usaha lebih untuk memahami konsep-konsep dasar dan meningkatkan partisipasi dalam kegiatan pembelajaran. Diharapkan siswa dapat lebih fokus dan aktif dalam mengikuti pelajaran.', 50, 75, '2024-11-17 08:15:04', '2024-11-17 08:15:04'),
(20, 16, 'A', 'Siswa menunjukkan pemahaman yang sangat baik terhadap konsep-konsep Pendidikan Kewarganegaraan. Aktif berpartisipasi dalam diskusi, mampu menerapkan nilai-nilai kewarganegaraan dalam kehidupan sehari-hari, serta selalu menunjukkan sikap tanggung jawab dan kepedulian terhadap lingkungan sosial. Tugas dan ujian diselesaikan dengan sangat baik dan tepat waktu.', 85, 100, '2024-11-17 08:16:10', '2024-11-17 08:16:10'),
(21, 16, 'B', 'Siswa memiliki pemahaman yang baik terhadap materi Pendidikan Kewarganegaraan. Mampu menerapkan sebagian besar nilai-nilai kewarganegaraan dengan baik dalam kehidupan sehari-hari dan aktif dalam diskusi. Namun, masih perlu meningkatkan pemahaman dan partisipasi dalam beberapa topik untuk mencapai hasil yang lebih maksimal.', 75, 85, '2024-11-17 08:16:49', '2024-11-17 08:16:49'),
(22, 16, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Pendidikan Kewarganegaraan. Masih perlu lebih banyak perhatian dalam memahami konsep-konsep dasar dan kurang aktif dalam diskusi kelas. Diharapkan siswa dapat meningkatkan partisipasi dan usaha dalam mengikuti pelajaran agar dapat menguasai materi dengan lebih baik.', 50, 75, '2024-11-17 08:17:09', '2024-11-17 08:17:09'),
(23, 48, 'A', 'Siswa menunjukkan bakat dan pemahaman yang luar biasa dalam mata pelajaran Seni Budaya. Sangat kreatif dalam berkarya, baik dalam seni rupa, seni musik, maupun seni pertunjukan. Siswa selalu aktif berpartisipasi dalam setiap kegiatan praktikum dan mampu menghasilkan karya yang berkualitas tinggi.', 85, 100, '2024-11-17 08:18:39', '2024-11-17 08:22:36'),
(24, 48, 'B', 'Siswa memiliki pemahaman yang baik dalam mata pelajaran Seni Budaya. Mampu menghasilkan karya seni dengan kreativitas yang cukup baik dan aktif dalam mengikuti kegiatan praktikum. Siswa menunjukkan minat dan apresiasi terhadap berbagai bentuk seni, meskipun masih perlu meningkatkan kualitas dan kedalaman karya dalam beberapa aspek.', 75, 85, '2024-11-17 08:19:12', '2024-11-17 08:19:12'),
(25, 48, 'C', 'Siswa menunjukkan pemahaman yang terbatas dalam mata pelajaran Seni Budaya. Partisipasinya dalam kegiatan praktikum masih perlu ditingkatkan, dan hasil karya yang dihasilkan belum maksimal. Diharapkan siswa dapat lebih fokus dan berusaha lebih keras untuk meningkatkan kreativitas serta keterampilan dalam berbagai bentuk seni.', 50, 75, '2024-11-17 08:19:36', '2024-11-17 08:19:36'),
(26, 14, 'A', 'Siswa menunjukkan pemahaman yang sangat baik terhadap materi Pendidikan Agama Islam dan mengaplikasikannya dengan baik dalam kehidupan sehari-hari. Siswa aktif dalam mengikuti kegiatan keagamaan, disiplin dalam menjalankan ibadah, dan selalu menunjukkan sikap positif di kelas.', 85, 100, '2024-11-17 08:23:53', '2024-11-17 08:25:16'),
(27, 14, 'B', 'Siswa memiliki pemahaman yang baik tentang materi Pendidikan Agama Islam dan mampu menerapkannya dalam kehidupan sehari-hari. Namun, masih perlu meningkatkan partisipasi dan pemahaman pada beberapa topik tertentu untuk hasil yang lebih optimal.', 75, 85, '2024-11-17 08:25:32', '2024-11-17 08:25:32'),
(28, 14, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Pendidikan Agama Islam. Diperlukan usaha lebih dalam memahami konsep-konsep dasar dan meningkatkan partisipasi dalam pembelajaran agar dapat lebih mengaplikasikan nilai-nilai Islam dalam kehidupan sehari-hari.', 50, 75, '2024-11-17 08:25:46', '2024-11-17 08:25:46'),
(29, 37, 'A', 'Siswa menunjukkan pemahaman yang sangat baik terhadap materi Ilmu Pengetahuan Alam. Siswa aktif dalam diskusi, mampu menerapkan konsep-konsep IPA dalam kehidupan sehari-hari, dan selalu menghasilkan pekerjaan yang berkualitas tinggi. Selain itu, siswa menunjukkan minat dan rasa ingin tahu yang besar terhadap topik-topik IPA.', 85, 100, '2024-11-17 08:27:23', '2024-11-17 08:27:23'),
(30, 37, 'B', 'Siswa memahami materi Ilmu Pengetahuan Alam dengan baik. Meskipun demikian, masih perlu peningkatan dalam beberapa topik untuk mencapai pemahaman yang lebih mendalam. Siswa aktif dalam pembelajaran dan mampu menyelesaikan tugas dengan baik.', 75, 85, '2024-11-17 08:27:40', '2024-11-17 08:27:40'),
(31, 37, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Ilmu Pengetahuan Alam. Diperlukan usaha lebih untuk memahami konsep-konsep dasar IPA. Partisipasi dalam kegiatan pembelajaran dan kualitas pekerjaan masih perlu ditingkatkan.', 50, 75, '2024-11-17 08:27:53', '2024-11-17 08:27:53'),
(32, 28, 'A', 'Siswa memiliki pemahaman yang sangat baik dalam Bahasa Inggris, baik dalam keterampilan berbicara, menulis, membaca, maupun mendengarkan. Siswa aktif berpartisipasi dalam diskusi dan selalu menunjukkan kemampuan yang sangat baik dalam setiap tugas dan ujian. Kemampuan bahasa Inggrisnya terlihat dalam penerapan yang tepat dan lancar.', 85, 100, '2024-11-17 08:28:29', '2024-11-17 08:28:29'),
(33, 28, 'B', 'Siswa memahami materi Bahasa Inggris dengan baik dan dapat menerapkannya dalam komunikasi sehari-hari. Meskipun terkadang masih perlu peningkatan dalam beberapa aspek, seperti kosakata dan struktur kalimat, siswa secara keseluruhan menunjukkan kemajuan yang baik.', 75, 85, '2024-11-17 08:28:41', '2024-11-17 08:28:41'),
(34, 28, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Bahasa Inggris. Perlu lebih banyak usaha untuk meningkatkan kemampuan berbicara, menulis, dan pemahaman tata bahasa. Partisipasi dalam kelas dan tugas perlu ditingkatkan agar dapat mencapai pemahaman yang lebih baik.', 50, 75, '2024-11-17 08:29:01', '2024-11-17 08:29:01'),
(35, 53, 'A', 'Siswa menunjukkan kemampuan fisik dan teknik yang sangat baik dalam setiap kegiatan olahraga. Aktif dalam semua aktivitas, selalu menunjukkan semangat yang tinggi, serta memiliki keterampilan yang sangat baik dalam berbagai cabang olahraga. Siswa juga selalu menjaga kesehatan dan kebugaran tubuh dengan baik.', 85, 100, '2024-11-17 08:34:03', '2024-11-17 08:34:03'),
(36, 53, 'B', 'Siswa memiliki kemampuan fisik dan teknik yang baik dalam kegiatan olahraga. Meskipun ada beberapa aspek yang masih perlu diperbaiki, siswa secara keseluruhan aktif dan menunjukkan kemajuan yang positif dalam pembelajaran. Siswa juga menjaga kebugaran tubuh dengan cukup baik.', 75, 85, '2024-11-17 08:34:15', '2024-11-17 08:34:15'),
(37, 53, 'C', 'Siswa menunjukkan kemampuan fisik dan teknik yang perlu banyak diperbaiki. Partisipasi dalam kegiatan olahraga kurang maksimal, dan perlu lebih banyak usaha untuk meningkatkan keterampilan serta menjaga kebugaran tubuh.', 50, 75, '2024-11-17 08:34:26', '2024-11-17 08:34:26'),
(38, 31, 'A', 'Siswa memiliki pemahaman yang sangat baik terhadap konsep-konsep matematika. Siswa mampu menyelesaikan soal-soal dengan tepat dan logis, serta aktif dalam pembelajaran dengan menunjukkan kemampuan analitis yang sangat baik.', 85, 100, '2024-11-17 09:37:51', '2024-11-17 09:37:51'),
(39, 31, 'B', 'Siswa memahami materi matematika dengan baik dan mampu menyelesaikan sebagian besar soal dengan benar. Namun, masih perlu meningkatkan pemahaman pada beberapa konsep agar hasil belajar lebih maksimal.', 75, 85, '2024-11-17 09:38:03', '2024-11-17 09:38:03'),
(40, 31, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap konsep-konsep matematika. Perlu meningkatkan usaha dalam memahami materi dan menyelesaikan soal-soal dengan lebih baik.', 50, 75, '2024-11-17 09:38:15', '2024-11-17 09:38:15'),
(41, 22, 'A', 'Siswa menunjukkan kemampuan yang sangat baik dalam memahami, menulis, berbicara, dan membaca teks Bahasa Indonesia. Siswa aktif berpartisipasi dalam diskusi, mampu menyusun teks dengan baik, serta menunjukkan kreativitas dan ketelitian dalam penggunaan bahasa.', 85, 100, '2024-11-17 09:39:01', '2024-11-17 09:39:01'),
(42, 22, 'B', 'Siswa memiliki pemahaman yang baik dalam mata pelajaran Bahasa Indonesia. Mampu menulis dan berbicara dengan cukup baik, meskipun masih perlu meningkatkan penguasaan pada beberapa aspek, seperti penggunaan tata bahasa dan pengembangan ide.', 75, 85, '2024-11-17 09:39:16', '2024-11-17 09:39:16'),
(43, 22, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap materi Bahasa Indonesia. Perlu meningkatkan kemampuan dalam menulis, membaca, dan berbicara agar lebih lancar dan sesuai dengan kaidah bahasa.', 50, 75, '2024-11-17 09:39:31', '2024-11-17 09:39:31'),
(44, 56, 'A', 'Siswa menunjukkan kreativitas dan keterampilan yang sangat baik dalam bidang Seni dan Prakarya. Siswa aktif, inovatif, dan mampu menghasilkan karya yang berkualitas dengan teknik yang tepat dan rapi.', 85, 100, '2024-11-17 09:41:47', '2024-11-17 09:41:47'),
(45, 56, 'B', 'Siswa memiliki pemahaman dan keterampilan yang baik dalam bidang Seni dan Prakarya. Mampu menghasilkan karya dengan cukup baik, meskipun masih perlu peningkatan dalam kreativitas dan ketelitian.', 75, 85, '2024-11-17 09:42:03', '2024-11-17 09:42:03'),
(46, 56, 'C', 'Siswa menunjukkan pemahaman dan keterampilan yang terbatas dalam bidang Seni dan Prakarya. Diperlukan usaha lebih untuk meningkatkan kreativitas, ketelitian, dan konsistensi dalam menyelesaikan tugas.', 50, 75, '2024-11-17 09:42:15', '2024-11-17 09:42:15'),
(47, 58, 'A', 'Siswa menunjukkan pemahaman yang sangat baik dalam Bahasa Lampung, baik dalam membaca, menulis, berbicara, maupun mendengarkan. Siswa aktif berpartisipasi dalam pembelajaran dan mampu menggunakan Bahasa Lampung dengan lancar dan tepat.', 85, 100, '2024-11-17 09:43:07', '2024-11-17 09:43:07'),
(48, 58, 'B', 'Siswa memiliki pemahaman yang baik terhadap Bahasa Lampung. Mampu membaca, menulis, berbicara, dan mendengarkan dengan cukup baik, meskipun masih perlu meningkatkan kelancaran dan ketepatan dalam beberapa aspek.', 75, 85, '2024-11-17 09:43:18', '2024-11-17 09:43:18'),
(49, 58, 'C', 'Siswa menunjukkan pemahaman yang terbatas terhadap Bahasa Lampung. Perlu lebih banyak latihan dalam membaca, menulis, berbicara, dan mendengarkan untuk meningkatkan penguasaan bahasa.', 50, 75, '2024-11-17 09:43:31', '2024-11-17 09:43:31'),
(50, 66, 'A', 'Siswa menunjukkan sikap dan perilaku yang sangat baik dalam pembelajaran Bimbingan Konseling. Mampu memahami dan menerapkan nilai-nilai pengembangan diri, menunjukkan keterbukaan dalam menerima bimbingan, serta aktif mencari solusi atas permasalahan secara mandiri.', 85, 100, '2024-11-17 09:44:15', '2024-11-17 09:44:15'),
(51, 66, 'B', 'Siswa memiliki pemahaman yang baik terhadap materi Bimbingan Konseling dan mampu mengaplikasikan sebagian besar nilai pengembangan diri. Meskipun begitu, masih diperlukan peningkatan dalam konsistensi dan keberanian untuk mengatasi tantangan.', 75, 85, '2024-11-17 09:44:29', '2024-11-17 09:44:29'),
(52, 66, 'C', 'Siswa menunjukkan pemahaman yang terbatas dalam materi Bimbingan Konseling. Diperlukan usaha lebih untuk meningkatkan keterbukaan, partisipasi, dan kemampuan mengelola pengembangan diri secara mandiri.', 50, 75, '2024-11-17 09:44:45', '2024-11-17 09:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `on` enum('cms','web') NOT NULL DEFAULT 'cms' COMMENT 'cms: menu for cms, web: menu for web',
  `type` enum('header','item') NOT NULL DEFAULT 'item',
  `route` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `name`, `on`, `type`, `route`, `icon`, `ordering`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Dashboard', 'cms', 'item', 'cms.dashboard', 'bi bi-grid-fill', 1, NULL, NULL),
(2, NULL, 'Daftar Mata Pelajaran', 'cms', 'item', 'cms.mata-pelajaran', 'bi bi-server', 5, NULL, '2024-05-02 04:36:53'),
(44, NULL, 'Data Modul', 'cms', 'item', 'cms.modul', 'bi bi-list-task', 8, '2024-04-27 01:13:16', '2024-05-01 22:59:47'),
(59, NULL, 'Daftar Jadwal', 'cms', 'item', 'cms.jadwal', 'bi bi-card-checklist', 6, '2024-05-01 04:34:26', '2024-05-01 22:58:58'),
(61, NULL, 'Daftar Guru', 'cms', 'item', 'cms.guru', 'bi bi-person-lines-fill', 2, '2024-05-01 22:55:04', '2024-05-01 22:58:01'),
(62, NULL, 'Daftar Siswa', 'cms', 'item', 'cms.siswa', 'bi bi-person', 3, '2024-05-01 22:56:57', '2024-05-01 22:57:50'),
(63, NULL, 'Nilai', 'cms', 'item', 'cms.nilai', 'bi bi-book-half', 7, '2024-05-02 05:22:19', '2024-05-02 05:22:19'),
(64, NULL, 'Daftar Kelas', 'cms', 'item', 'cms.kelas', 'bi bi-boxes', 4, '2024-05-02 17:32:09', '2024-05-02 17:32:09'),
(65, NULL, 'Absensi', 'cms', 'item', 'cms.absensi', 'bi bi-person-check', 2, '2024-05-03 18:47:59', '2024-05-03 18:47:59'),
(66, NULL, 'Nilai', 'cms', 'item', 'cms.nilai-guru', 'bi bi-book-half', 6, '2024-05-04 21:00:56', '2024-05-04 21:00:56'),
(67, NULL, 'Daftar Semester', 'cms', 'item', 'cms.semester', 'bi bi-book-half', 10, '2024-05-04 21:00:56', '2024-05-04 21:00:56'),
(68, NULL, 'Kenaikan', 'cms', 'item', 'cms.kenaikan', 'bi bi-book-half', 9, '2024-05-04 21:00:56', '2024-05-04 21:00:56'),
(69, NULL, 'Daftar Predikat', 'cms', 'item', 'cms.predikat', 'bi bi-book-half', 9, '2024-05-04 21:00:56', '2024-05-04 21:00:56'),
(70, NULL, 'Wali Kelas', 'cms', 'item', 'cms.wali-murid', 'bi bi-book-half', 9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_01_021912_create_jobs_table', 1),
(6, '2023_12_01_021923_create_sessions_table', 1),
(7, '2023_12_01_021957_create_permission_tables', 1),
(8, '2023_12_02_094554_create_menus', 1),
(9, '2023_12_10_135057_create_heros', 1),
(10, '2023_12_10_135135_create_taglines', 1),
(11, '2023_12_10_135158_create_about_us', 1),
(12, '2023_12_10_135238_create_positions', 1),
(13, '2023_12_10_135403_create_staffs', 1),
(14, '2023_12_10_135535_create_majors', 1),
(15, '2023_12_10_135658_create_extracurriculars', 1),
(16, '2023_12_10_135747_create_alumni_testimonials', 1),
(17, '2023_12_10_135841_create_articles', 1),
(18, '2023_12_10_135944_create_master_ppdbs', 1),
(19, '2023_12_10_140144_create_ppdbs', 1),
(20, '2023_12_10_221423_change_table_name_from_heros_to_heroes', 1),
(21, '2023_12_11_014732_add_slug_to_articles', 1),
(22, '2023_12_15_202418_create_category_articles', 1),
(23, '2023_12_15_202511_add_category_to_articles', 1),
(24, '2023_12_15_203823_add_order_to_heros', 1),
(25, '2023_12_15_203858_add_order_to_taglines', 1),
(26, '2023_12_15_203917_add_order_to_positions', 1),
(27, '2023_12_15_203938_add_order_to_staffs', 1),
(28, '2023_12_15_203955_add_order_to_majors', 1),
(29, '2023_12_15_204015_add_order_to_extracurriculars', 1),
(30, '2023_12_16_120200_create_gallery_categories', 1),
(31, '2023_12_16_120209_create_galleries', 1),
(32, '2023_12_16_122354_create_partners_table', 1),
(33, '2023_12_16_123446_create_facilities_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 15),
(2, 'App\\Models\\User', 16),
(2, 'App\\Models\\User', 17),
(2, 'App\\Models\\User', 18),
(2, 'App\\Models\\User', 22),
(2, 'App\\Models\\User', 24),
(2, 'App\\Models\\User', 25),
(2, 'App\\Models\\User', 30),
(2, 'App\\Models\\User', 31),
(2, 'App\\Models\\User', 32),
(2, 'App\\Models\\User', 33),
(2, 'App\\Models\\User', 34),
(2, 'App\\Models\\User', 35),
(2, 'App\\Models\\User', 36),
(2, 'App\\Models\\User', 37),
(2, 'App\\Models\\User', 38),
(2, 'App\\Models\\User', 39),
(2, 'App\\Models\\User', 40),
(2, 'App\\Models\\User', 41),
(2, 'App\\Models\\User', 42),
(2, 'App\\Models\\User', 43),
(2, 'App\\Models\\User', 44),
(2, 'App\\Models\\User', 45),
(2, 'App\\Models\\User', 46),
(2, 'App\\Models\\User', 47),
(2, 'App\\Models\\User', 48),
(2, 'App\\Models\\User', 49),
(2, 'App\\Models\\User', 50),
(2, 'App\\Models\\User', 51),
(2, 'App\\Models\\User', 52),
(2, 'App\\Models\\User', 53),
(2, 'App\\Models\\User', 54),
(2, 'App\\Models\\User', 55),
(2, 'App\\Models\\User', 63),
(2, 'App\\Models\\User', 95),
(2, 'App\\Models\\User', 101),
(2, 'App\\Models\\User', 418),
(3, 'App\\Models\\User', 19),
(3, 'App\\Models\\User', 20),
(3, 'App\\Models\\User', 21),
(3, 'App\\Models\\User', 23),
(3, 'App\\Models\\User', 29),
(3, 'App\\Models\\User', 62),
(3, 'App\\Models\\User', 65),
(3, 'App\\Models\\User', 66),
(3, 'App\\Models\\User', 67),
(3, 'App\\Models\\User', 68),
(3, 'App\\Models\\User', 69),
(3, 'App\\Models\\User', 70),
(3, 'App\\Models\\User', 71),
(3, 'App\\Models\\User', 72),
(3, 'App\\Models\\User', 73),
(3, 'App\\Models\\User', 74),
(3, 'App\\Models\\User', 75),
(3, 'App\\Models\\User', 76),
(3, 'App\\Models\\User', 77),
(3, 'App\\Models\\User', 78),
(3, 'App\\Models\\User', 79),
(3, 'App\\Models\\User', 80),
(3, 'App\\Models\\User', 81),
(3, 'App\\Models\\User', 82),
(3, 'App\\Models\\User', 83),
(3, 'App\\Models\\User', 84),
(3, 'App\\Models\\User', 85),
(3, 'App\\Models\\User', 86),
(3, 'App\\Models\\User', 87),
(3, 'App\\Models\\User', 88),
(3, 'App\\Models\\User', 89),
(3, 'App\\Models\\User', 90),
(3, 'App\\Models\\User', 91),
(3, 'App\\Models\\User', 92),
(3, 'App\\Models\\User', 93),
(3, 'App\\Models\\User', 94),
(3, 'App\\Models\\User', 96),
(3, 'App\\Models\\User', 98),
(3, 'App\\Models\\User', 99),
(3, 'App\\Models\\User', 100),
(3, 'App\\Models\\User', 102),
(3, 'App\\Models\\User', 103),
(3, 'App\\Models\\User', 104),
(3, 'App\\Models\\User', 105),
(3, 'App\\Models\\User', 106),
(3, 'App\\Models\\User', 107),
(3, 'App\\Models\\User', 108),
(3, 'App\\Models\\User', 109),
(3, 'App\\Models\\User', 110),
(3, 'App\\Models\\User', 111),
(3, 'App\\Models\\User', 112),
(3, 'App\\Models\\User', 113),
(3, 'App\\Models\\User', 114),
(3, 'App\\Models\\User', 115),
(3, 'App\\Models\\User', 116),
(3, 'App\\Models\\User', 117),
(3, 'App\\Models\\User', 118),
(3, 'App\\Models\\User', 119),
(3, 'App\\Models\\User', 120),
(3, 'App\\Models\\User', 121),
(3, 'App\\Models\\User', 122),
(3, 'App\\Models\\User', 123),
(3, 'App\\Models\\User', 124),
(3, 'App\\Models\\User', 125),
(3, 'App\\Models\\User', 126),
(3, 'App\\Models\\User', 127),
(3, 'App\\Models\\User', 128),
(3, 'App\\Models\\User', 129),
(3, 'App\\Models\\User', 130),
(3, 'App\\Models\\User', 131),
(3, 'App\\Models\\User', 132),
(3, 'App\\Models\\User', 133),
(3, 'App\\Models\\User', 134),
(3, 'App\\Models\\User', 135),
(3, 'App\\Models\\User', 136),
(3, 'App\\Models\\User', 137),
(3, 'App\\Models\\User', 138),
(3, 'App\\Models\\User', 139),
(3, 'App\\Models\\User', 140),
(3, 'App\\Models\\User', 141),
(3, 'App\\Models\\User', 142),
(3, 'App\\Models\\User', 143),
(3, 'App\\Models\\User', 144),
(3, 'App\\Models\\User', 145),
(3, 'App\\Models\\User', 146),
(3, 'App\\Models\\User', 147),
(3, 'App\\Models\\User', 148),
(3, 'App\\Models\\User', 149),
(3, 'App\\Models\\User', 150),
(3, 'App\\Models\\User', 151),
(3, 'App\\Models\\User', 152),
(3, 'App\\Models\\User', 153),
(3, 'App\\Models\\User', 154),
(3, 'App\\Models\\User', 155),
(3, 'App\\Models\\User', 156),
(3, 'App\\Models\\User', 157),
(3, 'App\\Models\\User', 158),
(3, 'App\\Models\\User', 159),
(3, 'App\\Models\\User', 160),
(3, 'App\\Models\\User', 161),
(3, 'App\\Models\\User', 162),
(3, 'App\\Models\\User', 163),
(3, 'App\\Models\\User', 164),
(3, 'App\\Models\\User', 165),
(3, 'App\\Models\\User', 166),
(3, 'App\\Models\\User', 167),
(3, 'App\\Models\\User', 168),
(3, 'App\\Models\\User', 169),
(3, 'App\\Models\\User', 170),
(3, 'App\\Models\\User', 171),
(3, 'App\\Models\\User', 172),
(3, 'App\\Models\\User', 173),
(3, 'App\\Models\\User', 174),
(3, 'App\\Models\\User', 175),
(3, 'App\\Models\\User', 176),
(3, 'App\\Models\\User', 177),
(3, 'App\\Models\\User', 178),
(3, 'App\\Models\\User', 179),
(3, 'App\\Models\\User', 180),
(3, 'App\\Models\\User', 181),
(3, 'App\\Models\\User', 182),
(3, 'App\\Models\\User', 183),
(3, 'App\\Models\\User', 184),
(3, 'App\\Models\\User', 185),
(3, 'App\\Models\\User', 186),
(3, 'App\\Models\\User', 187),
(3, 'App\\Models\\User', 188),
(3, 'App\\Models\\User', 189),
(3, 'App\\Models\\User', 190),
(3, 'App\\Models\\User', 191),
(3, 'App\\Models\\User', 192),
(3, 'App\\Models\\User', 193),
(3, 'App\\Models\\User', 194),
(3, 'App\\Models\\User', 195),
(3, 'App\\Models\\User', 196),
(3, 'App\\Models\\User', 197),
(3, 'App\\Models\\User', 198),
(3, 'App\\Models\\User', 199),
(3, 'App\\Models\\User', 200),
(3, 'App\\Models\\User', 201),
(3, 'App\\Models\\User', 202),
(3, 'App\\Models\\User', 203),
(3, 'App\\Models\\User', 204),
(3, 'App\\Models\\User', 205),
(3, 'App\\Models\\User', 206),
(3, 'App\\Models\\User', 207),
(3, 'App\\Models\\User', 208),
(3, 'App\\Models\\User', 209),
(3, 'App\\Models\\User', 210),
(3, 'App\\Models\\User', 211),
(3, 'App\\Models\\User', 212),
(3, 'App\\Models\\User', 213),
(3, 'App\\Models\\User', 214),
(3, 'App\\Models\\User', 215),
(3, 'App\\Models\\User', 216),
(3, 'App\\Models\\User', 217),
(3, 'App\\Models\\User', 218),
(3, 'App\\Models\\User', 219),
(3, 'App\\Models\\User', 220),
(3, 'App\\Models\\User', 221),
(3, 'App\\Models\\User', 222),
(3, 'App\\Models\\User', 223),
(3, 'App\\Models\\User', 224),
(3, 'App\\Models\\User', 225),
(3, 'App\\Models\\User', 226),
(3, 'App\\Models\\User', 227),
(3, 'App\\Models\\User', 228),
(3, 'App\\Models\\User', 229),
(3, 'App\\Models\\User', 230),
(3, 'App\\Models\\User', 231),
(3, 'App\\Models\\User', 232),
(3, 'App\\Models\\User', 233),
(3, 'App\\Models\\User', 234),
(3, 'App\\Models\\User', 235),
(3, 'App\\Models\\User', 236),
(3, 'App\\Models\\User', 237),
(3, 'App\\Models\\User', 238),
(3, 'App\\Models\\User', 239),
(3, 'App\\Models\\User', 240),
(3, 'App\\Models\\User', 241),
(3, 'App\\Models\\User', 242),
(3, 'App\\Models\\User', 243),
(3, 'App\\Models\\User', 244),
(3, 'App\\Models\\User', 245),
(3, 'App\\Models\\User', 246),
(3, 'App\\Models\\User', 247),
(3, 'App\\Models\\User', 248),
(3, 'App\\Models\\User', 249),
(3, 'App\\Models\\User', 250),
(3, 'App\\Models\\User', 251),
(3, 'App\\Models\\User', 252),
(3, 'App\\Models\\User', 253),
(3, 'App\\Models\\User', 254),
(3, 'App\\Models\\User', 255),
(3, 'App\\Models\\User', 256),
(3, 'App\\Models\\User', 257),
(3, 'App\\Models\\User', 258),
(3, 'App\\Models\\User', 259),
(3, 'App\\Models\\User', 260),
(3, 'App\\Models\\User', 261),
(3, 'App\\Models\\User', 262),
(3, 'App\\Models\\User', 263),
(3, 'App\\Models\\User', 264),
(3, 'App\\Models\\User', 265),
(3, 'App\\Models\\User', 266),
(3, 'App\\Models\\User', 267),
(3, 'App\\Models\\User', 268),
(3, 'App\\Models\\User', 269),
(3, 'App\\Models\\User', 270),
(3, 'App\\Models\\User', 271),
(3, 'App\\Models\\User', 272),
(3, 'App\\Models\\User', 273),
(3, 'App\\Models\\User', 274),
(3, 'App\\Models\\User', 275),
(3, 'App\\Models\\User', 276),
(3, 'App\\Models\\User', 277),
(3, 'App\\Models\\User', 278),
(3, 'App\\Models\\User', 279),
(3, 'App\\Models\\User', 280),
(3, 'App\\Models\\User', 281),
(3, 'App\\Models\\User', 282),
(3, 'App\\Models\\User', 283),
(3, 'App\\Models\\User', 284),
(3, 'App\\Models\\User', 285),
(3, 'App\\Models\\User', 286),
(3, 'App\\Models\\User', 287),
(3, 'App\\Models\\User', 288),
(3, 'App\\Models\\User', 289),
(3, 'App\\Models\\User', 290),
(3, 'App\\Models\\User', 291),
(3, 'App\\Models\\User', 292),
(3, 'App\\Models\\User', 293),
(3, 'App\\Models\\User', 294),
(3, 'App\\Models\\User', 295),
(3, 'App\\Models\\User', 296),
(3, 'App\\Models\\User', 297),
(3, 'App\\Models\\User', 298),
(3, 'App\\Models\\User', 299),
(3, 'App\\Models\\User', 300),
(3, 'App\\Models\\User', 301),
(3, 'App\\Models\\User', 302),
(3, 'App\\Models\\User', 303),
(3, 'App\\Models\\User', 304),
(3, 'App\\Models\\User', 305),
(3, 'App\\Models\\User', 306),
(3, 'App\\Models\\User', 307),
(3, 'App\\Models\\User', 308),
(3, 'App\\Models\\User', 309),
(3, 'App\\Models\\User', 310),
(3, 'App\\Models\\User', 311),
(3, 'App\\Models\\User', 312),
(3, 'App\\Models\\User', 313),
(3, 'App\\Models\\User', 314),
(3, 'App\\Models\\User', 315),
(3, 'App\\Models\\User', 316),
(3, 'App\\Models\\User', 317),
(3, 'App\\Models\\User', 318),
(3, 'App\\Models\\User', 319),
(3, 'App\\Models\\User', 320),
(3, 'App\\Models\\User', 321),
(3, 'App\\Models\\User', 322),
(3, 'App\\Models\\User', 323),
(3, 'App\\Models\\User', 324),
(3, 'App\\Models\\User', 325),
(3, 'App\\Models\\User', 326),
(3, 'App\\Models\\User', 327),
(3, 'App\\Models\\User', 328),
(3, 'App\\Models\\User', 329),
(3, 'App\\Models\\User', 330),
(3, 'App\\Models\\User', 331),
(3, 'App\\Models\\User', 332),
(3, 'App\\Models\\User', 333),
(3, 'App\\Models\\User', 334),
(3, 'App\\Models\\User', 335),
(3, 'App\\Models\\User', 336),
(3, 'App\\Models\\User', 337),
(3, 'App\\Models\\User', 338),
(3, 'App\\Models\\User', 339),
(3, 'App\\Models\\User', 340),
(3, 'App\\Models\\User', 341),
(3, 'App\\Models\\User', 342),
(3, 'App\\Models\\User', 343),
(3, 'App\\Models\\User', 344),
(3, 'App\\Models\\User', 345),
(3, 'App\\Models\\User', 346),
(3, 'App\\Models\\User', 347),
(3, 'App\\Models\\User', 348),
(3, 'App\\Models\\User', 349),
(3, 'App\\Models\\User', 350),
(3, 'App\\Models\\User', 351),
(3, 'App\\Models\\User', 352),
(3, 'App\\Models\\User', 353),
(3, 'App\\Models\\User', 354),
(3, 'App\\Models\\User', 355),
(3, 'App\\Models\\User', 356),
(3, 'App\\Models\\User', 357),
(3, 'App\\Models\\User', 358),
(3, 'App\\Models\\User', 359),
(3, 'App\\Models\\User', 360),
(3, 'App\\Models\\User', 361),
(3, 'App\\Models\\User', 362),
(3, 'App\\Models\\User', 363),
(3, 'App\\Models\\User', 364),
(3, 'App\\Models\\User', 365),
(3, 'App\\Models\\User', 366),
(3, 'App\\Models\\User', 367),
(3, 'App\\Models\\User', 368),
(3, 'App\\Models\\User', 369),
(3, 'App\\Models\\User', 370),
(3, 'App\\Models\\User', 371),
(3, 'App\\Models\\User', 372),
(3, 'App\\Models\\User', 373),
(3, 'App\\Models\\User', 374),
(3, 'App\\Models\\User', 375),
(3, 'App\\Models\\User', 376),
(3, 'App\\Models\\User', 377),
(3, 'App\\Models\\User', 378),
(3, 'App\\Models\\User', 379),
(3, 'App\\Models\\User', 380),
(3, 'App\\Models\\User', 381),
(3, 'App\\Models\\User', 382),
(3, 'App\\Models\\User', 383),
(3, 'App\\Models\\User', 384),
(3, 'App\\Models\\User', 385),
(3, 'App\\Models\\User', 386),
(3, 'App\\Models\\User', 387),
(3, 'App\\Models\\User', 388),
(3, 'App\\Models\\User', 389),
(3, 'App\\Models\\User', 390),
(3, 'App\\Models\\User', 391),
(3, 'App\\Models\\User', 392),
(3, 'App\\Models\\User', 393),
(3, 'App\\Models\\User', 394),
(3, 'App\\Models\\User', 395),
(3, 'App\\Models\\User', 396),
(3, 'App\\Models\\User', 397),
(3, 'App\\Models\\User', 398),
(3, 'App\\Models\\User', 399),
(3, 'App\\Models\\User', 400),
(3, 'App\\Models\\User', 401),
(3, 'App\\Models\\User', 402),
(3, 'App\\Models\\User', 403),
(3, 'App\\Models\\User', 404),
(3, 'App\\Models\\User', 405),
(3, 'App\\Models\\User', 406),
(3, 'App\\Models\\User', 407),
(3, 'App\\Models\\User', 408),
(3, 'App\\Models\\User', 409),
(3, 'App\\Models\\User', 410),
(3, 'App\\Models\\User', 411),
(3, 'App\\Models\\User', 412),
(3, 'App\\Models\\User', 413),
(3, 'App\\Models\\User', 414),
(3, 'App\\Models\\User', 415),
(3, 'App\\Models\\User', 416),
(3, 'App\\Models\\User', 417),
(3, 'App\\Models\\User', 419);

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `kode_mapel` varchar(20) DEFAULT NULL,
  `nama_file` varchar(255) DEFAULT NULL,
  `file_upload` text DEFAULT NULL,
  `tanggal_upload` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id`, `id_jadwal`, `kode_mapel`, `nama_file`, `file_upload`, `tanggal_upload`, `created_at`, `updated_at`) VALUES
(42, NULL, 'PAK7', 'Modul PAK', '1703212480.pdf', '2023-12-22 09:34:40', NULL, NULL),
(44, NULL, 'PKN7', 'Modul PKN 1', '1703214513.pdf', '2023-12-22 10:08:33', NULL, NULL),
(46, NULL, 'SDP7', 'Modul Seni dan Prakarya 1', '1703215171.pdf', '2023-12-22 10:19:33', NULL, NULL),
(55, 125, '', 'Modul Seni Rupa', 'modul_18-11-2024_673aad9400e2d.pdf', '2024-11-18 02:59:32', '2024-11-17 19:59:32', '2024-11-17 19:59:32'),
(56, 125, '', 'Modul Seni Budaya', 'modul_19-11-2024_673cd3bd46e4e.pdf', '2024-11-19 18:06:53', '2024-11-19 11:06:53', '2024-11-19 11:06:53'),
(57, 123, '', 'Modul Seni Bud 1', 'modul_19-11-2024_673cd84c73fb8.pdf', '2024-11-19 18:26:20', '2024-11-19 11:26:20', '2024-11-19 11:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `id` int(11) NOT NULL,
  `id_jadwal` int(11) DEFAULT NULL,
  `kode_mapel` varchar(20) DEFAULT NULL,
  `nisn` varchar(30) DEFAULT NULL,
  `ph1` float DEFAULT NULL,
  `ph2` float DEFAULT NULL,
  `uts` float DEFAULT NULL,
  `uas` float DEFAULT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`id`, `id_jadwal`, `kode_mapel`, `nisn`, `ph1`, `ph2`, `uts`, `uas`, `semester_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'PAK7', '3124823117', 90, 90, 70, 90, 1, '2024-09-03 07:19:16', '2024-09-21 21:52:45'),
(2, 2, 'PAK7', '0105541468', 75, 70, 95, 90, 1, '2024-09-03 07:19:16', '2024-09-14 09:27:40'),
(3, 2, 'PAK7', '0104738705', 47, 70, 77, 55, 1, '2024-09-03 07:19:16', '2024-09-03 07:19:16'),
(4, 2, 'PAK7', '0116053851', 59, 95, 95, 59, 1, '2024-09-03 07:19:16', '2024-09-03 07:19:16'),
(5, 2, 'PAK7', '0113808006', 48, 95, 90, 95, 1, '2024-09-03 07:19:16', '2024-09-14 09:27:26'),
(6, 2, 'PAK7', '0109481203', 59, 95, 95, 54, 1, '2024-09-03 07:19:16', '2024-09-03 07:19:16'),
(7, 2, 'PAK7', '0117090237', 37, 94, 95, 55, 1, '2024-09-03 07:19:16', '2024-09-03 07:19:16'),
(8, 2, 'PAK7', '0103913191', 59, 59, 57, 47, 1, '2024-09-03 07:19:16', '2024-09-03 07:19:16'),
(9, 2, 'PAK7', '0113701227', 99, 87, 85, 90, 1, '2024-09-03 07:19:16', '2024-11-20 21:25:00'),
(10, 2, 'PAK7', '0117277818', 90, 97, 95, 87, 1, '2024-09-03 07:19:16', '2024-09-14 09:27:21'),
(31, 39, 'BIG7', '3124823117', 50, 50, 25, 90, 1, '2024-09-03 07:28:36', '2024-09-14 03:46:19'),
(32, 39, 'BIG7', '0105541468', 47, 47, 47, 50, 1, '2024-09-03 07:28:36', '2024-09-14 03:46:30'),
(33, 39, 'BIG7', '0104738705', 47, 70, 77, 55, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:36'),
(34, 39, 'BIG7', '0116053851', 59, 95, 95, 59, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:36'),
(35, 39, 'BIG7', '0113808006', 48, 95, 5, 95, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:42'),
(36, 39, 'BIG7', '0109481203', 59, 95, 95, 54, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:36'),
(37, 39, 'BIG7', '0117090237', 37, 94, 95, 55, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:36'),
(38, 39, 'BIG7', '0103913191', 59, 59, 57, 47, 1, '2024-09-03 07:28:36', '2024-09-03 07:28:36'),
(39, 39, 'BIG7', '0113701227', 100, 100, 60, 95, 1, '2024-09-03 07:28:36', '2024-11-20 21:42:01'),
(61, 3, 'PKN7', '3124823117', 50, 50, 25, 100, 1, '2024-09-04 08:24:44', '2024-09-04 08:24:44'),
(62, 3, 'PKN7', '0105541468', 47, 47, 47, 47, 1, '2024-09-04 08:24:44', '2024-09-04 08:24:44'),
(69, 3, 'PKN7', '0113701227', 58.5, 95, 85, 100, 1, '2024-09-04 08:24:44', '2024-11-20 21:25:11'),
(152, 106, 'SDP7', '3124823117', 50, 50, 25, 90, 1, '2024-09-14 03:53:18', '2024-09-14 03:53:18'),
(153, 106, 'SDP7', '0105541468', 47, 47, 47, 90, 1, '2024-09-14 03:53:18', '2024-09-14 03:53:18'),
(154, 106, 'SDP7', '0104738705', 70, 97, 50, 54, 1, '2024-09-14 03:53:18', '2024-09-14 03:53:18'),
(160, 106, 'SDP7', '0113701227', 98, 90, 80, 100, 1, '2024-09-14 03:53:18', '2024-09-21 21:53:24'),
(182, 53, 'MTK7', '3111235638', 70, 50, 25, 50, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(183, 53, 'MTK7', '0117766681', 56, 74, 26, 27, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(184, 53, 'MTK7', '0106105497', 26, 26, 26, 7, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(185, 53, 'MTK7', '0112033528', 27, 74, 72, 22, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(186, 53, 'MTK7', '3113958342', 26, 26, 12, 62, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(187, 53, 'MTK7', '0112346755', 70, 54, 88, 80, 1, '2024-09-14 03:59:30', '2024-09-14 03:59:30'),
(192, 53, 'MTK7', '0113395006', 77, 90, 87, 90, 1, '2024-09-14 03:59:30', '2024-09-21 21:53:46'),
(206, 53, 'MTK7', '0111129516', 100, 90, 100, 95, 1, '2024-09-14 03:59:30', '2024-09-17 03:41:07'),
(224, 117, 'PKN8', '0109109864', 77, 77, 44, 44, 3, '2024-09-21 22:44:13', '2024-09-29 05:00:12'),
(255, 108, 'IPA8', '0109109864', 50, 50, 53, 27, 3, '2024-09-21 22:50:48', '2024-09-21 22:50:48'),
(256, 108, 'IPA8', '3091612669', 73, 26, 2, 15, 3, '2024-09-21 22:50:48', '2024-09-21 22:50:48'),
(284, 125, 'SDP9', '0106840313', 90, 85, 80, 85, 5, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(285, 125, 'SDP9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(286, 125, 'SDP9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(287, 125, 'SDP9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(288, 125, 'SDP9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(292, 125, 'SDP9', '0104579517', 85, 75, 85, 90, 5, '2024-11-17 06:26:46', '2024-11-17 06:27:05'),
(301, 125, 'SDP9', '083153252436', 70, 80, 95, 80, 5, '2024-11-17 06:26:46', '2024-11-17 06:27:24'),
(302, 125, 'SDP9', '0109680083', 90, 80, 75, 70, 5, '2024-11-17 06:26:46', '2024-11-17 06:27:33'),
(303, 125, 'SDP9', '0104903811', 95, 90, 90, 70, 5, '2024-11-17 06:26:46', '2024-11-17 06:27:55'),
(304, 125, 'SDP9', '0092150388', 75, 85, 95, 90, 5, '2024-11-17 06:26:46', '2024-11-17 06:27:43'),
(314, 126, 'BIG9', '0106840313', 85, 80, 70, 80, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(315, 126, 'BIG9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(316, 126, 'BIG9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(317, 126, 'BIG9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(318, 126, 'BIG9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(322, 126, 'BIG9', '0104579517', 90, 95, 45, 50, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(331, 126, 'BIG9', '083153252436', 70, 75, 70, 70, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(332, 126, 'BIG9', '0109680083', 70, 75, 80, 75, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(333, 126, 'BIG9', '0104903811', 85, 80, 95, 85, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(334, 126, 'BIG9', '0092150388', 90, 80, 75, 70, 5, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(344, 127, 'PAI9', '0106840313', 85, 85, 80, 75, 5, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(345, 127, 'PAI9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(346, 127, 'PAI9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(347, 127, 'PAI9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(348, 127, 'PAI9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(352, 127, 'PAI9', '0104579517', 90, 95, 45, 50, 5, '2024-11-17 06:35:26', '2024-11-17 06:35:26'),
(361, 127, 'PAI9', '083153252436', 70, 75, 70, 70, 5, '2024-11-17 06:35:26', '2024-11-17 06:35:26'),
(362, 127, 'PAI9', '0109680083', 70, 75, 80, 75, 5, '2024-11-17 06:35:26', '2024-11-17 06:35:26'),
(363, 127, 'PAI9', '0104903811', 85, 80, 95, 85, 5, '2024-11-17 06:35:26', '2024-11-17 06:35:26'),
(364, 127, 'PAI9', '0092150388', 90, 80, 75, 70, 5, '2024-11-17 06:35:26', '2024-11-17 06:35:26'),
(374, 128, 'IPS9', '0106840313', 95, 95, 85, 90, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(375, 128, 'IPS9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(376, 128, 'IPS9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(377, 128, 'IPS9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(378, 128, 'IPS9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(382, 128, 'IPS9', '0104579517', 90, 95, 45, 50, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(391, 128, 'IPS9', '083153252436', 70, 75, 70, 70, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(392, 128, 'IPS9', '0109680083', 70, 75, 80, 75, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(393, 128, 'IPS9', '0104903811', 85, 80, 95, 85, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(394, 128, 'IPS9', '0092150388', 90, 80, 75, 70, 5, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(404, 130, 'BID9', '0106840313', 85, 85, 85, 90, 5, '2024-11-17 06:38:22', '2024-11-19 11:24:55'),
(405, 130, 'BID9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(406, 130, 'BID9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(407, 130, 'BID9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(408, 130, 'BID9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(412, 130, 'BID9', '0104579517', 90, 95, 45, 50, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(421, 130, 'BID9', '083153252436', 70, 75, 70, 70, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(422, 130, 'BID9', '0109680083', 70, 75, 80, 75, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(423, 130, 'BID9', '0104903811', 85, 80, 95, 85, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(424, 130, 'BID9', '0092150388', 90, 80, 75, 70, 5, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(434, 132, 'MTK9', '0106840313', 85, 80, 75, 80, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(435, 132, 'MTK9', '3105325514', 75, 80, 85, 95, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(436, 132, 'MTK9', '0113027587', 85, 90, 85, 85, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(437, 132, 'MTK9', '0102837458', 70, 75, 90, 85, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(438, 132, 'MTK9', '0102036027', 85, 90, 95, 85, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(442, 132, 'MTK9', '0104579517', 90, 95, 45, 50, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(451, 132, 'MTK9', '083153252436', 70, 75, 70, 70, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(452, 132, 'MTK9', '0109680083', 70, 75, 80, 75, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(453, 132, 'MTK9', '0104903811', 85, 80, 95, 85, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(454, 132, 'MTK9', '0092150388', 90, 80, 75, 70, 5, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(464, 133, 'SDB9', '0106840313', 90, 90, 85, 85, 5, '2024-11-17 07:55:48', '2024-11-17 07:55:48'),
(474, 136, 'BHL9', '0106840313', 90, 85, 70, 85, 5, '2024-11-17 07:56:57', '2024-11-17 07:56:57'),
(504, 137, 'PJS9', '0106840313', 85, 85, 80, 85, 5, '2024-11-17 07:58:04', '2024-11-17 07:58:04'),
(534, 139, 'TIK9', '0106840313', 85, 85, 75, 90, 5, '2024-11-17 08:00:59', '2024-11-17 08:00:59'),
(564, 140, 'IPA9', '0106840313', 75, 90, 80, 85, 5, '2024-11-17 08:02:02', '2024-11-17 08:02:02'),
(594, 141, 'PKN9', '0106840313', 80, 90, 75, 85, 5, '2024-11-17 08:03:21', '2024-11-17 08:03:21'),
(624, 143, 'BKL9', '0106840313', 95, 90, 90, 85, 5, '2024-11-17 08:04:22', '2024-11-17 08:04:22'),
(645, 125, 'SDP8', '0106840313', 85, 80, 85, 81, 4, '2024-11-17 06:26:46', '2024-11-17 10:58:41'),
(646, 126, 'BIG8', '0106840313', 75, 80, 70, 77, 4, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(647, 127, 'PAI8', '0106840313', 80, 83, 78, 77, 4, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(648, 128, 'IPS8', '0106840313', 93, 90, 89, 90, 4, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(649, 130, 'BID8', '0106840313', 80, 83, 85, 90, 4, '2024-11-17 06:38:22', '2024-11-17 06:38:22'),
(650, 132, 'MTK8', '0106840313', 78, 80, 85, 90, 4, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(651, 140, 'IPA8', '0106840313', 75, 88, 80, 83, 4, '2024-11-17 08:02:02', '2024-11-17 08:02:02'),
(652, 125, 'SDP8', '0106840313', 83, 80, 84, 81, 3, '2024-11-17 06:26:46', '2024-11-17 06:26:46'),
(653, 126, 'BIG8', '0106840313', 75, 79, 70, 77, 3, '2024-11-17 06:32:41', '2024-11-17 06:32:41'),
(654, 127, 'PAI8', '0106840313', 79, 82, 77, 77, 3, '2024-11-17 06:35:25', '2024-11-17 06:35:25'),
(655, 128, 'IPS8', '0106840313', 77, 79, 75, 75, 3, '2024-11-17 06:37:03', '2024-11-17 06:37:03'),
(656, 130, 'BID8', '0106840313', 77, 75, 75, 75, 3, '2024-11-17 06:38:22', '2024-11-19 11:24:52'),
(657, 132, 'MTK8', '0106840313', 75, 76, 75, 77, 3, '2024-11-17 07:47:27', '2024-11-17 07:47:27'),
(658, 140, 'IPA8', '0106840313', 75, 80, 75, 80, 3, '2024-11-17 08:02:02', '2024-11-19 11:08:05'),
(687, 149, 'SDP8', '3124823117', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(688, 149, 'SDP8', '0116568330', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(689, 149, 'SDP8', '0106105497', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(690, 149, 'SDP8', '0105207033', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(691, 149, 'SDP8', '0107612113', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(692, 149, 'SDP8', '0111586354', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(693, 149, 'SDP8', '3113958342', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(694, 149, 'SDP8', '0116053851', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(695, 149, 'SDP8', '0114174740', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(696, 149, 'SDP8', '3112900139', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(697, 149, 'SDP8', '0109481203', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(698, 149, 'SDP8', '0105046823', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(699, 149, 'SDP8', '0107570717', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(700, 149, 'SDP8', '0103913191', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(701, 149, 'SDP8', '3124948771', 97, 80, 95, 95, 3, '2024-11-20 19:38:30', '2024-11-20 19:39:03'),
(702, 149, 'SDP8', '0117720870', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(703, 149, 'SDP8', '0103325147', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(704, 149, 'SDP8', '0105257641', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(705, 149, 'SDP8', '0088983854', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(706, 149, 'SDP8', '3119760843', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(707, 149, 'SDP8', '0117400387', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(708, 149, 'SDP8', '0109354146', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(709, 149, 'SDP8', '0116095804', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(710, 149, 'SDP8', '0116131129', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(711, 149, 'SDP8', '3114641290', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(712, 149, 'SDP8', '0115712769', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(713, 149, 'SDP8', '0118024186', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(714, 149, 'SDP8', '0104468647', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(715, 149, 'SDP8', '0094801907', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(716, 149, 'SDP8', '0106184109', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(717, 149, 'SDP8', '0076358995', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30'),
(718, 149, 'SDP8', '0106927862', 0, 0, 0, 0, 3, '2024-11-20 19:38:30', '2024-11-20 19:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-01-05 19:47:26', '2024-01-05 19:47:26'),
(2, 'guru', 'web', '2024-04-21 04:42:53', '2024-05-01 23:13:46'),
(3, 'siswa', 'web', '2024-05-01 23:13:53', '2024-05-01 23:13:53');

-- --------------------------------------------------------

--
-- Table structure for table `role_applications`
--

CREATE TABLE `role_applications` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `status_insert` int(11) DEFAULT NULL,
  `status_read` int(11) DEFAULT NULL,
  `status_update` int(11) DEFAULT NULL,
  `status_delete` int(11) DEFAULT NULL,
  `status_export` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role_applications`
--

INSERT INTO `role_applications` (`id`, `role_id`, `menu_id`, `status_insert`, `status_read`, `status_update`, `status_delete`, `status_export`, `created_at`, `updated_at`) VALUES
(2, 1, 2, 1, 1, 1, 1, 1, '2024-04-23 18:36:29', '2024-05-07 17:24:50'),
(3, 1, 13, 1, 1, 1, 1, NULL, '2024-04-23 18:41:10', '2024-04-24 20:15:37'),
(7, 1, 35, 1, 1, 1, 1, NULL, '2024-04-23 18:44:37', '2024-04-24 20:13:52'),
(8, 1, 36, 1, 1, 1, 1, NULL, '2024-04-23 18:47:32', '2024-04-23 20:08:04'),
(9, 1, 37, 1, 1, 1, 1, NULL, '2024-04-23 18:48:39', '2024-04-24 19:49:37'),
(10, 1, 38, 1, 1, 1, 1, NULL, '2024-04-23 18:51:20', '2024-04-23 18:51:22'),
(11, 1, 3, 1, NULL, NULL, NULL, NULL, '2024-04-23 18:56:19', '2024-04-23 20:08:06'),
(12, 1, 4, 1, 1, NULL, NULL, NULL, '2024-04-23 19:23:28', '2024-04-23 19:23:33'),
(13, 1, 40, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:27:58', '2024-04-23 19:27:58'),
(14, 1, 42, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:28:00', '2024-04-23 19:28:00'),
(20, 1, 39, 1, 1, 1, 1, NULL, '2024-04-23 19:38:18', '2024-04-24 20:22:16'),
(22, 1, 41, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:38:48', '2024-04-23 19:38:48'),
(23, 1, 5, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:38:48', '2024-04-23 19:38:48'),
(24, 1, 18, NULL, NULL, NULL, NULL, 0, '2024-04-23 19:38:49', '2024-04-27 00:15:58'),
(25, 1, 19, NULL, NULL, NULL, NULL, 0, '2024-04-23 19:38:50', '2024-04-27 00:15:57'),
(26, 1, 21, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:38:50', '2024-04-23 19:38:50'),
(27, 1, 22, NULL, NULL, NULL, NULL, NULL, '2024-04-23 19:38:51', '2024-04-23 19:38:51'),
(29, 1, 29, 1, NULL, 1, 1, NULL, '2024-04-23 19:39:04', '2024-04-25 00:45:11'),
(30, 1, 30, 1, NULL, 1, 1, NULL, '2024-04-24 20:22:28', '2024-04-25 00:45:24'),
(31, 1, 28, 1, NULL, 1, 1, NULL, '2024-04-24 20:22:29', '2024-04-25 00:45:10'),
(32, 1, 43, 0, NULL, NULL, NULL, NULL, '2024-04-25 03:17:35', '2024-04-27 20:30:32'),
(33, 1, 6, NULL, NULL, NULL, NULL, NULL, '2024-04-27 00:16:31', '2024-04-27 00:16:31'),
(34, 1, 44, 1, 1, 1, 1, 1, '2024-04-27 01:13:29', '2024-05-07 17:24:59'),
(35, 1, 45, 1, 1, 1, 1, NULL, '2024-04-27 01:14:30', '2024-04-27 20:30:49'),
(36, 1, 46, NULL, NULL, NULL, NULL, NULL, '2024-04-27 01:19:33', '2024-04-27 01:19:33'),
(37, 1, 47, NULL, NULL, NULL, NULL, NULL, '2024-04-27 01:19:34', '2024-04-27 01:19:34'),
(38, 1, 48, NULL, NULL, NULL, NULL, NULL, '2024-04-27 01:19:35', '2024-04-27 01:19:35'),
(39, 1, 49, NULL, NULL, NULL, NULL, NULL, '2024-04-27 01:19:36', '2024-04-27 01:19:36'),
(40, 1, 50, NULL, NULL, NULL, NULL, NULL, '2024-04-27 01:24:42', '2024-04-27 01:24:42'),
(41, 1, 51, 1, 1, 1, 1, NULL, '2024-04-27 21:02:59', '2024-04-27 21:03:06'),
(42, 1, 52, NULL, NULL, NULL, NULL, NULL, '2024-04-29 03:53:48', '2024-04-29 03:53:48'),
(43, 1, 53, 1, 1, 1, 1, NULL, '2024-04-30 21:49:09', '2024-04-30 21:49:15'),
(44, 1, 54, 1, 1, 1, 1, NULL, '2024-04-30 21:49:19', '2024-04-30 21:49:22'),
(45, 1, 55, NULL, NULL, NULL, NULL, NULL, '2024-04-30 22:14:41', '2024-04-30 22:14:41'),
(46, 1, 56, 1, 1, 1, 1, NULL, '2024-04-30 22:15:56', '2024-04-30 22:16:00'),
(47, 1, 57, 0, 0, 0, 0, NULL, '2024-04-30 22:16:01', '2024-05-01 01:52:17'),
(48, 1, 58, NULL, NULL, NULL, NULL, NULL, '2024-05-01 04:32:00', '2024-05-01 04:32:00'),
(49, 1, 59, 1, 1, 1, 1, 1, '2024-05-01 04:34:32', '2024-05-07 17:24:54'),
(50, 1, 60, NULL, NULL, NULL, NULL, NULL, '2024-05-01 05:11:21', '2024-05-01 05:11:21'),
(51, 1, 61, 1, 1, 1, 1, 1, '2024-05-01 23:01:57', '2024-05-07 17:07:59'),
(52, 1, 62, 1, 1, 1, 1, 1, '2024-05-01 23:02:03', '2024-05-07 17:22:57'),
(53, 1, 63, 1, 1, 1, 1, 1, '2024-05-02 05:22:25', '2024-05-07 17:24:57'),
(54, 1, 64, 1, 1, 1, 1, 1, '2024-05-02 17:32:15', '2024-05-07 17:21:35'),
(55, 2, 65, 1, 1, 1, 1, 1, '2024-05-03 18:48:48', '2024-05-07 17:25:00'),
(56, 2, 1, NULL, NULL, NULL, NULL, 1, '2024-05-03 18:49:00', '2024-05-03 18:49:00'),
(57, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 2, 62, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(60, 2, 44, 1, 1, 1, 1, 1, NULL, NULL),
(61, 2, 66, 1, 1, 1, 1, 1, NULL, '2024-05-07 17:24:55'),
(62, 3, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 3, 65, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(64, 3, 63, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(65, 3, 44, NULL, NULL, NULL, NULL, 1, NULL, NULL),
(66, 3, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 1, 67, 1, 1, 1, 1, 1, '2024-09-03 13:56:33', NULL),
(68, 1, 68, 1, 1, 1, 1, 1, NULL, NULL),
(69, 1, 69, 1, 1, 1, 1, NULL, NULL, NULL),
(70, 2, 59, 1, 1, 1, 1, 1, '2024-05-01 04:34:32', '2024-05-07 17:24:54'),
(71, 1, 65, 1, 1, 1, 1, 1, NULL, NULL),
(72, 2, 70, 1, 1, 1, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `nama`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Semester 1', NULL, '2024-09-03 07:00:40', '2024-09-03 07:00:40'),
(2, 'Semester 2', NULL, '2024-09-03 07:00:56', '2024-09-03 07:00:56'),
(3, 'Semester 3', NULL, '2024-09-03 07:01:02', '2024-09-03 07:01:02'),
(4, 'Semester 4', NULL, '2024-09-03 07:01:10', '2024-09-03 07:01:10'),
(5, 'Semester 5', NULL, '2024-09-03 07:01:17', '2024-09-03 07:01:17'),
(6, 'Semester 6', NULL, '2024-09-03 07:01:24', '2024-09-03 07:01:24');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('lQ49iIs1YM1Y7wW6hEhacKPlyRcqENd8cui79BU1', 119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36 Edg/131.0.0.0', 'YToxMTp7czo2OiJfdG9rZW4iO3M6NDA6IkdJd2lEMzQ4VFQzbWwyU2M3VU9iZ3BialRSbzFwNlV4R3BFS2lCTGkiO3M6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM1OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvY21zL2Rhc2hib2FyZCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6MzoidXJsIjthOjE6e3M6ODoiaW50ZW5kZWQiO3M6MzU6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jbXMvZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTE5O3M6NzoidXNlcl9pZCI7aToxMTk7czo4OiJzdG9yZV9pZCI7aToxO3M6MTQ6InN0b3JlX3VzZXJuYW1lIjtzOjEwOiIwMTA2ODQwMzEzIjtzOjEwOiJzdG9yZV9uYW1lIjtOO3M6MTA6InN0b3JlX3R5cGUiO047czo3OiJyb2xlX2lkIjtpOjM7fQ==', 1732169648);

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) NOT NULL,
  `nisn` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `nama_wali` varchar(50) DEFAULT NULL,
  `no_telepon_wali` varchar(15) DEFAULT NULL,
  `angkatan` int(11) DEFAULT NULL,
  `kode_kelas` varchar(5) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status_siswa` enum('Aktif','Tidak Aktif') DEFAULT NULL,
  `semester_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nisn`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `email`, `alamat`, `nama_wali`, `no_telepon_wali`, `angkatan`, `kode_kelas`, `image`, `status_siswa`, `semester_id`, `created_at`, `updated_at`) VALUES
(10, '0107854807', 'Fattih Akbar Ramadhan', 'Laki-laki', '2010-08-25', 'Bandar Lampung', 'Islam', '0895330771264', 'fattih@gmail.com', 'Jl. Tangkuban Perahu No. 13/23 Lk. I, Kelurahan Kupang Kota, Kec. Teluk Betung Utara', 'Prio Hidayat', '0895330771264', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:09:25'),
(11, '0095312364', 'FAUZAN DWI ANDIKA', 'Laki-Laki', '2009-10-01', 'Bandar Lampung', 'Islam', '08994104455', '-', 'JL. WR. SUPRATMAN GG. PEGADAIAN LK II, Kelurahan KUPANG KOTA, Kec. Teluk Betung Utara', 'DEDI', '-', 2022, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:09:43'),
(12, '0087919165', 'FAUZI BAADILLAH', 'Laki-laki', '2008-12-08', 'KOTA AGUNG', 'Islam', '089629886748', 'fauzi@gmail.com', 'JL.YOS SUDARSO GG KENARI II LK II, Kelurahan SUKARAJA, Kec. Teluk Betung Selatan', 'SUROTO', '089629886748', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:09:53'),
(13, '3124823117', 'FEBRILIYA', 'Perempuan', '2012-02-25', 'Bandar Lampung', 'Islam', '081369190351', '-', 'Jl. Hasanudin Gg Nangka No 12, Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara', 'Hendrik', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:13:27'),
(16, '3111235638', 'Ferly Sundava', 'Laki-Laki', '2011-09-08', 'BandarÂ Lampung', 'Islam', '082181070413', '-', 'Jl. Drs. Warsito Gg. Rajabasa 2 Lk. I, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'FATONI', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:13:41'),
(20, '0117803929', 'GARNIS', 'Perempuan', '2011-06-16', 'TELUK BETUNG', 'Islam', '085789410991', '-', 'JL. WR MONGONSIDI N0.72 LK II, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'RIDWAN', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:18:32'),
(21, '0116568330', 'GHANDI PRADANA PUTRA', 'Laki-Laki', '2011-03-08', 'BandarÂ Lampung', 'Islam', '0895385245060', '-', 'JL. WR. SUPRATMAN GG PEGADAIAN NO. 23 LK II, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utar', 'DEDE ISWANDI', '-', 2022, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:18:42'),
(22, '0094861667', 'Gilang Pratama', 'Laki-Laki', '2009-08-19', 'BandarÂ Lampung', 'Islam', '083160788985', '-', 'Jl. Drs. Warsito Gg. Semeru Lk. II, Kelurahan Kupang Kota, Kec. Teluk Betung Utara', 'Supandi', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:18:49'),
(24, '0117766681', 'GRACETASYA KHUMAIROH PARIZQY', 'Perempuan', '2011-04-30', 'Bandar Lampung', 'Islam', '082372177036', '-', 'JL.IKAN KITER 26 LK.II, Kelurahan Desa/Kel. Kangkung, Kec. Bumi Waras', 'TAMZONI HIDAYAT', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:18:58'),
(25, '0092750833', 'HAFIDZ AL RASYA', 'Laki-Laki', '2009-10-24', 'Bandar Lampung', 'Islam', '085709720650', '-', 'TELUK BONE NO 81 LK II, Kelurahan KOTAKARANG, Kec. Teluk Betung Timur', 'A. FIRMANSYAH', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:19:06'),
(26, '0108257536', 'Hafirah Nindah Destiani', 'Perempuan', '2010-12-29', 'Bandar Lampung', 'Islam', '089633482670', '-', 'Jl. DRS. Warsito Gg Tanggamus, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Zefri Romansyah', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:19:16'),
(28, '0083211912', 'HARDIAN SAPUTRA', 'Laki-Laki', '2009-10-13', 'Bandar Lampung', 'Islam', '0895327318080', '-', 'JL. YOSSUDARSO GG M.AGUS, Kelurahan Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'SOFIANTO', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:19:26'),
(29, '0118069791', 'Harfkhan Ridho Riski', 'Laki-Laki', '2011-01-23', 'Teluk Betung', 'Islam', '089673184132', '-', 'Jl. WR. Supratman Gg. R. Danial LK. I, Kelurahan Gunung Mas, Kec. Teluk Betung Selatan', 'Bambang Irawan', '-', 2021, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:20:03'),
(30, '0105541468', 'Hazmi Hardiansyah', 'Laki-Laki', '2010-04-03', 'BandarÂ Lampung', 'Islam', '001917535907', '-', 'Jl. Hasanuddin Gg Nangka No. 19, Kelurahan Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara', 'Oci Andriansyah', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:20:12'),
(31, '0106105497', 'Ibnu Safwa Andrean', 'Laki-Laki', '2010-12-14', 'Teluk Betung', 'Islam', '08136783929', '-', 'JL. IKAN JULUNG SKIP RAHAYU LK I, Kelurahan Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'Safari', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:20:21'),
(33, '0106767253', 'ILYAS ALVIN RAZKA ADITYA', 'Laki-Laki', '2010-10-09', 'SEPUTIH JAYA', 'Islam', '085222411390', '-', 'JL. TANGKUBAN PERAHU GG. MUKTI NO 23, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'ADITYA SANTOSO', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:20:31'),
(34, '0092209210', 'INDRATA ALFARIZY', 'Laki-Laki', '2009-05-08', 'Bandar Lampung', 'Islam', '085369635388', '-', 'JL. PATIMURA, Kelurahan KUPANG KOTA, Kec. Teluk Betung Utara', 'SASMITA', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:22:45'),
(35, '0107901447', 'Intan Manila Sari', 'Perempuan', '2010-02-07', 'Teluk Betung', 'Islam', '0895392416620', '-', 'Jl. Patimura LK II, Kelurahan Gunung Mas, Kec. Teluk Betung Selatan', 'Muhamad Sani', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:23:03'),
(36, '0093898357', 'INTAN SISILIA', 'Perempuan', '2009-10-23', 'TELUK BETUNG', 'Islam', '089630566536', '-', 'JL. IKAN MAS, Kelurahan KANGKUNG, Kec. Bumi Waras', 'AZWIN', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:23:14'),
(38, '0103279197', 'Irhab Kadavi', 'Laki-laki', '2010-05-14', 'BandarÂ Lampung', 'Islam', '089601572824', 'irhab@gmail.com', 'Jl. Hasanudin Gg. Kntr. Pos 16 LK II, Kelurahan Gunung Mas, Kec. Teluk Betung Selatan', 'Novi Widiyanto', '089601572824', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:23:22'),
(39, '0105207033', 'ISTI ANATUL MA\'RAH', 'Perempuan', '2010-10-04', 'BandarÂ Lampung', 'Islam', '085382900613', '-', 'JL. DRS. WARSITO GG KRAKATAU NO.25 LK I, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'CATUR WIDODO', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:26:05'),
(41, '0109125919', 'JANNES TRIGO MANURUNG', 'Laki-Laki', '2010-08-06', 'PangkalÂ Pinang', 'Islam', '08983166450', '-', 'JL. YOS SUDARSO GG. KETAPANG LK I, Kelurahan SUKARAJA, Kec. Bumi Waras', 'RIDWAN MANURUNG', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:26:15'),
(42, '3102491700', 'Jella Africhal', 'Laki-Laki', '2010-08-04', 'Tulang Bawang', 'Islam', '081272771641', '-', 'Jl. Drs. Warsito Gg. Rajabasa No. 04 Lk. I, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Jepri', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:26:37'),
(44, '0103080188', 'NIKO PRATAMA WIBOWO', 'Laki-Laki', '2010-10-08', 'TELUK BETUNG', 'Islam', '08988192743', '-', 'Jl. MS. BATUBARA Gg. PLAM NO. 5 LK II, Desa/Kel. Kupang Teba, Desa/Kel. Kupang Teba', 'EKO EDI WIBOWO', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:08:55'),
(46, '0107612113', 'Normala', 'Perempuan', '2010-04-11', 'Teluk Betung', 'Islam', '085709296484', '-', 'Jl. Drs. Warsito Gg. Tanggamus, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara ', 'Pausi Sanusi', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:09:57'),
(47, '0107519264', 'Novilia Putri', 'Perempuan', '2010-11-27', 'BandarÂ Lampung', 'Islam', '089630464328', '-', 'Jl. Gn. Krakatau No. 5 Lk. I, Desa/Kel. K, Kec. Teluk Betung Utaraupang Kota, ', 'Elyanto', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:12:02'),
(48, '0096480097', 'Nur Anggraeni', 'Laki-Laki', '2009-02-13', 'teluk betung', 'Islam', '08536672520', '-', 'jl. ikan pari no 27, teluk betung, Kec. Teluk Betung Selatan', 'ahmad muhta', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:12:12'),
(51, '0092109314', 'Nuri Dwi Indah Pertiwi', 'Laki-Laki', '2009-06-13', 'teluk betung', 'Islam', '0895320580705', '-', 'jl. ikan pari gg. chandra lama no.152/17 A, teluk betung, Kec. Teluk Betung Selatan', 'ahmad hidayat', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:12:24'),
(54, '0104875474', 'OKSA KRESNANTARA', 'Laki-Laki', '2010-10-28', 'Teluk Betung', 'Islam', '-', '-', 'JALAN WR. MONGISIDI GG PERMAI NO 2 LK 2, Talang, Kec. Teluk Betung Selatan ', 'Yudi Hartono', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:32:52'),
(55, '0098077678', 'Paramita Saputri', 'Perempuan', '2009-07-30', 'BandarÂ Lampung', 'Islam', '085368941474', '-', 'Jl. Drs. Warsito Gg. Tanggamus Lk. II, Kupang Kota, Kec. Teluk Betung Utara', 'Ahmad', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:37:14'),
(57, '3108599573', 'PRIMA RAMADHAN TRIDA', 'Laki-Laki', '2010-08-26', 'Teluk Betung', 'Islam', '089532213703', '-', 'Jl Hasanudin Gg, Nangka no.05 Lk.I, Kupang Teba, Kec. Teluk Betung Utara	', 'MUHAMMAD SUMANTRI', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:37:25'),
(58, '0104738705', 'PUSPITA NINGSIH', 'Laki-Laki', '2010-01-02', 'JATIMULYO', 'Islam', '082181528635', '-', 'Jl Slamet Riyadi Gg. Ikan Cupang I Lk II, Desa/Kel. Sukaraja, Kec. Bumi Waras', 'Wahyudi', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:37:36'),
(59, '0112033528', 'Putri Aprilia', 'Perempuan', '2011-04-02', 'Teluk Betung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg. Tanggamus Lk. II, Kupang Kota, Kec. Teluk Betung Utara', 'Roni Saputra', '-', 2022, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:39:44'),
(62, '0093425519', 'PUTRI SAHRINI', 'Perempuan', '2011-02-12', 'Bandar Lampung', 'Islam', '0895639966080', 'putri@gmail.com', 'JL. RW MONGINSIDI GG ARSAD NO 34 LK II, Talang, Kec. Teluk Betung Selatan	', 'JUNAIDI', '0895639966080', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:39:53'),
(63, '0105718054', 'PUTRI VIANTI MALA', 'Perempuan', '2010-01-26', 'BandarÂ Lampung', 'Islam', '083169184388', '-', 'JL. GUNUNG KRAKATAU NO. 7 LK II, TALANG, Kec. Teluk Betung Selatan	', 'SUPRIATNA', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:40:04'),
(66, '0111586354', 'QEYNISHA RAYHANUN', 'Perempuan', '2011-02-11', 'BandarÂ Lampung', 'Islam', '089508044106', '-', 'JL. Ikan Layur NO. 8 Blok B, Teluk Betung, Kec. Teluk Betung Selatan	', 'ASEP AMRULLAH', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:40:15'),
(67, '0104810496', 'R. Ajeng Sharifa Sukma Wicitra', 'Perempuan', '2010-03-01', 'Teluk Betung', 'Islam', '0895620466364', '-', 'Jl. Drs. Warsito No. 24 Lk. II, Kupang Kota, Kec. Teluk Betung Utara	', 'Danu Sasmita', '0895620466364', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:41:49'),
(69, '0118913842', 'Raditya Ramadhan', 'Laki-Laki', '2011-05-18', 'Teluk Betung', 'Islam', '081320099837', '-', 'Jl. T. PERAHU NO.32 LK II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara	', 'Erwan Hikmat', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:42:02'),
(71, '3113958342', 'RAEHAN HABIB', 'Laki-Laki', '2011-09-19', 'BandarÂ Lampung', 'Islam', '0895609808808', '-', 'JL RW MONGONSIDI GG PERMAI 3 LK II, Desa/Kel. Talang, Kec. Teluk Betung Selatan	', 'ARIFUDIN', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:43:42'),
(72, '0085456340', 'RAFA ANDHIKA PRATAMA', 'Laki-Laki', '2008-04-10', 'TELUK BETUNG', 'Islam', '-', '-', 'JL. YOS SUDARSO Gg M. AGUS LK I, BUMI WARAS, Kec. Bumi Waras', 'RIDWAN', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:43:54'),
(73, '0112346755', 'RAFA ANDIKA', 'Laki-Laki', '2011-05-12', 'TANGERANG', 'Islam', '082246219475', '-', 'Jl. Tangkuban Perahu No. 18 LK I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara	', 'WIRA HADI KUSUMA', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:44:04'),
(75, '0108740332', 'Rafi Ramadan', 'Laki-Laki', '2010-09-04', 'Teluk Betung', 'Islam', '081273270505', '-', 'Jl. Tangkuban Perahu Gg. Mukti NO.9 Lk. II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara	', 'Joko Lelono', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:45:30'),
(77, '0101253966', 'RAFLI NUR HIDAYAT', 'Laki-Laki', '2010-09-28', 'BandarÂ Lampung', 'Islam', '085700283823', '-', 'JL. MAYOR SALIM BATUBARA GG. DAHLIA	KUPANG KOTA, Kec. Teluk Betung Utara	', 'WALUYO', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:45:39'),
(78, '0118883806', 'Rahes Dwi Andika', 'Laki-Laki', '2011-07-23', 'BandarÂ Lampung', 'Islam', '0895320461004', '-', 'JL HASANUDIN GG LAMPHONG LK II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan	       ', 'Anto', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:45:48'),
(80, '0116053851', 'RAMA ADRIANSYAH', 'Laki-Laki', '2011-04-23', 'TELUK BETUNG', 'Islam', '089617600990', '-', 'JL IKAN KITER LK II BLOK D, Desa/Kel. Kangkung, Kec. Bumi Waras	', 'RUDI JAYA PUTRA', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:47:09'),
(82, '0111421909', 'Rangga Dito', 'Laki-Laki', '2011-05-15', 'Teluk Betung', 'Islam', '089507980283', '-', 'Jl. Rw. Monginsidi Gg. Wilis No. 16, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara	', 'Eko Domowilopo', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:50:27'),
(84, '0114174740', 'RASTI ADITIA PUTRI', 'Perempuan', '2011-10-25', 'Teluk Betung', 'Islam', '085763309885', '-', 'Jl. Gunung Krakatau NO.20, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara	', 'M. Suryana', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:50:37'),
(85, '0113808006', 'RATU BALQIS MAHARDIKA SALSABILA', 'Perempuan', '2011-01-08', 'BandarÂ Lampung', 'Islam', '081271864114', '-', 'JL. Hasanudin Gg. K.Pos NO.2 LK II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan	', 'YANDIKA SAPUTRA', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:50:49'),
(89, '3116393065', 'REGINA RAHMADANTI', 'Perempuan', '2011-08-07', 'BandarÂ Lampung', 'Islam', '085266554795', '-', 'JL GUNUNG KRAKATAU NO.17A LK II, Desa/Kel. Talang, Kec. Teluk Betung Selatan	', 'SUGITO', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:50:57'),
(92, '3095699789', 'REVA OKTAVIONA', 'Perempuan', '2009-10-07', 'Teluk Betung', 'Islam', '087878872000', 'REVA@gmail.com', 'Jl. Gunung Krakatau No.76, Kupang Kota, Kec. Teluk Betung Utara	', 'ARI IRAWAN', '087878872000', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:51:06'),
(93, '0108303036', 'REVALINA PUTRI FEBRIYANI', 'Perempuan', '2010-02-11', 'TELUK BETUNG', 'Islam', '083105093331', 'REVALINA@gmail.com', 'JL.MS.BATU BARA GG.MELATI NO.28, KUPANG TEBA, Kec. Teluk Betung Utara	', 'IBNU WARSITO', '083105093331', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:51:16'),
(96, '0106454738', 'RHENATA OKTAVIA', 'Perempuan', '2010-01-10', 'BandarÂ Lampung', 'Islam', '081271488768', '-', 'WR. SUPRATMAN GG ASLIM NO 28 LK 2, Desa/Kel. Talang, Kec. Teluk Betung Selatan	', 'Muhammad Alex', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:51:25'),
(98, '0106067210', 'Rifa Ailla', 'Perempuan', '2010-01-25', 'Wates Way Ratai', 'Islam', '083125019895', '-', 'Sidomulyo, Wates Way Ratai, Kec. Way Ratai	', 'Yuliusri', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:52:04'),
(100, '3112900139', 'RILIVANY NARAISYA', 'Perempuan', '2011-07-02', 'BandarÂ Lampung', 'Islam', '081536069077', '-', 'JL. IKAN KITER, Desa/Kel. Kangkung, Kec. Bumi Waras	', 'MUHAMMAD DENI SYARIF', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:52:24'),
(102, '0082771104', 'RISKA NAURA PUTRI', 'Perempuan', '2008-03-08', 'TELUK BETUNG', 'Islam', '082279596944', '-', 'JL. TANGKUBAN PERAHU NO. 12 LK. I, KUPANG KOTA, Kec. Teluk Betung Selatan	', 'MA\\\'RUF KURNIAWAN', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:52:35'),
(103, '0119566493', 'RISKA URMILA PUTRI', 'Perempuan', '2011-04-15', 'TELUK BETUNG', 'Islam', '089527049134', 'RISKA@gmail.com', 'JL.YOS SUDARSO, BUMI WARAS, Kec. Bumi Waras	', 'URI MASHURI', '089527049134', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:52:52'),
(105, '0106055110', 'RISKI TRI PUTRA', 'Laki-Laki', '2010-12-14', 'BandarÂ Lampung', 'Islam', '083802787302', '-', 'JL. WR. SUPRATMAN GG R. DANIAL NO.15 LK II,Desa/Kel. GUNUNG MAS,Kec. Teluk Betung Selatan	', 'SUWARNO', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:53:02'),
(106, '0089159141', 'Rivaldo', 'Laki-Laki', '2008-12-26', 'Cirebon', 'Islam', '089636651212', '-', 'Jl. WR. Supratman Gg. Beringin II No. 15	Talang, Kec. Teluk Betung Selatan	', 'Joni. AR', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:53:11'),
(108, '0109281890', 'Rizka Ramadhani', 'Perempuan', '2010-08-19', 'Bandar Lampung', 'Islam', '085380318771', 'Rizka@gmail.com', 'Jl. Rw. Monginsidi G. Merbabu No. 10 Lk. I, Kupang Kota, Kec. Teluk Betung Utara	', 'Zainal Arifin', '085380318771', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:53:20'),
(109, '0109481203', 'Rizqi Agustyan Ramadhan', 'Laki-Laki', '2010-08-23', 'Teluk Betung', 'Islam', '-', '-', '-', 'Budy Haryanto', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:54:53'),
(111, '0104328741', 'Jodiansah Dwi Permana', 'Laki-Laki', '2010-01-05', 'Bandar Lampung', 'Islam', '081377777743', '-', 'jl. ms batubara gg. kenangan 19, Kelurahan kupang kota, Kec. Teluk Betung Timur', 'Yusman Sahar', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:28:09'),
(116, '0109224872', 'Karel dwi saputra', 'Laki-Laki', '2010-01-04', 'teluk betung', 'Islam', '082376761007', '-', 'jl. ms. batubara gg. delima no. 23, Kelurahan kupang teba, Kec. Teluk Betung Utara', 'rohman azis', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:28:19'),
(118, '0105046823', 'Kevin Pratama', 'Laki-Laki', '2010-07-10', 'BandarÂ Lampung', 'Islam', '083168611703', '-', 'Jl. Gn. Krakatau, Kelurahan Kupang Kota, Kec. Teluk Betung Utara', 'Tukiman', '-', 2022, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, NULL),
(119, '0095283618', 'Keysa Aqila Zahra', 'Perempuan', '2009-12-10', 'BandarÂ Lampung', 'Islam', '081287896796', '-', 'Jl. Hasanudin Gg. Lamphong Lk II, Kelurahan Gunung Mas, Kec. Teluk Betung Utara', 'Sutrisno', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:32:42'),
(120, '0117090237', 'KEYSA PURNAMA SARI', 'Perempuan', '2011-05-28', 'BandarÂ Lampung', 'Islam', '088286498470', '-', 'JL.KANGKUNG DALAM LK.II NO.44, Kelurahan Desa/Kel. Kangkung, Kec. Bumi Waras', 'SUKARJA', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:32:55'),
(121, '0099651875', 'KEZIA NAYLA KERENPUKH PAKPAHAN', 'Perempuan', '2009-10-14', 'TELUK BETUNG', 'Kristen', '081279940257', '-', 'DRS.WARSITO GANG MALABAR KUPANG KOTA, Kelurahan KUPANG KOTA, Kec. Teluk Betung Barat', 'HENDRIK PAKPAHAN', '081279940257', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:33:23'),
(122, '0096331182', 'KHAIRUNNISA MASAYU', 'Perempuan', '2009-12-25', 'BandarÂ Lampung', 'Islam', '089516229905', '-', 'Jl. YOS SUDARSO, Kelurahan BUMI WARAS, Kec. Bumi Waras', 'TRIONO', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:33:33'),
(126, '0103624404', 'Kirana Agustina Ramadani', 'Perempuan', '2010-08-23', 'BandarÂ Lampung', 'Islam', '-', '-', 'ikan julung, kelurahan skip rahayu, Kec. Bumi Waras', 'Sugiarto', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:35:36'),
(127, '0102202211', 'Kusri Yanti', 'Perempuan', '2010-06-20', 'Teluk Betung', 'Islam', '089637557626', '-', 'Jl. Drs. Warsito Gg. Semeru No. 36 LK II, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Abdul Gafur', '-', 2022, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:37:02'),
(128, '0097362059', 'Lailatul Hoiriyah', 'Perempuan', '2009-10-17', 'Bandar Lampung', 'Islam', '0895620367310', 'Lailatul@gmail.com', 'jL. WR. Supratman Gg. Pancurmas LK.I, Kelurahan Gunung Mas, Kec. Teluk Betung Utara', 'Sanali', '0895620367310', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:37:10'),
(129, '0107570717', 'Laili Rahmawati', 'Perempuan', '2010-06-18', 'BandarÂ Lampung', 'Islam', '0895705230659', '-', 'jl. wr. supratman gg. gunung kelud lk.II, Kelurahan Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Ahmad Rojikin', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:37:22'),
(131, '0111391985', 'LUTHFIA ALISIA PUTRI', 'Perempuan', '2011-05-22', 'BandarÂ Lampung', 'Islam', '089630430126', '-', 'JL MS BATU BARA GG MELATI NO.26, Kelurahan Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara', 'SUROTO', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:43:41'),
(132, '3116121709', 'M FATIH AL HAITAMI', 'Laki-Laki', '2011-08-30', 'BandarÂ Lampung', 'Islam', '082195577212', '-', 'JL. YOS SUDARSO GG CENDANA VI LK I, Kelurahan Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'KOMARUZZAMAN', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:43:48'),
(133, '3101407703', 'M TAUFAN PRATAMA', 'Laki-Laki', '2010-07-10', 'BandarÂ Lampung', 'Islam', '089523115195', '-', 'JL. GUNUNG KRAKATAU LK I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'M JEFRI JULIANTO', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:43:59'),
(136, '0107075892', 'M. Alfa Rizki Saputra', 'Laki-Laki', '2010-09-07', 'BandarÂ Lampung', 'Islam', '0895605936003', '-', 'Jl. Drs. Warsito, Kelurahan Kupang Kota, Kec. Teluk Betung Utara', 'Suhendri', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:44:11'),
(138, '0111913598', 'M. DAFFA PRATAMA', 'Laki-Laki', '2011-03-23', 'Bandar Lampung', 'Islam', '083150316108', '-', 'JL IKAN MAS GG MANSUR LK III, Desa/Kel. Kangkung, Kec. Bumi Waras', 'AGUS MARDIANTO', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:48:25'),
(139, '0105953481', 'M. Danang Rifaldi', 'Laki-Laki', '2010-12-14', 'BandarÂ Lampung', 'Islam', '085658790020', '-', 'Jl. Tangkuban Perahu N0.7 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Rustam. S. Makki', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:48:19'),
(140, '0103913191', 'M. Danang Rifaldo', 'Laki-Laki', '2010-12-14', 'BandarÂ Lampung', 'Islam', '085658790020', '-', 'Jl. Tangkuban Perahu No. 7 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Rustam S. Makki', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:48:52'),
(141, '0103360760', 'M. Daniel', 'Laki-Laki', '2010-07-22', 'BandarÂ Lampung', 'Islam', '081540862710', '-', 'Jl. RW. Monginsidi Gg Batas Lk II, Kelurahan Talang, Kec. Teluk Betung Selatan', 'Ahmad Maimun Khairudin', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:49:02'),
(142, '0105803892', 'Abdi Negara', 'Laki-Laki', '2010-07-06', 'Teluk Betung', 'Islam', '085832208158', '-', 'Jl. KRAKATAU NO. 40, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Subandi', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 20:09:52'),
(143, '0113701227', 'Abdilah Rosyid', 'Laki-laki', '2011-03-18', 'Bandar Lampung 1', 'Islam', '082278292924', '-', 'jl. ms. batubara gg delima 22, Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara 1', 'Subandi', '082278292929', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 04:28:16'),
(144, '0113395006', 'Abdul Taqib Al Ilsan', 'Laki-Laki', '2011-02-08', 'Bandar Lampung', 'Islam', '082280593599', '-', 'jl. Hasanudin gg.Lampong LK II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'Muhammad Yusup', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 08:26:40'),
(145, '0101591502', 'ABIENAYA KARUNIA YUSUF', 'Laki-Laki', '2010-11-07', 'Bandar Lampung', 'Islam', '089650228278', '-', 'Jl. Tangkuban Perahu No.36 Lk.1', 'RIAN DANO', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 08:26:46'),
(149, '0106369418', 'ABIYA RISKY RAMADHAN', 'Laki-Laki', '2010-08-27', 'JAMBI', 'Islam', '082269380899', '-', 'Jln.Ir.H.Juanda', 'M SYARIF', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:28:22'),
(151, '0095544544', 'Adelia Chintya Putri', 'Perempuan', '2009-12-13', 'Teluk Betung', 'Islam', '0895600557171', '-', 'Jl. Tangkuban Perahu No. 50, Kupang Kota, Kec. Teluk Betung Utara', 'Paryono', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:38:05'),
(153, '0114993031', 'ADINDA NAYSILA AURA', 'Perempuan', '2011-04-11', 'Bandar Lampung', 'Islam', '089648855546', '-', 'JL.IKAN MAS GG.MANSYUR, BUMIWARAS, Kec. Bumi Waras', 'RAWUD', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:40:11'),
(159, '0121275529', 'Afika Najla Angellica', 'Perempuan', '2011-10-03', 'Bandar Lampung', 'Islam', '083193238602', '-', 'Jl. Hasanudin Gg Kantor Pos No. 7 LK II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'Johan Pranata', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 08:45:32'),
(162, '0091232565', 'AHMAD ALFARIQI ARIF', 'Laki-Laki', '2009-09-30', 'Teluk Betung', 'Islam', '-', '-', 'jl. laks malahayati no.33 e, teluk betung, Kec. Teluk Betung Selatan', 'junaidi', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:46:41'),
(164, '0105016012', 'Ahmad Fadhil Asshabierin', 'Laki-Laki', '2010-03-12', 'Bandar Lampung', 'Islam', '083169572762', '-', 'Jl. Drs. Warsito No. 44/42 Lk. II, Kupang Kota, Kec. Teluk Betung Utara', 'Muhammad Naza Alpha Putra', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:46:55'),
(165, '3097187557', 'Ahmad Faiz Zulkarnain', 'Laki-Laki', '2009-10-03', 'Bandar Lampung', 'Islam', '-', '-', 'JL. Drs. Warsito Gg. Rajabasa I No. 31, Kupang Kota, Kec. Teluk Betung Utara', 'Dede Marlia', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:47:08'),
(166, '3091612669', 'AHMAD GHIYATS NAJI FAWWA', 'Laki-laki', '2009-12-12', 'Bandar Lampung', 'Islam', '085368115581', 'ahmadghiyats@gmail.com', 'JL. HAYAM WURUK NO 27 GG DARUL ANSOR, Kebon Jeruk, Kec. Tanjung Karang Timur', 'M Aminuddin AR', '085368115581', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:47:19'),
(167, '0106840313', 'AHMAD RAFFA SETIAWAN', 'Laki-laki', '2010-09-28', 'Bandar Lampung', 'Islam', '085268582925', '-', 'JL. DRS. WARSITO NO. 6, KUPANG KOTA, Kec. Teluk Betung Utara', 'AGUS SETIAWAN', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-20 01:25:15'),
(168, '0112051781', 'AHMAD RAFFI FIRDAUS', 'Laki-Laki', '2011-02-21', 'Bandar Lampung', 'Islam', '088268311487', '-', 'KANGKUNG DAKAM NO.44, KANGKUNG, Kec. Bumi Waras', 'FAREL LATIP EVAN', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 08:47:44'),
(169, '3124948771', 'AHMAD SAIFULLOH', 'Laki-Laki', '2012-02-02', 'Bandar Lampung', 'Islam', '089504011311', '-', 'Jl. Ikan Kiter Blok C No. 57 LK II ,Desa/Kel. Kangkung, Kec. Bumi Waras', 'Muin', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 08:47:56'),
(172, '0115621542', 'AISYAH BELFA MAULIDIA', 'Perempuan', '2011-02-16', 'Bandar Lampung', 'Islam', '089502415962', '-', 'JL. IKAN KAKAP DALAM NO 11, Desa/Kel. Pesawahan, Kec. Teluk Betung Selatan', 'M.HARIS B', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 21:57:30'),
(174, '3105325514', 'AKHBAR MULIYA DHARMAWAN', 'Laki-Laki', '2010-10-03', 'Bandar Lampung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg. Semeru No.32 LK. II, Kupang Kota, Kec. Teluk Betung Utara', 'Anwar', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 21:57:36'),
(175, '0117277818', 'Akmal Rapi', 'Laki-Laki', '2011-04-12', 'Bandar Lampung', 'Islam', '085832664944', '-', 'Jl. Gn. Krakatau Gg. Lapangan Miring No. 18 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Fajar Afrianto', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 21:57:42'),
(177, '0113027587', 'Aldyindra Arsy Rayyan', 'Laki-laki', '2011-03-23', 'Metro', 'Islam', '082177951585', 'Aldyindra@gmail.com', 'Asrama Polda Lampung Blok E-1, Kupang Kota, Kec. Teluk Betung Utara', 'Novi Andalan', '082177951585', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 21:57:49'),
(179, '0109693921', 'Alfandi Faisal', 'Laki-Laki', '2010-09-15', 'Bandar Lampung', 'Islam', '083171551353', '-', 'jl. Hasanudin Gg. Nangka No. 18, Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara', 'Agus Faisal', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 21:57:56'),
(181, '3108207315', 'ALIF REZKY PRATAMA', 'Laki-Laki', '2010-05-14', 'Bandar Lampung', 'Islam', '082179224947', '-', 'Jl. Tangkuban Perahu LK.I, Kupang Kota, Kec. Teluk Betung Utara', 'Hasannudin', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 21:58:37'),
(182, '0105980833', 'ALIF SANDY SAPUTRA', 'Laki-Laki', '2010-06-03', 'Bandar Lampung', 'Islam', '0895391339876', '-', 'Jl, Gunung Krakatau No. 36 LK.I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'M.SUUD', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 21:58:50'),
(184, '0102837458', 'ALMAIDA GILSHERIN', 'Perempuan', '2010-02-06', 'Bandar Lampung', 'Islam', '-', '-', 'JL. YOS SUDARSO GG. M. AGUS, BUMI WARAS, Kec. Bumi Waras', 'ALEX CHANDRA', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:00:35'),
(186, '0115757157', 'ALYA KHOIRUN NISA', 'Perempuan', '2011-05-22', 'Bandar Lampung', 'Islam', '082177644315', '-', 'JL WR MONGINSIDI NO. 28, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'HERMANSYAH HAMDANI', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:01:32'),
(187, '0117720870', 'AMALIA ASYIFA PUTRI', 'Perempuan', '2011-04-24', 'Bandar Lampung', 'Islam', '089632549070', '-', 'JL.Martadinata Perum Waway No.2, Desa/Kel. Pesawahan, Kec. Teluk Betung Selatan', 'Arie Pragia', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:01:46'),
(189, '0109607654', 'M. Ergiansyah', 'Laki-Laki', '2010-04-21', 'Teluk Betung', 'Islam', '081279140433', '-', 'jl. hasanudin gg. kantor pos, teluk betung, Kec. Teluk Betung Selatan', 'bajuri', '081279140433', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:49:44'),
(191, '3116849934', 'M. FAQIH MUBAROK', 'Laki-Laki', '2011-03-23', 'BandarÂ Lampung', 'Islam', '082126997180', '-', 'JL RW MONGINSIDI GG MANIS LK II NO 48, Desa/Kel. Talang, Kec. Teluk Betung Selatan', 'RUDI HARTONO', '082126997180', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:49:54'),
(192, '0102040791', 'M. FARHAN', 'Laki-Laki', '2010-10-09', 'Teluk Betung', 'Islam', '088287143487', '-', 'JL. DRS. WARSITO GG. RAJABASA, KUPANG KOTA, Kec. Teluk Betung Utara', 'AHMAD YANI', '088287143487', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:50:04'),
(193, '0084970854', 'Amarullah', 'Laki-Laki', '2008-05-19', 'Bandar Lampung', 'Islam', '081994922777', '-', 'KH. Ahmad Dahlan Gg. Mawar, Kupang Teba, Kec. Teluk Betung Utara', 'Aman', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:01:58'),
(195, '0102036027', 'ANASTASYA SALMA ARZETY', 'Perempuan', '2010-09-26', 'RAJABASA', 'Islam', '085380211103', '-', 'Jl. Tangkuban Perahu No. 02, Kupang Kota, Kec. Teluk Betung Utara', 'ABDUL RAHMAN', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:04:41'),
(196, '0103325147', 'Andre Julian Pratama', 'Laki-Laki', '2010-09-11', 'Bandar Lampung', 'Islam', '083871353275', '-', 'jl. hasanudin gg. kantor pos lk.II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'boimin', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:04:53'),
(198, '0108608889', 'M. FASYA ALFIKRI', 'Laki-laki', '2010-06-06', 'Teluk Betung', 'Islam', '085658311078', 'FASYA@gmail.com', 'JL. GN. KRAKATAU NO. 16 LK I, KUPANG KOTA, Kec. Teluk Betung Utara', 'DWI SUNARTO', '085658311078', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:50:13'),
(199, '0096231971', 'M. Febriansyah Maulana', 'Laki-Laki', '2009-02-14', 'BandarÂ Lampung', 'Islam', '089633506868', '-', 'Jl. Laksamana Malahayati, Pesawahan, Kec. Teluk Betung Selatan', 'Mansyur', '089633506868', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:50:22'),
(202, '0104410984', 'M. Habiburrahman Al Hakim', 'Laki-Laki', '2010-05-30', 'Teluk Betung', 'Islam', '0895600983080', '-', 'Jl. Teluk Bone Sukabanjar Kota Karang, Kota Karang, Kec. Teluk Betung Timur', 'LUKMAN', '0895600983080', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:50:38'),
(204, '0108703957', 'M. IBNUH', 'Laki-Laki', '2010-01-15', 'Merbau Ranji', 'Islam', '085788393766', '-', 'JL. DRS WARSITO GG TANGGAMUS, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'DARMAWANTO', '085788393766', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:50:50'),
(206, '0109832276', 'M. MARCVELL ADITIA', 'Laki-Laki', '2010-05-31', 'BandarÂ Lampung', 'Islam', '089504338060', '-', 'JL. P. TIRTAYASA, CAMPANG RAYA, Kec. Tanjung Karang Timur', 'SETIO MURJOKO', '089504338060', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:51:14'),
(207, '0105257641', 'M. RAFA ARJUNATAN PRATAMA', 'Laki-Laki', '2010-04-25', 'BandarÂ Lampung', 'Islam', '082289354822', '-', 'JL IKAN SEPAT GG. EKA JAYA LK. III, KUPANG KOTA, Kec. Teluk Betung Utara', 'DEDE HARIYANTO', '082289354822', 2022, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:51:29'),
(208, '3080687905', 'M. RAKA', 'Laki-Laki', '2008-12-17', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. MS. BATU BARA GG. KENANGA NO. 38, Kupang Teba, Kec. Teluk Betung Utara', 'IIS BADRIAH', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:57:03'),
(211, '0088724540', 'M. SYACRIEL PRATAMA', 'Laki-Laki', '2008-01-27', 'Bandar Lampung', 'Islam', '-', '-', 'JL. YOS SUDARSO GG. KETAPANG, SUKARAJA, Kec. Bumi Waras', 'SYAIFUDIN', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:57:33'),
(212, '0108135616', 'M. Verdi Abdurrohman', 'Laki-Laki', '2010-12-21', 'Teluk Betung', 'Islam', '083147365274', '-', 'Jl. Drs. Warsito Gg. Rajabasa No. 18 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Endang Supriyatna', '083147365274', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:57:43'),
(213, '0088983854', 'M.BAGAS FERIYANSYAH', 'Laki-Laki', '2008-12-11', 'Teluk Betung', 'Islam', '089632114148', '-', 'JL. IKAN LAYUR NO.2C LK II, Desa/Kel. Teluk Betung, Kec. Teluk Betung Selatan', 'FREDY HARYANTO', '089632114148', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:58:48'),
(214, '0106358491', 'M.IQBAL FIKRIANSYAH', 'Laki-Laki', '2010-05-20', 'Teluk Betung', 'Islam', '085736532487', '-', 'JL.GUNUNG KRAKATAU NO.02, KUPANG KOTA, Kec. Teluk Betung Utara', 'ERWIN NOVIANSYAH', '085736532487', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:59:02'),
(215, '0106882781', 'MAHARAJA SURANTA K.', 'Laki-Laki', '2010-08-02', 'BandarÂ Lampung', 'Islam', '082376880166', '-', 'JL.T.PERAHU GG.GN.AGUNG NO.3 LK.II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'MERU K.', '082376880166', 2023, '7B', 'default-profile-picture.jpg', 'Aktif', 1, NULL, '2024-11-16 23:59:15'),
(218, '0094034733', 'MALIK JALALUDIN', 'Laki-Laki', '2009-12-13', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. YOS SUDARSO GG. M. AGUS LK. I, BUMI WARAS, Kec. Bumi Waras', 'AHMAD ALI', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:27:31'),
(222, '0116090559', 'MARTIAH', 'Perempuan', '2011-03-09', 'Teluk Betung', 'Islam', '0895601766166', '-', 'JL YOS SUDARSO ,M. AGUS LK I, Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'JUNITUN', '0895601766166', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:29:19'),
(225, '0102217507', 'Mas Nabil Alwali', 'Laki-Laki', '2010-07-27', 'BandarÂ Lampung', 'Islam', '082183483946', '-', 'Jl. Drs. Warsito Gg. Tanggamus No. 24A, Desa/Kel. Kupang Teba, Kec. Teluk Betung Utara', 'M. Tubi Apriyandi', '082183483946', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:29:31'),
(226, '0102246713', 'Mas Rafki Pratama', 'Laki-Laki', '2010-10-12', 'BandarÂ Lampung', 'Islam', '082175215218', '-', 'JL. IKAN SEPAT GG EKA JAYA LK III, Desa/Kel. Kangkung, Kec. Bumi Waras', 'Mastuhi', '082175215218', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:29:41'),
(227, '0083182603', 'Mas Zaki Naufal', 'Laki-Laki', '2008-10-17', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg. Tanggamus No. 24A, Kupang Teba, Kec. Teluk Betung Utara', 'Mas Tubi Apriyandi', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:29:54'),
(229, '0084213751', 'Maulana Al Fazri', 'Laki-Laki', '2008-11-02', 'Sekampung', 'Islam', '089689025781', '-', 'Jl. Tangkuban Perahu No. 27 Lk. I, Kupang Kota, Kec. Teluk Betung Utara', 'Suyanto', '089689025781', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:30:19'),
(232, '0116319254', 'Mega Regita Cahyani', 'Laki-Laki', '2011-02-27', 'BandarÂ Lampung', 'Islam', '0883867843246', '-', 'Jl. Gn. Krakatau No. 9, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Jumadi', '0883867843246', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:31:22'),
(233, '3119760843', 'Meisya Anggraini', 'Perempuan', '2011-05-11', 'BandarÂ Lampung', 'Islam', '089630058890', '-', 'Jl. Tangkuban Perahu No.10 LK I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'YUSDI', '089630058890', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:31:34'),
(237, '3107595343', 'MITHA ANGGRAINI', 'Perempuan', '2010-05-29', 'BandarÂ Lampung', 'Islam', '085267907894', '-', 'JL WR MONGINSIDI GANG MADRASAH, Talang, Kec. Teluk Betung Selatan', 'Anwar Sahadat', '085267907894', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:34:48'),
(238, '0107051724', 'MUFADHAL HAFIZ HIDAYAH', 'Laki-Laki', '2010-06-29', 'BandarÂ Lampung', 'Islam', '089634264336', '-', 'JL. DRS. WARSITO GG. TANGGAMUS, KUPANG KOTA, Kec. Teluk Betung Utara', 'MULYONO', '089634264336', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:37:41'),
(240, '0106227120', 'Muhamad Abialdeva Farel', 'Laki-laki', '2010-03-22', 'Teluk Betung', 'Islam', '08989210890', '-', 'MS. Batubara Gg. Melati No. 18, Kupang Teba, Kec. Teluk Betung Utara', 'Syaiful Rahman', '08989210890', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:37:57'),
(241, '0105164041', 'Muhamad Afrizal', 'Laki-Laki', '2010-04-03', 'Tanggerang', 'Islam', '085267905623', '-', 'Jl. WR. Monginsidi Gg Manis No 44, Talang, Kec. Teluk Betung Selatan', 'Sutrisno', '085267905623', 2022, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:38:06'),
(242, '0099846499', 'MUHAMAD ALI FAKHRI', 'Laki-Laki', '2009-10-03', 'Teluk Betung', 'Islam', '-', '-', 'JL WR MONGINSIDI GG MURAI 08, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'DAPARI', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:38:16'),
(244, '0107930025', 'Muhamad Fadli Saputra', 'Laki-laki', '2010-05-14', 'Bandar Lampung', 'Islam', '088269020148', 'Fadli@gmail.com', 'Jl. Wr. Monginsidi No. 10 Lk. II, Kupang Kota, Kec. Teluk Betung Utara', 'Saryani', '088269020148', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:38:55'),
(246, '0117400387', 'Muhamad Fatir', 'Laki-Laki', '2011-07-01', 'BandarÂ Lampung', 'Islam', '0895383114873', '-', 'Jl. Wr. Monginsidi Lk. II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Sukirno', '0895383114873', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:39:26'),
(247, '0095326393', 'Muhamad Haikal Davi', 'Laki-Laki', '2009-09-28', 'BandarÂ Lampung', 'Islam', '08990720040', '-', 'jl. tangkuban perahu gg. pepandaian no. 2/12, teluk betung, Kec. Teluk Betung Selatan', 'adi agus pribadi', '08990720040', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:40:47'),
(248, '0107057275', 'MUHAMAD RISKI AL FATIR', 'Laki-Laki', '2010-11-25', 'BandarÂ Lampung', 'Islam', '085273871011', '-', 'JL. YOS SUDARSO GG M. AGUS, Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'SIGIT KAMSENO', '085273871011', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:40:59'),
(249, '3108532683', 'MUHAMMAD AL HAFIZH', 'Laki-Laki', '2010-10-28', 'BandarÂ Lampung', 'Islam', '081369463671', '-', 'JL MS BATU BARA GANG MELATI NO 32, Kupang Kota, Kec. Teluk Betung Utara', 'Muhammad Ridwan', '081369463671', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:42:02'),
(250, '0094733359', 'Muhammad Aqil Affandi', 'Laki-Laki', '2009-11-03', 'BandarÂ Lampung', 'Islam', '0895411226948', '-', 'Jl. Hasanudin No.06 LK.II, Gunung Mas, Kec. Teluk Betung Utara', 'Irwanto', '0895411226948', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:42:11'),
(251, '0115403964', 'Muhammad Arda Ramadhan', 'Laki-Laki', '2011-08-08', 'BandarÂ Lampung', 'Islam', '083879805179', '-', 'JL. LAKS. MALAHAYATI GG PERMATA NO.08 LK I, Desa/Kel. Teluk Betung, Kec. Teluk Betung Selatan', 'Nurdeni', '083879805179', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:42:21'),
(252, '0108109109', 'Muhammad Brama Lesmana', 'Laki-Laki', '2010-09-13', 'BandarÂ Lampung', 'Islam', '081271189743', '-', 'Raya Panjang-Suban, Merbau Mataram, Kec. Merbau Mataram', 'Banyu Purwanto', '081271189743', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:44:24'),
(253, '0108797787', 'Muhammad Caesar', 'Laki-Laki', '2010-04-30', 'BandarÂ Lampung', 'Islam', '0895604266289', '-', 'Jl. Tangkuban Perahu Gg. Manggis 97 LK II, Kupang Kota, Kec. Teluk Betung Utara', 'Y. Irwansyah', '0895604266289', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:44:32'),
(255, '0102446242', 'MUHAMMAD DECO SYAHPUTRA', 'Laki-Laki', '2010-05-10', 'BandarÂ Lampung', 'Islam', '085798025859', '-', 'JL. IKAN SELAR LK I, SUKARAJA, Kec. Bumi Waras', 'JOHANSYAH', '085798025859', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:46:20'),
(256, '0108061847', 'Muhammad Dzaki', 'Laki-Laki', '2010-02-05', 'Teluk Betung', 'Islam', '083153257013', '-', 'Jl. Hasanudin Gg. Kantor Pos No.30, Gunung Mas, Kec. Teluk Betung Selatan', 'Sugiono', '083153257013', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:46:30'),
(257, '0117480564', 'ANGELA EKA KINARA LARASATI', 'Perempuan', '2011-01-15', 'SERANG', 'Katholik', '0895397122090', '-', 'JL. DRS. WARSITO GG SEMERU NO.9 LK II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'PATRIKO TRI SUDARWANTO', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:07:06'),
(258, '0104579517', 'ANGGA MANGGALA', 'Laki-Laki', '2010-01-09', 'Bandar Lampung', 'Islam', '083160137083', '-', 'Gg masjid No. 33-F Lk II, Teluk Betung, Kec. Teluk Betung Selatan', 'NIRWANSYAH', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:07:19'),
(259, '3092997434', 'ANNA VIVIA AL HUJA', 'Perempuan', '2009-11-28', 'Bandar Lampung', 'Islam', '-', '-', 'Jln. Ahmad yani no 3, PALAPA, Kec. Tanjung Karang Pusat', 'HUJATULLAH', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:07:33'),
(260, '3107688533', 'ARFAHRI ADE CHANDRA', 'Laki-laki', '2010-02-22', 'Bandar Lampung', 'Islam', '085840336591', 'ARFAHRI@gmail.com', 'Jl Wr Supratman Aspol Polda Block G/3, Kupang Kota, Kec. Teluk Betung Utara', 'Heri Chandra', '085840336591', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:11:02'),
(262, '3111236582', 'ARJUNA PUTRA WIJAYA', 'Laki-Laki', '2011-07-28', 'Bandar Lampung', 'Islam', '081368089365', '-', 'JL. RW MONGINSIDI GG. MADRASAH NO.87 LK1, Desa/Kel. Talang, Kec. Teluk Betung Selatan', 'VICTOR HADIWIJAYA', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:12:31'),
(263, '0117623442', 'Armansyah', 'Laki-Laki', '2011-01-03', 'Teluk Betung', 'Islam', '082246442150', '-', 'Jl. Drs. Warsito Gg. Semeru, Kupang Kota, Kec. Teluk Betung Utara', 'Alif Farid', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:12:40'),
(264, '0105884207', 'ARROKHIT AL-HABSYI', 'Laki-Laki', '2010-07-04', 'Bandar Lampung', 'Islam', '088276321157', '-', 'JL. MAGUS NO 35 LK I, Desa/Kel. Bumiwaras, Kec. Bumi Waras', 'LADEDI', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:12:54'),
(265, '3118390246', 'ARKA ALPHARIZI', 'Laki-Laki', '2011-12-30', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'KOTA KARANG LK. I, KOTA KARANG, TELUK BETUNG TIMUR', 'Suheni', '-', 2024, '7A', 'default-profile-picture.jpg', 'Aktif', 1, NULL, '2024-11-17 03:16:37'),
(266, '0104693414', 'Arya Dinata Sanjaya', 'Laki-Laki', '2010-05-09', 'Bandar Lampung', 'Islam', '081367742759', '-', 'WR. Monginsidi Gg Aslim No 18, Talang, Kec. Teluk Betung Selatan', 'Hendra Sanjaya', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:14:37'),
(268, '0117235789', 'Asyifa Rama Aulia', 'Perempuan', '2011-06-24', 'Teluk Betung', 'Islam', '085266863331', '-', 'Jl. Gn. Krakatau No. 8 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Ahmad Kodri', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:41:50'),
(270, '0103512494', 'Aulia Syafitri', 'Perempuan', '2010-10-09', 'Bandar Lampung', 'Islam', '085664612440', '-', 'Jl. Drs. Warsito Gg. Rajabasa Lk. I, Kupang Kota, Kec. Teluk Betung Utara', 'Hambali', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:41:44'),
(271, '0101901766', 'AURA NABILA', 'Perempuan', '2010-05-02', 'BOGOR', 'Islam', '085838188168', '-', 'JL. WR SUPRATMAN N0.32 LK I, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'KEMAS ABDUL HAMID ADE FREY', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:42:00'),
(274, '0107513841', 'ROMEO ARTHAWIJAYA', 'Laki-Laki', '2010-09-17', 'Bandar Lampung', 'Islam', '-', '-', '-', 'DONI SURYANTO', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:55:08'),
(275, '0091347671', 'Sahira Nur Ramadhani', 'Perempuan', '2009-09-09', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Edwin Salfani', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:00:53'),
(276, '0102154711', 'Sakil', 'Laki-Laki', '2010-07-18', 'Bandar Lapung', 'Islam', '-', '-', '-', 'Hariyanto .Alm', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:01:09'),
(278, '0097456867', 'SALSA NAZWA AULIA', 'Perempuan', '2009-12-12', 'TELUK BETUNG', 'Islam', '-', '-', '-', 'YUSEP MUCHLIS', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:01:32'),
(280, '0108615739', 'Salwa Nailah', 'Perempuan', '2010-06-11', 'Bekasi', 'Islam', '-', 'salwa@gmail.com', 'ikan julung', 'Bambang Bundoro', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:01:52'),
(283, '0091517646', 'SATRIO BINTANG ADITIAN', 'Laki-Laki', '2009-01-13', 'TANJUNG KARANG', 'Islam', '-', '-', '-', 'SUPRIADI', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:02:04'),
(284, '0117849499', 'ZASKIA APRILIA', 'Perempuan', '2011-04-18', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'NURMAN SHARONI', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:12:05'),
(286, '0096940219', 'Zahra Saskia Putri', 'Perempuan', '2009-08-20', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Majani', '-', 2021, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:11:50'),
(287, '0096900725', 'ZACKY WAHYU WAHIDIANSYAH', 'Laki-laki', '2009-10-12', 'BANJAR NEGARA', 'Islam', '089630652971', 'ZACKY@gmail.com', 'JL. WR. MONGINSIDI GG BATAS NO 27 LK II', 'Hendry Surya Permana', '089630652971', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:11:39'),
(288, '0108579492', 'Yulia Rahmawati Dewi', 'Perempuan', '2010-03-21', 'Teluk Betung', 'Islam', '-', '-', '-', 'Maridi', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:11:29'),
(289, '0119442608', 'Yasmine Fachira Tsarwa', 'Perempuan', '2011-01-14', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Ferry Zulfikar', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 03:10:56');
INSERT INTO `siswa` (`id`, `nisn`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `email`, `alamat`, `nama_wali`, `no_telepon_wali`, `angkatan`, `kode_kelas`, `image`, `status_siswa`, `semester_id`, `created_at`, `updated_at`) VALUES
(290, '0107820330', 'YARIS KURNIAWAN', 'Laki-laki', '2010-04-19', 'BandarÂ Lampung', 'Islam', '085279882696', 'yaris@gmail.com', 'JL. YUDISTIRA GG WARU NO. 55', 'SUYATMAN', '085279882696', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:10:44'),
(291, '0111740598', 'YAFI LUKMAN NUL HAKIM', 'Laki-Laki', '2011-07-18', 'TANJUNG KARANG', 'Islam', '-', '-', '-', 'SA\\\'IN', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 03:10:31'),
(293, '0117960703', 'Wika Aisya', 'Perempuan', '2011-03-25', 'BandarÂ Lampung', 'Islam', '0899912339491', '-', '-', 'Fayumi', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 03:10:18'),
(294, '0118333786', 'WENING TYAS CAHYANING SANI', 'Perempuan', '2011-02-28', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'JEPRI SANI', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 03:10:05'),
(296, '0106551039', 'Vira Cahyati', 'Perempuan', '2010-03-11', 'Majalengka', 'Islam', '-', '-', '-', 'M. Tatang', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 03:09:49'),
(298, '0113583792', 'VINO AGUSTIAN', 'Laki-Laki', '2011-08-06', 'GROBOGAN', 'Islam', '-', '-', '-', 'AGUS WAHYUDI', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:39:00'),
(300, '0109354146', 'Varissa Nayshila Alviani', 'Perempuan', '2010-10-19', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Jamaludin', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:38:44'),
(302, '0107810758', 'Triyawati', 'Perempuan', '2010-11-21', 'Sukototo', 'Islam', '-', '-', '-', 'Waluyo', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:38:30'),
(303, '0118699996', 'TRIYA QURRATA AYUNN', 'Perempuan', '2011-06-03', 'TELUK BETUNG', 'Islam', '-', '-', '-', 'UJANG HINDARMIN', '--', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:38:17'),
(306, '0098744951', 'TIARA LESTARI', 'Perempuan', '2009-02-19', 'TELUK BETUNG', 'Islam', '-', '-', '-', 'AMAT SAIPI', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:30:06'),
(308, '0103727807', 'SYIFA MAULIDA SAFITRI', 'Perempuan', '2010-09-20', 'TELUK BETUNG', 'Islam', '085896544711', 'SYIFA@gmail.com', 'JL. WR. SUPRATMAN GG. PEGADAIAN NO. 23', 'TOPAN LESMANA MADYA', '085896544711', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:29:55'),
(310, '0101774673', 'SYAKIRA ALISHA', 'Perempuan', '2010-04-23', 'TELUK BETUNG', 'Islam', '089629132568', 'SYAKIRA@gmail.com', 'TANJUNG AGUNG', 'GUNTUR ADITYA MUDA', '089629132568', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:29:44'),
(316, '0116836698', 'Suci Keyla Bastiar', 'Perempuan', '2011-05-06', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Wahyu Bastiar', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:29:30'),
(317, '0096717711', 'Suci Istiqomah', 'Perempuan', '2009-07-19', 'Teluk Betung', 'Islam', '-', '-', '-', 'Wasno', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:29:13'),
(318, '0116095804', 'STEVANI FRANSISKA', 'Perempuan', '2011-07-04', 'PULAU PANGGUNG', 'Islam', '-', '-', '-', 'HERY YANTO', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:26:12'),
(320, '3102827638', 'SITI RAHMA KESUMA', 'Perempuan', '2010-09-25', 'TELUKBETUNG', 'Islam', '08989065548', '-', 'JL. DRS. WARSITO GG. MERAPI NO. 08', 'Jai Rahmat', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:25:42'),
(321, '0108651591', 'Siti Nabila Assyfa', 'Laki-Laki', '2010-06-27', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'kurniawan santoso', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:23:56'),
(322, '0106684763', 'Siti Alsyafa', 'Perempuan', '2010-04-17', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'deni yansyah', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:23:08'),
(323, '0102301468', 'SITI AL KHAIRIYAH', 'Perempuan', '2010-02-19', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'ROMINAH', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:22:55'),
(324, '0109875018', 'Siti Aisah Kurnia Syifa', 'Perempuan', '2010-08-30', 'pandeglang', 'Islam', '-', '-', '-', 'muhammad yusuf', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:22:41'),
(325, '0105661078', 'SINAR PUTRI RAMADHANI', 'Perempuan', '2010-08-31', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'EKO HARYANTO', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:22:28'),
(326, '0107222900', 'SILVIA RESTU FADILLA', 'Perempuan', '2010-12-15', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'TONI SARYONO', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:22:16'),
(327, '0095679776', 'Silma Oktavia', 'Perempuan', '2009-12-25', 'Bandarsari', 'Islam', '-', '-', '-', 'Paiman', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:22:04'),
(328, '3100496165', 'SILA NAFISAH', 'Perempuan', '2010-03-08', 'Teluk Betung', 'Islam', '-', '-', '-', 'RIDWAN', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:21:53'),
(329, '0114715268', 'Shinta Herlia Putri', 'Perempuan', '2011-07-01', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Hendra Sanjaya', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:21:42'),
(330, '0104118656', 'Sherin Febrian Antoni', 'Perempuan', '2010-02-02', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Suparsi', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:21:30'),
(331, '0116535572', 'SHASA APDELIA PURI', 'Perempuan', '2011-04-09', 'BandarÂ Lampung', 'Islam', '-', '-', '-', 'Edi Susilo', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 02:20:26'),
(334, '0109435796', 'SATYA ALIEF BASSALAMAH', 'Perempuan', '2010-12-13', 'Bandar Lampung', 'Islam', '0895609610450', '-', 'JL. MS. BATUBARA GG. DAHLIA NO.35', 'RASMIZAL', '0895609610450', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 02:02:19'),
(335, '0105913038', 'Muhammad Fachri Akbar', 'Laki-Laki', '2010-05-11', 'BandarÂ Lampung', 'Islam', '-', '-', 'ikan julung, skip rahayu, Kec. Bumi Waras', 'Vikriyanto', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:46:40'),
(336, '0102917025', 'Muhammad Fadil Aditiya', 'Laki-Laki', '2010-11-21', 'BandarÂ Lampung', 'Islam', '0895412741188', '-', 'Jl. Hasanudin Gg. Kantor Pos, Gunung Mas, Kec. Teluk Betung Utara ', 'm. juber', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:46:49'),
(339, '0117252398', 'MUHAMMAD FAIRUL NIZAM', 'Laki-Laki', '2011-04-27', 'Cilegon', 'Islam', '08952097098', '-', 'JL. LAKS MALAHAYATI N0.08 LK II, Desa/Kel. Pesawahan, Kec. Teluk Betung Selatan', 'ZULFIKAR', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:46:59'),
(344, '0116131129', 'Muhammad Fikri Firmansyah', 'Laki-Laki', '2011-06-22', 'BandarÂ Lampung', 'Islam', '081272339612', '-', 'Jl. Tangkuban Perahu No. 15, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Abdur Roni', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:47:10'),
(345, '0092565641', 'Muhammad Hafiz Ramadhan', 'Laki-laki', '2009-06-24', 'teluk betung', 'Islam', '081272173398', 'Hafiz@gmail.com', 'jl. wr. supratman gg. pegadaian no.11, teluk betung, Kec. Teluk Betung Selatan', 'slamet riyadi', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:48:40'),
(346, '0111129516', 'Muhammad Ilyas Putra Darma', 'Laki-Laki', '2011-02-20', 'BandarÂ Lampung', 'Islam', '089633412339', '-', 'jl. wr. supratman gg. pancurmas no. 24 LK I, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'Ludi yudha setiawan', '-', 2022, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:48:51'),
(347, '0114379930', 'MUHAMMAD MASYKUR ROMADHONI', 'Laki-Laki', '2011-08-28', 'PAHAWANG', 'Islam', '083168754416', '-', 'Jl. Teluk Ratai Sinar Laut LK II, Desa/Kel. Kota Karang, Kec. Teluk Betung Timur', 'Udin', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:51:14'),
(350, '0098544013', 'Muhammad Rafli Santoso', 'Laki-Laki', '2009-07-09', 'BandarÂ Lampung', 'Islam', '081369644921', '-', 'Jl. Tangkuban Perahu No. 19 Lk. I, Kupang Kota, Kec. Teluk Betung Utara', 'Dadi Santoso', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:53:44'),
(351, '0102574323', 'MUHAMMAD RAMADHAN', 'Laki-Laki', '2010-08-19', 'BandarÂ Lampung', 'Islam', '089687253444', '-', 'JL. DRS. WARSITO GG. TANGGAMUS/ 50, KUPANG KOTA, Kec. Teluk Betung Utara', 'SUWARTO', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:53:51'),
(352, '0107490879', 'MUHAMMAD RIDHO PRATAMA', 'Laki-Laki', '2010-06-14', 'TELUK BETUNG', 'Islam', '083134110119', '-', 'JL.IKAN SEPAT, KANGKUNG, Kec. Bumi Waras', 'RIYANTO', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:57:33'),
(353, '0106109028', 'Muhammad Sandi Banyu Asmoro Langit', 'Laki-Laki', '2010-12-14', 'BandarÂ Lampung', 'Islam', '082282322993', '-', 'Jl. Gn. Krakatau Gg. Wilis / 07 Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Roby Arianto', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:57:45'),
(356, '0112174895', 'Muhammad Tegar Pratama', 'Laki-Laki', '2011-08-31', 'BandarÂ Lampung', 'Islam', '089521320092', '-', 'Jl. Wr. Supratman Gg. Pegadaian No. 18 LK II, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'M. Teguh Setiawan', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:58:05'),
(357, '3114641290', 'Muhammad Singa Prabu Amron', 'Laki-Laki', '2011-06-19', 'Batam', 'Islam', '085758994778', '-', 'Jl. Drs. Warsito Gg Tanggamus, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'AJENG S. BALQIS AMRON', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 00:57:54'),
(361, '0092091094', 'MUSLIM AHMADI SOLIHIDDIN', 'Laki-Laki', '2009-12-04', 'BandarÂ Lampung', 'Islam', '081387887974', '-', 'YOS SOEDARSO GG. M. AGUS LK I, BUMI WARAS, Kec. Bumi Waras', 'NUR QOSIM', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:58:16'),
(362, '0106774144', 'Mutiara Andini', 'Perempuan', '2010-09-22', '-', 'Islam', '089631961615', '-', 'jl. hasanudin gg, kantor pos no. 5, gunung mas, Kec. Teluk Betung Utara', 'Wardi Sandi', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:59:16'),
(363, '3102441510', 'Mutiara Eka Pratiwi', 'Perempuan', '2010-01-25', 'BandarÂ Lampung', 'Islam', '085367070071', '-', 'Jl. T. Semangka Kp. Baru Lk. I, Kota Karang, Kec. Teluk Betung Timur', 'Mulkan', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 00:59:24'),
(364, '0096380547', 'NABILA DZAKIRA', 'Perempuan', '2009-07-30', 'Teluk Betung', 'Islam', '087828758913', '-', 'Jl. WR. Supratman Gg. R. Danial, Gunung Mas, Kec. Teluk Betung Utara', 'IMAWAN', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:01:56'),
(365, '0101937474', 'Nabila Maysa Putri', 'Perempuan', '2010-05-21', 'Gunung Sugih', 'Islam', '081379275064', '-', 'Jl. WR. Supratman Gg. Pancur Mas No. 32 LK. I, Gunung Mas, Kec. Teluk Betung Selatan ', 'Antoni', '-', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:02:05'),
(366, '3118333446', 'NABILA TAZKIA AMARA', 'Perempuan', '2011-03-10', 'TALANG PADANG', 'Islam', '082184673215', '-', 'JL MONGONSIDI GG MADRASAH LK II, Desa/Kel. Talang, Kec. Teluk Betung Selatan', 'AGUS ANSORI', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 06:17:31'),
(368, '0111318418', 'Nadiera Kallea Shifa Almyra', 'Perempuan', '2011-07-30', 'BandarÂ Lampung', 'Islam', '083135302010', '-', 'Jl. Gn. Krakatau No. 36, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Nazbudin', '-', 2022, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:02:58'),
(369, '0104373313', 'NADIN', 'Perempuan', '2010-08-22', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. MAYOR SALIM BATU BARA GG SUPRIL 26, KUPANG TEBA, Kec. Teluk Betung Utara ', 'JON KENEDI', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:03:18'),
(370, '0115712769', 'Nadine Adelia', 'Perempuan', '2011-03-07', 'BandarÂ Lampung', 'Islam', '082280329680', '-', 'JL. DRS WARSITO GG TANGGAMUS, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Safuan Erdi Yanto', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:03:28'),
(374, '3119464057', 'NAJUA', 'Perempuan', '2011-03-24', 'BandarÂ Lampung', 'Islam', '08951850907', '-', 'JL. GUNUNG KRAKATAU NO.36, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'FIQIH', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:03:46'),
(376, '0118626063', 'Natasya Dwi Bunga Rastika', 'Perempuan', '2011-06-15', 'BandarÂ Lampung', 'Islam', '081278120331', '-', 'Jl. Gn. Krakatau No. 66, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'Herdiyan', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:05:36'),
(377, '0103502139', 'Naumira Shadrina Nur', 'Perempuan', '2010-11-05', 'Bandar Lampung', 'Islam', '08983994850', 'Naumira@gmail.com', 'Jl. Hasanudin LK.II, Gunung Mas, Kec. Teluk Betung Selatan', 'Untung Suhardi', '08983994850', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:05:47'),
(378, '0091216811', 'NAVARA INDAH ANDINI', 'Perempuan', '2009-12-10', 'JAKARTA', 'Islam', '089531079922', '-', 'SUNTER MUARA, SUNTER AGUNG, Kec. Tanjung Priok', 'SANDRA', '089531079922', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:05:59'),
(380, '0118024186', 'Nayra', 'Perempuan', '2011-06-01', 'BandarÂ Lampung', 'Islam', '089606101554', '-', 'jl. wr. supratman gg. rd danial no. 20, gunung mas,  Kec. Teluk Betung Selatan', 'anwar', '-', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:06:08'),
(381, '0118062305', 'Naysila', 'Perempuan', '2011-06-01', 'BandarÂ Lampung', 'Islam', '083135937839', '-', 'jl. wr. supratman gg. rd. danial no. 28 LK I, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'anwar', '-', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:06:18'),
(384, '3112852721', 'NESSA SAPITRI', 'Perempuan', '2011-08-28', 'BandarÂ Lampung', 'Islam', '083863265782', '-', 'RW MONGINSIDI NO.289/4 LK II, Desa/Kel. Talang, Kec. Teluk Betung Selatan', 'MUHAMAD', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:06:27'),
(386, '0101439042', 'Nia Handayah', 'Perempuan', '2011-11-23', 'Teluk Betung', 'Islam', '085764161905', '-', 'Jl. Drs. Warsito Gg, Tanggamus NO.19, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'ANDRIANTO', '-', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-17 01:08:32'),
(388, '0109254363', 'Nikita Kirana', 'Perempuan', '2010-05-07', 'BandarÂ Lampung', 'Islam', '082178948562', '-', 'Jl. Tangkuban Perahu Lk. I No. 19, Kupang Kota, Kec. Teluk Betung Utara', 'Budi Subagio', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:08:41'),
(390, '0106964401', 'NABILA RAISYA PUTRI', 'Laki-Laki', '2010-05-27', 'BandarÂ Lampung', 'Islam', '082185060622', '-', 'Jl. Setia Budi, Sukarame II, Kec. Teluk Betung Barat', 'TIMBUL SANTOSO', '-', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-17 01:02:14'),
(395, '0095016539', 'Ayu Agustina', 'Perempuan', '2009-10-10', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. Gn. Krakatau No. 26 Lk. I	Desa/Kel. Kupang Kota Kec. Teluk Betung Utara', 'Mas ari', '0895384685224', 2023, '7C', 'default-profile-picture.jpg', 'Aktif', 1, NULL, '2024-11-16 22:43:01'),
(396, '0107951307', 'AYU MARDIANTI', 'Perempuan', '2010-10-14', 'SERANG', 'Islam', '-', '-', 'JL. GN. KRAKATAU GG. MUSHOLA NO. 31 LK. I	KUPANG KOTA	Kec. Teluk Betung Utara', 'Mulyadi', '085266548443', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:45:58'),
(398, '083153252436', 'Azola Zikri', 'Laki-Laki', '2010-05-21', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. WR. Supratman Gg Beringin No. 54 Lk II	Talang	Kec. Teluk Betung Selatan', 'Hamzah', '083153252436', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:47:56'),
(399, '0104215197', 'AZRIEL REYZA HENDRAWAN', 'Laki-Laki', '2010-05-12', 'BEKASI', 'Islam', '-', '-', 'Gg. Swadaya 74	Kranji	Kec. Bekasi Barat', 'Suhendra', '089514090729', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:48:05'),
(400, '0104468647', 'Azzahra Annisa Nurli', 'Perempuan', '2010-05-08', 'METRO', 'Islam', '-', '-', 'JL MERAK GG BLUNTAS NO.263A LK II	Desa/Kel. Sawah Lama	Kec. Tanjung Karang Timur', 'Padli', '082267172714', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:48:57'),
(401, '3128387670', 'BAGAS PRATAMA SYAM', 'Laki-Laki', '2010-02-21', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL WOLTER MONGINSIDI GANG MURIA NO 22	Kupang Teba	Kec. Teluk Betung Utara', 'Muchtaruddin', '081367377785', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:49:07'),
(402, '0108295409', 'Bagus Sanjaya', 'Laki-laki', '2010-05-25', 'Bandar Lampung', 'Islam', '085764679610', 'Bagus@gmail.com', 'Jl. Beringin Gg Beringin	Talang	Kec. Teluk Betung Selatan', 'Sardi', '085764679610', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:49:18'),
(403, '0091045062', 'BALQIS ARSITA SOLEHA', 'Perempuan', '2009-08-16', 'BandarÂ Lampung', 'Islam', '-', '-', 'Kupang Raya	Kupang Raya	Kec. Teluk Betung Utara', 'TAUFIQ SHOLEH', '081271418451', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:49:28'),
(406, '0107587183', 'Bella Rahmadani', 'Perempuan', '2010-09-01', 'BEKASI', 'Islam', '083168263684', 'Bella@gmail.com', 'Jl. Drs. Warsito Gg. Rajabasa No. 9 Lk. I	Kupang Kota	Kec. Teluk Betung Utara', 'Lala Rawila', '083168263684', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:51:10'),
(407, '0094801907', 'Budi Adjie Mardianto', 'Laki-Laki', '2009-06-28', 'BandarÂ Lampung', 'Islam', '-', '-', 'WR. Supratman Gg. Beringin II	Desa/Kel. Talang	Kec. Teluk Betung Selatan', 'Marikun Hidayat', '0895804202300', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:51:05'),
(412, '0109680083', 'Caroline Yovela Metana', 'Perempuan', '2010-04-17', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. WR. Supratman No.17 LK I	Gunung Mas	Kec. Teluk Betung Selatan', 'Suhari', '089510791364', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:51:36'),
(414, '0107708897', 'CHEILVIN ARDINO ALFA REZA', 'Laki-Laki', '2010-05-16', 'KOTABUMI', 'Islam', '-', '-', 'JL. KH. AHMAD DAHLAN GG. SELASIH NO. 30	Desa/Kel. Kupang Raya	Kec. Teluk Betung Utara', 'ALDI WALUYO', '082231815216', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:51:47'),
(416, '0101547474', 'CHYNTIARA NABILA PUTRI', 'Perempuan', '2010-12-30', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. MS. Batubara Gg. Kenanga No.33	Kupang Teba	Kec. Teluk Betung Utara', 'JACK MAULANA', '0895344747625', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:51:56'),
(417, '3103411262', 'CIKO PUTRA RAMADAN', 'Laki-Laki', '2010-07-31', 'Bandar Lampung', 'Islam', '-', '-', 'JL. WR MONGINSIDI GG. MADRASAH/14	Talang	Kec. Teluk Betung Selatan', 'AMILIYA', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:52:50'),
(418, '0093460468', 'Cintia Rahma Agustina', 'Perempuan', '2009-08-02', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. Krakatau No.58 LK I	Desa/Kel. Kupang Kota	Kec. Teluk Betung Utara', 'Suyatno', '087726367302', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:53:00'),
(419, '0091268750', 'DANIEL TRI SAPUTRA', 'Laki-Laki', '2010-02-12', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. WR. MONGINSIDI GG. SALIM LK II	Talang	Kec. Teluk Betung Selatan', 'LILI SURYANI', '-', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:55:25'),
(420, '0091425511', 'DEA AURELIYA ZAHRA', 'Perempuan', '2009-12-10', 'BandarÂ Lampung', 'Islam', '-', '-', 'RAJABASA	RAJABASA	Kec. Rajabasa', 'SUGIANTO', '-', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:56:46'),
(421, '0106184109', 'DEARTHA ANGELIA PUGER', 'Perempuan', '2010-12-20', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. Kelelawar Sidodadi	Sidodadi	Kec. Kedaton', 'Geger Dadang Nuryudho', '089697972497 ', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:56:54'),
(422, '0076358995', 'Dela Indriani', 'Perempuan', '2007-12-07', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. Gn.Krakatau No.26 LK I	Kupang Kota	Kec. Teluk Betung Utara', 'Masari', '088287156388', 2022, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:57:10'),
(423, '0119455622', 'Denendra Aryasatya', 'Laki-Laki', '2011-01-01', 'BandarÂ Lampung', 'Islam', '-', '-', 'jl. hasanudin gg. lamphong no 8 lk.II	Desa/Kel. GUNUNG MAS	Kec. Teluk Betung Selatan', 'sugianto', '089647362044', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 22:57:27'),
(424, '3113191124', 'DEVAN ARGA PRASETYA', 'Laki-Laki', '2011-03-31', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl RW Mongonsidi LK II	Desa/Kel. Talang	Kec. Teluk Betung Selatan', 'Murdiono', '088286853829', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 2, NULL, '2024-11-16 22:58:59'),
(427, '0105579330', 'DEWI SAVIRA AIRINE', 'Perempuan', '2010-06-25', 'Bandar Lampung', 'Islam', '-', '-', 'SLAMET RIYADI NO 3/17 LK I	SUKARAJA	Kec. Bumi Waras', 'DICKY ZULKARNAIN, SH', '089524320086', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:59:12'),
(429, '0092348593', 'Enalisa', 'Perempuan', '2009-01-01', 'BandarÂ Lampung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg. Tanggamus Lk. II, Kupang Kota, Kec. Teluk Betung Utara', 'Saheri', '-', 2023, '8B', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:06:23'),
(430, '0108662367', 'FADIA FAUZIATUN NISA', 'Perempuan', '2010-02-22', 'Panjang', 'Islam', '085382390871', '-', 'JL.YOS SUDARSO GG.CENDANA, BUMI WARAS, Kec. Bumi Waras', 'JUNAIDI ARSAD', '085382390871', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:06:51'),
(432, '0108200079', 'FAHMI ALFARIZI', 'Laki-Laki', '2010-04-14', 'BandarÂ Lampung', 'Islam', '-', '-', 'JL. YOS SUDARSO GG. M. AGUS LK.I, BUMI WARAS, Kec. Bumi Waras', 'ANSORI', '-', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:06:41'),
(433, '0099989389', 'Fahri Aditya', 'Laki-Laki', '2009-06-30', 'Teluk Betung', 'Islam', '0895351103636', '-', 'Jl. Hasanudin No. 33 Lk. II, Gunung Mas, Kec. Teluk Betung Utara', 'Doni Subari', '0895351103636', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:07:00'),
(438, '0101003309', 'FANNY SUKMAWIJAYA', 'Perempuan', '2010-03-14', 'BandarÂ Lampung', 'Islam', '088286597516', '-', 'Jl. IKAN KAPASAN NO. 48, KUPANG RAYA, Kec. Teluk Betung Utara', 'TIRTA WIJAYA', '088286597516', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:07:10'),
(439, '0106927862', 'Fardhan Habib Rohiman Maulana', 'Laki-Laki', '2010-04-29', 'Teluk Betung', 'Islam', '085379844937', '-', 'Jl. Gn. Krakatau Gg. Gn. Abung Lk. I, Desa/Kel. Kupang Kota, Kec. Teluk Betung Utara', 'ROHIMAN', '085379844937', 2023, '8D', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:08:50'),
(440, '0112817904', 'Farel Rahmanda Dahri', 'Laki-Laki', '2011-06-14', 'BandarÂ Lampung', 'Islam', '082373328076', '-', 'Jl. HASANUDIN GG. TIRTA NO.7 LK II, Desa/Kel. GUNUNG MAS, Kec. Teluk Betung Selatan', 'Dahri Manan', '082373328076', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:09:02'),
(441, '0082610728', 'FARHAN SAPUTRA', 'Laki-Laki', '2008-11-06', 'Teluk Betung', 'Islam', '089652987556', '-', 'JL.MS BATU BARA GG DELIMA NO.03, KUPANG TEBA, Kec. Teluk Betung Utara', 'SUNARTO SLAMET', '089652987556', 2023, '7C', 'default-profile-picture.jpg', 'Aktif', 1, NULL, '2024-11-16 23:09:12'),
(446, '0104870265', 'Elsy Restiyani', 'Perempuan', '2010-07-05', 'BandarÂ Lampung', 'Islam', '089650545913', '-', 'Jl. Gn Agung G.Rias LK.I, kupang kota, Kec. Teluk Betung Utara', 'Jaini', '089650545913', 2022, '9C', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:06:14'),
(448, '0119518939', 'DRINITY GRASIAN DJATMIKO', 'Perempuan', '2011-04-28', 'BandarÂ Lampung', 'Islam', '08950382384', '-', 'JL. YOS SUDARSO GANG KETAPANG LK.I, Desa/Kel. Sukaraja, Kec. Bumi Waras', 'SUMARNI', '08950382384', 2023, '8A', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:06:04'),
(450, '0104573850', 'DITA PRATAMA', 'Laki-Laki', '2010-04-28', 'BandarÂ Lampung', 'Islam', '089623322772', '-', 'Jl. Banyu Mas, Sukarame II, Kec. Teluk Betung Barat', 'ZAINUDIN', '089623322772', 2022, '9D', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:03:28'),
(452, '0106272835', 'Dinda Kirana', 'Perempuan', '2010-07-04', 'Teluk Betung', 'Islam', '08984278872', '-', 'Jl. Tangkuban Perahu Gg. Piring Kumpul No. 38 LK. II, Kupang Kota, Kec. Teluk Betung Utara', 'Tukiran', '08984278872', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:02:24'),
(454, '0104903811', 'Dinda Anisa Fitri', 'Perempuan', '2010-03-28', 'Bandar Lampung', 'Islam', '083184493459', 'dinda@gmail.com', 'Jl. Tangkuban Perahu No. 21 Lk. I, Kupang Kota, Kec. Teluk Betung Utara', 'Suhaimi', '083184493459', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:02:15'),
(455, '0092150388', 'DINA RAMADHANI', 'Perempuan', '2009-09-19', 'BandarÂ Lampung', 'Islam', '085840525687', '-', 'Jl. MS. BATUBARA Gg. Hi. ARSYAD NO. 17, KUPANG TEBA, Kec. Teluk Betung Utara', 'DECKY ICHSANUL HADI', '085840525687', 2022, '9A', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:02:04'),
(456, '0096172715', 'Dina Lusiana', 'Perempuan', '2009-05-03', 'Teluk Betung', 'Islam', '083170129083', 'dina@gmail.com', 'Jl. Tangkuban Perahu No. Lk. I, Kupang Kota, Kec. Teluk Betung Utara', 'Mahardika', '083170129083', 2022, '9B', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 23:01:42'),
(457, '0112128593', 'Diego Al Ziqri Andola', 'Laki-Laki', '2011-02-28', 'BandarÂ Lampung', 'Islam', '085758635621', '-', 'Perum Sukajaya Darat, Desa/Kel. Sukajaya Lempasing, Kec. Teluk Pandan', 'Doon yunus', '085758635621', 2023, '8C', 'default-profile-picture.jpg', 'Aktif', 3, NULL, '2024-11-16 23:00:26'),
(459, '0105255307', 'DHIO RISKI ANGGARA', 'Laki-Laki', '2010-08-09', 'Way Kanan', 'Islam', '081273293190', '-', 'JL. YOS SUDARSO GG M. AGUS, BUMI WARAS, Kec. Bumi Waras', 'M. DARWIS', '081273293190', 2022, '9E', 'default-profile-picture.jpg', 'Aktif', 5, NULL, '2024-11-16 22:59:23'),
(463, '0124929999', 'Abi Raditia', 'Laki-Laki', '2012-01-30', 'Bandar Lampung', 'Islam', '089632175450', '-', 'Jl. hasanudin gg. lamphong lk. II', 'ahmad kodir', '-', 2024, '7C', 'default-profile-picture.jpg', 'Aktif', 1, '2024-11-16 08:31:54', '2024-11-16 08:31:54'),
(464, '0128875229', 'Adam Kurniawan', 'Laki-Laki', '2012-03-01', '-', 'Islam', '-', '-', '-', '-', '-', 2024, '7B', 'default-profile-picture.jpg', 'Aktif', 1, '2024-11-16 08:36:04', '2024-11-16 08:36:04'),
(465, '3129400972', 'ADELIA RAHMADANI', 'Perempuan', '2012-01-01', '-', 'Islam', '-', '-', '-', '-', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 08:39:06', '2024-11-16 08:39:06'),
(466, '0116391396', 'Aditya Pratama Putra', 'Laki-Laki', '2012-01-01', '-', 'Islam', '-', '-', '-', '-', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 08:44:18', '2024-11-16 08:44:18'),
(467, '0111922084', 'Agung Ramadan', 'Laki-Laki', '2012-01-01', '-', 'Islam', '-', '-', '-', '-', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 08:46:25', '2024-11-16 08:46:25'),
(468, '0121152818', 'AHMAD SAPUTRA', 'Laki-Laki', '2012-01-01', '-', 'Islam', '-', '-', '-', '-', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 09:01:49', '2024-11-16 09:01:49'),
(469, '3121141264', 'Alika Naila Putri Febriyanti', 'Perempuan', '2012-02-12', 'Bandar Lampung', 'Islam', '081278122101', '-', 'Jl. Gunung Krakatau No. 66', 'Julianto', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:00:18', '2024-11-16 22:00:18'),
(470, '0111788807', 'Ananda', 'Perempuan', '2011-08-13', 'Bandar lampung', 'Islam', '0895620365518', '-', 'JL. Ikan mas Gg. Mansyur LK.III', 'Wibowo saputrro', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 22:03:26', '2024-11-16 22:03:26'),
(471, '0116095420', 'Anissa Fitri Ramadhani', 'Perempuan', '2011-08-15', 'Bandar Lampung', 'Islam', '-', '-', 'Jl. WR. Monginsidi Gg. N. Fatah/06 Lk. II', 'Rozali Ismail', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:08:44', '2024-11-16 22:08:44'),
(472, '0121949114', 'AR ROZAQ ALBAR SYAHPUTRA', 'Laki-Laki', '2012-06-27', 'TELUK BETUNG', 'Islam', '0895614818668', '-', 'JL.T.PERAHU LK I', 'ARIFIN', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:10:45', '2024-11-16 22:10:45'),
(473, '0114491152', 'Ariska Pratiwi', 'Perempuan', '2011-11-19', 'Bandar Lampung', 'Islam', '089624490614', '-', 'Jl. Gn. Krakatau No. 1 Lk. I', 'M. Ridwan', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 22:12:17', '2024-11-16 22:12:17'),
(474, '0116277540', 'ARTHA BERLIAN', 'Laki-Laki', '2011-04-16', 'TELUK BETUNG', 'Islam', '0812 7957 4962', '-', 'PERUM PERMATA ASRI BLOK A2 NO 3', 'ASEP IDAT HERDIMAN', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:14:20', '2024-11-16 22:14:20'),
(475, '0122595439', 'Arya Dwi Prasetyo', 'Laki-Laki', '2012-05-21', 'Bandar Lampung', 'Islam', '087829629357', '-', 'MS. Batubara Gg. Melati No. 6', 'Acik Laksono', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 22:15:44', '2024-11-16 22:15:44'),
(476, '0126531063', 'AVAF ALKATIRI', 'Perempuan', '2012-05-13', 'BANDAR LAMPUNG', 'Islam', '0895329977977', '-', 'JALAN IKAN LK II', 'FUAD ALKATIRI', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 22:44:24', '2024-11-16 22:44:24'),
(477, '0114774489', 'Ayra Azza Zahra Anwada', 'Perempuan', '2011-06-17', 'Bandar Lampung', 'Islam', '089521514499', '-', 'Jl. Ikan Pari Blok D No. 11/80 Lk. II', 'Novendra', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 22:45:34', '2024-11-16 22:45:34'),
(478, '3124298230', 'AZ-ZAHRA RAMADHANI', 'Perempuan', '2012-08-02', 'TELUK BETUNG', 'Islam', '08973922365', '-', 'JL. IKAN KITER GG. MASJID NO.41 LK.II', 'ADI WIJAYA', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 22:47:39', '2024-11-16 22:47:39'),
(479, '3104312843', 'BAYU RIMBAWAN CAHAYA', 'Laki-Laki', '2010-04-04', 'WONO REJO I', 'Kristen', '081372878294', '-', 'JL.TANGKUBAN PERAHU', 'MADE MURTINE', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 22:50:41', '2024-11-16 22:50:41'),
(480, '0112641959', 'Dafa Suhardi', 'Laki-Laki', '2011-11-01', 'teluk betung', 'Islam', '082269195367', '-', 'jl. patimura gg. dr. darwis no. 22 lk.II', 'Makmun suhardi', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 22:54:09', '2024-11-16 22:54:09'),
(481, '0112192760', 'Damar Arvicko', 'Laki-Laki', '2011-12-27', 'Bandar Lampung', 'Islam', '082179480820', '-', 'Jl. Gn. Krakatau Lk. I', 'Agus Priyanto', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:55:11', '2024-11-16 22:55:11'),
(482, '0111937143', 'Dany Feriansyah', 'Laki-Laki', '2011-08-25', 'Teluk Betung', 'Islam', '083134110116', '-', 'Jl. Gunung Krakatau', 'Rio Febryanto', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 22:56:23', '2024-11-16 22:56:23'),
(483, '0106723583', 'DIAZ', 'Laki-Laki', '2010-12-22', 'BANDAR LAMPUNG', 'Islam', '089519367048', '-', 'JL.HASANUDIN GG.NANGKA NO.14', 'LULU ANDRIAN', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:00:15', '2024-11-16 23:00:15'),
(484, '3126317080', 'DIMAS HERI AJI PAMUNGKAS', 'Laki-Laki', '2012-04-11', 'Teluk Betung', 'Islam', '089517505837', '-', 'Jl. Ikan Layur No.51 LK. II', 'Herman Suari', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:01:31', '2024-11-16 23:01:31'),
(485, '0118544301', 'Dofi Anugrah Indarrabih', 'Laki-Laki', '2011-04-06', 'Bandar Lampung', 'Islam', '085267003191', '-', 'Jl. RW. Monginsidi Gg. Arsyad No. 20', 'Ahmad Ramdani Hidayat', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:04:35', '2024-11-16 23:04:35'),
(486, '0129493381', 'Ecy Monica', 'Perempuan', '2012-02-19', 'Bandar Lampung', 'Islam', '081369782515', '-', 'Jl. Tangkuban Perahu', 'Sumarjono', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:05:26', '2024-11-16 23:05:26'),
(487, '0106316047', 'FEBRIANA SILABAN', 'Perempuan', '2010-02-08', 'Huta Godang', 'Kristen', '085380226413', '-', 'Purwokencono', 'TORUS SILABAN', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:11:56', '2024-11-16 23:11:56'),
(488, '0122047493', 'Febriansyah', 'Laki-Laki', '2011-03-14', 'Bandar lampung', 'Islam', '-', '-', 'JL. Ikan julung', 'Abdussalam', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:13:08', '2024-11-16 23:13:08'),
(489, '0109571388', 'Firsya Nafalia', 'Perempuan', '2010-11-23', 'bandar lampung', 'Islam', '089654295982', '-', 'jl. wr. supratman gg. kelud lk.II', 'Masino', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:16:11', '2024-11-16 23:16:11'),
(490, '0111945777', 'GALUH RAMEYZA ALYA', 'Laki-Laki', '2011-07-21', 'BANDAR LAMPUNG', 'Islam', '0895371956538', '-', 'Jl. Imam Bonjol No. 157/20 LK 003', 'Abdul Azis', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:17:22', '2024-11-16 23:17:22'),
(491, '0116847629', 'Ganesha Bimasakti', 'Laki-Laki', '2011-09-26', 'Bandar Lampung', 'Islam', '082371540750', '-', 'Jl. Gn. Krakatau No. 44', 'Riyanto', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:18:22', '2024-11-16 23:18:22'),
(492, '3116892681', 'INDAH NAZWA DESFITA', 'Perempuan', '2011-12-09', 'TELUK BETUNG', 'Islam', '083129428124', '-', 'JL. IKAN MAS NO. 27, KANGKUNG, BUMI WARAS', 'Azwin', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:21:36', '2024-11-16 23:21:36'),
(493, '0121815546', 'Indri Dwi Irianti', 'Perempuan', '2012-04-02', 'Bandar Lampung', 'Islam', '085645122263', '-', 'Jl. Ir. Hi. Juanda No. 26', 'Edi Irianto', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:22:26', '2024-11-16 23:22:26'),
(494, '0108001681', 'Jenny Dwi Efrillia', 'Perempuan', '2010-04-27', 'Teluk Betung', 'Islam', '085709720997', '-', 'Jl. Tangkuban Perahu No. 20 Lk. I', 'Junaidi', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:27:52', '2024-11-16 23:27:52'),
(495, '3129939218', 'KARINA GHATSIA', 'Perempuan', '2012-07-28', 'BANDAR LAMPUNG', 'Islam', '0895640213332', '-', 'Jalan Monginsidi Gg. Salim No. 19', 'Ferry Amran', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:29:43', '2024-11-16 23:29:43'),
(496, '3129939219', 'KAYLA RATU SAPUTRA', 'Perempuan', '2012-08-21', 'TELUK BETUNG', 'Islam', '08197918399', '-', 'JL. M. YUSUF RBR LK. I, KETEGUHAN, TELUK BETUNG TIMUR', 'Wawan Adisaputra', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:30:55', '2024-11-16 23:30:55'),
(497, '0114466792', 'KELLA SYIFA FEBRIANTI', 'Perempuan', '2011-02-20', 'Bandar Lampung', 'Islam', '082181928055', '-', 'Jl. Hasanudin Gg. Sawo No.17 LK. II', 'Zaenal Arifin', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:31:49', '2024-11-16 23:31:49'),
(498, '0119988625', 'KHALIFAH', 'Perempuan', '2011-06-25', 'BANDAR LAMPUNG', 'Islam', '089692762392', '-', 'JL M AGUS NO 32 LK I', 'BUANG HENDRIAWAN', '-', 2023, '8B', '', 'Aktif', 3, '2024-11-16 23:35:25', '2024-11-16 23:35:25'),
(499, '0118812992', 'KRISTIANA STEFANI YUWONO', 'Perempuan', '2011-01-14', 'DAYA MURNI', 'Kristen', '085362033070', '-', 'MANGGIS TOBAL', 'HERI YUWONO', '-', 2023, '8A', '', 'Aktif', 1, '2024-11-16 23:36:51', '2024-11-16 23:36:51'),
(500, '0123338438', 'LOLITA ZENATA', 'Perempuan', '2012-06-17', 'TELUK BETUNG', 'Islam', '-', '-', 'JALN IKAN JULUNG', 'SUROSO', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:43:21', '2024-11-16 23:43:21'),
(501, '0112500477', 'M. Afif Firdaus', 'Laki-Laki', '2011-10-18', 'Bandar Lampung', 'Islam', '089606019679', '-', 'Jl. Drs. Warsito Gg. Rajabasa -I/36 Lk. I', 'Amril Hendriyadi', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:45:08', '2024-11-16 23:45:08'),
(502, '0119941051', 'M. Arga Satria', 'Laki-Laki', '2011-10-29', 'Bandar Lampung', 'Islam', '083144036676', '-', 'Jl. Ikan Sepat Gg Eka Jaya LK III', 'Isman', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:46:27', '2024-11-16 23:46:27'),
(503, '0125488438', 'M. DAFFA AIDIMAN', 'Laki-Laki', '2012-02-23', 'TELUK BETUNG', 'Islam', '081271870380', '-', 'JL. IKAN KITER GG. HIU LK.2', 'BUDIMAN', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:47:24', '2024-11-16 23:47:24'),
(504, '0119575692', 'M. Raffi Maulana', 'Laki-Laki', '2011-11-08', 'Bandar Lampung', 'Islam', '082278659664', '-', 'Jl. Drs. Warsito Tangkuban Perahu No.71 LK I', 'Heri Rukiantoro', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-16 23:55:59', '2024-11-16 23:55:59'),
(505, '0103643478', 'M. RAIHAN SAPUTRA', 'Laki-Laki', '2010-11-19', 'BANDAR LAMPUNG', 'Islam', '08985195000', '-', 'MALAHAYATI GG. MASJID NO 22', 'JAYADI', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-16 23:56:50', '2024-11-16 23:56:50'),
(506, '0102609567', 'M.AKBAR', 'Laki-Laki', '2010-02-23', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL.IKAN KITER BLOK C LK.II', 'ARPANDI', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-16 23:58:37', '2024-11-16 23:58:37'),
(507, '0128532271', 'MARISA FAUZIA', 'Perempuan', '2012-07-01', 'TELUK BETUNG', 'Islam', '08960619179', '-', 'JL. M. AGUS', 'MUTHOLIB', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:28:50', '2024-11-17 00:28:50'),
(508, '3106282540', 'Maulana Yusuf', 'Laki-Laki', '2010-07-07', 'Teluk Betung', 'Islam', '083841527327', '-', 'Jalan Wr Supratman', 'Idris', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:31:10', '2024-11-17 00:31:10'),
(509, '3119383792', 'MEYLANI OLICIA PUTRI', 'Perempuan', '2011-05-21', 'BANDAR LAMPUNG', 'Islam', '089522037706', '-', 'Jl. H.Umar Gg. Pndok Rt. 10 LK. I', 'Marsudin Sarna Edon', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:33:29', '2024-11-17 00:33:29'),
(510, '0121747936', 'Michelle Alvaro', 'Laki-Laki', '2012-01-12', 'Bandar lampung', 'Islam', '082280868189', '-', 'jl. hasanudin gg. lamphong no. 19/20', 'A.Hanung Prasetyo', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:34:24', '2024-11-17 00:34:24'),
(511, '0113120442', 'Mohd. Faried', 'Laki-Laki', '2011-09-04', 'Bandar Lampung', 'Islam', '089514149941', '-', 'Jl. Tangkuban Perahu No. 10 Lk. I', 'Mardika', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:35:44', '2024-11-17 00:35:44'),
(512, '0123711763', 'Mona Efelin', 'Perempuan', '2012-05-21', 'Bandar Lampung', 'Islam', '0895605837071', '-', 'Jl. Wolter Monginsidi GG. Beringin LK. II', 'Rozali', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:36:42', '2024-11-17 00:36:42'),
(513, '0114111384', 'Mubarok Fauzan', 'Laki-Laki', '2011-11-08', 'Metro', 'Islam', '085841717442', '-', 'Jl. Drs. Warsito Gg. Tanggamus Lk. II', 'Yogi Anansri', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 00:37:26', '2024-11-17 00:37:26'),
(514, '0097615545', 'MUHAMAD FAHRI HAMID', 'Laki-Laki', '2009-09-25', 'BANDAR LAMPUNG', 'Islam', '088286706271', '-', 'JL.P.Diponegoro No.15', 'HAMIDIN', '-', 2022, '9C', '', 'Aktif', 5, '2024-11-17 00:40:25', '2024-11-17 00:40:36'),
(515, '0116753295', 'Muhamad Jery Rhamadani', 'Laki-Laki', '2011-08-31', 'B. Lampung', 'Islam', '-', '-', 'Kampung Rawa Baru GG. Semadar Lk. I', 'Jahri', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:41:47', '2024-11-17 00:41:47'),
(516, '3129935363', 'MUHAMMAD BILAL', 'Laki-Laki', '2012-02-17', 'BANDAR LAMPUNG', 'Islam', '082269098339', '-', 'JL. TANGKUBAN PERAHU, KUPANG KOTA, TELUK BETUNG UTARA', 'Banyu Purwanto', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 00:43:11', '2024-11-17 00:43:11'),
(517, '0108821533', 'MUHAMMAD DAFFA', 'Laki-Laki', '2010-07-01', 'KOTABUMI', 'Islam', '-', '-', 'SRI PANDHOWO 1', 'BAMBANG TRIYONO', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:45:29', '2024-11-17 00:45:29'),
(518, '3114075336', 'MUHAMMAD DAFFA NAUFAL SHOBIR', 'Laki-Laki', '2011-09-02', 'BANDAR LAMPUNG', 'Islam', '083198097892', '-', 'Jl. Ikan Mas Gg. Mansur Gubuk Sero Lk. III, Kangkung, Bumi Waras', 'Muhammad Sobri', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:46:11', '2024-11-17 00:46:11'),
(519, '0128206046', 'Muhammad Guntur', 'Laki-Laki', '2011-09-25', 'Bandar Lampung', 'Islam', '085379660292', '-', 'JL. Ikan kiter dalam LK.II', 'Gunawan', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 00:48:29', '2024-11-17 00:48:29'),
(520, '0106742869', 'MUHAMMAD IRWAN DANA', 'Laki-Laki', '2010-12-10', 'BANDAR LAMPUNG', 'Islam', '0895808075557', '-', 'JL.P. Singkep', 'DARHAM MARZALI', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:49:39', '2024-11-17 00:49:39'),
(521, '0121546304', 'Muhammad Marco Widiandra', 'Laki-Laki', '2012-03-09', 'Bandar Lampung', 'Islam', '082288289459', '-', 'Jl. Patimura Gg Guntur No. 4 LK.II', 'Budi Santoso', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 00:50:37', '2024-11-17 00:50:37'),
(522, '0119221681', 'Muhammad Raffa Rizky Ramadhan', 'Laki-Laki', '2010-10-08', 'Teluk Betung', 'Islam', '085847785043', '-', 'Jl. Drs. Warsito Gg. Rajabasa II No. 24', 'Puji Purwanto', '-', 2023, '8C', '', 'Aktif', 1, '2024-11-17 00:52:33', '2024-11-17 00:52:33'),
(523, '0115423746', 'Muhammad Rafif Febriyansyah', 'Laki-Laki', '2011-02-07', 'Bandar Lampung', 'Islam', '089648827683', '-', 'Jl. Abdi Negara Gg Abdullah No. 81', 'Ahmad Susanto', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:53:23', '2024-11-17 00:53:23'),
(524, '0091412978', 'Muhammad Ridho Maulana', 'Laki-Laki', '2009-12-06', 'bandar lampung', 'Islam', '082289031551', '-', 'jl. ikan pari D no. 5', 'azrial', '-', 2022, '9C', '', 'Aktif', 5, '2024-11-17 00:56:25', '2024-11-17 00:56:25'),
(525, '0121135625', 'MUHAMMAD RIZKY', 'Laki-Laki', '2012-04-08', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL.YUDISTIRA GG SIRIH', 'MORENO AFRIADI', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:57:16', '2024-11-17 00:57:16'),
(526, '0116385794', 'Mutiara Amalia Suyandi', 'Perempuan', '2011-12-20', 'Teluk Betung', 'Islam', '081215001299', '-', 'Jl. Cut Mutia GG. Sriwijaya I No. 44', 'Heri Suyandi', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 00:59:06', '2024-11-17 00:59:06'),
(527, '0124337062', 'Nabil Kenzha Febriansyah', 'Laki-Laki', '2012-01-10', 'Telukbetung', 'Islam', '089624592224', '-', 'Jl. T.Perahu No. 30', 'Febri Hendratmo', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:01:45', '2024-11-17 01:01:45'),
(528, '0101985953', 'NAFIDAH YULIYANI', 'Perempuan', '2010-12-25', 'BREBES', 'Islam', '08985395566', '-', 'SUTAMAJA', 'YUSUP', '-', 2023, '8A', '', 'Tidak Aktif', 3, '2024-11-17 01:04:46', '2024-11-17 01:04:46'),
(529, '0101481449', 'Nimatul Arofa', 'Perempuan', '2010-05-07', 'Teluk Betung', 'Islam', '083197753559', '-', 'WR. Supratman Gg. Pancur Mas No. 1', 'Aminudin', '-', 2022, '9E', '', 'Aktif', 5, '2024-11-17 01:07:36', '2024-11-17 01:07:36'),
(530, '0113382630', 'Nova Carolin', 'Perempuan', '2011-11-15', 'Bandar Lampung', 'Islam', '08976087726', '-', 'Jl. Tangkuban Perahu Lk. I', 'Hendri Hermawan', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:11:52', '2024-11-17 01:11:52'),
(531, '3113736763', 'NURUL HAJIJAH', 'Perempuan', '2011-08-05', 'TELUK BETUNG', 'Islam', '083851946597', '-', 'Jl. MS. Batu Bara Gg. Kenanga, No. 38 RT. 003 LK. I, Kupang Teba, Teluk Betung U', 'Karel Saputra', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:14:52', '2024-11-17 01:14:52'),
(532, '0123933001', 'Okta Priani', 'Perempuan', '2011-10-04', 'Labuhan Ratu', 'Islam', '085788155460', '-', 'Jl. Lintas Timur', 'M. Soleh', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:15:51', '2024-11-17 01:15:51'),
(533, '3116489237', 'OKTAFIANI', 'Perempuan', '2011-10-10', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. M. AGUS LK I', 'ROHIYAT', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 01:35:53', '2024-11-17 01:35:53'),
(534, '3122597221', 'PARAMITA RAMADANI', 'Perempuan', '2012-08-06', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. IKAN KITER LK. II, KANGKUNG, BUMI WARAS', 'Eko Prayitno', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 01:36:35', '2024-11-17 01:36:35'),
(535, '3122263265', 'PUTRI AGUSTINA', 'Perempuan', '2012-08-19', 'TARAHAN', 'Islam', '-', '-', 'l. Drs. Warsito No.81, Kupang Kota, Kec. Tlk. Betung Utara, Kota Bandar Lampung,', 'YAN PANDU PRIATAMA', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 01:38:36', '2024-11-17 01:38:36'),
(536, '0129557775', 'Putri Aisyah Rani', 'Perempuan', '2012-04-20', 'Bandar Lampung', 'Islam', '089515521276', '-', 'Jl. Drs. Warsito', 'Rizky', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 01:39:29', '2024-11-17 01:39:29'),
(537, '0111191323', 'QIBRAN PRATAMA', 'Laki-Laki', '2011-10-11', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. PENDAWA I LK I', 'MUSLIK', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 01:41:03', '2024-11-17 01:41:03'),
(538, '0123247166', 'Raditya Saputra', 'Laki-Laki', '2012-05-20', 'Bandar Lampung', 'Islam', '0895640237973', '-', 'Jl. Drs. Warsito Gg. Rajabasa No. 16', 'Sanuri', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:43:32', '2024-11-17 01:43:32'),
(539, '0107067706', 'RAFA BANU SAKHIY', 'Laki-Laki', '2010-02-17', 'Teluk Betung', 'Islam', '081368414834', '-', 'Kidul Raya', 'Hadi Firmansyah', '-', 2022, '9C', '', 'Aktif', 5, '2024-11-17 01:45:16', '2024-11-17 01:45:16'),
(540, '3123656603', 'RANA NAFILA ZALVA', 'Perempuan', '2012-06-19', 'BANDAR LAMPUNG', 'Islam', '0895620691984', '-', 'JALAN YOS SUDARSO', 'RAHMATULLAH', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 01:48:29', '2024-11-17 01:48:29'),
(541, '0116262080', 'RANJANI ARINDI', 'Perempuan', '2011-01-18', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. IKAN KITER GG BANTEN NO. 28 LK I', 'ACHMEDI', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 01:49:19', '2024-11-17 01:49:19'),
(542, '0118926902', 'Rizki Adika', 'Laki-Laki', '2011-02-18', 'bandar lampung', 'Islam', '089632175450', '-', 'jl. hasanudin gg. lamphong lk.II', 'Ahmad Kodri', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 01:54:26', '2024-11-17 01:54:26'),
(543, '0111882241', 'Safa Aulia Putri', 'Perempuan', '2011-12-08', 'Bandar Lampung', 'Islam', '089629137919', '-', 'JL. MS batubara gg Melati No.35', 'Budi Mulyono', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:57:00', '2024-11-17 01:57:00'),
(544, '3120444484', 'Safa Dini Aulia', 'Perempuan', '2011-03-23', 'Bandar Lampung', 'Islam', '082371540750', '-', 'Jl. Gn. Krakatau No. 26 Lk. I', 'Mas Ari', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 01:57:54', '2024-11-17 01:57:54'),
(545, '0123218360', 'Salsabilla', 'Perempuan', '2012-07-01', 'Bandar Lampung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg.. Tanggamus', 'Muslim', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 01:58:54', '2024-11-17 01:58:54'),
(546, '3127051402', 'Satria Wibowo', 'Laki-Laki', '2011-01-13', 'Bandar Lampung', 'Islam', '089691294111', '-', 'Jl. Drs. Warsito', 'Amat Saipi', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 02:00:18', '2024-11-17 02:00:18'),
(547, '0119801914', 'STEVE ALEXANDER', 'Laki-Laki', '2011-11-09', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. MS BATU BARA GG NUSA INDAH NO 1 LK I', 'OKI PRIYONO', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 02:27:13', '2024-11-17 02:27:13'),
(548, '3119326793', 'SYAFIRA RAHMADHANI', 'Perempuan', '2011-08-27', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. RUSA PERUMDAM GRIYA SAMARA NO 5', 'EKA DWIYONO RAHAYU', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 02:28:14', '2024-11-17 02:28:14'),
(549, '0116552748', 'Tri Budianto', 'Laki-Laki', '2011-09-27', 'Telukbetung', 'Islam', '-', '-', 'jL Ms Batubara Gg Melati no.13', 'Rusdi Haryanto', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 02:32:34', '2024-11-17 02:32:34'),
(550, '0091815962', 'Tubagus Julian', 'Laki-Laki', '2009-07-05', 'Bandar Lampung', 'Islam', '083153724584', '-', 'Jl. Hasanudin Gg. Kantor Pos', 'Ratim Irawan', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 02:33:26', '2024-11-17 02:33:26'),
(551, '0122834576', 'VENIA AMELIA PUTRI', 'Perempuan', '2012-05-20', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. YOS SUDARSO GG M. AGUS LK I', 'EFFENDI', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 02:34:12', '2024-11-17 02:35:23'),
(552, '0129608402', 'Vicky Soldev', 'Laki-Laki', '2012-02-03', 'Bandar Lampung', 'Islam', '081273444913', '-', 'Jl.Ikan Terbang', 'Solihin', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 02:35:14', '2024-11-17 02:35:14'),
(553, '0122600745', 'Viola Amelia', 'Perempuan', '2012-07-06', 'Bandar Lampung', 'Islam', '088287836581', '-', 'Jl. WR. Mongonsidi Gg. Aslim No. 18', 'Novi Risanto', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 02:36:38', '2024-11-17 02:36:38'),
(554, '0082103944', 'VIOLA PAMELIA SILABAN', 'Perempuan', '2008-11-11', 'HUTA GODANG', 'Kristen', '082272524202', '-', 'JL. Nusa Indah Dusun IV', 'TORUS SILABAN', '-', 2022, '9B', '', 'Aktif', 5, '2024-11-17 02:37:56', '2024-11-17 02:37:56'),
(555, '0115436750', 'Wahyu Mujijat', 'Laki-Laki', '2011-10-03', 'Banjar sari', 'Islam', '-', '-', 'Jl.Cipto Mangunkusumo', 'Predi', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 03:05:05', '2024-11-17 03:05:05'),
(556, '0126295605', 'WIDARA AMANDA PUTRI', 'Perempuan', '2012-06-30', 'BANDAR LAMPUNG', 'Islam', '-', '-', 'JL. YOS SUDARSO GG M. AGUS LK I', 'M. JONI S', '-', 2024, '7C', '', 'Aktif', 1, '2024-11-17 03:05:49', '2024-11-17 03:05:49'),
(557, '0121444034', 'Yerenifa Nictan Tabitha Pakpahan', 'Laki-Laki', '2012-06-13', 'Bandar Lampung', 'Kristen', '081279940257', '-', 'Jl. Drs. Warsito Gg Malabar No. 26 LK.I', 'Hendrik Pakpahan', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 03:06:42', '2024-11-17 03:06:42'),
(558, '0119461440', 'Yoga Dwi Nopriyatna', 'Laki-Laki', '2011-11-01', 'Telukbetung', 'Islam', '083168045390', '-', 'Jl. Drs. Warsito Gg. Rajabasa No. 18 Lk. I', 'Endang Supriyatna', '-', 2024, '7A', '', 'Aktif', 1, '2024-11-17 03:07:43', '2024-11-17 03:07:43');
INSERT INTO `siswa` (`id`, `nisn`, `nama`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `email`, `alamat`, `nama_wali`, `no_telepon_wali`, `angkatan`, `kode_kelas`, `image`, `status_siswa`, `semester_id`, `created_at`, `updated_at`) VALUES
(559, '0121606658', 'Zapira bahya Tun Nisa', 'Perempuan', '2012-03-17', 'Bandar Lampung', 'Islam', '-', '-', 'Jl. Drs. Warsito Gg. Tanggamus No. 24A', 'M. Tubi Apriyadi', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 03:08:36', '2024-11-17 03:08:36'),
(560, '0114951099', 'Zhavira Dwi Kurnia', 'Perempuan', '2011-01-07', 'B Lampung', 'Islam', '0895617982111', '-', 'jl. hasanudin gg. lampung', 'Kurniawan', '-', 2024, '7B', '', 'Aktif', 1, '2024-11-17 03:09:29', '2024-11-17 03:09:29');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `store_id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_users`
--

CREATE TABLE `store_users` (
  `id` int(11) NOT NULL,
  `store_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `store_users`
--

INSERT INTO `store_users` (`id`, `store_id`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-04-20 10:30:22', '0000-00-00 00:00:00'),
(10, 16, 15, 1, '2024-04-25 08:56:51', '2024-04-25 01:56:23'),
(11, 1, 17, 1, '2024-05-02 19:24:57', '2024-05-02 19:24:57'),
(12, 1, 18, 1, '2024-05-03 21:55:07', '2024-05-03 21:55:07'),
(13, 1, 19, 1, '2024-05-03 22:00:21', '2024-05-03 22:00:21'),
(14, 1, 20, 1, '2024-05-03 22:01:28', '2024-05-03 22:01:28'),
(15, 1, 21, 1, '2024-05-03 22:23:30', '2024-05-03 22:23:30'),
(16, 1, 23, 1, '2024-05-12 21:13:15', '2024-05-12 21:13:15'),
(17, 1, 24, 1, '2024-05-13 19:32:34', '2024-05-13 19:32:34'),
(18, 1, 25, 1, '2024-05-14 06:38:46', '2024-05-14 06:38:46'),
(19, 1, 29, 1, '2024-05-14 06:50:57', '2024-05-14 06:50:57'),
(20, 1, 30, 1, '2024-05-14 16:37:23', '2024-05-14 16:37:23'),
(21, 1, 31, 1, '2024-05-14 16:37:25', '2024-05-14 16:37:25'),
(22, 1, 32, 1, '2024-05-14 16:37:27', '2024-05-14 16:37:27'),
(23, 1, 33, 1, '2024-05-14 16:37:29', '2024-05-14 16:37:29'),
(24, 1, 34, 1, '2024-05-14 16:37:31', '2024-05-14 16:37:31'),
(25, 1, 35, 1, '2024-05-14 16:37:33', '2024-05-14 16:37:33'),
(26, 1, 36, 1, '2024-05-14 16:37:35', '2024-05-14 16:37:35'),
(27, 1, 37, 1, '2024-05-14 16:37:36', '2024-05-14 16:37:36'),
(28, 1, 38, 1, '2024-05-14 16:37:38', '2024-05-14 16:37:38'),
(29, 1, 39, 1, '2024-05-14 16:37:44', '2024-05-14 16:37:44'),
(30, 1, 40, 1, '2024-05-14 16:37:46', '2024-05-14 16:37:46'),
(31, 1, 41, 1, '2024-05-14 16:37:48', '2024-05-14 16:37:48'),
(32, 1, 42, 1, '2024-05-14 16:37:50', '2024-05-14 16:37:50'),
(33, 1, 43, 1, '2024-05-14 16:37:52', '2024-05-14 16:37:52'),
(34, 1, 44, 1, '2024-05-14 16:37:53', '2024-05-14 16:37:53'),
(35, 1, 45, 1, '2024-05-14 16:37:55', '2024-05-14 16:37:55'),
(36, 1, 46, 1, '2024-05-14 16:37:57', '2024-05-14 16:37:57'),
(37, 1, 47, 1, '2024-05-14 16:37:59', '2024-05-14 16:37:59'),
(38, 1, 48, 1, '2024-05-14 16:38:01', '2024-05-14 16:38:01'),
(39, 1, 49, 1, '2024-05-14 16:38:04', '2024-05-14 16:38:04'),
(40, 1, 50, 1, '2024-05-14 16:38:08', '2024-05-14 16:38:08'),
(41, 1, 51, 1, '2024-05-14 16:38:10', '2024-05-14 16:38:10'),
(42, 1, 52, 1, '2024-05-14 16:38:15', '2024-05-14 16:38:15'),
(43, 1, 53, 1, '2024-05-14 16:38:17', '2024-05-14 16:38:17'),
(44, 1, 54, 1, '2024-05-14 16:38:19', '2024-05-14 16:38:19'),
(45, 1, 55, 1, '2024-05-14 16:38:20', '2024-05-14 16:38:20'),
(46, 1, 57, 1, '2024-05-16 05:43:31', '2024-05-16 05:43:31'),
(47, 1, 58, 1, '2024-05-16 05:49:58', '2024-05-16 05:49:58'),
(48, 1, 61, 1, '2024-05-16 06:04:37', '2024-05-16 06:04:37'),
(49, 1, 62, 1, '2024-05-16 06:48:07', '2024-05-16 06:48:07'),
(50, 1, 63, 1, '2024-05-16 21:00:43', '2024-05-16 21:00:43'),
(51, 1, 65, 1, '2024-06-02 08:24:36', '2024-06-02 08:24:36'),
(52, 1, 66, 1, '2024-06-02 08:24:58', '2024-06-02 08:24:58'),
(53, 1, 67, 1, '2024-06-02 08:25:15', '2024-06-02 08:25:15'),
(54, 1, 68, 1, '2024-06-02 08:25:35', '2024-06-02 08:25:35'),
(55, 1, 69, 1, '2024-06-02 08:26:25', '2024-06-02 08:26:25'),
(56, 1, 70, 1, '2024-06-02 08:26:55', '2024-06-02 08:26:55'),
(57, 1, 71, 1, '2024-06-02 08:39:19', '2024-06-02 08:39:19'),
(58, 1, 72, 1, '2024-06-02 08:40:00', '2024-06-02 08:40:00'),
(59, 1, 73, 1, '2024-06-02 08:40:48', '2024-06-02 08:40:48'),
(60, 1, 74, 1, '2024-06-02 08:41:52', '2024-06-02 08:41:52'),
(61, 1, 75, 1, '2024-06-02 08:41:55', '2024-06-02 08:41:55'),
(62, 1, 76, 1, '2024-06-02 08:42:28', '2024-06-02 08:42:28'),
(63, 1, 77, 1, '2024-06-02 08:43:05', '2024-06-02 08:43:05'),
(64, 1, 78, 1, '2024-06-02 08:43:44', '2024-06-02 08:43:44'),
(65, 1, 79, 1, '2024-06-02 08:44:32', '2024-06-02 08:44:32'),
(66, 1, 80, 1, '2024-06-02 08:46:48', '2024-06-02 08:46:48'),
(67, 1, 81, 1, '2024-06-02 08:46:53', '2024-06-02 08:46:53'),
(68, 1, 82, 1, '2024-06-02 08:46:56', '2024-06-02 08:46:56'),
(69, 1, 83, 1, '2024-06-02 08:46:59', '2024-06-02 08:46:59'),
(70, 1, 84, 1, '2024-06-02 08:47:46', '2024-06-02 08:47:46'),
(71, 1, 85, 1, '2024-06-02 08:48:24', '2024-06-02 08:48:24'),
(72, 1, 86, 1, '2024-06-02 08:48:54', '2024-06-02 08:48:54'),
(73, 1, 87, 1, '2024-06-02 08:49:22', '2024-06-02 08:49:22'),
(74, 1, 88, 1, '2024-06-02 08:49:59', '2024-06-02 08:49:59'),
(75, 1, 89, 1, '2024-06-02 08:57:10', '2024-06-02 08:57:10'),
(76, 1, 90, 1, '2024-06-02 08:59:05', '2024-06-02 08:59:05'),
(77, 1, 91, 1, '2024-06-02 08:59:09', '2024-06-02 08:59:09'),
(78, 1, 92, 1, '2024-06-02 09:00:50', '2024-06-02 09:00:50'),
(79, 1, 93, 1, '2024-06-02 09:02:32', '2024-06-02 09:02:32'),
(80, 1, 94, 1, '2024-06-02 09:03:36', '2024-06-02 09:03:36'),
(81, 1, 95, 1, '2024-06-02 19:07:22', '2024-06-02 19:07:22'),
(82, 1, 96, 1, '2024-06-02 21:43:11', '2024-06-02 21:43:11'),
(83, 1, 98, 1, '2024-09-03 07:07:40', '2024-09-03 07:07:40'),
(84, 1, 99, 1, '2024-09-04 08:55:12', '2024-09-04 08:55:12'),
(85, 1, 100, 1, '2024-09-05 07:51:05', '2024-09-05 07:51:05'),
(86, 1, 101, 1, '2024-09-29 21:30:58', '2024-09-29 21:30:58'),
(87, 1, 102, 1, '2024-09-29 21:32:50', '2024-09-29 21:32:50'),
(88, 1, 103, 1, '2024-11-16 08:31:54', '2024-11-16 08:31:54'),
(89, 1, 104, 1, '2024-11-16 08:36:04', '2024-11-16 08:36:04'),
(90, 1, 105, 1, '2024-11-16 08:39:06', '2024-11-16 08:39:06'),
(91, 1, 106, 1, '2024-11-16 08:40:29', '2024-11-16 08:40:29'),
(92, 1, 107, 1, '2024-11-16 08:41:26', '2024-11-16 08:41:26'),
(93, 1, 108, 1, '2024-11-16 08:41:50', '2024-11-16 08:41:50'),
(94, 1, 109, 1, '2024-11-16 08:42:10', '2024-11-16 08:42:10'),
(95, 1, 110, 1, '2024-11-16 08:42:21', '2024-11-16 08:42:21'),
(96, 1, 111, 1, '2024-11-16 08:44:18', '2024-11-16 08:44:18'),
(97, 1, 112, 1, '2024-11-16 08:46:25', '2024-11-16 08:46:25'),
(98, 1, 113, 1, '2024-11-16 08:49:26', '2024-11-16 08:49:26'),
(99, 1, 114, 1, '2024-11-16 08:49:37', '2024-11-16 08:49:37'),
(100, 1, 115, 1, '2024-11-16 08:49:56', '2024-11-16 08:49:56'),
(101, 1, 116, 1, '2024-11-16 08:50:10', '2024-11-16 08:50:10'),
(102, 1, 117, 1, '2024-11-16 08:52:45', '2024-11-16 08:52:45'),
(103, 1, 118, 1, '2024-11-16 08:53:12', '2024-11-16 08:53:12'),
(104, 1, 119, 1, '2024-11-16 08:53:21', '2024-11-16 08:53:21'),
(105, 1, 120, 1, '2024-11-16 09:01:49', '2024-11-16 09:01:49'),
(106, 1, 121, 1, '2024-11-16 22:00:18', '2024-11-16 22:00:18'),
(107, 1, 122, 1, '2024-11-16 22:00:47', '2024-11-16 22:00:47'),
(108, 1, 123, 1, '2024-11-16 22:00:51', '2024-11-16 22:00:51'),
(109, 1, 124, 1, '2024-11-16 22:00:54', '2024-11-16 22:00:54'),
(110, 1, 125, 1, '2024-11-16 22:01:01', '2024-11-16 22:01:01'),
(111, 1, 126, 1, '2024-11-16 22:01:05', '2024-11-16 22:01:05'),
(112, 1, 127, 1, '2024-11-16 22:01:08', '2024-11-16 22:01:08'),
(113, 1, 128, 1, '2024-11-16 22:01:14', '2024-11-16 22:01:14'),
(114, 1, 129, 1, '2024-11-16 22:03:26', '2024-11-16 22:03:26'),
(115, 1, 130, 1, '2024-11-16 22:08:44', '2024-11-16 22:08:44'),
(116, 1, 131, 1, '2024-11-16 22:08:52', '2024-11-16 22:08:52'),
(117, 1, 132, 1, '2024-11-16 22:08:56', '2024-11-16 22:08:56'),
(118, 1, 133, 1, '2024-11-16 22:08:59', '2024-11-16 22:08:59'),
(119, 1, 134, 1, '2024-11-16 22:09:04', '2024-11-16 22:09:04'),
(120, 1, 135, 1, '2024-11-16 22:09:07', '2024-11-16 22:09:07'),
(121, 1, 136, 1, '2024-11-16 22:09:09', '2024-11-16 22:09:09'),
(122, 1, 137, 1, '2024-11-16 22:09:12', '2024-11-16 22:09:12'),
(123, 1, 138, 1, '2024-11-16 22:09:17', '2024-11-16 22:09:17'),
(124, 1, 139, 1, '2024-11-16 22:10:45', '2024-11-16 22:10:45'),
(125, 1, 140, 1, '2024-11-16 22:12:17', '2024-11-16 22:12:17'),
(126, 1, 141, 1, '2024-11-16 22:14:21', '2024-11-16 22:14:21'),
(127, 1, 142, 1, '2024-11-16 22:15:44', '2024-11-16 22:15:44'),
(128, 1, 143, 1, '2024-11-16 22:16:06', '2024-11-16 22:16:06'),
(129, 1, 144, 1, '2024-11-16 22:16:08', '2024-11-16 22:16:08'),
(130, 1, 145, 1, '2024-11-16 22:16:11', '2024-11-16 22:16:11'),
(131, 1, 146, 1, '2024-11-16 22:16:14', '2024-11-16 22:16:14'),
(132, 1, 147, 1, '2024-11-16 22:16:19', '2024-11-16 22:16:19'),
(133, 1, 148, 1, '2024-11-16 22:44:24', '2024-11-16 22:44:24'),
(134, 1, 149, 1, '2024-11-16 22:45:34', '2024-11-16 22:45:34'),
(135, 1, 150, 1, '2024-11-16 22:47:39', '2024-11-16 22:47:39'),
(136, 1, 151, 1, '2024-11-16 22:48:12', '2024-11-16 22:48:12'),
(137, 1, 152, 1, '2024-11-16 22:48:14', '2024-11-16 22:48:14'),
(138, 1, 153, 1, '2024-11-16 22:48:17', '2024-11-16 22:48:17'),
(139, 1, 154, 1, '2024-11-16 22:48:24', '2024-11-16 22:48:24'),
(140, 1, 155, 1, '2024-11-16 22:48:27', '2024-11-16 22:48:27'),
(141, 1, 156, 1, '2024-11-16 22:48:31', '2024-11-16 22:48:31'),
(142, 1, 157, 1, '2024-11-16 22:48:35', '2024-11-16 22:48:35'),
(143, 1, 158, 1, '2024-11-16 22:50:41', '2024-11-16 22:50:41'),
(144, 1, 159, 1, '2024-11-16 22:52:08', '2024-11-16 22:52:08'),
(145, 1, 160, 1, '2024-11-16 22:52:11', '2024-11-16 22:52:11'),
(146, 1, 161, 1, '2024-11-16 22:52:16', '2024-11-16 22:52:16'),
(147, 1, 162, 1, '2024-11-16 22:52:23', '2024-11-16 22:52:23'),
(148, 1, 163, 1, '2024-11-16 22:52:26', '2024-11-16 22:52:26'),
(149, 1, 164, 1, '2024-11-16 22:52:28', '2024-11-16 22:52:28'),
(150, 1, 165, 1, '2024-11-16 22:52:31', '2024-11-16 22:52:31'),
(151, 1, 166, 1, '2024-11-16 22:54:09', '2024-11-16 22:54:09'),
(152, 1, 167, 1, '2024-11-16 22:55:11', '2024-11-16 22:55:11'),
(153, 1, 168, 1, '2024-11-16 22:56:23', '2024-11-16 22:56:23'),
(154, 1, 169, 1, '2024-11-16 22:57:32', '2024-11-16 22:57:32'),
(155, 1, 170, 1, '2024-11-16 22:57:35', '2024-11-16 22:57:35'),
(156, 1, 171, 1, '2024-11-16 22:57:42', '2024-11-16 22:57:42'),
(157, 1, 172, 1, '2024-11-16 22:57:46', '2024-11-16 22:57:46'),
(158, 1, 173, 1, '2024-11-16 22:57:48', '2024-11-16 22:57:48'),
(159, 1, 174, 1, '2024-11-16 22:57:51', '2024-11-16 22:57:51'),
(160, 1, 175, 1, '2024-11-16 22:57:53', '2024-11-16 22:57:53'),
(161, 1, 176, 1, '2024-11-16 23:00:15', '2024-11-16 23:00:15'),
(162, 1, 177, 1, '2024-11-16 23:01:31', '2024-11-16 23:01:31'),
(163, 1, 178, 1, '2024-11-16 23:02:47', '2024-11-16 23:02:47'),
(164, 1, 179, 1, '2024-11-16 23:02:50', '2024-11-16 23:02:50'),
(165, 1, 180, 1, '2024-11-16 23:02:52', '2024-11-16 23:02:52'),
(166, 1, 181, 1, '2024-11-16 23:02:56', '2024-11-16 23:02:56'),
(167, 1, 182, 1, '2024-11-16 23:03:05', '2024-11-16 23:03:05'),
(168, 1, 183, 1, '2024-11-16 23:03:10', '2024-11-16 23:03:10'),
(169, 1, 184, 1, '2024-11-16 23:04:35', '2024-11-16 23:04:35'),
(170, 1, 185, 1, '2024-11-16 23:05:26', '2024-11-16 23:05:26'),
(171, 1, 186, 1, '2024-11-16 23:07:15', '2024-11-16 23:07:15'),
(172, 1, 187, 1, '2024-11-16 23:07:20', '2024-11-16 23:07:20'),
(173, 1, 188, 1, '2024-11-16 23:07:24', '2024-11-16 23:07:24'),
(174, 1, 189, 1, '2024-11-16 23:07:27', '2024-11-16 23:07:27'),
(175, 1, 190, 1, '2024-11-16 23:07:29', '2024-11-16 23:07:29'),
(176, 1, 191, 1, '2024-11-16 23:07:31', '2024-11-16 23:07:31'),
(177, 1, 192, 1, '2024-11-16 23:07:33', '2024-11-16 23:07:33'),
(178, 1, 193, 1, '2024-11-16 23:07:36', '2024-11-16 23:07:36'),
(179, 1, 194, 1, '2024-11-16 23:11:56', '2024-11-16 23:11:56'),
(180, 1, 195, 1, '2024-11-16 23:13:08', '2024-11-16 23:13:08'),
(181, 1, 196, 1, '2024-11-16 23:13:55', '2024-11-16 23:13:55'),
(182, 1, 197, 1, '2024-11-16 23:13:57', '2024-11-16 23:13:57'),
(183, 1, 198, 1, '2024-11-16 23:13:59', '2024-11-16 23:13:59'),
(184, 1, 199, 1, '2024-11-16 23:14:03', '2024-11-16 23:14:03'),
(185, 1, 200, 1, '2024-11-16 23:14:13', '2024-11-16 23:14:13'),
(186, 1, 201, 1, '2024-11-16 23:14:17', '2024-11-16 23:14:17'),
(187, 1, 202, 1, '2024-11-16 23:16:11', '2024-11-16 23:16:11'),
(188, 1, 203, 1, '2024-11-16 23:17:22', '2024-11-16 23:17:22'),
(189, 1, 204, 1, '2024-11-16 23:18:22', '2024-11-16 23:18:22'),
(190, 1, 205, 1, '2024-11-16 23:19:33', '2024-11-16 23:19:33'),
(191, 1, 206, 1, '2024-11-16 23:19:36', '2024-11-16 23:19:36'),
(192, 1, 207, 1, '2024-11-16 23:19:38', '2024-11-16 23:19:38'),
(193, 1, 208, 1, '2024-11-16 23:19:41', '2024-11-16 23:19:41'),
(194, 1, 209, 1, '2024-11-16 23:19:43', '2024-11-16 23:19:43'),
(195, 1, 210, 1, '2024-11-16 23:19:46', '2024-11-16 23:19:46'),
(196, 1, 211, 1, '2024-11-16 23:19:49', '2024-11-16 23:19:49'),
(197, 1, 212, 1, '2024-11-16 23:21:36', '2024-11-16 23:21:36'),
(198, 1, 213, 1, '2024-11-16 23:22:26', '2024-11-16 23:22:26'),
(199, 1, 214, 1, '2024-11-16 23:23:32', '2024-11-16 23:23:32'),
(200, 1, 215, 1, '2024-11-16 23:23:34', '2024-11-16 23:23:34'),
(201, 1, 216, 1, '2024-11-16 23:23:36', '2024-11-16 23:23:36'),
(202, 1, 217, 1, '2024-11-16 23:23:39', '2024-11-16 23:23:39'),
(203, 1, 218, 1, '2024-11-16 23:23:44', '2024-11-16 23:23:44'),
(204, 1, 219, 1, '2024-11-16 23:23:48', '2024-11-16 23:23:48'),
(205, 1, 220, 1, '2024-11-16 23:23:50', '2024-11-16 23:23:50'),
(206, 1, 221, 1, '2024-11-16 23:27:52', '2024-11-16 23:27:52'),
(207, 1, 222, 1, '2024-11-16 23:29:43', '2024-11-16 23:29:43'),
(208, 1, 223, 1, '2024-11-16 23:30:55', '2024-11-16 23:30:55'),
(209, 1, 224, 1, '2024-11-16 23:31:49', '2024-11-16 23:31:49'),
(210, 1, 225, 1, '2024-11-16 23:32:04', '2024-11-16 23:32:04'),
(211, 1, 226, 1, '2024-11-16 23:32:06', '2024-11-16 23:32:06'),
(212, 1, 227, 1, '2024-11-16 23:32:09', '2024-11-16 23:32:09'),
(213, 1, 228, 1, '2024-11-16 23:32:13', '2024-11-16 23:32:13'),
(214, 1, 229, 1, '2024-11-16 23:32:15', '2024-11-16 23:32:15'),
(215, 1, 230, 1, '2024-11-16 23:32:24', '2024-11-16 23:32:24'),
(216, 1, 231, 1, '2024-11-16 23:35:25', '2024-11-16 23:35:25'),
(217, 1, 232, 1, '2024-11-16 23:36:51', '2024-11-16 23:36:51'),
(218, 1, 233, 1, '2024-11-16 23:37:28', '2024-11-16 23:37:28'),
(219, 1, 234, 1, '2024-11-16 23:37:30', '2024-11-16 23:37:30'),
(220, 1, 235, 1, '2024-11-16 23:37:35', '2024-11-16 23:37:35'),
(221, 1, 236, 1, '2024-11-16 23:37:41', '2024-11-16 23:37:41'),
(222, 1, 237, 1, '2024-11-16 23:37:45', '2024-11-16 23:37:45'),
(223, 1, 238, 1, '2024-11-16 23:37:49', '2024-11-16 23:37:49'),
(224, 1, 239, 1, '2024-11-16 23:43:21', '2024-11-16 23:43:21'),
(225, 1, 240, 1, '2024-11-16 23:45:08', '2024-11-16 23:45:08'),
(226, 1, 241, 1, '2024-11-16 23:46:27', '2024-11-16 23:46:27'),
(227, 1, 242, 1, '2024-11-16 23:47:24', '2024-11-16 23:47:24'),
(228, 1, 243, 1, '2024-11-16 23:49:14', '2024-11-16 23:49:14'),
(229, 1, 244, 1, '2024-11-16 23:49:16', '2024-11-16 23:49:16'),
(230, 1, 245, 1, '2024-11-16 23:49:19', '2024-11-16 23:49:19'),
(231, 1, 246, 1, '2024-11-16 23:49:22', '2024-11-16 23:49:22'),
(232, 1, 247, 1, '2024-11-16 23:49:29', '2024-11-16 23:49:29'),
(233, 1, 248, 1, '2024-11-16 23:49:31', '2024-11-16 23:49:31'),
(234, 1, 249, 1, '2024-11-16 23:55:59', '2024-11-16 23:55:59'),
(235, 1, 250, 1, '2024-11-16 23:56:50', '2024-11-16 23:56:50'),
(236, 1, 251, 1, '2024-11-16 23:58:37', '2024-11-16 23:58:37'),
(237, 1, 252, 1, '2024-11-16 23:59:26', '2024-11-16 23:59:26'),
(238, 1, 253, 1, '2024-11-16 23:59:34', '2024-11-16 23:59:34'),
(239, 1, 254, 1, '2024-11-16 23:59:37', '2024-11-16 23:59:37'),
(240, 1, 255, 1, '2024-11-16 23:59:39', '2024-11-16 23:59:39'),
(241, 1, 256, 1, '2024-11-16 23:59:42', '2024-11-16 23:59:42'),
(242, 1, 257, 1, '2024-11-16 23:59:44', '2024-11-16 23:59:44'),
(243, 1, 258, 1, '2024-11-16 23:59:46', '2024-11-16 23:59:46'),
(244, 1, 259, 1, '2024-11-17 00:28:50', '2024-11-17 00:28:50'),
(245, 1, 260, 1, '2024-11-17 00:31:10', '2024-11-17 00:31:10'),
(246, 1, 261, 1, '2024-11-17 00:31:38', '2024-11-17 00:31:38'),
(247, 1, 262, 1, '2024-11-17 00:31:42', '2024-11-17 00:31:42'),
(248, 1, 263, 1, '2024-11-17 00:31:45', '2024-11-17 00:31:45'),
(249, 1, 264, 1, '2024-11-17 00:31:47', '2024-11-17 00:31:47'),
(250, 1, 265, 1, '2024-11-17 00:31:49', '2024-11-17 00:31:49'),
(251, 1, 266, 1, '2024-11-17 00:31:52', '2024-11-17 00:31:52'),
(252, 1, 267, 1, '2024-11-17 00:31:56', '2024-11-17 00:31:56'),
(253, 1, 268, 1, '2024-11-17 00:31:58', '2024-11-17 00:31:58'),
(254, 1, 269, 1, '2024-11-17 00:33:29', '2024-11-17 00:33:29'),
(255, 1, 270, 1, '2024-11-17 00:34:25', '2024-11-17 00:34:25'),
(256, 1, 271, 1, '2024-11-17 00:35:44', '2024-11-17 00:35:44'),
(257, 1, 272, 1, '2024-11-17 00:36:42', '2024-11-17 00:36:42'),
(258, 1, 273, 1, '2024-11-17 00:37:27', '2024-11-17 00:37:27'),
(259, 1, 274, 1, '2024-11-17 00:38:26', '2024-11-17 00:38:26'),
(260, 1, 275, 1, '2024-11-17 00:38:35', '2024-11-17 00:38:35'),
(261, 1, 276, 1, '2024-11-17 00:38:39', '2024-11-17 00:38:39'),
(262, 1, 277, 1, '2024-11-17 00:38:41', '2024-11-17 00:38:41'),
(263, 1, 278, 1, '2024-11-17 00:40:26', '2024-11-17 00:40:26'),
(264, 1, 279, 1, '2024-11-17 00:41:47', '2024-11-17 00:41:47'),
(265, 1, 280, 1, '2024-11-17 00:43:11', '2024-11-17 00:43:11'),
(266, 1, 281, 1, '2024-11-17 00:43:22', '2024-11-17 00:43:22'),
(267, 1, 282, 1, '2024-11-17 00:43:24', '2024-11-17 00:43:24'),
(268, 1, 283, 1, '2024-11-17 00:43:29', '2024-11-17 00:43:29'),
(269, 1, 284, 1, '2024-11-17 00:43:31', '2024-11-17 00:43:31'),
(270, 1, 285, 1, '2024-11-17 00:43:33', '2024-11-17 00:43:33'),
(271, 1, 286, 1, '2024-11-17 00:43:35', '2024-11-17 00:43:35'),
(272, 1, 287, 1, '2024-11-17 00:45:29', '2024-11-17 00:45:29'),
(273, 1, 288, 1, '2024-11-17 00:46:11', '2024-11-17 00:46:11'),
(274, 1, 289, 1, '2024-11-17 00:47:17', '2024-11-17 00:47:17'),
(275, 1, 290, 1, '2024-11-17 00:47:20', '2024-11-17 00:47:20'),
(276, 1, 291, 1, '2024-11-17 00:47:28', '2024-11-17 00:47:28'),
(277, 1, 292, 1, '2024-11-17 00:47:30', '2024-11-17 00:47:30'),
(278, 1, 293, 1, '2024-11-17 00:47:32', '2024-11-17 00:47:32'),
(279, 1, 294, 1, '2024-11-17 00:47:34', '2024-11-17 00:47:34'),
(280, 1, 295, 1, '2024-11-17 00:47:36', '2024-11-17 00:47:36'),
(281, 1, 296, 1, '2024-11-17 00:47:38', '2024-11-17 00:47:38'),
(282, 1, 297, 1, '2024-11-17 00:48:29', '2024-11-17 00:48:29'),
(283, 1, 298, 1, '2024-11-17 00:49:39', '2024-11-17 00:49:39'),
(284, 1, 299, 1, '2024-11-17 00:50:37', '2024-11-17 00:50:37'),
(285, 1, 300, 1, '2024-11-17 00:52:33', '2024-11-17 00:52:33'),
(286, 1, 301, 1, '2024-11-17 00:53:23', '2024-11-17 00:53:23'),
(287, 1, 302, 1, '2024-11-17 00:53:58', '2024-11-17 00:53:58'),
(288, 1, 303, 1, '2024-11-17 00:54:04', '2024-11-17 00:54:04'),
(289, 1, 304, 1, '2024-11-17 00:54:11', '2024-11-17 00:54:11'),
(290, 1, 305, 1, '2024-11-17 00:54:13', '2024-11-17 00:54:13'),
(291, 1, 306, 1, '2024-11-17 00:56:25', '2024-11-17 00:56:25'),
(292, 1, 307, 1, '2024-11-17 00:57:16', '2024-11-17 00:57:16'),
(293, 1, 308, 1, '2024-11-17 00:59:06', '2024-11-17 00:59:06'),
(294, 1, 309, 1, '2024-11-17 00:59:31', '2024-11-17 00:59:31'),
(295, 1, 310, 1, '2024-11-17 00:59:36', '2024-11-17 00:59:36'),
(296, 1, 311, 1, '2024-11-17 00:59:37', '2024-11-17 00:59:37'),
(297, 1, 312, 1, '2024-11-17 00:59:40', '2024-11-17 00:59:40'),
(298, 1, 313, 1, '2024-11-17 00:59:42', '2024-11-17 00:59:42'),
(299, 1, 314, 1, '2024-11-17 00:59:46', '2024-11-17 00:59:46'),
(300, 1, 315, 1, '2024-11-17 00:59:50', '2024-11-17 00:59:50'),
(301, 1, 316, 1, '2024-11-17 01:01:46', '2024-11-17 01:01:46'),
(302, 1, 317, 1, '2024-11-17 01:04:46', '2024-11-17 01:04:46'),
(303, 1, 318, 1, '2024-11-17 01:04:53', '2024-11-17 01:04:53'),
(304, 1, 319, 1, '2024-11-17 01:04:55', '2024-11-17 01:04:55'),
(305, 1, 320, 1, '2024-11-17 01:04:57', '2024-11-17 01:04:57'),
(306, 1, 321, 1, '2024-11-17 01:04:59', '2024-11-17 01:04:59'),
(307, 1, 322, 1, '2024-11-17 01:05:02', '2024-11-17 01:05:02'),
(308, 1, 323, 1, '2024-11-17 01:05:04', '2024-11-17 01:05:04'),
(309, 1, 324, 1, '2024-11-17 01:05:06', '2024-11-17 01:05:06'),
(310, 1, 325, 1, '2024-11-17 01:05:11', '2024-11-17 01:05:11'),
(311, 1, 326, 1, '2024-11-17 01:07:36', '2024-11-17 01:07:36'),
(312, 1, 327, 1, '2024-11-17 01:08:59', '2024-11-17 01:08:59'),
(313, 1, 328, 1, '2024-11-17 01:09:06', '2024-11-17 01:09:06'),
(314, 1, 329, 1, '2024-11-17 01:09:08', '2024-11-17 01:09:08'),
(315, 1, 330, 1, '2024-11-17 01:09:10', '2024-11-17 01:09:10'),
(316, 1, 331, 1, '2024-11-17 01:09:14', '2024-11-17 01:09:14'),
(317, 1, 332, 1, '2024-11-17 01:09:17', '2024-11-17 01:09:17'),
(318, 1, 333, 1, '2024-11-17 01:09:19', '2024-11-17 01:09:19'),
(319, 1, 334, 1, '2024-11-17 01:11:52', '2024-11-17 01:11:52'),
(320, 1, 335, 1, '2024-11-17 01:14:52', '2024-11-17 01:14:52'),
(321, 1, 336, 1, '2024-11-17 01:15:52', '2024-11-17 01:15:52'),
(322, 1, 337, 1, '2024-11-17 01:35:53', '2024-11-17 01:35:53'),
(323, 1, 338, 1, '2024-11-17 01:36:35', '2024-11-17 01:36:35'),
(324, 1, 339, 1, '2024-11-17 01:36:45', '2024-11-17 01:36:45'),
(325, 1, 340, 1, '2024-11-17 01:36:50', '2024-11-17 01:36:50'),
(326, 1, 341, 1, '2024-11-17 01:36:52', '2024-11-17 01:36:52'),
(327, 1, 342, 1, '2024-11-17 01:36:55', '2024-11-17 01:36:55'),
(328, 1, 343, 1, '2024-11-17 01:36:59', '2024-11-17 01:36:59'),
(329, 1, 344, 1, '2024-11-17 01:38:36', '2024-11-17 01:38:36'),
(330, 1, 345, 1, '2024-11-17 01:39:29', '2024-11-17 01:39:29'),
(331, 1, 346, 1, '2024-11-17 01:41:03', '2024-11-17 01:41:03'),
(332, 1, 347, 1, '2024-11-17 01:41:08', '2024-11-17 01:41:08'),
(333, 1, 348, 1, '2024-11-17 01:41:10', '2024-11-17 01:41:10'),
(334, 1, 349, 1, '2024-11-17 01:41:12', '2024-11-17 01:41:12'),
(335, 1, 350, 1, '2024-11-17 01:41:15', '2024-11-17 01:41:15'),
(336, 1, 351, 1, '2024-11-17 01:41:20', '2024-11-17 01:41:20'),
(337, 1, 352, 1, '2024-11-17 01:41:22', '2024-11-17 01:41:22'),
(338, 1, 353, 1, '2024-11-17 01:43:32', '2024-11-17 01:43:32'),
(339, 1, 354, 1, '2024-11-17 01:45:17', '2024-11-17 01:45:17'),
(340, 1, 355, 1, '2024-11-17 01:45:54', '2024-11-17 01:45:54'),
(341, 1, 356, 1, '2024-11-17 01:45:58', '2024-11-17 01:45:58'),
(342, 1, 357, 1, '2024-11-17 01:46:02', '2024-11-17 01:46:02'),
(343, 1, 358, 1, '2024-11-17 01:46:05', '2024-11-17 01:46:05'),
(344, 1, 359, 1, '2024-11-17 01:46:10', '2024-11-17 01:46:10'),
(345, 1, 360, 1, '2024-11-17 01:46:13', '2024-11-17 01:46:13'),
(346, 1, 361, 1, '2024-11-17 01:46:16', '2024-11-17 01:46:16'),
(347, 1, 362, 1, '2024-11-17 01:48:29', '2024-11-17 01:48:29'),
(348, 1, 363, 1, '2024-11-17 01:49:19', '2024-11-17 01:49:19'),
(349, 1, 364, 1, '2024-11-17 01:51:32', '2024-11-17 01:51:32'),
(350, 1, 365, 1, '2024-11-17 01:51:37', '2024-11-17 01:51:37'),
(351, 1, 366, 1, '2024-11-17 01:51:41', '2024-11-17 01:51:41'),
(352, 1, 367, 1, '2024-11-17 01:51:43', '2024-11-17 01:51:43'),
(353, 1, 368, 1, '2024-11-17 01:51:48', '2024-11-17 01:51:48'),
(354, 1, 369, 1, '2024-11-17 01:51:52', '2024-11-17 01:51:52'),
(355, 1, 370, 1, '2024-11-17 01:54:26', '2024-11-17 01:54:26'),
(356, 1, 371, 1, '2024-11-17 01:55:24', '2024-11-17 01:55:24'),
(357, 1, 372, 1, '2024-11-17 01:55:26', '2024-11-17 01:55:26'),
(358, 1, 373, 1, '2024-11-17 01:55:28', '2024-11-17 01:55:28'),
(359, 1, 374, 1, '2024-11-17 01:55:32', '2024-11-17 01:55:32'),
(360, 1, 375, 1, '2024-11-17 01:55:34', '2024-11-17 01:55:34'),
(361, 1, 376, 1, '2024-11-17 01:55:40', '2024-11-17 01:55:40'),
(362, 1, 377, 1, '2024-11-17 01:55:42', '2024-11-17 01:55:42'),
(363, 1, 378, 1, '2024-11-17 01:57:00', '2024-11-17 01:57:00'),
(364, 1, 379, 1, '2024-11-17 01:57:54', '2024-11-17 01:57:54'),
(365, 1, 380, 1, '2024-11-17 01:58:54', '2024-11-17 01:58:54'),
(366, 1, 381, 1, '2024-11-17 02:00:18', '2024-11-17 02:00:18'),
(367, 1, 382, 1, '2024-11-17 02:02:38', '2024-11-17 02:02:38'),
(368, 1, 383, 1, '2024-11-17 02:02:40', '2024-11-17 02:02:40'),
(369, 1, 384, 1, '2024-11-17 02:02:42', '2024-11-17 02:02:42'),
(370, 1, 385, 1, '2024-11-17 02:02:50', '2024-11-17 02:02:50'),
(371, 1, 386, 1, '2024-11-17 02:27:13', '2024-11-17 02:27:13'),
(372, 1, 387, 1, '2024-11-17 02:28:14', '2024-11-17 02:28:14'),
(373, 1, 388, 1, '2024-11-17 02:30:14', '2024-11-17 02:30:14'),
(374, 1, 389, 1, '2024-11-17 02:30:16', '2024-11-17 02:30:16'),
(375, 1, 390, 1, '2024-11-17 02:30:19', '2024-11-17 02:30:19'),
(376, 1, 391, 1, '2024-11-17 02:30:23', '2024-11-17 02:30:23'),
(377, 1, 392, 1, '2024-11-17 02:30:25', '2024-11-17 02:30:25'),
(378, 1, 393, 1, '2024-11-17 02:30:33', '2024-11-17 02:30:33'),
(379, 1, 394, 1, '2024-11-17 02:32:34', '2024-11-17 02:32:34'),
(380, 1, 395, 1, '2024-11-17 02:33:26', '2024-11-17 02:33:26'),
(381, 1, 396, 1, '2024-11-17 02:34:12', '2024-11-17 02:34:12'),
(382, 1, 397, 1, '2024-11-17 02:35:14', '2024-11-17 02:35:14'),
(383, 1, 398, 1, '2024-11-17 02:36:38', '2024-11-17 02:36:38'),
(384, 1, 399, 1, '2024-11-17 02:37:56', '2024-11-17 02:37:56'),
(385, 1, 400, 1, '2024-11-17 02:39:13', '2024-11-17 02:39:13'),
(386, 1, 401, 1, '2024-11-17 02:39:15', '2024-11-17 02:39:15'),
(387, 1, 402, 1, '2024-11-17 02:39:20', '2024-11-17 02:39:20'),
(388, 1, 403, 1, '2024-11-17 02:39:27', '2024-11-17 02:39:27'),
(389, 1, 404, 1, '2024-11-17 03:05:05', '2024-11-17 03:05:05'),
(390, 1, 405, 1, '2024-11-17 03:05:49', '2024-11-17 03:05:49'),
(391, 1, 406, 1, '2024-11-17 03:06:42', '2024-11-17 03:06:42'),
(392, 1, 407, 1, '2024-11-17 03:07:43', '2024-11-17 03:07:43'),
(393, 1, 408, 1, '2024-11-17 03:08:36', '2024-11-17 03:08:36'),
(394, 1, 409, 1, '2024-11-17 03:09:29', '2024-11-17 03:09:29'),
(395, 1, 410, 1, '2024-11-17 03:11:02', '2024-11-17 03:11:02'),
(396, 1, 411, 1, '2024-11-17 03:11:04', '2024-11-17 03:11:04'),
(397, 1, 412, 1, '2024-11-17 03:11:08', '2024-11-17 03:11:08'),
(398, 1, 413, 1, '2024-11-17 03:11:10', '2024-11-17 03:11:10'),
(399, 1, 414, 1, '2024-11-17 03:11:14', '2024-11-17 03:11:14'),
(400, 1, 415, 1, '2024-11-17 03:12:08', '2024-11-17 03:12:08'),
(401, 1, 416, 1, '2024-11-17 03:12:13', '2024-11-17 03:12:13'),
(402, 1, 417, 1, '2024-11-17 03:12:16', '2024-11-17 03:12:16'),
(403, 1, 418, 1, '2024-11-19 11:12:25', '2024-11-19 11:12:25'),
(404, 1, 419, 1, '2024-11-19 11:17:33', '2024-11-19 11:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_name` varchar(20) NOT NULL,
  `image` varchar(250) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `agama` varchar(20) DEFAULT NULL,
  `no_hp` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `role_name`, `image`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Lilik Sugeng Hariady, A.Md.Kom', 'liliksugenghariady@gmail.com', 'admin', NULL, '$2y$10$wXLT//gKteotrkAHH3Sa8ea4u/RHZ6wrIEWNtcFfyviyxNqxAyPaG', 'admin', 'image_15-05-2024_66440137818fb.png', 'Laki-laki', '1992-03-12', 'Bandar Lampung', 'Islam', '0816412873', 'Jalan Ikan Teri Teluk Betung Bandar Lampung', NULL, '2024-01-05 19:47:27', '2024-11-19 11:29:48'),
(22, 'Santini', 'tinisantini427@gmail.com', '196410071990032004', NULL, '$2y$10$JJH/25SGiFWI9e5vDsOxLu2yQhQo2fqaz04BFCJSYtzeplp75uLAq', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 21:02:54', '2024-09-04 10:54:39'),
(23, 'TRI YANTI', '-', '0071306498', NULL, '$2y$10$6qzDh7hzW.khn5X.9D5iBORaqrXu.vMq5Tiun7HBZybXa.ZUp2cKq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-12 21:13:15', '2024-05-14 06:49:27'),
(24, 'Adinda Wijayanti', 'adindawijayanti23@gmail.com', '199611082022212010', NULL, '$2y$10$Yweb/4tVuTffQU7zoUMP4eZTM2kWLfUsy5qky1XwfGhIYXdtzVLUK', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-13 19:32:34', '2024-05-14 16:38:02'),
(25, 'Annisa Ika Lestari', 'annisaikalestari313@gmail.com', 'annisaikalestari313@gmail.com', NULL, '$2y$10$AEFi6xIbJc8dJDYKvZQe1O7ECLRRz4ebfyPyQqMive11MG0e05Bp2', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 06:38:46', '2024-09-21 21:51:49'),
(29, 'Abdilah Rosyid', '-', '0113701227', NULL, '$2y$10$MWDAfwoSk3zI4S0RRPPLSuDgDZyzhE7nErV5l8p1EbfcLZzvaCO0u', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 06:50:57', '2024-11-17 04:28:17'),
(30, 'Supini', 'supinilp3333@gmail.com', '197007122021212002', NULL, '$2y$10$BGvxmynrVmlRChBkBeIt6uDXZu08wIXGaIaRxU1Yh0DNZIkBCCpFy', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:23', '2024-09-04 10:54:48'),
(31, 'Ristiyana', 'ristiyanahasan@gmail.com', '197310091999032004', NULL, '$2y$10$myiScd9DA7A..QHeqACcJeyYK6YTckkLJitQNOnDbZALr1Gsff/cS', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:25', '2024-05-14 16:37:25'),
(32, 'Bambang Budi Wahyudi', 'bambangbudiwahyudi718@gmail.com', '197505112006041010', NULL, '$2y$10$2gz16bRzIBx7SZ7UgqUWtukBP0vcG66SNmnG.SAISUR6klM3fUNHe', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:27', '2024-05-14 16:37:27'),
(33, 'Yuni Dian Sari', 'yunidiansari06@gmail.com', '197906062005012020', NULL, '$2y$10$1DZO.zewAX41QHxntJekOe0hKiSiFjWXGRqZuLAr5dRMiEx2lluB.', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:29', '2024-09-14 03:54:04'),
(34, 'Rina Fitria', 'inaega3@gmail.com', '197908262014072001', NULL, '$2y$10$ck0XpQe3nxCkgrJMeXCqoesrMLBk2nRgb/6GDYGdfUwVwi959HKLW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:31', '2024-05-14 16:37:31'),
(35, 'Suwartini', 'tini211182@gmail.com', '198211212010012004', NULL, '$2y$10$QnI4nTyBe6SfdwG3lVNszODo39tNc0GFO5s1EeFEZarT.5kQciWty', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:33', '2024-05-14 16:37:33'),
(36, 'Iskadina Eka Putri', 'iskadinaekaputri@gmail.com', '199109182019032009', NULL, '$2y$10$/fQ8arXw49uKo3vv7f7vF.7UFCKTdvbv6gV0yiDbfWyJ0nfUVnsQm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:35', '2024-09-15 00:55:18'),
(37, 'M.H.MUDRIK MUBAROK', 'mudrikmubarok22@gmail.com', '199203222022211004', NULL, '$2y$10$pZmvPG58Ac8iKSsOXoy/keeCkUykZszVRQmuXLiYnpyCmcKG0cBXC', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:36', '2024-05-14 16:37:36'),
(38, 'Galuh Wahyu Pramana', 'wahyupramanagaluh@gmail.com', '199301172023211010', NULL, '$2y$10$99joheYWjanU2y8VzJMQ5Oc.ty8Cr2y9t7Rh6WFNnv84Nc1Dryqb.', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:38', '2024-05-14 16:37:38'),
(39, 'Mentari Puspasari', 'sarimentaripuspa@gmail.com', '199306072023212027', NULL, '$2y$10$9HWrSWGsvH5QV0yyseiuVu5sNorOG75CGY5ewwQirI2WFBUNQn3Qm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:44', '2024-05-14 16:37:44'),
(40, 'Dian Puspita Sari', 'dianps023@gmail.com', '199407032023212033', NULL, '$2y$10$/gdOWcRs4j8kyr1PdaEEgusF4Be9F.k9KZ/l26vuOX6Q88NsDxT5.', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:46', '2024-05-14 16:37:46'),
(41, 'Klara Ken Laras', 'larasken08@gmail.com', '199408062019032003', NULL, '$2y$10$RRaFP3/rirNRkyuqSE3xC.TXaWV4VtFZiGGqBqYLQFCjsiJPUUgfK', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:48', '2024-05-14 16:37:48'),
(42, 'Rizki Samty Ayuningtyas', 'rizkysamty94@gmail.com', '199412182023212025', NULL, '$2y$10$J03LD37ziv/Ah1GHtuxdNu8wry3lp5LQEr5eFxsRmQrHC6dhsshBW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:50', '2024-05-14 16:37:50'),
(43, 'Defriyanti, S.Pd', 'defriyanti64@gmail.com', '199412192022212016', NULL, '$2y$10$wA.tUJvxdm548.z9S7v8HeNEr/JVpz4ncHZlfjKjxv/b0cMPcHMaq', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:52', '2024-11-19 11:09:55'),
(44, 'Lela Tri Indriani', 'lelatriindriani@gmail.com', '199501112020122017', NULL, '$2y$10$N87mqW9.gno3ExbcLvUx2uYN/juq3tvKE6K3CIDIz9cRg/nM/pcIm', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:53', '2024-05-14 16:37:53'),
(45, 'Puteri Indah Sri Wahyuni', 'puteriindah09@gmail.com', '199511092022212009', NULL, '$2y$10$cwlHlWjvi76Q1VdmHVb6zeE5xLPVe5OsEo0rIqwMlN.COalH9GnCy', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:55', '2024-05-14 16:37:55'),
(46, 'Ani Sulastri', 'anisulastri902@gmail.com', '199608242023212013', NULL, '$2y$10$sO5vvrYpuFOGA16UYrXdGON.6vwNR/Vzqh2neFZr6Ww8PwbeFMoNW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:57', '2024-05-14 16:37:57'),
(47, 'Devi Septiani', 'septiani.devi94@gmail.com', '199609042022212003', NULL, '$2y$10$GLMHyqMx7hqJFSXCaI5tMu9mLup8LwSh9JxWtn8JCaF.w9KLd0OMO', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:37:59', '2024-05-14 16:37:59'),
(48, 'Maskur Ahmad', 'maskurahmad83@gmail.com', '199610222019031002', NULL, '$2y$10$DsTMOzNQUPmXZfMu2lbf9OUcwqNMgUImwAQHnCf0Qq3XeMXJVe05O', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:01', '2024-05-14 16:38:01'),
(49, 'Shofura Farah Diba', 'sfd.farah@gmail.com', '199702082020122021', NULL, '$2y$10$8UXYg.XhdQF3xDr.5qoIuO7n/HCLGBhI3sJN6t.RtdRQxN9wcKtbi', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:04', '2024-05-14 16:38:04'),
(50, 'Kharina Oktaviana', 'kharina.oktaviana3@gmail.com', 'kharina.oktaviana3@gmail.com', NULL, '$2y$10$OYbA/MKWKbHFraqaGeLSMed32rll2aGlTp1DkqoP8mL5pm0FyEQ06', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:08', '2024-05-14 16:38:08'),
(51, 'MELLY DARMAYANTI', 'mellydrmynti95@gmail.com', 'mellydrmynti95@gmail.com', NULL, '$2y$10$y5sNTJ8/gqrXtqNyUwmRPejwZOGgbta3F/NmimuXjamcW1RexYQEK', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:10', '2024-05-14 16:38:10'),
(52, 'Annisa Ramadhani', 'ramadhaniannisa378@gmail.com', 'ramadhaniannisa378@gmail.com', NULL, '$2y$10$N0NsKZKOfKxZ/4iDn2E7l.8rViae34KI9Ft7HJVG96H.F551iQ.66', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:15', '2024-05-14 16:38:15'),
(53, 'Resta Niriza', 'resta.niriza02@gmail.com', 'resta.niriza02@gmail.com', NULL, '$2y$10$wo6zFycVz1La.1XkkhjDz.CGqABZQwfdjk17VCX6MERz58iHP.L4.', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:17', '2024-05-14 16:38:17'),
(54, 'Rifki Farindra', 'rifkifarindra0114@gmail.com', 'rifkifarindra0114@gmail.com', NULL, '$2y$10$UrT3LgWcLZCv9lbl5aQvN.vwWlmrogDWFc66PbkrLrNi9JsZb1Pp6', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:19', '2024-05-14 16:38:19'),
(55, 'Yosi Agustiya Rini', 'yosiagustiyarini@gmail.com', 'yosiagustiyarini@gmail.com', NULL, '$2y$10$04I2LkoSVJxccmnBPfn0p.pUMcPWgWNsUYLnylvtIYKgFSkZWgFgW', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-14 16:38:20', '2024-05-14 16:38:20'),
(66, 'AHMAD GHIYATS NAJI FAWWA', 'ahmadghiyats@gmail.com', '3091612669', NULL, '$2y$10$mImdYHgkGYyM.0VvBDpzh.0zTbjWIQW/lUlWxl.5pviTkTt3nXhaG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:24:58', '2024-11-16 08:53:54'),
(67, 'Aldyindra Arsy Rayyan', 'Aldyindra@gmail.com', '0113027587', NULL, '$2y$10$puNDE/GtVR2uE7.DF7XC6eyR1vI/Y/rLt2M7qyeEJySxzD.D2/Bgi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:25:15', '2024-11-16 22:00:58'),
(68, 'ARFAHRI ADE CHANDRA', 'ARFAHRI@gmail.com', '3107688533', NULL, '$2y$10$nL4s2XAX57ZfV8hmNxvnJug28W7fPl1FEul/L9EJpw/F.2tpKmxk2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:25:35', '2024-11-16 22:16:00'),
(69, 'Bagus Sanjaya', 'Bagus@gmail.com', '0108295409', NULL, '$2y$10$A1FYh2m3eK/K/IQ79pEccO52Zg/FnQtCzyCGzpg.DnDvlOznt1.rG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:26:25', '2024-11-16 22:52:13'),
(70, 'Bella Rahmadani', 'Bella@gmail.com', '0107587183', NULL, '$2y$10$GftKd9AyTxf6QNp2WG9XyuWNwqqdTNHx24l2O2hhI9zXO3kixY5.S', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:26:55', '2024-11-16 22:52:20'),
(71, 'Dina Lusiana', 'dina@gmail.com', '0096172715', NULL, '$2y$10$R7Fz8XHMNluHxi6KRWeBiueTlrDe236beqRaO.ClB/SGYZmV.Ts7K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:39:19', '2024-11-16 23:03:02'),
(72, 'Fattih Akbar Ramadhan', 'fattih@gmail.com', '0107854807', NULL, '$2y$10$cvbNSy2QcCHEsSEP9QHrF.P3xPJxPsdn7a69p5yHO0KAuqfd80ccC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:40:00', '2024-11-16 23:14:01'),
(73, 'FAUZI BAADILLAH', 'fauzi@gmail.com', '0087919165', NULL, '$2y$10$PjDzfygxUuaalfjgt7QtXetPWnPrMB7X1mv7B5kgW6VU/H38H6Hpm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:40:48', '2024-11-16 23:14:06'),
(74, 'Irhab Kadavi', 'irhab@gmail.com', '0103279197', NULL, '$2y$10$JgF6U9jSe9efxjZel5vgkeB90HSgGSvMsyP9YwGYdvUr.eA4yuGSe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:41:52', '2024-11-16 23:23:52'),
(75, 'KEZIA NAYLA KERENPUKH PAKPAHAN', 'KEZIA@gmail.com', '0099651875', NULL, '$2y$10$fUf4ZUhYdszwzy7UV4TUKOKjamTdNT/mMmQaBCstnOozqzq.dQXRe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:41:55', '2024-11-16 23:37:32'),
(76, 'Lailatul Hoiriyah', 'Lailatul@gmail.com', '0097362059', NULL, '$2y$10$jRWiCYMuDNAnSqD82L6MpuGBOAGyoQFMiFY8jzJMf.WWfB4hRWPvm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:42:28', '2024-11-16 23:37:47'),
(77, 'M. FASYA ALFIKRI', 'FASYA@gmail.com', '0108608889', NULL, '$2y$10$y6LKGvcxVLr9AvMauZHFquX8fq0hfTSP54oJhOS.kIq.PDz.VYgdK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:43:05', '2024-06-02 08:43:47'),
(78, 'Muhamad Abialdeva Farel', 'Abialdeva@gmail.com', '0106227120', NULL, '$2y$10$TBR466De8VLGqrtwv.n4CuUvY6CKgswc.zjlLEIPOPsICxY9S5L.6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:43:44', '2024-11-17 00:38:37'),
(79, 'Muhamad Fadli Saputra', 'Fadli@gmail.com', '0107930025', NULL, '$2y$10$4IgQ/vlTPmw1FX2yr3F9dOEmy504SN1aRlpISLlrPDA9X3WRutyN2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:44:32', '2024-11-17 00:43:17'),
(80, 'PUTRI SAHRINI', 'putri@gmail.com', '0093425519', NULL, '$2y$10$BWBal6NqP7pcMMi06.217.FrYKcXCTe9o4qhnNRgBgwbVUIIZXwhi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:46:48', '2024-11-17 01:41:17'),
(81, 'NAVARA INDAH ANDINI', 'NAVARA@gmail.com', '0091216811', NULL, '$2y$10$yo0L1e3U/vKMgxQ9I8zLY.ppeztYo0o1.fjQuGQNi7i.XYc569vSi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:46:53', '2024-11-17 01:09:04'),
(82, 'Naumira Shadrina Nur', 'Naumira@gmail.com', '0103502139', NULL, '$2y$10$XXMOxdcVqxY4.SC015G/1eXm1rkPDX2XRx4/pnW34AxEeIxhwVDkC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:46:56', '2024-11-17 01:09:02'),
(83, 'Muhammad Hafiz Ramadhan', 'Hafiz@gmail.com', '0092565641', NULL, '$2y$10$iS4wKJgtOCN1lcCwe8891uAH3htgjF5mT/x1qL7IGo7O2CawrUSnm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:46:59', '2024-11-17 00:53:56'),
(84, 'R. Ajeng Sharifa Sukma Wicitra', 'Ajeng@gmail.com', '0104810496', NULL, '$2y$10$JyC29xmOpK/UphNWN6d/PuD7zEChiwLqG7I57rZW6O52vnKiMFFNS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:47:46', '2024-11-17 01:45:52'),
(85, 'REVA OKTAVIONA', 'REVA@gmail.com', '3095699789', NULL, '$2y$10$/0lUIjt3/7Meq.RGymDYl.BSE6e23o/9g96y5mBEui3IQpoUy7cs2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:48:24', '2024-11-17 01:51:45'),
(86, 'REVALINA PUTRI FEBRIYANI', 'REVALINA@gmail.com', '0108303036', NULL, '$2y$10$egCa3KIHrwG/kzC1OYaubeZpWpduC0fs5N5EiD68l0Aea/dD06MX6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:48:54', '2024-11-17 01:51:50'),
(87, 'RISKA URMILA PUTRI', 'RISKA@gmail.com', '0119566493', NULL, '$2y$10$jXODZyN5iXTdKzGdCX.ZWuf5FT5ewFJk//4Kjne4aqol2oPoZHg7e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:49:22', '2024-11-17 01:55:30'),
(88, 'Rizka Ramadhani', 'Rizka@gmail.com', '0109281890', NULL, '$2y$10$6GPlQf2NlqlNhHzPgZ3wZ.UmDTJygUZVnA77NlySijhY4AnGrErJy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:49:59', '2024-11-17 01:55:36'),
(89, 'Salwa Nailah', 'salwa@gmail.com', '0108615739', NULL, '$2y$10$5rJZ/J1rCoEH/uEgy61Xoe8sP6xs4nIAE71DS/OGb3Qi7OnHtzAiy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:57:10', '2024-11-17 02:02:46'),
(90, 'SATYA ALIEF BASSALAMAH', 'satya@gmail.com', '0109435796', NULL, '$2y$10$Tqh1i6eIFGjo6xjM.Uh3JurCAf1DFGKwJ0Qdmkg.3kam1tKxka.t2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:59:05', '2024-11-17 02:02:52'),
(91, 'SYAKIRA ALISHA', 'SYAKIRA@gmail.com', '0101774673', NULL, '$2y$10$xXVotSxuJgjETZwcsB2St.FNQABomG15913uMn9cIXYEHMVo8F9mW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 08:59:09', '2024-11-17 02:30:29'),
(92, 'SYIFA MAULIDA SAFITRI', 'SYIFA@gmail.com', '0103727807', NULL, '$2y$10$2P1DXcBgfcpUwe399FWNiO/avsgA8PxPn2OL6aZHXWhzio.EsO5c.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 09:00:50', '2024-11-17 02:30:31'),
(93, 'YARIS KURNIAWAN', 'yaris@gmail.com', '0107820330', NULL, '$2y$10$e3OzOuAPgyxag4.m4oK9MOBeC30a9h8WUM9f7ghBXbeS3/nWqtQ7a', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 09:02:32', '2024-11-17 03:11:12'),
(94, 'ZACKY WAHYU WAHIDIANSYAH', 'ZACKY@gmail.com', '0096900725', NULL, '$2y$10$MJHYzXfGnqANdGmc7lfeROsgeuto0pQ8K1mXM48Ou4GnFaPJ/J9Nu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 09:03:36', '2024-11-17 03:12:11'),
(95, 'Anggi Mareta Siska', 'anggimaretasiska220@gmail.com', 'anggimaretasiska220@gmail.com', NULL, '$2y$10$M5eUfJO8dIfJk6Og4dHTT.cNVySeaKNTchHSBYA.hClIXS80c1X9K', 'guru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 19:07:22', '2024-06-02 19:07:22'),
(96, 'Dinda Anisa Fitri', 'dinda@gmail.com', '0104903811', NULL, '$2y$10$fM49mUHnZBI1PE44ZTiPx.e/XwIpRw7j.BzUGivZISuhjab6NVT5G', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-02 21:43:11', '2024-11-16 23:03:08'),
(98, 'M. Danang Rifaldo', '-', '0103913191', NULL, '$2y$10$ZKWZ35vuSgERscmrermkROxy40pQz4pHbJy4hqTpBOWqD8nkmSVOG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-03 07:07:40', '2024-09-03 07:07:40'),
(100, 'Abdul Taqib Al Ilsan', '-', '0113395006', NULL, '$2y$10$EBukMWkyZQ9BF0GgVdHtTu27/pPGW8NW5C8Py6kotH8ZjI9rPe2my', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-09-05 07:51:05', '2024-11-16 08:42:49'),
(103, 'Abi Raditia', '-', '0124929999', NULL, '$2y$10$IO5mE4f.zf/4s8ie41AeTu2BaU4ABz9XrlItfeBks9OspyuEp1/0K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:31:54', '2024-11-16 08:42:38'),
(104, 'Adam Kurniawan', '-', '0128875229', NULL, '$2y$10$v80Ta4d8fqvdTFfxNudos.wZ3hnUXlIhj2.zu/ovVfGZoLTJ28fna', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:36:04', '2024-11-16 08:42:03'),
(105, 'ADELIA RAHMADANI', '-', '3129400972', NULL, '$2y$10$CATcMbtIgFhjOcvaMNmMXud0LYTvcD3./pc.6qfD.4nAx6gzLg532', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:39:06', '2024-11-16 08:39:06'),
(106, 'Abdi Negara', '-', '0105803892', NULL, '$2y$10$c1tX9rRb2AoRwbjpxplhJ.kY/4VpMr22vYx91JBqTOsQd5.FmD5VS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:40:28', '2024-11-16 08:40:28'),
(107, 'ADINDA NAYSILA AURA', '-', '0114993031', NULL, '$2y$10$bhUL59KXeF/1SQe9dhvNrOjs2IWFYVXp2NzXbjnzmZPLRD/I2vy0O', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:41:26', '2024-11-16 08:41:26'),
(108, 'Adelia Chintya Putri', '-', '0095544544', NULL, '$2y$10$6o6asGubc0JP9BaVLS5IzeafzsbHlJPj1Izg6ec.ZgLwAg66Mx/T.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:41:50', '2024-11-16 08:41:50'),
(109, 'ABIYA RISKY RAMADHAN', '-', '0106369418', NULL, '$2y$10$KndIXWc8KU5yp/XkPJE5vekvfw6NPrhyjFJ1wzlMnX5.Pxb2419Ye', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:42:10', '2024-11-16 08:42:10'),
(110, 'ABIENAYA KARUNIA YUSUF', '-', '0101591502', NULL, '$2y$10$HDU.J8OjQrlOjDSEJQFPW.fKS9xEvuMyXZ8.2AtO4k8utvLHKzJjm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:42:21', '2024-11-16 08:42:21'),
(111, 'Aditya Pratama Putra', '-', '0116391396', NULL, '$2y$10$fTDh7f8ohYAOT5fls2zDTe..j6TGvVIQRLTJIyec7bdvE9d9ca82e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:44:18', '2024-11-16 08:48:26'),
(112, 'Agung Ramadan', '-', '0111922084', NULL, '$2y$10$3zTAe0PZ6Ce0JvAi6bOzlexdx51A7V2TG21AnOPisYvNlyTlhbbMm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:46:25', '2024-11-16 08:46:25'),
(113, 'Afika Najla Angellica', '-', '0121275529', NULL, '$2y$10$0EcV/grswTL83rU3g8aiVudzT4GQZAQVX1ue8R7u3S4raOnO3e.0m', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:49:25', '2024-11-16 08:49:25'),
(114, 'Ahmad Fadhil Asshabierin', '-', '0105016012', NULL, '$2y$10$cQ7FOPVES7.cEHvkoxEf4eUYz927gPZYZ63nrlddGAT1UXeg9HUU2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:49:37', '2024-11-16 08:49:37'),
(115, 'AHMAD ALFARIQI ARIF', '-', '0091232565', NULL, '$2y$10$Kv4yk2EDEyXgl4Enn8t8re.uk6iN1sHD3JJTGy0YQJ4HxQFuotZKq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:49:56', '2024-11-16 08:49:56'),
(116, 'Ahmad Faiz Zulkarnain', '-', '3097187557', NULL, '$2y$10$lLf22TIQtnaOhWPOcBND6e0AztrbMh/LLSD3yxW/BEcWb0DbVMvBW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:50:10', '2024-11-16 08:50:10'),
(117, 'AHMAD SAIFULLOH', '-', '3124948771', NULL, '$2y$10$19j3XGybg9qGx1tr/34fKOGMMaKAyvvbJWvneUb4OTVJFXZntXFpW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:52:45', '2024-11-16 08:52:45'),
(118, 'AHMAD RAFFI FIRDAUS', '-', '0112051781', NULL, '$2y$10$PaJtcWzvvPDmJzfTe6H3.eVRlvd5mAMWkLkeQcCmE9/NZwLDmA/jq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:53:12', '2024-11-16 08:53:12'),
(119, 'AHMAD RAFFA SETIAWAN', '-', '0106840313', NULL, '$2y$10$pB8g6Nryyr/0UT.7QIAbp.QgVMg7oK/lXf1WjxfgMhVK4PNLtODIS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 08:53:21', '2024-11-20 01:25:15'),
(120, 'AHMAD SAPUTRA', '-', '0121152818', NULL, '$2y$10$lEq8kFa0UTVZp3T9e31Ex.0ObYdNIx9OsToRPr1ruqOgffaEP8w4K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 09:01:49', '2024-11-16 22:00:44'),
(121, 'Alika Naila Putri Febriyanti', '-', '3121141264', NULL, '$2y$10$oBUSE2.eeWHPQvmZcmQtVORi4RqojjX.4l92Psw2hVqxar6rJiPvy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:00:18', '2024-11-16 22:01:11'),
(122, 'AISYAH BELFA MAULIDIA', '-', '0115621542', NULL, '$2y$10$hEEaV1vggarAS/2b6KeqUuxbfxV/KPTrfNtG7/LOxC63xIb4cMuEK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:00:47', '2024-11-16 22:00:47'),
(123, 'AKHBAR MULIYA DHARMAWAN', '-', '3105325514', NULL, '$2y$10$IxV8ECwBdNWMIS4uFs9AtOYiSaaBoSFDaX.pbnIl4cDXD9CpFpAHK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:00:51', '2024-11-16 22:00:51'),
(124, 'Akmal Rapi', '-', '0117277818', NULL, '$2y$10$fa6PbTkoxDURybTm5/CxDeU26iw7fKCsiIlJo3umh6Ezua.pS8c/a', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:00:54', '2024-11-16 22:00:54'),
(125, 'Alfandi Faisal', '-', '0109693921', NULL, '$2y$10$CDEZG2RWS5hmzAJkfQp.Au2KZ4pV8cnp9cbiKVWRbTlN8yIaSIXZu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:01:01', '2024-11-16 22:01:01'),
(126, 'ALIF REZKY PRATAMA', '-', '3108207315', NULL, '$2y$10$LOrifBxJaLy9DYcQNLxbW.JiB5bvdZJrEayxkT.zPFQKidN/Z5aYO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:01:05', '2024-11-16 22:01:05'),
(127, 'ALIF SANDY SAPUTRA', '-', '0105980833', NULL, '$2y$10$hEzLpYCneDhbE81BwnmOieU5W2u5JiUqeQOz23oJsGYUIfkC0vnyS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:01:08', '2024-11-16 22:01:08'),
(128, 'ALMAIDA GILSHERIN', '-', '0102837458', NULL, '$2y$10$fZCKYsjGLPNWArosC6NRReNMeRhjlzaNUxj6AoM8vrC1mBi1b72Dm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:01:14', '2024-11-16 22:01:14'),
(129, 'Ananda', '-', '0111788807', NULL, '$2y$10$rrBabVeaskIgQ7emfhygbOyYwfST4TOqlqKsPmvRzd5XAy51suhOW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:03:26', '2024-11-16 22:09:02'),
(130, 'Anissa Fitri Ramadhani', '-', '0116095420', NULL, '$2y$10$9q1hWDrmB85oU/ZyoxXylOeCskHiLhvm8xtjWoClzmnStny5hMuTC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:08:44', '2024-11-16 22:09:15'),
(131, 'ALYA KHOIRUN NISA', '-', '0115757157', NULL, '$2y$10$uJEoHyNB7wgmcrOgj00wKOTumgXLhl7tbpfVTYFf7d6WZYpJDSE6i', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:08:52', '2024-11-16 22:08:52'),
(132, 'AMALIA ASYIFA PUTRI', '-', '0117720870', NULL, '$2y$10$mG985rpC6VKUyKb4RSajBugyZQWePXVShfQ2JmBBUbm4XIvk7Yjv2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:08:56', '2024-11-16 22:08:56'),
(133, 'Amarullah', '-', '0084970854', NULL, '$2y$10$l3zpK/PlKTO.UCFV61WwDu0I3m.PzEcOmVPw/qiga/6viqJRuAnBG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:08:59', '2024-11-16 22:08:59'),
(134, 'ANASTASYA SALMA ARZETY', '-', '0102036027', NULL, '$2y$10$WItWANkLLSmq8NjCzr3DS.TFQiy1oQF2TaF9SvWB259bd6Ej56bg2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:09:04', '2024-11-16 22:09:04'),
(135, 'Andre Julian Pratama', '-', '0103325147', NULL, '$2y$10$VkR3Jl2mEwGWmGyTbLRYKOAYSY5UkUOqo18V44ETfK9vAPVqntA2q', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:09:07', '2024-11-16 22:09:07'),
(136, 'ANGELA EKA KINARA LARASATI', '-', '0117480564', NULL, '$2y$10$RJqILhcHoZjZYF9CC7D2VOIU3Qnw3sfX.INTC3qepU.ApsBFzUxfO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:09:09', '2024-11-16 22:09:09'),
(137, 'ANGGA MANGGALA', '-', '0104579517', NULL, '$2y$10$FEFIgtSZnfAuTf3t7iyY..6m22SB9BmprYs0fG1wDfgUdFSR7RodO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:09:12', '2024-11-16 22:09:12'),
(138, 'ANNA VIVIA AL HUJA', '-', '3092997434', NULL, '$2y$10$bKouYW.Lib5sgLbr0R3NI.0LVT9U68wW8fiqRO0TIru5F50n7wh0e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:09:17', '2024-11-16 22:09:17'),
(139, 'AR ROZAQ ALBAR SYAHPUTRA', '-', '0121949114', NULL, '$2y$10$my0IRG0GU48XIuFp.T.hbOttOLAgzJMaMAiItxj5GOHDPnVSlLBJu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:10:45', '2024-11-16 22:15:57'),
(140, 'Ariska Pratiwi', '-', '0114491152', NULL, '$2y$10$H29AuRusaLYqwUErJRWyXu2rXfN1Fjy9LBshRbJ7d1wcEtheb2nbm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:12:17', '2024-11-16 22:16:02'),
(141, 'ARTHA BERLIAN', '-', '0116277540', NULL, '$2y$10$qURAgJWKzaAwyfw1BaRPIOMYR3okBI4ivYqTFKuVXDzBc1abEherq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:14:21', '2024-11-16 22:16:17'),
(142, 'Arya Dwi Prasetyo', '-', '0122595439', NULL, '$2y$10$0h17rsSRh3jpSTPgMfUSGOI6.CReeUfGz40kMspEzoVi8dFpca75m', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:15:44', '2024-11-16 22:16:22'),
(143, 'ARJUNA PUTRA WIJAYA', '-', '3111236582', NULL, '$2y$10$9WtCHIsFDRoabmEcnKPl2O62Hwd8iBNOaNi4fvf/DfX7L6AdWd18e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:16:06', '2024-11-16 22:16:06'),
(144, 'Armansyah', '-', '0117623442', NULL, '$2y$10$Kcg1JaVMcd4G8pwhobMywOfITNpgyzComZQLymXkCh9FAYIyy6nq2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:16:08', '2024-11-16 22:16:08'),
(145, 'ARROKHIT AL-HABSYI', '-', '0105884207', NULL, '$2y$10$iGib2Q6dvYUmo9r3tiwd1ONqSf6E8D7c4Bq5ene5nM8..O6x3Jfwu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:16:11', '2024-11-16 22:16:11'),
(146, 'ARSYAH DAFFAREL', '-', '0112053938', NULL, '$2y$10$jJez/dc4UQVLMQvieNHi.eoMYxk9y8Lfd9DXzE6MJQJnskwqAhzaG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:16:14', '2024-11-16 22:16:14'),
(147, 'Arya Dinata Sanjaya', '-', '0104693414', NULL, '$2y$10$bq.9Sf3mLJBy2.P4nD9HgebP9SDRzbmFv29CjUXCLyGl5BqmC5iN6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:16:19', '2024-11-16 22:16:19'),
(148, 'AVAF ALKATIRI', '-', '0126531063', NULL, '$2y$10$fMlTpsPeB6phkNFy/XgzIuuLNPlA1JXS0t2g1GzEG2HoQqqH/EYRm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:44:24', '2024-11-16 22:48:20'),
(149, 'Ayra Azza Zahra Anwada', '-', '0114774489', NULL, '$2y$10$g3xh4j/X0k0VYQ9/LACDNOLXB6wFfuHnluKWz.jQtU.yMcY5cBBHK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:45:34', '2024-11-16 22:48:22'),
(150, 'AZ-ZAHRA RAMADHANI', '-', '3124298230', NULL, '$2y$10$uHHwAAdLtqK6g6lUvgC.x..dNp22YyRdqGulhUHiKvG9gqBHoDUzO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:47:39', '2024-11-16 22:48:29'),
(151, 'Asyifa Rama Aulia', '-', '0117235789', NULL, '$2y$10$EFKsI4OUSY8W95n7Jb3pDuhYWFJAt.IYMDEBQlG0/iC3GMwe7Im.G', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:12', '2024-11-16 22:48:12'),
(152, 'Aulia Syafitri', '-', '0103512494', NULL, '$2y$10$ZtWAiypMzaTXnYmhIlQYS.x2a2cHn14OF4167AMKLxYjRk7yRmH0C', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:14', '2024-11-16 22:48:14'),
(153, 'AURA NABILA', '-', '0101901766', NULL, '$2y$10$MJLPh1GdNVORg.d7UCnRDOjDMopH0JTSowPBMsobUVS9lGLP0IJ.e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:17', '2024-11-16 22:48:17'),
(154, 'Ayu Agustina', '-', '0095016539', NULL, '$2y$10$BVi9Sf25u5BNw0v0jBFxPew099X9TDs/CO2Iw0RA2Zq1sUwkO5mse', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:24', '2024-11-16 22:48:24'),
(155, 'AYU MARDIANTI', '-', '0107951307', NULL, '$2y$10$LJ60ceTtt1gzjRfZ2GACQu6ttIdfKKI2.7WKETzUv3bgvLJpkTCtm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:26', '2024-11-16 22:48:26'),
(156, 'Azola Zikri', '-', '083153252436', NULL, '$2y$10$a0qfn4RAmaWfviGojbKd1.ATmS2tdItf67OFejX9tKD/lCj0LSqG2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:31', '2024-11-16 22:48:31'),
(157, 'AZRIEL REYZA HENDRAWAN', '-', '0104215197', NULL, '$2y$10$0CuuzulEhlAtQAym39siYuGEktDeCLU1hxrMNgvln1X9Keda.uk6S', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:48:34', '2024-11-16 22:48:34'),
(158, 'BAYU RIMBAWAN CAHAYA', '-', '3104312843', NULL, '$2y$10$uAZPO1gcDhUDl3OZl0SDN.U0ESzAiJ3iZG/IpcG9vy33MNQ37otwO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:50:41', '2024-11-16 22:52:18'),
(159, 'Azzahra Annisa Nurli', '-', '0104468647', NULL, '$2y$10$JhnHOV12EC2a6SBZ/7hP6.kcjftXb39qQ5O3uxKL9RcGMAYAuIQue', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:08', '2024-11-16 22:52:08'),
(160, 'BAGAS PRATAMA SYAM', '-', '3128387670', NULL, '$2y$10$w9xYKvCD2GaDfxRYQ9vMs.gx.yTYhohA/NgXInz0NHmIxjeuMn7LO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:11', '2024-11-16 22:52:11'),
(161, 'BALQIS ARSITA SOLEHA', '-', '0091045062', NULL, '$2y$10$nraiZEGcDVBug4s3oPuTqe.O9CYhWU.TlWmJYfAV5LFXrSUEUGzlu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:16', '2024-11-16 22:52:16'),
(162, 'Budi Adjie Mardianto', '-', '0094801907', NULL, '$2y$10$zYsCH.crTB0LdWYpFFwRIOSXR3foExwIRL3hp9Pv9QQ7miBYj3Fmm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:23', '2024-11-16 22:52:23'),
(163, 'Caroline Yovela Metana', '-', '0109680083', NULL, '$2y$10$.0ruzHjWORxulaSLyE37JO5DAFxAOV/y0KaDusCj10p8tXqTUBL2e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:26', '2024-11-16 22:52:26'),
(164, 'CHEILVIN ARDINO ALFA REZA', '-', '0107708897', NULL, '$2y$10$Gvw011P97dqnaQVR0PzNaOx/lfXYk/ExoaQWNwHhwfvaH9AHWRvKO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:28', '2024-11-16 22:52:28'),
(165, 'CHYNTIARA NABILA PUTRI', '-', '0101547474', NULL, '$2y$10$iW19M8wMIRYkp4/uNbpTIOmuV4YG.CGa3JeyeTn5/Fuaqe5fh0/J2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:52:31', '2024-11-16 22:52:31'),
(166, 'Dafa Suhardi', '-', '0112641959', NULL, '$2y$10$EiNH048uIOv1M25qbjpO8O3bQcFcIVJPfXprKDwIUBlE2YfWMubQG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:54:09', '2024-11-16 22:57:37'),
(167, 'Damar Arvicko', '-', '0112192760', NULL, '$2y$10$UdyAdKRuQSJcKQ11o5vOTe8eNiSSVJEzGY0yXwl3jTvDeJRvjra.q', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:55:11', '2024-11-16 22:57:40'),
(168, 'Dany Feriansyah', '-', '0111937143', NULL, '$2y$10$W1S2ijzRMyC6xbG.KVtgvOG01vJrVqDchZLPiUjQ7ZJXkqMOmwEUG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:56:23', '2024-11-16 22:57:44'),
(169, 'CIKO PUTRA RAMADAN', '-', '3103411262', NULL, '$2y$10$/vSLTMT2Brw4yoSsbNcE8OpGIqIKTsxnc7qyBsE9pd6USxWLPZKlu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:32', '2024-11-16 22:57:32'),
(170, 'Cintia Rahma Agustina', '-', '0093460468', NULL, '$2y$10$lhTZhaLm52Tn3RPM7Sfjg.i7vZMH64vRKFiSAEbbENrS.GHvS8QL2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:35', '2024-11-16 22:57:35'),
(171, 'DANIEL TRI SAPUTRA', '-', '0091268750', NULL, '$2y$10$QY2UJ6SRHjYgUETU5bmGeu6dpmHTA3li453nfjOg9UwE574qoN71S', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:42', '2024-11-16 22:57:42'),
(172, 'DEA AURELIYA ZAHRA', '-', '0091425511', NULL, '$2y$10$Pvq.Cz2zKb/L2v6YPzZ5teK55liNZfpArVeePqIupl/igf8m7u7my', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:46', '2024-11-16 22:57:46'),
(173, 'DEARTHA ANGELIA PUGER', '-', '0106184109', NULL, '$2y$10$FBJFUNHDjnG0x8QnmF06X.HtQ3QX8Q1UYcjSJie5qr/qcrjWEmo/O', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:48', '2024-11-16 22:57:48'),
(174, 'Dela Indriani', '-', '0076358995', NULL, '$2y$10$CU55vytRgLEQp.r3i.sXk.k/f31Gkds3HRbz1EU0UoihKUB2ZgqFW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:51', '2024-11-16 22:57:51'),
(175, 'Denendra Aryasatya', '-', '0119455622', NULL, '$2y$10$WRLY5Ed9jxDhKGG.JbGUZuZ62IXvTjLfe58H00CstQeRDzElZ7Qj6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 22:57:53', '2024-11-16 22:57:53'),
(176, 'DIAZ', '-', '0106723583', NULL, '$2y$10$ZKNxa4gcry/Z9U7tXd2vmuhcmum7ZY2VZZe68IicK/4jKm0vWB2Ku', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:00:15', '2024-11-16 23:02:54'),
(177, 'DIMAS HERI AJI PAMUNGKAS', '-', '3126317080', NULL, '$2y$10$4nAuIcznaY355EgGLVbHxeS50TD4ZLAAPYwyf36vPBFTYFvUNVrhu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:01:31', '2024-11-16 23:02:59'),
(178, 'DEVAN ARGA PRASETYA', '-', '3113191124', NULL, '$2y$10$cUFn7uwycmkTFfVuMtbjm.L2S6Juma8ZWOEHOQK6FCFtSKuXEw3gm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:02:47', '2024-11-16 23:02:47'),
(179, 'DEWI SAVIRA AIRINE', '-', '0105579330', NULL, '$2y$10$41uXo4CFxdyHZ1yugSp1lu.TyDjffyU4vx3ZvdmMEmC9nqhR1mDGi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:02:50', '2024-11-16 23:02:50'),
(180, 'DHIO RISKI ANGGARA', '-', '0105255307', NULL, '$2y$10$zM0G9UQR3kuAuWTCacoSYOYGu8YAf9/dDCeVry5mO/CLGi/13vuUu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:02:52', '2024-11-16 23:02:52'),
(181, 'Diego Al Ziqri Andola', '-', '0112128593', NULL, '$2y$10$xtxoFpHxOY.GELwd2SwPmuPqJZO0iZpSniTLxnbNvogyZSopWz9hi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:02:56', '2024-11-16 23:02:56'),
(182, 'DINA RAMADHANI', '-', '0092150388', NULL, '$2y$10$j7/3l34c68UMVLLPW8j1sejTZj3JXlFugtnZ7SBd9fJBaou1.6s2q', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:03:05', '2024-11-16 23:03:05'),
(183, 'Dinda Kirana', '-', '0106272835', NULL, '$2y$10$VoioXpeFnjkcwzkRdtSgUu6RbbiZgCgmWwdxASHlIV8NHRc7zg8XW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:03:10', '2024-11-16 23:03:10'),
(184, 'Dofi Anugrah Indarrabih', '-', '0118544301', NULL, '$2y$10$t5e61/I.swYTvXEx821nPuENppH65twtNdWB8PNE.ZAogCDdwotEa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:04:35', '2024-11-16 23:07:18'),
(185, 'Ecy Monica', '-', '0129493381', NULL, '$2y$10$0oyII1OaoAznR/Ha34KRhewPTZBXRE3MzBXcfWLSZipxymmPvXGu2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:05:26', '2024-11-16 23:07:22'),
(186, 'DITA PRATAMA', '-', '0104573850', NULL, '$2y$10$xzz0LdfXv60I.KEtuZFFjO.P0qON0ozRtwQDq/OSlErVANqJnUkZS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:15', '2024-11-16 23:07:15'),
(187, 'DRINITY GRASIAN DJATMIKO', '-', '0119518939', NULL, '$2y$10$9rOopyv16qxfuKwp.aTZLeA8slJXiUCIGoboW7JkZmiL4gBmuU0mO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:20', '2024-11-16 23:07:20'),
(188, 'Elsy Restiyani', '-', '0104870265', NULL, '$2y$10$cS3L59sHz7teVsLGQICZUeGy3NmQoUs.GaGlAY.NQbbWO1QV.0CKW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:24', '2024-11-16 23:07:24'),
(189, 'Enalisa', '-', '0092348593', NULL, '$2y$10$ptb9XOQalPR4i3Uz6RZPgO684g83ChvOBoNb2pJTxYh3CbZiKJ6HW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:27', '2024-11-16 23:07:27'),
(190, 'FADIA FAUZIATUN NISA', '-', '0108662367', NULL, '$2y$10$/HAfallfHbjDji3G9vKne.H2C5V2i/lALmlP62nyNeu4HB0YJI4XS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:29', '2024-11-16 23:07:29'),
(191, 'FAHMI ALFARIZI', '-', '0108200079', NULL, '$2y$10$GkObqwRQpYeyipAH3lEsK.Zf1VTjRbR4ZtqjUjc2CD2xcDkuY1Leq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:31', '2024-11-16 23:07:31'),
(192, 'Fahri Aditya', '-', '0099989389', NULL, '$2y$10$IOq.NtZVZZFi122YqRMAjOOYsVNmgg7hxIePhLoiEFIHUy9HI0/eS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:33', '2024-11-16 23:07:33'),
(193, 'FANNY SUKMAWIJAYA', '-', '0101003309', NULL, '$2y$10$T2s0x2kMVlBrJGXo0ovT0uweeFOSHJ.78BtNXQZDtEnpTSDHMk2ba', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:07:36', '2024-11-16 23:07:36'),
(194, 'FEBRIANA SILABAN', '-', '0106316047', NULL, '$2y$10$M601T5o3Z4UGZ7KrAVuhG.sDca2zLaDEnUbmUl.ATU6FYXOAfKTt.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:11:56', '2024-11-16 23:14:09'),
(195, 'Febriansyah', '-', '0122047493', NULL, '$2y$10$1pKSFMs.9oucutdyZ60uXOphN1lyiQ/IZ8QdUaSRmqK102ZXB5/xS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:13:08', '2024-11-16 23:14:11'),
(196, 'Fardhan Habib Rohiman Maulana', '-', '0106927862', NULL, '$2y$10$Zx7AGJeYlIiQeGIl/M1DXuGs.hEyMDVeX.PmbTGPl.uJXG.7qNhN.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:13:55', '2024-11-16 23:13:55'),
(197, 'Farel Rahmanda Dahri', '-', '0112817904', NULL, '$2y$10$rMU8oXuZ9Os/dbqV7udpiOuAsDOfVsdWvCiPPXpGP0M/baffGDVb2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:13:57', '2024-11-16 23:13:57'),
(198, 'FARHAN SAPUTRA', '-', '0082610728', NULL, '$2y$10$L3uq07N1egvgVXwsxOVQ5.a.m2PnG/6QwtNaUNHZn3j00gea6krOi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:13:59', '2024-11-16 23:13:59'),
(199, 'FAUZAN DWI ANDIKA', '-', '0095312364', NULL, '$2y$10$FL4bUaPNenn2nXkIh/Prberbc4foULLZ5/4hCrrctIfdz8oHDPu3u', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:14:03', '2024-11-16 23:14:03'),
(200, 'FEBRILIYA', '-', '3124823117', NULL, '$2y$10$o5ivA61ZqSjHiJro0sBbIu6ppk4Bh2ZG/N8ODKFFvKumslaORSAOe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:14:13', '2024-11-16 23:14:13'),
(201, 'Ferly Sundava', '-', '3111235638', NULL, '$2y$10$V1FJ5nMMmwt6LG50ktbKY.DGbj7a7ggCnKDGrBdSqCW7mKxIWxjZq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:14:17', '2024-11-16 23:14:17'),
(202, 'Firsya Nafalia', '-', '0109571388', NULL, '$2y$10$Et7r1rKlvjh1YVZc21tSvezr0TB59c.PIso7bz2pxOfm7hKuUlaiq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:16:11', '2024-11-16 23:16:11'),
(203, 'GALUH RAMEYZA ALYA', '-', '0111945777', NULL, '$2y$10$wxcUzNubN/VRTIoGYgPnmeN3H5cR9DhX4I6ODHS82eiQe7YcJ2aRi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:17:22', '2024-11-16 23:17:22'),
(204, 'Ganesha Bimasakti', '-', '0116847629', NULL, '$2y$10$m3tnA/MjufkkIoPnHT7tPeY1lI7iN/T1LlUTiYaN6QX0YsP8j6djG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:18:22', '2024-11-16 23:18:22'),
(205, 'GARNIS', '-', '0117803929', NULL, '$2y$10$VYLz60MnMmM8QhhP4Dq/cuicr5Ts3q/oD0wpwxYufGOLZeUSL1ycS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:33', '2024-11-16 23:19:33'),
(206, 'GHANDI PRADANA PUTRA', '-', '0116568330', NULL, '$2y$10$wjo12sm0zJuDmKedy.wvlOIKHuPzcV1nn4kQo23SQEP7dM0g2vXNe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:36', '2024-11-16 23:19:36'),
(207, 'Gilang Pratama', '-', '0094861667', NULL, '$2y$10$itHdLleO45eDOgr.Rawp4O1WyNbxnXoYUnjTeTe7AebNmW1qATs32', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:38', '2024-11-16 23:19:38'),
(208, 'GRACETASYA KHUMAIROH PARIZQY', '-', '0117766681', NULL, '$2y$10$.ia51gANQwXSE08iTDEMIu7ktzuh6kYM5RKUyR.yIbF3mnW37hVey', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:41', '2024-11-16 23:19:41'),
(209, 'HAFIDZ AL RASYA', '-', '0092750833', NULL, '$2y$10$SzShdRn8p411VV4L2razRuyVswIkGwzpzXTIm/QOrqWuBVXWouhLm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:43', '2024-11-16 23:19:43'),
(210, 'Hafirah Nindah Destiani', '-', '0108257536', NULL, '$2y$10$3dywzgiSEHahPeUGRKXKtuoM0stdhDvZFkOJPJxFLC2TgtG7Hxa3e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:46', '2024-11-16 23:19:46'),
(211, 'HARDIAN SAPUTRA', '-', '0083211912', NULL, '$2y$10$NfVxQXRQL9DPFhWYwIqkKO/rGx.tgiYke8rDsWmLtEAxgcFwbUVle', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:19:49', '2024-11-16 23:19:49'),
(212, 'INDAH NAZWA DESFITA', '-', '3116892681', NULL, '$2y$10$JyYsJi.anNf2UzbcUJFlsulcHCdHqQ5DVPbr3kH3TwC9r8d1pr7U6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:21:36', '2024-11-16 23:23:41'),
(213, 'Indri Dwi Irianti', '-', '0121815546', NULL, '$2y$10$nQZx3sKMgl/nxhJ/B9cja.GTcYYFQsMuitVc7/b21mjGhaKYBWhJG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:22:26', '2024-11-16 23:23:46'),
(214, 'Harfkhan Ridho Riski', '-', '0118069791', NULL, '$2y$10$pHHWExk/QV7hSRh2Cf458eIXnGVrxsCbjdTcWrpA4bCabH/tYJEwa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:32', '2024-11-16 23:23:32'),
(215, 'Hazmi Hardiansyah', '-', '0105541468', NULL, '$2y$10$1g.IFDz6Km0CsK3CKRGLie.KOUzx1uNNUspHX73DIbStBQQsiZDBC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:34', '2024-11-16 23:23:34'),
(216, 'Ibnu Safwa Andrean', '-', '0106105497', NULL, '$2y$10$VBQ2u5F8JBVSVVl9XDzWq.fq6iXRX7t.tPNr7rj19BgO4n/bjIvBW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:36', '2024-11-16 23:23:36'),
(217, 'ILYAS ALVIN RAZKA ADITYA', '-', '0106767253', NULL, '$2y$10$oD/54H7kiu8zBw3eiGtrqe.gLVTGyeIlTnYWt5mvRLBu5xrKw/zFS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:39', '2024-11-16 23:23:39'),
(218, 'INDRATA ALFARIZY', '-', '0092209210', NULL, '$2y$10$bgOiDAVffsQ4mU5JwxZ7k.WngOVi8jFiBQrH7FOF5n.Jss52QZPCO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:44', '2024-11-16 23:23:44'),
(219, 'Intan Manila Sari', '-', '0107901447', NULL, '$2y$10$AiWaK92I3LLx09OgSETHz.IisgmDC/D1.8qGvnYLclsJ3viSQqXMS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:48', '2024-11-16 23:23:48'),
(220, 'INTAN SISILIA', '-', '0093898357', NULL, '$2y$10$WmMaHiY4IAEhKTnTxVOHvOUP336ba9RJc/Rf7Swn3RAVn89rZbqXm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:23:50', '2024-11-16 23:23:50'),
(221, 'Jenny Dwi Efrillia', '-', '0108001681', NULL, '$2y$10$/jGePSflbsM4jyHhpudEIuqFu16y2r3vpNVD.j7dB6cRppoZOvHMq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:27:52', '2024-11-16 23:32:11'),
(222, 'KARINA GHATSIA', '-', '3129939218', NULL, '$2y$10$5w0xh0H0GziEUiduJU9kHu6SiRAHN.nDFzVBY/.E7qZ9BBs1enBnm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:29:43', '2024-11-16 23:32:18'),
(223, 'KAYLA RATU SAPUTRA', '-', '3129939219', NULL, '$2y$10$z.liWc4/HbTc.Y3RXEQHium1StLASiT4SFA68ASO4kpgi5xaDaxiW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:30:55', '2024-11-16 23:32:20'),
(224, 'KELLA SYIFA FEBRIANTI', '-', '0114466792', NULL, '$2y$10$mYv2PNTVG2qc1MORDckYse4X7DymEoslqYWggQbrs2B./LcnHSHA6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:31:49', '2024-11-16 23:32:22'),
(225, 'ISTI ANATUL MA\'RAH', '-', '0105207033', NULL, '$2y$10$THKUTYUKXqs9WTTqfetNKuazsL1HCnQFTIZXnn.X3OVEO6Dxfgg1u', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:04', '2024-11-16 23:32:04'),
(226, 'JANNES TRIGO MANURUNG', '-', '0109125919', NULL, '$2y$10$pvdPerJk/yvr7lvI3TxEhuDR/F7pejSi7asCM5BVCsJ9PtD2/QVlq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:06', '2024-11-16 23:32:06'),
(227, 'Jella Africhal', '-', '3102491700', NULL, '$2y$10$3GexHeXYTd7C7xD1c6me/OiRWNYl5P0pvNI0lKu9PoggLHx0Wktwe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:09', '2024-11-16 23:32:09'),
(228, 'Jodiansah Dwi Permana', '-', '0104328741', NULL, '$2y$10$CeUM4ye6z94DnUBpiKtyrua4MybtpWr7Y8v7a.Y5VcFd5A283axQO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:13', '2024-11-16 23:32:13'),
(229, 'Karel dwi saputra', '-', '0109224872', NULL, '$2y$10$dHPiGQ.yiz0aY1FOfDcpzu6EATpfAP3nqb49g9yiG29PFsisq0pmK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:15', '2024-11-16 23:32:15'),
(230, 'Kevin Pratama', '-', '0105046823', NULL, '$2y$10$J8idJp10F9Fbf1AbzMA/6e5K/r3m/PO/QPQaBbbBGp5y5xbVVD/JG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:32:24', '2024-11-16 23:32:24'),
(231, 'KHALIFAH', '-', '0119988625', NULL, '$2y$10$9cvn/biaCFxhEjAVVqNTJu75dYgeY14gqLYm3U1MgH.VOZSk4Y/Wa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:35:25', '2024-11-16 23:37:38'),
(232, 'KRISTIANA STEFANI YUWONO', '-', '0118812992', NULL, '$2y$10$lTPC9CzmxMH0egamn0jIAuMjCRQFgYvYP4Qm0jX5PRAYOz2CTxc0y', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:36:51', '2024-11-16 23:37:43'),
(233, 'Keysa Aqila Zahra', '-', '0095283618', NULL, '$2y$10$KKhr2AJXoXhb6PUobtqf1OloK2kHHZokX044kGFv8wXj1uNzn3wmi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:28', '2024-11-16 23:37:28'),
(234, 'KEYSA PURNAMA SARI', '-', '0117090237', NULL, '$2y$10$72ygl4mUDhEu/.Jjh8cVW.nDcfV601G8kD6eJsTDQtGAIlG5BAF.K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:30', '2024-11-16 23:37:30'),
(235, 'KHAIRUNNISA MASAYU', '-', '0096331182', NULL, '$2y$10$iROfIJZF1NvuPoNwuYAhseTL62zQQTVPiI7qx8sCcZZUB3pHid9WK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:35', '2024-11-16 23:37:35'),
(236, 'Kirana Agustina Ramadani', '-', '0103624404', NULL, '$2y$10$7.vAQiqCVriKxhutd/BJkeObD6cQYRsLq9X0CiyD.Wy8cbvEJ32We', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:41', '2024-11-16 23:37:41'),
(237, 'Kusri Yanti', '-', '0102202211', NULL, '$2y$10$5Pc4g7xo22N6Yl3Qn5fK2OUMYsCn79OMbMARFezw9wj35RR1EPC2O', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:45', '2024-11-16 23:37:45'),
(238, 'Laili Rahmawati', '-', '0107570717', NULL, '$2y$10$xbZy3pLaiPeSIuEF.PEsk.mKq.T5RCg8ZmN.4SnDkDQ.72IVuedSK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:37:49', '2024-11-16 23:37:49'),
(239, 'LOLITA ZENATA', '-', '0123338438', NULL, '$2y$10$PvOO0ynkhVE5IaKaavWOJuT.i.uakOru25yicLQIDauaEP/zGQn/e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:43:21', '2024-11-16 23:49:12'),
(240, 'M. Afif Firdaus', '-', '0112500477', NULL, '$2y$10$s0CEr0zz4jCdAZfvJ1OQKu9Y5Lh367xijaYQAI2/jVzjXTtJ8RgfO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:45:08', '2024-11-16 23:49:21'),
(241, 'M. Arga Satria', '-', '0119941051', NULL, '$2y$10$VtyOy.IcScfyNixfR5M3oeTf52tTpF0aEElJguNLVMwwQDEFDiD3m', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:46:27', '2024-11-16 23:49:24'),
(242, 'M. DAFFA AIDIMAN', '-', '0125488438', NULL, '$2y$10$S.4UN9Yh.mEDZGUAzy8dG.pZ4nM0ZR8RU9Y7xCwpLmM4z4x0nkPuK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:47:24', '2024-11-16 23:49:27'),
(243, 'LUTHFIA ALISIA PUTRI', '-', '0111391985', NULL, '$2y$10$EEjdJW0KgEjzFYg5tjSWz.ZjEWJgTmj87btfZ441zln/p8u43Pd5K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:14', '2024-11-16 23:49:14'),
(244, 'M FATIH AL HAITAMI', '-', '3116121709', NULL, '$2y$10$/4Z0rlR6aH3tN9XbaaXDI.jJxBIBdRgZP4LuI5oSjLfsLdXLNAVb.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:16', '2024-11-16 23:49:16'),
(245, 'M TAUFAN PRATAMA', '-', '3101407703', NULL, '$2y$10$uUa0kBuiPVt/wd4.i6rIwuADr9UaM5aFPdqPJonlG6ADU98aAhmFG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:19', '2024-11-16 23:49:19'),
(246, 'M. Alfa Rizki Saputra', '-', '0107075892', NULL, '$2y$10$BB0GNVpd5eVsBEhX2ISaSuAxqhcFf4hQZDd93ZNfVWeMuKAMLzZxi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:22', '2024-11-16 23:49:22'),
(247, 'M. DAFFA PRATAMA', '-', '0111913598', NULL, '$2y$10$SfP.DYYV36YvBNADxwhgBu9c5l02VA1DaplvfkGkWZIwkyvivzfvy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:29', '2024-11-16 23:49:29'),
(248, 'M. Danang Rifaldi', '-', '0105953481', NULL, '$2y$10$.gnm9ue0Q4coe99FbzxsKe1zRbbvcN1FxOjS6t8Q3Uxh1HiVx9AtO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:49:31', '2024-11-16 23:49:31'),
(249, 'M. Raffi Maulana', '-', '0119575692', NULL, '$2y$10$shbAf7fJtfXz5BU8JNY0XuPLK0lgIrh9w.DowKGsiz4KWOQtSV9j2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:55:59', '2024-11-16 23:59:28'),
(250, 'M. RAIHAN SAPUTRA', '-', '0103643478', NULL, '$2y$10$Z/jnVE9lWE2zK6QatiNOnuVBOf0OwfibtgBOsYwPx6WgNA/vTSNRG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:56:50', '2024-11-16 23:59:31'),
(251, 'M.AKBAR', '-', '0102609567', NULL, '$2y$10$rc8GPqZvxr57MELxG7nD0O5pcU7/wOiaBmzHa3BNhpWNbDB6oq2YO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:58:37', '2024-11-16 23:59:40'),
(252, 'M. RAFA ARJUNATAN PRATAMA', '-', '0105257641', NULL, '$2y$10$n5WZC07qHE.0D0mlF58JMefg32hTR7AZtKt9eLthYfAjpQC/z9cuu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:26', '2024-11-16 23:59:26'),
(253, 'M. RAKA', '-', '3080687905', NULL, '$2y$10$CECKx9gpg8PUhB5p9QpYd.BiyF2Sbh7mwwSZ51w7bveelJsCPLsbe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:34', '2024-11-16 23:59:34'),
(254, 'M. SYACRIEL PRATAMA', '-', '0088724540', NULL, '$2y$10$F8UDpIqaJVhFYIXYx/EKNebAVycLe20c0wPwomc.l36a3Exi0ivgq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:36', '2024-11-16 23:59:36'),
(255, 'M. Verdi Abdurrohman', '-', '0108135616', NULL, '$2y$10$8GC07es8mVRn.iqcVJH.x.PusDnAY/7h3vztB29amBqDcYtET7jmi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:38', '2024-11-16 23:59:38'),
(256, 'M.BAGAS FERIYANSYAH', '-', '0088983854', NULL, '$2y$10$PD3xJg.t0hJqlFnpiJfikumvl/vBrT5.Tx/z88v2hARca/S2WlxgK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:42', '2024-11-16 23:59:42'),
(257, 'M.IQBAL FIKRIANSYAH', '-', '0106358491', NULL, '$2y$10$2cIVVfsc/neBDlz2ofdJ3eWMUMom3G.Pup4V9jiCTw6wKuQwqJKtC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:44', '2024-11-16 23:59:44'),
(258, 'MAHARAJA SURANTA K.', '-', '0106882781', NULL, '$2y$10$OHrEpAZkeLFLvM0ug4zDNuE0ZU7LMvWlsNzB7MaY6mTN3S.QAx1oy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-16 23:59:46', '2024-11-16 23:59:46');
INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `role_name`, `image`, `jenis_kelamin`, `tanggal_lahir`, `tempat_lahir`, `agama`, `no_hp`, `alamat`, `remember_token`, `created_at`, `updated_at`) VALUES
(259, 'MARISA FAUZIA', '-', '0128532271', NULL, '$2y$10$37FW97GZ0xzOteb4wQ2SBeHeiqGXubmyPqTadE6Z94N12ir80JIwu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:28:50', '2024-11-17 00:31:40'),
(260, 'Maulana Yusuf', '-', '3106282540', NULL, '$2y$10$nvhWJEcvivjKEJt/020ZMe2hZh./7v/MGcydpwNX.TUQ6rnX./hNi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:10', '2024-11-17 00:31:54'),
(261, 'MALIK JALALUDIN', '-', '0094034733', NULL, '$2y$10$hT4oYR621q/TPOrwle3CUuQYPQtA218MMwYUXRqiqWC2697eBCSCq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:38', '2024-11-17 00:31:38'),
(262, 'MARTIAH', '-', '0116090559', NULL, '$2y$10$FDKeXIEA/Od7vi.f75V/2.A4gy5HK0K5EUQeiquyPh58ZQwzr8Qb.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:42', '2024-11-17 00:31:42'),
(263, 'Mas Nabil Alwali', '-', '0102217507', NULL, '$2y$10$OwxFzzoMnkqrUXe1HyL0h.g1xHZ8ptqoz2SR73aSs9IXnh7wlgaGO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:45', '2024-11-17 00:31:45'),
(264, 'Mas Rafki Pratama', '-', '0102246713', NULL, '$2y$10$W7bMxcZoWJl/RoYjiXy/yuaswLJZPJC/yNynbztoGCnpobqH9.WTK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:47', '2024-11-17 00:31:47'),
(265, 'Mas Zaki Naufal', '-', '0083182603', NULL, '$2y$10$HpSgkEKut23sgfi/QZXoy.fS/AroeHpAdWFQs8M7VQgoiEpa/5JYe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:49', '2024-11-17 00:31:49'),
(266, 'Maulana Al Fazri', '-', '0084213751', NULL, '$2y$10$1Kn4LInH62LaZ55JXDXgZeb5rGt6V2jmN9tZ0i/02pzgIzL1wjbSO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:52', '2024-11-17 00:31:52'),
(267, 'Mega Regita Cahyani', '-', '0116319254', NULL, '$2y$10$ahamag.KjKP9E882eEogp.lnI5YHpMUGXcXk28SlgLPnNv3E4wjcO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:56', '2024-11-17 00:31:56'),
(268, 'Meisya Anggraini', '-', '3119760843', NULL, '$2y$10$/ewhnUT636VZVNlbXY3HuuD/jWfetVbqV0jpMnWvs0kPGZPFtJDwq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:31:58', '2024-11-17 00:31:58'),
(269, 'MEYLANI OLICIA PUTRI', '-', '3119383792', NULL, '$2y$10$COafsZwU/eMMhYbMO7BeHO7vDV6FKB5I3XHILsCAvFhwBIqoONhGy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:33:29', '2024-11-17 00:38:21'),
(270, 'Michelle Alvaro', '-', '0121747936', NULL, '$2y$10$vZfBfyBwELRvwFonWFiyJewdOul0oWUcMz6EMLXD.V7QkEupLWOBq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:34:25', '2024-11-17 00:38:24'),
(271, 'Mohd. Faried', '-', '0113120442', NULL, '$2y$10$SLUjwi0MWu1GttwmjGGltOkO37N22tmDWoOlqU7n8Hj.B7pQqonK2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:35:44', '2024-11-17 00:38:28'),
(272, 'Mona Efelin', '-', '0123711763', NULL, '$2y$10$N5JgQzv.njC7oooot.B.B...Arp./uijagyLYxPrcwE92Fmv89TFO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:36:42', '2024-11-17 00:38:30'),
(273, 'Mubarok Fauzan', '-', '0114111384', NULL, '$2y$10$s6Vg4kN4X2j2rhRanghKfulxLpI2r.mmGmNG0IO1bvyaEu4XQcZ9.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:37:27', '2024-11-17 00:38:33'),
(274, 'MITHA ANGGRAINI', '-', '3107595343', NULL, '$2y$10$zaOrrtOv8Pon9uBXz.oInOMKXQK5FdJd6P6uhiwxT9Tcjqep3QnLi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:38:26', '2024-11-17 00:38:26'),
(275, 'MUFADHAL HAFIZ HIDAYAH', '-', '0107051724', NULL, '$2y$10$n0/vCXkl0EAKyb730yh.QOJCOuA4OmGVL7OBqAmHmLhPN7oG.vQvi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:38:35', '2024-11-17 00:38:35'),
(276, 'Muhamad Afrizal', '-', '0105164041', NULL, '$2y$10$PWvh2ypRh6g/IjAYCKmQauf8Y.G2LhW7rKAyAx7tMVSIpa.dV0X22', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:38:39', '2024-11-17 00:38:39'),
(277, 'MUHAMAD ALI FAKHRI', '-', '0099846499', NULL, '$2y$10$Rn5WZ6zwbjWW0F7yHbrVgeCV.aGhbQ6GE0mvp2bFOma1hzrQ2YHKC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:38:41', '2024-11-17 00:38:41'),
(278, 'MUHAMAD FAHRI HAMID', '-', '0097615545', NULL, '$2y$10$13z9nOq.Y1Wg0OyKDBiFE.DODlm6lDIb0ZvEtnvVE1bVbMG30eEGa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:40:26', '2024-11-17 00:43:19'),
(279, 'Muhamad Jery Rhamadani', '-', '0116753295', NULL, '$2y$10$fAbmb0Jw2SzU9s9rkuMjaOOsE8Ns7zv7cXlh5UOuQKsjW3wzUj5E2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:41:47', '2024-11-17 00:43:26'),
(280, 'MUHAMMAD BILAL', '-', '3129935363', NULL, '$2y$10$180k9kFAJV9ERZ4a0zAX9OGIblwjfptXML8u9uStZZi9h8pJUVIfK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:11', '2024-11-17 00:43:37'),
(281, 'Muhamad Fatir', '-', '0117400387', NULL, '$2y$10$bFM9WWYwdGq.4jimebzWlOT6TIqBhYBM9sXdHp9Gk/3LXj45rHoYi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:22', '2024-11-17 00:43:22'),
(282, 'Muhamad Haikal Davi', '-', '0095326393', NULL, '$2y$10$WWW8a9VvqU0OVL2ttzqgreblCvLmOymLPHsjHzcT1pT0umov/LnqC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:24', '2024-11-17 00:43:24'),
(283, 'MUHAMAD RISKI AL FATIR', '-', '0107057275', NULL, '$2y$10$.oZSJo4DiStDY4ZGc4P7pu70yZ6Tj6hcuIpo.Fi9RFM6FhPFvgPXG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:29', '2024-11-17 00:43:29'),
(284, 'MUHAMMAD AL HAFIZH', '-', '3108532683', NULL, '$2y$10$yb6ZOjiMToteG/quhgvaIeINI0utF.RZnPHlacsS1iwPtBZPN266u', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:31', '2024-11-17 00:43:31'),
(285, 'Muhammad Aqil Affandi', '-', '0094733359', NULL, '$2y$10$SkPWxhq.YA5ZWjptvNAov.R79h2ZS/99D3rwifVOvCgnGyiIkSOy.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:33', '2024-11-17 00:43:33'),
(286, 'Muhammad Arda Ramadhan', '-', '0115403964', NULL, '$2y$10$JcV/LsoHI6jjipPlNVrVyO2VwV/NETNhVR3OOasT/RRH.cphkhZ0a', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:43:35', '2024-11-17 00:43:35'),
(287, 'MUHAMMAD DAFFA', '-', '0108821533', NULL, '$2y$10$Cv3zPXFXa.ewMFq0GWGzW.7BWjdy/BgkIfXSGD3ugGKf6EyXF2Ioy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:45:29', '2024-11-17 00:47:22'),
(288, 'MUHAMMAD DAFFA NAUFAL SHOBIR', '-', '3114075336', NULL, '$2y$10$2MZfkDE.y91aej32syM.4e6.OrgOw1k3SbBGe/bIcfGT8R4WyolyW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:46:11', '2024-11-17 00:47:26'),
(289, 'Muhammad Brama Lesmana', '-', '0108109109', NULL, '$2y$10$j3UeaEvte2I8TvKp8Bjed.c4UVKCHxytpMXmxKFpx4UTnn0mqcTM2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:17', '2024-11-17 00:47:17'),
(290, 'Muhammad Caesar', '-', '0108797787', NULL, '$2y$10$76/ozO6W5xwrY9jzLBmSWuCN3jTuKcdeUOuhRwPCLEynA6fr1akgO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:20', '2024-11-17 00:47:20'),
(291, 'MUHAMMAD DECO SYAHPUTRA', '-', '0102446242', NULL, '$2y$10$aPFy9AbLQdvB.LFiYg5NbOKLU341reOTr3A.Yu6xtu5g1Dixc48gS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:28', '2024-11-17 00:47:28'),
(292, 'Muhammad Dzaki', '-', '0108061847', NULL, '$2y$10$ZiLRwd5bi5ZqIK0cNBc2G.eZFoPPiEUGEi1v734ysEpNk2tMebdfK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:30', '2024-11-17 00:47:30'),
(293, 'Muhammad Fachri Akbar', '-', '0105913038', NULL, '$2y$10$uSV9Ata5d7llSN8Noe6k8.0xNuWEJe7PppTp.EI7NFUcDhQ565LXe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:32', '2024-11-17 00:47:32'),
(294, 'Muhammad Fadil Aditiya', '-', '0102917025', NULL, '$2y$10$MFOE5k3z/VojXaNUPXnkceANXorF5OCNWuvKu9yorqX/huh9gfE7i', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:34', '2024-11-17 00:47:34'),
(295, 'MUHAMMAD FAIRUL NIZAM', '-', '0117252398', NULL, '$2y$10$qgArnrVFXCXcZcTDhZxk4eS5kg6hXmPRPsuh4aT4lPjWavGeIvPYO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:36', '2024-11-17 00:47:36'),
(296, 'Muhammad Fikri Firmansyah', '-', '0116131129', NULL, '$2y$10$wc7tpUfqwBffcUnHibsfCukKYmn/ZeW4EDR3Duqfaet5C2SFsZlk.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:47:38', '2024-11-17 00:47:38'),
(297, 'Muhammad Guntur', '-', '0128206046', NULL, '$2y$10$jOEzLw1V73z6caJlqoiu/.rU5Cuo5/zjVTskRNXN4uYOrQreU97PG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:48:29', '2024-11-17 00:53:54'),
(298, 'MUHAMMAD IRWAN DANA', '-', '0106742869', NULL, '$2y$10$eD/1HBH5E5TVq0m0CU7D9e1HCpLDKOgVxv4jQslBAWwcRd0MEQY5G', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:49:39', '2024-11-17 00:54:00'),
(299, 'Muhammad Marco Widiandra', '-', '0121546304', NULL, '$2y$10$0xU25dGiTalAPbM/8Sjn9OjwR5pEDexeH8edxvbrbsl/nIIAtWRwu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:50:37', '2024-11-17 00:54:02'),
(300, 'Muhammad Raffa Rizky Ramadhan', '-', '0119221681', NULL, '$2y$10$PWpeGSTD1KNGqq2yQ/V0q.B7c3blXxStBOt8Q6cHJoYV76SjJ.9HK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:52:33', '2024-11-17 00:54:07'),
(301, 'Muhammad Rafif Febriyansyah', '-', '0115423746', NULL, '$2y$10$uZfKO9JFe68bj1TJM3secOY8OCqpudl6U51M6wj/tILwDMVESAGoy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:53:23', '2024-11-17 00:54:09'),
(302, 'Muhammad Ilyas Putra Darma', '-', '0111129516', NULL, '$2y$10$VwWQteJQ8QSXyFiC5MtBCuNxM0I2m0X1yrtEi3EtLtAN9uvMrL3QC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:53:58', '2024-11-17 00:53:58'),
(303, 'MUHAMMAD MASYKUR ROMADHONI', '-', '0114379930', NULL, '$2y$10$Brl0mzr9ol0ijbdS1Ywen.qvNIIEgnDrI13f85OYjfiHgfEf39/IO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:54:04', '2024-11-17 00:54:04'),
(304, 'Muhammad Rafli Santoso', '-', '0098544013', NULL, '$2y$10$7DyVZpK9.W4H8MNdrxa3SuRiQ96e5EpvXBCGa.hpcGU5pL2Cf9/Yi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:54:11', '2024-11-17 00:54:11'),
(305, 'MUHAMMAD RAMADHAN', '-', '0102574323', NULL, '$2y$10$TiLd7M/btC2vxp/VZdIQmOPgTFwdZxYFGagy3FHBIaFv5TTCW0VFO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:54:13', '2024-11-17 00:54:13'),
(306, 'Muhammad Ridho Maulana', '-', '0091412978', NULL, '$2y$10$nJvEEhXFt5TlCjL4rKetKuei22J.L/RIeIt9Z83ss6KuEg5zaf.oW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:56:25', '2024-11-17 00:59:29'),
(307, 'MUHAMMAD RIZKY', '-', '0121135625', NULL, '$2y$10$efT7CwGAteYeH4jmw8x7r.xZEoEJd77Z4jicq.CQwaLv34VdVaULu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:57:16', '2024-11-17 00:59:33'),
(308, 'Mutiara Amalia Suyandi', '-', '0116385794', NULL, '$2y$10$aEwlLMm/UJOMAWKSk00/yOvo/ILKC9bH1GmkDU4xdUpkdtgSKFBqy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:06', '2024-11-17 00:59:44'),
(309, 'MUHAMMAD RIDHO PRATAMA', '-', '0107490879', NULL, '$2y$10$fWtfH5rdEhkoCJtVRWL.fep34NBg4bVBvHa5c9oPeAGK2c1KYEo.u', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:31', '2024-11-17 00:59:31'),
(310, 'Muhammad Sandi Banyu Asmoro Langit', '-', '0106109028', NULL, '$2y$10$OsX1yN5zu61dxM8gmEeaLOX8lWp/eueCu.c5rwHspDIKFa.BkVn4y', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:36', '2024-11-17 00:59:36'),
(311, 'Muhammad Singa Prabu Amron', '-', '3114641290', NULL, '$2y$10$kiIpn2zoPGu0MCN8ArYHSu4y6uxAaq5BputPclFujX/HovVa5MNDa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:37', '2024-11-17 00:59:37'),
(312, 'Muhammad Tegar Pratama', '-', '0112174895', NULL, '$2y$10$rQgAoo8vDQiyKAlmRLWRdev.MXAnxeSW3FAzt4TVu1dvTWbrKBvWm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:40', '2024-11-17 00:59:40'),
(313, 'MUSLIM AHMADI SOLIHIDDIN', '-', '0092091094', NULL, '$2y$10$drTkHVNbBbubp911BYtAXeX/UpKgdao0RZ.pA91/SetlJKSKgKhOu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:42', '2024-11-17 00:59:42'),
(314, 'Mutiara Andini', '-', '0106774144', NULL, '$2y$10$737mXEM2/DlzyIP7LHDGOeAVLO/wxpdNN2wKgWqk5YpO7q79dFqvW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:46', '2024-11-17 00:59:46'),
(315, 'Mutiara Eka Pratiwi', '-', '3102441510', NULL, '$2y$10$yg7UIawuG.FKDYTlNaeKFujxzWoi65fpLwBqmVpFsEX5cMqmR5G9K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 00:59:50', '2024-11-17 00:59:50'),
(316, 'Nabil Kenzha Febriansyah', '-', '0124337062', NULL, '$2y$10$5F2avY/ZpFLViy6JU7W8yue1CV.jvJY/IJ.jaFZZ2NQ1wmhY43TNm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:01:46', '2024-11-17 01:04:51'),
(317, 'NAFIDAH YULIYANI', '-', '0101985953', NULL, '$2y$10$BIMzsoxdeUnAiw.9dEwwau.lE57H7dUYUUiAZKvhm03kaxd7te0NK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:04:46', '2024-11-17 01:05:08'),
(318, 'NABILA DZAKIRA', '-', '0096380547', NULL, '$2y$10$xeJ5KREqXFc8oFmyw2saOud/mDqfdQeQFhV/PikeBhFbgpVAX4Pbi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:04:53', '2024-11-17 01:04:53'),
(319, 'Nabila Maysa Putri', '-', '0101937474', NULL, '$2y$10$8USCY.hX4eSTYZVx.bj4KOiWjilJRvVomd3y5mnFMjePTp4LF8eny', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:04:55', '2024-11-17 01:04:55'),
(320, 'NABILA TAZKIA AMARA', '-', '3118333446', NULL, '$2y$10$zenbvNqkqQj8Xa11YqJRteWrsizZgSYkrWS5/Nq6okbp41ONgr7mW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:04:57', '2024-11-17 01:04:57'),
(321, 'NABILA RAISYA PUTRI', '-', '0106964401', NULL, '$2y$10$.SDREJhe3PQibc3M34JZmu72F21s7iEVlXbKEvDWc/fN46QQKJaAC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:04:59', '2024-11-17 01:04:59'),
(322, 'Nadiera Kallea Shifa Almyra', '-', '0111318418', NULL, '$2y$10$HBkZ2UWVoxMfMtDemmrH7uTnteXi4HPOrWotc.PBCyPsXzGJz93UO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:05:02', '2024-11-17 01:05:02'),
(323, 'NADIN', '-', '0104373313', NULL, '$2y$10$lk38wLSUUL1uofE.ddPOxeOOOJglHnISUPmNxrmASC7dgr10YKd66', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:05:04', '2024-11-17 01:05:04'),
(324, 'Nadine Adelia', '-', '0115712769', NULL, '$2y$10$eoHl7dTeRQQk/UFhOnMAU.mnc4o1bM1.A05qJwowhiGwhcmNkNIjq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:05:06', '2024-11-17 01:05:06'),
(325, 'NAJUA', '-', '3119464057', NULL, '$2y$10$OYUPFP8Yzba3uIJNDHqyY.Xb8qKEmBVWS/5LZRRLR/ikoMIITdeae', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:05:11', '2024-11-17 01:05:11'),
(327, 'Natasya Dwi Bunga Rastika', '-', '0118626063', NULL, '$2y$10$8hBKeVn0K0wR67wIQMXg/OVqZBSTeTnBUy4Wrf/N3x4bnWCci7QZK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:08:59', '2024-11-17 01:08:59'),
(328, 'Nayra', '-', '0118024186', NULL, '$2y$10$a4BbQcUrQsAykLFH44f.We5fxxwC4vlUT.xz4Wjc3H083KNfMne6C', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:06', '2024-11-17 01:09:06'),
(329, 'Naysila', '-', '0118062305', NULL, '$2y$10$cydm5HByCfIa3no1OmJ6qeRVXAO3wH6FKMqhIpx8FLOJjmbRmHoJ6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:08', '2024-11-17 01:09:08'),
(330, 'NESSA SAPITRI', '-', '3112852721', NULL, '$2y$10$E0guSnSpWvQQiF25nYL3FOom26kCyrZ30L4GuZCKvEp9yzGm79Zl6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:10', '2024-11-17 01:09:10'),
(331, 'Nia Handayah', '-', '0101439042', NULL, '$2y$10$IyzSTXCMnS3zdox34UJ3m.XvPyH.ZyorShvBMj24JO8iBOONwSs/e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:14', '2024-11-17 01:09:14'),
(332, 'Nikita Kirana', '-', '0109254363', NULL, '$2y$10$jYOYRMQ1aZAy6ew/qdzPBubQ/5Iz9XG8JoLUZOhb5kJDe32Feadaq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:17', '2024-11-17 01:09:17'),
(333, 'NIKO PRATAMA WIBOWO', '-', '0103080188', NULL, '$2y$10$lSMK8tebSpJJXExnPBw2z.yUa8eZEvmgcDqlDX.X4dX0ZtsX/ptiS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:09:19', '2024-11-17 01:09:19'),
(334, 'Nova Carolin', '-', '0113382630', NULL, '$2y$10$Y/WhyLpiEO7uv2FKNK3.Ru3SuaDWlxiZ/1tzVZhc4gDQL3mejEGBO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:11:52', '2024-11-17 01:36:47'),
(335, 'NURUL HAJIJAH', '-', '3113736763', NULL, '$2y$10$aSC48DkPRO4mI6AdDwzeGe0pC/12GmG.nujJS1PpwHOjnVwguKa9m', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:14:52', '2024-11-17 01:36:57'),
(336, 'Okta Priani', '-', '0123933001', NULL, '$2y$10$kmPn064CBle5xGvmwcIbdO/k3L/hhKkYnblT6WTcotMTRMPFcyhwu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:15:52', '2024-11-17 01:15:52'),
(337, 'OKTAFIANI', '-', '3116489237', NULL, '$2y$10$rqINSo8lZETIMJVzujJBK.JnaIx1EatTUOoGldVvpnYEvMx9liyme', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:35:53', '2024-11-17 01:35:53'),
(338, 'PARAMITA RAMADANI', '-', '3122597221', NULL, '$2y$10$dAgfH77gcmUPohgxCh7ouOrHR4l7S2jjRTEr/80.Cxun6zKGlokye', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:35', '2024-11-17 01:36:35'),
(339, 'Normala', '-', '0107612113', NULL, '$2y$10$i39LuD9xulEjmP.TuJFFa.fkbzSlC9/yghvcqTXQSZLeYiJ.6mhYm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:45', '2024-11-17 01:36:45'),
(340, 'Novilia Putri', '-', '0107519264', NULL, '$2y$10$0A8D35tHRBtz5ZmLdXd1KOx2noO1qdkd/nXlqQrsdmGM0.U0Db0Tq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:50', '2024-11-17 01:36:50'),
(341, 'Nur Anggraeni', '-', '0096480097', NULL, '$2y$10$wgPZGFoiY0t0Hf83pIljCe1scCf79Sc3CGOmE/mr/Jq4fKM4uFArW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:52', '2024-11-17 01:36:52'),
(342, 'Nuri Dwi Indah Pertiwi', '-', '0092109314', NULL, '$2y$10$5ngYSJ98PPP0/4MdbHg3yuewflxK6ClTUn/gBmeziyJHqk/3vEkqq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:55', '2024-11-17 01:36:55'),
(343, 'OKSA KRESNANTARA', '-', '0104875474', NULL, '$2y$10$IQYuFXNkBai0eOncj6GhxOm3eAiueQIBoFU6KLCy3QGM2dlgQApyG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:36:59', '2024-11-17 01:36:59'),
(344, 'PUTRI AGUSTINA', '-', '3122263265', NULL, '$2y$10$SWEbKK/3R2vHTLs9/rcZ3uaBmxJcXtFlXFi.pCxjr073t2jpDdMVu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:38:36', '2024-11-17 01:38:36'),
(345, 'Putri Aisyah Rani', '-', '0129557775', NULL, '$2y$10$8Eniv2vee53eljI5am0snOw30krcsSj0nLslgeTWKS1DstU6IQyxK', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:39:29', '2024-11-17 01:39:29'),
(346, 'QIBRAN PRATAMA', '-', '0111191323', NULL, '$2y$10$lVVX/z9jyRRXg1v7q9lRVOZFjj.tFa4C33tX1aHNjRIRml10cTOmW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:03', '2024-11-17 01:41:24'),
(347, 'Paramita Saputri', '-', '0098077678', NULL, '$2y$10$jHfMgh52GzuED3crB5sWuONtVyiHlCeh9EE02fNIk7YT3VkWZtOo2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:08', '2024-11-17 01:41:08'),
(348, 'PRIMA RAMADHAN TRIDA', '-', '3108599573', NULL, '$2y$10$y5Wofm6f2r25Zl1rRME91ezY7e5mUDTfmhjhBtnbhyS.LjkuF03P.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:10', '2024-11-17 01:41:10'),
(349, 'PUSPITA NINGSIH', '-', '0104738705', NULL, '$2y$10$RA5TWqOspBrwmUdZqM/nY.jcD/YQKnPVaY4o49xYBRK6GqBNaOHy.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:12', '2024-11-17 01:41:12'),
(350, 'Putri Aprilia', '-', '0112033528', NULL, '$2y$10$NM3LEBf8npcknfIUlnMfjudFvRFIIM11xebetzNJD0uFCZcRgY4iO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:15', '2024-11-17 01:41:15'),
(351, 'PUTRI VIANTI MALA', '-', '0105718054', NULL, '$2y$10$FUy6XXSCUslNspauykAIQ.4WQjPBxFOKSzfEk3p2PtTjG8YzpkdUu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:20', '2024-11-17 01:41:20'),
(352, 'QEYNISHA RAYHANUN', '-', '0111586354', NULL, '$2y$10$kN0jFAZhY8uvxsYuVM7Auegfl2EKB/dPGfH8cCoaRavgmyZaejE.G', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:41:22', '2024-11-17 01:41:22'),
(353, 'Raditya Saputra', '-', '0123247166', NULL, '$2y$10$3fq4hVQ1J55PJTqX30120OekzZU4Onf8AwyHuITLryUv36CgY2hg.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:43:32', '2024-11-17 01:45:56'),
(354, 'RAFA BANU SAKHIY', '-', '0107067706', NULL, '$2y$10$blTHStrAB/uTtYKFspGFVOCK0sAbR6bsfy0qkgd92ApKqqx/6TsL6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:45:17', '2024-11-17 01:46:07'),
(355, 'Raditya Ramadhan', '-', '0118913842', NULL, '$2y$10$5WOE7grCluN9tz.tBFW9XuuuQGlOztWHDivAed0mP14CdvrrjIpki', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:45:54', '2024-11-17 01:45:54'),
(356, 'RAEHAN HABIB', '-', '3113958342', NULL, '$2y$10$cycXFSrICdJHU67iswd3iOwunQ1rvdfUPoltuMGGH9KVYELVE.eM2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:45:58', '2024-11-17 01:45:58'),
(357, 'RAFA ANDHIKA PRATAMA', '-', '0085456340', NULL, '$2y$10$oX0sKhdpWSnA5S/8J7HrzOIrS9ztK0vRQGkFDN/ZmBZQ/ZfSN9Qti', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:46:02', '2024-11-17 01:46:02'),
(358, 'RAFA ANDIKA', '-', '0112346755', NULL, '$2y$10$zIYofZOKk1KpnCt4V/rTi.xyVilv4VflK/kqeurOztKh6TMM2/TrO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:46:05', '2024-11-17 01:46:05'),
(359, 'Rafi Ramadan', '-', '0108740332', NULL, '$2y$10$lTTdU9In5dCkAyULi81np.YyNWR5aPWAPDONrSpw772N1TL99jZyO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:46:10', '2024-11-17 01:46:10'),
(360, 'RAFLI NUR HIDAYAT', '-', '0101253966', NULL, '$2y$10$4GsuRMg1BwV0chepHsjXN.5iQ5eJaKjsyfQwd5ypHLtmF/jsM3DFC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:46:13', '2024-11-17 01:46:13'),
(361, 'Rahes Dwi Andika', '-', '0118883806', NULL, '$2y$10$SvR4MQB/UkhMJemSNdTEM.OjgZxYnaRq3IAlosesooOP8Ntf6ctU.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:46:16', '2024-11-17 01:46:16'),
(362, 'RANA NAFILA ZALVA', '-', '3123656603', NULL, '$2y$10$OODr71t/rfMr1G9/mFU0huglzFjiKcs97DjbGa2iFlPFrQOsRoeei', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:48:29', '2024-11-17 01:51:35'),
(363, 'RANJANI ARINDI', '-', '0116262080', NULL, '$2y$10$itwXXlm8puNPDFt3LGW2Gu.RCxnX5eAbxQ3NIVjYX0wKXgXR0mXAG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:49:19', '2024-11-17 01:51:39'),
(364, 'RAMA ADRIANSYAH', '-', '0116053851', NULL, '$2y$10$vjUe9AuEq1iCznuRi8B0pOqoOmM4iKdZI/PVreK1ymxA/2z1AVp7q', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:32', '2024-11-17 01:51:32'),
(365, 'Rangga Dito', '-', '0111421909', NULL, '$2y$10$7Eunc/BWeBbeaPNUDGjQVecV1sRYPWz4O0gy8.ZpVShTIUT3ETg7C', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:37', '2024-11-17 01:51:37'),
(366, 'RASTI ADITIA PUTRI', '-', '0114174740', NULL, '$2y$10$/rhBZcnkOkBtZIGnSYGOPuZ0DZmUotZBNKpR9NAF0bhC/r1r8L.4.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:41', '2024-11-17 01:51:41'),
(367, 'RATU BALQIS MAHARDIKA SALSABILA', '-', '0113808006', NULL, '$2y$10$PdYJNWY5jp9PMpyECv8M5.yQSsWEjYnWOJ8/7TXrSEjGzNgeOeUna', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:43', '2024-11-17 01:51:43'),
(368, 'REGINA RAHMADANTI', '-', '3116393065', NULL, '$2y$10$525juriiS04OwqFU5bOOuuZPcbSXUbN2D5PZePUh/zezzgUHquv9i', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:48', '2024-11-17 01:51:48'),
(369, 'RHENATA OKTAVIA', '-', '0106454738', NULL, '$2y$10$Fm4/dBBzDaoeqcCkfyk3se4AEb8RfztGQeEe2Yk.4Isvtc0ohkuWe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:51:52', '2024-11-17 01:51:52'),
(370, 'Rizki Adika', '-', '0118926902', NULL, '$2y$10$Nfj.QxtGIsen.k/h7.bV1.V.J2tSAPmqPVrT/h7R7IAgFgzN0PDXO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:54:26', '2024-11-17 01:55:38'),
(371, 'Rifa Ailla', '-', '0106067210', NULL, '$2y$10$j1izGSHjkiI8M.86v4ZJ4uMzDco912lpyxiXOIEiVp./61aWyLSqm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:23', '2024-11-17 01:55:23'),
(372, 'RILIVANY NARAISYA', '-', '3112900139', NULL, '$2y$10$bH/5Pd9T8sFmURJiOuU3D.T0yBgK3AgxRgsB1Egb0IVrHWlcRMcau', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:26', '2024-11-17 01:55:26'),
(373, 'RISKA NAURA PUTRI', '-', '0082771104', NULL, '$2y$10$EFdN7f8lcAKUuZA0B4Ts3u2odgh4b0j1Y6LJhPiePTNnzYVmaTaCq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:28', '2024-11-17 01:55:28'),
(374, 'RISKI TRI PUTRA', '-', '0106055110', NULL, '$2y$10$fWP4WqR34JwRpY24U92u0eRKz1La7f1K4fnBVogPtrPFaY4uDqI6K', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:32', '2024-11-17 01:55:32'),
(375, 'Rivaldo', '-', '0089159141', NULL, '$2y$10$eSFCIKDbeHx3tGkHw5Ez1.EK2fROqjze65oPM/MDxuwwtbDmf7jtS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:34', '2024-11-17 01:55:34'),
(376, 'Rizqi Agustyan Ramadhan', '-', '0109481203', NULL, '$2y$10$LBQMFt/VUvh5jsxvNteJjO3EYx.JqiQFBkviwVcczHfB1G1FiwcNa', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:40', '2024-11-17 01:55:40'),
(377, 'ROMEO ARTHAWIJAYA', '-', '0107513841', NULL, '$2y$10$gExNYRr1CpuKf/se7TbhuOlUTM26OYG4cRcEAnBXmFjfIDTn.1qca', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:55:42', '2024-11-17 01:55:42'),
(378, 'Safa Aulia Putri', '-', '0111882241', NULL, '$2y$10$4G3P46ysEFxjCcm3mPDL7.CmO1lPPe4l9Kz4rOohP1X9LPrePUe4m', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:57:00', '2024-11-17 02:02:32'),
(379, 'Safa Dini Aulia', '-', '3120444484', NULL, '$2y$10$nesH/WHdMZ2yR/ONcdzsPuoPNBGnFrNV4tna0f04kOQWeTCxK/som', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:57:54', '2024-11-17 02:02:36'),
(380, 'Salsabilla', '-', '0123218360', NULL, '$2y$10$DYZCUBj.nJSpXtjEWluNzOPN6MooTKwbXIzlwoHdais8lrc/d9oxy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 01:58:54', '2024-11-17 02:02:44'),
(381, 'Satria Wibowo', '-', '3127051402', NULL, '$2y$10$dgY0Jl8I5T/IoncwWeo2rOUxjGJrH93SYys3kuplddIQoe5ziOR.e', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:00:18', '2024-11-17 02:02:48'),
(382, 'Sahira Nur Ramadhani', '-', '0091347671', NULL, '$2y$10$PECr3mRDkJIHUp/kxgS4TuPrCVkm9Ffml3EnEKWb9gx04qOTsXveC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:02:38', '2024-11-17 02:02:38'),
(383, 'Sakil', '-', '0102154711', NULL, '$2y$10$4p8tLQA7uR8FXI3EQKZ49.xer0mhhdQb74RGeM/qv7/IW4XbYq05S', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:02:40', '2024-11-17 02:02:40'),
(384, 'SALSA NAZWA AULIA', '-', '0097456867', NULL, '$2y$10$RrBiXhbA9q19TOjHV49jOugivuCX/tDjMGXZYx/lly4JnHC.Vxvni', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:02:42', '2024-11-17 02:02:42'),
(385, 'SATRIO BINTANG ADITIAN', '-', '0091517646', NULL, '$2y$10$XILrKj1VlM1MN4OuvOrcc.llISTMaGpe30VKJZoLmy5vdZn2M65Hi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:02:50', '2024-11-17 02:02:50'),
(386, 'STEVE ALEXANDER', '-', '0119801914', NULL, '$2y$10$4H2a1knyOdFH3gSZhFxxIe8dmPYKyrUm5gHOPOs4Og3r55I5Qxucq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:27:13', '2024-11-17 02:30:21'),
(387, 'SYAFIRA RAHMADHANI', '-', '3119326793', NULL, '$2y$10$Vi7qK89eiICyYR66EDkg2.1oSP8Z3h2mFKOx1ofnPbS.nWkVuWS5y', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:28:14', '2024-11-17 02:30:27'),
(388, 'Siti Nabila Assyfa', '-', '0108651591', NULL, '$2y$10$BDSl9ZdwNoinvFaQx0ghq.bkZTBLG5.tVSfS.KGtmVkKMfsR.K57C', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:14', '2024-11-17 02:30:14'),
(389, 'SITI RAHMA KESUMA', '-', '3102827638', NULL, '$2y$10$xmOCxLuxWDJjQhRar3N.6eoX33WKDi/XIFMkIWgU0zKQs52W8sN.C', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:16', '2024-11-17 02:30:16'),
(390, 'STEVANI FRANSISKA', '-', '0116095804', NULL, '$2y$10$f83z0ZxxpJP2ZHi3Uorh5eUwZmO.B282ZmFcwd7LHsDkIMGYIINSe', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:19', '2024-11-17 02:30:19'),
(391, 'Suci Istiqomah', '-', '0096717711', NULL, '$2y$10$L5RtIepnrU.LarXPSC.yK..anmdPVHIIWw4S8GGM20zokox4gMxpu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:23', '2024-11-17 02:30:23'),
(392, 'Suci Keyla Bastiar', '-', '0116836698', NULL, '$2y$10$cyE075p0jmRh9Por/vlSL.2ODvAQBfeIL6Fqi3HWp69quJOdbsKWu', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:25', '2024-11-17 02:30:25'),
(393, 'TIARA LESTARI', '-', '0098744951', NULL, '$2y$10$CZJzTTABFR6R4.GAaHuCOu3mvy9l1hjRR.ddr6azCCCf3U1.jlw9S', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:30:33', '2024-11-17 02:30:33'),
(394, 'Tri Budianto', '-', '0116552748', NULL, '$2y$10$R.L4r7JED.rJAzgm4vaSYe7rcxA3ejLyyiyr3y8F4yvbWVQxxADgq', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:32:34', '2024-11-17 02:39:10'),
(395, 'Tubagus Julian', '-', '0091815962', NULL, '$2y$10$OWtkR1eeSEb/MdqZk4lYkutgAp/3jtxu2.4uXAuJcoLJxV38jlYVy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:33:26', '2024-11-17 02:39:18'),
(396, 'VENIA AMELIA PUTRI', '-', '0122834576', NULL, '$2y$10$yiO8oyET6uLse3p0lamb8ea/G7eeNRrnKs6Q6n4tiPr/Jjj0GTYxS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:34:12', '2024-11-17 02:39:23'),
(397, 'Vicky Soldev', '-', '0129608402', NULL, '$2y$10$V51ow8XBQ/rohwv861O5AuTTkNe6uTk2jQLbxwNWlTrbdLglvFJCS', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:35:14', '2024-11-17 02:39:25'),
(398, 'Viola Amelia', '-', '0122600745', NULL, '$2y$10$JoO3I.48OSv81y0h0nt96uZEUIfbin/stAdqUXu2Zar7Hfa1vYxWW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:36:38', '2024-11-17 02:39:29'),
(399, 'VIOLA PAMELIA SILABAN', '-', '0082103944', NULL, '$2y$10$OOCNhWQfFFO4yR.DMVWKdO6/ZM5LIqWFGp/QozW.0St4GMrgoHpoy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:37:56', '2024-11-17 02:39:32'),
(400, 'TRIYA QURRATA AYUNN', '-', '0118699996', NULL, '$2y$10$UGuS0vzrrqVidRqgeTpzjOdka9mDP.jt7.OeNIRa3ewzpOseGamkm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:39:13', '2024-11-17 02:39:13'),
(401, 'Triyawati', '-', '0107810758', NULL, '$2y$10$M3DjTNMH1ZlHoxjTXb/YwOlctuf63fwW/mGGlVWlSlyzZaxrNBoA6', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:39:15', '2024-11-17 02:39:15'),
(402, 'Varissa Nayshila Alviani', '-', '0109354146', NULL, '$2y$10$9zRFv/LHWQajSLSgV7wkL.wYFgpGF5XFLSDPB9gnF3w/Qd/hexZcW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:39:20', '2024-11-17 02:39:20'),
(403, 'VINO AGUSTIAN', '-', '0113583792', NULL, '$2y$10$6YZEtHRA9OakU20z/KUz3e/W7mkHc5tD6BqdYNxJIN9BPUnBN8/pm', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 02:39:27', '2024-11-17 02:39:27'),
(404, 'Wahyu Mujijat', '-', '0115436750', NULL, '$2y$10$wETQABbZsPwiq1fq34aVbu/wDI1kTouZK7Riv5NvF0TNYTJOPXrau', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:05:05', '2024-11-17 03:05:05'),
(405, 'WIDARA AMANDA PUTRI', '-', '0126295605', NULL, '$2y$10$OkJ/mM5IB4PLs2iZetg1Xu.Ax4O4Iv6dZUsPsZb0JR9CE4yAeoGCi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:05:49', '2024-11-17 03:05:49'),
(406, 'Yerenifa Nictan Tabitha Pakpahan', '-', '0121444034', NULL, '$2y$10$FDfcZSkOYxwlth/FnOtDkeZqEPMnfRCosX4qt1qyLBSXxf1y8NOvy', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:06:42', '2024-11-17 03:06:42'),
(407, 'Yoga Dwi Nopriyatna', '-', '0119461440', NULL, '$2y$10$VqprAn7pPvxH8HjSCL0MA.jPAH2Lyq06ILryGkpMeNVvN4UL9uUvi', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:07:43', '2024-11-17 03:07:43'),
(408, 'Zapira bahya Tun Nisa', '-', '0121606658', NULL, '$2y$10$//w949Cw9aMarWeK2lM0.ua3dBavtQA4iT9HNikuJrKtE4HhaCqhO', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:08:36', '2024-11-17 03:08:36'),
(409, 'Zhavira Dwi Kurnia', '-', '0114951099', NULL, '$2y$10$aXvE0aw1CnKbFi5CI57zSe7ZjjgdlBySPY3FEKVw5kK5xsINtehhC', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:09:29', '2024-11-17 03:09:29'),
(410, 'Vira Cahyati', '-', '0106551039', NULL, '$2y$10$tQFGFiJNhfSnDZlsJdKu/u0COd9KLEukUGepm2JZfjXpkdEBqRBYG', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:11:02', '2024-11-17 03:11:02'),
(411, 'WENING TYAS CAHYANING SANI', '-', '0118333786', NULL, '$2y$10$SjKg30XR0HvmcTkuJQVD8eWG5TGUQ0UDLtsLRZpjcMAyBLUoX1sim', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:11:04', '2024-11-17 03:11:04'),
(412, 'Wika Aisya', '-', '0117960703', NULL, '$2y$10$Y9XRD2855BKZb92OWqSlHOu0bO8UUrsg5GlzgPNEEljPo2R/hyvW2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:11:08', '2024-11-17 03:11:08'),
(413, 'YAFI LUKMAN NUL HAKIM', '-', '0111740598', NULL, '$2y$10$Q5Gd4woStdcRa31E7ZF8peKtnqB8pr4e74Wgzpx.Qd91vj7oAYVgW', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:11:10', '2024-11-17 03:11:10'),
(414, 'Yasmine Fachira Tsarwa', '-', '0119442608', NULL, '$2y$10$YymqXEpP9KoPQy3LVbk0zuaxQXgOigzcu4PZOoVEKrwPGHuSrZDJ2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:11:14', '2024-11-17 03:11:14'),
(415, 'Yulia Rahmawati Dewi', '-', '0108579492', NULL, '$2y$10$5FmwXXpgtgVEfDA/1y84Tugh0aiALG/c/qKGNmYZFUf6iZGamUnL.', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:12:08', '2024-11-17 03:12:08'),
(416, 'Zahra Saskia Putri', '-', '0096940219', NULL, '$2y$10$wycQhZs1/VJ9cRaKNYRUaOCBn58dDWUwwLmUswTJ6SlS7hasxfoi2', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:12:13', '2024-11-17 03:12:13'),
(417, 'ZASKIA APRILIA', '-', '0117849499', NULL, '$2y$10$VszYKGSnsj7teUDtJh2FZuhTv4qdj76bY8Dpgb60ci1nYGgKfycby', 'siswa', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-11-17 03:12:16', '2024-11-17 03:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `user_forgot_passwords`
--

CREATE TABLE `user_forgot_passwords` (
  `id` int(11) NOT NULL,
  `email` varchar(250) DEFAULT NULL,
  `token` varchar(10) DEFAULT NULL,
  `start_active` datetime DEFAULT NULL,
  `end_active` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mata_pelajaran_predikat`
--
ALTER TABLE `mata_pelajaran_predikat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_applications`
--
ALTER TABLE `role_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_users`
--
ALTER TABLE `store_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_forgot_passwords`
--
ALTER TABLE `user_forgot_passwords`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `absensi`
--
ALTER TABLE `absensi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=485;

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `jadwal_pelajaran`
--
ALTER TABLE `jadwal_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `mata_pelajaran`
--
ALTER TABLE `mata_pelajaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `mata_pelajaran_predikat`
--
ALTER TABLE `mata_pelajaran_predikat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=719;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_applications`
--
ALTER TABLE `role_applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=562;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `store_users`
--
ALTER TABLE `store_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=405;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=420;

--
-- AUTO_INCREMENT for table `user_forgot_passwords`
--
ALTER TABLE `user_forgot_passwords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `menus` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
