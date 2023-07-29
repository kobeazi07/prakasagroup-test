-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 08:42 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `crud`
--

CREATE TABLE `crud` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud`
--

INSERT INTO `crud` (`id`, `users_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(4, 1, 'Hola Salam Justalk', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid ipsam, aut quasi eveniet et laboriosam maxime tenetur tempore. Laudantium veritatis tempore, ex deleniti quis aliquam eveniet impedit pariatur corrupti aut!', '2023-07-28 13:30:47', '2023-07-28 14:23:17'),
(6, 1, 'selamat datang Semuanya', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Aliquid ipsam, aut quasi eveniet et laboriosam maxime tenetur tempore. Laudantium veritatis tempore, ex deleniti quis aliquam eveniet impedit pariatur corrupti aut!', '2023-07-28 14:22:15', '2023-07-28 14:22:15'),
(7, 1, 'Laravel Passport', 'Berikut Penjelasan laravel Passport', '2023-07-28 17:35:08', '2023-07-28 17:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(10, '2014_10_12_000000_create_users_table', 1),
(11, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(12, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(13, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(14, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(15, '2016_06_01_000004_create_oauth_clients_table', 1),
(16, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1),
(18, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(19, '2023_07_28_070837_add_users_table', 2),
(20, '2023_07_28_084023_create_crud_table', 3),
(21, '2023_07_28_210622_add_crud_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` char(36) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('329dcf3781619675db868d0c5355244d0a21794ec82daa7d3fc5c9c9494c38d9733e833a36076398', 1, '99c0bf08-eca5-4e19-ab02-fb032380e0c0', 'Laravel8PassportAuth', '[]', 0, '2023-07-28 01:22:06', '2023-07-28 01:22:06', '2024-07-28 08:22:06'),
('801043548cc2378fb2366a77c36cb83cf3d01042ed1267eed1170331c692c584b53072826a9a6f54', 1, '99c0bf08-eca5-4e19-ab02-fb032380e0c0', 'Laravel8PassportAuth', '[]', 0, '2023-07-28 01:01:56', '2023-07-28 01:01:56', '2024-07-28 08:01:56'),
('a94711ee0d2a33a4a8859cbf6cb8a5501816cf97a3e4dda7f2f6846b7f791c7e1464b898df62f537', 1, '99c0bf08-eca5-4e19-ab02-fb032380e0c0', 'Laravel8PassportAuth', '[]', 0, '2023-07-28 17:30:03', '2023-07-28 17:30:03', '2024-07-29 00:30:03');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `scopes` text DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` char(36) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `secret` varchar(100) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `redirect` text NOT NULL,
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
('99bf159a-e5cc-475c-8581-fb0bb8c52fde', NULL, 'Laravel Personal Access Client', 'CQ1BK32JXLJGjYf88gL9bLtTQr9lcQa3lqHzjKaL', NULL, 'http://localhost', 1, 0, 0, '2023-07-27 05:10:02', '2023-07-27 05:10:02'),
('99bf159a-eb53-4c71-af30-6cfc8ee1b892', NULL, 'Laravel Password Grant Client', 'K5ZBfBR76p7wqmH71vpDLofK3V0uMXypiRoBO3qt', 'users', 'http://localhost', 0, 1, 0, '2023-07-27 05:10:02', '2023-07-27 05:10:02'),
('99bf15a3-5e74-440e-a05b-745256380a2a', NULL, 'Laravel Personal Access Client', '0numiJTmplCeS7JJ2DR3BldNYi9p2oLOCq00zwxZ', NULL, 'http://localhost', 1, 0, 0, '2023-07-27 05:10:08', '2023-07-27 05:10:08'),
('99bf15a3-6a50-4e5a-b6bb-e5761c120b8b', NULL, 'Laravel Password Grant Client', 'bgg0wvqn9yaD3DFuiADyKEfdehxWwn6Z84uRHVYA', 'users', 'http://localhost', 0, 1, 0, '2023-07-27 05:10:08', '2023-07-27 05:10:08'),
('99c0bef8-6b69-44e4-b917-b8a8c7d706f4', NULL, 'Laravel Personal Access Client', '$2y$10$d739LUK3SPy0DHI37Qz6nu6Edjx18wUHZ2s8DCHeV5agtqArQn6jK', NULL, 'http://localhost', 1, 0, 0, '2023-07-28 00:59:27', '2023-07-28 00:59:27'),
('99c0bef8-87d5-4317-8777-54b113e0f868', NULL, 'Laravel Password Grant Client', '$2y$10$oZoj6gzqm/3Xox./Xz5Nu.eiZnR0sLVCpZW/Dx..62Ef4nssFG0Qa', 'users', 'http://localhost', 0, 1, 0, '2023-07-28 00:59:27', '2023-07-28 00:59:27'),
('99c0bf08-eca5-4e19-ab02-fb032380e0c0', NULL, 'Laravel Personal Access Client', '$2y$10$KRXfriKpdXQyrliDIxz3SOoY90BctntTd8V7oh1vkXdnoF76HiUo6', NULL, 'http://localhost', 1, 0, 0, '2023-07-28 00:59:38', '2023-07-28 00:59:38'),
('99c0bf09-0dad-475d-8c89-5f92e95aaf69', NULL, 'Laravel Password Grant Client', '$2y$10$Gv1U8vN33imD9hAmMj2iAepfC/IMG0wdkGtLrpIFzHema5rFHPjui', 'users', 'http://localhost', 0, 1, 0, '2023-07-28 00:59:38', '2023-07-28 00:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` char(36) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, '99bf159a-e5cc-475c-8581-fb0bb8c52fde', '2023-07-27 05:10:02', '2023-07-27 05:10:02'),
(2, '99bf15a3-5e74-440e-a05b-745256380a2a', '2023-07-27 05:10:08', '2023-07-27 05:10:08'),
(3, '99c0bef8-6b69-44e4-b917-b8a8c7d706f4', '2023-07-28 00:59:27', '2023-07-28 00:59:27'),
(4, '99c0bf08-eca5-4e19-ab02-fb032380e0c0', '2023-07-28 00:59:38', '2023-07-28 00:59:38');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) NOT NULL,
  `access_token_id` varchar(100) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'asadel', 'aziziasadel@gmail.com', NULL, '$2y$10$XqdcT3bU26SrG0hwdJzwfOe7MHrzQ6TMYcMWo3AKoxaeJslMqJ0H2', 'Admin', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `crud`
--
ALTER TABLE `crud`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `crud`
--
ALTER TABLE `crud`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
