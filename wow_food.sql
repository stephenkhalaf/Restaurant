-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2025 at 09:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wow_food`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `unique_id`, `full_name`, `email`, `password`) VALUES
(16, 1715514510, 'stephen khalaf', 'stephenkhalaf@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
(19, 1715517595, 'judith', 'judith@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `unique_id`, `title`, `image_name`, `featured`, `active`) VALUES
(6, 1715523084, 'my eye', '1715525280eye.jpg', 'No', 'No'),
(9, 1715607072, 'jean', '1715607072jeans-pants-blue-shop-52518.jpeg', 'Yes', 'Yes'),
(10, 1715607093, 'melon', '1715607093pexels-photo-2894205.jpeg', 'Yes', 'Yes'),
(11, 1715607113, 'pizza', '1715607113pexels-photo-1640772.jpeg', 'Yes', 'Yes'),
(12, 1715607596, 'orange', '1715607596pexels-photo-1435735.jpeg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `unique_id`, `title`, `price`, `description`, `image_name`, `category_id`, `featured`, `active`) VALUES
(2, 1715527970, 'District Metrics Coordinator', 529, 'Rerum nihil maxime earum.', '1715527970GEVoo-SXsAAbfWJ.jfif', 1715527183, 'No', 'Yes'),
(4, 1715608800, 'rice', 1200, 'this is a sweet delicacy rice make from italy', '1715608800pexels-photo-1624487.jpeg', 1715607113, 'Yes', 'Yes'),
(5, 1715608957, 'pepper', 200, 'sweet pepper from america', '1715608957pexels-photo-1435904.jpeg', 1715607596, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `food` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `qty` int(10) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(100) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `food`, `price`, `qty`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(11, 'District Metrics Coordinator', 529, 334, '2024-05-13 20:44:47', 'Cancelled', '81513 Demetrius Pines', '584-116-07506', 'your.email+fakedata44088@gmail.com', '81513 Demetrius Pines'),
(12, 'District Metrics Coordinator', 529, 334, '2024-05-13 20:55:20', 'Cancelled', '81513 Demetrius Pines', '584-116-07506', 'your.email+fakedata44088@gmail.com', '81513 Demetrius Pines'),
(13, 'District Metrics Coordinator', 529, 334, '2024-05-13 20:55:48', 'Delivered', '81513 Demetrius Pines', '584-116-07506', 'your.email+fakedata44088@gmail.com', '81513 Demetrius Pines'),
(14, 'District Metrics Coordinator', 529, 334, '2024-05-13 20:57:06', 'Cancelled', '81513 Demetrius Pines', '584-116-07506', 'your.email+fakedata44088@gmail.com', '81513 Demetrius Pines'),
(15, 'District Metrics Coordinator', 529, 334, '2024-05-13 20:57:47', 'Delivered', '81513 Demetrius Pines', '584-116-07506', 'your.email+fakedata44088@gmail.com', '81513 Demetrius Pines');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
