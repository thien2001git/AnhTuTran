-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Apr 21, 2024 at 02:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diamon_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--

CREATE TABLE `billdetail` (
  `id` bigint(20) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `id_bills` bigint(20) NOT NULL,
  `quanty` int(11) NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `billdetail`
--

INSERT INTO `billdetail` (`id`, `id_product`, `id_bills`, `quanty`, `total`) VALUES
(22, 5, 34, 2, 48980000),
(23, 8, 34, 1, 14000000),
(24, 5, 35, 1, 24490000),
(25, 9, 35, 1, 12490000),
(26, 11, 36, 2, 17580000);

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `id` bigint(20) NOT NULL,
  `user` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `total` double NOT NULL,
  `quanty` int(11) NOT NULL,
  `note` text NOT NULL,
  `uid` bigint(20) NOT NULL,
  `time_create` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bills`
--

INSERT INTO `bills` (`id`, `user`, `phone`, `display_name`, `address`, `total`, `quanty`, `note`, `uid`, `time_create`) VALUES
(34, 'admin@gmail.com', '1234', 'Monkey D. luffy', 'East Blue', 62980000, 3, '', 22, 1711873325),
(35, 'admin@gmail.com', '', 'Monkey D. luffy', 'East Blue', 36980000, 2, '', 22, 1711876677),
(36, 'admin@gmail.com', '123456789', 'Monkey D. luffy', 'East Blue', 17580000, 2, '', 22, 1713015778);

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`id`, `name`, `description`) VALUES
(1, 'ASUS', '788'),
(2, 'LENOVO', NULL),
(3, 'MSI', NULL),
(4, 'HP', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `id_product`, `name`, `code`, `img`) VALUES
(1, 1, '', 'default', 'p3.png'),
(2, 2, '', 'default', 'p3.png'),
(3, 2, '', 'default', 'p3.png'),
(4, 4, '', 'default', 'p3.png'),
(5, 5, '', 'default', 'p3.png'),
(6, 5, '', 'default', 'p3.png'),
(7, 5, '', 'default', 'p3.png'),
(8, 8, '', 'default', 'p3.png'),
(9, 9, '', 'default', 'p3.png'),
(10, 10, '', 'default', 'p3.png'),
(11, 11, '', 'default', 'p3.png'),
(12, 12, '', 'default', 'p3.png'),
(13, 13, '', 'default', 'p3.png'),
(14, 14, '', 'default', 'p3.png'),
(15, 15, '', 'default', 'p3.png'),
(16, 16, '', 'default', 'p3.png'),
(17, 17, '', 'default', 'p3.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `id_category` int(11) NOT NULL,
  `sizes` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `sale` int(3) NOT NULL,
  `title` varchar(255) NOT NULL,
  `highlight` tinyint(1) NOT NULL,
  `new_product` tinyint(1) NOT NULL,
  `details` longtext NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `id_category`, `sizes`, `name`, `price`, `sale`, `title`, `highlight`, `new_product`, `details`, `created_at`, `updated_at`) VALUES
(1, 2, 'L,M,S', 'Laptop Asus Vivobook A415EA-EB556T Chính Hãng', 5090000, 0, 'Laptop Asus Vivobook A415EA-EB556T Chính Hãng', 1, 1, 'Details', '2023-03-24 21:24:48', '2023-03-24 21:24:48'),
(2, 2, 'L,M,S', 'Laptop Asus Vivobook X515MA-BR478W N4020/4GB/256GB SSD/Win11', 4990000, 0, 'Laptop Asus Vivobook X515MA-BR478W N4020/4GB/256GB SSD/Win11', 1, 1, 'This is Jacket', '2023-03-24 21:24:48', '2023-03-24 21:24:48'),
(3, 3, 'L,M,S', 'Asus TUF Gaming F15 FX506HF i5 11400H (HN014W)\n', 16490000, 0, 'Asus TUF Gaming F15 FX506HF i5 11400H (HN014W)\n', 1, 1, 'This is Long Skirt', '2023-03-25 08:33:01', '2023-03-25 08:33:01'),
(4, 1, 'L,M,S', 'Laptop ASUS TUF Gaming F15 FX506HF-HN014W - Chính hãng', 15650000, 0, 'Laptop ASUS TUF Gaming F15 FX506HF-HN014W - Chính hãng', 1, 1, 'This is Red Skirt', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(5, 1, 'L,M,S', 'Laptop Gaming Asus Rog Strix G15 G513RC-HN038W - Chính hãng', 24490000, 0, 'Laptop Gaming Asus Rog Strix G15 G513RC-HN038W - Chính hãng', 1, 1, 'This is product 5', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(6, 1, 'L,M,S', 'Laptop Asus ROG Gaming G513IH-HN015T/R7-4800H/8GB/512GB SSD/15.6\' FHD/Nvidia', 12000000, 0, 'Laptop Asus ROG Gaming G513IH-HN015T/R7-4800H/8GB/512GB SSD/15.6\' FHD/Nvidia', 1, 1, 'This is product 6', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(7, 1, 'L,M,S', 'Name 7Laptop Asus Zenbook 14X Q410VA-90NB1084-M00FZ0 2023 | i5-13500H | 14.5 inch 2.8K', 15590000, 0, 'Name 7Laptop Asus Zenbook 14X Q410VA-90NB1084-M00FZ0 2023 | i5-13500H | 14.5 inch 2.8K', 1, 1, 'This is product 7', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(8, 1, 'L,M,S', 'Laptop Asus ROG Zephyrus M15 GM501 Core i7 8750H RAM 16GB SSD 512GB + 1TB HDD GTX', 14000000, 0, 'Laptop Asus ROG Zephyrus M15 GM501 Core i7 8750H RAM 16GB SSD 512GB + 1TB HDD GTX', 1, 1, 'This is product 8', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(9, 1, 'L,M,S', 'Asus Vivobook Go 15 E1504FA R5 7520U (NJ776W)', 12490000, 0, 'Asus Vivobook Go 15 E1504FA R5 7520U (NJ776W)', 1, 1, 'This is Navy Men Shirts', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(10, 1, 'L,M,S', 'Asus Vivobook X510UA i5-7200U RAM 4GB HDD 1TB - Máy thanh lý', 1700000, 0, 'Asus Vivobook X510UA i5-7200U RAM 4GB HDD 1TB - Máy thanh lý', 1, 1, 'This is Teal men shirt\'s', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(11, 1, 'L,M,S', 'Laptop ASUS Vivobook 14 X1404ZA-NK300W - Chính hãng', 8790000, 0, 'Laptop ASUS Vivobook 14 X1404ZA-NK300W - Chính hãng', 1, 1, 'This is White men shirt\'s', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(12, 1, 'L,M,S', 'Laptop Asus Gaming Rog Strix G15 R7-4800H/8GB/512GB/Win11 G513IH-HN015W', 18390000, 0, 'Laptop Asus Gaming Rog Strix G15 R7-4800H/8GB/512GB/Win11 G513IH-HN015W', 1, 1, 'This is Purple women skirt', '2023-03-25 08:47:36', '2023-03-25 08:47:36'),
(13, 1, 'L,M,S', 'Asus Vivobook 15 OLED A1505ZA i5 12500H (L1337W)', 16490000, 0, 'Asus Vivobook 15 OLED A1505ZA i5 12500H (L1337W)', 1, 2, 'This is jackets product', '2023-04-01 10:05:07', '2023-04-01 10:05:07'),
(14, 2, 'L,M,S', 'Laptop Asus Vivobook M1503QA-L1026W R5 5600H/8GB/512GB/15.6\"FHD/Win 11', 11990000, 0, 'Laptop Asus Vivobook M1503QA-L1026W R5 5600H/8GB/512GB/15.6\"FHD/Win 11', 1, 2, 'This is jackets 2 product', '2023-04-01 10:05:07', '2023-04-01 10:05:07'),
(15, 3, 'L,M,S', 'Xgear - Laptop Gaming Asus ROG Strix G15 G513RC HN038W -Gói nâng cấp 16GB RAM DDR5', 720780000, 0, 'Xgear - Laptop Gaming Asus ROG Strix G15 G513RC HN038W -Gói nâng cấp 16GB RAM DDR5', 1, 2, 'This is jackets 3 product', '2023-04-01 10:05:07', '2023-04-01 10:05:07'),
(16, 1, 'L,M,S', 'Laptop Asus TUF Gaming FX506HF-HN017W i5 11400H/16GB/512GB/GeForce RTX 2050 4GB/Win11', 18490000, 0, 'Laptop Asus TUF Gaming FX506HF-HN017W i5 11400H/16GB/512GB/GeForce RTX 2050 4GB/Win11', 1, 2, 'This is jackets 4 product', '2023-04-01 10:05:07', '2023-04-01 10:05:07'),
(17, 2, 'L,M,S', 'Laptop Asus X1504VA-NJ069W (i3 1315U/8GB RAM/512GB SSD/15.6 FHD/Win11/Bạc)', 717490000, 0, 'Laptop Asus X1504VA-NJ069W (i3 1315U/8GB RAM/512GB SSD/15.6 FHD/Win11/Bạc)', 1, 2, 'This is jackets 5 product', '2023-04-01 10:05:07', '2023-04-01 10:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `display_name` varchar(255) NOT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user`, `password`, `display_name`, `address`, `role`) VALUES
(15, 'test@gmail.com', '$2a$12$euhjuHzrIx9.2mFtM4QZMupe6zCgTn2TzET06dHD5sUXltMDXMTiW', 'test', '123', 1),
(16, 'hoaitu@gmail.com', '$2a$12$JHqf9p/W835aLShraO9jZ.m1CWHEg0fWPkEMn/t23.HFjGiNT2jAy', 'Nguyá»n HoÃ i TÃº', 'Do Xuan Hop, Thu Duc City', 1),
(17, 'hello@gmail.com', '$2a$12$rRWBNfonTLtsDeFtu6O35.96Efm90dO5BGo6u7kQyHszKktWalQ6y', 'hello', 'Do Xuan Hop, Thu Duc City', 1),
(18, 'hello1@gmail.com', '$2a$12$JRokoQWhZkSQwmHBhfxDkexZa5ymsKD9GciCqLKUYQ7H0uFTtP.bC', 'hello 1', 'thu duc', 1),
(22, 'admin@gmail.com', '$2a$12$w3ixmKRVaRA/ExaFxOM/relqdYgiqGlkzOu0gECL/awIPop9NEd1i', 'Monkey D. luffy', 'East Blue', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_bills` (`id_bills`);

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `billdetail`
--
ALTER TABLE `billdetail`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bills`
--
ALTER TABLE `bills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `billdetail`
--
ALTER TABLE `billdetail`
  ADD CONSTRAINT `billdetail_ibfk_1` FOREIGN KEY (`id_bills`) REFERENCES `bills` (`id`),
  ADD CONSTRAINT `billdetail_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Constraints for table `colors`
--
ALTER TABLE `colors`
  ADD CONSTRAINT `colors_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categorys` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
