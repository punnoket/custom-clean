-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 31, 2018 at 09:54 AM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `custom_clean`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_clean`
--

CREATE TABLE `custom_clean` (
  `id` int(100) NOT NULL,
  `rice_id` int(100) NOT NULL,
  `meet_id` int(100) NOT NULL,
  `vegetable_id` int(100) NOT NULL,
  `cook` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `custom_clean`
--

INSERT INTO `custom_clean` (`id`, `rice_id`, `meet_id`, `vegetable_id`, `cook`) VALUES
(1, 1, 8, 4, 'Fried'),
(2, 1, 1, 1, 'Boil'),
(3, 1, 1, 1, 'Boil'),
(4, 1, 1, 1, 'Boil'),
(5, 1, 9, 5, 'Fried'),
(6, 3, 10, 3, 'Steam'),
(7, 2, 10, 6, 'Fried'),
(8, 2, 8, 2, 'Fried'),
(9, 2, 9, 2, 'Steam'),
(10, 1, 2, 6, 'Boil'),
(11, 2, 5, 5, 'Fried'),
(12, 1, 2, 2, 'Pepper'),
(13, 1, 2, 2, 'Fried'),
(14, 1, 1, 4, 'Fried'),
(15, 1, 1, 4, 'Fried'),
(16, 1, 1, 4, 'Pepper'),
(17, 1, 1, 4, 'Pepper'),
(18, 1, 1, 1, 'Steam'),
(19, 1, 2, 2, 'Fried'),
(20, 1, 8, 4, 'Fried'),
(21, 1, 1, 1, 'Pepper'),
(22, 1, 1, 1, 'Pepper'),
(23, 1, 1, 4, 'Sear'),
(24, 1, 1, 4, 'Sear'),
(25, 1, 1, 1, 'Pepper'),
(26, 1, 8, 1, 'Curry'),
(27, 2, 2, 2, 'Steam'),
(28, 1, 1, 1, 'Fried'),
(29, 1, 2, 2, 'Steam'),
(30, 1, 2, 2, 'Fried');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_clean`
--
ALTER TABLE `custom_clean`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rice_id` (`rice_id`),
  ADD KEY `meet_id` (`meet_id`),
  ADD KEY `vegetable_id` (`vegetable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_clean`
--
ALTER TABLE `custom_clean`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `custom_clean`
--
ALTER TABLE `custom_clean`
  ADD CONSTRAINT `meet_id` FOREIGN KEY (`meet_id`) REFERENCES `meet` (`id`),
  ADD CONSTRAINT `rice_id` FOREIGN KEY (`rice_id`) REFERENCES `rice` (`id`),
  ADD CONSTRAINT `vegetable_id` FOREIGN KEY (`vegetable_id`) REFERENCES `vegetable` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
