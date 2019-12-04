-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2019 at 09:33 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larastart`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(5, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(7, '2016_06_01_000004_create_oauth_clients_table', 2),
(8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'GCTL Infosys Personal Access Client', 'DFX4EFpO7pbXwtwJdPUOjrFyiY1RhupKfyQrlIQ2', 'http://localhost', 1, 0, 0, '2019-12-03 01:40:22', '2019-12-03 01:40:22'),
(2, NULL, 'GCTL Infosys Password Grant Client', 'UB077zAYkNlg8mpRxS8GVVgiUARHN3greMHQgqSa', 'http://localhost', 0, 1, 0, '2019-12-03 01:40:22', '2019-12-03 01:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-12-03 01:40:22', '2019-12-03 01:40:22');

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `bio` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'profile.png',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `type`, `bio`, `photo`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joyantasdfdsfds', 'admin@admin.com', '$2y$10$WWFVcj5SJXfDeGut3/QX7uZtNSV7ph1xVwWiLot0QnpWcbe59GpMK', 'admin', NULL, '1575440113.png', NULL, '2019-11-22 07:39:19', '2019-12-04 00:39:00'),
(2, 'ytutyu', 'uyin@admin.com', '$2y$10$ctKKmlq65oj68WTK8AGDQOcPDOVwF.MbCGxRRO9f58vPWaXk3OuZ2', 'user', 'utyu', NULL, NULL, '2019-11-22 07:51:41', '2019-11-22 07:51:41'),
(3, 'progress', 'fdsd@admin.com', '$2y$10$18Ys9dlhrKxF8ZDSo46N4eZEnjPOwpazhwBZ48j8B2l4gw0DQNZ2u', 'admin', 'fsdfsd', NULL, NULL, '2019-11-22 08:43:14', '2019-11-22 08:43:14'),
(4, 'Sweet', 'fdsf@sd.gfh', '$2y$10$suq6kDCBqtM0aIvv.I9G3OToGHUDQo3CteBe//cv/wZgiY.1QqKqO', 'user', 'hfhg', NULL, NULL, '2019-11-22 09:09:54', '2019-11-22 09:09:54'),
(5, 'greg', 'adgremin@admin.com', '$2y$10$cu6CQ/MJVSkgL.EjLL5jiuMiPR0LXdL8hk5V1tDdJyCzZNun81Iyy', 'user', 'greg', NULL, NULL, '2019-11-22 09:10:27', '2019-11-22 09:10:27'),
(6, 'rferfe', 'admerin@admin.com', '$2y$10$wul78fs0FVzeb2r7KiR.G.gm59.Huu28ceW.mmoeCCxLsz0UY1N5S', 'admin', NULL, NULL, NULL, '2019-11-22 09:12:25', '2019-11-22 09:12:25'),
(7, 'htrhtth', 'adminyty@admin.com', '$2y$10$pPx0v9DsIt0sn0y0g/uPTu8ZMHk/4CV5yh2/Ej.3lV8aeNhKLQfh.', 'admin', NULL, NULL, NULL, '2019-11-22 09:14:10', '2019-11-22 09:14:10'),
(8, 'regrefgv', 'trt@admin.com', '$2y$10$hvh7SxtzDaKdRvlx6jXG2eRpeZ0Q/sB2sw7KwdLE3mODmLjZg5aDy', 'admin', NULL, NULL, NULL, '2019-11-22 09:19:46', '2019-11-22 09:19:46'),
(9, 'New', 'n@admin.com', '$2y$10$bgUtTijCi1gb8/eOyISheOuxo4.FoPDLjBVMywIs3iWwMcXiMXt/e', 'admin', 'sfsd', NULL, NULL, '2019-11-22 09:48:38', '2019-11-22 09:48:38'),
(10, 'New2', 'kk@admin.com', '$2y$10$h9Z/ab1cyh6BWequwz1rSesNglE78sV9lu17gJSi1AH5mDn0QHICe', 'admin', NULL, NULL, NULL, '2019-11-22 09:50:53', '2019-11-22 09:50:53'),
(11, 'hthr', 'admin@admin.ytycom', '$2y$10$Ig6xMF3kJwIcIns.tbhUpul97nFZytj0J3pLchnfNwX61dp6qS4s.', 'admin', NULL, NULL, NULL, '2019-11-23 08:36:46', '2019-11-23 08:36:46'),
(12, 'jkhjkhkh', 'akhkjkdmin@admin.com', '$2y$10$/eylkkq.1lvBwLH11Z3vF.JOoV6lroqNuP8xrQMgeOhyTBgNI2HoS', 'admin', 'hkhjk', NULL, NULL, '2019-11-23 08:39:16', '2019-11-23 08:39:16'),
(13, 'uyuytu', 'aduyuyumin@admin.com', '$2y$10$o.3r9tpf.r.IQvohpzdk1e8sQtZ6WfGjSgeV/skHjOm/157dBrss.', 'admin', 'uyutyu', NULL, NULL, '2019-11-23 08:40:44', '2019-11-23 08:40:44'),
(14, 'kjhkjhkhk', 'ajkjkdmin@admin.com', '$2y$10$3DYl2Hg1J6BWe83EqnZOmubS94lYuuOLgRI9tLY9jakutrjqT59XO', 'user', 'kjkjk', NULL, NULL, '2019-11-23 08:44:56', '2019-11-23 08:44:56'),
(15, 'Joyanta', 'joyanta@admin.com', '$2y$10$D3C.0I8g7KGUF5ONHwad..CxPd7AmU8eRkEEL0r14F5vhXyd4ITfW', 'author', 'hghgh', NULL, NULL, '2019-11-23 08:53:49', '2019-12-03 00:45:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
