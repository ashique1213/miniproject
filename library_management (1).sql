-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 25, 2022 at 01:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_d`
--

CREATE TABLE `book_d` (
  `b_id` int(5) NOT NULL,
  `book_id` varchar(25) NOT NULL,
  `name` varchar(25) NOT NULL,
  `author` varchar(25) NOT NULL,
  `edition` varchar(25) NOT NULL,
  `price` varchar(25) NOT NULL,
  `publication` varchar(25) NOT NULL,
  `pages` varchar(25) NOT NULL,
  `subject` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_d`
--

INSERT INTO `book_d` (`b_id`, `book_id`, `name`, `author`, `edition`, `price`, `publication`, `pages`, `subject`) VALUES
(1, '123', 'se', 'ash', '123', '123', '123', '123', 'se'),
(2, '12', '12', '12', '12', '500', '12', '12', '12');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `feedback` varchar(25) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `u_id`, `feedback`, `date`) VALUES
(1, 1, 'good', '2022-10-25'),
(2, 1, 'bad', '2022-10-25'),
(3, 1, 'ss', '2022-10-25');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `fine_id` int(5) NOT NULL,
  `stud_id` int(5) NOT NULL,
  `t_id` int(5) NOT NULL,
  `fine` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `login_id` int(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL,
  `type` varchar(25) NOT NULL,
  `u_id` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(5) NOT NULL,
  `u_id` int(5) NOT NULL,
  `b_id` int(5) NOT NULL,
  `request_date` date NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `u_id`, `b_id`, `request_date`, `status`) VALUES
(1, 1, 123, '2022-10-25', 'pending'),
(2, 1, 123, '2022-10-25', 'issued'),
(3, 1, 1, '2022-10-25', 'rejected'),
(4, 1, 2, '2022-10-25', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `return_id` int(5) NOT NULL,
  `request_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `return`
--

INSERT INTO `return` (`return_id`, `request_id`, `date`, `status`) VALUES
(1, 2, '2022-10-25', 'rejected'),
(2, 2, '2022-10-25', 'rejected'),
(3, 2, '2022-10-25', 'rejected');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `reg_no` varchar(25) NOT NULL,
  `roll_no` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `name`, `reg_no`, `roll_no`, `password`, `phone`) VALUES
(1, '', '123', '12', '123', '9876543212'),
(2, 'ashique', '123', '256', '111', '9685');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `t_id` int(5) NOT NULL,
  `staff_id` varchar(20) NOT NULL,
  `name` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`t_id`, `staff_id`, `name`, `password`, `phone`) VALUES
(1, '123', 'ashq', '111', '987654321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_d`
--
ALTER TABLE `book_d`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`feed_id`);

--
-- Indexes for table `fine`
--
ALTER TABLE `fine`
  ADD PRIMARY KEY (`fine_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`login_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `return`
--
ALTER TABLE `return`
  ADD PRIMARY KEY (`return_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`t_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_d`
--
ALTER TABLE `book_d`
  MODIFY `b_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `fine_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `return_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
