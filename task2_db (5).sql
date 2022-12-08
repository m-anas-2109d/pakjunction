-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 08, 2022 at 09:15 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `task2_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_registrations`
--

DROP TABLE IF EXISTS `admin_registrations`;
CREATE TABLE IF NOT EXISTS `admin_registrations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_registrations`
--

INSERT INTO `admin_registrations` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'muhammadanasz786@gmail.com', 'admin123', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `citymodels`
--

DROP TABLE IF EXISTS `citymodels`;
CREATE TABLE IF NOT EXISTS `citymodels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cityname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countryid` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `citymodels_countryid_foreign` (`countryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companymodels`
--

DROP TABLE IF EXISTS `companymodels`;
CREATE TABLE IF NOT EXISTS `companymodels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyowner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companymailaddress` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companypassword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companycity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companycountry` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companystate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyzipcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyphonenumber` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companynominalcapital` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companylocation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companystatus` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companyprofiletbls`
--

DROP TABLE IF EXISTS `companyprofiletbls`;
CREATE TABLE IF NOT EXISTS `companyprofiletbls` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `companyimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'companydefault.jpg',
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_years` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employees` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_reg` date DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` int(11) DEFAULT NULL,
  `country_code` int(11) DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type_of_service` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_map` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_histroy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `companyprofiletbls_userid_foreign` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companyprofiletbls`
--

INSERT INTO `companyprofiletbls` (`id`, `company_name`, `companyimage`, `country`, `city`, `state`, `company_years`, `employees`, `date_of_reg`, `address`, `postal_code`, `country_code`, `phone`, `about`, `type_of_service`, `location_map`, `company_histroy`, `company_type`, `userid`, `created_at`, `updated_at`) VALUES
(1, 'company', '149708211.download.jpg', 'pk', 'Karachi', 'Sindh', '1', NULL, '2022-12-03', 'karachi', 1999, 92, '3400154824', 'about', '1', 'http://localhost:8000/basic_company', 'Histroy', '1', '1', '2022-12-02 13:36:01', '2022-12-07 01:35:49'),
(2, NULL, 'companydefault.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2', '2022-12-03 00:07:25', '2022-12-03 00:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `competitionmodels`
--

DROP TABLE IF EXISTS `competitionmodels`;
CREATE TABLE IF NOT EXISTS `competitionmodels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `competitionname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competitionimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competitionduration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competitiondescritpion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `competitionstatus` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countrytbls`
--

DROP TABLE IF EXISTS `countrytbls`;
CREATE TABLE IF NOT EXISTS `countrytbls` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `countryname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departmenttbls`
--

DROP TABLE IF EXISTS `departmenttbls`;
CREATE TABLE IF NOT EXISTS `departmenttbls` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `depname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employees` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `departmentstatus` int(11) NOT NULL DEFAULT '1',
  `company_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `departmenttbls_company_id_foreign` (`company_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departmenttbls`
--

INSERT INTO `departmenttbls` (`id`, `depname`, `designation`, `employees`, `departmentstatus`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Marketing', 'laravel', '50 to 100', 1, 1, '2022-12-02 23:37:12', '2022-12-06 23:11:36'),
(2, 'Marketin', 'laravel', '1 to 50', 1, 1, '2022-12-02 23:37:48', '2022-12-07 23:25:37'),
(3, 'ggghkh', 'laravel', '1 to 50', 1, 1, '2022-12-07 04:12:25', '2022-12-07 04:12:25');

-- --------------------------------------------------------

--
-- Table structure for table `eventmodels`
--

DROP TABLE IF EXISTS `eventmodels`;
CREATE TABLE IF NOT EXISTS `eventmodels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `eventtitle` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventduration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `organizationname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventdescritpion` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `eventstatus` int(11) NOT NULL DEFAULT '0',
  `eventmode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobmodels`
--

DROP TABLE IF EXISTS `jobmodels`;
CREATE TABLE IF NOT EXISTS `jobmodels` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobdescription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `minimumqualification` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `experienceofyears` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salaryrange` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `companyname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currentdate` date NOT NULL,
  `companystatus` int(11) NOT NULL DEFAULT '0',
  `selectjob` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jobmodels_company_id_foreign` (`company_id`),
  KEY `jobmodels_department_id_foreign` (`department_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobmodels`
--

INSERT INTO `jobmodels` (`id`, `images`, `jobdescription`, `minimumqualification`, `experienceofyears`, `salaryrange`, `gender`, `companyname`, `currentdate`, `companystatus`, `selectjob`, `company_id`, `department_id`, `created_at`, `updated_at`) VALUES
(2, '681517414.Capture.JPG', 'laaravel', '1', 'fresh', '8', 'male', 'company', '2022-12-03', 1, 'Per hours pay', 1, 2, '2022-12-03 00:00:20', '2022-12-08 01:40:31'),
(12, '1219804497.industrail.jpg', 'ddd', '1', 'fresh', '8', 'male', 'company', '2022-12-07', 0, 'Part time', 1, 3, '2022-12-07 13:58:37', '2022-12-07 23:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=271 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(256, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(257, '2019_08_19_000000_create_failed_jobs_table', 1),
(258, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(259, '2022_11_17_081601_create_sessions_table', 1),
(260, '2022_11_17_091006_create_companyprofiletbls_table', 1),
(261, '2022_11_17_091335_create_citymodels_table', 1),
(262, '2022_11_17_091348_create_eventmodels_table', 1),
(263, '2022_11_17_091400_create_competitionmodels_table', 1),
(264, '2022_11_17_091413_create_volunteers_table', 1),
(265, '2022_11_17_091429_create_companymodels_table', 1),
(266, '2022_11_17_091440_create_jobmodels_table', 1),
(267, '2022_11_17_091451_create_departmenttbls_table', 1),
(268, '2022_11_17_091536_create_countrytbls_table', 1),
(269, '2022_11_19_082235_create_admin_registrations_table', 1),
(254, '2014_10_12_000000_create_users_table', 1),
(255, '2014_10_12_100000_create_password_resets_table', 1),
(270, '2022_12_03_120159_company_profile', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('uFgN5lldsbNi1r48Evlyh0ktPiIdou6keUyXTyk0', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/108.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWFhJNVlNR0R5TWs3Y2hEeVZhWXZ0Y3k1N3loZXpRM081VEQ1UVNOZSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9jb21wYW55cHJvZmlsZSI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkeFdGN0diLmYvdzlsQjdPTGRzOGV1dTl2WGcvT3BkbGU3Qk9lcHRFVXo5N3NIYlJ5dmdOUEMiO30=', 1670488396);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `role`, `status`, `created_at`, `updated_at`) VALUES
(1, 'anas', 'anus2109d@aptechgdn.net', '2022-12-02 13:36:01', '$2y$10$xWF7Gb.f/w9lB7OLds8euu9vXg/Opdle7BOeptEUz97sHbRyvgNPC', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2022-12-02 13:35:48', '2022-12-06 23:57:11'),
(2, 'taha', 'muhammadtaha2107a@aptechgdn.net', '2022-12-03 05:07:19', '$2y$10$0qTol5Qp34TaQgVY7CqkQeDNerffWJ8/OBAPDnVJfihOXGUC39sq6', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1, '2022-12-03 00:03:55', '2022-12-03 00:03:55');

-- --------------------------------------------------------

--
-- Table structure for table `volunteers`
--

DROP TABLE IF EXISTS `volunteers`;
CREATE TABLE IF NOT EXISTS `volunteers` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `volunteername` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteerimage` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteeremail` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteerpassword` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteerage` int(11) NOT NULL,
  `volunteershortdescription` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteerselect` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `volunteerstatus` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
