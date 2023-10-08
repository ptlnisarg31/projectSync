-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2023 at 04:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garage`
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

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(0, 'NA', NULL, NULL, NULL),
(1, 'ace', NULL, NULL, NULL),
(2, 'Honda', NULL, NULL, NULL),
(3, 'Hundai', NULL, NULL, NULL),
(4, 'TOYATA', NULL, NULL, NULL),
(5, 'Volkas wagen', NULL, NULL, NULL),
(6, 'Nissan', NULL, NULL, NULL),
(7, 'Ford', NULL, NULL, NULL),
(8, 'Mahindra', NULL, NULL, NULL),
(9, 'Toyota', NULL, NULL, NULL),
(10, 'Renault', NULL, NULL, NULL),
(11, 'LUBRICANT', NULL, NULL, NULL),
(12, 'colour material', NULL, NULL, NULL),
(13, 'accessories', NULL, NULL, NULL),
(14, 'electrical', NULL, NULL, NULL),
(15, 'common item', NULL, NULL, NULL),
(16, 'Chevrolet', NULL, NULL, NULL),
(17, 'Fiat', NULL, NULL, NULL),
(18, 'Battery', NULL, NULL, NULL),
(19, 'Tyre', NULL, NULL, NULL),
(20, 'Force', NULL, NULL, NULL),
(21, 'BHARAT BENZ', NULL, NULL, NULL),
(22, '1617R', NULL, NULL, NULL),
(23, 'Hero', NULL, NULL, NULL),
(24, 'naim', NULL, NULL, NULL),
(25, 'SWIFT', NULL, NULL, NULL),
(26, 'TATA', NULL, NULL, NULL),
(27, 'TATA', NULL, NULL, NULL),
(28, 'MARUTI SUZUKI', NULL, NULL, NULL),
(29, 'TATA INDICA', NULL, NULL, NULL),
(30, 'WAGEN', NULL, NULL, NULL),
(31, 'GOOD YEAR', NULL, NULL, NULL),
(32, 'EDGE', NULL, NULL, NULL),
(33, 'ZIC', NULL, NULL, NULL),
(34, 'CASTROL', NULL, NULL, NULL),
(35, 'WURTH', NULL, NULL, NULL),
(36, 'SHELL HELIX', NULL, NULL, NULL),
(37, 'CASTROL SUV', NULL, NULL, NULL),
(38, 'MGDO', NULL, NULL, NULL),
(39, 'SPIRAX', NULL, NULL, NULL),
(40, 'MACHENICAL LABOUR', NULL, NULL, NULL),
(41, 'KHRAD', NULL, NULL, NULL),
(42, 'WASHING', NULL, NULL, NULL),
(43, 'ALIGNMENT', NULL, NULL, NULL),
(44, 'ENGINE FLUSH', NULL, NULL, NULL),
(45, 'TATA', NULL, NULL, NULL),
(46, 'SKODA', NULL, NULL, NULL),
(47, 'HORN', NULL, NULL, NULL),
(48, 'AC GAS', NULL, NULL, NULL),
(49, 'STEARING OIL', NULL, NULL, NULL),
(50, 'MAIN SEAL', NULL, NULL, NULL),
(51, 'FOG LIGHT', NULL, NULL, NULL),
(52, 'BATTERY', NULL, NULL, NULL),
(53, 'BEARING', NULL, NULL, NULL),
(54, 'BOOT', NULL, NULL, NULL),
(55, 'PIPE', NULL, NULL, NULL),
(56, 'WIRE', NULL, NULL, NULL),
(57, 'PIPE', NULL, NULL, NULL),
(58, 'LINING', NULL, NULL, NULL),
(59, 'BONNET', NULL, NULL, NULL),
(60, 'SPRAY', NULL, NULL, NULL),
(61, 'GLASS', NULL, NULL, NULL),
(62, 'BELT', NULL, NULL, NULL),
(63, 'BUSH', NULL, NULL, NULL),
(64, 'KIT', NULL, NULL, NULL),
(65, 'MACHINE', NULL, NULL, NULL),
(66, 'BULB', NULL, NULL, NULL),
(67, 'TIE LOCK', NULL, NULL, NULL),
(68, 'MOUNT', NULL, NULL, NULL),
(69, 'SHOCKER', NULL, NULL, NULL),
(70, 'LIGHT', NULL, NULL, NULL),
(71, 'LOCK', NULL, NULL, NULL),
(72, 'NUT BOLT', NULL, NULL, NULL),
(73, 'ROLA', NULL, NULL, NULL),
(74, 'COOLANT', NULL, NULL, NULL),
(75, 'GREECE', NULL, NULL, NULL),
(76, 'MITSUBISHI', NULL, NULL, NULL),
(77, 'REPAIR', NULL, NULL, NULL),
(78, 'ISUZU', NULL, NULL, NULL),
(79, 'YAMAHA', NULL, NULL, NULL),
(80, 'BMW', NULL, NULL, NULL),
(81, 'VAN', NULL, NULL, NULL),
(82, 'AUDI', NULL, NULL, NULL),
(83, 'JEEP', NULL, NULL, NULL),
(84, 'KTM', NULL, NULL, NULL),
(85, 'xom', NULL, NULL, NULL),
(86, 'laaal', NULL, NULL, NULL);

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

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `customer_contact_number`, `customer_alt_number`, `customer_email`, `customer_address`, `customer_gstin`, `created_by`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Avadh', '9898346578', NULL, 'avadh@gmail.com', NULL, 'GSTIN12645', 1, 1, '2023-10-07 19:01:08', '2023-10-08 13:52:40', NULL),
(2, 'Jane Smith', '5551234567', NULL, 'jane.smith@example.com', '456 Elm Avenue, Town', 'GSTIN67890', 1, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(3, 'Amit Patel', '7778889999', '1112223333', 'amit.patel@example.com', '789 Oak Road, Village', 'GSTIN54321', 2, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(4, 'Sara Khan', '9876543210', '5554443333', 'sara.khan@example.com', '567 Maple Lane, City', 'GSTIN09876', 2, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(5, 'Raj Sharma', '1233211233', '7778887777', 'raj.sharma@example.com', '678 Birch Street, Town', 'GSTIN45678', 1, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(6, 'Priya Verma', '8887776666', NULL, 'priya.verma@example.com', '890 Pine Avenue, Village', 'GSTIN98765', 3, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(7, 'Rahul Mehta', '3332221111', '4445556666', 'rahul.mehta@example.com', '901 Cedar Road, City', 'GSTIN23456', 4, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(8, 'Deepak Saxena', '2223334444', NULL, 'deepak.saxena@example.com', '234 Oak Street, Town', 'GSTIN76543', 4, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(9, 'Neha Gupta', '9998887777', '1231231234', 'neha.gupta@example.com', '345 Redwood Lane, Village', 'GSTIN78901', 3, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(10, 'Anita Singh', '4445556666', '7777777777', 'anita.singh@example.com', '456 Maple Avenue, City', 'GSTIN32109', 2, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(11, 'Sanjay Kumar', '1112223333', '5555555555', 'sanjay.kumar@example.com', '567 Birch Road, Town', 'GSTIN65432', 1, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(12, 'Pooja Sharma', '7777777777', '8888888888', 'pooja.sharma@example.com', '678 Elm Street, Village', 'GSTIN54321', 3, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(13, 'Vijay Verma', '2222222222', NULL, 'vijay.verma@example.com', '789 Cedar Avenue, City', 'GSTIN87654', 2, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(14, 'Reena Gupta', '5555555555', '9999999999', 'reena.gupta@example.com', '890 Pine Road, Town', 'GSTIN23456', 4, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(15, 'Ravi Kumar', '8888888888', '6666666666', 'ravi.kumar@example.com', '901 Redwood Street, Village', 'GSTIN76543', 1, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(16, 'Aarti Singh', '1111111111', NULL, 'aarti.singh@example.com', '234 Cedar Lane, City', 'GSTIN87654', 3, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(17, 'Manish Saxena', '6666666666', '3333333333', 'manish.saxena@example.com', '345 Pine Road, Town', 'GSTIN32109', 2, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(18, 'Neeraj Sharma', '9999999999', '4444444444', 'neeraj.sharma@example.com', '456 Elm Avenue, Village', 'GSTIN78901', 1, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(19, 'Alisha Verma', '4444444444', '8888888888', 'alisha.verma@example.com', '567 Redwood Street, City', 'GSTIN12345', 4, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL),
(20, 'Suresh Kumar', '3333333333', NULL, 'suresh.kumar@example.com', '678 Cedar Lane, Town', 'GSTIN67890', 3, 1, '2023-10-08 13:50:40', '2023-10-08 13:50:40', NULL);

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
('2vmfaisal786@gmail.com', '$2y$10$HtoUhlpHrmItUPjcaZHBIuyxQ1wV3v6LQ6aM4jVTAG/2WEpb6Sese', '2022-07-05 09:53:14'),
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

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `company_name`, `model_number`, `hsn`, `unit_price`, `unit_price_exit`, `gst`, `stock_in`, `stock_out`, `stock_available`, `deleted_at`, `created_at`, `updated_at`) VALUES
(11, 'Engine oil DSL/5ltr (Servo)', '11', '85', '15w40', 1000.00, 1650.00, 0.00, 24.00, 24.00, -44.00, NULL, NULL, NULL),
(12, 'Engine oil petrol/3ltr(servo)', '11', '85', '15w30', 600.00, 900.00, 0.00, 33.00, 32.00, -130.00, NULL, NULL, NULL),
(13, 'Gear oil(servo)', '11', '85', '2.5ltr', 550.00, 800.00, 0.00, 20.00, 20.00, -25.00, NULL, NULL, NULL),
(14, 'Maskin Tape', '12', '84', '3919', 29.66, 40.00, 18.00, 231.00, 210.00, -689.00, NULL, NULL, NULL),
(15, 'Break oil', '11', '85', 'per/pc', 90.00, 130.00, 0.00, 60.00, 54.00, -192.00, NULL, NULL, NULL),
(16, 'Thinner 1ltr (Wurth)', '12', '84', 'per/ltr', 220.00, 250.00, 0.00, 129.00, 126.00, -371.00, NULL, NULL, NULL),
(17, 'clear', '12', '84', 'per/ltr', 750.00, 750.00, 0.00, 60.00, 56.00, -175.00, NULL, NULL, NULL),
(18, 'Hardner', '12', '84', '500ml', 350.00, 400.00, 0.00, 71.00, 66.00, -238.00, NULL, NULL, NULL),
(19, 'Disc paper', '12', '84', 'per/pc', 35.00, 35.00, 0.00, 10.00, 0.00, 10.00, NULL, NULL, NULL),
(20, 'Disc paper', '12', '84', 'per/pc', 35.00, NULL, NULL, 5.00, 0.00, 5.00, NULL, NULL, NULL),
(21, 'Disc paper', '12', '84', 'per /pc', 35.00, NULL, NULL, 10.00, 0.00, 10.00, NULL, NULL, NULL),
(22, 'Disc paper', '12', '84', 'per/pc', 35.00, NULL, NULL, 5.00, 0.00, 5.00, NULL, NULL, NULL),
(23, 'Rediator censor (Type V)', '2', '46', 'imp', 350.00, 550.00, 0.00, 4.00, 3.00, -20.00, NULL, NULL, NULL),
(24, 'Ariel(Roof)', '2', '46', 'Type5', 350.00, 350.00, NULL, 2.00, 0.00, 1.00, NULL, NULL, NULL),
(25, 'Windshield front (2016)', '1', '3', '70072190', 3050.85, 2850.00, 18.00, 3.00, 0.00, 1.00, NULL, NULL, NULL),
(26, 'Bonet assy', '1', '80', 'old', 2000.00, 2000.00, 0.00, 5.00, 5.00, -76.00, NULL, NULL, NULL),
(27, 'Dicky glass(2016)', '1', '80', '70071100', 1144.00, 1250.00, 18.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(28, 'Door glass front LH (2010 model)', '1', '80', '70071100', 677.97, 677.97, 18.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(29, 'bonet assy', '1', '80', 'hgfhjj', 5600.00, 5600.00, 18.00, 1.00, 0.00, 0.00, NULL, NULL, NULL),
(30, 'bonet hing', '1', '80', 'fhgh', 120.00, 120.00, 18.00, 4.00, 4.00, -90.00, NULL, NULL, NULL),
(31, 'Bonet luck', '1', '80', 'hgj', 160.00, 160.00, 18.00, 1.00, 1.00, -25.00, NULL, NULL, NULL),
(32, 'PPG bilux putty 1kg', '12', '84', 'BILUX', 204.00, 204.00, 18.00, 133.00, 123.00, -621.00, NULL, NULL, NULL),
(33, 'Dash board shiner', '13', '83', '34039900', 95.00, 95.00, 18.00, 7.00, 4.00, -4.00, NULL, NULL, NULL),
(34, 'Coolant 1ltr(wurth)', '11', '85', '27101219', 160.00, 340.00, 18.00, 37.00, 30.00, -180.00, NULL, NULL, NULL),
(35, 'Battery terminal coating 150ml', '13', '83', '32081090', 95.00, 95.00, 18.00, 1.00, 0.00, 0.00, NULL, NULL, NULL),
(36, 'Spray grease 500ml', '11', '85', '34039900', 160.00, 160.00, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(37, 'loctite rust bust 70gm', '13', '83', '34031900', 80.51, 80.51, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(38, 'car wash sampoo 1ltr', '13', '83', '34022020', 224.00, 224.00, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(39, 'All in one 150ml', '13', '83', '34039900', 95.00, 95.00, 18.00, 1.00, 0.00, 0.00, NULL, NULL, NULL),
(40, 'Head lamp assy RH', '5', '55', 'imp', 2700.00, 2700.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(41, 'Head lamp assy LH', '5', '55', 'ipm', 2700.00, 2700.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(42, 'Head light bracket lower LH', '5', '55', 'imp', 450.00, 450.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(43, 'Head light bracket upper LH', '5', '55', 'imp', 300.00, 300.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(44, 'Battery tray', '5', '55', 'imp', 940.00, 940.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(45, 'Head light clip', '5', '55', 'ipm', 120.00, 120.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(46, 'condenser rubber', '5', '55', 'imp', 263.00, 263.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(47, 'clutch cyllinder', '4', '86', 'imp', 2100.00, 2100.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(48, 'clutch pedal luck', '4', '86', 'imp', 150.00, 150.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(49, 'Diesel filter', '1', '89', '8421', 906.90, 906.90, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(50, 'Break shoe', '6', '33', 'imp', 1000.00, 1000.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(51, 'clutch set', '4', '86', 'imp', 2350.00, 2350.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(52, 'clutch bearing', '4', '86', 'imp', 500.00, 500.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(53, 'A/C compressor', '1', '87', '8708', 7000.00, 7800.00, 18.00, 3.00, 2.00, -45.00, NULL, NULL, NULL),
(54, 'Air cleaner assy', '1', '80', 'imp', 1200.00, 1200.00, 0.00, 1.00, 1.00, -24.00, NULL, NULL, NULL),
(55, 'Fuel pump motor(diesel)', '16', '90', 'imp', 1250.00, 1250.00, 0.00, 2.00, 2.00, -13.00, NULL, NULL, NULL),
(56, 'Glass paste(beta seal)', '13', '83', 'imp', 381.36, 510.36, 18.00, 34.00, 31.00, -189.00, NULL, NULL, NULL),
(57, 'Windshield glass front(2018)', '1', '80', 'hgj', 3050.85, 3050.85, 18.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(58, 'Disc paper 80/N', '12', '84', 'wurth', 35.00, 35.00, 0.00, 30.00, 0.00, 0.00, NULL, NULL, NULL),
(59, 'Disc paper 120/N', '12', '84', 'wurth', 35.00, 35.00, 0.00, 10.00, 0.00, 0.00, NULL, NULL, NULL),
(60, 'Disc paper 220/N', '12', '84', 'wurth', 35.00, 35.00, 0.00, 5.00, 0.00, 0.00, NULL, NULL, NULL),
(61, 'OIL Filter DSL', '1', '80', 'MGP', 360.00, NULL, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(62, 'Battery 65amp swift vdi(Sf sonic)', '1', '88', 'AJF8B0205935F83', 5630.00, 5630.00, 0.00, 1.00, 1.00, -18.00, NULL, NULL, NULL),
(63, 'Battery 32R (sf sonic)', '1', '87', 'AJJ8E0228899', 2444.00, 2444.00, 0.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(64, 'A/c pipe high pressure switch', '1', '87', 'imp', 350.00, 350.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(65, 'mirror assy inside rear view', '1', '80', 'imp', 500.00, 500.00, 0.00, 1.00, 1.00, -24.00, NULL, NULL, NULL),
(66, 'Hinge,front hood R', '1', '75', '8708', 125.00, 125.00, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(67, 'Hinge front hood L', '1', '75', '8708', 125.00, 125.00, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(68, 'cross member,front lower', '1', '75', '8708', 1082.81, 1082.81, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(69, 'Member lamp support R', '1', '75', '8708', 146.87, 146.87, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(70, 'Brace lamp support R', '1', '75', '8708', 148.43, NULL, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(71, 'Brace hood luck', '1', '75', '8708', 118.75, 118.75, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(72, 'molding windshield upper', '1', '75', '8708', 675.00, 675.00, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(73, 'Bonet hing', '1', '80', 'ghjh', 120.00, NULL, 18.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(74, 'Fender assy RH (Type 3)', '1', '80', 'OLD', 600.00, 600.00, 0.00, 3.00, 3.00, -19.00, NULL, NULL, NULL),
(75, 'Tie member upper', '1', '80', 'old', 600.00, 600.00, 0.00, 2.00, 2.00, -45.00, NULL, NULL, NULL),
(76, 'Tie member middle', '1', '80', 'old', 600.00, 600.00, 0.00, 2.00, 2.00, -45.00, NULL, NULL, NULL),
(77, 'Tie member lower', '1', '80', 'old', 600.00, 600.00, 0.00, 2.00, 2.00, -45.00, NULL, NULL, NULL),
(78, 'side mirror assy RH (2016)Automatic', '1', '80', 'imp', 2000.00, 2000.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(79, 'Mirror assy LH 2016', '1', '87', 'imp', 1000.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(80, 'Horn Roots vibro mini', '14', '82', 'imp', 600.00, 650.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(81, 'Head lamp assy RH 2016', '1', '80', 'hgfhg', 1639.83, 1639.83, 18.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(82, 'Head lamp assy LH 2016', '1', '80', 'dfg', 1639.83, 1639.83, 18.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(83, 'Front bumper 2016 type 3 old', '1', '80', 'old', 1000.00, 1000.00, 0.00, 1.00, 1.00, -21.00, NULL, NULL, NULL),
(84, 'Holder FR bumper side RH', '1', '80', '8708', 53.90, 53.90, 28.00, 1.00, 1.00, -25.00, NULL, NULL, NULL),
(85, 'Holder FR Bumper side LH', '1', '80', '8708', 53.90, 53.90, 19.00, 1.00, 1.00, -25.00, NULL, NULL, NULL),
(86, 'Front grill Upper(Type3)', '1', '87', '8708', 1285.16, 1285.16, 28.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(87, 'Fog lamp cover RH Type 3', '1', '80', '8708', 50.00, 55.00, 28.00, 1.00, 1.00, -26.00, NULL, NULL, NULL),
(88, 'Fog lamp cover LH Type 3', '1', '80', '8708', 50.00, 55.00, 28.00, 1.00, 1.00, -26.00, NULL, NULL, NULL),
(89, 'Fender liner RH', '1', '80', '8708', 265.62, 265.62, 28.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(90, 'Fender liner LH', '1', '3', '8708', 265.62, NULL, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(91, 'Cover comp, FR Bumper lower 2pc', '1', '80', '8708', 304.68, 304.68, 28.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(92, 'Fog lamp assy RH (Type 3)', '1', '80', '8512', 664.40, 664.40, 18.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(93, 'Fog lamp assy LH (Type 3)', '1', '80', '8512', 664.40, 664.40, 18.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(94, 'Door glass Rear RH(2016)', '1', '80', '70071100', 677.97, 730.00, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(95, 'Dicky glass (2010)', '1', '80', '70071100', 1144.07, 1650.35, 18.00, 2.00, 2.00, -33.00, NULL, NULL, NULL),
(96, 'Holder Rear bumper RH', '1', '80', 'edgf', 120.00, 120.00, 28.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(97, 'Holder Rear bumper LH', '1', '80', '8708', 53.90, 53.90, 28.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(98, 'Tail lamp RH (Type 3)', '1', '80', 'adad', 1100.00, 1100.00, 18.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(99, 'Tail lamp LH (Type 3)', '1', '80', 'sfds', 1100.00, 1100.00, 18.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(100, 'Mud flap set', '1', '80', 'sfds', 360.00, 360.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(101, 'Wheel Rim', '1', '80', 'old', 600.00, 700.00, 0.00, 4.00, 4.00, -61.00, NULL, NULL, NULL),
(102, 'Glass channel Rear RH', '1', '80', 'dfh', 350.00, 350.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(103, 'Roof areal type 3', '1', '80', 'dgfd', 650.00, 650.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(104, 'Rediator bush', '1', '87', 'hgdf', 50.00, 50.00, 0.00, 0.00, 0.00, -2.00, NULL, NULL, NULL),
(105, 'Tyre (165/80 R 14)', '1', '80', 'MRF', 2200.00, 2200.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(106, 'Member lamp support RH (type 3)', '1', '80', '8708', 146.87, 146.87, 28.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(107, 'Member lamp support LH(Type 3)', '1', '80', '8708', 146.87, NULL, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(108, 'Front shocker RH (Type 3)', '1', '80', 'fdf', 1700.00, 1700.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(109, 'Front shocker LH (Type 3)', '1', '80', 'sfd', 1700.00, 1700.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(110, 'Lower arm RH', '1', '80', 'old', 800.00, 800.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(111, 'Lower arm LH', '1', '80', 'old', 800.00, 800.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(112, 'Remote horn', '1', '80', 'dgdg', 350.00, 350.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(113, 'Fusec box cover (Type 3)', '1', '87', 'hjtf', 120.00, 120.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(114, 'Fender assy LH(Type 3)', '1', '80', 'old', 600.00, 600.00, 0.00, 2.00, 2.00, -22.00, NULL, NULL, NULL),
(115, 'Door assy Rear RH', '1', '80', 'old', 2200.00, 2200.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(116, 'Fender liner LH', '1', '80', '8708', 340.00, 360.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(117, 'windshield glass front(2016)', '1', '80', '70011700', 3050.85, 3100.00, 18.00, 2.00, 2.00, -13.00, NULL, NULL, NULL),
(118, 'Comb switch RH', '1', '80', 'imp', 746.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(119, 'Comb switch LH', '1', '87', 'imp', 746.00, 746.00, 0.00, 1.00, 1.00, -38.00, NULL, NULL, NULL),
(120, 'comb switch', '1', '87', 'imp', 746.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(121, 'Comb switch RH', '1', '87', 'imp', 746.00, 746.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(122, 'Rear tube', '1', '80', 'old', 7500.00, 7500.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(123, 'Condenser assy', '6', '33', 'Imp', 3000.00, 3000.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(124, 'Power window switch( Type5)', '2', '46', 'Imp', 1800.00, 1800.00, 0.00, 2.00, 2.00, -18.00, NULL, NULL, NULL),
(125, 'Mudflap set(Type5)', '2', '46', 'Imp', 250.00, 250.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(126, 'disc paper 320/N', '12', '84', 'wurth', 35.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(127, 'Disc paper 600/N', '12', '84', 'Wurth', 35.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(128, 'Disc Paper', '12', '84', 'Wurth', 35.00, 40.00, 0.00, 317.00, 277.00, -1213.00, NULL, NULL, NULL),
(129, 'Qtr Glass Rear RH', '1', '80', '70072190', 275.40, 275.40, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(130, 'Front windshield', '1', '10', '70072190', 2161.08, 2161.08, 18.00, 1.00, 1.00, -19.00, NULL, NULL, NULL),
(131, 'windshield glass front Tye 2', '1', '80', '70072190', 2372.86, 2372.86, 18.00, 1.00, 1.00, -23.00, NULL, NULL, NULL),
(132, 'windshield front Type 3', '1', '75', '70072190', 2288.00, 2288.00, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(133, 'Glass Front door LH', '1', '75', '70071100', 635.63, 635.63, 18.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(134, 'side mirror assy LH (2016) Automatic', '1', '80', 'imp', 2000.00, 2000.00, 0.00, 3.00, 2.00, -21.00, NULL, NULL, NULL),
(135, 'Monogram set (Type v)', '2', '46', 'imp', 380.00, 380.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(136, 'A/C pannel switch (TYpe II)', '1', '80', 'imp', 1600.00, 1600.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(137, 'A/C pannel switch (Type III)', '1', '80', 'imp', 1600.00, 1600.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(138, 'Latch luck Rear RH', '8', '41', 'imp', 650.00, 650.00, 0.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(139, 'side mirror assy RH (2010)Type II', '1', '80', 'imp', 1000.00, 1000.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(140, 'Side mirror Assy LH (2010)Type II', '1', '80', 'imp', 1000.00, 1000.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(141, 'Hand break lever(Type II)', '1', '80', 'imp', 850.00, 850.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(142, 'Immobilizer(Type II)', '1', '80', 'imp', 1150.00, 1150.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(143, 'ceiling assy (Type II)', '1', '80', 'old', 1500.00, 1700.00, 0.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(144, 'Eye piece RH (Type III)', '1', '80', '8708', 330.00, NULL, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(145, 'Dash board (Type II)', '1', '80', 'old', 2700.00, 3200.00, 0.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(146, 'condenser assy (TypeII)', '1', '11', '8708', 2700.00, 3220.00, 18.00, 1.00, 1.00, -23.00, NULL, NULL, NULL),
(147, 'Rediator(Type II)', '1', '88', 'old', 2200.00, 2500.00, 0.00, 2.00, 2.00, -32.00, NULL, NULL, NULL),
(148, 'Intercooler (TypeII)', '1', '88', 'old', 1800.00, 2200.00, 0.00, 1.00, 1.00, -5.00, NULL, NULL, NULL),
(149, 'Gear box c plate (Type I)', '8', '42', 'Imp', 360.00, 360.00, 0.00, 1.00, 1.00, -18.00, NULL, NULL, NULL),
(150, 'Ceiling light', '8', '41', 'Imp', 550.00, 850.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(151, 'Air cleaner assy', '1', '87', 'imp', 1113.00, 1113.00, 0.00, 2.00, 1.00, -1.00, NULL, NULL, NULL),
(152, 'Door rubber set (Type V)', '2', '46', 'imp', 2500.00, 2500.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(153, 'Door gola bidding set(Type v)', '2', '46', 'imp', 800.00, 800.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(154, 'Roof bidding set(Type v)', '2', '46', 'imp', 750.00, 750.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(155, 'Glass channel FR RH', '1', '91', 'imp', 200.00, 200.00, 0.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(156, 'wiper tank', '1', '91', 'imp', 300.00, 300.00, 0.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(157, 'Ignition coil (Type V)', '2', '46', 'imp', 2200.00, 3500.00, 0.00, 4.00, 3.00, -45.00, NULL, NULL, NULL),
(158, 'Side body pannel door LH', '1', '91', 'imp', 2000.00, 2000.00, 0.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(159, 'Bonet luck', '1', '92', 'imp', 300.00, 300.00, 0.00, 1.00, 0.00, 0.00, NULL, NULL, NULL),
(160, 'fender lining RH', '16', '90', 'imp', 589.00, 589.00, 0.00, 2.00, 2.00, -11.00, NULL, NULL, NULL),
(161, 'Fender lining LH', '16', '90', 'imp', 589.00, 589.00, 0.00, 2.00, 2.00, -11.00, NULL, NULL, NULL),
(162, 'Front bumper bracket set', '16', '90', 'imp', 362.00, 362.00, 0.00, 3.00, 3.00, -15.00, NULL, NULL, NULL),
(163, 'Rear bumper bracket set', '16', '90', 'imp', 420.00, 420.00, 0.00, 2.00, 2.00, -16.00, NULL, NULL, NULL),
(164, 'inner fiber 11710M74LAO (Type V)', '2', '46', 'imp', 890.00, 890.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(165, 'inner fiber 11610M74LAO(Type V)', '2', '46', 'imp', 2465.00, 2465.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(166, 'inner fiber 11620M74LAO(Type V)', '2', '46', 'imp', 1250.00, 1250.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(167, 'Fiber itm 81140TMD01ZA', '2', '46', 'imp', 1482.00, 1482.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(168, 'Fiber item(83742TM0T01ZC(Type V)', '2', '46', 'imp', 184.00, 184.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(169, 'Fiber item(83542TMOT01ZC)(Type v)', '2', '46', 'imp', 204.00, 204.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(170, 'Fiber item(T2410TMoT01)(Type v)', '2', '46', 'imp', 741.00, 741.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(171, 'Fiber item(72450TMoT01)(TypeV)', '2', '46', 'imp', 678.00, 678.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(172, 'Dry sander', '14', '82', '00', 11000.00, 11000.00, 18.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(173, 'wiper blade set', '6', '33', 'imp', 300.00, 300.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(174, 'Oil filter', '6', '33', 'imp', 371.00, 371.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(175, 'Side mirror cover RH', '1', '80', '8708', 300.00, 350.00, 28.00, 2.00, 2.00, -44.00, NULL, NULL, NULL),
(176, 'H L Assy RH', '4', '94', 'imp', 7500.00, 7500.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(177, 'Fog lamp cover RH', '4', '94', 'imp', 550.00, 550.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(178, 'Fender bracket small RH', '4', '94', 'imp', 250.00, 250.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(179, 'Fender bracket Big', '4', '94', 'imp', 950.00, 950.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(180, 'Liquid pipe A/C', '1', '88', 'imp', 550.00, 750.00, 0.00, 2.00, 2.00, -16.00, NULL, NULL, NULL),
(181, 'Front glass', '1', '12', '70072190', 3474.00, 3474.00, 18.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(182, 'front glass', '1', '80', '70072190', 2800.00, NULL, 18.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(183, 'Front door RH glass', '1', '95', '70071100', 635.00, 635.00, 18.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(184, 'OIL Filter DSL', '7', '62', 'imp', 400.00, 450.00, 0.00, 2.00, 2.00, -20.00, NULL, NULL, NULL),
(185, 'Head gasket', '1', '6', '8484', 257.00, 280.00, 18.00, 11.00, 4.00, -24.00, NULL, NULL, NULL),
(188, 'Front grill upper', '16', '97', 'imp', 2091.00, 3500.00, 0.00, 1.00, 1.00, -7.00, NULL, NULL, NULL),
(189, 'water jacket elbow', '4', '98', 'imp', 175.00, 240.00, 0.00, 2.00, 2.00, -16.00, NULL, NULL, NULL),
(190, 'wheel cap type V', '2', '46', 'old', 300.00, 400.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(191, 'ignition coil type V', '2', '46', 'imp', 2000.00, 3500.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(192, 'Roof areal antena type V', '2', '46', 'imp', 150.00, 250.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(193, 'A/C switch Type V', '2', '46', 'imp', 750.00, 1250.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(194, 'sunviser RH Type V', '2', '46', 'imp', 1252.00, 1350.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(195, 'clip fender liner Type V', '2', '46', 'imp', 20.00, 40.00, 0.00, 20.00, 20.00, -200.00, NULL, NULL, NULL),
(196, 'A/C pipe Type III', '1', '87', 'imp', 700.00, 850.00, 0.00, 3.00, 3.00, -12.00, NULL, NULL, NULL),
(197, 'Engine mounting', '1', '87', 'imp', 550.00, 650.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(198, 'C cap inner Type V', '2', '46', 'imp', 200.00, 350.00, 0.00, 2.00, 2.00, -18.00, NULL, NULL, NULL),
(199, 'Fender liner RH', '3', '25', 'imp', 296.09, 350.00, 28.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(200, 'Fender liner LH', '3', '25', '8708', 370.00, 450.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(201, 'Monogram set', '3', '25', 'imp', 500.00, 1600.00, 0.00, 1.00, 1.00, -19.00, NULL, NULL, NULL),
(202, 'Lower arm RH', '3', '25', 'imp', 1650.00, 2510.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(203, 'Lower arm LH', '3', '25', 'imp', 1650.00, 2510.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(204, 'Link rod set', '3', '27', 'imp', 750.00, 900.00, 0.00, 2.00, 2.00, -39.00, NULL, NULL, NULL),
(205, 'End ball joint set', '3', '25', 'imp', 900.00, 1900.00, 0.00, 1.00, 1.00, -19.00, NULL, NULL, NULL),
(206, 'Strut assy RH', '3', '25', 'imp', 1650.00, 1850.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(207, 'Strut assy LH', '3', '25', 'imp', 1650.00, 1850.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(208, 'Balance rod bush', '3', '27', 'imp', 120.00, 250.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(209, 'Caliper kit break', '3', '25', 'imp', 450.00, 850.00, 0.00, 1.00, 1.00, -19.00, NULL, NULL, NULL),
(210, 'Break pad set(KBX)', '3', '18', 'imp', 850.00, 1150.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(211, 'Bumper upper grill', '16', '97', 'imp', 2100.00, 3500.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(212, 'number plate', '16', '97', 'imp', 1000.00, 1500.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(213, 'Wiper blade RH Type-5', '2', '46', '76630-TM-T01', 443.75, 500.00, 28.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(214, 'Wiper arm RH', '2', '46', '76600-TM0-T01', 632.03, 670.00, 28.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(215, 'Boot gear lever Type V', '2', '46', '722927-TMO-T11ZA', 519.53, 560.00, 28.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(216, 'Bumper guard LH', '2', '46', '74165-TM0-T00', 343.75, 360.00, 28.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(217, 'Wiper arm LH Type-5', '2', '46', '76610-TMO-T01', 685.16, 720.00, 28.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(218, 'censor assy battery terminal', '1', '87', '32810m79m00', 801.56, 820.00, 28.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(219, 'Front shocker RH Type V', '2', '46', 'imp', 3002.00, 3400.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(220, 'Front shocker LH Type V', '2', '46', 'imp', 3002.00, 3400.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(221, 'Lower arm RH', '1', '8', 'imp', 1000.00, 1650.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(222, 'Lower arm LH', '1', '8', 'imp', 1000.00, 1650.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(223, 'Link rod set Type V', '2', '46', 'imp', 850.00, 1250.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(224, 'Monogram set', '3', '27', 'imp', 500.00, 750.00, 0.00, 1.00, 1.00, -21.00, NULL, NULL, NULL),
(225, 'power window switch single Type V', '2', '46', 'imp', 400.00, 550.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(226, 'Alloy wheel Type V', '2', '46', 'imp', 4500.00, 5500.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(227, 'Lower arm RH', '3', '25', 'imp', 1650.00, 1850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(228, 'Lower arm LH', '3', '25', 'imp', 1650.00, 1850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(229, 'Link', '3', '25', '00', NULL, NULL, 0.00, 0.00, 2.00, -2.00, NULL, NULL, NULL),
(230, 'Balance rod bush', '3', '25', 'imp', 200.00, 450.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(231, 'Cowl top', '1', '91', 'imp', 750.00, 950.00, 0.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(232, 'ceiling mirror', '1', '91', 'imp', 500.00, 650.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(233, 'Side mirror LH', '1', '91', 'imp', 400.00, 550.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(234, 'Front studd RH', '3', '25', 'imp', 1600.00, 1850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(235, 'Front studd LH', '3', '25', 'imp', 1650.00, 1850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(236, 'HL RH', '1', '12', '8512', 2076.27, 2276.00, 18.00, 2.00, 2.00, -27.00, NULL, NULL, NULL),
(237, 'HL LH', '1', '12', '8512', 2076.27, 2276.00, 18.00, 2.00, 2.00, -28.00, NULL, NULL, NULL),
(238, 'Air bag (Rep)', '1', '87', 'imp', 3000.00, 4000.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(239, 'A/C filter', '7', '61', 'imp', 195.00, 350.00, 0.00, 1.00, 1.00, -19.00, NULL, NULL, NULL),
(240, 'Monogram set', '4', '94', 'imp', 550.00, 1050.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(241, 'Air filter', '6', '33', 'imp', 290.00, 480.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(242, 'Horn Roots Red', '14', '82', 'imp', 600.00, 650.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(243, 'A to Z cleaner', '13', '83', 'imp', 100.00, 200.00, 0.00, 5.00, 5.00, -10.00, NULL, NULL, NULL),
(244, 'Strut kit', '3', '25', 'imp', 900.00, 1250.00, 0.00, 2.00, 2.00, -20.00, NULL, NULL, NULL),
(245, 'Bumper bracket LH', '1', NULL, 'imp', 60.00, 70.00, 0.00, 0.00, 1.00, -1.00, NULL, NULL, NULL),
(246, 'H L RH', '1', '10', 'imp', 1095.00, 1150.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(247, 'HL LH', '1', '10', 'imp', 1095.00, 1150.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(248, 'RH Rear outer garnesh', '1', '80', 'imp', 160.00, 180.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(249, 'Combination switch cover Type III', '1', '87', 'imp', 180.00, 220.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(250, 'Stearing modular Type III', '1', '87', 'old', 3000.00, 3500.00, 0.00, 2.00, 2.00, -40.00, NULL, NULL, NULL),
(251, 'combination switch RH Type III', '1', '87', 'old', 500.00, 650.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(252, 'Combination switch LH Type III', '1', '87', 'old', 500.00, 650.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(253, 'Stearing lower fiber Type III', '1', '87', 'imp', 185.00, 220.00, 0.00, 0.00, 0.00, -16.00, NULL, NULL, NULL),
(254, 'side mirror inner cap set Type III', '1', '87', 'imp', 220.00, 250.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(255, 'Bumper guard RH', '2', '46', '8708', 320.31, 350.00, 28.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(256, 'wiper blade RH', '1', '7', '8708', 484.74, 500.00, 18.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(257, '1k primer (bilux)', '12', '84', '3208', 280.00, 280.00, 18.00, 44.00, 38.00, -173.00, NULL, NULL, NULL),
(258, 'paper squire 80', '12', '84', '6805', 20.00, 25.00, 18.00, 63.00, 53.00, -264.00, NULL, NULL, NULL),
(259, 'MRF zinc chrome xuper yellow', '12', '84', '3208', 237.29, 237.29, 18.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(260, 'Clutch Assy(1.0)', '3', '20', 'imp', 1738.00, 1850.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(261, 'Clutch cable(1.0)', '3', '20', 'imp', 410.00, 650.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(262, 'Release bearing', '3', '20', 'imp', 540.00, 660.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(263, 'Release bearing', '3', '20', 'imp', 540.00, 660.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(264, 'Engine oil Dsl/5ltr(Wurth)', '11', '85', '15w/40', 1200.00, 1600.00, 0.00, 29.00, 28.00, -175.00, NULL, NULL, NULL),
(265, 'Gear oil(Wurth)', '11', '85', '80w90', 250.00, 310.00, 0.00, 32.00, 23.00, -161.00, NULL, NULL, NULL),
(266, 'Bonet rubber RH(Type 5)', '2', '46', '8708', 50.00, 60.00, 28.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(267, 'weather strip Front RH inner(Type V)', '2', '46', '8708', 329.69, 360.00, 28.00, 1.00, 1.00, -8.00, NULL, NULL, NULL),
(268, 'Feeder antenna cord', '1', '87', '8708', 361.02, 390.00, 18.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(269, 'body paste', '12', '84', 'imp', 500.00, 600.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(270, 'outer handle Fr LH', '1', '75', 'imp', 50.00, 60.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(271, 'Dicky pad clip', '1', '75', 'imp', 40.00, 50.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(272, 'glass channel front door', '1', '75', 'imp', 70.00, 80.00, 0.00, 2.00, 2.00, -26.00, NULL, NULL, NULL),
(273, 'qtr glass front LH', '1', '75', 'imp', 200.00, 250.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(274, 'Door glass front RH', '1', '75', 'imp', 770.00, 870.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(275, 'Door glass front LH', '1', '75', 'imp', 770.00, 870.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(276, 'seat belt', '1', '87', 'old', 300.00, 400.00, 0.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(277, 'Side mirror glass RH(Type III)', '1', '80', '8512', 180.00, 210.00, 18.00, 2.00, 2.00, -45.00, NULL, NULL, NULL),
(278, 'Side Mirror indicator RH(Type III)', '1', '80', 'imp', 350.00, 360.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(279, 'wheel rim', '1', '80', 'old', 600.00, 700.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(280, 'wheel cap', '1', '80', 'imp', 750.00, 1000.00, 0.00, 2.00, 2.00, -24.00, NULL, NULL, NULL),
(281, 'wire tighter', '13', '83', 'imp', 40.00, 60.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(282, 'Bumper bracket rear LH', '1', '10', 'imp', 20.00, 40.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(283, 'monogram set', '1', '10', 'imp', 245.00, 280.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(284, 'Tail lamp RH', '1', '10', 'imp', 400.00, 480.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(285, 'Tail lamp LH', '1', '10', 'imp', 400.00, 480.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(286, 'S monogram front grill', '1', '10', 'imp', 90.00, 100.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(287, 'Bonet hing set', '1', '12', 'imp', 360.00, 380.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(288, 'front bumper bracket set', '1', '12', 'imp', 180.00, 280.00, 0.00, 2.00, 2.00, -26.00, NULL, NULL, NULL),
(289, 'Front bumper', '1', '12', '8708', 1390.62, 1590.00, 28.00, 2.00, 2.00, -24.00, NULL, NULL, NULL),
(290, 'Egr pipe', '8', '41', 'imp', 70.00, 80.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(291, 'EGR valve', '8', '41', 'imp', 400.00, 450.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(292, 'ceiling light', '8', '41', 'imp', 800.00, 850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(293, 'Bulb tail lamp', '8', '41', 'imp', 20.00, 20.00, 0.00, 2.00, 2.00, -22.00, NULL, NULL, NULL),
(294, 'Power window motor', '8', '41', 'imp', 1000.00, 1100.00, 0.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(295, 'fender indicator', '8', '41', 'imp', 110.00, 120.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(296, 'spark pluck', '3', '18', 'imp', 90.00, 92.00, 0.00, 4.00, 4.00, -16.00, NULL, NULL, NULL),
(297, 'Cord set', '3', '18', 'imp', 750.00, 850.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(298, 'Ignation coil', '3', '18', 'imp', 1700.00, 1850.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(299, 'oil filter', '1', '88', 'imp', 110.00, 350.00, 0.00, 9.00, 7.00, -48.00, NULL, NULL, NULL),
(300, 'oil filter', '1', '87', 'imp', 80.00, 160.00, 0.00, 4.00, 3.00, -22.00, NULL, NULL, NULL),
(301, 'oil filter', '1', '91', 'imp', 60.00, 120.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(302, 'cap wiper arm 2pc', '2', '46', '8708', 135.94, 146.00, 28.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(303, 'number plate', '2', '46', 'imp', 550.00, 600.00, 0.00, 1.00, 1.00, -7.00, NULL, NULL, NULL),
(304, 'Music system', '2', '46', 'imp', 4500.00, 5000.00, 0.00, 1.00, 1.00, -7.00, NULL, NULL, NULL),
(305, 'Music system pannel', '2', '46', 'imp', 1800.00, 2000.00, 0.00, 1.00, 1.00, -7.00, NULL, NULL, NULL),
(306, 'wiper tank (Type II)', '1', '88', 'imp', 450.00, 460.00, 0.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(307, 'outer handle (Type II)', '1', '88', 'imp', 50.00, 60.00, 0.00, 1.00, 1.00, -17.00, NULL, NULL, NULL),
(308, 'Relay', '1', '88', 'imp', 131.00, 150.00, 0.00, 8.00, 8.00, -31.00, NULL, NULL, NULL),
(309, 'Condensor assy (Type II)', '1', '88', 'imp', 2700.00, 3200.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(310, 'Rediator Fan Assy', '1', '88', 'old', 1800.00, 2200.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(311, 'Fender indicator set (Type II)', '1', '80', 'imp', 230.00, 260.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(312, 'Outer garnesh Fr LH (Type II)', '1', '80', 'imp', 240.00, 260.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(313, 'Windshield glass rubber FR(Type II)', '1', '80', 'imp', 840.00, 860.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(314, 'Wiper spray Motor(Type II)', '1', '80', 'imp', 200.00, 250.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(315, 'Driving shaft LH(Type II)', '1', '88', 'old', 1500.00, 2250.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(316, 'Cowell top LH (TYpe II)', '1', '80', 'imp', 455.00, 460.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(317, 'Front Bumper bracket set (Type II)', '1', '80', 'imp', 120.00, 150.00, 28.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(318, 'fuel tank luck', '1', '80', 'imp', 35.00, 40.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(319, 'S Monogram (Type II)', '1', '80', 'imp', 120.00, 120.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(320, 'Front seat LH (Type II)', '1', '80', 'imp', 2900.00, 3200.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(321, 'Fog lamp set(Type II)', '1', '80', 'imp', 1000.00, 1200.00, 0.00, 2.00, 2.00, -17.00, NULL, NULL, NULL),
(322, 'Fog lamp cov (Type II)', '1', '80', 'imp', 115.00, 120.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(323, 'Fender liner RH (Type II)', '1', '80', 'imp', 340.00, 360.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(324, 'Mono gram set (Type II)', '1', '80', 'imp', 253.00, 270.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(325, 'Fender liner LH (Type II)', '1', '80', 'imp', 340.00, 360.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(326, 'Dicky shocker (Type II)', '1', '80', 'imp', 365.00, 390.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(327, 'Number plate (Type II)', '1', '80', 'imp', 500.00, 550.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(328, 'Mat set', '1', '80', 'imp', 500.00, 650.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(329, 'Seat cover (Type II)', '1', '80', 'imp', 3500.00, 4500.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(330, 'Door rubber FR LH (Type II)', '1', '80', 'imp', 330.00, 370.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(331, 'Shoker FR RH(Type II)', '1', '80', 'old', 1400.00, 1850.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(332, 'Shocker FR LH (Type II)', '1', '88', 'old', 1400.00, 1850.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(333, 'Wheel cap set 14\'\'', '1', '80', 'imp', 750.00, 980.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(334, 'Gear lever natu (Type II)', '1', '80', 'imp', 295.00, 320.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(335, 'Glass pillar inner cover RH (Type II)', '1', '80', 'imp', 120.00, 160.00, 0.00, 2.00, 2.00, -18.00, NULL, NULL, NULL),
(336, 'Glass pillar inner cover LH(Type II)', '1', '80', 'imp', 120.00, 160.00, 0.00, 1.00, 1.00, -7.00, NULL, NULL, NULL),
(337, 'Door pillar black sticker set(Type II)', '1', '80', 'imp', 700.00, 800.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(338, 'Silencer front (Type II)', '1', '80', 'old', 1000.00, 1500.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(339, 'wheel RIM (Type II)', '1', '80', 'old', 600.00, 700.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(340, 'shocker FR  RH (Type II)', '1', '88', 'imp', 1400.00, 1850.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(341, 'music system', '1', '80', 'imp', 4000.00, 4500.00, 0.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(342, 'Head gasket', '8', '99', 'imp', 600.00, 620.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(343, 'Diesel filter', '8', '99', 'imp', 200.00, 200.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(344, 'oil filter', '8', '99', 'imp', 160.00, 160.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(345, 'Anabond', '13', '83', 'imp', 55.00, 60.00, 0.00, 2.00, 2.00, -16.00, NULL, NULL, NULL),
(346, 'liner set', '8', '99', 'imp', 3200.00, 3200.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(347, 'Ring set', '8', '99', 'imp', 2500.00, 2550.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(348, 'Piston set', '8', '99', 'imp', 4200.00, 4450.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(349, 'Silencer packing', '8', '99', 'imp', 100.00, 120.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(350, 'shocket usb & aux(Type III)', '1', '87', '8708', 429.69, 460.00, 28.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(351, 'roof mirror cap(Type V)', '2', '46', '8708', 18.75, 25.00, 28.00, 1.00, 1.00, -3.00, NULL, NULL, NULL),
(352, 'power staring motor', '3', '23', 'imp', 4200.00, 4580.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL),
(353, 'windshield glass rubber (Type II)', '1', '75', 'imp', 310.00, 350.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(354, 'Glass machine FR LH (Type II)', '1', '75', 'imp', 650.00, 750.00, 0.00, 0.00, 0.00, -9.00, NULL, NULL, NULL),
(355, 'paper squire 600', '12', '84', 'imp', 20.00, 15.00, 0.00, 28.00, 28.00, -77.00, NULL, NULL, NULL),
(356, 'paper squire 320', '12', '84', 'imp', 20.00, 15.00, 0.00, 24.00, 24.00, -96.00, NULL, NULL, NULL),
(357, 'paper squire 100', '12', '84', 'imp', 20.00, 25.00, 0.00, 8.00, 8.00, -43.00, NULL, NULL, NULL),
(358, 'paper squire 400', '12', '84', 'imp', 20.00, 15.00, 0.00, 31.00, 26.00, -91.00, NULL, NULL, NULL),
(359, 'paper squire 220', '12', '84', 'imp', 20.00, 15.00, 0.00, 16.00, 16.00, -65.00, NULL, NULL, NULL),
(360, 'paper squire 150', '12', '84', 'imp', 20.00, 15.00, 0.00, 26.00, 26.00, -95.00, NULL, NULL, NULL),
(361, 'paper squire 1500', '12', '84', 'imp', 20.00, 20.00, 0.00, 25.00, 15.00, -41.00, NULL, NULL, NULL),
(362, 'Capsy white solid', '12', '84', '6805', 1271.00, 1271.00, 0.00, 1.20, 1.00, -1.00, NULL, NULL, NULL),
(363, 'kapsi metallic', '12', '84', '3208', 1288.00, 1288.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(364, 'Holder Fr bumper RH', '1', '12', '8708', 105.46, 110.46, 28.00, 1.00, 1.00, -5.00, NULL, NULL, NULL),
(365, 'Holder Front bumper LH', '1', '12', '8708', 105.46, 110.46, 28.00, 1.00, 1.00, -5.00, NULL, NULL, NULL),
(366, 'Grill radiator lower', '1', '12', '8708', 722.65, 750.25, 28.00, 2.00, 2.00, -11.00, NULL, NULL, NULL),
(367, 'Fender bracket RH', '1', '80', '8708', 72.00, 80.00, 28.00, 2.00, 2.00, -41.00, NULL, NULL, NULL),
(368, 'Fender bracket LH', '1', '80', '8708', 72.00, 80.00, 28.00, 2.00, 2.00, -41.00, NULL, NULL, NULL),
(369, 'front bumper (Type III)', '1', '80', '8708', 1355.46, 1550.00, 28.00, 1.00, 1.00, -33.00, NULL, NULL, NULL),
(370, 'H L Assy RH (Type III)', '1', '80', '8512', 2031.35, 2250.00, 18.00, 2.00, 2.00, -37.00, NULL, NULL, NULL),
(371, 'H L Assy LH(Type III)', '1', '80', '8512', 2031.35, 2250.00, 18.00, 2.00, 2.00, -37.00, NULL, NULL, NULL),
(372, 'Grill radiator (Type III)', '1', '80', '8708', 400.00, 450.00, 28.00, 1.00, 1.00, -24.00, NULL, NULL, NULL),
(373, 'Grill bumper (type III)', '1', '80', '8708', 300.00, 350.00, 28.00, 1.00, 1.00, -24.00, NULL, NULL, NULL),
(374, 'Break Pad set', '1', '80', 'imp', 1340.00, 1550.00, 18.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(375, 'Monogram set(Type III)', '1', '80', '8708', 586.00, 650.00, 28.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(376, 'Music system bracket', '1', '12', 'imp', 800.00, 1200.00, 0.00, 1.00, 1.00, -8.00, NULL, NULL, NULL),
(377, 'music system', '13', '83', 'imp', 4000.00, 4500.00, 0.00, 1.00, 1.00, -8.00, NULL, NULL, NULL),
(378, 'side mirror assy RH', '1', '12', '8708', 1250.00, 1350.00, 28.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(379, 'Heat censor with elbow', '7', '62', 'imp', 2000.00, 4500.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(380, 'break oil bottle', '7', '62', 'imp', 1200.00, 2650.00, 0.00, 1.00, 1.00, -12.00, NULL, NULL, NULL),
(381, 'chamber packing', '7', '62', 'imp', 200.00, 220.00, 0.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(382, 'Coolant (Evershine)', '11', '85', 'imp', 100.00, 350.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(383, 'Dicky mat', '1', '80', 'imp', 500.00, 550.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(384, 'Engine cover (Type II)', '1', '88', 'imp', 500.00, 500.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(385, 'Silencer middle(Type II)', '1', '88', 'imp', 1800.00, 1850.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(386, 'Driving shaft LH', '1', '12', 'old', 2500.00, 2550.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(387, 'Glass Fr Door LH', '1', '12', 'imp', 850.00, 850.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(388, 'Grill Radiator', '1', '12', 'imp', 3200.00, 3250.00, 0.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(389, 'H L Bracket set', '1', '12', 'imp', 252.00, 260.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(390, 'Wiper tank', '1', '12', 'imp', 150.00, 160.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(391, 'Horn assy (Maruti)', '14', '82', 'imp', 550.00, 580.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(392, 'Bonet  luck', '1', '12', 'imp', 172.00, 180.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(393, 'Fog lamp set', '1', '12', 'imp', 1000.00, 1100.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(394, 'Fender liner set', '1', '12', 'imp', 738.00, 750.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(395, 'Fog lamp cover LH', '1', '12', 'imp', 94.00, 95.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(396, 'Glass machine Fr RH (Type II)', '1', '75', 'imp', 650.00, 1400.00, 0.00, 1.00, 1.00, -6.00, NULL, NULL, NULL),
(397, 'H L Relllay', '1', '100', 'imp', 100.00, 150.00, 0.00, 0.00, 0.00, -1.00, NULL, NULL, NULL),
(398, 'Blade assy rear wiper', '1', '75', '8512', 215.25, 220.00, 18.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(399, 'Arm rear wiper', '1', '75', '8512', 167.79, 180.00, 18.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(400, 'Cap roof rail RR', '1', '75', '8708', 54.68, 56.50, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(401, 'Grill Radiator lower', '1', '92', '8708', 191.40, 210.00, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(402, 'Grill radiator upper', '1', '92', '8708', 1285.15, 1286.15, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(403, 'Bezel front fog-lamp LH', '1', '92', '8708', 433.59, 435.59, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(404, 'Bezel Front fog-lamp RH', '1', '92', '8708', 433.59, 435.50, 28.00, 0.00, 0.00, 0.00, NULL, NULL, NULL),
(405, 'Windshield glass front', '1', '7', 'imp', 4100.00, 4950.00, 18.00, 1.00, 1.00, -25.00, NULL, NULL, NULL),
(406, 'front Glass rubber', '1', '7', 'imp', 350.00, 380.00, 28.00, 1.00, 1.00, -18.00, NULL, NULL, NULL),
(407, 'Glass channel front door LH', '1', '12', '8708', 306.25, 306.25, 28.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(408, 'Handle assy bonet opner', '6', '33', '8708', 397.66, 397.66, 28.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(409, 'Horn single(Maruti)', '14', '82', 'imp', 250.00, 360.00, 0.00, 1.00, 1.00, -1.00, NULL, NULL, NULL),
(410, 'wiper blade LH', '1', '7', 'imp', 120.00, 210.00, 18.00, 1.00, 1.00, -8.00, NULL, NULL, NULL),
(411, 'oil filter(petrol)', '7', '62', 'imp', 92.00, 180.00, 0.00, 2.00, 2.00, -23.00, NULL, NULL, NULL),
(412, 'CLUTCH PLATE(0801BAA01431N)', '8', '42', '8708', 2363.00, 2563.00, 28.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(413, 'PRESSURE PLATE(0801CA0172N)', '8', '42', '8708', 1872.00, 2040.00, 28.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(414, 'CLUTCH RELEASE BEARING(0071PMC)', '8', '42', '8482', 595.14, 640.00, 18.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(415, 'kIT BALL JOINT(122049552)', '8', '42', '8708', 2288.73, 2588.00, 28.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(416, 'SHOCK ABSERVER ASSY FRT(0403AA0241N)', '8', '42', '8708', 935.28, 1010.00, 28.00, 2.00, 2.00, -32.00, NULL, NULL, NULL),
(417, 'SUSPENSION BUSH KIT(0401BAA05560N)', '8', '42', '8708', 935.28, 1015.00, 28.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(418, 'KIT OUTER BALL JOINT(1102AAA02020N)', '8', '42', '8708', 790.56, 850.00, 28.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(419, 'link', '8', '42', '00', NULL, NULL, NULL, 2.00, 2.00, -32.00, NULL, NULL, NULL),
(420, 'OIL SEAL WHEEL(0502CA0080N)', '8', '42', '4016', 53.82, 60.00, 18.00, 4.00, 4.00, -52.00, NULL, NULL, NULL),
(421, 'COIL SPRING PAD 2NOS(00692)', '8', '42', '4016', 316.68, 340.00, 18.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(422, 'KIT FRONT HUB BEARING(0019407)', '8', '42', '8482', 381.42, 540.00, 18.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(423, 'KIT BEARING WHEEL(0019406)', '8', '42', '8482', 341.64, 440.00, 18.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(424, 'GREASE 1KG', '11', '85', '8708', 400.00, 420.00, 18.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(425, 'PARKING BREAK CABLE(0605BA0381N)', '8', '42', '8708', 400.00, 450.00, 28.00, 1.00, 1.00, -10.00, NULL, NULL, NULL),
(426, 'AIR FILTER ASSY(4655-0312AC)', '8', '42', '8421', 322.50, 360.00, 18.00, 1.00, 1.00, -9.00, NULL, NULL, NULL),
(427, 'Side mirror assy RH', '16', '90', '8780', 1200.00, 1650.00, 0.00, 2.00, 2.00, -17.00, NULL, NULL, NULL),
(428, 'Intercooler assy', '16', '90', '8708', 3200.00, 4300.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(429, 'Front shocker', '16', '90', '8708', 1530.00, 1850.00, 0.00, 2.00, 2.00, -32.00, NULL, NULL, NULL),
(430, 'Rear shocker', '16', '90', '8708', 1010.00, 1210.00, 0.00, 2.00, 2.00, -32.00, NULL, NULL, NULL),
(431, 'Steering end ball joint set', '16', '90', '8460', 1060.00, 1560.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(432, 'Break pad set', '16', '90', '8460', 480.00, 860.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(433, 'Stabilizer link set', '16', '90', '8708', 560.00, 870.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(434, 'Air filter assy', '16', '90', '8460', 240.00, 360.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(435, 'Diesel filter', '16', '90', '2346', 275.00, 380.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(436, 'Oil filter', '16', '90', '8460', 130.00, 280.00, 0.00, 1.00, 1.00, -16.00, NULL, NULL, NULL),
(437, 'Lower arm set', '16', '90', '8708', 2400.00, 3060.00, 0.00, 1.00, 1.00, -15.00, NULL, NULL, NULL),
(438, 'balance rod bush kit', '16', '90', '8460', 120.00, 280.00, 0.00, 1.00, 1.00, -14.00, NULL, NULL, NULL),
(439, 'Fr shocker LH', '16', '103', 'imp', 1450.00, 1750.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(440, 'Ceiling mirror', '16', '103', 'imp', 675.00, 750.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(441, 'Front shocker kit', '16', '103', 'imp', 320.00, 450.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(442, 'Rear break shoe', '16', '103', 'imp', 480.00, 680.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(443, 'Wheel cylinder assy', '16', '103', 'imp', 300.00, 350.00, 0.00, 2.00, 2.00, -8.00, NULL, NULL, NULL),
(444, 'wiper blade assy', '16', '103', 'imp', 330.00, 480.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(445, 'oil filter', '16', '103', 'imp', 120.00, 180.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(446, 'Begin bearing STD', '16', '101', 'Imp', 1400.00, 1650.00, 0.00, 2.00, 2.00, -36.00, NULL, NULL, NULL),
(447, 'Chamber packing', '16', '101', 'Imp', 200.00, 650.00, 0.00, 1.00, 1.00, -13.00, NULL, NULL, NULL),
(448, 'Manifold (old)', '16', '101', 'Imp', 1800.00, 1800.00, 0.00, 1.00, 1.00, -11.00, NULL, NULL, NULL),
(449, 'Oil filter', '16', '101', 'Imp', 200.00, 480.00, 0.00, 1.00, 1.00, -4.00, NULL, NULL, NULL),
(450, 'Bonet cable', '8', '42', 'imp', 390.00, 430.00, 0.00, 1.00, 1.00, -2.00, NULL, NULL, NULL);

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

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_type`, `service_name`, `brand_name`, `model_name`, `price`, `gst`, `deleted_at`, `created_at`, `updated_at`) VALUES
(8, 'mechanical', 'break pad change', 'Marui', 'wagon r', '600', NULL, NULL, NULL, NULL),
(9, 'mechanical', 'engine oil change', 'wagon r', 'Maruti', '200', NULL, NULL, NULL, NULL),
(10, 'test', 'test', '1', '6', '22', NULL, NULL, NULL, NULL),
(11, 'Mechanical', 'Engine oil change', '1', '75', '200', NULL, NULL, NULL, NULL),
(12, 'Mechanical', 'Gear oil change', '1', '75', '200', NULL, NULL, NULL, NULL),
(13, 'Mechanical', 'Coolant change', '1', '75', '100', NULL, NULL, NULL, NULL),
(14, 'Mechanical', 'Air filter chnage', '1', '75', '100', NULL, NULL, NULL, NULL),
(15, 'Mechanical', 'Break pad change', '1', '75', '350', NULL, NULL, NULL, NULL),
(16, 'Mechanical', 'Break shoe change', '1', '75', '450', NULL, NULL, NULL, NULL),
(17, 'Mechanical', 'Break Booster change', '1', '75', '700', NULL, NULL, NULL, NULL),
(18, 'Mechanical', 'Front suspension overhauling', '1', '75', '1650', NULL, NULL, NULL, NULL),
(19, 'Mechanical', 'Radiator change', '1', '75', '450', NULL, NULL, NULL, NULL),
(20, 'Mechanical', 'Condenser fitting', '1', '75', '650', NULL, NULL, NULL, NULL),
(21, 'Mechanical', 'Fan assy fitting', '1', '75', '650', NULL, NULL, NULL, NULL),
(22, 'Mechanical', 'Stearing box replace', '1', '75', '1450', NULL, NULL, NULL, NULL),
(23, 'Mechanical', 'Complete gearbox overhauling', '1', '75', '4000', NULL, NULL, NULL, NULL),
(24, 'Mechanical', 'Headlight O/F', '1', '75', '200', NULL, NULL, NULL, NULL),
(25, 'Denting', 'Bonet denting & lining', '1', '75', '1200', NULL, NULL, NULL, NULL),
(26, 'Denting', 'RH fender denting & lining', '1', '75', '650', NULL, NULL, NULL, NULL),
(27, 'Denting', 'LH fender denting & lining', '1', '75', '750', NULL, NULL, NULL, NULL),
(28, 'Denting', 'Front bumper lining & fitting', '1', '75', '250', NULL, NULL, NULL, NULL),
(29, 'Denting', 'Front cross member lining & fitting', '1', '75', '2200', NULL, NULL, NULL, NULL),
(30, 'Denting', 'Complete electrical wiring fitting & checking', '1', '75', '4500', NULL, NULL, NULL, NULL),
(31, 'Denting', 'AC Gas filling', '1', '75', '1600', NULL, NULL, NULL, NULL),
(32, 'Denting', 'Front bumper fiber welding', '1', '75', '450', NULL, NULL, NULL, NULL),
(33, 'Denting', 'RH front door denting & lining', '1', '75', '1600', NULL, NULL, NULL, NULL),
(34, 'Denting', 'RH Rear door denting & lining', '1', '75', '1200', NULL, NULL, NULL, NULL),
(35, 'Denting', 'LH front door denting & lining', '1', '75', '1200', NULL, NULL, NULL, NULL),
(36, 'Denting', 'LH front door denting & lining', '1', '75', '1200', NULL, NULL, NULL, NULL),
(37, 'Denting', 'LH Rear door denting & lining', '1', '75', '1200', NULL, NULL, NULL, NULL),
(38, 'Denting', 'Dicky denting & lining', '1', '75', '1400', NULL, NULL, NULL, NULL),
(39, '6', 'front required position denting lining & appron change', '1', '78', '22000', NULL, NULL, NULL, NULL),
(40, '7', 'Bonet painting', '1', '80', '2200', NULL, NULL, NULL, NULL),
(41, '7', 'RH fender painting', '1', '80', '1000', NULL, NULL, NULL, NULL),
(42, '7', 'LH fender painting', '1', '80', '1000', NULL, NULL, NULL, NULL),
(43, '7', 'Front bumper painting', '1', '80', '2000', NULL, NULL, NULL, NULL),
(44, '6', 'RH fender lining & fitting', '1', '80', '650', NULL, NULL, NULL, NULL),
(45, '6', 'RH new apron Lining & fitting', '1', '80', '12000', NULL, NULL, NULL, NULL),
(46, '6', 'Front tie member lining fitting', '1', '80', '3500', NULL, NULL, NULL, NULL),
(47, '6', 'front required position denting lining & appron change', '1', '80', '22000', NULL, NULL, NULL, NULL),
(48, '7', 'Bonet painting', '1', '80', '2500', NULL, NULL, NULL, NULL),
(49, '7', 'RH fender painting', '1', '80', '1500', NULL, NULL, NULL, NULL),
(50, '7', 'LH fender painting', '1', '80', '1500', NULL, NULL, NULL, NULL),
(51, '7', 'Front bumper painting', '1', '80', '2500', NULL, NULL, NULL, NULL),
(52, '10', 'A/c Gas filling & line check up', '1', '80', '1800', NULL, NULL, NULL, NULL),
(53, '5', 'Suspension overhauling', '8', '41', '1600', NULL, NULL, NULL, NULL),
(68, '6', 'Complete body required position denting & welding', '3', '25', '5500', NULL, NULL, NULL, NULL),
(69, '7', 'Complete body painting', '3', '25', '21000', NULL, NULL, NULL, NULL),
(70, '5', 'Disc polish', '3', '25', '510', NULL, NULL, NULL, NULL),
(71, '5', 'Disc polish', '3', '18', '510', NULL, NULL, NULL, NULL),
(72, '5', 'Break pad change', '3', '18', '380', NULL, NULL, NULL, NULL),
(73, '6', 'RH rear door qtr pannel & bonet denting', '16', '97', '1750', NULL, NULL, NULL, NULL),
(74, '7', 'Complete body required position  painting', '16', '97', '7650', NULL, NULL, NULL, NULL),
(75, '6', 'Front bumper fiber welding', '16', '97', '300', NULL, NULL, NULL, NULL),
(76, '5', 'Wheel alignment', '3', '25', '300', NULL, NULL, NULL, NULL),
(77, '10', 'A/C gas top up', '3', '25', '650', NULL, NULL, NULL, NULL),
(78, '5', 'Suspension overhauling', '1', '10', '1400', NULL, NULL, NULL, NULL),
(79, '5', 'Break pad change', '1', '10', '450', NULL, NULL, NULL, NULL),
(80, '11', 'Seat cover new making', '3', '25', '5510', NULL, NULL, NULL, NULL),
(81, '8', 'Complete body polish', '1', '10', '1100', NULL, NULL, NULL, NULL),
(82, '8', 'Complete interior wash', '1', '10', '500', NULL, NULL, NULL, NULL),
(83, '8', 'Complete body washing & cleaning', '1', '10', '200', NULL, NULL, NULL, NULL),
(84, '5', 'Driving shaft repair', '1', '10', '750', NULL, NULL, NULL, NULL),
(85, '6', 'Complete body required position denting & lining', '1', '80', '12000', NULL, NULL, NULL, NULL),
(86, '7', 'Complete body painting', '1', '80', '20000', NULL, NULL, NULL, NULL),
(87, '6', 'Complete body required position denting & lining', '2', '46', '18000', NULL, NULL, NULL, NULL),
(88, '7', 'Complete body painting', '1', '10', '16000', NULL, NULL, NULL, NULL),
(89, '10', 'A/C gas top up filter change', '1', '10', '600', NULL, NULL, NULL, NULL),
(90, '6', 'Complete body required position denting & lining', '1', '75', '12000', NULL, NULL, NULL, NULL),
(91, '5', 'clutch assy change', '3', '20', '1040', NULL, NULL, NULL, NULL),
(92, '5', 'Engine oil change', '8', '42', '200', NULL, NULL, NULL, NULL),
(93, '5', 'Coolant change', '8', '42', '100', NULL, NULL, NULL, NULL),
(94, '5', 'Clutch cylinder change', '8', '42', '500', NULL, NULL, NULL, NULL),
(95, '7', 'Complete body painting', '2', '46', '18000', NULL, NULL, NULL, NULL),
(96, '6', 'Complete body required position denting & lining', '1', '12', '18000', NULL, NULL, NULL, NULL),
(97, '5', 'Break shoe change', '1', '89', '400', NULL, NULL, NULL, NULL),
(98, '5', 'Diesel filter change', '8', '41', '220', NULL, NULL, NULL, NULL),
(99, '7', 'Dash board & counsel box painting', '8', '41', '2200', NULL, NULL, NULL, NULL),
(100, '5', 'EGR pipe & valve change', '8', '41', '450', NULL, NULL, NULL, NULL),
(101, '9', 'power window motor change elect line check', '8', '41', '1150', NULL, NULL, NULL, NULL),
(102, '7', 'RH fender painting', '8', '41', '1600', NULL, NULL, NULL, NULL),
(103, '5', 'Spark pluck ,cord assy ,ignation coil assy change', '3', '18', '650', NULL, NULL, NULL, NULL),
(104, '5', 'Head gasket change', '8', '99', '450', NULL, NULL, NULL, NULL),
(105, '6', 'Rear dicky position denting & lining', '1', '89', '6500', NULL, NULL, NULL, NULL),
(106, '7', 'Front bumper painting', '8', '99', '2200', NULL, NULL, NULL, NULL),
(107, '7', 'Front bumper painting', '1', '89', '2200', NULL, NULL, NULL, NULL),
(108, '7', 'Rear bumper painting', '1', '89', '2200', NULL, NULL, NULL, NULL),
(109, '7', 'Dicky painting', '1', '89', '2800', NULL, NULL, NULL, NULL),
(110, '7', 'Rh quarter panel painting', '1', '89', '1200', NULL, NULL, NULL, NULL),
(111, '10', 'A/c Gas filling & line check up', '1', '93', '1600', NULL, NULL, NULL, NULL),
(112, '9', 'complete electrical fittings & check', '1', '80', '1000', NULL, NULL, NULL, NULL),
(113, '7', 'Front bumper painting', '3', '23', '2000', NULL, NULL, NULL, NULL),
(114, '7', 'Rear bumper painting', '3', '23', '2000', NULL, NULL, NULL, NULL),
(115, '7', 'LH fender painting', '3', '23', '1500', NULL, NULL, NULL, NULL),
(116, '6', 'LH fender denting', '3', '23', '600', NULL, NULL, NULL, NULL),
(117, '7', 'Complete body required position  painting', '3', '23', '18000', NULL, NULL, NULL, NULL),
(118, '6', 'Complete body required position denting & welding', '3', '23', '1600', NULL, NULL, NULL, NULL),
(119, '5', 'Engine oil change', '6', '33', '200', NULL, NULL, NULL, NULL),
(120, '5', 'Clutch cylinder change', '1', '89', '1050', NULL, NULL, NULL, NULL),
(121, '5', 'Break pad change', '4', '39', '400', NULL, NULL, NULL, NULL),
(122, '5', 'complete break line check up', '4', '39', '350', NULL, NULL, NULL, NULL),
(123, '5', 'Engine oil change', '4', '39', '200', NULL, NULL, NULL, NULL),
(124, '5', 'timing adjusting', '4', '39', '650', NULL, NULL, NULL, NULL),
(125, '5', 'Diesel filter change', '4', '39', '250', NULL, NULL, NULL, NULL),
(126, '5', 'Dynamo pully shaft change', '4', '39', '450', NULL, NULL, NULL, NULL),
(127, '5', 'Break pad change', '1', '89', '450', NULL, NULL, NULL, NULL),
(128, '5', 'complete break line check up', '1', '89', '350', NULL, NULL, NULL, NULL),
(129, '5', 'Suspension overhauling', '1', '12', '1400', NULL, NULL, NULL, NULL),
(130, '5', 'Rear shocker change', '1', '12', '350', NULL, NULL, NULL, NULL),
(131, '7', 'Front bumper painting', '2', '46', '2500', NULL, NULL, NULL, NULL),
(132, '6', 'LH fender denting', '1', '80', '650', NULL, NULL, NULL, NULL),
(133, '7', 'LH fender painting', '1', '80', '1500', NULL, NULL, NULL, NULL),
(134, '7', 'Front bumper painting M', '1', '80', '2500', NULL, NULL, NULL, NULL),
(135, '7', 'grill ,cowl top fiber item black paint', '1', '80', '1200', NULL, NULL, NULL, NULL),
(136, '5', 'Break pad change', '1', '80', '580', NULL, NULL, NULL, NULL),
(137, '5', 'Disc polish', '1', '80', '600', NULL, NULL, NULL, NULL),
(138, '6', 'Front bumper fiber welding', '7', '62', '400', NULL, NULL, NULL, NULL),
(139, '6', 'bumpher screw fitting', '9', '65', '300', NULL, NULL, NULL, NULL),
(140, '6', 'RH front & rear door denting', '2', '47', '2200', NULL, NULL, NULL, NULL),
(141, '7', 'RH front door painting', '2', '47', '2500', NULL, NULL, NULL, NULL),
(142, '7', 'RH rear door painting', '2', '47', '2500', NULL, NULL, NULL, NULL),
(143, '7', 'Rh quarter panel painting', '2', '47', '1500', NULL, NULL, NULL, NULL),
(144, '7', 'Front bumper painting', '2', '47', '3500', NULL, NULL, NULL, NULL),
(145, '5', 'Master cylinder assy change', '7', '62', '280', NULL, NULL, NULL, NULL),
(146, '5', 'Suspension overhauling', '1', '95', '1600', NULL, NULL, NULL, NULL),
(147, '5', 'clutch assy change', '1', '95', '1400', NULL, NULL, NULL, NULL),
(148, '5', 'Tyre change', '1', '80', '100', NULL, NULL, NULL, NULL),
(149, '5', 'Meter repair', '1', '80', '250', NULL, NULL, NULL, NULL),
(150, '5', 'engine tuning', '3', '27', '200', NULL, NULL, NULL, NULL),
(151, '7', 'Front bumper painting', '3', '18', '2500', NULL, NULL, NULL, NULL),
(152, '9', 'Head light really change', '1', '100', '200', NULL, NULL, NULL, NULL),
(153, '5', 'Engine oil change', '1', '10', '200', NULL, NULL, NULL, NULL),
(154, '5', 'Fan belt change', '1', '10', '220', NULL, NULL, NULL, NULL),
(155, '7', 'Complete body required position  painting', '1', '12', '14000', NULL, NULL, NULL, NULL),
(156, '5', 'Engine oil change', '1', '89', '200', NULL, NULL, NULL, NULL),
(157, '5', 'Engine oil change', '2', '47', '200', NULL, NULL, NULL, NULL),
(158, '7', 'Lh fender denting & painting', '3', '18', '2500', NULL, NULL, NULL, NULL),
(159, '5', 'Coolant change', '1', '89', '100', NULL, NULL, NULL, NULL),
(160, '7', 'Front bumper painting', '1', '7', '2500', NULL, NULL, NULL, NULL),
(161, '7', 'Complete body required position  painting', '1', '7', '10500', NULL, NULL, NULL, NULL),
(162, '7', 'Complete body required position  painting', '1', '7', '9500', NULL, NULL, NULL, NULL),
(163, '5', 'front glass fitting', '1', '7', '800', NULL, NULL, NULL, NULL),
(164, '6', 'Complete body required position denting & welding', '1', '7', '1400', NULL, NULL, NULL, NULL),
(165, '5', 'Engine oil change', '7', '62', '200', NULL, NULL, NULL, NULL),
(166, '6', 'Complete body required position denting & lining', '16', '90', '8500', NULL, NULL, NULL, NULL),
(167, '7', 'Complete body required position  painting', '16', '90', '17000', NULL, NULL, NULL, NULL),
(168, '5', 'Suspension overhauling', '16', '90', '1600', NULL, NULL, NULL, NULL),
(169, '5', 'Suspension overhauling', '8', '42', '2200', NULL, NULL, NULL, NULL),
(170, '5', 'clutch assy change', '8', '42', '1500', NULL, NULL, NULL, NULL),
(171, '5', 'Lathe bush fitting', '8', '42', '650', NULL, NULL, NULL, NULL),
(172, '5', 'Hand break cable change', '8', '42', '450', NULL, NULL, NULL, NULL),
(173, '5', 'Rear wheel oil-seal change', '8', '42', '350', NULL, NULL, NULL, NULL),
(174, '5', 'Wheel alignment', '8', '42', '350', NULL, NULL, NULL, NULL),
(175, '7', 'Front bumper painting', '16', '101', '2500', NULL, NULL, NULL, NULL),
(176, '6', 'bumpher screw fitting', '17', '102', '400', NULL, NULL, NULL, NULL),
(177, '5', 'Rear shocker change', '16', '90', '650', NULL, NULL, NULL, NULL),
(178, '5', 'Engine oil change', '16', '90', '200', NULL, NULL, NULL, NULL),
(179, '5', 'Air filter change', '16', '90', '100', NULL, NULL, NULL, NULL),
(180, '5', 'Gear oil change', '16', '90', '250', NULL, NULL, NULL, NULL),
(181, '5', 'Front bumper fiber welding', '16', '90', '750', NULL, NULL, NULL, NULL),
(182, '7', 'Front bumper painting', '16', '103', '2500', NULL, NULL, NULL, NULL),
(183, '5', 'Front shocker change', '16', '103', '650', NULL, NULL, NULL, NULL),
(184, '5', 'Engine oil change', '16', '103', '200', NULL, NULL, NULL, NULL),
(185, '5', 'Rear wheel cylinder change', '16', '103', '560', NULL, NULL, NULL, NULL),
(186, '5', 'Break shoe change', '16', '103', '650', NULL, NULL, NULL, NULL),
(187, '5', 'Engine begin bearing change', '16', '101', '2500', NULL, NULL, NULL, NULL),
(188, '5', 'Engine oil change', '16', '101', '250', NULL, NULL, NULL, NULL),
(189, '5', 'Engine lath work', '16', '101', '2200', NULL, NULL, NULL, NULL),
(190, '5', 'Coolant change', '16', '101', '200', NULL, NULL, NULL, NULL),
(191, '5', 'Manifold O/F', '16', '101', '1200', NULL, NULL, NULL, NULL),
(192, '5', 'Engine oil change', '8', '42', '400', NULL, NULL, NULL, NULL),
(193, '5', 'Coolant change', '8', '42', '300', NULL, NULL, NULL, NULL),
(194, '10', 'condenser,cooling coil replacement Labour charges', '1', '11', '2100', NULL, NULL, NULL, NULL),
(195, '10', 'A/c Gas filling & line check up', '1', '11', '1350', NULL, NULL, NULL, NULL),
(196, '5', 'Break shoe change', '8', '42', '550', NULL, NULL, NULL, NULL),
(197, '5', 'Rear wheel greasing', '8', '42', '250', NULL, NULL, NULL, NULL),
(198, '6', 'RH Rear door denting', '1', '89', '1100', NULL, NULL, NULL, NULL),
(199, '6', 'RH quarter panel denting', '1', '89', '600', NULL, NULL, NULL, NULL),
(200, '7', 'RH rear door painting', '1', '89', '3000', NULL, NULL, NULL, NULL),
(201, '5', 'Radiator assy change', '3', '18', '450', NULL, NULL, NULL, NULL),
(202, '6', 'Complete body required position denting & lining', '9', '64', '35000', NULL, NULL, NULL, NULL),
(203, '7', 'Complete body required position  painting', '9', '64', '40000', NULL, NULL, NULL, NULL),
(204, '6', 'Complete body required position denting & welding', '8', '42', '18000', NULL, NULL, NULL, NULL),
(205, '7', 'Complete body required position  painting', '8', '42', '25000', NULL, NULL, NULL, NULL),
(206, '7', 'Under body paint', '8', '42', '2500', NULL, NULL, NULL, NULL),
(207, '5', 'Radiator fan assy change', '3', '18', '450', NULL, NULL, NULL, NULL),
(208, '5', 'Patti bush change', '8', '42', '450', NULL, NULL, NULL, NULL),
(209, '5', 'Parking break cable change', '8', '42', '250', NULL, NULL, NULL, NULL),
(210, '11', 'complete upholstery item opening fitting', '8', '42', '2500', NULL, NULL, NULL, NULL),
(211, '9', 'complete electrical fittings & check', '8', '42', '2200', NULL, NULL, NULL, NULL),
(212, '11', 'Seat cover new making', '3', '18', '4500', NULL, NULL, NULL, NULL),
(213, '9', 'Head light really change', '3', '18', '350', NULL, NULL, NULL, NULL),
(214, '6', 'front glass fitting', '4', '105', '300', NULL, NULL, NULL, NULL),
(215, '11', 'New film fitting', '3', '18', '1500', NULL, NULL, NULL, NULL),
(216, '9', 'Remote lock repair', '3', '18', '600', NULL, NULL, NULL, NULL),
(217, '5', 'Tyre change', '19', '106', '100', NULL, NULL, NULL, NULL),
(218, '5', 'Tyre fitting', '6', '33', '100', NULL, NULL, NULL, NULL),
(219, '7', 'Complete body required position  painting', '6', '33', '30000', NULL, NULL, NULL, NULL),
(220, '7', 'Front bumper painting', '1', '8', '2500', NULL, NULL, NULL, NULL),
(221, '7', 'RH fender painting', '1', '8', '1500', NULL, NULL, NULL, NULL),
(222, '7', 'RH front door painting', '1', '8', '2500', NULL, NULL, NULL, NULL),
(223, '6', 'LH fender denting', '1', '8', '450', NULL, NULL, NULL, NULL),
(224, '6', 'HL repair', '1', '8', '250', NULL, NULL, NULL, NULL),
(225, '6', 'LH front door denting & lining', '1', '6', '600', NULL, NULL, NULL, NULL),
(226, '6', 'LH Rear door denting & lining', '1', '6', '500', NULL, NULL, NULL, NULL),
(227, '7', 'LH front door painting', '1', '6', '2000', NULL, NULL, NULL, NULL),
(228, '7', 'Lh rear door painting', '1', '6', '2000', NULL, NULL, NULL, NULL),
(229, '7', 'LH fender painting', '1', '6', '1200', NULL, NULL, NULL, NULL),
(230, '6', 'LH Glass pillar denting & painting', '1', '6', '800', NULL, NULL, NULL, NULL),
(231, '5', 'Engine oil change', '1', '6', '200', NULL, NULL, NULL, NULL),
(232, '6', 'Front radiator condenser denting & lining', '1', '8', '1800', NULL, NULL, NULL, NULL),
(233, '6', 'Front bumper fiber welding', '1', '8', '650', NULL, NULL, NULL, NULL),
(234, '6', 'Front grill repair', '1', '8', '250', NULL, NULL, NULL, NULL),
(235, '5', 'Front bumper O/F', '1', '8', '450', NULL, NULL, NULL, NULL),
(236, '5', 'Fan assy O/F', '1', '8', '300', NULL, NULL, NULL, NULL),
(237, '5', 'Engine oil change', '7', '59', '200', NULL, NULL, NULL, NULL),
(238, '7', 'Complete body painting', '8', '107', '18000', NULL, NULL, NULL, NULL),
(239, '6', 'Complete Dala denting ,welding & sheet change', '8', '107', '10000', NULL, NULL, NULL, NULL),
(240, '5', 'Suspension overhauling', '8', '107', '2500', NULL, NULL, NULL, NULL),
(241, '11', 'complete upholstery item opening fitting', '8', '107', '4500', NULL, NULL, NULL, NULL),
(242, '9', 'complete electrical fittings & check', '8', '107', '3200', NULL, NULL, NULL, NULL),
(243, '5', 'Patti bush change', '8', '107', '650', NULL, NULL, NULL, NULL),
(244, '5', 'Rear wheel greasing', '8', '107', '450', NULL, NULL, NULL, NULL),
(245, '5', 'Engine oil change', '8', '107', '200', NULL, NULL, NULL, NULL),
(246, '5', 'Coolant change', '8', '107', '160', NULL, NULL, NULL, NULL),
(247, '5', 'Wheel alignment', '8', '107', '380', NULL, NULL, NULL, NULL),
(248, '5', 'Air filter change', '8', '107', '100', NULL, NULL, NULL, NULL),
(249, '5', 'Rear shocker change', '8', '107', '360', NULL, NULL, NULL, NULL),
(250, '5', 'Diesel filter change', '8', '107', '280', NULL, NULL, NULL, NULL),
(251, '5', 'Gear oil change', '8', '107', '200', NULL, NULL, NULL, NULL),
(252, '6', 'Complete body required position denting & lining', '8', '107', '8000', NULL, NULL, NULL, NULL),
(253, '11', 'Complete ceiling new making with material & labour', '8', '107', '2600', NULL, NULL, NULL, NULL),
(254, '5', 'Front glass Machine change', '1', '75', '280', NULL, NULL, NULL, NULL),
(255, '5', 'clutch assy change', '8', '108', '1800', NULL, NULL, NULL, NULL),
(256, '5', 'clutch assy change', '8', '108', '1450', NULL, NULL, NULL, NULL),
(257, '5', 'clutch assy change', '1', '109', '1250', NULL, NULL, NULL, NULL),
(258, '5', 'Engine oil change', '5', '55', '200', NULL, NULL, NULL, NULL),
(259, '5', 'Coolant change', '1', '109', '100', NULL, NULL, NULL, NULL),
(260, '5', 'Gear oil change', '1', '109', '250', NULL, NULL, NULL, NULL),
(261, '6', 'Digi required position denting', '17', '110', '2400', NULL, NULL, NULL, NULL),
(262, '6', 'Rear Ste-pin foundation denting & lining', '17', '110', '2400', NULL, NULL, NULL, NULL),
(263, '7', 'Digi painting', '17', '110', '1800', NULL, NULL, NULL, NULL),
(264, '6', 'LH quater pannel denting', '17', '110', '600', NULL, NULL, NULL, NULL),
(265, '7', 'Complete body required position  painting', '17', '110', '6500', NULL, NULL, NULL, NULL),
(266, '5', 'Rear bumper lining & fitting', '17', '110', '450', NULL, NULL, NULL, NULL),
(267, '5', 'Gear box overhauling', '8', '42', '4800', NULL, NULL, NULL, NULL),
(268, '5', 'Engine oil change', '1', '109', '200', NULL, NULL, NULL, NULL),
(269, '5', 'Break pad change', '8', '42', '280', NULL, NULL, NULL, NULL),
(270, '9', 'Combination line check up', '3', '18', '450', NULL, NULL, NULL, NULL),
(271, '5', 'Digi glass O/F', '17', '110', '600', NULL, NULL, NULL, NULL),
(272, '7', 'Complete body painting', '1', '89', '26000', NULL, NULL, NULL, NULL),
(273, '6', 'Complete body required position denting & lining', '1', '89', '14000', NULL, NULL, NULL, NULL),
(274, '5', 'Air filter change', '1', '89', '100', NULL, NULL, NULL, NULL),
(275, '5', 'Front shocker change', '1', '89', '500', NULL, NULL, NULL, NULL),
(276, '5', 'Diesel filter change', '1', '89', '250', NULL, NULL, NULL, NULL),
(277, '5', 'Turbo assy change', '1', '89', '800', NULL, NULL, NULL, NULL),
(278, '5', 'Engine oil change', '1', '12', '250', NULL, NULL, NULL, NULL),
(279, '6', 'Complete body required position denting & welding', '1', '89', '5000', NULL, NULL, NULL, NULL),
(280, '5', 'Break oil change', '3', '18', '100', NULL, NULL, NULL, NULL),
(281, '5', 'Suspension overhauling', '3', '18', '2200', NULL, NULL, NULL, NULL),
(282, '5', 'Engine oil change', '3', '18', '250', NULL, NULL, NULL, NULL),
(283, '5', 'Gear oil change', '3', '18', '250', NULL, NULL, NULL, NULL),
(284, '5', 'Coolant change', '3', '18', '100', NULL, NULL, NULL, NULL),
(285, '5', 'Wheel alignment', '3', '18', '350', NULL, NULL, NULL, NULL),
(286, '5', 'Driving shaft change', '6', '33', '450', NULL, NULL, NULL, NULL),
(287, '5', 'Disc polish', '6', '33', '200', NULL, NULL, NULL, NULL),
(288, '5', 'Break pad change', '6', '33', '250', NULL, NULL, NULL, NULL),
(289, '6', 'Complete body required position denting & lining', '1', '91', '25000', NULL, NULL, NULL, NULL),
(290, '6', 'fender fitting& bumper fitting', '1', '91', '1800', NULL, NULL, NULL, NULL),
(291, '6', 'Complete body required position denting & lining', '9', '65', '4000', NULL, NULL, NULL, NULL),
(292, '7', 'Complete body painting', '9', '65', '18000', NULL, NULL, NULL, NULL),
(293, '5', 'Suspension overhauling', '9', '65', '2200', NULL, NULL, NULL, NULL),
(294, '5', 'Rear axle bush change', '9', '65', '650', NULL, NULL, NULL, NULL),
(295, '5', 'Break pad change', '9', '65', '680', NULL, NULL, NULL, NULL),
(296, '6', 'Front bumper fiber welding', '9', '65', '450', NULL, NULL, NULL, NULL),
(297, '5', 'Engine lathe work', '4', '98', '5500', NULL, NULL, NULL, NULL),
(298, '6', 'Rear bumper fiber welding', '9', '65', '680', NULL, NULL, NULL, NULL),
(299, '5', 'FR & RR bumper O/F & Lining', '9', '65', '800', NULL, NULL, NULL, NULL),
(300, '6', 'RH Rear door denting', '3', '23', '600', NULL, NULL, NULL, NULL),
(301, '6', 'RH quarter panel denting', '3', '23', '600', NULL, NULL, NULL, NULL),
(302, '7', 'RH rear door painting', '3', '23', '2500', NULL, NULL, NULL, NULL),
(303, '7', 'Rh quarter panel painting', '3', '23', '1500', NULL, NULL, NULL, NULL),
(304, '7', 'Rear bumper painting', '3', '23', '3000', NULL, NULL, NULL, NULL),
(305, '5', 'Rear bumper lining & fitting', '3', '23', '650', NULL, NULL, NULL, NULL),
(306, '5', 'Complete engine overhauling', '4', '98', '9000', NULL, NULL, NULL, NULL),
(307, '5', 'Engine oil change', '9', '65', '250', NULL, NULL, NULL, NULL),
(308, '5', 'Diesel filter change', '9', '65', '450', NULL, NULL, NULL, NULL),
(309, '5', 'rediator wash', '4', '98', '650', NULL, NULL, NULL, NULL),
(310, '5', 'Rear shocker change', '3', '18', '250', NULL, NULL, NULL, NULL),
(311, '6', 'RH quarter panel denting', '1', '15', '600', NULL, NULL, NULL, NULL),
(312, '7', 'Rh quarter panel painting', '1', '15', '1500', NULL, NULL, NULL, NULL),
(313, '11', 'complete upholstery item opening fitting', '1', '89', '3500', NULL, NULL, NULL, NULL),
(314, '7', 'Front bumper painting', '1', '15', '2000', NULL, NULL, NULL, NULL),
(315, '5', 'Front shocker change', '7', '62', '680', NULL, NULL, NULL, NULL),
(316, '5', 'Tail lamp fitting', '7', '62', '250', NULL, NULL, NULL, NULL),
(317, '5', 'Gear oil change', '7', '62', '250', NULL, NULL, NULL, NULL),
(318, '9', 'power window motor change elect line check', '4', '98', '2800', NULL, NULL, NULL, NULL),
(319, '8', 'Complete body washing & cleaning', '1', '11', '300', NULL, NULL, NULL, NULL),
(320, '8', 'Complete body washing & cleaning', '1', '75', '300', NULL, NULL, NULL, NULL),
(321, '5', 'Engine oil change', '1', '75', '200', NULL, NULL, NULL, NULL),
(322, '5', 'Gear oil change', '1', '75', '100', NULL, NULL, NULL, NULL),
(323, '6', 'LH matt flagg repair', '1', '75', '200', NULL, NULL, NULL, NULL),
(324, '5', 'Engine oil change', '1', '8', '200', NULL, NULL, NULL, NULL),
(325, '5', 'Wheel alignment', '9', '65', '300', NULL, NULL, NULL, NULL),
(326, '8', 'Complete body washing & cleaning', '9', '65', '300', NULL, NULL, NULL, NULL),
(327, '5', 'High pressure pump repair', '4', '98', '2800', NULL, NULL, NULL, NULL),
(328, '7', 'Complete body required position  painting', '4', '98', '8000', NULL, NULL, NULL, NULL),
(329, '8', 'Complete body polish', '9', '65', '1800', NULL, NULL, NULL, NULL),
(330, '5', 'Steering column rod change', '7', '62', '750', NULL, NULL, NULL, NULL),
(331, '8', 'Complete body polish', '7', '62', '1600', NULL, NULL, NULL, NULL),
(332, '8', 'Complete interior wash', '7', '62', '700', NULL, NULL, NULL, NULL),
(333, '5', 'Air filter change', '7', '62', '100', NULL, NULL, NULL, NULL),
(334, '5', 'Head gasket change', '8', '42', '1600', NULL, NULL, NULL, NULL),
(335, '5', 'rediator wash', '8', '42', '650', NULL, NULL, NULL, NULL),
(336, '5', 'Water pump change', '8', '42', '450', NULL, NULL, NULL, NULL),
(337, '5', 'Engine oil change', '9', '69', '200', NULL, NULL, NULL, NULL),
(338, '5', 'Brake pad change', '9', '69', '680', NULL, NULL, NULL, NULL),
(339, '5', 'Rediator wash', '1', '8', '650', NULL, NULL, NULL, NULL),
(340, '5', 'Water pump change', '1', '8', '800', NULL, NULL, NULL, NULL),
(341, '5', 'Rediator O/F', '1', '8', '250', NULL, NULL, NULL, NULL),
(342, '5', 'Steering box replace', '3', '27', '1200', NULL, NULL, NULL, NULL),
(343, '7', 'Complete body painting', '1', '91', '18000', NULL, NULL, NULL, NULL),
(344, '11', 'complete upholstery item opening fitting', '1', '91', '2500', NULL, NULL, NULL, NULL),
(345, '5', 'Complete mechanical O/F', '1', '91', '4000', NULL, NULL, NULL, NULL),
(346, '5', 'Thermos tart valve change', '7', '62', '680', NULL, NULL, NULL, NULL),
(347, '5', 'Suspension overhauling', '7', '62', '2200', NULL, NULL, NULL, NULL),
(348, '7', 'Front bumper painting', '7', '62', '2500', NULL, NULL, NULL, NULL),
(349, '7', 'Bonet painting', '7', '62', '2500', NULL, NULL, NULL, NULL),
(350, '10', 'A/c Gas filling & line check up', '1', '88', '1000', NULL, NULL, NULL, NULL),
(351, '6', 'Complete body required position denting & welding', '1', '9', '18000', NULL, NULL, NULL, NULL),
(352, '7', 'Complete body painting', '1', '9', '20000', NULL, NULL, NULL, NULL),
(353, '5', 'Complete mechanical O/F', '1', '9', '6000', NULL, NULL, NULL, NULL),
(354, '11', 'complete upholstery item opening fitting', '1', '9', '5000', NULL, NULL, NULL, NULL),
(355, '7', 'RH fender painting', '7', '62', '1500', NULL, NULL, NULL, NULL),
(356, '5', 'Suspension overhauling', '4', '98', '2200', NULL, NULL, NULL, NULL),
(357, '6', 'Complete body required position denting & welding', '4', '98', '2800', NULL, NULL, NULL, NULL),
(358, '7', 'Complete body painting', '4', '98', '26000', NULL, NULL, NULL, NULL),
(359, '5', 'Rear bumper lining & fitting', '4', '98', '650', NULL, NULL, NULL, NULL),
(360, '7', 'Complete body required position  painting', '1', '89', '13500', NULL, NULL, NULL, NULL),
(361, '5', 'clutch assy change', '2', '46', '1600', NULL, NULL, NULL, NULL),
(362, '5', 'Tail lamp fitting', '2', '46', '100', NULL, NULL, NULL, NULL),
(363, '6', 'Digi denting & lining', '2', '46', '1200', NULL, NULL, NULL, NULL),
(364, '5', 'Rear wheel Bearing change', '2', '46', '650', NULL, NULL, NULL, NULL),
(365, '5', 'lower arm bush lath fitting', '4', '98', '400', NULL, NULL, NULL, NULL),
(366, '5', 'Wheel alignment', '4', '98', '350', NULL, NULL, NULL, NULL),
(367, '5', 'Nozzle wash', '4', '98', '850', NULL, NULL, NULL, NULL),
(368, '10', 'compressor fitting', '4', '98', '450', NULL, NULL, NULL, NULL),
(369, '10', 'A/c Gas filling & line check up', '4', '98', '1650', NULL, NULL, NULL, NULL),
(370, '5', 'fuel motor cleaning', '1', '109', '400', NULL, NULL, NULL, NULL),
(371, '5', 'Diesel filter change', '1', '109', '350', NULL, NULL, NULL, NULL),
(372, '6', 'LH fender & bonnet  denting', '3', '18', '1200', NULL, NULL, NULL, NULL),
(373, '7', 'Front bumper painting', '3', '18', '2500', NULL, NULL, NULL, NULL),
(374, '7', 'LH fender painting', '3', '18', '1500', NULL, NULL, NULL, NULL),
(375, '7', 'Bonnet painting', '3', '18', '2200', NULL, NULL, NULL, NULL),
(376, '5', 'front glass fitting', '3', '18', '650', NULL, NULL, NULL, NULL),
(377, '5', 'Engine oil change', '1', '13', '200', NULL, NULL, NULL, NULL),
(378, '5', 'Coolant change', '1', '13', '100', NULL, NULL, NULL, NULL),
(379, '5', 'Brake pad change', '1', '75', '450', NULL, NULL, NULL, NULL),
(380, '5', 'Front wheel bearing change', '1', '75', '650', NULL, NULL, NULL, NULL),
(381, '5', 'Engine oil change', '9', '111', '200', NULL, NULL, NULL, NULL),
(382, '5', 'Diesel filter change', '9', '111', '350', NULL, NULL, NULL, NULL),
(383, '5', 'Front glass Machine change', '9', '111', '250', NULL, NULL, NULL, NULL),
(384, '5', 'Self starter O/F', '9', '111', '360', NULL, NULL, NULL, NULL),
(385, '7', 'Front bumper painting', '3', '18', '2500', NULL, NULL, NULL, NULL),
(386, '7', 'Rear bumper painting', '3', '18', '2500', NULL, NULL, NULL, NULL),
(387, '7', 'LH quater pannel painting', '3', '18', '1600', NULL, NULL, NULL, NULL),
(388, '6', 'LH quater pannel denting', '3', '18', '600', NULL, NULL, NULL, NULL),
(389, '5', 'Engine oil change', '3', '20', '200', NULL, NULL, NULL, NULL),
(390, '7', 'Front bumper painting', '3', '20', '2500', NULL, NULL, NULL, NULL),
(391, '10', 'Cooling coil clean', '4', '98', '1600', NULL, NULL, NULL, NULL),
(392, '10', 'A/C gas top up', '4', '98', '750', NULL, NULL, NULL, NULL),
(393, '5', 'Complete mechanical O/F', '1', '89', '8000', NULL, NULL, NULL, NULL),
(394, '11', 'complete upholstery item opening fitting', '1', '89', '6000', NULL, NULL, NULL, NULL),
(395, '9', 'complete electrical fittings & check', '4', '105', '450', NULL, NULL, NULL, NULL),
(396, '6', 'Complete body required position denting & welding', '16', '101', '14500', NULL, NULL, NULL, NULL),
(397, '5', 'Complete mechanical O/F', '16', '101', '8500', NULL, NULL, NULL, NULL),
(398, '9', 'complete electrical fittings & check', '16', '101', '12000', NULL, NULL, NULL, NULL),
(399, '7', 'Complete body painting', '16', '101', '22000', NULL, NULL, NULL, NULL),
(400, '11', 'complete upholstery item opening fitting', '16', '101', '4000', NULL, NULL, NULL, NULL),
(401, '5', 'Complete engine overhauling', '16', '101', '8500', NULL, NULL, NULL, NULL),
(402, '6', 'Digi denting & lining', '1', '109', '1200', NULL, NULL, NULL, NULL),
(403, '7', 'Digi painting', '1', '109', '1500', NULL, NULL, NULL, NULL),
(404, '7', 'Rear bumper painting', '1', '109', '2500', NULL, NULL, NULL, NULL),
(405, '6', 'Rear bumper denting & lining', '1', '109', '600', NULL, NULL, NULL, NULL),
(406, '5', 'Rediator O/F', '1', '92', '350', NULL, NULL, NULL, NULL),
(407, '5', 'engine oil change', '1', '92', '200', NULL, NULL, NULL, NULL),
(408, '5', 'Front wheel O/F & check', '1', '92', '200', NULL, NULL, NULL, NULL),
(409, '8', 'Complete body washing & cleaning', '1', '109', '300', NULL, NULL, NULL, NULL),
(410, '6', 'LH fender denting & lining', '1', '12', '800', NULL, NULL, NULL, NULL),
(411, '7', 'LH fender painting', '1', '12', '1200', NULL, NULL, NULL, NULL),
(412, '6', 'LH Bar position Lining', '1', '12', '1600', NULL, NULL, NULL, NULL),
(413, '6', 'Front apron position Lining', '1', '12', '2500', NULL, NULL, NULL, NULL),
(414, '7', 'Front bumper painting', '1', '12', '2500', NULL, NULL, NULL, NULL),
(415, '12', 'Stepney Foundation welding & painting', '3', '28', '2000', NULL, NULL, NULL, NULL),
(416, '6', 'Bonnet denting', '1', '12', '800', NULL, NULL, NULL, NULL),
(417, '7', 'Bonnet painting', '1', '12', '3000', NULL, NULL, NULL, NULL),
(418, '5', 'Latch luck change', '7', '62', '1560', NULL, NULL, NULL, NULL),
(419, '7', 'Front bumper painting', '16', '90', '2200', NULL, NULL, NULL, NULL),
(420, '5', 'fuel tank cleaning', '16', '90', '800', NULL, NULL, NULL, NULL),
(421, '5', 'Fuel tank motor fitting', '16', '90', '650', NULL, NULL, NULL, NULL),
(422, '6', 'Rear bumper denting & lining', '20', '112', '800', NULL, NULL, NULL, NULL),
(423, '7', 'Rear bumper painting', '20', '112', '200', NULL, NULL, NULL, NULL),
(424, '5', 'Digi Glass Fitting', '1', '91', '600', NULL, NULL, NULL, NULL),
(425, '5', 'Radiator Wash', '4', '105', '200', NULL, NULL, NULL, NULL),
(426, '5', 'Water Pump Change', '4', '105', '800', NULL, NULL, NULL, NULL),
(427, '5', 'Wheel Greasing', '8', '108', '600', NULL, NULL, NULL, NULL),
(428, '5', 'Hand Brake Cable change', '8', '108', '450', NULL, NULL, NULL, NULL),
(429, '5', 'Brake pad change', '1', '12', '560', NULL, NULL, NULL, NULL),
(430, '5', 'Fog lamp change', '1', '12', '100', NULL, NULL, NULL, NULL),
(431, '5', 'Diggy shocker change', '1', '12', '200', NULL, NULL, NULL, NULL),
(432, '5', 'Head gasket change', '4', '105', '1200', NULL, NULL, NULL, NULL),
(433, '5', 'Water Pump Head gasket Change', '4', '105', '1800', NULL, NULL, NULL, NULL),
(434, '6', 'Front bumper fiber welding', '16', '101', '1400', NULL, NULL, NULL, NULL),
(435, '6', 'Digi denting & lining', '1', '11', '800', NULL, NULL, NULL, NULL),
(436, '6', 'Rear bumper denting & lining', '1', '11', '600', NULL, NULL, NULL, NULL),
(437, '7', 'Digi painting', '1', '11', '1500', NULL, NULL, NULL, NULL),
(438, '7', 'Rear bumper painting', '1', '11', '2500', NULL, NULL, NULL, NULL),
(439, '5', 'Head gasket change', '8', '113', '1200', NULL, NULL, NULL, NULL),
(440, '5', 'Head lath work', '8', '113', '2600', NULL, NULL, NULL, NULL),
(441, '5', 'Rediator wash', '8', '113', '650', NULL, NULL, NULL, NULL),
(442, '6', 'Complete body required position denting & welding', '8', '113', '45000', NULL, NULL, NULL, NULL),
(443, '7', 'Complete body painting', '8', '113', '20000', NULL, NULL, NULL, NULL),
(444, '5', 'Complete mechanical O/F', '8', '113', '8000', NULL, NULL, NULL, NULL),
(445, '9', 'complete electrical fittings & check', '8', '113', '4500', NULL, NULL, NULL, NULL),
(446, '11', 'complete upholstery item opening fitting', '8', '113', '3500', NULL, NULL, NULL, NULL),
(447, '5', 'front glass fitting', '16', '101', '750', NULL, NULL, NULL, NULL),
(448, '5', 'Fuel tank O/F', '8', '113', '400', NULL, NULL, NULL, NULL),
(449, '5', 'Complete mechanical O/F', '8', '113', '10000', NULL, NULL, NULL, NULL),
(450, '5', 'Suspension Change', '1', '92', '800', NULL, NULL, NULL, NULL),
(451, '6', 'RR Door denting and lining', '1', '80', '1000', NULL, NULL, NULL, NULL),
(452, '7', 'RR Door painting', '1', '80', '2500', NULL, NULL, NULL, NULL),
(453, '9', 'Back Light Fitting', '1', '80', '200', NULL, NULL, NULL, NULL),
(454, '5', 'clutch cable change', '1', '91', '250', NULL, NULL, NULL, NULL),
(455, '7', 'RH fender painting', '3', '18', '1500', NULL, NULL, NULL, NULL),
(456, '6', 'RH fender denting', '3', '18', '600', NULL, NULL, NULL, NULL),
(457, '6', 'front glass fitting', '3', '18', '650', NULL, NULL, NULL, NULL),
(458, '5', 'clutch assy change', '8', '113', '1400', NULL, NULL, NULL, NULL),
(459, '5', 'clutch assy change', '1', '8', '1400', NULL, NULL, NULL, NULL),
(460, '7', 'Complete body required position  painting', '1', '8', '7000', NULL, NULL, NULL, NULL),
(461, '5', 'Break pad change', '1', '8', '200', NULL, NULL, NULL, NULL),
(462, '10', 'A/C gas top up', '1', '6', '400', NULL, NULL, NULL, NULL),
(463, '14', '1ST', '21', '114', '3700', NULL, NULL, NULL, NULL),
(464, '14', '1ST', '21', '114', '20000', NULL, NULL, NULL, NULL),
(465, '6', 'Rear Ste-pin foundation denting & lining', '1', '6', '5000', NULL, NULL, NULL, NULL),
(466, '5', 'Front bumper fiber welding', '2', '47', '150', NULL, NULL, NULL, NULL),
(467, '15', 'Basic service', '23', '117', '599', NULL, NULL, NULL, NULL),
(468, '5', 'Brake shoe change', '1', '6', '1000', NULL, NULL, NULL, NULL),
(469, '16', 'OIL FF', '24', '118', '110', NULL, NULL, NULL, NULL),
(470, '15', 'Basic service', '1', '75', '800', NULL, NULL, NULL, NULL),
(471, '15', 'Basic service', '5', '55', '700', NULL, NULL, NULL, NULL),
(472, '15', 'Basic service', '1', '6', '800', NULL, NULL, NULL, NULL),
(473, '15', 'Basic service', '1', '6', '15000', NULL, NULL, NULL, NULL),
(474, '15', 'service', '1', '80', '500', NULL, NULL, NULL, NULL),
(475, '5', 'Engine oil change', '2', '46', '500', NULL, NULL, NULL, NULL),
(476, '5', 'Engine oil change', '2', '46', '500', NULL, NULL, NULL, NULL),
(477, '6', 'Bonnet denting', '4', '98', '300', NULL, NULL, NULL, NULL),
(478, '7', 'Bonnet painting', '1', '8', '22', NULL, NULL, NULL, NULL),
(479, '5', 'Brake Booster change', '8', '173', '500', NULL, NULL, NULL, NULL),
(480, '9', 'complete electrical fittings & check', '4', '229', '15000', NULL, NULL, NULL, NULL),
(481, '5', 'Brake pad change', '4', '231', '600', NULL, NULL, NULL, NULL),
(482, '5', 'Brake Booster change', '4', '231', '1200', NULL, NULL, NULL, NULL),
(483, '5', 'Brake pad change', '5', '54', '100', NULL, NULL, NULL, NULL),
(484, '10', 'compressor fitting', '9', '64', '1300', NULL, NULL, NULL, NULL),
(485, '15', 'CVT Oil Change', '4', '235', '2500', NULL, NULL, NULL, NULL),
(486, '5', 'Dual clutch repair', '2', '236', '80000', NULL, NULL, NULL, NULL),
(487, '8', 'Complete body polish', '2', '49', '500', NULL, NULL, NULL, NULL),
(488, '7', 'Bonnet painting', '4', '39', '489', NULL, NULL, NULL, NULL),
(489, '23', 'electronic', '85', '251', '40', NULL, NULL, NULL, NULL);

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
(1, 'SwiftFix', 'admin@admin.com', NULL, '$2y$10$IDRlMIiXorKrci4p0poPPOxducGKbdLV/gExYtbjb6QtsuytjOXMW', '111111', 'nnmaHg3yWFIKpKaVVOV0pgparkhjeoWmjNLnU86Y9M9N2jpwcnapcg8PHmv9', 1, NULL, '2023-08-29 08:16:09', '2023-08-29 23:27:54');

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
(1, 1, 'male', NULL, NULL, '9658476170', NULL, NULL, NULL, NULL, 'administrative', '2023-08-29 16:27:54', '2023-08-30 16:27:54', NULL),
(25, 54, NULL, NULL, NULL, NULL, 'patelnisarg2003@gmail.com', NULL, NULL, NULL, 'administrative', '2023-10-08 00:41:10', '2023-10-08 00:41:10', NULL);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `credit_debit_details`
--
ALTER TABLE `credit_debit_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2398;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=490;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user_details`
--
ALTER TABLE `user_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
