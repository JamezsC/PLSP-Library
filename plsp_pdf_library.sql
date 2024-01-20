-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2024 at 11:56 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plsp_pdf_library`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_files`
--

CREATE TABLE `book_files` (
  `id` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `bookcover` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `filesize` int(11) DEFAULT NULL,
  `uploaded_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_files`
--

INSERT INTO `book_files` (`id`, `bookname`, `bookcover`, `category`, `description`, `filesize`, `uploaded_at`) VALUES
(22, 'Personal Development ( Ma. Theresa M. Cruz _ Eugene B. Cruz 2).pdf', 'Personal Development ( Ma. Theresa M. Cruz _ Eugene B. Cruz 2).jpg', 'D', 'General and Old World History', 4546544, '2024-01-16 10:47:02'),
(23, 'Psychological-Testing-4th-Edition.pdf', 'Psychological Testing-4th Edition.jpg', 'E', 'History of America', 16419953, '2024-01-16 10:47:12'),
(24, 'Software Engineering _ Principles and Practice ( Hans vans Vliet).pdf', 'Software Engineering _ Principles and Practice ( Hans vans Vliet).jpg', 'F', 'History of United States and British, Dutch, French, and Latin America', 7117550, '2024-01-16 10:47:25'),
(25, 'Software Engineering _ Principles and Practice ( Hans vans Vliet).pdf', 'Software Engineering _ Principles and Practice ( Hans vans Vliet).jpg', 'F', 'History of United States and British, Dutch, French, and Latin America', 7117550, '2024-01-16 10:47:36'),
(26, 'Software Engineering _ Principles and Practice ( Hans vans Vliet).pdf', 'Software Engineering _ Principles and Practice ( Hans vans Vliet).jpg', 'G', 'Geography, Anthropology, and Recreation', 7117550, '2024-01-16 10:47:50'),
(27, 'Software engineering Easy to Approach.pdf', 'Software-Engineering Easy to Approach.jpg', 'H', 'Social Sciences', 1735451, '2024-01-16 10:48:01'),
(28, 'Marketing for Hospitality and Tourism 5th Edition.pdf', 'Marketing for Hospitality and Tourism 5th Edition.jpg', 'J', 'Political Sciences', 1353868, '2024-01-16 10:48:12'),
(30, 'Entrepreneurship.pdf', 'Entrepreneurship.png', 'L', 'Education', 3250706, '2024-01-16 10:48:31'),
(31, 'Fundamentals Of Accounting.pdf', 'Fundamentals Of Accounting.png', 'M', 'Music', 4961503, '2024-01-16 10:48:40'),
(32, 'Marketing Management.pdf', 'Marketing Management.png', 'N', 'Fine Arts', 2543989, '2024-01-16 10:48:50'),
(33, 'The Law on Obligations and Contracts.pdf', 'The Law on Obligations and Contracts.jpg', 'S', 'Technology', 2361186, '2024-01-16 10:49:49'),
(34, 'Cost Accounting.pdf', 'Cost Accounting.png', 'L', 'Education', 12280354, '2024-01-17 15:06:17'),
(35, 'Basic Engineering Circuit Analysis ( J. David Arwin _ R. Mark  Nelms ).pdf', 'Basic Engineering Circuit Analysis ( J. David Arwin _ R. Mark  Nelms ).jpg', 'S', 'Technology', 16594492, '2024-01-17 15:16:01');

-- --------------------------------------------------------

--
-- Table structure for table `student_data`
--

CREATE TABLE `student_data` (
  `student_number` varchar(20) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `college` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_data`
--

INSERT INTO `student_data` (`student_number`, `last_name`, `first_name`, `college`) VALUES
('1', 'admin', 'admin', 'admin'),
('2', 'ADMIN 2', 'ADMIN 2', 'admin 2'),
('20-2020', 'YEMA', 'TERESA', 'CTHM'),
('20-2539', 'CATIBOG', 'JAIME', 'COE');

-- --------------------------------------------------------

--
-- Table structure for table `student_user`
--

CREATE TABLE `student_user` (
  `id` int(11) NOT NULL,
  `studentnumber` varchar(255) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `college` varchar(30) NOT NULL,
  `pwd` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT curtime(),
  `role` varchar(255) NOT NULL DEFAULT 'student'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_user`
--

INSERT INTO `student_user` (`id`, `studentnumber`, `lastname`, `first_name`, `college`, `pwd`, `created_at`, `role`) VALUES
(1, '1', 'ADMIN', 'ADMIN', 'admin', '$2y$05$/nqYLjsuQczzb7Z2.tKKUuwmkG664Fw0nJ/3FHTPU4HnufZpoGkHa', '2024-01-05 20:34:59', 'admin'),
(10, '20-2020', 'YEMA', 'TERESA', 'CTHM', '$2y$05$8FKnnaFUfFD1ew9PwGfUTOffaQcRqBJJCRZAyMNCBryI7TYTG.dnS', '2024-01-17 15:09:17', 'student');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_files`
--
ALTER TABLE `book_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_data`
--
ALTER TABLE `student_data`
  ADD PRIMARY KEY (`student_number`);

--
-- Indexes for table `student_user`
--
ALTER TABLE `student_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_files`
--
ALTER TABLE `book_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `student_user`
--
ALTER TABLE `student_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
