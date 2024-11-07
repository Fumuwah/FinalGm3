-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 07, 2024 at 03:41 PM
-- Server version: 10.11.8-MariaDB-cll-lve
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u327394152_gm3builders`
--

-- --------------------------------------------------------

--
-- Table structure for table `dtr`
--

CREATE TABLE `dtr` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `day` int(11) DEFAULT NULL,
  `month` int(11) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `time_in` time DEFAULT NULL,
  `time_out` time DEFAULT NULL,
  `total_hrs` float DEFAULT NULL,
  `other_ot` float DEFAULT NULL,
  `date` date DEFAULT NULL,
  `dtr_status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dtr`
--

INSERT INTO `dtr` (`id`, `employee_id`, `day`, `month`, `year`, `time_in`, `time_out`, `total_hrs`, `other_ot`, `date`, `dtr_status`) VALUES
(22, 1, NULL, NULL, NULL, '08:00:00', '20:00:00', 12, 4, '2024-09-25', 'On-Time'),
(23, 1, NULL, NULL, NULL, '08:00:00', '22:00:00', 14, 6, '2024-09-26', 'On-Time'),
(24, 2, NULL, NULL, NULL, '08:00:00', '21:00:00', 13, 5, '2024-09-26', 'On-Time'),
(25, 4, NULL, NULL, NULL, '08:00:00', '23:00:00', 15, 7, '2024-09-26', 'On-Time'),
(26, 3, NULL, NULL, NULL, '08:00:00', '20:00:00', 12, 4, '2024-09-26', 'On-Time'),
(28, 5, NULL, NULL, NULL, '07:00:00', '17:00:00', 10, 2, '2024-09-29', 'Early'),
(29, 1, NULL, NULL, NULL, '06:00:00', '21:00:00', 15, 7, '2024-09-29', 'Early'),
(30, 1, NULL, NULL, NULL, '08:00:00', '20:00:00', 12, 4, '2024-09-28', 'On-Time'),
(31, 2, NULL, NULL, NULL, '12:27:00', NULL, 0, NULL, '2024-10-12', 'Late'),
(32, 2, NULL, NULL, NULL, '10:00:00', NULL, 0, NULL, '2024-10-24', 'Late'),
(33, 1, 28, 10, 2024, '08:00:00', '19:00:00', 11, 3, '2024-10-28', 'On-Time'),
(34, 2, 29, 10, 2024, '07:00:00', '17:00:00', 10, 2, '2024-10-29', 'Early'),
(35, 1, 29, 10, 2024, '00:44:00', NULL, 0, NULL, '2024-10-29', 'Early'),
(36, 1, 30, 10, 2024, '00:45:00', NULL, 0, NULL, '2024-10-30', 'Early'),
(37, 2, 5, 11, 2024, '21:35:00', NULL, 0, NULL, '2024-11-05', 'Late');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `employee_id` int(11) NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `middlename` varchar(100) DEFAULT NULL,
  `contactno` varchar(15) NOT NULL,
  `address` text NOT NULL,
  `birthdate` date NOT NULL,
  `civil_status` enum('Single','Married','Widowed') NOT NULL,
  `religion` varchar(100) DEFAULT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `hire_date` date NOT NULL,
  `employee_status` enum('Regular','Probationary','Archived') NOT NULL,
  `sss_no` varchar(20) DEFAULT NULL,
  `philhealth_no` varchar(20) DEFAULT NULL,
  `hdmf_no` varchar(20) DEFAULT NULL,
  `tin_no` varchar(20) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `emergency_contactno` varchar(15) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `position_id` int(11) DEFAULT NULL,
  `project_name` varchar(100) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `last_leave_reset_year` int(11) DEFAULT NULL,
  `image_path` varchar(255) DEFAULT 'assets/images/account.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `employee_number`, `lastname`, `firstname`, `middlename`, `contactno`, `address`, `birthdate`, `civil_status`, `religion`, `basic_salary`, `hire_date`, `employee_status`, `sss_no`, `philhealth_no`, `hdmf_no`, `tin_no`, `email`, `password`, `emergency_contactno`, `created_at`, `updated_at`, `position_id`, `project_name`, `role_id`, `last_leave_reset_year`, `image_path`) VALUES
(1, '001', 'Caragan', 'Justin Kyle', 'O', '09586758493', 'Antipolo Rizal BLK 15 LOT 13 DALIG ', '2002-09-22', 'Single', 'Catholic', 99999999.00, '2024-09-03', 'Regular', '0038475859411', '3213214432424', '135153313151', '312415151223', 'caraganhr@example.com', '$2y$10$37YrV9U7UdMdn8hSdgkPEOmQJC5i4d1B7ZkwXDjQ7czCzNT9X6E02', '065411004', '2024-09-03 15:09:00', '2024-11-06 20:11:06', 1, 'Jollibee', 1, 2024, 'uploads/employee_1.jpg'),
(2, '002', 'Bonifacio', 'Mianah Venice', 'M', '03030303033', 'Binangonan', '2024-10-31', 'Single', 'Christian', 50.00, '2024-09-03', 'Regular', '5626263123123', '1561465832141', '164984312321', '184942132132', 'bonifaciohr@example.com', '$2y$10$NBT.FYudxA5KNO/arL8C/OJVAP487f5oQQSHrbAHU1a9b2n7wKu5W', '022020220202', '2024-09-03 15:21:30', '2024-11-02 06:29:44', 19, 'Kenny Rogers', 1, 2024, 'assets/images/account.png'),
(3, '003', 'Magno', 'Jessy Ville', 'R', '0909090099099', 'Antipolo', '2024-09-04', 'Single', 'Christian', 25.00, '2024-09-04', 'Regular', '645646', '12412412', '35631', '3421', 'magnohr@example.com', '$2y$10$ToCxVkul4k8fkuRejIgh4uZwDmrfegGintT2KUxrXS96kdbVxjve.', '', '2024-09-04 12:25:17', '2024-11-04 19:09:24', 17, 'Jollibee', 2, 2024, 'assets/images/account.png'),
(4, '004', 'Francisco', 'Christian Jake', 'F', '02136457894', 'Taytay', '2024-09-04', 'Single', 'Christian', 250000.00, '2024-09-04', 'Regular', '5646541245711', '4654654511111', '546554111111', '541211111111', 'franciscohr@example.com', '$2y$10$O3GoBOScpSRzjXpBKM9mR.IgD7y2Gj9TbJox9HAyWpOUjQU1MDhDK', '', '2024-09-04 13:32:07', '2024-11-07 15:39:09', 7, 'Jollibee', 2, 2024, 'uploads/employee_4.png'),
(5, '005', 'Ortiz', 'Kristoffer', 'C', '02121021122', 'Antipolo', '2024-09-05', 'Single', 'Catholic', 100.00, '2024-09-05', 'Regular', '641654', '54861251', '2165464', '1234', 'ortizemp@example.com', '$2y$10$k4i0HO8yV5DMLAywTbd7YOgewS/Xcny0h7T0CFg2g6.gv3W7QArKS', '', '2024-09-05 06:37:59', '2024-11-04 19:09:03', 5, 'Jollibee', 3, 2024, 'assets/images/account.png'),
(6, 'C', 'C', 'C', 'C', '02', 'C', '2024-09-18', 'Single', 'c', 1.00, '2024-09-18', 'Archived', '1', '1', '1', '1', 'chr@example.com', '$2y$10$ixLqdyPdrBB4C2FHmgdt2OX178gZABxekbVPrCgjvrBWRjXJ8XCtK', '1', '2024-09-18 07:56:57', '2024-10-24 06:31:00', 12, NULL, 1, NULL, 'assets/images/account.png'),
(7, '008', 'Caragan', 'Kyle', 'C', '031012302', 'asdad', '2024-10-01', 'Single', 'catholic', 1000000.00, '2024-10-01', 'Archived', '1231', '124124124', '1251', '12412', 'caraganad@example.com', '$2y$10$1pxOVawT54qqLw1gXeFmEOiPM3RFn7TnYP.rvEftQJ.uoLV2ePdo2', '231321231321', '2024-10-01 14:44:14', '2024-11-03 20:35:49', 17, NULL, 1, NULL, 'assets/images/account.png'),
(8, '09', 'a', 'a', 'a', '1', 'a', '2024-10-03', 'Single', 'a', 1.00, '2024-10-03', 'Archived', '1', '2', '2', '2', 'e@example.com', '$2y$10$OUW59v9PPB2.9sesh32tSOo/v6SXm669tg6lMeuOpZ8OnQVcaQBKa', '1', '2024-10-02 18:46:02', '2024-10-24 06:31:08', 8, 'Jollibee', 3, NULL, 'assets/images/account.png'),
(9, '10', 'Piodo', 'John ', 'Arnuco', '09307292755', '4-3 Westbank rd. Maybunga Pasig City', '2003-08-23', 'Single', 'Christian', 20000.00, '2024-08-01', 'Archived', '123456', '01-021684564-1', 'awdai', '056+46526545', 'arnoldpiodo25@gmail.com', '$2y$10$KmDLl75C2p8vBFtmmpmYq.EWvRQT1hUj2UUe8zTdAxDhPvmPwfTSC', 'awdipjdaw', '2024-10-12 04:15:38', '2024-10-30 16:07:14', 15, 'Jollibee', 3, NULL, 'assets/images/account.png'),
(25, '010', 'Silva', 'Alexis', 'D', '12345678912', 'c', '2024-10-31', 'Married', 'd', 12.00, '2024-10-31', 'Regular', '1234567891234', '2131355667111', '123123456786', '123453347837', 'silva@example.com', '$2y$10$dJjTVwb1qIr7.z.aF4NFhO9Z4yJQPGEYXG7Tqoh/Ev5xigGfBv9U6', '', '2024-10-31 05:56:46', '2024-11-03 21:15:27', 4, 'Kenny Rogers', NULL, NULL, 'assets/images/account.png'),
(26, '0001', 'DelaCruz', 'Juan', 'C', '09123456789', 'Philippines', '2000-01-01', 'Single', 'INC', 50000.00, '2010-02-02', 'Archived', '0000000000001', '0000000000002', '000000000003', '000000000004', 'sample@gmail.com', '$2y$10$TcYjZZnczVOGCB24p.1yf.kzAMCtjqUfYWmNz3Mgu5cbeCL8/FbZi', 'Mokang', '2024-10-31 09:41:22', '2024-10-31 09:56:10', 8, 'Jollibee', NULL, NULL, 'assets/images/account.png'),
(27, '3123123', '31231231', '12312312', '123123', '1323123', '12313', '0003-03-12', 'Widowed', '1231231', 31231.00, '0033-12-31', 'Archived', '1231233123123123131', '13123123', '13123123', '131312312', 'hahr@example.com', '$2y$10$C56lUjpy9RJ/ZEj97Vbk9OEmB1qlUo87YSzM9Snol88iymv1jw4C6', '312314142141412', '2024-11-04 00:53:28', '2024-11-04 00:54:14', 17, 'Jollibee', 1, NULL, 'assets/images/account.png'),
(28, 'zfafas', 'adasdasd', 'sd', '', 'd', 'as', '0626-06-23', 'Married', '', 99999999.99, '6645-04-05', 'Regular', '', '', '', '', 'haehr@example.com', '$2y$10$ZgPQ9VAB7Bf32e6hNCjjA.7sytRLGyofficchLuiisGhs/MY9.RDO', 'eqwe', '2024-11-04 01:02:04', '2024-11-04 01:02:04', 18, 'Kenny Rogers', 3, NULL, 'assets/images/account.png'),
(29, '050', 'Ortiz', 'Francisco', 'C', '09369241777', 'C C C C C C C 555', '2024-11-06', 'Single', 'Catholic', 50000.00, '2024-11-06', 'Probationary', '1234567891234', '1234567891232', '123456789123', '123456789132', 'ortizfc@example.com', '$2y$10$B0pdmmdxhpb8/OWtrPQXiurWW2hcvLu1ec1mOmmVv8r4BM0k91RR6', '', '2024-11-05 17:41:25', '2024-11-05 17:41:25', 11, 'Maxwell', 1, NULL, 'assets/images/account.png');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `leave_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `sick_leave` int(11) DEFAULT 0,
  `vacation_leave` int(11) DEFAULT 0,
  `leave_without_pay` int(11) DEFAULT 0,
  `used_leave` int(11) DEFAULT 0,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`leave_id`, `employee_id`, `sick_leave`, `vacation_leave`, `leave_without_pay`, `used_leave`, `role_id`) VALUES
(1, 1, 6, 6, 0, 11, 1),
(2, 2, 7, 7, 0, 0, 1),
(3, 4, 7, 7, 0, 0, 1),
(4, 6, 7, 7, 0, 0, 1),
(5, 3, 7, 7, 0, 0, 2),
(6, 7, 7, 7, 0, 0, 2),
(8, 5, 4, 4, 0, 4, 3),
(9, 8, 6, 6, 0, 0, 3),
(10, 9, 6, 6, 0, 0, 3),
(11, 25, 7, 7, 0, 0, 2),
(12, 26, 7, 7, 0, 0, 1),
(13, 27, 7, 7, 0, 0, 1),
(14, 28, 6, 6, 0, 0, 3),
(15, 29, 7, 7, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `request_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_type` varchar(50) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` enum('Pending','Approved','Declined') DEFAULT 'Pending',
  `reason` text DEFAULT NULL,
  `request_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `leave_requests`
--

INSERT INTO `leave_requests` (`request_id`, `employee_id`, `leave_type`, `start_date`, `end_date`, `status`, `reason`, `request_date`) VALUES
(14, 1, 'Vacation Leave', '2024-10-30', '2024-11-07', 'Approved', 'Boracay', '2024-10-29 17:10:26'),
(15, 5, 'Sick Leave', '2024-10-30', '2024-10-31', '', 'Cough', '2024-10-29 21:09:03'),
(16, 5, 'Sick Leave', '2024-10-30', '2024-10-31', 'Approved', 'Wala lang', '2024-10-30 01:27:33'),
(17, 5, 'Sick Leave', '2024-11-02', '2024-11-04', '', 'Nilagnat', '2024-10-31 05:49:48'),
(18, 5, 'Vacation Leave', '2024-11-05', '2024-11-06', 'Approved', 'haha', '2024-10-31 05:51:41'),
(19, 1, 'Sick Leave', '2024-11-04', '2024-11-08', 'Declined', 'Fever', '2024-11-04 05:27:18'),
(20, 1, 'Vacation Leave', '2024-11-04', '2024-11-04', 'Approved', 'l', '2024-11-04 05:37:01'),
(21, 5, 'Sick Leave', '2024-11-06', '2024-11-07', 'Declined', 'May trangkaso po', '2024-11-05 19:10:56'),
(22, 1, 'Sick Leave', '2024-11-07', '2024-11-07', 'Approved', 'Lagnat', '2024-11-07 15:28:48');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notification_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `request_type` enum('leave_request','profile_change') DEFAULT NULL,
  `request_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `employee_id` int(11) NOT NULL,
  `employee_number` varchar(50) NOT NULL,
  `position_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `allowance` decimal(10,2) DEFAULT NULL,
  `monthly` decimal(10,2) DEFAULT NULL,
  `daily` decimal(10,2) DEFAULT NULL,
  `hourly` decimal(10,2) DEFAULT NULL,
  `total_hrs` decimal(10,2) DEFAULT NULL,
  `other_ot` decimal(10,2) DEFAULT NULL,
  `special_holiday` decimal(10,2) DEFAULT NULL,
  `special_leave` decimal(10,2) DEFAULT NULL,
  `gross` decimal(10,2) DEFAULT NULL,
  `cash_adv` decimal(10,2) DEFAULT NULL,
  `total_deduc` decimal(10,2) DEFAULT NULL,
  `netpay` decimal(10,2) DEFAULT NULL,
  `withhold_tax` decimal(10,2) DEFAULT NULL,
  `sss_con` decimal(10,2) DEFAULT NULL,
  `philhealth_con` decimal(10,2) DEFAULT NULL,
  `pag_ibig_con` decimal(10,2) DEFAULT NULL,
  `other_deduc` decimal(10,2) DEFAULT NULL,
  `totalHrs` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `permission_id` int(11) NOT NULL,
  `can_view_own_data` tinyint(1) DEFAULT 0,
  `can_view_team_data` tinyint(1) DEFAULT 0,
  `can_edit_data` tinyint(1) DEFAULT 0,
  `can_manage_roles` tinyint(1) DEFAULT 0,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`permission_id`, `can_view_own_data`, `can_view_team_data`, `can_edit_data`, `can_manage_roles`, `role_id`) VALUES
(1, 1, 1, 1, 1, 1),
(2, 1, 1, 1, 0, 2),
(3, 1, 0, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE `positions` (
  `position_id` int(11) NOT NULL,
  `position_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`position_id`, `position_name`) VALUES
(19, 'Admin Specialist'),
(18, 'Architectural Designer'),
(5, 'Civil Engineer'),
(14, 'Driver'),
(11, 'Electrician'),
(9, 'Field Coordinator'),
(3, 'Foreman'),
(17, 'Helper'),
(8, 'HR Officer'),
(20, 'HR Specialist'),
(2, 'HR/Admin Manager'),
(7, 'Laborer'),
(4, 'Leadman'),
(12, 'Mason'),
(6, 'Mechanical Engineer'),
(1, 'Owner'),
(15, 'Project Engineer'),
(16, 'Safety Officer'),
(13, 'Surveyor'),
(10, 'Warehouse Man');

-- --------------------------------------------------------

--
-- Table structure for table `profile_change_requests`
--

CREATE TABLE `profile_change_requests` (
  `request_id` int(11) NOT NULL,
  `employee_id` int(11) DEFAULT NULL,
  `request_type` enum('password','contactno','address') DEFAULT NULL,
  `old_data` text DEFAULT NULL,
  `new_data` text DEFAULT NULL,
  `status` enum('pending','approved','declined') DEFAULT 'pending',
  `request_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `profile_change_requests`
--

INSERT INTO `profile_change_requests` (`request_id`, `employee_id`, `request_type`, `old_data`, `new_data`, `status`, `request_date`) VALUES
(1, NULL, 'password', NULL, '123654', 'pending', '2024-11-06 20:35:52'),
(2, NULL, 'contactno', NULL, '09586758493', 'pending', '2024-11-06 20:35:52'),
(3, NULL, 'address', NULL, 'Antipolo Rizal BLK 15 LOT 13 DALIG ', 'pending', '2024-11-06 20:35:52'),
(4, NULL, 'password', NULL, '123654', 'pending', '2024-11-06 20:36:37'),
(5, NULL, 'contactno', NULL, '09586758493', 'pending', '2024-11-06 20:36:37'),
(6, NULL, 'address', NULL, 'Antipolo Rizal BLK 15 LOT 13 DALIG ', 'pending', '2024-11-06 20:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `project_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`project_name`) VALUES
('Jollibee'),
('Kenny Rogers'),
('Maxwell'),
('Mcdo'),
('Wendy\'s');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(2, 'Admin'),
(3, 'Employee'),
(1, 'Super Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dtr`
--
ALTER TABLE `dtr`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `employee_number` (`employee_number`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `employee_number_2` (`employee_number`),
  ADD KEY `hire_date` (`hire_date`),
  ADD KEY `basic_salary` (`basic_salary`),
  ADD KEY `fk_position` (`position_id`),
  ADD KEY `fk_project_name` (`project_name`),
  ADD KEY `fk_role` (`role_id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`leave_id`),
  ADD UNIQUE KEY `employee_id` (`employee_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
  ADD PRIMARY KEY (`employee_id`),
  ADD KEY `employee_number` (`employee_number`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `role_id` (`role_id`),
  ADD KEY `total_hrs` (`total_hrs`),
  ADD KEY `other_ot` (`other_ot`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `fk_permission_role` (`role_id`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`position_id`),
  ADD UNIQUE KEY `position_name` (`position_name`);

--
-- Indexes for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`project_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`),
  ADD UNIQUE KEY `role_name` (`role_name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dtr`
--
ALTER TABLE `dtr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `leave_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `position_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  MODIFY `request_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dtr`
--
ALTER TABLE `dtr`
  ADD CONSTRAINT `fk_employee` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `fk_position` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `fk_project_name` FOREIGN KEY (`project_name`) REFERENCES `projects` (`project_name`),
  ADD CONSTRAINT `fk_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `fk_employee_leave` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE;

--
-- Constraints for table `payroll`
--
ALTER TABLE `payroll`
  ADD CONSTRAINT `payroll_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `payroll_ibfk_2` FOREIGN KEY (`employee_number`) REFERENCES `employees` (`employee_number`),
  ADD CONSTRAINT `payroll_ibfk_3` FOREIGN KEY (`position_id`) REFERENCES `positions` (`position_id`),
  ADD CONSTRAINT `payroll_ibfk_4` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permission_role` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile_change_requests`
--
ALTER TABLE `profile_change_requests`
  ADD CONSTRAINT `profile_change_requests_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
