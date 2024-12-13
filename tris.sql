-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2024 at 06:16 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tris`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(2, 'phatngu', '$2y$10$V6ysPU1UJLq7f2hbmLNqUeF9L.H6UahqDs5YyCGvlsqr/WUEqY22y'),
(3, 'dadada123', '$2y$10$jIv7cYwRqOg6tdLv/.xqneQFkXyL5DM2kHYeruV5d7Nfn8hd/v5S.'),
(4, 'namsuper', '$2y$10$hDvCIxc49zT4nSM3FIoIBuUfcUxaSGV89pG7PmqQNaI3dKLF7WLCK'),
(6, 'kk', '$2y$10$PTpIl7Ovfkrt5tVpYv46puTONXaZeqCrLlkNxkUvNnBOMRiih27RC'),
(7, 'trisiztyn', '$2y$10$6bwIbYndN.ic9LTtxZODm.7K/Q2T7CPxGg0WLSRu3.wEE1IDx0jMW'),
(8, 'tt7662q@gre.ac.uk', '$2y$10$4vuF7S.n6cwDkat12WVmRuyDxiVM72y32LWG4EEr6am8vxkUD8SJi');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `name`, `comment`, `created_at`, `user_id`) VALUES
(72, 78, 'Duc', 'crap', '2024-12-13 05:17:47', 20);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `name`) VALUES
(2, 'HTML'),
(3, 'JAVA'),
(7, 'policy'),
(8, 'o'),
(9, 'PhP');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `module_id` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `image`, `content`, `created_at`, `user_id`, `name`, `module_id`, `updated_at`) VALUES
(78, 'hohoho', 'uploads/675bc36c24b36_b84ffef2045b6c2dc175e3b240ecc88f.jpg', 'merry new year', '2024-12-13 05:17:32', 20, '', 1, NULL),
(79, 'diewithacry', 'uploads/Screenshot 2024-10-08 171046.png', 'bruno is fire', '2024-12-13 05:29:31', 20, '', 14, '2024-12-13 18:41:40'),
(80, 'laughing', 'uploads/675c1a795cac7_Screenshot 2024-10-08 155950.png', 'hihihhi', '2024-12-13 11:28:57', 22, '', 1, NULL),
(81, 'laughing', 'uploads/Screenshot 2024-10-08 170542.png', 'ghihihih', '2024-12-13 11:29:27', 22, '', 14, '2024-12-13 18:38:24'),
(82, 'ghgh', 'uploads/675c1aaae2c99_Screenshot 2024-10-08 153554.png', 'jojo', '2024-12-13 11:29:46', 22, '', 12, NULL),
(83, 'bnbn', 'uploads/675c1ac2e2f76_Screenshot 2024-10-08 164049.png', 'nmnmn', '2024-12-13 11:30:10', 22, '', 15, NULL),
(84, 'jhfjhgfcjgh', NULL, 'lkhl', '2024-12-13 11:42:25', 20, '', 1, NULL),
(85, ',nbmbm', NULL, 'hvhjvnb', '2024-12-13 11:42:31', 20, '', 1, NULL),
(86, 'kjhgjhv', NULL, ';knm;lk/m', '2024-12-13 11:42:37', 20, '', 1, NULL),
(87, 'm,n b', NULL, ',nvbk ghkj', '2024-12-13 11:42:45', 20, '', 14, NULL),
(88, 'kjhg kjhg ukg', NULL, 'lkn hlihlijh li', '2024-12-13 11:42:53', 20, '', 1, NULL),
(89, ',j h kjlhlj', NULL, 'lk/h ku;hoi h', '2024-12-13 11:43:03', 20, '', 1, NULL),
(90, 'nbgn bv', NULL, 'jhvjhgjh', '2024-12-13 11:44:15', 20, '', 1, NULL),
(91, 'laughing', NULL, 'm,', '2024-12-13 11:44:25', 20, '', 1, NULL),
(92, 'kjh ukj', NULL, 'jbkjh', '2024-12-13 11:44:58', 20, '', 1, NULL),
(93, ',nbk', NULL, 'ljlhk jkl', '2024-12-13 11:45:15', 20, '', 1, NULL),
(94, 'edrysrhjgmjmhfv', NULL, 'ERATSYRTFUYIKGULK', '2024-12-13 11:47:39', 20, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(300) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `profile_pic` varchar(255) DEFAULT NULL,
  `reset_token_hash` varchar(64) DEFAULT NULL,
  `reset_token_expires_at` datetime DEFAULT NULL,
  `role` enum('admin','user') DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `email`, `password`, `name`, `created_at`, `profile_pic`, `reset_token_hash`, `reset_token_expires_at`, `role`) VALUES
(8, 'kk@gmail.com', '$2y$10$a42vVyX4qtoceBpTSo.AleAsBx6UbfFrn846hjDgTHrKn0h0xGvc.', 'kkkk', '2024-11-23', NULL, NULL, NULL, 'user'),
(12, 'phat@gmail.com', '$2y$10$z81M3sPL51jURmh/UgHZ6u5o0wo9VY98y0hmd69FplD/txyCSJsOe', 'thaituphat', '2024-11-24', NULL, NULL, NULL, 'user'),
(13, 'kp@gmail.com', '$2y$10$BnKaU5rskTnMv4K//nFzReK/K09G5mFzLmMp0iK.6Np6dzMj3NbEO', 'kp', '2024-11-24', NULL, NULL, NULL, 'user'),
(17, 'khoa@gmail.com', '$2y$10$zZJQUyXqkG1Bc0WtSwa0u.EJMgiXv8AnCZYDbSvLeEPQpvTxuQzN.', 'Khoa', '2024-11-27', NULL, NULL, NULL, 'user'),
(18, 'ko@gmail.com', '$2y$10$h3Qtbfl3NuenFCYg18D3FeTPcRaQZ8481gEn8d8uSSlw2pvgcvjTy', 'ko', '2024-11-27', NULL, NULL, NULL, 'user'),
(19, 'phungdanhkhoa413@gmail.com', '$2y$10$cZn5ReQOwRjLCw0ptnIPWeDYuwTe6QW4bLyRkz9dFqjG3ZfUQs2Uu', 'ngu', '2024-11-27', NULL, '2232b71bd8031482d7d45c7cb65e6a3af407d42702d1726ecd08c6b2b33cb856', '2024-11-27 16:39:17', 'user'),
(20, 'tritranpham@gmail.com', '$2y$10$9ihOu9BXsY4TVd0.rzy/O.qj9OilQsqFWNOkuUO6UOvh1j0UxOMwi', 'Duc', '2024-12-12', NULL, 'f2003908e815a93b990f4747ab270e21b507959bce43b15183da318540ea97ad', '2024-12-12 20:51:20', 'user'),
(21, 'trisizteen@gmail.com', '$2y$10$teC8e4pPrDA8B8XMtYS02.HAdX7Z4QckjLfmSnYBYfWGhe5uiIluu', 'Trisiztyn16', '2024-12-12', NULL, NULL, NULL, 'user'),
(22, 'tt7662q@gre.ac.uk', '$2y$10$pxJEppa/Ap/Uh83tHt1Ov.fGpnBV1tM/P97siR6jGgTwvXbEh6vyS', 'Tris16', '2024-12-13', NULL, NULL, NULL, 'user'),
(23, 'tt7662q@gre.ac.uk', '$2y$10$CA9cn/H7m2KGHUkW0oYsYO8Fjuhct7YEcDDWUEdZYcmHiYx4hA5Vu', 'Tris16', '0000-00-00', NULL, NULL, NULL, 'user'),
(24, 'trisizteen@gmail.com', '$2y$10$d7gAMXKRD3JCAj5UIaT1RuKs7sJ8jQi6SyLCh.0RIAwLYyOT9rCre', 'Tris16', '0000-00-00', NULL, NULL, NULL, 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `reset_token_hash` (`reset_token_hash`),
  ADD KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
