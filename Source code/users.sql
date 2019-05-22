-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2019 at 05:46 PM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buatregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_dpn` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_blk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama_dpn`, `nama_blk`, `email`, `password`, `status`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'yuyun', 'indah', 'yunda@gmail.com', '$2y$10$Yb8Kd6S82IS6EKXVnN5CBujaZasyMvzBvjQW8ySHioYc1iTFUbAkq', '0', 'NHdVeVFhdUp3S1U0azNGQlhBUFhOYXdERlBHMWI5RUtsR2tIYUI2ag==', '2019-05-22 07:33:04', '2019-05-22 12:34:32'),
(2, 'fifah', 'khofifah', 'ffh@gmail.com', '$2y$10$HW3vRcFawyFYCC7k8gZ2B.sSKhyTxvAGYWv4rokO6u0br43MCzvSG', '1', 'cERobmUzT3hHNGNTcTJPcUdHVDdqNHREbzY0T0xXZkQzQXF6eVlwbg==', '2019-05-22 12:37:54', '2019-05-22 13:12:08'),
(3, 'doni', 'jhon', 'jhon@gmail.com', '$2y$10$Kr6ou3Re08q8HHfLEO27Quyea5/VU6soV70qOpWq44Kdpt72dI5nW', '0', '0', '2019-05-22 15:42:59', '2019-05-22 15:42:59');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
