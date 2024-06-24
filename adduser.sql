-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 09:10 AM
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
-- Database: `adduser`
--

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `bookID` varchar(50) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `issueDate` varchar(50) NOT NULL,
  `returnDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`bookID`, `studentID`, `issueDate`, `returnDate`) VALUES
('566', '9494804040', '2024-06-26', '2024-06-27'),
('021', '1212121212', '2024-06-22', '2024-06-29'),
('008', '1234567890', '2024-06-22', '2024-06-28'),
('658', '8989121234', '2024-06-26', '2024-06-28'),
('780', '5656565656', '2024-06-28', '2024-06-29');

-- --------------------------------------------------------

--
-- Table structure for table `newbook`
--

CREATE TABLE `newbook` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `price` varchar(50) NOT NULL,
  `publisher` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newbook`
--

INSERT INTO `newbook` (`id`, `name`, `date`, `price`, `publisher`) VALUES
('008', 'Software Engineering', '2018', '400', 'brandon'),
('021', 'Capstone Project', '2018', '300', 'okuhle'),
('089', 'Research Methods', '2011', '150', 'David'),
('300', 'Research Methods', '2020', '400', 'me'),
('566', 'Research Methods', '2020', '700', 'kk'),
('658', 'Database management Systems', '2007', '570', 'Mark'),
('780', 'Research Methods', '2022', '320', 'steve');

-- --------------------------------------------------------

--
-- Table structure for table `newstudent`
--

CREATE TABLE `newstudent` (
  `id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `institution` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newstudent`
--

INSERT INTO `newstudent` (`id`, `name`, `email`, `course`, `institution`) VALUES
('5656565656', 'kl', 'ff@g.n', 'Medicine', 'North-West University'),
('8989121234', 'Child', 'kl@gmail.com', 'Education', 'University of South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `returnbook`
--

CREATE TABLE `returnbook` (
  `bookID` varchar(50) NOT NULL,
  `studentID` varchar(50) NOT NULL,
  `issueDate` varchar(50) NOT NULL,
  `returnDate` varchar(50) NOT NULL,
  `currentDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `returnbook`
--

INSERT INTO `returnbook` (`bookID`, `studentID`, `issueDate`, `returnDate`, `currentDate`) VALUES
('300', '9494804040 ', '2024-06-20', '2024-06-27', '2024-06-20'),
('566', '9494804040 ', '2024-06-26', '2024-06-27', '2024-06-20'),
('566', '9494804040', '2024-06-26', '2024-06-27', '2024-06-20'),
('008', '1234567890', '2024-06-22', '2024-06-28', '2024-06-21'),
('658', '8989121234', '2024-06-26', '2024-06-28', '2024-06-24'),
('780', '5656565656', '2024-06-28', '2024-06-29', '2024-06-24');

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `confirmPassword` varchar(50) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`fname`, `lname`, `address`, `gender`, `email`, `phone`, `username`, `password`, `confirmPassword`, `usertype`) VALUES
('kl', 'ff', 'gdg', 'Male', 'fd@g.c', '0999887788', 'desk', '1234', '1234', 'Patron'),
('Siyabonga', 'Zungu', 'capaciti', 'Male', 'sz@gmail.com', '0987656767', 'siya', '0011', '0011', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `newbook`
--
ALTER TABLE `newbook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newstudent`
--
ALTER TABLE `newstudent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
