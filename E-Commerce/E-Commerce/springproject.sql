-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2024 at 01:27 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `springproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categoryid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `name`) VALUES
(6, 'Beverages'),
(8, 'Fast Food'),
(11, 'Fruit'),
(12, 'Electronics');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `password`, `username`) VALUES
(1, '123', '1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` text NOT NULL,
  `categoryid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `weight` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `categoryid`, `quantity`, `price`, `weight`, `description`) VALUES
(14, 'Cheese Pizza', 'https://imgs.search.brave.com/SWg9LUV7aAE4BXtjuU-XKsbYxC1FBFhmqF3i9Uld8Gc/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NjY4NDM5NzE5Mzkt/MWZlOWUyNzdhMGMw/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRWOGZH/Tm9aV1Z6WlNVeU1I/QnBlbnBoZkdWdWZE/QjhmREI4Zkh3dw.jpeg', 8, 1, 199, 27, 'A delectable combination of savory toppings and crispy crust, offering a taste sensation that\'s both timeless and irresistible.'),
(15, 'Burger', 'https://imgs.search.brave.com/EiMgbYVXVwNo3bj2hoBkQwn0BTPHngFOZOT_LzkNTMQ/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMudW5zcGxhc2gu/Y29tL3Bob3RvLTE1/NzI4MDI0MTkyMjQt/Mjk2YjBhZWVlMGQ5/P3E9ODAmdz0xMDAw/JmF1dG89Zm9ybWF0/JmZpdD1jcm9wJml4/bGliPXJiLTQuMC4z/Jml4aWQ9TTN3eE1q/QTNmREI4TUh4elpX/RnlZMmg4TVRsOGZH/SjFjbWRsY254bGJu/d3dmSHd3Zkh4OE1B/PT0.jpeg', 8, 1, 99, 27, 'A delicious handheld meal featuring a juicy patty, fresh vegetables, and savory sauces nestled between two soft buns.'),
(17, 'Iphone 15 Pro', 'https://imgs.search.brave.com/60mhloVfNPAmj9IHiNOjl7TTszlcX1Gjnte2D5vOMy8/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9waG90/b3M1LmFwcGxlaW5z/aWRlci5jb20vZ2Fs/bGVyeS81NjAxMS0x/MTM3MTEtMDAwLWxl/YWQtdGl0YW5pdW0t/eGwuanBn', 12, 1, 134900, 187, 'A sleek and durable flagship smartphone crafted with premium materials for a luxurious experience.'),
(18, 'Kairi Panha', 'https://imgs.search.brave.com/8knOrLxikzQ43j9iR5ew4K6nCwLleiPgLe4g5XtA1Lw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tYWRo/dXJhc3JlY2lwZS5j/b20vd3AtY29udGVu/dC91cGxvYWRzLzIw/MjAvMTAvS2Fpcmkt/UGFuaGUtTWFyYXRo/aS1SZWNpcGUtcG9z/dC5qcGc', 6, 1, 30, 100, 'A Refreshing Summer Delight'),
(19, 'Noise Fit Smart Watch', 'https://imgs.search.brave.com/i9jBMKjN-q-uuzHyzE0k8NZ8Zj8KWJQUG-TkhvP-Iuw/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/NjFZVXhPb1hXQUwu/anBn', 12, 1, 5000, 200, 'Your stylish companion for fitness tracking, notifications and more,all on your wrist'),
(20, 'Mangoes', 'https://imgs.search.brave.com/asNhZnWCeksQd6beMUmXoxVxzq5eVVEz7l1DZA9eS_w/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTY4/Mjc4ODg4L3Bob3Rv/L2ZyZXNoLXNsaWNl/cy1vZi1tYW5nby1v/bi1hLWJlZC1vZi1s/ZWF2ZXMuanBnP3M9/NjEyeDYxMiZ3PTAm/az0yMCZjPVdtdGlm/NldiaFVoTlpBRGI4/QXlfQ25BMjZNY3JM/LUEzdFM4VjlNNjVD/NXc9', 11, 12, 700, 0, 'Juicy, tropical delights bursting with sweet flavor and vibrant color');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role` varchar(250) NOT NULL DEFAULT 'ROLE_USERS',
  `enabled` tinyint(4) DEFAULT NULL,
  `email` varchar(110) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `enabled`, `email`) VALUES
(1, 'ATHARVA', '123', 'ROLE_USER', 1, 'atharva@gmail.com'),
(2, 'admin', '123', 'ROLE_ADMIN', 1, 'atharva.kulkarni223@vit.edu'),
(3, 'Atharva', '1234', 'ROLE_USERS', 1, 'atharva9412@gmail.com'),
(4, 'Atharva Kulkarni', '123', 'ROLE_USERS', 1, 'atharva1and1@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categoryid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_ibfk_1` (`categoryid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categoryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryid`) REFERENCES `categories` (`categoryid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
