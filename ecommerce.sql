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
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `business_settings`
--

CREATE TABLE `business_settings` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `business_name` varchar(100) NOT NULL,
  `logo` blob NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `facebook_link` varchar(100) NOT NULL,
  `instagram_link` varchar(100) NOT NULL,
  `linkedIn_link` varchar(100) NOT NULL,
  `twitter_link` varchar(100) NOT NULL,
  `tik_tok` varchar(100) NOT NULL,
  `currency_symbol` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `shop_id`, `category_name`, `image`) VALUES
(1, 1, 'Nike', ''),
(2, 1, 'Sneaker', ''),
(3, 1, 'Puma', ''),
(4, 1, 'Addidas', '');

-- --------------------------------------------------------

--
-- Table structure for table `customer_details`
--

CREATE TABLE `customer_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_details`
--

INSERT INTO `customer_details` (`id`, `user_id`, `firstname`, `lastname`, `phone`, `email`, `gender`, `dob`, `address`) VALUES
(1, 3, 'hellen', 'Musevenzo', '7123456', 'hellen@gmail.com', 'female', '25-05-2000', 'P O Box 123');

-- --------------------------------------------------------

--
-- Table structure for table `hero_section`
--

CREATE TABLE `hero_section` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `hero_heading` varchar(255) NOT NULL,
  `slogan` varchar(255) NOT NULL,
  `btn_text` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hero_section`
--

INSERT INTO `hero_section` (`id`, `shop_id`, `image`, `hero_heading`, `slogan`, `btn_text`) VALUES
(2, 1, '../uploads/hbg.jpg', 'Welcome to Our Shoe Shop', 'Explore our latest collection and find your perfect pair of shoes.', 'Shop Now'),
(3, 1, '../uploads/shoe1.jpg', 'Welcome to Our Shoe Store', 'Explore our latest collection and find your perfect pair of shoes.', 'Shop Now');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `total_amount` decimal(10,2) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `product_id`, `user_id`, `shop_id`, `quantity`, `total_amount`, `date`, `status`) VALUES
(22, 2, 3, 1, 1, '999.99', '2024-05-21 02:00:02', 'Pending'),
(23, 4, 3, 1, 1, '1000.00', '2024-02-22 02:00:02', 'Delivered'),
(24, 6, 3, 1, 1, '849.95', '2024-03-19 02:00:02', 'Delivered'),
(25, 4, 3, 1, 1, '1000.00', '2024-05-21 02:01:43', 'Shipped'),
(26, 2, 8, 1, 1, '999.99', '2024-05-21 03:11:05', 'Shipped'),
(27, 8, 8, 1, 1, '1500.95', '2024-05-21 03:11:05', 'Delivered'),
(28, 2, 3, 1, 1, '999.99', '2024-11-21 09:57:18', 'Pending'),
(29, 4, 3, 1, 1, '1000.00', '2024-11-23 01:10:50', 'Pending'),
(30, 8, 3, 1, 1, '1500.95', '2024-11-23 01:10:50', 'Pending'),
(31, 12, 3, 1, 1, '849.95', '2024-11-23 01:10:50', 'Pending'),
(32, 11, 3, 1, 1, '750.00', '2024-11-23 01:10:50', 'Pending'),
(33, 11, 3, 1, 1, '750.00', '2024-11-23 01:10:50', 'Pending'),
(34, 4, 3, 1, 1, '1000.00', '2024-11-23 01:13:30', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `category` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `size` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `variety_1` varchar(255) DEFAULT NULL,
  `variety_2` varchar(255) DEFAULT NULL,
  `variety_3` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `shop_id`, `name`, `description`, `category`, `price`, `size`, `color`, `image`, `variety_1`, `variety_2`, `variety_3`) VALUES
(2, 1, 'Nike', 'Nike is the best', 'Nike', '999.99', '8', 'Black', './uploads/shoe1.jpg', NULL, NULL, NULL),
(4, 1, 'Nike', 'Nike is the best', 'Nike', '1000.00', '7', 'White', './uploads/shoe2.jpg', NULL, NULL, NULL),
(6, 1, 'Sneakers', 'Sneakers are the best', 'Sneaker', '849.95', '8', 'Mixed', './uploads/shoe4.jpg', NULL, NULL, NULL),
(8, 1, 'Sneakers', 'Sneakers are the best', 'Sneaker', '1500.95', '8', 'black', './uploads/shoe7.jpg', NULL, NULL, NULL),
(9, 1, 'Sneakers', 'Sneakers are the best', 'Sneaker', '849.95', '4-9', 'black', './uploads/shoe1.jpg', NULL, NULL, NULL),
(11, 1, 'Vans', 'Vans is the best', 'Nike', '750.00', '7', 'White', './uploads/shoe1.jpg', 'uploads/shoe1.jpg', 'uploads/shoe1.jpg', 'uploads/shoe1.jpg'),
(16, 1, 'Nike_1', 'nikeyy', 'Nike', '849.95', '8', 'Red', './uploads/shoe1.jpg', './uploads/shoe1.jpg', './uploads/shoe1.jpg', './uploads/shoe1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shops`
--

CREATE TABLE `shops` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shops`
--

INSERT INTO `shops` (`id`, `name`, `description`, `logo`, `owner_id`, `created_at`) VALUES
(1, 'Shop1', 'The best store in town.', './uploads/shoe1.jpg', 8, '2024-11-30 14:35:51'),
(2, 'shop2', 'The best shoe store in town.', './uploads/shoe1.jpg', 8, '2024-12-03 22:06:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'customer',
  `status` varchar(255) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `role`, `status`) VALUES
(2, 'John', 'Dory', 'john@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'active'),
(3, 'Hellen', 'Musevenzo', 'hellen@gmail.com', '91ec1f9324753048c0096d036a694f86', 'customer', 'active'),
(8, 'Ludo', 'Mpho', 'ludo@gmail.com', '91ec1f9324753048c0096d036a694f86', 'manager', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business_settings`
--
ALTER TABLE `business_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hero_section`
--
ALTER TABLE `hero_section`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shops`
--
ALTER TABLE `shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business_settings`
--
ALTER TABLE `business_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer_details`
--
ALTER TABLE `customer_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hero_section`
--
ALTER TABLE `hero_section`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `shops`
--
ALTER TABLE `shops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
