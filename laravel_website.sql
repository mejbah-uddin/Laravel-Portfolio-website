-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 04:22 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `username`, `password`, `email`) VALUES
(1, 'admin', 'adminUser', '12345', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_msg` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `contact_name`, `contact_mobile`, `contact_email`, `contact_msg`) VALUES
(7, 'main uddin', '01710998877', 'one@gmail.com', 'Something is New'),
(8, 'main uddin', '017109986777', 'ongehgfe@gmail.com', 'sahbfdnrgsmh'),
(9, 'mejbahuddin', '99084565764736', 'vthfdbe@gmail.com', 'getanfyrrfdv');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_totalenroll` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_totalclass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `course_name`, `course_des`, `course_fee`, `course_totalenroll`, `course_totalclass`, `course_link`, `course_img`) VALUES
(1, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(4, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(6, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(8, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(9, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(10, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(11, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(12, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(13, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(14, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(15, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(16, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(17, 'লারাভেল এবং প্রোজেক্ট new', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg'),
(18, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/android.jpg'),
(19, 'লারাভেল এবং প্রোজেক্ট', 'আইটি কোর্স, প্রজেক্ট ভিত্তিক সোর্স কোড সহ আরো যে সকল সার্ভিস আমরা প্রদান করি', 'কোর্স ফি : ১০০০ কোর্স ফি : ১০০০', 'মোট শিক্ষার্থী : 200 মোট শিক্ষার্থী : 200', 'মোট ক্লাস ১২০টি', 'https://laravel.rabbil.com/', 'http://localhost/images/laravel.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `home_seo`
--

CREATE TABLE `home_seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `share_title` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_img` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_seo`
--

INSERT INTO `home_seo` (`id`, `title`, `share_title`, `description`, `keywords`, `page_img`) VALUES
(1, 'হোম', 'লার্ন রাব্বলি হাসান', 'প্রোগ্রামি, ওয়েব ডেবেলপমেন্ট, অ্যাপ ডেবেলপমেন্ট', 'Rabbil Hasan , Mobile app Development Bangla Tutorial', 'storage/bannerImg.png');

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
(1, '2021_05_19_171815_visitor_table', 1),
(2, '2021_05_21_061958_services_table', 2),
(3, '2021_05_25_151035_courses_table', 3),
(4, '2021_05_26_181705_projects_table', 4),
(5, '2021_05_28_113225_contact_table', 5),
(6, '2021_05_28_153527_review__table', 6),
(7, '2021_06_02_163505_admin_table', 7),
(8, '2021_06_04_031903_photo_table', 8),
(9, '2021_06_04_095738_home_seo_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`id`, `location`) VALUES
(4, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(5, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(6, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(7, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(9, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(10, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(11, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(12, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(14, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(15, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(16, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(17, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(19, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(20, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(21, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(22, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(23, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(24, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(25, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(26, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(27, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(29, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(30, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(31, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(32, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(33, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(34, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(35, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(36, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(37, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(38, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(39, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(40, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(41, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(42, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(43, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(44, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(45, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(46, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(47, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(48, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(49, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(50, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(51, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(52, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(53, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(54, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(55, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(56, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(57, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(58, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(59, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(60, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(61, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(62, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(63, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(64, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(65, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(66, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(67, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(68, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(69, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(70, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(71, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(72, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(73, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(74, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(75, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(76, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(77, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(78, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(79, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(80, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(81, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(82, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(83, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(84, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(85, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(86, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(87, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(88, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(89, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(90, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(91, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(92, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(93, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(94, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(95, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(96, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(97, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(98, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(99, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(100, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(101, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(102, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(103, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(104, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(105, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(106, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(107, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(108, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(109, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(110, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(111, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(112, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(113, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(114, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(115, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(116, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(117, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(118, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(119, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(120, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(121, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(122, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(123, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(124, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(125, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(126, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(127, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(128, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(129, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(130, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(131, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(132, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(133, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(134, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(135, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(136, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(137, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(138, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(139, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(140, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(141, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(142, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(143, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(144, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(145, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(146, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(147, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(148, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(149, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(150, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(151, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(152, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(153, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(154, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(155, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(156, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(157, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(158, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(159, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(160, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(161, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(162, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(163, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(164, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(165, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(166, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(167, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(168, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(169, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(170, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(171, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(172, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(173, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(174, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(175, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(176, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(177, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(178, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(179, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(180, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(181, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(182, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(183, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(184, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(185, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(186, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(187, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(188, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(189, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(190, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(191, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(192, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(193, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(194, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(195, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(196, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(197, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(198, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(199, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(200, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(201, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(202, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(203, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(204, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(205, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(206, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(207, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(208, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(209, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(210, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(211, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(212, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(213, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(214, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(215, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(216, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(217, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(218, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(219, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(220, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(221, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(222, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(223, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(224, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(225, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(226, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(227, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(228, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(229, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(230, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(231, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(232, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(233, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(234, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(235, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(236, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(237, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(238, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(239, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(240, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(241, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(242, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(243, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(244, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(245, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(246, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(247, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(248, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(249, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(250, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(251, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(252, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(253, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(254, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(255, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(256, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(257, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(258, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(259, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(260, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(261, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(262, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(263, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(264, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(265, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(266, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(267, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(268, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(269, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(270, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(271, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(272, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(273, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(274, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(275, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(276, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(277, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(278, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(279, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(280, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(281, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(282, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(283, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(284, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(285, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(286, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(287, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(288, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(289, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(290, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(291, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(292, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(293, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(294, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(295, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(296, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(297, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(298, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(299, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(300, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(301, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(302, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(303, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(304, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(305, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(306, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(307, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(308, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(309, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(310, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg'),
(311, 'http://127.0.0.1:5000/storage/BRtr8BVR2s9wTovNGqyokFkLxkaMGgUrS9s7UZ4y.jpg'),
(312, 'http://127.0.0.1:5000/storage/oH05RPZwtfRzr1dmbf1uc300D35bM2U22SCgqqcz.jpg'),
(313, 'http://127.0.0.1:5000/storage/lqudqX9I4E7j1PNur9iRCZffeMMrwuu5GdmMLVQT.jpg'),
(314, 'http://127.0.0.1:5000/storage/QyUFpeUAu14fNwCRlD809pwuW9b9Me5OH8BPJmkl.jpg'),
(315, 'http://127.0.0.1:5000/storage/jJqOzQnCR4kpc6JLlKpTyH2HcxSZXNMu2uWdjp4I.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `project_name`, `project_desc`, `project_link`, `project_img`) VALUES
(1, 'আইটি কোর্স 1', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(2, 'আইটি কোর্স 2', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(3, 'আইটি কোর্স 3', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(4, 'আইটি কোর্স 4', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(5, 'আইটি কোর্স 5', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(6, 'আইটি কোর্স 6', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg'),
(7, 'আইটি কোর্স 7', 'মোবাইল  এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট ', 'https://www.google.com/', 'http://localhost/images/poject.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(2000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `desc`, `img`) VALUES
(2, 'বিল গেটস 2', 'মাইক্রোসফটের প্রতিষ্ঠাতা বিল গেটসের জীবন কেটেছে নানা ঘটনার মধ্য দিয়ে। হার্ভার্ড বিশ্ববিদ্যালয়ে লেখাপড়া শেষ না করেই মাইক্রোসফট প্রতিষ্ঠা করা', 'http://localhost/images/bill.jpg'),
(3, 'বিল গেটস 3', 'মাইক্রোসফটের প্রতিষ্ঠাতা বিল গেটসের জীবন কেটেছে নানা ঘটনার মধ্য দিয়ে। হার্ভার্ড বিশ্ববিদ্যালয়ে লেখাপড়া শেষ না করেই মাইক্রোসফট প্রতিষ্ঠা করা', 'http://localhost/images/bill.jpg'),
(4, 'বিল গেটস 4', 'মাইক্রোসফটের প্রতিষ্ঠাতা বিল গেটসের জীবন কেটেছে নানা ঘটনার মধ্য দিয়ে। হার্ভার্ড বিশ্ববিদ্যালয়ে লেখাপড়া শেষ না করেই মাইক্রোসফট প্রতিষ্ঠা করা', 'http://localhost/images/bill.jpg'),
(7, 'Bill Kiss', 'Bill Kiss', 'http://localhost/images/bill.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_des` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `service_name`, `service_des`, `service_img`) VALUES
(21, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(22, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(23, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(24, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(25, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(29, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(30, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(31, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(32, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(34, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(35, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(36, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(37, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(38, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(39, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(40, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(41, 'কাস্টম সার্ভিস', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট', 'http://localhost/images/custom.svg'),
(42, 'কাস্টম সার্ভিস new', 'মোবাইল এবং ওয়েব এপ্লিকেশন ডেভেলপমেন্ট new', 'http://localhost/images/custom.svg');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ip_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `ip_address`, `visit_time`) VALUES
(1, '127.0.0.1', '2021-05-21 09:27:33'),
(2, '127.0.0.1', '2021-05-21 09:28:16'),
(3, '127.0.0.1', '2021-05-21 09:58:59'),
(4, '127.0.0.1', '2021-05-21 09:59:04'),
(5, '127.0.0.1', '2021-05-21 09:59:45'),
(6, '127.0.0.1', '2021-05-21 10:31:49'),
(7, '127.0.0.1', '2021-05-21 10:32:09'),
(8, '127.0.0.1', '2021-05-21 10:32:16'),
(9, '127.0.0.1', '2021-05-21 10:32:18'),
(10, '127.0.0.1', '2021-05-21 10:32:20'),
(11, '127.0.0.1', '2021-05-21 10:32:22'),
(12, '127.0.0.1', '2021-05-21 10:32:24'),
(13, '127.0.0.1', '2021-05-21 10:32:25'),
(14, '127.0.0.1', '2021-05-21 10:32:27'),
(15, '127.0.0.1', '2021-05-21 10:47:02'),
(16, '127.0.0.1', '2021-05-21 10:48:45'),
(17, '127.0.0.1', '2021-05-21 12:47:30'),
(18, '127.0.0.1', '2021-05-21 12:47:56'),
(19, '127.0.0.1', '2021-05-21 12:48:10'),
(20, '127.0.0.1', '2021-05-25 21:01:02'),
(21, '127.0.0.1', '2021-05-25 21:09:01'),
(22, '127.0.0.1', '2021-05-25 21:43:33'),
(23, '127.0.0.1', '2021-05-25 21:44:55'),
(24, '127.0.0.1', '2021-05-25 21:46:36'),
(25, '127.0.0.1', '2021-05-25 21:48:18'),
(26, '127.0.0.1', '2021-05-25 21:51:24'),
(27, '127.0.0.1', '2021-05-25 21:54:31'),
(28, '127.0.0.1', '2021-05-25 21:54:38'),
(29, '127.0.0.1', '2021-05-25 21:55:23'),
(30, '127.0.0.1', '2021-05-25 21:56:24'),
(31, '127.0.0.1', '2021-05-25 21:57:10'),
(32, '127.0.0.1', '2021-05-25 21:57:33'),
(33, '127.0.0.1', '2021-05-25 21:58:01'),
(34, '127.0.0.1', '2021-05-27 00:09:13'),
(35, '127.0.0.1', '2021-05-27 00:16:20'),
(36, '127.0.0.1', '2021-05-27 21:34:57'),
(37, '127.0.0.1', '2021-05-27 21:37:51'),
(38, '127.0.0.1', '2021-05-27 21:38:14'),
(39, '127.0.0.1', '2021-05-27 21:38:39'),
(40, '127.0.0.1', '2021-05-27 21:39:43'),
(41, '127.0.0.1', '2021-05-28 17:07:21'),
(42, '127.0.0.1', '2021-05-28 17:31:07'),
(43, '127.0.0.1', '2021-05-28 17:50:41'),
(44, '127.0.0.1', '2021-05-28 18:16:00'),
(45, '127.0.0.1', '2021-05-28 18:18:06'),
(46, '127.0.0.1', '2021-05-28 18:21:31'),
(47, '127.0.0.1', '2021-05-28 19:19:01'),
(48, '127.0.0.1', '2021-05-28 19:20:26'),
(49, '127.0.0.1', '2021-05-28 19:22:01'),
(50, '127.0.0.1', '2021-05-28 19:23:33'),
(51, '127.0.0.1', '2021-05-28 21:18:29'),
(52, '127.0.0.1', '2021-05-28 21:34:18'),
(53, '127.0.0.1', '2021-05-28 21:34:30'),
(54, '127.0.0.1', '2021-05-28 21:45:41'),
(55, '127.0.0.1', '2021-05-28 21:46:06'),
(56, '127.0.0.1', '2021-05-28 21:46:43'),
(57, '127.0.0.1', '2021-05-28 22:27:08'),
(58, '127.0.0.1', '2021-05-28 22:39:17'),
(59, '127.0.0.1', '2021-05-28 22:41:45'),
(60, '127.0.0.1', '2021-05-28 22:51:01'),
(61, '127.0.0.1', '2021-05-31 22:36:22'),
(62, '127.0.0.1', '2021-05-31 22:54:49'),
(63, '127.0.0.1', '2021-05-31 22:59:15'),
(64, '127.0.0.1', '2021-05-31 23:00:56'),
(65, '127.0.0.1', '2021-05-31 23:01:04'),
(66, '127.0.0.1', '2021-05-31 23:02:57'),
(67, '127.0.0.1', '2021-05-31 23:27:12'),
(68, '127.0.0.1', '2021-05-31 23:33:08'),
(69, '127.0.0.1', '2021-05-31 23:33:14'),
(70, '127.0.0.1', '2021-05-31 23:33:25'),
(71, '127.0.0.1', '2021-05-31 23:52:40'),
(72, '127.0.0.1', '2021-06-01 20:38:58'),
(73, '127.0.0.1', '2021-06-01 20:39:04'),
(74, '127.0.0.1', '2021-06-01 20:44:16'),
(75, '127.0.0.1', '2021-06-01 20:51:45'),
(76, '127.0.0.1', '2021-06-01 21:09:02'),
(77, '127.0.0.1', '2021-06-02 21:53:51'),
(78, '127.0.0.1', '2021-06-04 16:38:10'),
(79, '127.0.0.1', '2021-06-04 16:43:28'),
(80, '127.0.0.1', '2021-06-04 16:47:20'),
(81, '127.0.0.1', '2021-06-04 16:52:57'),
(82, '127.0.0.1', '2021-06-04 17:14:11'),
(83, '127.0.0.1', '2021-06-04 18:00:01'),
(84, '127.0.0.1', '2021-06-04 18:16:34'),
(85, '127.0.0.1', '2021-06-04 18:17:31'),
(86, '127.0.0.1', '2021-06-04 18:17:34'),
(87, '127.0.0.1', '2021-06-04 18:17:58'),
(88, '127.0.0.1', '2021-06-04 18:21:35'),
(89, '127.0.0.1', '2021-06-04 18:29:39'),
(90, '127.0.0.1', '2021-06-04 18:30:01'),
(91, '127.0.0.1', '2021-06-04 18:30:16'),
(92, '127.0.0.1', '2021-06-04 18:30:18'),
(93, '127.0.0.1', '2021-06-04 18:30:21'),
(94, '127.0.0.1', '2021-06-04 18:32:16'),
(95, '127.0.0.1', '2021-06-04 18:38:49'),
(96, '127.0.0.1', '2021-06-04 18:39:34'),
(97, '127.0.0.1', '2021-06-04 18:53:14'),
(98, '127.0.0.1', '2021-06-04 18:53:33'),
(99, '127.0.0.1', '2021-06-04 18:58:36'),
(100, '127.0.0.1', '2021-06-04 18:58:58'),
(101, '127.0.0.1', '2021-06-04 19:12:47'),
(102, '127.0.0.1', '2021-06-04 19:15:29'),
(103, '127.0.0.1', '2021-06-04 19:17:08'),
(104, '127.0.0.1', '2021-06-04 19:26:16'),
(105, '127.0.0.1', '2021-06-04 19:27:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home_seo`
--
ALTER TABLE `home_seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `home_seo`
--
ALTER TABLE `home_seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
