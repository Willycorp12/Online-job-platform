-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2023 at 12:02 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `company` varchar(50) NOT NULL,
  `salary` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `description`, `company`, `salary`) VALUES
(1, 'Jr. Software Developer', 'We are looking for energetic developers who like to code in JavaScript', 'Facebook', 300000),
(3, 'UI Designer', 'Experienced ui designer skilled in Photoshop and Illustrator', 'Expert Designs', 20000),
(4, 'Data Scientist', 'We need a hard working data scientist', 'DataGrail', 50000),
(5, 'Backend Dev', 'NodeJs developer', 'Nody', 60000),
(6, 'Front End Developer', 'serious person willing and able to develop responsive and interactive webpages', 'ChronoTex', 250000),
(9, 'Codec Dev Opps', 'any person that masters and can do devopps using codecs', 'T-corp', 270000),
(8, 'AI Developer with (Django)', 'Looking for competent artificial intelligence developpers', 'Alibaba', 1000000),
(10, 'Banker', 'professional banker to manage financial transactions for various branches of a firm', 'Mupeci', 190000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` int(50) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'user'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `role`) VALUES
(3, 'admin', 'admin@gmail.com', '$2y$10$5dNFX4yN2jJYvZO/acd9jeP6/sr9F1mLrdSo91YzBbSm4QG3bxMdy', NULL, 'admin'),
(6, 'Baldo Alton', 'Malewilliam@protonmail.com', '$2y$10$N9PD4r8bBjnXkSviQ3sEFuioEcSLWUEiLrBgo8Jhv48zOXHp1I9Tm', NULL, 'user'),
(7, 'Willy', 'willy@mail.com', '$2y$10$PdodgWim.w.A8NPZxIEVXeffl.5CI4V3ZenzsRncPIZcIwrHNFbv2', NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
