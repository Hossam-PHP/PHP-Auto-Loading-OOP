-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2019 at 03:12 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hossamapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `isbn` varchar(255) NOT NULL,
  `author` text NOT NULL,
  `category_id` int(11) NOT NULL,
  `publish_date` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `isbn`, `author`, `category_id`, `publish_date`, `created_at`) VALUES
(60, 'Amazing Pillow 7.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:18:20'),
(66, 'Amazing Pillow 7.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:20:02'),
(68, 'Amazing Pillow 7.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:09'),
(69, 'Amazing Pillow 8.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:15'),
(70, 'Amazing keivy 8.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:27'),
(71, 'Amazing keivy 8.0', '199', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:29'),
(72, 'Amazing keivy 8.0', '2000', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:36'),
(73, 'Amazing keivy 8.0', '2000', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:37'),
(74, 'Amazing keivy 8.0', '888888', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:24:43'),
(75, 'Amazing keivy 8.0', '888888', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:25:41'),
(76, 'Amazing keivy 8.0', '888888', 'The best pillow for amazing programmers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:25:44'),
(77, 'Amazing keivy 8.0', '888888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:25:57'),
(78, 'Amazing keivy 10.0', '77777', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:31:37'),
(79, 'Amazing keivy 10.0', '77777', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:31:37'),
(80, 'Amazing keivy 11.0', '777778', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:31:49'),
(81, 'Amazing keivy 44.0', '0', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 12:31:49'),
(82, 'Amazing keivy 35.0', '7777735', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 13:44:22'),
(83, 'Amazing keivy 35.0', '7777735', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 13:44:22'),
(84, 'Amazing keivy 78.0', '0', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 13:58:42'),
(85, 'Amazing keivy 78.0', '1', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 13:58:49'),
(86, 'Amazing keivy 79.0', '8', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:00:15'),
(87, 'Amazing keivy 79.0', '8', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:00:15'),
(88, 'Amazing keivy 89.0', '9', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:00:41'),
(89, 'Amazing keivy 89.0', '9', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:00:41'),
(90, 'Amazing keivy 88.8', '9-7684-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:12:58'),
(91, 'Amazing keivy 88.8', '9-7684-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:12:58'),
(92, 'Amazing keivy 777.8', '9-7777-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:13:44'),
(93, 'Amazing keivy 777.8', '9-7777-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:13:44'),
(94, 'Amazing keivy 117.8', '9-7711-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:16:07'),
(95, 'Amazing keivy 117.8', '9-7711-26888', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:16:07'),
(96, 'Amazing egale 117.8', '9-7711-14225', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:20:08'),
(97, 'Amazing egale 117.8', '9-7711-14225', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:20:08'),
(98, 'Amazing eagle 117.8', '9-7711-47859', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:21:00'),
(99, 'Amazing eagle 117.8', '9-7711-47859', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:21:00'),
(100, 'Amazing eagle 127.8', '9-7711-74879', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:21:31'),
(101, 'Amazing eagle 142.8', '5-7711-10200', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:27:45'),
(102, 'Amazing eagle 289.8', '5-7711-02310', 'The best pillow for amazing readers.', 2, '0000-00-00 00:00:00', '2019-09-05 14:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Fashion', 'Books for anything related to fashion.', '2019-06-01 00:35:07', '2019-07-30 11:34:33'),
(2, 'Electronics', 'Books for anything related to Electronics.', '2019-06-01 00:35:07', '2019-08-30 11:34:33'),
(3, 'Motors', 'Motor sports books and more', '2019-03-01 00:35:07', '2019-05-30 11:34:54'),
(5, 'Movies', 'Movie books.', '2019-01-08 13:27:26', '2019-09-08 07:27:26'),
(6, 'Science', 'Kindle books, audio books and more.', '2019-01-01 13:27:47', '2019-05-08 07:27:47'),
(13, 'Sports', 'sports books and more.', '2019-01-09 02:24:24', '2019-09-08 19:24:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
