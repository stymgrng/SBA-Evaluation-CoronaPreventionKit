-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 01:35 PM
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
-- Database: `coronakit`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdb`
--

CREATE TABLE `customerdb` (
  `OrderId` int(11) NOT NULL,
  `custName` varchar(250) NOT NULL,
  `custEmail` varchar(250) NOT NULL,
  `custPhone` varchar(12) DEFAULT NULL,
  `address` varchar(300) NOT NULL,
  `orderDate` date NOT NULL DEFAULT current_timestamp(),
  `totalAmount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customerdb`
--

INSERT INTO `customerdb` (`OrderId`, `custName`, `custEmail`, `custPhone`, `address`, `orderDate`, `totalAmount`) VALUES
(1, 'Jack', 'jack@email.com', '9832011111', 'bangalore', '2020-08-22', 50),
(2, 'Daniel', 'daniel@email.com', '9832022222', 'hyderabad', '2020-08-22', 60),
(3, 'Jim', 'jim@mail.com', '9832033333', 'mumbai', '2020-08-22', 70),
(4, 'Beam', 'beam@mail.com', '9832044444', 'chennai', '2020-08-23', 80),
(5, 'Johnny', 'johnny@email.com', '9832055555', 'Delhi', '2020-08-23', 90),
(6, 'Walker', 'walker@gmail.com', '9832066666', 'kolkata', '2020-08-23', 100),
(7, 'Jameson', 'jameson@fg.com', '9832077777', 'goa', '2020-08-23', 110),
(21, 'jameson', 'jameson@gmail.com', '9832077777', 'bangalore', '2020-08-24', 650),
(22, 'james', 'james@gmail.com', '9832099999', 'goa', '2020-08-24', 70),
(23, 'jameson', 'jameson@gmail.com', '1234567890', 'asdf', '2020-08-24', 50),
(24, 'asdf', 'asdf@gmail.com', '0987654321', 'asdf', '2020-08-24', 520),
(25, 'lkjh', 'k.jhlk@gmail.com', '0987654123', 'jhgdjhg', '2020-08-24', 150),
(26, 'jim', 'jim@yahoo.com', '0987612345', 'goa', '2020-08-24', 150),
(27, 'jim', 'jim@yahoo.com', '0987612345', 'goa', '2020-08-24', 150),
(28, 'jim', 'jim@gmail.com', '1234567890', 'goa', '2020-08-24', 500),
(29, 'jim', 'jim@gmail.com', '1234567890', 'goa', '2020-08-24', 500),
(30, 'asdf', 'asdfasd@asdgf.com', '1234567890', 'sdfgh', '2020-08-24', 50),
(31, 'asdf', 'asdf@asdf.com', '9832012345', 'qwerty', '2020-08-24', 500);

-- --------------------------------------------------------

--
-- Table structure for table `productmaster`
--

CREATE TABLE `productmaster` (
  `id` int(11) NOT NULL,
  `productName` varchar(250) NOT NULL,
  `cost` varchar(250) NOT NULL,
  `productDescription` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productmaster`
--

INSERT INTO `productmaster` (`id`, `productName`, `cost`, `productDescription`) VALUES
(1, 'Mask', '40', 'Surgical face Mask'),
(2, 'Hand Sanitizer', '100', 'Hand Sanitizer Bottle'),
(3, 'PPE Kit', '500', 'PPE Full Body Protection Kit'),
(4, 'Face Shield', '100', 'Full Face Shield'),
(5, 'Gloves', '20', 'Hand Gloves Pair');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customerdb`
--
ALTER TABLE `customerdb`
  ADD PRIMARY KEY (`OrderId`);

--
-- Indexes for table `productmaster`
--
ALTER TABLE `productmaster`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customerdb`
--
ALTER TABLE `customerdb`
  MODIFY `OrderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `productmaster`
--
ALTER TABLE `productmaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
