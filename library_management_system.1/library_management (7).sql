-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2022 at 06:17 AM
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
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add book d', 7, 'add_bookd'),
(26, 'Can change book d', 7, 'change_bookd'),
(27, 'Can delete book d', 7, 'delete_bookd'),
(28, 'Can view book d', 7, 'view_bookd'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback'),
(33, 'Can add fine', 9, 'add_fine'),
(34, 'Can change fine', 9, 'change_fine'),
(35, 'Can delete fine', 9, 'delete_fine'),
(36, 'Can view fine', 9, 'view_fine'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add request', 11, 'add_request'),
(42, 'Can change request', 11, 'change_request'),
(43, 'Can delete request', 11, 'delete_request'),
(44, 'Can view request', 11, 'view_request'),
(45, 'Can add return', 12, 'add_return'),
(46, 'Can change return', 12, 'change_return'),
(47, 'Can delete return', 12, 'delete_return'),
(48, 'Can view return', 12, 'view_return'),
(49, 'Can add student', 13, 'add_student'),
(50, 'Can change student', 13, 'change_student'),
(51, 'Can delete student', 13, 'delete_student'),
(52, 'Can view student', 13, 'view_student'),
(53, 'Can add teacher', 14, 'add_teacher'),
(54, 'Can change teacher', 14, 'change_teacher'),
(55, 'Can delete teacher', 14, 'delete_teacher'),
(56, 'Can view teacher', 14, 'view_teacher');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  `subject` varchar(25) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_d`
--

INSERT INTO `book_d` (`b_id`, `book_id`, `name`, `author`, `edition`, `price`, `publication`, `pages`, `subject`, `status`) VALUES
(12, 'MCAB11', 'PYTHON PROGRAMMING', 'WESLEY', 'SECOND', '500', 'PEARSON', '200', 'COMPUTER', 'Unavailabl'),
(13, 'MCAB12', 'OPERATING SYSTEM', 'PETER BEAR', 'EIGHT', '300', 'WILEY INDIA', '150', 'COMPUTER SCIENCE', 'Unavailabl'),
(14, 'MCAB13', 'CRYPTOGRAPHY', 'DEBDEEP', 'SECOND', '140', 'TATA', '120', 'COMPUTER ', 'Available'),
(15, 'MCAB14', 'WORLD WIDE WEB', 'ROBERT', 'FOURTH', '500', 'PEARSON', '60', 'COMPUTER ', 'Available'),
(16, 'MCAB15', 'CRYPTOGRAPHY', 'ATUL KAHAT', 'SECOND', '260', 'TATA', '160', 'COMPUTER SCIENCE', 'Available'),
(17, 'MCAB16', 'OPERATING SYSTEM', 'WILLIAM ', 'FOURTH', '250', 'PRENTICE', '50', 'COMPUTER SCIENCE', 'Available'),
(18, 'MCAB17', 'DATABASE MANAGEMENT SYSTE', 'ARUN K', 'SECOND', '300', 'TATA', '100', 'COMPUTER SCIENCE', 'Available'),
(19, 'MCAB18', 'INTERNET OF THINGS', 'RAJAKUMAR', 'FIRST', '400', 'MK BOOKS', '100', 'COMPUTER SCIENCE', 'Available'),
(20, 'MCAB19', 'ARTIFICIAL INTELLIGENCE', 'PETER NOV', 'THIRD', '500', 'PEARSON', '60', 'COMPUTER', 'Available'),
(21, 'MCAB20', 'OPERATING SYSTEM CONCEPTS', 'GREG', 'NINTH', '400', 'WILLEY BOOKS', '150', 'COMPUTER SCIENCE', 'Available'),
(22, 'MCAB21', 'JAVA SERVER ', 'PETER', 'SECOND', '100', 'WILLEY', '150', 'COMPUTER', 'Available'),
(23, 'MCAB22', 'JAVA', 'JEFFREY', 'FIRST', '500', 'HD BOOKS', '500', 'COMPUTER', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(7, 'book_d', 'bookd'),
(5, 'contenttypes', 'contenttype'),
(8, 'feedback', 'feedback'),
(9, 'fine', 'fine'),
(10, 'login', 'login'),
(11, 'request', 'request'),
(12, 'returnbook', 'return'),
(6, 'sessions', 'session'),
(13, 'student', 'student'),
(14, 'teacher', 'teacher');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-13 05:00:04.207917'),
(2, 'auth', '0001_initial', '2022-11-13 05:00:14.914435'),
(3, 'admin', '0001_initial', '2022-11-13 05:00:17.898944'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-13 05:00:17.952955'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-13 05:00:18.016970'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-13 05:00:18.774227'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-13 05:00:19.981250'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-13 05:00:20.124667'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-13 05:00:20.176751'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-13 05:00:20.995545'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-13 05:00:21.088513'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-13 05:00:21.335848'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-13 05:00:21.474795'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-13 05:00:21.588143'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-13 05:00:21.719080'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-13 05:00:21.772987'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-13 05:00:22.044262'),
(18, 'book_d', '0001_initial', '2022-11-13 05:00:22.124387'),
(19, 'feedback', '0001_initial', '2022-11-13 05:00:22.161222'),
(20, 'fine', '0001_initial', '2022-11-13 05:00:22.299992'),
(21, 'login', '0001_initial', '2022-11-13 05:00:22.340407'),
(22, 'request', '0001_initial', '2022-11-13 05:00:22.384067'),
(23, 'returnbook', '0001_initial', '2022-11-13 05:00:22.430348'),
(24, 'sessions', '0001_initial', '2022-11-13 05:00:23.021381'),
(25, 'student', '0001_initial', '2022-11-13 05:00:23.173832'),
(26, 'teacher', '0001_initial', '2022-11-13 05:00:23.260817');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('20tkd086875fqrjv50re9uh04iplv85d', 'eyJ1X2lkIjoiOCJ9:1owGCR:GAkL-rVq3VWUauUAr0RN816mdpzd98XnmzhSVwQw2d0', '2022-12-03 05:15:31.099865'),
('5ugqb2h55pv6yvomx8lutmdf3f2e4vug', 'eyJ1X2lkIjoiIn0:1ouABa:HlJ7YAuLea50yVzEhN02NufojprJCT2WpGkJDSTjFmE', '2022-11-27 10:25:58.849328');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `feed_id` int(5) NOT NULL,
  `stud_id` varchar(15) NOT NULL,
  `feedback` varchar(25) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`feed_id`, `stud_id`, `feedback`, `date`) VALUES
(27, 'Ashique', 'good', '2022-11-18'),
(28, 'Priya ', 'good', '2022-11-18');

-- --------------------------------------------------------

--
-- Table structure for table `fine`
--

CREATE TABLE `fine` (
  `fine_id` int(5) NOT NULL,
  `u_id` varchar(25) NOT NULL,
  `fine` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fine`
--

INSERT INTO `fine` (`fine_id`, `u_id`, `fine`, `date`, `type`) VALUES
(17, 'Hyderali', '15', '2022-11-15', 'teacher'),
(18, 'Ashique', '50', '2022-11-15', 'student'),
(22, 'Geevar C', '20', '2022-11-18', 'teacher'),
(23, 'Geevar C', '20', '2022-11-18', 'teacher');

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

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`login_id`, `username`, `password`, `type`, `u_id`) VALUES
(1, 'admin', 'admin', 'admin', ''),
(10, 'Ashique', '123456', 'student', '8'),
(11, 'Nihad', '222222', 'student', '9'),
(12, 'Nihal', '333333', 'student', '10'),
(13, 'Nidha', '555555', 'student', '11'),
(14, 'Akhil', '999999', 'student', '12'),
(15, 'Rabeeh', '888888', 'student', '13'),
(16, 'Nusreen', '333333', 'student', '14'),
(17, 'Yusra', '444444', 'student', '15'),
(18, 'Hyderali', '111111', 'teacher', '50'),
(19, 'Balachandran K P', '222222', 'teacher', '51'),
(20, 'Febin Azeez', '333333', 'teacher', '52'),
(21, 'Geevar C', '44444', 'teacher', '53'),
(22, 'Noushad v', '555555', 'teacher', '54'),
(23, 'Priya ', '666666', 'teacher', '55'),
(24, 'Feroze', '777777', 'teacher', '56'),
(25, ' Vasudevan', '888888', 'teacher', '57'),
(26, 'Muhammed Jabir', '999999', 'teacher', '58'),
(27, 'Jasim', '666', 'student', '16');

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
(95, 8, 12, '2022-11-19', 'issued'),
(96, 55, 13, '2022-11-19', 'issued');

-- --------------------------------------------------------

--
-- Table structure for table `return`
--

CREATE TABLE `return` (
  `return_id` int(5) NOT NULL,
  `b_id` int(5) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_id` int(5) NOT NULL,
  `name` varchar(25) NOT NULL,
  `reg_no` varchar(25) NOT NULL,
  `sem` varchar(5) NOT NULL,
  `roll_no` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `phone` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_id`, `name`, `reg_no`, `sem`, `roll_no`, `password`, `phone`) VALUES
(8, 'Ashique', '16611', 'S3', '26', '123456', '9876543210'),
(9, 'Nihad', '16612', 'S3', '27', '222222', '9876543210'),
(10, 'Nihal', '16613', 'S3', '28', '333333', '9876543212'),
(11, 'Nidha', '16614', 'S3', '29', '555555', '9874561231'),
(12, 'Akhil', '16615', 'S3', '30', '999999', '9638527410'),
(13, 'Rabeeh', '16617', 'S3', '31', '888888', '7894561230'),
(14, 'Nusreen', '16618', 'S3', '32', '333333', '8745219633'),
(15, 'Yusra', '16619', 'S3', '33', '444444', '9856321478'),
(16, 'Jasim', '16701', 'S1', '52', '666', '7894561236');

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
(50, 'mcat1', 'Hyderali', '111111', '9998887773'),
(51, 'mcat2', 'Balachandran K P', '222222', '7774411122'),
(52, 'mcat3', 'Febin Azeez', '333333', '9638527411'),
(53, 'mcat4', 'Geevar C', '44444', '7894561232'),
(54, 'mcat5', 'Noushad v', '555555', '7891234563'),
(55, 'mcat6', 'Priya ', '666666', '8956237415'),
(56, 'mcat7', 'Feroze', '777777', '8527419631'),
(57, 'mcat8', ' Vasudevan', '888888', '9517538264'),
(58, 'mcat9', 'Muhammed Jabir', '999999', '5641239874');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `book_d`
--
ALTER TABLE `book_d`
  ADD PRIMARY KEY (`b_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

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
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_d`
--
ALTER TABLE `book_d`
  MODIFY `b_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `feed_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `fine`
--
ALTER TABLE `fine`
  MODIFY `fine_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `login_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `return`
--
ALTER TABLE `return`
  MODIFY `return_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `t_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
