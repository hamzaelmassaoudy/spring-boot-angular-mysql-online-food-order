-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 08, 2022 at 10:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myusers`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `quantity1` int(11) NOT NULL,
  `quantity2` int(11) NOT NULL,
  `quantity3` int(11) NOT NULL,
  `quantity4` int(11) NOT NULL,
  `quantity5` int(11) NOT NULL,
  `quantity6` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`quantity1`, `quantity2`, `quantity3`, `quantity4`, `quantity5`, `quantity6`) VALUES
(0, 0, 0, 0, 0, 0),
(2, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart0_`
--

CREATE TABLE `cart0_` (
  `id` int(11) NOT NULL,
  `quantity4` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `id` varchar(45) NOT NULL,
  `item` varchar(45) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `url` varchar(120) DEFAULT NULL,
  `formID` varchar(50) NOT NULL,
  `cartID` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`id`, `item`, `price`, `quantity`, `url`, `formID`, `cartID`) VALUES
('abc', 'Coffee', 50, 20, 'https://images.pexels.com/photos/414720/pexels-photo-414720.jpeg', 'modalCart.quantity1', 'quantity1'),
('bcd', 'Cookie', 20, 16, 'https://images-gmi-pmc.edge-generalmills.com/087d17eb-500e-4b26-abd1-4f9ffa96a2c6.jpg', 'modalCart.quantity2', 'quantity2'),
('def', 'Cake', 80, 18, 'https://livforcake.com/wp-content/uploads/2017/07/black-forest-cake-thumb-500x500.jpg', 'modalCart.quantity3', 'quantity3'),
('dos', 'Dosa', 100, 12, 'https://www.madhuseverydayindian.com/wp-content/uploads/2020/07/instant-wheat-flour-dosa-500x500.jpg', '', ''),
('idl', 'Idli', 30, 52, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUH0Y7rPn4A4J9Cv4roiAZn5eaNLbCr-7X7T_KXltM5g&s', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `firstname` varchar(45) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `address` varchar(45) NOT NULL,
  `phone` int(11) NOT NULL,
  `merchant` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `firstname`, `lastname`, `email`, `address`, `phone`, `merchant`) VALUES
('merchant', 'merchant', 'Merchant', 'Merchant', 'merchant@merchant.com', 'Merchant LTD', 1234567890, 1),
('user', 'user', 'Aman', 'Kumar', 'aman@gmail.com', 'Bangalore, India', 9585418, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`quantity1`);

--
-- Indexes for table `cart0_`
--
ALTER TABLE `cart0_`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart0_`
--
ALTER TABLE `cart0_`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
