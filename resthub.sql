-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 13, 2018 at 03:42 PM
-- Server version: 5.7.14-log
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resthub`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `restaurant_id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'ad', 1, 'ad@ad.com', '$2y$10$U8RPKJyHNju5GMf.o4vJhuHM7LWKk3/ozviM7L/J4SEFJFIUl2nUK', NULL, '2018-03-13 07:20:46', '2018-03-13 07:20:46');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(10) UNSIGNED NOT NULL,
  `timing` datetime NOT NULL,
  `user_id` int(11) NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `timing`, `user_id`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(2, '2018-03-15 02:00:00', 1, 1, '2018-03-13 07:21:11', '2018-03-13 07:21:11'),
(3, '2018-03-08 02:00:00', 1, 1, '2018-03-13 09:05:14', '2018-03-13 09:05:14');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment_body` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `restaurant_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `comment_body`, `restaurant_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 'asd', 1, 1, '2018-03-13 07:00:49', '2018-03-13 07:00:49'),
(6, 'nice', 1, 1, '2018-03-13 09:07:10', '2018-03-13 09:07:10');

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
(8, '2018_03_05_170138_create_managers_table', 5),
(9, '2018_03_05_170139_create_manager_password_resets_table', 5),
(14, '2018_03_05_123517_create_admins_table', 6),
(15, '2018_03_05_175014_create_admins_table', 7),
(16, '2018_03_05_175015_create_admin_password_resets_table', 7),
(23, '2014_10_12_000000_create_users_table', 8),
(24, '2014_10_12_100000_create_password_resets_table', 8),
(25, '2018_02_22_164008_create_restaurants_table', 8),
(26, '2018_02_25_172243_create_bookings_table', 8),
(27, '2018_03_11_165221_create_admins_table', 8),
(28, '2018_03_13_123416_create_comments_table', 9);

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
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `type`, `address`, `area`, `menu`, `description`, `created_at`, `updated_at`) VALUES
(1, '24x', 'Mexican', '1005 Kraig Mountain Apt. 544\nLake Theresa, CT 09610', 'Agrabad', '1', 'Vel commodi eum architecto. Veritatis est nemo fugiat quibusdam neque ipsam similique. Sit sapiente numquam dolores molestiae nostrum.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(2, '3Cc', 'Deshi', '4214 Gabriella Shores Apt. 786\nMajorchester, CT 05019-0761', '2 no. gate', NULL, 'Reprehenderit in perferendis debitis. Repudiandae consequuntur qui nam eveniet atque omnis voluptatum et. Deleniti minus aut est ipsam sint minus provident.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(3, '0Be', 'Deshi', '524 Walsh Curve\nPort Kenborough, IL 07132', 'Lalkhan Bazar', NULL, 'Laboriosam cupiditate ullam eum voluptatem ad voluptas. Magni temporibus delectus perspiciatis ut et soluta voluptas. Distinctio necessitatibus sed cupiditate commodi id dignissimos.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(4, 'CIo', 'Mexican', '30631 Rolfson Drive\nLuciousfurt, CT 35797', 'GEC', NULL, 'Hic velit dolor alias rerum. Labore eligendi quod quibusdam voluptas. Sed ipsum assumenda nisi quia veritatis et. Voluptas delectus voluptas voluptates consequatur cupiditate consectetur alias est.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(5, 'qVQ', 'Chinese', '9898 Oberbrunner Cove\nNew Abbey, ND 55425-5665', 'GEC', NULL, 'Quia est alias ad error soluta hic. Voluptas voluptatem iste id architecto iusto officia sed accusamus.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(6, 'cAJ', 'Indian', '233 Bashirian Street Apt. 772\nJairoshire, MS 95089', 'GEC', NULL, 'Fugit enim nihil assumenda quisquam at. Explicabo enim aliquam repellat repudiandae eum. Quia deserunt veritatis aut quibusdam dolor aperiam aut. Odit incidunt alias alias.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(7, '5er', 'Indian', '715 Oberbrunner Bypass\nLake Lornatown, IL 82622-7184', 'Lalkhan Bazar', NULL, 'Totam iure rem id quo odit dolorem. Autem sapiente ut ex. Necessitatibus quos omnis nemo atque occaecati.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(8, 'mHa', 'Deshi', '58401 Nolan Harbor\nEast Kim, MI 96953-6667', 'Lalkhan Bazar', NULL, 'Sunt sunt iste sunt cumque. Ut sed quis voluptates vitae animi. Aut fugit in voluptatum nesciunt quo nihil sapiente.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(9, 'FhZ', 'Deshi', '986 Roberts Mission\nLake Garland, MI 49371', 'Muradpur', NULL, 'Aut at quos quia et cum eaque. Aut itaque est sapiente error aliquam nemo accusamus. Amet est provident unde. Voluptatem totam beatae rerum aut.', '2018-03-13 03:42:34', '2018-03-13 03:42:34'),
(10, 'LDC', 'Mexican', '982 Batz Wall Apt. 524\nNorth Jeffton, ME 10906', 'Agrabad', NULL, 'Consequatur quia nihil minima illum optio. Quasi iusto recusandae qui commodi. Doloribus magni quia voluptatibus dolore.', '2018-03-13 03:42:34', '2018-03-13 03:42:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'a', 'a', 'a@a.com', '$2y$10$lNUdRuVDa/GZCweoAE74BOOojUgWnvxuXNnuY.hP1T2vNjk.6o5ty', 'Xq4h7ALQ78PfYDqhLD1juQ9dUubv6J0wDiEBPCPergi8tA3XWjZnGvil9w8l', '2018-03-13 03:54:05', '2018-03-13 03:54:05'),
(2, 'qwe', 'qwe', 'zahirulslam261@gmail.com', '$2y$10$MP4WYMn/P9w3nRAfsqn8tuMrZrXHr2eE3vGvnrMNOageJFYevCaYK', 'QbkZ2ie5S5R4HNisPDSTBlQoNDboN4Pm4OM1S2SLYCI2nEBGWz2LEaEmnYlf', '2018-03-13 07:01:10', '2018-03-13 07:01:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
