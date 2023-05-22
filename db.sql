-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 22, 2023 at 02:08 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

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
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `expense_category_id` int UNSIGNED DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `entry_date`, `amount`, `description`, `created_at`, `updated_at`, `deleted_at`, `expense_category_id`, `created_by_id`) VALUES
(1, '2023-05-22', '20000.00', NULL, '2023-05-22 09:02:29', '2023-05-22 09:05:26', NULL, 1, NULL),
(2, '2023-05-22', '10000.00', NULL, '2023-05-22 09:02:41', '2023-05-22 09:05:16', NULL, 2, NULL),
(3, '2023-05-22', '10000.00', NULL, '2023-05-22 09:03:07', '2023-05-22 09:05:08', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'Waqar Qameti', '2023-05-22 09:00:20', '2023-05-22 09:01:06', NULL, NULL),
(2, 'Bilal Qameti', '2023-05-22 09:00:32', '2023-05-22 09:00:32', NULL, NULL),
(3, 'Bike Installment', '2023-05-22 09:00:44', '2023-05-22 09:00:53', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

CREATE TABLE `incomes` (
  `id` int UNSIGNED NOT NULL,
  `entry_date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `income_category_id` int UNSIGNED DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `incomes`
--

INSERT INTO `incomes` (`id`, `entry_date`, `amount`, `description`, `created_at`, `updated_at`, `deleted_at`, `income_category_id`, `created_by_id`) VALUES
(1, '2023-05-22', '65000.00', NULL, '2023-05-22 09:03:29', '2023-05-22 09:06:05', NULL, 1, NULL),
(2, '2023-05-15', '10000.00', NULL, '2023-05-22 09:03:42', '2023-05-22 09:05:56', NULL, 2, NULL),
(3, '2023-05-22', '10000.00', NULL, '2023-05-22 09:03:55', '2023-05-22 09:05:45', NULL, 3, NULL),
(4, '2023-05-22', '5000.00', NULL, '2023-05-22 09:06:43', '2023-05-22 09:06:43', NULL, 3, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

CREATE TABLE `income_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by_id` int UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_categories`
--

INSERT INTO `income_categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by_id`) VALUES
(1, 'Monthly Salary', '2023-05-22 09:01:28', '2023-05-22 09:01:28', NULL, NULL),
(2, 'China Breakers', '2023-05-22 09:01:51', '2023-05-22 09:01:51', NULL, NULL),
(3, 'Mobile Business', '2023-05-22 09:02:08', '2023-05-22 09:02:08', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2019_09_13_000000_create_permissions_table', 1),
(8, '2019_09_13_000001_create_roles_table', 1),
(9, '2019_09_13_000002_create_users_table', 1),
(10, '2019_09_13_000003_create_expense_categories_table', 1),
(11, '2019_09_13_000004_create_income_categories_table', 1),
(12, '2019_09_13_000005_create_expenses_table', 1),
(13, '2019_09_13_000006_create_incomes_table', 1),
(14, '2019_09_13_000007_create_permission_role_pivot_table', 1),
(15, '2019_09_13_000008_create_role_user_pivot_table', 1),
(16, '2019_09_13_000009_add_relationship_fields_to_expense_categories_table', 1),
(17, '2019_09_13_000010_add_relationship_fields_to_income_categories_table', 1),
(18, '2019_09_13_000011_add_relationship_fields_to_expenses_table', 1),
(19, '2019_09_13_000012_add_relationship_fields_to_incomes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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
  `user_id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint UNSIGNED NOT NULL,
  `client_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(2, 'permission_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(3, 'permission_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(4, 'permission_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(5, 'permission_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(6, 'permission_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(7, 'role_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(8, 'role_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(9, 'role_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(10, 'role_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(11, 'role_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(12, 'user_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(13, 'user_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(14, 'user_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(15, 'user_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(16, 'user_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(17, 'expense_management_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(18, 'expense_category_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(19, 'expense_category_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(20, 'expense_category_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(21, 'expense_category_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(22, 'expense_category_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(23, 'income_category_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(24, 'income_category_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(25, 'income_category_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(26, 'income_category_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(27, 'income_category_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(28, 'expense_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(29, 'expense_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(30, 'expense_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(31, 'expense_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(32, 'expense_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(33, 'income_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(34, 'income_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(35, 'income_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(36, 'income_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(37, 'income_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(38, 'expense_report_create', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(39, 'expense_report_edit', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(40, 'expense_report_show', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(41, 'expense_report_delete', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL),
(42, 'expense_report_access', '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int UNSIGNED NOT NULL,
  `permission_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', '2019-09-13 14:15:46', '2019-09-13 14:15:46', NULL),
(2, 'User', '2019-09-13 14:15:46', '2019-09-13 14:15:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$iz6WtVj69p/5JonFfuBRVO2LwrEGTJw3I6BqliWCbSmSF.5X9RPcu', NULL, '2019-09-13 14:21:30', '2019-09-13 14:21:30', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_category_fk_334989` (`expense_category_id`),
  ADD KEY `created_by_fk_335008` (`created_by_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_fk_335006` (`created_by_id`);

--
-- Indexes for table `incomes`
--
ALTER TABLE `incomes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_category_fk_334997` (`income_category_id`),
  ADD KEY `created_by_fk_335009` (`created_by_id`);

--
-- Indexes for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `created_by_fk_335007` (`created_by_id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_334959` (`role_id`),
  ADD KEY `permission_id_fk_334959` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_334968` (`user_id`),
  ADD KEY `role_id_fk_334968` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `incomes`
--
ALTER TABLE `incomes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `income_categories`
--
ALTER TABLE `income_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `created_by_fk_335008` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_category_fk_334989` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `created_by_fk_335006` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `incomes`
--
ALTER TABLE `incomes`
  ADD CONSTRAINT `created_by_fk_335009` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `income_category_fk_334997` FOREIGN KEY (`income_category_id`) REFERENCES `income_categories` (`id`);

--
-- Constraints for table `income_categories`
--
ALTER TABLE `income_categories`
  ADD CONSTRAINT `created_by_fk_335007` FOREIGN KEY (`created_by_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_334959` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_334959` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_334968` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_334968` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
