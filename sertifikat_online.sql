-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2024 at 08:45 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sertifikat_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

CREATE TABLE `certificates` (
  `certificate_id` int(11) NOT NULL,
  `participant_name` varchar(255) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `certificate_text` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_assignments`
--

CREATE TABLE `certificate_assignments` (
  `assignment_id` int(11) NOT NULL,
  `certificate_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `event_id` int(11) DEFAULT NULL,
  `assigned_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `event_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `event_date` date NOT NULL,
  `location` varchar(255) NOT NULL,
  `organizer` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `level` enum('admin','user') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `full_name`, `email`, `created_at`, `level`) VALUES
(1, 'admin', '$2y$10$bN.lQYPzWpHP46Cw1Yd1POoNAkecbcBBbbH4.2oYD7p621MnHSBfm', 'adminradit', 'adminradit@gmail.com', '2024-04-16 06:33:18', 'admin'),
(2, 'radit', '$2y$10$f4O68uIX8J4SUmTTAz99Xeiwu.bbmc1RIzpoHY4WumtUE0L3sScNS', 'Raditya Alfansyah', 'radit@gmail.com', '2024-04-17 16:11:44', 'user'),
(3, 'rafi', '$2y$10$wZsb2O9CCkH2/sYkKN0KzeIUU7CmwB4AV5V9HXlfPu9mMRAuBchQi', 'Rafi Fauzan', 'rafi@gmail.com', '2024-04-17 16:13:07', 'user'),
(4, 'ardi', '$2y$10$UTMdAbkl2DzkyDetD3YrlubtrOolViy7j78kKLS6xOk0VAyfTXfHC', 'Rizky Ardiansyah', 'ardi@gmail.com', '2024-04-17 16:13:44', 'user'),
(5, 'rizla', '$2y$10$IeUwFr7V3gCDWORBUP1ra.YU3Gp95DCWQwBOQOCZtV27eZTlw09TW', 'Rizla Azcha', 'rizla@gmail.com', '2024-04-17 16:17:37', 'user'),
(6, 'fitra', '$2y$10$KNx3fa6aU/Ohsb9FbYsOZuL2h6HRPx7Fg3YQmz9csInK1f1UKer0u', 'Fitra Dwi', 'fitra@gmail.com', '2024-04-17 16:18:14', 'user'),
(7, 'baim', '$2y$10$O046PA8U4fFdvyBDCq68ze3.3ld.yBSG7.R3O76P079en3BZtZHKO', 'Sheva Ibrahim', 'baim@gmail.com', '2024-04-17 16:19:51', 'user'),
(8, 'ryanda', '$2y$10$q3bYtoNhrAICI7mXKWqrKuHwQkyq9liSIY7HModB5KleVXkQ4q.xG', 'Farhan Ryanda', 'ryanda@gmail.com', '2024-04-17 16:22:31', 'user'),
(9, 'aska', '$2y$10$LNB6qjTXC5WAGOzDFveja.rcqBZKz/79BrpzuhXqxjGEKi./VU7ri', 'Aska Muflih', 'aska@gmail.com', '2024-04-17 16:25:26', 'user'),
(10, 'zidane', '$2y$10$K0UI/mi98M01PcgMOu8OyeAJewRYdSUHuCGlcUK7OpQ8y6ulq7EQO', 'Zidane Fadila', 'zidane@gmail.com', '2024-04-17 16:30:40', 'user'),
(11, 'atha', '$2y$10$6Ex/.Od75ASG5S0tYMVTW.QtbWhUHehT8doCNxlECG/BFOJTvfqQe', 'Adiatha Andri', 'atha@gmail.com', '2024-04-17 16:31:08', 'user'),
(12, 'abay', '$2y$10$6a/gb4t5akuBhndqM71Oo.NdApRyIIWox2wGdZ4KD5LH6DYOnZ3p.', 'Akbar Fadila', 'abay@gmail.com', '2024-04-17 16:31:40', 'user'),
(13, 'doni', '$2y$10$vcpipGAv0Ob9yBmsv66XmuJ0XjuZoqmsg5h.oWYqKV.x5wCYSfU86', 'Doni Setiawan', 'doni@gmail.com', '2024-04-17 16:32:51', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `certificates`
--
ALTER TABLE `certificates`
  ADD PRIMARY KEY (`certificate_id`);

--
-- Indexes for table `certificate_assignments`
--
ALTER TABLE `certificate_assignments`
  ADD PRIMARY KEY (`assignment_id`),
  ADD KEY `cerƟficate_id` (`certificate_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `event_id` (`event_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `certificates`
--
ALTER TABLE `certificates`
  MODIFY `certificate_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `certificate_assignments`
--
ALTER TABLE `certificate_assignments`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `certificate_assignments`
--
ALTER TABLE `certificate_assignments`
  ADD CONSTRAINT `certificate_assignments_ibfk_1` FOREIGN KEY (`certificate_id`) REFERENCES `certificates` (`certificate_id`),
  ADD CONSTRAINT `certificate_assignments_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `certificate_assignments_ibfk_3` FOREIGN KEY (`event_id`) REFERENCES `events` (`event_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
