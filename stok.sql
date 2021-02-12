-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 12, 2021 at 08:49 PM
-- Server version: 5.7.33-0ubuntu0.16.04.1
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stok`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(10) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_cat` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_barang`, `id_cat`, `created_at`, `updated_at`) VALUES
(1, 'kemeja kerja', 1, '2021-02-11 23:28:43', '2021-02-11 23:44:10'),
(2, 'celana panjang', 1, '2021-02-11 23:40:53', '2021-02-11 23:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_cat` int(10) UNSIGNED NOT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_cat`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'mens', '2021-02-11 10:43:44', '2021-02-11 10:43:44'),
(7, 'womens', '2021-02-11 11:19:30', '2021-02-11 12:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2021_02_11_150829_create_table_category', 2),
(10, '2021_02_11_151818_create_table_barang', 3),
(11, '2021_02_11_154619_create_table_category', 4),
(12, '2021_02_11_155317_create_table_category', 5),
(13, '2021_02_11_155446_create_table_category', 6),
(14, '2021_02_11_161655_create_barang', 7),
(15, '2021_02_11_162505_create_barang', 8),
(16, '2021_02_11_162633_create_barang', 9),
(17, '2021_02_11_162815_create_barang', 10),
(18, '2021_02_12_065410_create_stokmasuk', 11),
(19, '2021_02_12_070558_create_stokkeluar', 12);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('438d314881bec4dc81c561c062114a6840914c673f208e94d5084b1992d8f532eca1ec40274a3219', 3, 1, 'nApp', '[]', 0, '2021-02-11 07:15:34', '2021-02-11 07:15:34', '2022-02-11 14:15:34'),
('5738d4936b8b63f7b5de97144c09909496dff1685c378fcc13533b3fdbde5dd892c36330afd2db20', 1, 1, 'nApp', '[]', 0, '2021-02-11 06:46:20', '2021-02-11 06:46:20', '2022-02-11 13:46:20'),
('7c639e5f5eff3401d03000bfa902618c4f2f855adeaac97239df6fa212a22fe5bd82679e5e2a78b5', 1, 1, 'nApp', '[]', 0, '2021-02-11 06:42:34', '2021-02-11 06:42:34', '2022-02-11 13:42:34'),
('a5b8adc1a8b0cee4371f137125009e4867f1d9f34a9834ed545c841f326e328cbbf012344b110c26', 3, 1, 'nApp', '[]', 0, '2021-02-11 07:18:09', '2021-02-11 07:18:09', '2022-02-11 14:18:09'),
('eef31b1e4ffeb6f7f05427ed5b1d6454f88d2de0f7432ffd77258b52b1bd7516c0011b47fe4dc547', 3, 1, 'nApp', '[]', 0, '2021-02-11 07:11:42', '2021-02-11 07:11:42', '2022-02-11 14:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'hWmSIdl1HTwUILv7WJ0An56JI9Ix4ISF2eOihF4N', NULL, 'http://localhost', 1, 0, 0, '2021-02-11 05:37:34', '2021-02-11 05:37:34'),
(2, NULL, 'Laravel Password Grant Client', 'RLObjVLxC0iPtxJ0jqYeKGMRYsmcoYDMOaIBpiBc', 'users', 'http://localhost', 0, 1, 0, '2021-02-11 05:37:34', '2021-02-11 05:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-02-11 05:37:34', '2021-02-11 05:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stokkeluar`
--

CREATE TABLE `stokkeluar` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` decimal(10,0) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stokkeluar`
--

INSERT INTO `stokkeluar` (`id`, `tanggal`, `id_barang`, `qty`, `created_at`, `updated_at`) VALUES
(1, '2021-01-03', 1, '8', '2021-02-12 00:13:38', '2021-02-12 00:50:53'),
(3, '2021-01-03', 1, '9', '2021-02-12 00:52:30', '2021-02-12 00:52:30');

-- --------------------------------------------------------

--
-- Table structure for table `stokmasuk`
--

CREATE TABLE `stokmasuk` (
  `id` int(10) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `id_barang` bigint(20) UNSIGNED NOT NULL,
  `qty` decimal(10,0) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stokmasuk`
--

INSERT INTO `stokmasuk` (`id`, `tanggal`, `id_barang`, `qty`, `created_at`, `updated_at`) VALUES
(1, '2021-01-01', 1, '10', '2021-02-12 00:12:41', '2021-02-12 00:12:41'),
(2, '2021-01-03', 1, '12', '2021-02-12 00:33:42', '2021-02-12 00:33:42'),
(4, '2021-01-03', 1, '26', '2021-02-12 00:42:13', '2021-02-12 00:44:41'),
(5, '2021-01-02', 2, '5', '2021-02-12 05:29:21', '2021-02-12 05:29:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `id_role` int(1) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `id_role`, `updated_at`) VALUES
(1, 'ronald', 'sschouse@gmail.com', NULL, '$2y$10$IGz1eWDaVlv2GHZyOqWaIOTlVBigm//2euVv3l4BVOq5r58FHOeJK', NULL, '2021-02-11 06:42:34', 1, '2021-02-11 06:42:34'),
(3, 'ronald2', 'ronald@gmail.com', NULL, '$2y$10$fAjby.8WzAEseQEZpnNsd.YSETr1kCDFZYgLYaFjPRTFMKOdKBTUG', NULL, '2021-02-11 07:11:42', 0, '2021-02-11 07:11:42');

-- --------------------------------------------------------

--
-- Table structure for table `users_role`
--

CREATE TABLE `users_role` (
  `id` int(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_role`
--

INSERT INTO `users_role` (`id`, `description`, `updated_at`, `created_at`) VALUES
(0, 'admin', NULL, NULL),
(1, 'gudang', NULL, NULL),
(3, 'accounting', '2021-02-11 22:50:57', '2021-02-11 22:50:57'),
(4, 'keuangan', '2021-02-11 23:07:37', '2021-02-11 23:07:37');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_barang_keluar`
-- (See below for the actual view)
--
CREATE TABLE `v_barang_keluar` (
`id` int(10) unsigned
,`id_barang` int(10) unsigned
,`nama_barang` varchar(255)
,`deskripsi` varchar(255)
,`tanggal` date
,`qty` decimal(10,0) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_barang_masuk`
-- (See below for the actual view)
--
CREATE TABLE `v_barang_masuk` (
`id` int(10) unsigned
,`id_barang` int(10) unsigned
,`nama_barang` varchar(255)
,`deskripsi` varchar(255)
,`tanggal` date
,`qty` decimal(10,0) unsigned
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stok`
-- (See below for the actual view)
--
CREATE TABLE `v_stok` (
`id_barang` int(11) unsigned
,`nama_barang` varchar(255)
,`tanggal` date
,`jenis` varchar(6)
,`qty` decimal(11,0)
);

-- --------------------------------------------------------

--
-- Structure for view `v_barang_keluar`
--
DROP TABLE IF EXISTS `v_barang_keluar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_barang_keluar`  AS SELECT `stokkeluar`.`id` AS `id`, `barang`.`id_barang` AS `id_barang`, `barang`.`nama_barang` AS `nama_barang`, `category`.`deskripsi` AS `deskripsi`, `stokkeluar`.`tanggal` AS `tanggal`, `stokkeluar`.`qty` AS `qty` FROM ((`barang` join `stokkeluar`) join `category`) WHERE ((`barang`.`id_barang` = `stokkeluar`.`id_barang`) AND (`category`.`id_cat` = `barang`.`id_cat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_barang_masuk`
--
DROP TABLE IF EXISTS `v_barang_masuk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_barang_masuk`  AS SELECT `stokmasuk`.`id` AS `id`, `barang`.`id_barang` AS `id_barang`, `barang`.`nama_barang` AS `nama_barang`, `category`.`deskripsi` AS `deskripsi`, `stokmasuk`.`tanggal` AS `tanggal`, `stokmasuk`.`qty` AS `qty` FROM ((`barang` join `stokmasuk`) join `category`) WHERE ((`barang`.`id_barang` = `stokmasuk`.`id_barang`) AND (`category`.`id_cat` = `barang`.`id_cat`)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stok`
--
DROP TABLE IF EXISTS `v_stok`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stok`  AS SELECT `barang`.`id_barang` AS `id_barang`, `barang`.`nama_barang` AS `nama_barang`, `stokmasuk`.`tanggal` AS `tanggal`, 'masuk' AS `jenis`, `stokmasuk`.`qty` AS `qty` FROM (`barang` join `stokmasuk`) WHERE (`barang`.`id_barang` = `stokmasuk`.`id_barang`) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_cat`),
  ADD UNIQUE KEY `deskripsi` (`deskripsi`),
  ADD KEY `category_id_cat_index` (`id_cat`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `stokkeluar`
--
ALTER TABLE `stokkeluar`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stokkeluar_id_index` (`id`);

--
-- Indexes for table `stokmasuk`
--
ALTER TABLE `stokmasuk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stokmasuk_id_index` (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_role`
--
ALTER TABLE `users_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_cat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stokkeluar`
--
ALTER TABLE `stokkeluar`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stokmasuk`
--
ALTER TABLE `stokmasuk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
