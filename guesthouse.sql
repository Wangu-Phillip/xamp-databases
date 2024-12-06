-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 11:15 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guesthouse`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `price` double NOT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `number_of_guests` varchar(2) NOT NULL,
  `number_of_nights` varchar(2) NOT NULL,
  `payment_method` varchar(50) NOT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `guest_house` varchar(255) NOT NULL,
  `created_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `price`, `date`, `guest_id`, `room_id`, `status`, `number_of_guests`, `number_of_nights`, `payment_method`, `check_in`, `check_out`, `guest_house`, `created_At`) VALUES
(1, 100, '2024-10-31 22:00:00', 1, 1, 'Checked In', '1', '2', 'Credit Card', '2024-11-01 12:00:00', '2024-11-03 10:00:00', '', '2024-10-31 22:00:00'),
(2, 150, '2024-12-02 22:00:00', 2, 2, 'Checked Out', '2', '2', 'Cash', '2024-12-03 08:50:00', '2024-12-04 08:50:00', '', '2024-11-02 22:00:00'),
(3, 200, '2024-11-04 22:00:00', 3, 3, 'Checked Out', '2', '2', 'Credit Card', '2024-11-05 13:00:00', '2024-11-07 10:00:00', '', '2024-11-04 22:00:00'),
(4, 250, '2024-12-06 22:00:00', 4, 1, 'Cancelled', '3', '3', 'Online Payment', NULL, NULL, '', '2024-11-06 22:00:00'),
(5, 300, '2024-12-08 22:00:00', 5, 2, 'Checked In', '4', '2', 'Cash', '2024-11-09 12:00:00', NULL, '', '2024-11-08 22:00:00'),
(6, 350, '2024-12-12 22:00:00', 6, 3, 'Pending', '1', '1', 'Credit Card', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '2024-11-10 22:00:00'),
(7, 400, '2024-10-15 22:00:00', 7, 2, 'Checked Out', '2', '1', 'Cash', '2024-10-16 11:00:00', '2024-10-17 10:00:00', '', '2024-11-12 22:00:00'),
(9, 500, '2024-12-13 22:00:00', 9, 3, 'Checked Out', '2', '2', 'Online Payment', '2024-11-17 13:00:00', '2024-11-18 10:00:00', '', '2024-11-16 22:00:00'),
(10, 550, '2024-12-24 22:00:00', 10, 1, 'Checked In', '4', '3', 'Cash', '2024-11-19 12:00:00', '0000-00-00 00:00:00', '', '2024-11-18 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `guests`
--

CREATE TABLE `guests` (
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `omang_id` int(9) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `company` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `citizenship` varchar(150) NOT NULL,
  `country` varchar(150) NOT NULL,
  `car_registration_no` varchar(150) NOT NULL,
  `guest_house` varchar(255) NOT NULL,
  `created_At` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `guests`
--

INSERT INTO `guests` (`guest_id`, `firstname`, `lastname`, `omang_id`, `phone`, `address`, `company`, `email`, `citizenship`, `country`, `car_registration_no`, `guest_house`, `created_At`) VALUES
(1, 'John', 'Doe', 123456789, '9876543210', 'P O Box 123', 'Debswana', 'john.doe@example.com', 'Botswana', 'Botswana', 'AB1234', '', '2024-10-31 22:00:00'),
(2, 'Jane', 'Smith', 234567890, '9876543211', 'P O Box 123', 'Mascom', 'jane.smith@example.com', 'South Africa', 'South Africa', 'CD5678', '', '2024-11-02 22:00:00'),
(3, 'Carlos', 'Martinez', 345678901, '9876543212', 'P O Box 123', 'Orange', 'carlos.martinez@example.com', 'United States', 'United States', 'EF3456', '', '2024-11-04 22:00:00'),
(4, 'Liam', 'O\'Connor', 456789012, '9876543213', 'P O Box 123', 'Firstnational Bank', 'liam.oconnor@example.com', 'Zambia', 'Zambia', 'GH4567', '', '2024-11-06 22:00:00'),
(5, 'Sophia', 'Garcia', 567890123, '9876543214', 'P O Box 123', 'Retail Co.', 'sophia.garcia@example.com', 'Namibia', 'Namibia', 'IJ7890', '', '2024-11-08 22:00:00'),
(6, 'Aisha', 'Khan', 678901234, '9876543215', 'P O Box 123', 'Tech Corp', 'aisha.khan@example.com', 'Zimbabwe', 'Zimbabwe', 'KL1234', '', '2024-11-10 22:00:00'),
(7, 'Ahmed', 'Ali', 789012345, '9876543216', 'P O Box 123', 'Healthcare Inc', 'ahmed.ali@example.com', 'Botswana', 'Botswana', 'MN5678', '', '2024-11-12 22:00:00'),
(9, 'Ivan', 'Petrov', 901234567, '9876543218', 'P O Box 123', 'Logistics Group', 'ivan.petrov@example.com', 'United States', 'United States', 'QR4567', '', '2024-11-16 22:00:00'),
(10, 'Carlos', 'Ngoma', 12345678, '9876543219', 'P O Box 123', 'Industrial Ltd', 'carlos.ngoma@example.com', 'Zambia', 'Zambia', 'ST7890', '', '2024-11-18 22:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `kin`
--

CREATE TABLE `kin` (
  `id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `firstname` varchar(155) NOT NULL,
  `lastname` varchar(155) NOT NULL,
  `address` varchar(155) NOT NULL,
  `cell` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(155) NOT NULL,
  `guest_house` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kin`
--

INSERT INTO `kin` (`id`, `guest_id`, `firstname`, `lastname`, `address`, `cell`, `phone`, `email`, `guest_house`) VALUES
(1, 1, 'Mary', 'Doe', 'P O Box 123', '123456789', '9876543210', 'mary.doe@example.com', ''),
(2, 2, 'Robert', 'Smith', 'P O Box 123', '123456789', '9876543211', 'robert.smith@example.com', ''),
(3, 3, 'Elena', 'Martinez', 'P O Box 123', '123456789', '9876543212', 'elena.martinez@example.com', ''),
(4, 4, 'Mei', 'Zhang', 'P O Box 123', '123456789', '9876543213', 'mei.zhang@example.com', ''),
(5, 5, 'Sana', 'Khan', 'P O Box 123', '123456789', '9876543214', 'sana.khan@example.com', ''),
(6, 6, 'Connor', 'O\'Connor', 'P O Box 123', '123456789', '9876543215', 'connor.oconnor@example.com', ''),
(7, 7, 'Isabella', 'Garcia', 'P O Box 123', '123456789', '9876543216', 'isabella.garcia@example.com', ''),
(9, 9, 'Yuki', 'Tanaka', 'P O Box 123', '123456789', '9876543218', 'yuki.tanaka@example.com', ''),
(10, 10, 'Dmitry', 'Petrov', 'P O Box 123', '123456789', '9876543219', 'dmitry.petrov@example.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `room_id` int(11) NOT NULL,
  `room_Number` varchar(20) NOT NULL,
  `room_Type` varchar(100) NOT NULL,
  `price` double(10,2) NOT NULL,
  `guest_house` varchar(255) NOT NULL,
  `created_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`room_id`, `room_Number`, `room_Type`, `price`, `guest_house`, `created_At`) VALUES
(1, '102', 'Master Bedroom', 650.00, '', '2024-11-29 12:00:46'),
(2, '101', 'Master Bedroom', 450.00, '', '2024-12-01 22:53:42'),
(3, '103', 'Master Bedroom', 550.00, '', '2024-12-01 22:54:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'employee',
  `password` varchar(255) NOT NULL,
  `salary` decimal(10,2) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'offline',
  `guest_house` varchar(255) NOT NULL,
  `created_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `firstname`, `lastname`, `phone`, `email`, `role`, `password`, `salary`, `status`, `guest_house`, `created_At`) VALUES
(2, 'John', 'Dory', '72 440 183', 'john@gmail.com', 'admin', '$2y$10$G8yy3FakmAU83ZTbwAQA6.Wrwi2UTY.ysvtI1biA81pWNttzMJ/Iy', '0.00', '', '', '2024-12-02 08:40:50'),
(4, 'Theo', 'Doe', '71234567', 'doe@gmail.com', 'employee', '$2y$10$3JU4StSiYc9u3hP60bvkTOqKRcmwGW1A6IEmETZK.Pi29RQdMW0le', '1500.00', '', '', '2024-12-01 22:58:21'),
(6, 'Hellen', 'Musevenzo', '712345678', 'hellen@gmail.com', 'employee', '$2y$10$H4IBwxNUbzPs85Ycey8rmO5g5Ht5kjyj/U0n1tO3hLY643WbxMenG', '500.00', '', '', '2024-12-02 21:47:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `guest_fk` (`guest_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `guests`
--
ALTER TABLE `guests`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `kin`
--
ALTER TABLE `kin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `guests`
--
ALTER TABLE `guests`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `kin`
--
ALTER TABLE `kin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
