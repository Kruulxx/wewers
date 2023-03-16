-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2023 at 02:04 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eirish_payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `archive`
--

CREATE TABLE `archive` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `phonenumber` varchar(12) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `emergency_name` varchar(45) NOT NULL,
  `emergency_contact` varchar(45) NOT NULL,
  `job_id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archive_attendancee`
--

CREATE TABLE `archive_attendancee` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` text NOT NULL,
  `logType` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendancee`
--

CREATE TABLE `attendancee` (
  `id` int(50) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time_in` varchar(255) NOT NULL,
  `time_out` varchar(255) NOT NULL,
  `total_hours` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `position` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `cash_advance` int(11) DEFAULT NULL,
  `phonenumber` varchar(12) NOT NULL,
  `sex` varchar(45) NOT NULL,
  `birth_date` date NOT NULL,
  `civil_status` varchar(45) NOT NULL,
  `emergency_name` varchar(45) NOT NULL,
  `emergency_contact` varchar(11) NOT NULL,
  `job_id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `isdeploy` varchar(1) NOT NULL,
  `isarchive` varchar(1) NOT NULL,
  `is_att_archive` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `name`, `address`, `position`, `rate`, `cash_advance`, `phonenumber`, `sex`, `birth_date`, `civil_status`, `emergency_name`, `emergency_contact`, `job_id`, `salary_id`, `isdeploy`, `isarchive`, `is_att_archive`) VALUES
(70, '70', 'EDISON VENERACION', ' Maguinao, San Rafael, Bulacan', 'COMPANY OWNER', 3000, 2000, '09473624340', 'Male', '0000-00-00', 'Married', 'Mother', '09123456789', 0, 0, '1', '', ''),
(71, '71', 'MARILYN VENERACION', 'Maguinao, San Rafael, Bulacan', 'GENERAL MANAGER', 3000, NULL, '09987654321', 'Female', '0000-00-00', 'Married', 'Husband', '09234543212', 0, 0, '1', '1', ''),
(72, 'A-OFC-004', 'CHERRY MANALO', 'San Rafael, Bulacan', 'OFFICE SERETARY', 530, NULL, '09357543212', 'Female', '0000-00-00', 'Single', 'Mother', '09828345634', 0, 0, '', '', ''),
(73, 'A-ADM-003', 'EIRISH VENERACION', ' Maguinao, San Rafael, Bulacan,', 'MANAGER', 2000, 2000, '09867548392', 'Female', '0000-00-00', 'Single', 'Father', '09847584938', 0, 0, '1', '', ''),
(74, 'A-ADM-004', 'EMICA VENERACION', ' Maguinao, San Rafael, Bulacan,', 'MANAGER', 2000, NULL, '09465738473', 'Female', '0000-00-00', 'Married', 'Father', '09128475643', 0, 0, '1', '1', ''),
(75, 'A-ADM-005', 'MARILOU ILISCUPIDEZ', 'San Rafael, Bulacan', 'ADMINISTRATOR', 900, NULL, '09384756473', 'Female', '0000-00-00', 'Married', 'Mother', '09574839757', 0, 0, '0', '1', ''),
(76, 'A-ADM-007', 'EMMANUEL VENERACION', 'San Rafael, Bulacan', 'ADMINISTRATOR', 950, NULL, '09857463728', 'Male', '0000-00-00', 'Married', 'Father', '09859478372', 0, 0, '', '', ''),
(77, 'A-ADM-008', 'LEO CRUZ', 'San Rafael, Bulacan', 'OPERATOR', 700, NULL, '09574833920', 'Male', '0000-00-00', 'Married', 'Mother', '09383847584', 0, 0, '', '', ''),
(78, 'A-ENG-001 ', 'JORDAN VENERACION', 'Maguinao, San Rafael, Bulacan', 'ENGINEER', 1000, NULL, '09883728912', 'Male', '0000-00-00', 'Married', 'Mother', '09473829183', 0, 0, '', '', ''),
(79, 'A-ENG-002', 'JOSHUA PATRANA', 'San Rafael, Bulacan', 'ENGINEER', 950, NULL, '09485743821', 'Male', '0000-00-00', 'Single', 'Father', '09847847383', 0, 0, '', '', ''),
(80, 'A-ENG-003', 'JAY-M MENDOZA', 'San Rafael, Bulacan', 'ENGINEER', 850, NULL, '2147483647', 'Male', '0000-00-00', 'Single', 'Mother', '2147483647', 0, 0, '', '', ''),
(81, 'A-ENG-004', 'RIGGO DIÑO', 'San Rafael, Bulacan', 'ENGINEER', 850, NULL, '2147483647', 'Male', '0000-00-00', 'Married', 'Father', '2147483647', 0, 0, '', '', ''),
(82, 'A-OFC-001', 'NENA CABUAY', 'San Rafael, Bulacan', 'OFFICE SERETARY', 650, 0, '2147483647', 'Female', '0000-00-00', 'Married', 'Mother', '2147483647', 0, 0, '1', '1', ''),
(83, 'A-OFC-002', 'JEAN GALARIO', 'San Rafael, Bulacan', 'OFFICE SERETARY', 600, NULL, '2147483647', 'Female', '0000-00-00', 'Single', 'Mother', '2147483647', 0, 0, '', '', ''),
(89, 'C-LAB-027', 'ARMANDO DENADO', 'San Rafael, Bulacan', 'LABORER', 1, NULL, '1', 'Male', '0000-00-00', 'Single', '1', '1', 0, 0, '', '', ''),
(117, 'C-LAB-028', 'JOMAR DERAYO', 'San Rafael, Bulacan', 'LABORER', 1, NULL, '1', 'Male', '0000-00-00', 'Single', '1', '1', 0, 0, '', '', ''),
(123, 'B-SKL-003', 'JR AGULTO', 'San Rafael, Bulacan', 'SKILLED', 1, NULL, '1', 'Male', '0000-00-00', 'Single', '1', '1', 0, 0, '', '', ''),
(124, 'B-SKL-007', 'JHASLY AMBUYOC', 'San Rafael, Bulacan', 'SKILLED', 1, NULL, '1', 'Male', '0000-00-00', 'Single', '1', '1', 0, 0, '', '', ''),
(130, 'B-CAR-002', 'TRISTAN TRISTAN', '099 San Roque Baliwag Bulacan', 'none', 130, 1000, '09876543456', 'Female', '0000-00-00', 'Single', 'Rob', '09878909876', 0, 0, '1', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `payroll`
--

CREATE TABLE `payroll` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `hours` varchar(50) NOT NULL,
  `rate` double NOT NULL,
  `overtime` varchar(50) NOT NULL,
  `gross_salary` varchar(100) NOT NULL,
  `cash_advance` varchar(100) NOT NULL,
  `net_salary` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `code` mediumint(50) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `code`, `status`) VALUES
(32, 'john', 'saitamabald23@gmail.com', '$2y$10$4Ou6x1iOl0ZlF9Jvs472V.2JHQMUOg0VKmRe86VGcTQqGZyFAWzAK', 0, 'verified'),
(34, 'jdy', 'judy@gmail.com', '$2y$10$WGqRkEfseqSuEUVNUnGRQ.xDeq/9M6LXLpT9u3n9lfrQH8gNWTxHe', 871744, 'notverified');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archive`
--
ALTER TABLE `archive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archive_attendancee`
--
ALTER TABLE `archive_attendancee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendancee`
--
ALTER TABLE `attendancee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payroll`
--
ALTER TABLE `payroll`
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
-- AUTO_INCREMENT for table `archive`
--
ALTER TABLE `archive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `archive_attendancee`
--
ALTER TABLE `archive_attendancee`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `attendancee`
--
ALTER TABLE `attendancee`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT for table `payroll`
--
ALTER TABLE `payroll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
