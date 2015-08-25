-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2015 at 04:48 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hpo-hris`
--

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
`id` int(10) unsigned NOT NULL,
  `department_code` varchar(10) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_code`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'WebDev', 'Web Development', 'Web Developers, Software Devs, Mobile Devs', '2015-08-05 06:31:05', '0000-00-00 00:00:00'),
(2, 'ADMIN', 'Administrator', 'Admin office staffs', '2015-08-08 07:19:39', '0000-00-00 00:00:00'),
(3, 'SysAd', 'System Administrator', 'Maintains technical problems', '2015-08-08 00:07:38', '2015-08-08 00:07:38'),
(4, 'Sales&Mar', 'Sales and Marketing', '', '2015-08-08 06:15:58', '2015-08-08 06:15:58'),
(5, 'QA', 'Quality Assurance', '', '2015-08-08 06:17:12', '2015-08-08 06:17:12'),
(6, 'ENGAGEIQ', 'Engage IQ', 'Sample ', '2015-08-15 07:14:27', '2015-08-14 23:14:27'),
(7, 'Creative', 'Creative', '', '2015-08-14 23:11:01', '2015-08-14 23:11:01'),
(8, 'PMO', 'PMO', '', '2015-08-14 23:13:05', '2015-08-14 23:13:05'),
(9, 'IM', 'IM', '', '2015-08-14 23:15:54', '2015-08-14 23:15:54');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`id` int(10) unsigned NOT NULL,
  `employee_id` int(11) unsigned NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `middle_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) NOT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `department_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_id`, `first_name`, `middle_name`, `last_name`, `status`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 802005, 'Leonardo Jr.', 'Alcantara', 'Galos', '1', 3, '2015-08-15 07:09:13', '2015-08-14 23:09:13'),
(2, 805067, 'Romeo Jr.', 'Ibañez', 'Mangaya-ay', '1', 1, '2015-08-14 17:56:56', '2015-08-14 17:56:56'),
(3, 810079, 'Ali ', 'Calderon', 'Mofan ', '1', 3, '2015-08-15 07:08:50', '2015-08-14 23:08:50'),
(4, 410001, 'Juan Paulo', 'Santos ', 'Saravia', '1', 4, '2015-08-15 07:08:25', '2015-08-14 23:08:25'),
(5, 506001, 'Gene Voltaire', 'Acuesta', 'Dequito', '1', 1, '2015-08-14 17:56:56', '2015-08-14 17:56:56'),
(6, 702003, 'Ares', 'Lacap', 'Cabahug', '1', 7, '2015-08-15 07:11:35', '2015-08-14 23:11:35'),
(7, 706009, 'Roque Jay', 'Lampios', 'Maneja', '1', 7, '2015-08-15 07:11:23', '2015-08-14 23:11:23'),
(8, 710026, 'Enrico Rafael', 'De Jesus', 'Macaraig', '1', 7, '2015-08-15 07:12:40', '2015-08-14 23:12:40'),
(9, 801002, 'Rea May', 'Apita', 'Fuentes', '1', 9, '2015-08-15 07:16:26', '2015-08-14 23:16:26'),
(10, 801001, 'Daniel', 'Intong', 'Revil', '1', 7, '2015-08-15 07:11:12', '2015-08-14 23:11:12'),
(11, 806048, 'Dennis', 'Semilla', 'Lucero', '1', 2, '2015-08-15 07:09:29', '2015-08-14 23:09:29'),
(12, 811086, 'Queency', 'Panisal', 'Alfante', '1', 9, '2015-08-15 07:16:37', '2015-08-14 23:16:37'),
(13, 904061, 'Elaine Ingrid', 'Neri', 'Manlangit', '1', 2, '2015-08-15 07:09:58', '2015-08-14 23:09:58'),
(14, 911131, 'Aaron Paul', 'Tito', 'Duhaylungsod', '1', 9, '2015-08-15 07:18:19', '2015-08-14 23:18:19'),
(15, 1006041, 'April Rose ', 'Relampagos', 'Alforque', '1', 2, '2015-08-15 07:09:43', '2015-08-14 23:09:43'),
(16, 1010062, 'Rian Ree', 'Patron', 'Barrientos', '1', 1, '2015-08-14 17:56:56', '2015-08-14 17:56:56'),
(17, 1101010, 'Jose Bernard', 'Pond', 'Sevilla', '1', 9, '2015-08-15 07:17:20', '2015-08-14 23:17:20'),
(18, 1104022, 'Dann Robert', 'Tan', 'Yu', '1', 6, '2015-08-15 07:14:17', '2015-08-14 23:14:17'),
(19, 1108042, 'John Cesar', 'Enriquez', 'Manlangit', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(20, 1109044, 'Anna Liza', 'Doro-on', 'Masangkay', '1', 8, '2015-08-15 07:13:32', '2015-08-14 23:13:32'),
(21, 1103018, 'Montgomery', 'Cabillan', 'Magbanua', '1', 6, '2015-08-15 07:14:52', '2015-08-14 23:14:52'),
(22, 1203008, 'Jhecyl Mae', 'Arias', 'Cuevas', '1', 9, '2015-08-15 07:17:52', '2015-08-14 23:17:52'),
(23, 1203014, 'Craig John', 'Castañeda', 'Neniel', '1', 9, '2015-08-15 07:16:54', '2015-08-14 23:16:54'),
(24, 1203020, 'Carlo Franco', 'Bayani', 'Lozano', '1', 5, '2015-08-15 07:07:35', '2015-08-14 23:07:35'),
(25, 1203026, 'Jessa Mae', 'Calamba', 'Deloy', '1', 6, '2015-08-15 07:15:37', '2015-08-14 23:15:37'),
(26, 1203029, 'Ma. Louiselle', 'Digamon', 'Jose', '1', 9, '2015-08-15 07:16:10', '2015-08-14 23:16:10'),
(27, 1203035, 'Brylle', 'Duco', 'Seraspe', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(28, 1203036, 'Mark', 'Billones', 'Tacatani', '1', 8, '2015-08-15 07:13:56', '2015-08-14 23:13:56'),
(29, 1203042, 'Jayson', 'Miparanum', 'Aso', '1', 9, '2015-08-15 07:16:46', '2015-08-14 23:16:46'),
(30, 1203049, 'Ariel', 'Cacanog', 'Magbanua', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(31, 1203050, 'Reu Salvy', 'Sagmit', 'Delima', '1', 9, '2015-08-15 07:18:07', '2015-08-14 23:18:07'),
(32, 1203056, 'Michael Angelo', 'Giducos', 'Leones', '1', 2, '2015-08-15 07:10:29', '2015-08-14 23:10:29'),
(33, 1203064, 'Jake', 'Velasco', 'Duldulao', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(34, 1203069, 'Reynand', 'Dulay', 'Collado', '1', 9, '2015-08-15 07:18:34', '2015-08-14 23:18:34'),
(35, 1203072, 'Ivy Frances', 'Sarsalejo', 'Labitan', '1', 9, '2015-08-15 07:17:09', '2015-08-14 23:17:09'),
(36, 1203080, 'Donna Mae', 'Quitong', 'Tabuno', '1', 3, '2015-08-15 07:08:59', '2015-08-14 23:08:59'),
(37, 1203082, 'Olive', 'Nazareno', 'Sumampong', '1', 2, '2015-08-15 07:10:12', '2015-08-14 23:10:12'),
(38, 1203085, 'Daniel', 'Rubiato', 'Laurel', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(39, 1203089, 'Chiara', 'Bangoy', 'Patrimonio', '1', 8, '2015-08-15 07:13:17', '2015-08-14 23:13:17'),
(40, 1203090, 'Melvin Rey', 'Antiquin', 'Basco', '1', 7, '2015-08-15 07:11:51', '2015-08-14 23:11:51'),
(41, 1203091, 'Dexter Ken', 'Nerosa', 'Candia', '1', 1, '2015-08-14 17:56:57', '2015-08-14 17:56:57'),
(42, 1203094, 'Rika Joahnah', 'Fiel', 'Sison', '1', 8, '2015-08-15 07:14:06', '2015-08-14 23:14:06'),
(43, 1203107, 'Jayvee', 'Rizon', 'Sumande', '1', 1, '2015-08-14 17:56:58', '2015-08-14 17:56:58'),
(44, 1203110, 'Johneil', 'Celestial', 'Quijano', '1', 1, '2015-08-14 17:56:58', '2015-08-14 17:56:58'),
(45, 1203120, 'Julius Ryan', 'Arboleda', 'Paches', '1', 1, '2015-08-14 17:56:58', '2015-08-14 17:56:58'),
(46, 1203126, 'Ma. Luisa Andrea', 'Quillo', 'Coloso', '1', 6, '2015-08-15 07:15:23', '2015-08-14 23:15:23'),
(47, 140502, 'Nepthaly', 'Caro', 'Talavera', '1', 2, '2015-08-19 04:51:13', '2015-08-18 20:51:13'),
(48, 140702, 'Hazel Love', 'Coloma', 'Rosales', '1', 8, '2015-08-15 07:13:43', '2015-08-14 23:13:43'),
(49, 140902, 'Arriz', 'Divinagracia', 'San Juan', '1', 7, '2015-08-15 07:12:15', '2015-08-14 23:12:15'),
(50, 140903, 'Edward John', 'Paglinawan', 'Diola', '1', 7, '2015-08-15 07:12:02', '2015-08-14 23:12:02'),
(51, 140904, 'Gerard Albert', 'Pimentel', 'Cañada', '1', 6, '2015-08-15 07:15:07', '2015-08-14 23:15:07'),
(52, 140905, 'Patrick Angelo', 'Galve', 'Cameguing', '1', 1, '2015-08-14 17:56:58', '2015-08-14 17:56:58'),
(66, 141002, 'Karla', NULL, 'Librero', '1', 1, '2015-08-16 19:39:48', '2015-08-16 19:39:48'),
(67, 141103, 'Dave Francis', 'Mansilita', 'Cancio', '1', 9, '2015-08-17 04:54:33', '2015-08-16 20:54:33'),
(68, 150102, 'Michael Angelo', 'Omero', 'Tarongoy', '1', 1, '2015-08-16 19:39:48', '2015-08-16 19:39:48'),
(69, 150103, 'Edward Jonathan ', 'Opinion', 'Potot', '1', 8, '2015-08-17 04:55:19', '2015-08-16 20:55:19'),
(70, 150401, 'Marwil', 'Yder', 'Burton', '1', 6, '2015-08-17 04:55:51', '2015-08-16 20:55:51'),
(71, 150403, 'Norgen', 'Balo', 'Tapel', '1', 9, '2015-08-17 04:56:18', '2015-08-16 20:56:18'),
(72, 150501, 'Javin Jet', 'Agustin', 'Tevar', '1', 4, '2015-08-17 04:56:42', '2015-08-16 20:56:42'),
(73, 150502, 'Juan Basilio', 'Teves', 'Espinoza', '1', 9, '2015-08-17 04:57:05', '2015-08-16 20:57:05'),
(74, 150503, 'Xander John', 'Mina', 'Dacyon', '1', 1, '2015-08-16 19:39:48', '2015-08-16 19:39:48'),
(75, 150506, 'John Jason', 'Marquez', 'Baladiang', '1', 1, '2015-08-16 19:39:48', '2015-08-16 19:39:48'),
(76, 150801, 'Vincent Jake', NULL, 'Calag', '1', 1, '2015-08-16 19:39:48', '2015-08-16 19:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `employee_dtr`
--

CREATE TABLE IF NOT EXISTS `employee_dtr` (
`id` int(10) unsigned NOT NULL,
  `employee_id` int(10) unsigned NOT NULL,
  `start_of_duty` datetime DEFAULT NULL,
  `first_out` datetime DEFAULT NULL,
  `first_in` datetime DEFAULT NULL,
  `second_out` datetime DEFAULT NULL,
  `second_in` datetime DEFAULT NULL,
  `third_out` datetime DEFAULT NULL,
  `third_in` datetime DEFAULT NULL,
  `end_of_duty` datetime DEFAULT NULL,
  `undertime` time NOT NULL DEFAULT '00:00:00',
  `late` time NOT NULL DEFAULT '00:00:00',
  `overbreak` time NOT NULL DEFAULT '00:00:00',
  `remarks` varchar(25) DEFAULT NULL,
  `shift_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5294 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee_shifts`
--

CREATE TABLE IF NOT EXISTS `employee_shifts` (
`id` int(10) unsigned NOT NULL,
  `employee_id` int(11) unsigned NOT NULL,
  `shift_id` int(11) unsigned NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `employee_shifts`
--

INSERT INTO `employee_shifts` (`id`, `employee_id`, `shift_id`, `date_from`, `date_to`, `created_at`, `updated_at`) VALUES
(1, 1, 7, '2015-07-01', '2015-12-31', '2015-08-15 11:29:46', '0000-00-00 00:00:00'),
(2, 3, 9, '2015-07-01', '2015-12-31', '2015-08-15 11:31:25', '0000-00-00 00:00:00'),
(3, 4, 21, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(4, 5, 9, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(5, 6, 9, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(6, 7, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(7, 8, 8, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(8, 9, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(9, 10, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(10, 11, 9, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(11, 12, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(12, 13, 18, '2015-07-01', '2015-12-31', '2015-08-18 06:18:34', '2015-08-17 22:18:34'),
(13, 20, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(14, 21, 19, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(15, 22, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(16, 23, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(17, 24, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(18, 25, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(19, 26, 3, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(20, 27, 15, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(21, 28, 14, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(22, 29, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(23, 30, 8, '2015-07-01', '2015-12-31', '2015-08-17 01:43:51', '2015-08-16 17:43:51'),
(24, 31, 4, '2015-07-01', '2015-08-06', '2015-08-20 05:53:41', '2015-08-19 21:53:41'),
(25, 32, 9, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:51'),
(26, 33, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(27, 34, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(28, 35, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(29, 36, 18, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(30, 37, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(31, 38, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(32, 39, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(33, 40, 25, '2015-07-01', '2015-12-31', '2015-08-18 06:15:30', '2015-08-17 22:15:30'),
(34, 41, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(35, 42, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(36, 43, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(37, 44, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(38, 45, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(39, 46, 9, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(40, 47, 18, '2015-07-01', '2015-12-31', '2015-08-18 05:27:49', '2015-08-17 21:27:49'),
(41, 48, 4, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(42, 49, 25, '2015-07-01', '2015-12-31', '2015-08-18 06:22:14', '2015-08-17 22:22:14'),
(43, 51, 8, '2015-07-01', '2015-08-10', '2015-08-20 06:00:13', '2015-08-19 22:00:13'),
(44, 52, 10, '2015-07-01', '2015-12-31', '2015-08-17 01:43:52', '2015-08-16 17:43:52'),
(45, 66, 8, '2015-07-01', '2015-12-31', '2015-08-17 06:06:47', '0000-00-00 00:00:00'),
(46, 67, 4, '2015-07-01', '2015-08-03', '2015-08-20 05:52:10', '2015-08-19 21:52:10'),
(47, 68, 14, '2015-07-01', '2015-12-31', '2015-08-17 06:08:23', '0000-00-00 00:00:00'),
(48, 69, 10, '2015-07-01', '2015-12-31', '2015-08-17 06:08:54', '0000-00-00 00:00:00'),
(49, 70, 8, '2015-07-01', '2015-12-31', '2015-08-17 06:09:20', '0000-00-00 00:00:00'),
(50, 72, 4, '2015-07-01', '2015-12-31', '2015-08-17 06:10:21', '0000-00-00 00:00:00'),
(51, 73, 4, '2015-07-01', '2015-12-31', '2015-08-17 06:10:48', '0000-00-00 00:00:00'),
(52, 74, 19, '2015-07-01', '2015-12-31', '2015-08-17 06:11:32', '0000-00-00 00:00:00'),
(53, 71, 24, '2015-07-01', '2015-12-31', '2015-08-17 06:13:11', '0000-00-00 00:00:00'),
(54, 75, 10, '2015-07-01', '2015-12-31', '2015-08-17 06:13:53', '0000-00-00 00:00:00'),
(55, 76, 4, '2015-07-01', '2015-12-31', '2015-08-17 06:14:15', '0000-00-00 00:00:00'),
(56, 14, 3, '2015-07-01', '2015-12-31', '2015-08-18 04:38:56', '0000-00-00 00:00:00'),
(57, 15, 10, '2015-07-01', '2015-12-31', '2015-08-18 04:39:44', '0000-00-00 00:00:00'),
(58, 16, 8, '2015-07-01', '2015-12-31', '2015-08-18 04:40:44', '0000-00-00 00:00:00'),
(59, 17, 3, '2015-07-01', '2015-12-31', '2015-08-18 04:41:24', '0000-00-00 00:00:00'),
(60, 18, 19, '2015-07-01', '2015-12-31', '2015-08-18 04:42:08', '0000-00-00 00:00:00'),
(61, 19, 4, '2015-07-01', '2015-12-31', '2015-08-18 04:43:04', '0000-00-00 00:00:00'),
(62, 50, 25, '2015-07-01', '2015-12-31', '2015-08-18 06:10:25', '0000-00-00 00:00:00'),
(74, 66, 26, '2015-07-01', '2015-12-31', '2015-08-20 02:20:03', '0000-00-00 00:00:00'),
(75, 66, 27, '2015-07-01', '2015-12-31', '2015-08-20 02:24:53', '0000-00-00 00:00:00'),
(85, 67, 8, '2015-08-04', '2015-08-28', '2015-08-20 05:52:54', '0000-00-00 00:00:00'),
(86, 31, 8, '2015-08-07', '2015-12-07', '2015-08-20 06:04:42', '2015-08-19 22:04:42'),
(87, 51, 11, '2015-08-11', '2015-12-31', '2015-08-20 06:00:35', '0000-00-00 00:00:00'),
(88, 31, 4, '2015-08-08', '2015-12-31', '2015-08-20 06:05:25', '0000-00-00 00:00:00'),
(89, 66, 19, '2015-08-07', '2015-08-07', '2015-08-20 06:21:49', '0000-00-00 00:00:00'),
(90, 35, 19, '2015-08-14', '2015-08-14', '2015-08-20 06:24:22', '0000-00-00 00:00:00'),
(91, 30, 29, '2015-08-08', '2015-08-08', '2015-08-20 06:38:24', '0000-00-00 00:00:00'),
(92, 30, 30, '2015-08-10', '2015-08-10', '2015-08-20 06:40:04', '0000-00-00 00:00:00'),
(93, 21, 28, '2015-08-08', '2015-08-08', '2015-08-20 06:42:59', '0000-00-00 00:00:00'),
(94, 7, 14, '2015-08-12', '2015-12-31', '2015-08-20 06:44:06', '0000-00-00 00:00:00'),
(95, 19, 14, '2015-08-12', '2015-12-31', '2015-08-20 06:45:34', '0000-00-00 00:00:00'),
(96, 68, 14, '2015-08-03', '2015-08-31', '2015-08-20 07:17:29', '0000-00-00 00:00:00'),
(97, 39, 32, '2015-08-12', '2015-08-12', '2015-08-20 07:22:37', '0000-00-00 00:00:00'),
(98, 39, 12, '2015-08-13', '2015-08-31', '2015-08-20 07:23:39', '0000-00-00 00:00:00'),
(99, 74, 8, '2015-08-05', '2015-08-08', '2015-08-20 07:28:49', '0000-00-00 00:00:00'),
(100, 74, 19, '2015-08-10', '2015-09-01', '2015-08-20 07:29:24', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employee_shift_days`
--

CREATE TABLE IF NOT EXISTS `employee_shift_days` (
`id` int(10) unsigned NOT NULL,
  `employee_shift_id` int(10) unsigned NOT NULL,
  `day` enum('mon','tue','wed','thu','fri','sat','sun') NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=636 ;

--
-- Dumping data for table `employee_shift_days`
--

INSERT INTO `employee_shift_days` (`id`, `employee_shift_id`, `day`) VALUES
(36, 41, 'mon'),
(37, 41, 'tue'),
(38, 41, 'wed'),
(39, 41, 'thu'),
(40, 41, 'fri'),
(41, 62, 'mon'),
(42, 62, 'tue'),
(43, 62, 'wed'),
(44, 62, 'thu'),
(45, 62, 'fri'),
(60, 59, 'mon'),
(61, 59, 'tue'),
(62, 59, 'wed'),
(63, 59, 'thu'),
(64, 59, 'fri'),
(65, 59, 'sat'),
(192, 44, 'mon'),
(193, 44, 'tue'),
(194, 44, 'wed'),
(195, 44, 'thu'),
(196, 44, 'fri'),
(210, 2, 'mon'),
(211, 2, 'tue'),
(212, 2, 'wed'),
(213, 2, 'thu'),
(214, 2, 'fri'),
(233, 21, 'mon'),
(234, 21, 'tue'),
(235, 21, 'wed'),
(236, 21, 'thu'),
(237, 21, 'fri'),
(238, 33, 'mon'),
(239, 33, 'tue'),
(240, 33, 'wed'),
(241, 33, 'thu'),
(242, 33, 'fri'),
(258, 45, 'tue'),
(259, 45, 'wed'),
(260, 45, 'thu'),
(261, 45, 'fri'),
(263, 74, 'sat'),
(264, 75, 'mon'),
(298, 40, 'mon'),
(299, 40, 'tue'),
(300, 40, 'wed'),
(301, 40, 'thu'),
(302, 40, 'fri'),
(303, 10, 'mon'),
(304, 10, 'tue'),
(305, 10, 'wed'),
(306, 10, 'thu'),
(307, 10, 'fri'),
(308, 11, 'mon'),
(309, 11, 'tue'),
(310, 11, 'wed'),
(311, 11, 'thu'),
(312, 11, 'fri'),
(313, 57, 'mon'),
(314, 57, 'tue'),
(315, 57, 'wed'),
(316, 57, 'thu'),
(317, 57, 'fri'),
(318, 22, 'mon'),
(319, 22, 'tue'),
(320, 22, 'wed'),
(321, 22, 'thu'),
(322, 22, 'fri'),
(323, 54, 'mon'),
(324, 54, 'tue'),
(325, 54, 'wed'),
(326, 54, 'thu'),
(327, 54, 'fri'),
(328, 58, 'mon'),
(329, 58, 'tue'),
(330, 58, 'wed'),
(331, 58, 'thu'),
(332, 58, 'fri'),
(333, 5, 'mon'),
(334, 5, 'tue'),
(335, 5, 'wed'),
(336, 5, 'thu'),
(337, 5, 'fri'),
(338, 34, 'mon'),
(339, 34, 'tue'),
(340, 34, 'wed'),
(341, 34, 'thu'),
(342, 34, 'fri'),
(343, 27, 'mon'),
(344, 27, 'tue'),
(345, 27, 'wed'),
(346, 27, 'thu'),
(347, 27, 'fri'),
(348, 15, 'mon'),
(349, 15, 'tue'),
(350, 15, 'wed'),
(351, 15, 'thu'),
(352, 15, 'fri'),
(353, 46, 'mon'),
(354, 46, 'tue'),
(355, 46, 'wed'),
(356, 46, 'thu'),
(357, 46, 'fri'),
(358, 85, 'mon'),
(359, 85, 'tue'),
(360, 85, 'wed'),
(361, 85, 'thu'),
(362, 85, 'fri'),
(363, 24, 'mon'),
(364, 24, 'tue'),
(365, 24, 'wed'),
(366, 24, 'thu'),
(367, 24, 'fri'),
(373, 18, 'mon'),
(374, 18, 'tue'),
(375, 18, 'wed'),
(376, 18, 'thu'),
(377, 18, 'fri'),
(378, 4, 'mon'),
(379, 4, 'tue'),
(380, 4, 'wed'),
(381, 4, 'thu'),
(382, 4, 'fri'),
(383, 56, 'mon'),
(384, 56, 'tue'),
(385, 56, 'wed'),
(386, 56, 'thu'),
(387, 56, 'fri'),
(388, 26, 'mon'),
(389, 26, 'tue'),
(390, 26, 'wed'),
(391, 26, 'thu'),
(392, 26, 'fri'),
(393, 48, 'mon'),
(394, 48, 'tue'),
(395, 48, 'wed'),
(396, 48, 'thu'),
(397, 48, 'fri'),
(398, 8, 'mon'),
(399, 8, 'tue'),
(400, 8, 'wed'),
(401, 8, 'thu'),
(402, 8, 'fri'),
(403, 1, 'mon'),
(404, 1, 'tue'),
(405, 1, 'wed'),
(406, 1, 'thu'),
(407, 1, 'fri'),
(408, 43, 'mon'),
(409, 43, 'tue'),
(410, 43, 'wed'),
(411, 43, 'thu'),
(412, 43, 'fri'),
(413, 87, 'mon'),
(414, 87, 'tue'),
(415, 87, 'wed'),
(416, 87, 'thu'),
(417, 87, 'fri'),
(418, 86, 'mon'),
(419, 86, 'tue'),
(420, 86, 'wed'),
(421, 86, 'thu'),
(422, 86, 'fri'),
(423, 88, 'mon'),
(424, 88, 'tue'),
(425, 88, 'wed'),
(426, 88, 'thu'),
(427, 88, 'fri'),
(428, 50, 'mon'),
(429, 50, 'tue'),
(430, 50, 'wed'),
(431, 50, 'thu'),
(432, 50, 'fri'),
(433, 19, 'mon'),
(434, 19, 'tue'),
(435, 19, 'wed'),
(436, 19, 'thu'),
(437, 19, 'fri'),
(438, 51, 'mon'),
(439, 51, 'tue'),
(440, 51, 'wed'),
(441, 51, 'thu'),
(442, 51, 'fri'),
(443, 89, 'mon'),
(444, 89, 'tue'),
(445, 89, 'wed'),
(446, 89, 'thu'),
(447, 89, 'fri'),
(448, 28, 'mon'),
(449, 28, 'tue'),
(450, 28, 'wed'),
(451, 28, 'thu'),
(452, 28, 'fri'),
(453, 90, 'mon'),
(454, 90, 'tue'),
(455, 90, 'wed'),
(456, 90, 'thu'),
(457, 90, 'fri'),
(458, 31, 'mon'),
(459, 31, 'tue'),
(460, 31, 'wed'),
(461, 31, 'thu'),
(462, 31, 'fri'),
(463, 25, 'mon'),
(464, 25, 'tue'),
(465, 25, 'wed'),
(466, 25, 'thu'),
(467, 25, 'fri'),
(468, 17, 'mon'),
(469, 17, 'tue'),
(470, 17, 'wed'),
(471, 17, 'thu'),
(472, 17, 'fri'),
(473, 39, 'mon'),
(474, 39, 'tue'),
(475, 39, 'wed'),
(476, 39, 'thu'),
(477, 39, 'fri'),
(478, 7, 'mon'),
(479, 7, 'tue'),
(480, 7, 'wed'),
(481, 7, 'thu'),
(482, 7, 'fri'),
(483, 23, 'mon'),
(484, 23, 'tue'),
(485, 23, 'wed'),
(486, 23, 'thu'),
(487, 23, 'fri'),
(488, 91, 'sat'),
(489, 92, 'mon'),
(490, 14, 'mon'),
(491, 14, 'tue'),
(492, 14, 'wed'),
(493, 14, 'thu'),
(494, 14, 'fri'),
(495, 93, 'sat'),
(496, 6, 'mon'),
(497, 6, 'tue'),
(498, 6, 'wed'),
(499, 6, 'thu'),
(500, 6, 'fri'),
(501, 94, 'mon'),
(502, 94, 'tue'),
(503, 94, 'wed'),
(504, 94, 'thu'),
(505, 94, 'fri'),
(506, 12, 'mon'),
(507, 12, 'tue'),
(508, 12, 'wed'),
(509, 12, 'thu'),
(510, 12, 'fri'),
(511, 61, 'mon'),
(512, 61, 'tue'),
(513, 61, 'wed'),
(514, 61, 'thu'),
(515, 61, 'fri'),
(516, 95, 'mon'),
(517, 95, 'tue'),
(518, 95, 'wed'),
(519, 95, 'thu'),
(520, 95, 'fri'),
(521, 49, 'mon'),
(522, 49, 'tue'),
(523, 49, 'wed'),
(524, 49, 'thu'),
(525, 49, 'fri'),
(526, 13, 'mon'),
(527, 13, 'tue'),
(528, 13, 'wed'),
(529, 13, 'thu'),
(530, 13, 'fri'),
(531, 47, 'mon'),
(532, 47, 'tue'),
(533, 47, 'wed'),
(534, 47, 'thu'),
(535, 47, 'fri'),
(536, 96, 'mon'),
(537, 96, 'tue'),
(538, 96, 'wed'),
(539, 96, 'thu'),
(540, 96, 'fri'),
(541, 16, 'mon'),
(542, 16, 'tue'),
(543, 16, 'wed'),
(544, 16, 'thu'),
(545, 16, 'fri'),
(546, 53, 'mon'),
(547, 53, 'tue'),
(548, 53, 'wed'),
(549, 53, 'thu'),
(550, 53, 'fri'),
(551, 38, 'mon'),
(552, 38, 'tue'),
(553, 38, 'wed'),
(554, 38, 'thu'),
(555, 38, 'fri'),
(556, 32, 'mon'),
(557, 32, 'tue'),
(558, 32, 'wed'),
(559, 32, 'thu'),
(560, 32, 'fri'),
(561, 97, 'wed'),
(562, 98, 'mon'),
(563, 98, 'tue'),
(564, 98, 'wed'),
(565, 98, 'thu'),
(566, 98, 'fri'),
(567, 37, 'mon'),
(568, 37, 'tue'),
(569, 37, 'wed'),
(570, 37, 'thu'),
(571, 37, 'fri'),
(572, 9, 'mon'),
(573, 9, 'tue'),
(574, 9, 'wed'),
(575, 9, 'thu'),
(576, 9, 'fri'),
(577, 42, 'mon'),
(578, 42, 'tue'),
(579, 42, 'wed'),
(580, 42, 'thu'),
(581, 42, 'fri'),
(582, 3, 'mon'),
(583, 3, 'tue'),
(584, 3, 'wed'),
(585, 3, 'thu'),
(586, 3, 'fri'),
(587, 20, 'mon'),
(588, 20, 'tue'),
(589, 20, 'wed'),
(590, 20, 'thu'),
(591, 20, 'fri'),
(592, 35, 'mon'),
(593, 35, 'tue'),
(594, 35, 'wed'),
(595, 35, 'thu'),
(596, 35, 'fri'),
(597, 30, 'mon'),
(598, 30, 'tue'),
(599, 30, 'wed'),
(600, 30, 'thu'),
(601, 30, 'fri'),
(602, 36, 'mon'),
(603, 36, 'tue'),
(604, 36, 'wed'),
(605, 36, 'thu'),
(606, 36, 'fri'),
(607, 29, 'mon'),
(608, 29, 'tue'),
(609, 29, 'wed'),
(610, 29, 'thu'),
(611, 29, 'fri'),
(612, 52, 'mon'),
(613, 52, 'tue'),
(614, 52, 'wed'),
(615, 52, 'thu'),
(616, 52, 'fri'),
(617, 99, 'wed'),
(618, 99, 'thu'),
(619, 99, 'fri'),
(620, 99, 'sat'),
(621, 100, 'mon'),
(622, 100, 'tue'),
(623, 100, 'wed'),
(624, 100, 'thu'),
(625, 100, 'fri'),
(626, 60, 'mon'),
(627, 60, 'tue'),
(628, 60, 'wed'),
(629, 60, 'thu'),
(630, 60, 'fri'),
(631, 55, 'mon'),
(632, 55, 'tue'),
(633, 55, 'wed'),
(634, 55, 'thu'),
(635, 55, 'fri');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE IF NOT EXISTS `shifts` (
`id` int(10) unsigned NOT NULL,
  `description` varchar(255) NOT NULL,
  `shift_from` time NOT NULL,
  `shift_to` time NOT NULL,
  `working_hours` time NOT NULL,
  `break` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `description`, `shift_from`, `shift_to`, `working_hours`, `break`, `created_at`, `updated_at`) VALUES
(3, 'Shift 1', '09:00:00', '17:00:00', '08:00:00', '00:30:00', '2015-08-15 02:55:35', '0000-00-00 00:00:00'),
(4, 'Shift 2', '08:30:00', '17:30:00', '09:00:00', '01:30:00', '2015-08-15 02:55:35', '0000-00-00 00:00:00'),
(5, 'Shift 3', '22:00:00', '06:00:00', '08:00:00', '00:30:00', '2015-08-15 02:57:34', '0000-00-00 00:00:00'),
(6, 'Shift 4', '23:00:00', '08:00:00', '09:00:00', '01:30:00', '2015-08-18 06:09:11', '0000-00-00 00:00:00'),
(7, 'Shift 5', '14:00:00', '22:00:00', '08:00:00', '00:30:00', '2015-08-15 02:58:09', '0000-00-00 00:00:00'),
(8, 'Shift 6', '06:00:00', '14:00:00', '08:00:00', '00:30:00', '2015-08-15 03:00:06', '0000-00-00 00:00:00'),
(9, 'Shift 7', '10:00:00', '18:00:00', '08:00:00', '00:30:00', '2015-08-15 03:00:39', '0000-00-00 00:00:00'),
(10, 'Shift 8', '09:00:00', '18:00:00', '09:00:00', '01:30:00', '2015-08-15 03:01:13', '0000-00-00 00:00:00'),
(11, 'Shift 9', '07:00:00', '15:00:00', '08:00:00', '00:30:00', '2015-08-15 03:03:42', '0000-00-00 00:00:00'),
(12, 'Shift 10', '13:00:00', '21:00:00', '08:00:00', '00:30:00', '2015-08-15 03:14:36', '0000-00-00 00:00:00'),
(13, 'Shift 11', '00:00:00', '08:00:00', '08:00:00', '00:30:00', '2015-08-15 03:16:25', '0000-00-00 00:00:00'),
(14, 'Shift 12', '16:00:00', '00:00:00', '08:00:00', '00:30:00', '2015-08-18 06:08:26', '0000-00-00 00:00:00'),
(15, 'Shift 13', '16:00:00', '01:00:00', '09:00:00', '01:30:00', '2015-08-15 03:19:19', '0000-00-00 00:00:00'),
(17, 'Shift 14', '06:00:00', '15:00:00', '09:00:00', '01:30:00', '2015-08-18 06:05:46', '2015-08-14 19:59:56'),
(18, 'Shift 15', '08:00:00', '17:00:00', '09:00:00', '01:30:00', '2015-08-18 06:06:57', '2015-08-14 20:02:41'),
(19, 'Shift 16', '08:00:00', '16:00:00', '08:00:00', '00:30:00', '2015-08-15 04:22:45', '0000-00-00 00:00:00'),
(20, 'Shift 17', '07:00:00', '17:00:00', '09:00:00', '01:30:00', '2015-08-15 04:23:20', '0000-00-00 00:00:00'),
(21, 'Shift 18', '11:00:00', '19:00:00', '08:00:00', '00:30:00', '2015-08-15 04:24:04', '0000-00-00 00:00:00'),
(22, 'Shift 19', '10:00:00', '19:00:00', '09:00:00', '01:30:00', '2015-08-18 06:07:35', '0000-00-00 00:00:00'),
(23, 'Shift 20', '07:00:00', '16:00:00', '09:00:00', '01:30:00', '2015-08-15 11:04:58', '0000-00-00 00:00:00'),
(24, 'Shift 21', '05:00:00', '14:00:00', '09:00:00', '01:30:00', '2015-08-18 06:03:32', '2015-08-16 22:12:14'),
(25, 'Shift 22', '23:00:00', '07:00:00', '08:00:00', '00:30:00', '2015-08-18 06:02:46', '2015-08-17 22:02:24'),
(26, 'Shift 24', '06:00:00', '12:00:00', '00:00:00', '00:30:00', '2015-08-19 18:19:35', '2015-08-19 18:19:35'),
(27, 'Shift 25', '08:00:00', '12:00:00', '00:00:00', '00:00:00', '2015-08-19 18:22:18', '2015-08-19 18:22:18'),
(28, 'Shift 26', '06:00:00', '10:00:00', '00:00:00', '00:00:00', '2015-08-19 18:23:05', '2015-08-19 18:23:05'),
(29, 'Shift 25', '06:00:00', '08:00:00', '00:00:00', '00:00:00', '2015-08-19 22:37:39', '2015-08-19 22:37:39'),
(30, 'Shift 26', '08:00:00', '14:00:00', '00:00:00', '00:00:00', '2015-08-19 22:39:21', '2015-08-19 22:39:21'),
(31, 'Shift 27', '05:00:00', '10:00:00', '00:00:00', '00:00:00', '2015-08-19 22:41:58', '2015-08-19 22:41:58'),
(32, 'Shift 28', '12:00:00', '20:00:00', '00:00:00', '00:00:00', '2015-08-19 23:21:56', '2015-08-19 23:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('admin') COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`, `user_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(7, 'Rosemale-John II C. Villacorta', 'rosemalejohn@gmail.com', 'rosemalejohn', '$2y$10$FuqYG4eDr6kTW00RwvWVJ.EHPPkVrOO273CQ7mRROIRYSBVZ9NrPG', 'admin', '4YNgiOFZUIoioffK0PbvuOfdyJvav3NjOEj2imihKzI3eiJukgNRHPKX7wQY', '2015-08-14 23:34:32', '2015-08-24 18:47:56'),
(8, 'Nepthaly Talavera', 'nepthaly.talavera@hpoutsourcinginc.com', 'ntalavera', '$2y$10$SLQ2sCBXWHB6MKzhsHMBxOj5glIkOrSMjCRPAM1EbR9.jLfXmDe1m', 'admin', NULL, '2015-08-17 17:56:03', '2015-08-17 17:56:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `employee_id` (`employee_id`), ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `employee_dtr`
--
ALTER TABLE `employee_dtr`
 ADD PRIMARY KEY (`id`), ADD KEY `employee_id` (`employee_id`), ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `employee_shifts`
--
ALTER TABLE `employee_shifts`
 ADD PRIMARY KEY (`id`), ADD KEY `employee_id` (`employee_id`), ADD KEY `shift_id` (`shift_id`);

--
-- Indexes for table `employee_shift_days`
--
ALTER TABLE `employee_shift_days`
 ADD PRIMARY KEY (`id`), ADD KEY `employee_shift_id` (`employee_shift_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `employee_dtr`
--
ALTER TABLE `employee_dtr`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5294;
--
-- AUTO_INCREMENT for table `employee_shifts`
--
ALTER TABLE `employee_shifts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `employee_shift_days`
--
ALTER TABLE `employee_shift_days`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=636;
--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
ADD CONSTRAINT `employees_ibfk_1` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_dtr`
--
ALTER TABLE `employee_dtr`
ADD CONSTRAINT `employee_dtr_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `employee_dtr_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_shifts`
--
ALTER TABLE `employee_shifts`
ADD CONSTRAINT `employee_shifts_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `employee_shifts_ibfk_2` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `employee_shift_days`
--
ALTER TABLE `employee_shift_days`
ADD CONSTRAINT `employee_shift_days_ibfk_1` FOREIGN KEY (`employee_shift_id`) REFERENCES `employee_shifts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
