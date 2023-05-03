-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 09:15 AM
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
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'fruits'),
(2, 'appliances'),
(3, 'bread');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `historyid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `historylog` varchar(5555) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`historyid`, `productid`, `stock`, `historylog`) VALUES
(1, 1, 169, '5/2/2023 5:25:41 PM| Added 69 stock for productname'),
(2, 1, 1691, '5/2/2023 5:25:53 PM| Added 1 stock for productname'),
(3, 5, 101, '5/2/2023 6:09:04 PM| Added 1 stock for AS'),
(4, 5, 102, '5/2/2023 6:18:02 PM| Added 1 stock for AS'),
(5, 5, 103, '5/2/2023 6:18:21 PM| Added 1 stock for AS'),
(6, 5, 104, '5/2/2023 6:19:11 PM| Added 1 stock for AS'),
(7, 6, 101, '5/3/2023 11:25:17 AM| Added 1 stock for AS'),
(8, 6, 103, '5/3/2023 11:25:29 AM| Added 2 stock for AS');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `prodid` int(11) NOT NULL,
  `category` varchar(222) NOT NULL,
  `prodname` varchar(222) NOT NULL,
  `units` varchar(222) NOT NULL,
  `stock` int(11) NOT NULL,
  `price` varchar(222) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`prodid`, `category`, `prodname`, `units`, `stock`, `price`, `status`) VALUES
(1, 'catname', 'productname', '25ml', 1691, '45', '0'),
(5, '1', 'AS', 'AS', 104, 'ASD', 'Unavailable'),
(6, '1', 'AS', 'sd', 103, 'd', 'Available'),
(7, '2', 'ta', 'teee', 100, 'te', 'Available'),
(8, '3', 'shanaol', '1', 2, '3', 'Available'),
(9, '1', 'asd', 'asd', 100, 'asd', 'Available');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`historyid`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`prodid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `historyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `prodid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
