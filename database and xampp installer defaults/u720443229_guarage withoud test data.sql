-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 22, 2023 at 09:53 AM
-- Server version: 10.5.19-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u720443229_guarage`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(155) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `credit_debit_details`
--

CREATE TABLE `credit_debit_details` (
  `id` int(11) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `item` varchar(100) DEFAULT NULL,
  `item_discription` text DEFAULT NULL,
  `is_credit` tinyint(1) NOT NULL DEFAULT 0,
  `amount` int(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(6) NOT NULL,
  `customer_name` varchar(155) DEFAULT NULL,
  `customer_contact_number` varchar(155) DEFAULT NULL,
  `customer_alt_number` varchar(155) DEFAULT NULL,
  `customer_email` varchar(155) DEFAULT NULL,
  `customer_address` varchar(155) DEFAULT NULL,
  `customer_gstin` varchar(155) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_debit_logs`
--

CREATE TABLE `customer_debit_logs` (
  `id` int(100) NOT NULL,
  `customer_id` int(100) NOT NULL,
  `workshop_id` int(100) DEFAULT NULL,
  `sale_id` int(155) DEFAULT NULL,
  `debit_amount` float(100,2) DEFAULT NULL,
  `credit` float(155,4) DEFAULT NULL,
  `is_debit` int(11) DEFAULT 1 COMMENT '0=>credit,1=>debit',
  `comments` varchar(155) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL COMMENT '''1''=>''By Cash'',''2''=>''By Internate Banking'',''3''=>''By Cheque''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documentations`
--

CREATE TABLE `documentations` (
  `id` int(100) NOT NULL,
  `menu_id` int(100) DEFAULT NULL,
  `title_name` varchar(200) DEFAULT NULL,
  `heading` varchar(200) DEFAULT NULL,
  `discription` text DEFAULT NULL,
  `documentation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `header_links`
--

CREATE TABLE `header_links` (
  `id` int(11) NOT NULL,
  `menu_id` varchar(100) DEFAULT NULL,
  `link_title` varchar(100) DEFAULT NULL,
  `link_name` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header_links`
--

INSERT INTO `header_links` (`id`, `menu_id`, `link_title`, `link_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '5', 'Add Brand', 'master/brands', '2019-01-08 05:30:01', NULL, NULL),
(2, '5', 'Add Service', 'SaiAutoCare/service/add', '2019-01-01 11:15:01', NULL, NULL),
(3, '5', 'Add Model  Detail', 'master/modal', '2019-01-01 11:15:01', NULL, NULL),
(4, '5', 'Add Service name  Detail', 'master/service_name', '2019-01-01 11:15:01', NULL, NULL),
(5, '5', 'Add Service Type  Detail', 'master/service_type', '2019-01-01 11:15:01', NULL, NULL),
(6, '3', 'Add Supplier', 'SaiAutoCare/supplier/add', '2019-01-08 05:24:13', NULL, NULL),
(7, '3', 'Add Spare', 'SaiAutoCare/product/add', '2019-01-08 05:30:00', NULL, NULL),
(8, '3', 'Add Purchase', 'SaiAutoCare/purchase/add', '2019-01-08 05:30:00', NULL, NULL),
(9, '3', 'Add Brand', 'master/brands', '2019-01-08 05:30:01', NULL, NULL),
(10, '3', 'Add Model  Detail', 'master/modal', '2019-01-01 11:15:01', NULL, NULL),
(11, '3', 'Workshop Add', 'SaiAutoCare/workshop/add', '2019-01-28 06:17:11', NULL, NULL),
(12, '3', 'Manage Customer', 'SaiAutoCare/customer/add', '2019-01-28 06:18:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `markets`
--

CREATE TABLE `markets` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `item` varchar(100) DEFAULT NULL,
  `item_discription` text NOT NULL,
  `quantity` int(100) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  `total_price` double(10,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `parent_id` int(5) DEFAULT 0,
  `sort` int(1) DEFAULT 0,
  `has_submenu` smallint(1) DEFAULT 0,
  `role_id` varchar(255) DEFAULT NULL,
  `trash` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(155) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_01_25_192319_create_sales_table', 1),
(2, '2019_01_25_193229_create_product_sale_table', 1),
(3, '2019_01_25_193410_create_service_sale_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `modals`
--

CREATE TABLE `modals` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_name` varchar(155) NOT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modals`
--

INSERT INTO `modals` (`id`, `model_name`, `brand_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'NA', 7, NULL, '2018-12-28 20:50:22', '2023-05-19 13:05:17'),
(6, 'ALTO 800', 28, NULL, '2018-12-28 20:50:22', '2021-11-22 12:42:13'),
(7, 'ciaz', 1, NULL, '2018-12-29 05:23:03', '2018-12-29 05:23:03'),
(8, 'Celerio', 1, NULL, '2018-12-29 05:23:21', '2018-12-29 05:23:21'),
(9, 'Egnis', 1, NULL, '2018-12-29 05:23:36', '2019-11-08 18:37:14'),
(10, 'Alto', 1, NULL, '2018-12-29 05:25:05', '2018-12-29 05:25:05'),
(11, 'Swift NEW', 28, NULL, '2018-12-29 05:25:53', '2021-11-20 16:26:25'),
(12, 'Ertiga', 1, NULL, '2018-12-29 05:27:01', '2018-12-29 05:27:01'),
(13, 'Alto K10', 28, NULL, '2018-12-29 05:28:27', '2021-11-20 12:26:06'),
(14, 'Eco', 1, NULL, '2018-12-29 05:30:10', '2018-12-29 05:30:10'),
(15, 'Baleno', 28, NULL, '2018-12-29 05:31:21', '2021-11-20 12:30:18'),
(16, 'Breeza', 28, NULL, '2018-12-29 05:32:09', '2021-11-20 12:23:42'),
(17, 'S-Cross', 1, NULL, '2018-12-29 05:32:37', '2018-12-29 05:32:37'),
(18, 'I 10 PETROL', 3, NULL, '2018-12-29 05:33:56', '2021-11-20 12:35:04'),
(19, 'I-10 GRAND DIESEL', 3, NULL, '2018-12-29 05:34:15', '2021-11-20 12:35:38'),
(20, 'Eon(Magna)', 3, NULL, '2018-12-29 05:35:05', '2018-12-29 05:35:05'),
(21, 'Eon(Era)', 3, NULL, '2018-12-29 05:35:22', '2018-12-29 05:35:22'),
(22, 'Eon(Sports)', 3, NULL, '2018-12-29 05:35:42', '2018-12-29 05:35:42'),
(23, 'Elite I20', 3, NULL, '2018-12-29 05:36:18', '2018-12-29 05:36:18'),
(24, 'CRETA  PETROL', 3, NULL, '2018-12-29 05:36:40', '2021-11-20 12:34:05'),
(25, 'Verna (Fludic)', 3, NULL, '2018-12-29 05:37:09', '2018-12-29 05:37:09'),
(26, 'Verna old', 3, NULL, '2018-12-29 05:37:30', '2021-11-20 12:22:41'),
(27, 'Santro', 3, NULL, '2018-12-29 05:37:56', '2018-12-29 05:37:56'),
(28, 'Xcent', 3, NULL, '2018-12-29 05:39:01', '2018-12-29 05:39:01'),
(29, 'Elantra', 3, NULL, '2018-12-29 05:39:23', '2018-12-29 05:39:23'),
(30, 'Tucson', 3, NULL, '2018-12-29 05:39:45', '2018-12-29 05:39:45'),
(31, 'Micra', 6, NULL, '2018-12-29 05:41:05', '2018-12-29 05:41:05'),
(32, 'Terrano', 6, NULL, '2018-12-29 05:41:27', '2018-12-29 05:41:27'),
(33, 'Sunny', 6, NULL, '2018-12-29 05:41:46', '2018-12-29 05:41:46'),
(34, 'Micra Active', 6, NULL, '2018-12-29 05:42:05', '2018-12-29 05:42:05'),
(35, 'Sumo', 4, NULL, '2018-12-29 05:42:47', '2018-12-29 05:42:47'),
(36, 'Tiago', 4, NULL, '2018-12-29 05:43:04', '2018-12-29 05:43:04'),
(37, 'Safari', 4, NULL, '2018-12-29 05:43:21', '2018-12-29 05:43:21'),
(38, 'Nano', 4, NULL, '2018-12-29 05:43:40', '2018-12-29 05:43:40'),
(39, 'Indica', 4, NULL, '2018-12-29 05:43:55', '2018-12-29 05:43:55'),
(40, 'Indigo', 4, NULL, '2018-12-29 05:44:29', '2018-12-29 05:44:29'),
(41, 'Scorpio', 8, NULL, '2018-12-29 05:45:51', '2018-12-29 05:45:51'),
(42, 'Bolero', 8, NULL, '2018-12-29 05:51:18', '2018-12-29 05:51:18'),
(43, 'Xuv 500', 8, NULL, '2018-12-29 05:51:37', '2018-12-29 05:51:37'),
(44, 'Tuv 300', 8, NULL, '2018-12-29 05:52:15', '2018-12-29 05:52:15'),
(45, 'Kuv 100', 8, NULL, '2018-12-29 05:52:29', '2018-12-29 05:52:29'),
(46, 'City', 2, NULL, '2018-12-29 05:54:13', '2018-12-29 05:54:13'),
(47, 'Amaze', 2, NULL, '2018-12-29 05:54:36', '2018-12-29 05:54:36'),
(48, 'WRV', 2, NULL, '2018-12-29 05:54:53', '2018-12-29 05:54:53'),
(49, 'Jaaz', 2, NULL, '2018-12-29 05:55:05', '2018-12-29 05:55:05'),
(50, 'BRV', 2, NULL, '2018-12-29 05:55:30', '2018-12-29 05:55:30'),
(51, 'CR-V', 2, NULL, '2018-12-29 05:55:43', '2018-12-29 05:55:43'),
(52, 'Accord', 2, NULL, '2018-12-29 05:56:38', '2018-12-29 05:56:38'),
(53, 'Brio', 2, NULL, '2018-12-29 05:57:00', '2018-12-29 05:57:00'),
(54, 'Passat', 5, NULL, '2018-12-29 05:59:14', '2018-12-29 05:59:14'),
(55, 'polo', 5, NULL, '2018-12-29 05:59:29', '2018-12-29 05:59:29'),
(56, 'Tugan', 5, NULL, '2018-12-29 05:59:50', '2018-12-29 05:59:50'),
(57, 'Vento', 5, NULL, '2018-12-29 06:00:09', '2018-12-29 06:00:09'),
(58, 'Ameo', 5, NULL, '2018-12-29 06:00:27', '2018-12-29 06:00:27'),
(59, 'EcoSport', 7, NULL, '2018-12-29 06:01:29', '2018-12-29 06:01:29'),
(60, 'Figo', 7, NULL, '2018-12-29 06:01:45', '2018-12-29 06:01:45'),
(61, 'Aspire', 7, NULL, '2018-12-29 06:02:07', '2018-12-29 06:02:07'),
(62, 'Fiesta', 7, NULL, '2018-12-29 06:02:20', '2018-12-29 06:02:20'),
(63, 'Endeavour', 7, NULL, '2018-12-29 06:03:00', '2018-12-29 06:03:00'),
(64, 'Fortuner', 9, NULL, '2018-12-29 06:03:51', '2018-12-29 06:03:51'),
(65, 'Etios', 9, NULL, '2018-12-29 06:04:15', '2018-12-29 06:04:15'),
(66, 'Corolla Altis', 9, NULL, '2018-12-29 06:04:36', '2018-12-29 06:04:36'),
(67, 'Glanza', 9, NULL, '2018-12-29 06:04:59', '2019-08-31 00:26:19'),
(68, 'Etios Liva', 9, NULL, '2018-12-29 06:05:39', '2018-12-29 06:05:39'),
(69, 'innova', 9, NULL, '2018-12-29 06:06:27', '2018-12-29 06:06:27'),
(70, 'Innova crysta', 9, NULL, '2018-12-29 06:06:49', '2018-12-29 06:06:49'),
(71, 'Duster', 10, NULL, '2018-12-29 06:07:30', '2018-12-29 06:07:30'),
(72, 'Kwid', 10, NULL, '2018-12-29 06:07:49', '2018-12-29 06:07:49'),
(73, 'Captur', 10, NULL, '2018-12-29 06:08:10', '2018-12-29 06:08:10'),
(74, 'Lodgy', 10, NULL, '2018-12-29 06:08:40', '2018-12-29 06:08:40'),
(75, 'Wagon R', 1, NULL, '2018-12-29 07:34:54', '2018-12-29 07:34:54'),
(80, 'swift', 1, NULL, '2019-01-10 21:19:06', '2019-01-10 21:19:06'),
(81, 'common', 15, NULL, '2019-01-14 22:53:24', '2019-01-14 22:53:24'),
(82, 'elect', 14, NULL, '2019-01-14 22:53:41', '2019-01-14 22:53:41'),
(83, 'accesories', 13, NULL, '2019-01-14 22:53:55', '2019-01-14 22:53:55'),
(84, 'colour', 12, NULL, '2019-01-14 22:54:15', '2019-01-14 22:54:15'),
(85, 'lubricant', 11, NULL, '2019-01-14 22:54:30', '2019-01-14 22:54:30'),
(86, 'indica vista', 4, NULL, '2019-01-15 01:25:31', '2019-01-15 01:25:31'),
(87, 'swift vxi/zxi', 1, NULL, '2019-01-15 20:55:40', '2019-01-15 20:55:40'),
(88, 'swift vdi/zdi', 1, NULL, '2019-01-15 20:56:05', '2019-01-15 20:56:05'),
(89, 'swift dizire vdi/zdi', 1, NULL, '2019-01-15 21:01:02', '2019-01-15 21:01:02'),
(90, 'Beat', 16, NULL, '2019-01-15 21:12:21', '2019-01-15 21:12:21'),
(91, 'Alto 800', 1, NULL, '2019-01-22 21:46:26', '2019-01-22 21:46:26'),
(92, 'Swift Dizire', 1, NULL, '2019-01-22 21:57:22', '2019-01-22 21:57:22'),
(93, 'XL 6', 1, NULL, '2019-01-22 21:57:41', '2019-11-08 18:37:40'),
(94, 'Safari Strome', 4, NULL, '2019-01-25 01:45:42', '2019-01-25 01:45:42'),
(95, 'Zen Estilo', 1, NULL, '2019-02-11 20:27:21', '2019-02-11 20:27:21'),
(97, 'sail', 16, NULL, '2019-02-17 17:00:59', '2019-02-17 17:00:59'),
(98, 'manza', 4, NULL, '2019-02-17 17:03:22', '2019-02-17 17:03:22'),
(99, 'cammonder', 8, NULL, '2019-03-13 01:44:25', '2019-03-13 01:44:25'),
(100, 'O MNIE', 1, NULL, '2019-04-07 01:46:28', '2019-04-07 01:46:28'),
(101, 'optra', 16, NULL, '2019-04-30 19:46:17', '2019-04-30 19:46:17'),
(102, 'Linea', 17, NULL, '2019-04-30 23:41:29', '2019-04-30 23:41:29'),
(103, 'spark', 16, NULL, '2019-05-15 00:11:27', '2019-05-15 00:11:27'),
(104, 'SF Sonic', 18, NULL, '2019-07-06 18:00:10', '2019-07-06 18:00:10'),
(105, 'ace', 4, NULL, '2019-07-13 21:24:06', '2019-07-13 21:24:06'),
(106, '185/65/R15', 19, NULL, '2019-07-16 19:03:40', '2019-07-16 19:03:40'),
(107, 'camper', 8, NULL, '2019-07-27 17:12:13', '2019-07-27 17:12:13'),
(108, 'Bolero plus', 8, NULL, '2019-07-30 01:13:13', '2019-07-30 01:13:13'),
(109, 'Ritz', 1, NULL, '2019-07-30 01:24:41', '2019-07-30 01:24:41'),
(110, 'Punto', 17, NULL, '2019-07-30 18:14:27', '2019-07-30 18:14:27'),
(111, 'Qualis', 9, NULL, '2019-11-02 17:29:23', '2019-11-02 17:29:37'),
(112, 'Trax', 20, NULL, '2019-11-30 17:39:03', '2019-11-30 17:39:03'),
(113, 'Bolero pick up', 8, NULL, '2019-12-12 00:46:08', '2019-12-12 00:46:08'),
(114, '1617R', 21, NULL, '2020-11-30 12:09:49', '2020-11-30 12:09:49'),
(115, '1617R', 21, NULL, '2020-11-30 12:28:48', '2020-11-30 12:28:48'),
(116, '3723R', 21, NULL, '2020-11-30 12:29:02', '2020-11-30 12:29:02'),
(117, 'Hunk', 23, NULL, '2021-04-21 08:04:44', '2021-04-21 08:04:44'),
(118, 'RTR', 24, NULL, '2021-05-25 23:04:09', '2021-05-25 23:04:09'),
(119, 'RTR 160', 24, NULL, '2021-05-25 23:22:54', '2021-05-25 23:22:54'),
(120, 'hiece', 9, NULL, '2021-07-01 11:46:59', '2021-07-01 11:46:59'),
(121, 'HIECE', 9, NULL, '2021-07-01 11:47:19', '2021-07-01 11:47:19'),
(122, '800', 1, NULL, '2021-10-27 22:51:35', '2021-10-27 22:51:35'),
(123, 'SWIFT', 25, NULL, '2021-11-18 11:44:37', '2021-11-18 11:44:37'),
(124, 'SAFARI', 26, NULL, '2021-11-18 11:55:26', '2021-11-18 11:55:26'),
(125, 'INDIGO', 27, NULL, '2021-11-18 15:29:37', '2021-11-18 15:29:37'),
(126, 'SWIFT', 28, NULL, '2021-11-19 12:10:28', '2021-11-19 12:10:28'),
(127, 'DUSTER', 6, NULL, '2021-11-19 12:22:55', '2021-11-19 12:22:55'),
(128, 'VISTA', 29, NULL, '2021-11-19 12:46:21', '2021-11-19 12:46:21'),
(129, 'ALTO', 28, NULL, '2021-11-19 12:55:07', '2021-11-19 12:55:07'),
(130, 'AMEO PETROL', 30, NULL, '2021-11-19 15:15:12', '2021-11-19 15:15:12'),
(131, 'AMEO DIESEL', 30, NULL, '2021-11-19 15:15:26', '2021-11-19 15:15:26'),
(132, 'POLO', 30, NULL, '2021-11-19 15:15:45', '2021-11-19 15:15:45'),
(133, 'LOGAN', 8, NULL, '2021-11-19 15:29:14', '2021-11-19 15:29:14'),
(134, 'SWIFT PETROL', 28, NULL, '2021-11-19 15:30:56', '2021-11-19 15:30:56'),
(135, '5W-40', 31, NULL, '2021-11-19 16:06:50', '2021-11-19 16:06:50'),
(136, '5W-30', 36, NULL, '2021-11-20 11:36:16', '2021-11-20 11:36:16'),
(137, '5W-40', 36, NULL, '2021-11-20 11:36:38', '2021-11-20 11:36:38'),
(138, '5W-40', 32, NULL, '2021-11-20 11:37:03', '2021-11-20 11:37:03'),
(139, '5W-40', 37, NULL, '2021-11-20 11:38:50', '2021-11-20 11:38:50'),
(140, '5W-30', 33, NULL, '2021-11-20 11:39:23', '2021-11-20 11:39:23'),
(141, '5W-30', 35, NULL, '2021-11-20 11:40:04', '2021-11-20 11:40:04'),
(142, '5W-30', 31, NULL, '2021-11-20 11:40:33', '2021-11-20 11:40:33'),
(143, '5W-30', 34, NULL, '2021-11-20 11:41:47', '2021-11-20 11:41:47'),
(144, '20W-50', 33, NULL, '2021-11-20 11:43:03', '2021-11-20 11:43:03'),
(145, '15W-40', 38, NULL, '2021-11-20 11:46:34', '2021-11-20 11:46:34'),
(146, 'DOT 3', 35, NULL, '2021-11-20 11:48:27', '2021-11-20 11:48:27'),
(147, 'DOT 4', 35, NULL, '2021-11-20 11:48:41', '2021-11-20 11:48:41'),
(148, '75W-85', 33, NULL, '2021-11-20 12:02:01', '2021-11-20 12:02:01'),
(149, '80W-90', 39, NULL, '2021-11-20 12:02:52', '2021-11-20 12:02:52'),
(150, 'I-20 OLD', 3, NULL, '2021-11-20 12:33:27', '2021-11-20 12:33:27'),
(151, 'CRETA DIESEL', 3, NULL, '2021-11-20 12:34:36', '2021-11-20 12:34:36'),
(152, 'I-10 GRAND PETROL', 3, NULL, '2021-11-20 12:36:03', '2021-11-20 12:36:03'),
(153, 'XYLO', 8, NULL, '2021-11-20 12:37:36', '2021-11-20 12:37:36'),
(154, 'INDIGO MARINA', 26, NULL, '2021-11-20 13:50:30', '2021-11-20 13:50:30'),
(155, 'INDICA XETA', 26, NULL, '2021-11-20 13:50:46', '2021-11-20 13:50:46'),
(156, 'LABOUR', 40, NULL, '2021-11-20 15:38:45', '2021-11-20 15:38:45'),
(157, 'KHRAD LABOUR', 41, NULL, '2021-11-20 15:39:44', '2021-11-20 15:39:44'),
(158, 'WASHING', 42, NULL, '2021-11-20 15:40:39', '2021-11-20 15:40:39'),
(159, 'ALIGNMENT', 43, NULL, '2021-11-20 15:42:47', '2021-11-20 15:42:47'),
(160, 'ENGINE FLUSH', 44, NULL, '2021-11-20 15:56:49', '2021-11-20 15:56:49'),
(161, 'COOLANT', 35, NULL, '2021-11-20 16:01:56', '2021-11-20 16:01:56'),
(162, 'WIPER BLADE', 35, NULL, '2021-11-20 16:04:02', '2021-11-20 16:04:02'),
(163, 'SWIFT OLD', 28, NULL, '2021-11-22 10:17:35', '2021-11-22 10:17:35'),
(164, 'VISTA', 26, NULL, '2021-11-22 10:34:04', '2021-11-22 10:34:04'),
(165, 'INDIGO', 26, NULL, '2021-11-22 10:34:41', '2021-11-22 10:34:41'),
(166, 'SAFARI', 26, NULL, '2021-11-22 10:34:49', '2021-11-22 10:34:49'),
(167, 'INDIGO MARINA', 26, NULL, '2021-11-22 10:35:10', '2021-11-22 10:35:10'),
(168, 'INDICA XETA', 26, NULL, '2021-11-22 10:35:27', '2021-11-22 10:35:27'),
(169, 'CRUISE', 16, NULL, '2021-11-22 11:04:40', '2021-11-22 11:04:40'),
(170, 'SKODA', 3, NULL, '2021-11-22 11:19:05', '2021-11-22 11:19:05'),
(171, 'INDICA', 26, NULL, '2021-11-22 12:14:04', '2021-11-22 12:14:04'),
(172, 'ZEN', 28, NULL, '2021-11-22 12:45:56', '2021-11-22 12:45:56'),
(173, 'SCORPIO VLX', 8, NULL, '2021-11-22 12:48:29', '2021-11-22 12:48:29'),
(174, 'MAHINDRA MAXIMO', 8, NULL, '2021-11-22 12:49:51', '2021-11-22 12:49:51'),
(175, 'ERTIGA', 28, NULL, '2021-11-22 13:09:31', '2021-11-22 13:09:31'),
(176, 'SKODA OCTAVIA', 46, NULL, '2021-11-22 13:15:48', '2021-11-22 13:17:18'),
(177, 'ESTILO', 28, NULL, '2021-11-22 14:40:19', '2021-11-22 14:40:19'),
(178, 'XNEON', 26, NULL, '2021-11-22 14:44:29', '2021-11-22 14:44:29'),
(179, 'CIAZ', 28, NULL, '2021-11-22 15:16:54', '2021-11-22 15:16:54'),
(180, 'HORN JALWA', 47, NULL, '2021-11-23 11:28:25', '2021-11-23 11:28:25'),
(181, 'HORN', 47, NULL, '2021-11-23 11:28:46', '2021-11-23 11:28:46'),
(182, 'AC GAS', 48, NULL, '2021-11-23 11:50:40', '2021-11-23 11:50:40'),
(183, 'STEARING OIL', 49, NULL, '2021-11-23 11:54:26', '2021-11-23 11:54:26'),
(184, 'MAIN SEAL', 50, NULL, '2021-11-23 11:55:34', '2021-11-23 11:55:34'),
(185, 'FOG LIGHT', 51, NULL, '2021-11-23 11:59:17', '2021-11-23 11:59:17'),
(186, 'BATTERY', 18, NULL, '2021-11-23 12:01:54', '2021-11-23 12:01:54'),
(187, 'BEARING', 53, NULL, '2021-11-23 12:06:22', '2021-11-23 12:06:22'),
(188, 'BOOT', 54, NULL, '2021-11-23 12:24:54', '2021-11-23 12:24:54'),
(189, 'WIRE', 56, NULL, '2021-11-23 12:34:39', '2021-11-23 12:34:39'),
(190, 'PIPE', 55, NULL, '2021-11-23 12:37:44', '2021-11-23 12:37:44'),
(191, 'FENDER LINING', 58, NULL, '2021-11-23 14:44:07', '2021-11-23 14:44:07'),
(192, '15W-40', 36, NULL, '2021-11-23 14:51:16', '2021-11-23 14:51:16'),
(193, 'BONNET', 59, NULL, '2021-11-23 14:53:15', '2021-11-23 14:53:15'),
(194, 'SPRAY', 60, NULL, '2021-11-25 10:31:31', '2021-11-25 10:31:31'),
(195, 'GLASS', 61, NULL, '2021-11-25 11:49:41', '2021-11-25 11:49:41'),
(196, 'BELT', 62, NULL, '2021-11-25 11:52:52', '2021-11-25 11:52:52'),
(197, 'BUSH', 63, NULL, '2021-11-25 13:10:59', '2021-11-25 13:11:42'),
(198, 'KIT', 64, NULL, '2021-11-25 13:29:31', '2021-11-25 13:29:59'),
(199, 'MACHINE', 65, NULL, '2021-11-25 14:56:34', '2021-11-25 14:56:34'),
(200, 'BULB', 66, NULL, '2021-11-26 11:03:41', '2021-11-26 11:03:41'),
(201, 'TIE', 67, NULL, '2021-11-26 11:44:27', '2021-11-26 11:44:27'),
(202, 'MOUNT', 68, NULL, '2021-11-26 14:55:34', '2021-11-26 14:55:34'),
(203, 'SHOCKER', 69, NULL, '2021-11-29 10:26:43', '2021-11-29 10:26:43'),
(204, 'TATA ARYA', 26, NULL, '2021-11-29 10:55:12', '2021-11-29 10:55:12'),
(205, 'LIGHT', 70, NULL, '2021-11-29 11:37:31', '2021-11-29 11:37:31'),
(206, 'SX4', 28, NULL, '2021-12-01 10:35:34', '2021-12-01 10:35:34'),
(207, 'LOCK', 71, NULL, '2021-12-04 10:13:05', '2021-12-04 10:13:05'),
(208, 'NUT BOLT', 72, NULL, '2021-12-07 09:58:11', '2021-12-07 09:58:11'),
(209, 'ROLA', 73, NULL, '2021-12-07 14:28:53', '2021-12-07 14:28:53'),
(210, 'GENIO', 8, NULL, '2021-12-09 10:22:36', '2021-12-09 10:22:36'),
(211, 'GREECE', 75, NULL, '2021-12-10 14:42:30', '2021-12-10 14:42:30'),
(212, 'ZIP', 26, NULL, '2021-12-13 11:20:52', '2021-12-13 11:20:52'),
(213, 'EON', 3, NULL, '2021-12-24 10:56:04', '2021-12-24 10:56:04'),
(214, 'TATA MAGIC', 26, NULL, '2022-01-01 10:07:06', '2022-01-01 10:07:06'),
(215, 'MARUTI CAR', 28, NULL, '2022-01-06 11:24:11', '2022-01-06 11:24:11'),
(216, 'LANCER', 76, NULL, '2022-01-20 10:33:48', '2022-01-20 10:33:48'),
(217, 'TATA SOMO', 26, NULL, '2022-01-27 11:05:30', '2022-01-27 11:05:30'),
(218, 'REPAIR', 77, NULL, '2022-02-05 10:57:35', '2022-02-05 10:57:35'),
(219, 'A STAR', 28, NULL, '2022-03-19 10:17:40', '2022-03-19 10:17:40'),
(220, 'RITZ', 28, NULL, '2022-03-19 10:17:51', '2022-03-19 10:17:51'),
(221, 'MONTERO', 76, NULL, '2022-04-06 11:02:02', '2022-04-06 11:02:02'),
(222, 'PICK UP', 28, NULL, '2022-04-27 10:37:26', '2022-04-27 10:37:26'),
(223, 'D-MAX', 78, NULL, '2022-04-30 11:00:51', '2022-04-30 11:00:51'),
(224, 'CELERIO', 28, NULL, '2022-05-04 09:53:59', '2022-05-04 09:53:59'),
(225, 'ESTEEM', 28, NULL, '2022-05-04 10:07:44', '2022-05-04 10:07:44'),
(226, 'CARRY', 28, NULL, '2022-06-15 10:02:57', '2022-06-15 10:02:57'),
(227, 'JEEP', 8, NULL, '2022-07-23 10:29:50', '2022-07-23 10:29:50'),
(228, 'BMW', 80, NULL, '2022-08-26 10:37:25', '2022-08-26 10:37:25'),
(229, 'X Corolla 2015', 4, NULL, '2022-09-19 17:18:43', '2022-09-19 17:18:43'),
(230, 'starlet', 9, NULL, '2022-09-19 18:31:19', '2022-09-19 18:31:19'),
(231, 'starlet', 4, NULL, '2022-09-19 18:31:46', '2022-09-19 18:31:46'),
(232, 'NEXON', 26, NULL, '2022-09-29 11:24:28', '2022-09-29 11:24:28'),
(233, 'NANO', 28, NULL, '2022-10-18 10:01:17', '2022-10-18 10:01:17'),
(234, 'xpresso', 28, NULL, '2022-10-19 10:02:03', '2022-10-19 10:02:03'),
(235, 'Premio', 4, NULL, '2022-10-30 12:55:20', '2022-10-30 12:55:20'),
(236, 'Vazel', 2, NULL, '2022-10-30 20:01:58', '2022-10-30 20:01:58'),
(237, 'CAMERY', 9, NULL, '2022-12-07 11:35:38', '2022-12-07 11:35:38'),
(238, 'LAURA JETTA', 5, NULL, '2022-12-08 10:13:27', '2022-12-08 10:13:27'),
(239, 'VAN', 81, NULL, '2022-12-13 11:51:56', '2022-12-13 11:51:56'),
(240, 'AUDI', 82, NULL, '2023-01-03 10:42:16', '2023-01-03 10:42:16'),
(241, 'SKALA', 10, NULL, '2023-03-28 10:44:21', '2023-03-28 10:44:21'),
(242, 'JEEP', 83, NULL, '2023-04-03 12:21:24', '2023-04-03 12:21:24'),
(243, 'TIAGO', 26, NULL, '2023-04-10 11:38:09', '2023-04-10 11:38:09'),
(244, 'NANO', 26, NULL, '2023-04-22 15:02:30', '2023-04-22 15:02:30'),
(245, 'AURA', 3, NULL, '2023-05-11 10:26:45', '2023-05-11 10:26:45'),
(246, 'Duke', 0, NULL, '2023-05-19 13:04:34', '2023-05-19 13:04:34'),
(247, 'QUANTO', 8, NULL, '2023-06-03 10:34:20', '2023-06-03 10:34:20'),
(248, 'KIA SELTOS', 3, NULL, '2023-06-15 12:43:40', '2023-06-15 12:43:40'),
(249, 'CHEVROLET', 16, NULL, '2023-07-26 11:06:20', '2023-07-26 11:06:20'),
(250, 'VENEU', 3, NULL, '2023-07-26 11:25:18', '2023-07-26 11:25:18'),
(251, 'xomana', 85, NULL, '2023-08-08 07:07:45', '2023-08-08 07:07:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(155) NOT NULL,
  `token` varchar(155) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('ashutoshphoenixsofts@gmail.com', '$2y$10$gZ2jQp2xcgXrl0CgAj/GI.LXO7nhJDm1tsp6Z.W2gQe2hisCLly.C', '2019-01-24 10:18:06'),
('ashutoshphoenixsoft@gmail.com', '$2y$10$JpM5eVsW3e.5e2Udq8vrSO1L5Iyfp.f5.N0U11v//eDOhWijvTZV2', '2019-01-24 10:43:37'),
('2vmfaisal786@gmail.com', '$2y$10$HtoUhlpHrmItUPjcaZHBIuyxQ1wV3v6LQ6aM4jVTAG/2WEpb6Sese', '2022-07-05 09:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` int(11) NOT NULL,
  `job_id` varchar(50) DEFAULT NULL,
  `payment_date` varchar(50) DEFAULT NULL,
  `payment_amount` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `model_number` varchar(155) DEFAULT NULL,
  `hsn` varchar(155) DEFAULT NULL,
  `unit_price` double(155,2) DEFAULT NULL,
  `unit_price_exit` double(155,2) DEFAULT NULL,
  `gst` double(155,2) DEFAULT NULL,
  `stock_in` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_out` double(155,2) NOT NULL DEFAULT 0.00,
  `stock_available` double(155,2) NOT NULL DEFAULT 0.00,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_saled_logs`
--

CREATE TABLE `product_saled_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `product_hsn` varchar(255) DEFAULT NULL,
  `product_price_without_gst` double(100,5) DEFAULT NULL,
  `product_price_with_gst` double(100,5) DEFAULT NULL,
  `product_gst` double(100,5) DEFAULT NULL,
  `product_quantity` double(100,5) DEFAULT NULL,
  `product_discount` double(100,5) DEFAULT NULL,
  `product_total_price` double(100,5) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

CREATE TABLE `purchases` (
  `id` int(155) UNSIGNED NOT NULL,
  `user_id` int(100) NOT NULL,
  `supplier_name` varchar(155) NOT NULL,
  `purchase_invoice_id` int(100) DEFAULT NULL,
  `bill_num` varchar(155) DEFAULT NULL,
  `bill_date` date DEFAULT NULL,
  `product_id` int(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `purchase_discription` text DEFAULT NULL,
  `model_number` varchar(155) DEFAULT NULL,
  `part_number` varchar(100) DEFAULT NULL,
  `discription` varchar(100) DEFAULT NULL,
  `hsn` varchar(155) DEFAULT NULL,
  `unit_price` double(155,6) DEFAULT 0.000000,
  `unit_price_exit` float(155,6) NOT NULL,
  `quantity` double(155,6) DEFAULT 0.000000,
  `gst` double(155,6) DEFAULT 0.000000,
  `discount` double(155,6) DEFAULT NULL,
  `total_amount` double(155,6) DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>"no",1=>"yes"',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_invoices`
--

CREATE TABLE `purchase_invoices` (
  `id` int(155) NOT NULL,
  `supplier_id` int(155) NOT NULL,
  `purchase_invoice_number` varchar(155) DEFAULT NULL,
  `purchase_invoice_date` date DEFAULT NULL,
  `purchase_invoice_amount` float(155,4) DEFAULT NULL COMMENT 'original amount',
  `purchase_discription` text DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `total_purchase_amount` float(155,4) DEFAULT NULL COMMENT 'our calculation for alll product',
  `purchase_due_amount` float(155,4) DEFAULT NULL COMMENT 'remaing amount for supplier for this purchase invoice',
  `satus` tinyint(1) NOT NULL DEFAULT 1,
  `user_id` int(155) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_returns`
--

CREATE TABLE `purchase_returns` (
  `id` int(155) NOT NULL,
  `purchase_id` int(155) NOT NULL,
  `quantity` float(155,9) DEFAULT NULL,
  `user_id` int(155) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `return_spare_logs`
--

CREATE TABLE `return_spare_logs` (
  `id` int(155) NOT NULL,
  `job_id` int(155) NOT NULL,
  `quantity` int(155) DEFAULT NULL,
  `user_id` int(155) DEFAULT NULL,
  `comments` varchar(155) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(6) NOT NULL,
  `role_name` varchar(191) DEFAULT NULL,
  `role_code` varchar(100) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role_name`, `role_code`, `is_active`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 'SUP', 1, '2019-01-01 10:31:58', '0000-00-00 00:00:00', NULL),
(2, 'marketing', 'MKT', 1, '2019-01-01 10:31:54', '0000-00-00 00:00:00', NULL),
(4, 'Pubic', 'PLC', 1, '2019-01-01 20:39:00', '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `is_job_available` varchar(255) DEFAULT '1',
  `submited_part_discription` varchar(255) DEFAULT NULL,
  `is_item_submited` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_type` varchar(155) NOT NULL,
  `service_name` varchar(155) NOT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `model_name` varchar(100) DEFAULT NULL,
  `price` varchar(155) NOT NULL,
  `gst` int(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_names`
--

CREATE TABLE `service_names` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_type_id` int(100) DEFAULT NULL,
  `service_name` varchar(155) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_saled_logs`
--

CREATE TABLE `service_saled_logs` (
  `id` int(10) UNSIGNED NOT NULL,
  `job_id` varchar(255) DEFAULT NULL,
  `customer_id` varchar(255) DEFAULT NULL,
  `sale_id` varchar(255) DEFAULT NULL,
  `service_id` varchar(255) DEFAULT NULL,
  `product_hsn` varchar(255) DEFAULT NULL,
  `service_price_without_gst` double(100,5) DEFAULT NULL,
  `ervice_price_with_gst` double(100,5) DEFAULT NULL,
  `service_gst` double(100,5) DEFAULT NULL,
  `service_quantity` double(100,5) DEFAULT NULL,
  `service_discount` double(100,5) DEFAULT NULL,
  `service_total_price` double(100,5) DEFAULT NULL,
  `service_notes` varchar(255) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_types`
--

CREATE TABLE `service_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_type_name` varchar(155) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `submiter_part_details`
--

CREATE TABLE `submiter_part_details` (
  `id` int(10) UNSIGNED NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `part_name` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(10) UNSIGNED NOT NULL,
  `supplier_name` varchar(155) NOT NULL,
  `mob_num` varchar(155) DEFAULT NULL,
  `address` varchar(155) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `gstin` varchar(155) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supplier_debit_logs`
--

CREATE TABLE `supplier_debit_logs` (
  `id` int(100) NOT NULL,
  `supplier_id` int(100) NOT NULL,
  `purchase_invoice_id` int(100) DEFAULT NULL,
  `purchase_id` int(100) DEFAULT NULL,
  `debit_amount` float(100,2) DEFAULT NULL,
  `credit` float(155,4) DEFAULT NULL,
  `is_debit` int(11) DEFAULT 1 COMMENT '0=>credit,1=>debit',
  `comments` varchar(155) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL COMMENT '''1''=>''By Cash'',''2''=>''By Internate Banking'',''3''=>''By Cheque''',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testing`
--

CREATE TABLE `testing` (
  `id` int(155) NOT NULL,
  `module_name` varchar(155) DEFAULT NULL,
  `sub_module` varchar(155) DEFAULT NULL,
  `functionality` varchar(155) DEFAULT NULL,
  `discription` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testing`
--

INSERT INTO `testing` (`id`, `module_name`, `sub_module`, `functionality`, `discription`, `status`, `created_at`) VALUES
(1, 'Credit Debit Log', 'Add', 'Save', 'multipale add fuctionality ', 'pass', '2019-02-06 13:07:07'),
(2, 'Credit Debit Log', 'Add', 'update', 'checking with various  ', 'pass', '2019-02-06 13:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(155) NOT NULL,
  `email` varchar(155) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(155) NOT NULL,
  `password_hint` varchar(100) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 2,
  `avatar` varchar(2000) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `password_hint`, `remember_token`, `role_id`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Ashutosh Kumar Choubey', 'admin@admin.com', NULL, '$2y$10$IDRlMIiXorKrci4p0poPPOxducGKbdLV/gExYtbjb6QtsuytjOXMW', '111111', 'f4ey5LVLioqTP3dCFim4quFectayskln9VUaku4LT8sH74KzJfljECvepMh1', 1, NULL, '2018-12-29 08:16:09', '2019-01-08 23:27:54'),
(2, 'Sai Auto Care', 'saiautocare18@gmail.com', NULL, '$2y$10$9ZwtUlXD.yJInd17D/GMCeo5/zCqjtBjXK4wIxJcZEjZLiGyvEOFS', NULL, NULL, 1, NULL, '2018-12-24 08:19:51', '2018-12-24 08:19:51'),
(16, 'Marketing', 'marketing@marketing.com', NULL, '$2y$10$Sn/tpLjRgWFoI5XvydQ83.gxmkkt1v/sV.bxk9i3jXZBWleMNrS.2', 'marketing', 'lcQYaSszUCITE7f31yjdckBnSgBfngoUvwTW5GZnvzDMnWpeuFAyItlMGOAk', 2, NULL, '2019-01-08 22:32:33', '2019-01-08 22:32:33'),
(17, 'Hemanta parida', 'hemantaparida@gmail.com', NULL, '$2y$10$AeIZ/ML9gflSdQCwcL0vh./pkujgbADYJ1MLmoMoSFWRmkzAy8Kxy', NULL, 'FJ9meZcWbNYPEmDkU0Yu8F1ZngE9zOSA85MYUiTCODxl8PxOczCz9wjOOWQV', 2, NULL, '2019-01-09 20:02:02', '2021-03-27 17:29:13'),
(18, 'babuna', 'Babuna@gmail.com', NULL, '$2y$10$qieNzm0y5BxPA9hot2TZTOXE6NeFXk/J33Fqv1OkAb2ISwipkI5dS', 'babuna123', 'rm2uCgrlk9nodhoOU3TXZPTWtgDktCXwO80MRkCuxyM0A6owZghjH6HpiQC4', 2, NULL, '2019-01-09 20:07:15', '2019-03-06 00:28:34'),
(19, 'susanta parida', 'susanta@gmail.com', NULL, '$2y$10$RD7X6XmGx9QuQmDxFFXn/OGFWtAiJyB09gAjn.ZPghiWxCysLiO6O', NULL, 'iVSqWe32d4H1hfxZ0u0GNHC0RQVFsc7wxkis7SFpS4g1j9hXe5iHAjuEa9vk', 2, NULL, '2019-01-09 23:15:32', '2019-01-09 23:15:32'),
(21, 'The castle inn', 'castleinn@gmail.com', NULL, '$2y$10$YyTv/vShYR7W8aRLHsjckeVGoMTx7orZTEKeWU0FDdgEJBPPLe962', NULL, 'c3oKdc9wMntNrCgNJHezbPi9pKW78CHMJTid50hgwHi7qjYyDw5TJX2H4FFA', 2, NULL, '2019-01-11 22:01:54', '2019-01-11 22:01:54'),
(22, 'azad auto electrical', 'azad@gmail.com', NULL, '$2y$10$lLQJIrq7UFZj79XaLGZE1.itUeMQYb0UwKc/kSLVZZPlQ5GwdPHTi', NULL, '6pf272DmEBwO1dBWZMIA8IQx5NLVUiLynVqHvT50tVr0akC6C4RSROuPOhxH', 2, NULL, '2019-01-16 23:24:23', '2019-01-30 19:13:30'),
(23, 'Chicken Dhanu', 'chicken@gmail.com', NULL, '$2y$10$W0hoJ6846KUGlJrJavNrre3Nj9PmmzX0XkfL/r3zZE2TELmrwmbSq', NULL, 'tBR3QXMRU2UunKIVVZgAFVYXfSpn0EdmuOedNv9mdHNcNOOKEiMcN6FveryY', 2, NULL, '2019-01-22 01:57:08', '2019-01-22 01:57:08'),
(24, 'jubula', 'jubula@gmail.com', NULL, '$2y$10$XX1a2SFvUu2VWsStdx5Fu.KQJ8ZlfN7is/Y9tgcX/BSOSwnpq6I5a', NULL, '7mAE0XDGasOMLImhf5oaK257zFZKl9mLSyAHaCFDd1bZTUa3Kw3k9Ur7qBTc', 2, NULL, '2019-01-25 19:22:23', '2019-01-25 19:22:23'),
(25, 'santosh sahoo', 'santu@gmail.com', NULL, '$2y$10$UFwAHv/AzuSSkTcWqVMfQe/oiwouh6771BmzG5iEDp/PyNpnVnRTy', 'santu123', 'UQBw7WeDIV7LfZrLricyYIRJRXr7cJrXA4XidLwumJDBc1IG4ovdAYrUxWQR', 2, NULL, '2019-02-12 00:26:17', '2019-08-09 02:37:08'),
(26, 'Sujit', 'sujit@gmail.com', NULL, '$2y$10$0WdDonk8l2.JOyf9OqgC5eJ9CxHLJvm3CJ4eVhYiTMCG0ZClxTyG6', NULL, 'YL9N6XfW77fnlFtLycEUyiP5LEvihYz5Ipwn3icMqSOltyrxMVq03R6DrieT', 2, NULL, '2019-10-27 00:18:27', '2019-10-27 00:18:27'),
(27, 'thakur dasmudi', 'thakur@gmail.com', NULL, '$2y$10$6.Qk19dpYmYkgg9KgaKV8uznNZHmV29rJ/P6xcFwLjsfY6NxT067C', 'thakur123', 'CPOxjocLOf7sMWIHoZ6zkfexbdtdZtNUIpalVvWOjkjH7f6qrnC4pdzss8AO', 2, NULL, '2019-11-13 00:58:20', '2019-11-13 00:58:20'),
(28, 'jeffrearoom https://apple.com 3936', 'lannienhicholson155@gmail.com', NULL, '$2y$10$HFlpnFOAbQBLy9z5H17QH.zG9YMMO5oOIYQtHKT7f4dTeh2GkBjJO', NULL, NULL, 2, NULL, '2020-09-19 10:48:42', '2020-09-19 10:48:42'),
(29, 'Tera Baap', 'terabaap@admin.con', NULL, '$2y$10$sLSMD.gBkEuJcM7vMsKwH.5sb/i8TymqPf8GtTHKd93ghj/fKXqwy', NULL, NULL, 2, NULL, '2020-12-03 21:17:27', '2020-12-03 21:17:27'),
(30, 'srinivas', 'srisk992@gmail.com', NULL, '$2y$10$pFhA/9se5Dvf03QPOfHt.u6jhyKtpHY3yz5vEsW9AdlZjQRo0gyN6', NULL, NULL, 2, NULL, '2020-12-31 13:46:00', '2020-12-31 13:46:00'),
(31, 'ijas', 'Ijasshaji80@gmail.com', NULL, '$2y$10$ybc/vTMGZwPdt6c4i4/bwe4pGJLBv7krmFlg3e3/NS5zVYdDMvAPO', NULL, NULL, 2, NULL, '2021-01-06 13:38:19', '2021-01-06 13:38:19'),
(32, 'Abhimanyu Singh', 'abhi2say1@gmail.com', NULL, '$2y$10$lhLDtyRSCvRfHgQSWh1U6.yyYYO//z8z.vMNl/OW2epFk.8HuothG', NULL, NULL, 2, NULL, '2021-08-30 08:01:08', '2021-08-30 08:01:08'),
(33, 'Sudarshan Automotive', 'sudarshanautomotive99@gmail.com', NULL, '$2y$10$mxIlKpOPMrfK3tQFSRbfQOIydwoSqg2EF22vgOYD8N2flfMZsReCu', NULL, 'EjBxw9RG3Jbcj38jaefs9bQAkD7cmJ0hnL3VYnWUUxN737NuOS8WIBGPXmmZ', 2, NULL, '2021-10-21 13:50:12', '2021-10-21 13:50:12'),
(34, 'John', 'Johnsmith@gmail.com', NULL, '$2y$10$ov.5EipbU2YTlq08nR39vO/9tm02hz2vmjrTA4F.NeSobxWJjLXbK', NULL, 'YIVOP1b7iLP45ha33XoFcZdAfqd1LmJZSUh38ToodIjzyEqVAdTSohgaOMJ4', 2, NULL, '2021-10-21 16:19:29', '2021-10-21 16:19:29'),
(35, 'David', 'dangminhman122@gmail.com', NULL, '$2y$10$83OqcHldIttQOyW6WG8ryef9JhDxYJFpIS.rzWVamgwD7WDqEMjw6', NULL, NULL, 2, NULL, '2021-11-20 08:20:09', '2021-11-20 08:20:09'),
(36, 'David', 'vegaslash221@gmail.com', NULL, '$2y$10$juPfqSERPRZPuppxz681Cu7BpXrYVkQ7r2y.ZJdq.y3CQMBGMUBTK', NULL, '6ng2io4BVR657FgRPrZhqgedWUiRWPITDOKQfsNY1UZ8Wxv5dJnuBg1GZc16', 2, NULL, '2021-11-21 06:27:04', '2021-11-21 06:27:04'),
(37, 'AMAR NATH', 'amaru5269@gmail.com', NULL, '$2y$10$lb0B6xTK8tixeG2YXSgyoeuxZ633dAKN.aOwDwpPTN9GCeUA1ZUZC', NULL, 'cWbsPw88lPLfGFVI49KQy67zo4Aehx7PyRlN6n4yyvxH8uf9XZhs1XgdZp1z', 2, NULL, '2021-11-22 22:31:22', '2021-11-22 22:34:37'),
(38, 'M Srinivasulu', 'vachipoddi11@gmail.com', NULL, '$2y$10$PMcrADskED0gXjCLOd5Kdu89d5bEAiUvWrRtFOsJn49IBYRxmM2hS', NULL, '1y7DAN381am6HWeH37u3aFdbiiWaNp1FaREBHGJsx9oYhTlkGOIiUXbfAP8U', 2, NULL, '2022-03-17 17:54:11', '2022-03-17 17:54:11'),
(39, 'Archit khanna', 'architkhanna108@gmail.com', NULL, '$2y$10$JYpT4j6XeXf2R7LyL2jh6ulz9w55x71zKvZwIUMPDQtFcyFmdRFJK', 'SHIVSHIVA', 'pD4IHjQM7YGJyTdNRBQZLHZOsb5JdcsywMgPfFIBbUpKskCPw37zYPKkNWTE', 4, NULL, '2022-04-28 00:36:55', '2022-04-28 01:03:30'),
(40, 'tiavina', 'tiavina83@yahoo.com', NULL, '$2y$10$ECK4rA9fPVLMkjvmDk/1W.j4sVgnbIKw4FATZKncgp./MmE4HtoP2', NULL, 'mBBrg3lo35WfDv1AlSVQW4rdWhkknawOyARwjy529TzEhl0BoHUIxHEWTjbO', 2, NULL, '2022-06-03 13:27:27', '2022-06-03 13:27:27'),
(41, 'YES GARAGE', 'frpclear1@gmail.com', NULL, '$2y$10$FmHT1BI7PkFSfOWsrLup9uBGthSJ6A2mUQ3NbZSyBP3yinb8.MG.S', NULL, NULL, 2, NULL, '2022-06-11 11:27:30', '2022-06-11 11:27:30'),
(42, 'Faisal', '2vmfaisal786@gmail.com', NULL, '$2y$10$CeJrBhTQ7k6jOwK2U3W.zOhkhgMOdvqIKmvJP1Yryyoz7NZEwj3Tm', NULL, NULL, 2, NULL, '2022-07-04 20:11:31', '2022-07-04 20:11:31'),
(43, 'Test', 'test@test.com', NULL, '$2y$10$5OarusXdJJGaO7NSthio1uZFl14BxjLwe5WY51AQXKWYKLIedxbla', NULL, NULL, 2, NULL, '2022-07-07 00:45:36', '2022-07-07 00:45:36'),
(44, 'John Doe', 'megapi9124@aregods.com', NULL, '$2y$10$lt5F96y7lOjJAwWJlg5sluFv7Hp66k6Eu1R16k6EGdi1kROUxj4oe', NULL, NULL, 2, NULL, '2022-08-10 19:00:15', '2022-08-10 19:00:15'),
(45, 'Hossenbaccus wakeel', 'hossenbaccuswakeel@gmail.com', NULL, '$2y$10$ykxE5adQPF2fy.YMZUNmUepnHS707gyfJX19Ckm4AA/DhYCnReRYq', NULL, '3W5SGTNrYFU4KmXk822A13WwDWZEhzRvJUCvqQOm3i3kQcDwSIOBdrLkDDyq', 2, NULL, '2022-08-18 02:05:49', '2022-08-18 02:05:49'),
(46, 'admin', 'admin@adm.com', NULL, '$2y$10$ygeH76oxEd4Og2t2GjBl6uAA1NiwE3LhhIgT70sKCpeDa9Haym2p.', NULL, 'AGquNOHgIIvudwlHINv1RgGUv1IOmxCxZmW0JnaE0kkjAAyToQYwzGBzzxeh', 2, NULL, '2022-09-19 18:42:45', '2022-09-19 18:42:45'),
(47, 'JITENDER', 'PJITENDER70@GMAIL.COM', NULL, '$2y$10$3eiEcXuvG4mI7RE7x0lAFeNBoxQwqqpuaNsV65Bkp1pIIHq4ue47S', NULL, '8rQTMEdP6Jyhfc4OM83jP7vYMy3PKnFJmKyeIP481ecmJD8Ib7lnAmPY3qu6', 2, NULL, '2022-11-22 15:36:47', '2022-11-22 15:36:47'),
(48, 'test', 'test@test.test', NULL, '$2y$10$TZVSNAIcKI1IBDdWjkFHGOkiI7Om32JeonQKr69mmJAxfHk6aWFie', NULL, NULL, 2, NULL, '2022-11-30 21:09:51', '2022-11-30 21:09:51'),
(49, 'Padma Consultancy', 'padmaconsultancyodisha@gmail.com', NULL, '$2y$10$mPOeyxrIaLooN6XhOqEKRORR6lS5.mUbfGowDFjrN4aGi0fZoT7pa', NULL, 'aSibGF3YGnP7mvRlg9lYo2vsfO2Gw5g338BzZJGMuHOSeHmdojd6Dd1w3ikr', 2, NULL, '2022-12-09 11:49:57', '2022-12-09 11:49:57'),
(50, 'Noman Ali', 'nomanlp560@gmail.com', NULL, '$2y$10$xueoMxxxHL/5XGt77xYiVO.TKeCyCKjauF5nGtbsjenCyNhhZ1xuu', NULL, NULL, 2, NULL, '2023-02-28 02:20:36', '2023-02-28 02:20:36'),
(51, 'Ritik Automotive', 'ritikautomotive@gmail.com', NULL, '$2y$10$GHAwja3LfLSr9UoAWmzrWu2ouhxRdXEIgEguzNuv0wnmySwAn5sy2', 'RITIK', 'c5G5YLYpEq4zxI90WClWDBjgGhEfrHTZsQsGcwhQdf9PRVs1cDqz9VJc0A1Y', 4, NULL, '2023-06-06 11:25:22', '2023-06-06 11:31:39'),
(52, 'Cyber', 'nikesh@cyberautomotivesolutions.com', NULL, '$2y$10$oTNSglZQ88kI4APgOZCng.tNhKtOUUiA0BRM/siW2uHNwRPlVOCJq', NULL, NULL, 2, NULL, '2023-07-28 18:41:23', '2023-07-28 18:41:23'),
(53, 'Rizwan', 'rizwan.pp@gmail.com', NULL, '$2y$10$1Dzv2xZXAVes61e/Hz6gW.pC.a9lRWiXzhQKF/obfyTzU6Anw9mmq', NULL, 'kxf5IwX3nQqNu2eYAYT5gks4jyG2QViQQf3iJ15wrO0kzyyVYqpywOybneY7', 2, NULL, '2023-08-11 01:58:54', '2023-08-11 01:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

CREATE TABLE `user_details` (
  `id` bigint(20) NOT NULL,
  `users_id` int(10) DEFAULT NULL,
  `employee_gender` varchar(1000) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `office_address` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(255) DEFAULT NULL,
  `bank_account_name` varchar(255) DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(200) DEFAULT NULL,
  `specimen_of_full_signature` varchar(255) DEFAULT NULL,
  `department_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`id`, `users_id`, `employee_gender`, `Address`, `office_address`, `mobile_number`, `bank_account_name`, `bank_account_no`, `bank_ifsc_code`, `specimen_of_full_signature`, `department_name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(11, 1, 'male', 'plot No-GA,430 Chandrasekharpur, Axis Bank ATM, Sailashree Vihar', 'plot No-GA,430 Chandrasekharpur, Axis Bank ATM, Sailashree Vihar', '9658476170', NULL, NULL, NULL, NULL, 'administrative', '2019-01-08 16:27:54', '2019-01-08 16:27:54', NULL),
(12, 17, 'male', 'bhubaneswar', NULL, '7683855014', NULL, NULL, NULL, NULL, 'other', '2019-01-09 13:02:02', '2021-03-27 17:29:13', NULL),
(13, 18, 'male', NULL, NULL, '7978262599', 'admin@admin.com', NULL, NULL, NULL, 'other', '2019-01-09 13:07:15', '2019-03-05 17:28:34', NULL),
(14, 19, 'male', 'bbsr', NULL, NULL, NULL, NULL, NULL, NULL, 'other', '2019-01-09 16:15:32', '2019-01-09 16:15:32', NULL),
(16, 21, 'male', 'bbsr', 'sbi bank colony,kesura', '9437284700', NULL, NULL, NULL, NULL, 'other', '2019-01-11 15:01:54', '2019-01-11 15:01:54', NULL),
(17, 22, 'male', NULL, NULL, '8908740735', NULL, NULL, NULL, NULL, 'other', '2019-01-16 16:24:23', '2019-01-30 12:13:30', NULL),
(18, 23, 'male', NULL, NULL, '9778696887', NULL, NULL, NULL, NULL, 'other', '2019-01-21 18:57:08', '2019-01-21 18:57:08', NULL),
(19, 24, 'male', NULL, NULL, '9337434455', NULL, NULL, NULL, NULL, 'other', '2019-01-25 12:22:23', '2019-01-25 12:22:23', NULL),
(20, 25, 'male', NULL, NULL, NULL, 'admin@admin.com', NULL, NULL, NULL, NULL, '2019-02-11 17:26:17', '2019-08-08 19:37:08', NULL),
(21, 27, 'male', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'administrative', '2019-11-12 17:58:20', '2019-11-12 17:58:20', NULL),
(22, 37, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-11-22 22:34:37', '2021-11-22 22:34:37', NULL),
(23, 39, 'male', 'BHAGWANDAS VEHICLE TESTING SERVICES PVT LTD SALT LAKE STADIUM BETWEEN GATE NUMBER 1 & 2', NULL, '9339110111', 'architkhanna108@gmail.com', NULL, NULL, NULL, 'other', '2022-04-28 00:52:35', '2022-04-28 01:03:30', NULL),
(24, 51, 'male', 'Tahasil office road semiliguda', NULL, '9437192530', NULL, NULL, NULL, NULL, 'administrative', '2023-06-06 11:30:06', '2023-06-06 11:31:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_details`
--

CREATE TABLE `vehicle_details` (
  `id` int(155) NOT NULL,
  `customer_id` int(155) DEFAULT NULL,
  `workshop_id` int(155) DEFAULT NULL,
  `sale_id` int(155) DEFAULT NULL,
  `vehicle_id` varchar(155) DEFAULT NULL,
  `vehicle_reg_number` varchar(155) DEFAULT NULL,
  `model_year` varchar(155) DEFAULT NULL,
  `brand` int(100) DEFAULT NULL,
  `vin` varchar(155) DEFAULT NULL,
  `fuel_type` varchar(155) DEFAULT NULL,
  `engine_number` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `reg_number` varchar(155) DEFAULT NULL,
  `odometer_reading` varchar(155) DEFAULT NULL,
  `color` varchar(155) DEFAULT NULL,
  `key_number` varchar(155) DEFAULT NULL,
  `due_in` date DEFAULT NULL,
  `due_out` date DEFAULT NULL,
  `model_number` varchar(155) DEFAULT NULL,
  `advisor` varchar(155) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshops`
--

CREATE TABLE `workshops` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(155) DEFAULT NULL,
  `is_workshop` int(11) NOT NULL DEFAULT 1 COMMENT '1=>" workshop ",0=>"sale"',
  `name` varchar(155) NOT NULL,
  `reference` varchar(155) DEFAULT NULL,
  `company` varchar(155) DEFAULT NULL,
  `gst_no` varchar(155) DEFAULT NULL,
  `mobile` varchar(155) DEFAULT NULL,
  `landline` varchar(155) DEFAULT NULL,
  `email` varchar(155) DEFAULT NULL,
  `address` varchar(155) DEFAULT NULL,
  `city` varchar(155) DEFAULT NULL,
  `state` varchar(155) DEFAULT NULL,
  `pin` varchar(155) DEFAULT NULL,
  `vehicle_reg_number` varchar(155) DEFAULT NULL,
  `model_year` varchar(155) DEFAULT NULL,
  `company_name` varchar(155) DEFAULT NULL,
  `model_number` varchar(155) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `vin` varchar(155) DEFAULT NULL,
  `reg_number` varchar(155) DEFAULT NULL,
  `odometer_reading` varchar(155) DEFAULT NULL,
  `color` varchar(155) DEFAULT NULL,
  `fuel_type` varchar(155) DEFAULT NULL,
  `engine_number` varchar(155) DEFAULT NULL,
  `key_number` varchar(155) DEFAULT NULL,
  `due_in` varchar(155) DEFAULT NULL,
  `due_out` varchar(155) DEFAULT NULL,
  `status` varchar(155) DEFAULT NULL,
  `is_complete` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=>no,1=>yes',
  `advisor` varchar(155) DEFAULT NULL,
  `notes` varchar(155) DEFAULT NULL,
  `paid_price` double(155,5) DEFAULT 0.00000,
  `installmentPayment` double(155,2) DEFAULT 0.00,
  `discount_price` double(155,2) DEFAULT 0.00,
  `balance_price` double(155,2) DEFAULT 0.00,
  `grandTotal` double(155,2) NOT NULL DEFAULT 0.00,
  `serviceGST` tinyint(1) DEFAULT 1,
  `submited_part` varchar(100) DEFAULT NULL,
  `others_submited_part` varchar(100) DEFAULT NULL,
  `workshop_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_products`
--

CREATE TABLE `workshop_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` float(100,2) DEFAULT NULL,
  `workshop_product_model` int(100) DEFAULT NULL,
  `workshop_product_brand` int(100) DEFAULT NULL,
  `is_returned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_products_estimateds`
--

CREATE TABLE `workshop_products_estimateds` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id_es` int(11) NOT NULL,
  `workshop_id_es` int(11) NOT NULL,
  `product_quantity_es` bigint(11) DEFAULT NULL,
  `product_price_es` float(100,2) DEFAULT NULL,
  `workshop_product_model_es` int(100) DEFAULT NULL,
  `workshop_product_brand_es` int(100) DEFAULT NULL,
  `is_returned_es` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `workshop_services`
--

CREATE TABLE `workshop_services` (
  `id` int(10) UNSIGNED NOT NULL,
  `service_type_id` int(100) DEFAULT NULL,
  `service_id` int(11) NOT NULL,
  `workshop_id` int(11) NOT NULL,
  `service_quantity` int(11) DEFAULT 1,
  `workshop_service_model` int(100) DEFAULT NULL,
  `workshop_service_brand` int(100) DEFAULT NULL,
  `service_price` float(100,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credit_debit_details`
--
ALTER TABLE `credit_debit_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_debit_logs`
--
ALTER TABLE `customer_debit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `documentations`
--
ALTER TABLE `documentations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_links`
--
ALTER TABLE `header_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `modals`
--
ALTER TABLE `modals`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brand_name` (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_saled_logs`
--
ALTER TABLE `product_saled_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchases`
--
ALTER TABLE `purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `return_spare_logs`
--
ALTER TABLE `return_spare_logs`
  ADD KEY `id` (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_names`
--
ALTER TABLE `service_names`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_saled_logs`
--
ALTER TABLE `service_saled_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_types`
--
ALTER TABLE `service_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `submiter_part_details`
--
ALTER TABLE `submiter_part_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_debit_logs`
--
ALTER TABLE `supplier_debit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testing`
--
ALTER TABLE `testing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_details`
--
ALTER TABLE `user_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshops`
--
ALTER TABLE `workshops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_products`
--
ALTER TABLE `workshop_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_products_estimateds`
--
ALTER TABLE `workshop_products_estimateds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `workshop_services`
--
ALTER TABLE `workshop_services`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `credit_debit_details`
--
ALTER TABLE `credit_debit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_debit_logs`
--
ALTER TABLE `customer_debit_logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `documentations`
--
ALTER TABLE `documentations`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `header_links`
--
ALTER TABLE `header_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `markets`
--
ALTER TABLE `markets`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `modals`
--
ALTER TABLE `modals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_saled_logs`
--
ALTER TABLE `product_saled_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchases`
--
ALTER TABLE `purchases`
  MODIFY `id` int(155) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_invoices`
--
ALTER TABLE `purchase_invoices`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_returns`
--
ALTER TABLE `purchase_returns`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `return_spare_logs`
--
ALTER TABLE `return_spare_logs`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_names`
--
ALTER TABLE `service_names`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_saled_logs`
--
ALTER TABLE `service_saled_logs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_types`
--
ALTER TABLE `service_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `submiter_part_details`
--
ALTER TABLE `submiter_part_details`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supplier_debit_logs`
--
ALTER TABLE `supplier_debit_logs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testing`
--
ALTER TABLE `testing`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `vehicle_details`
--
ALTER TABLE `vehicle_details`
  MODIFY `id` int(155) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshops`
--
ALTER TABLE `workshops`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop_products`
--
ALTER TABLE `workshop_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop_products_estimateds`
--
ALTER TABLE `workshop_products_estimateds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `workshop_services`
--
ALTER TABLE `workshop_services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
