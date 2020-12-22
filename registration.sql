-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2020 at 06:51 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registration`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'tobby001', '$2y$10$D9f3wwCilqMrcvD6S475B.v38VS8q.OID8Ifp3vhaTM', '2020-05-17 23:27:03'),
(2, 'tobby002', '$2y$10$MvZyRLGiXz9WzIEJBaZFgeVI4fngXb7893J1/vQAZKI', '2020-05-17 23:27:40'),
(3, 'tobby003', '$2y$10$du95FP4mQZsFc1GJgFdcL.7fP1F7N3rzyoZkxcJRAC/', '2020-05-17 23:28:01'),
(4, 'test2', '$2y$10$e.0BTul08qu4SQbFa3RT5uU/eIldhThaWwJoomvs1Nc', '2020-05-17 23:30:52'),
(5, 'testing', '$2y$10$Ookeb.kcZW0Ioa1oAb24oOQe.53z7dnPQQJPVjrnmTzj2pGTh8Zjq', '2020-05-17 23:31:46'),
(6, 'tee', '$2y$10$i.FGH8k5A.tZcXkWR0m8BuQDFdY5.8XhT1ZKjqwIxp0IJZ4/Kmcd.', '2020-05-17 23:35:56'),
(7, 'tobby000', '$2y$10$I/Tv3pKXzy82/g34yRf2dui.nGbfnP77/Jbc4Lum1So.tm5nVcSjm', '2020-05-18 00:01:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
