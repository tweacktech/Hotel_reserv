-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 08, 2021 at 03:49 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dav`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `username` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `username`, `password`) VALUES
(1, 'Administrator', 'Admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `checkIn` date NOT NULL,
  `Duration` int(11) NOT NULL,
  `amounts` varchar(20) NOT NULL,
  `dates` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `fullname`, `email`, `contactno`, `checkIn`, `Duration`, `amounts`, `dates`) VALUES
(1, 'dari daniel', 'meyorpop@gmail.com', '77838388', '2021-08-27', 30, '60000', '2021-08-21 16:07:05'),
(2, 'dari daniel', 'meyorpop@gmail.com', '77838388', '2021-08-31', 5, '14000', '2021-08-22 11:24:29'),
(3, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:46:50'),
(4, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:48:40'),
(5, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:49:09'),
(6, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:49:57'),
(7, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:51:44'),
(8, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:52:01'),
(9, 'dari daniel', 'meyorpop@gmail.com', '09003', '2021-08-24', 30, '60000', '2021-08-22 11:52:11'),
(10, 'meyorpop meys', 'meyorpop', '77838388', '2021-08-29', 5, '10000', '2021-08-23 13:10:43'),
(11, 'menn', 'pop@pop', 'sjsjjsjdhhd', '2021-08-30', 3, '6000', '2021-08-23 13:14:06'),
(12, 'menn', 'pop@pop', 'sjsjjsjdhhd', '2021-08-30', 3, '6000', '2021-08-23 13:14:31'),
(13, 'msmsm', 'djjjdjdj@pop', '48884', '2021-08-30', 7, '16800', '2021-08-23 13:15:10'),
(14, 'dddnn', 'dhdhh@pop', 'dhhdhdh', '2021-08-27', 5, '10000', '2021-08-23 13:16:47'),
(15, 'mdmddjj', 'euueejj@pkk', '4747848', '2021-08-22', 3, '12000', '2021-08-23 13:19:46'),
(16, 'MEHDDHDH', 'EUUDJDJ@POPP', '77447', '2021-08-25', 3, '0', '2021-08-23 13:20:10'),
(17, 'MEHDDHDH', 'EUUDJDJ@POPP', '77447', '2021-08-25', 3, '0', '2021-08-23 13:20:31'),
(18, 'dhhddhdhdh', 'markpop@gmail.com', '77838388', '2021-09-08', 5, '12000', '2021-08-23 13:46:40'),
(19, 'dhhddhdhdh', 'markpop@gmail.com', '77838388', '2021-09-08', 5, '12000', '2021-08-23 13:46:44'),
(20, 'mark me ', 'mehdhh', '1229993', '2021-08-27', 30, '120000', '2021-08-23 16:20:51'),
(21, 'make me djd', 'meyoorpop@gmail.com', '355353', '2021-09-09', 30, '120000', '2021-08-23 16:28:10'),
(22, 'make me djd', 'meyoorpop@gmail.com', '355353', '2021-09-09', 30, '120000', '2021-08-23 16:28:15'),
(23, 'ddsdddd', 'mmhhhg@pop', '77838388', '2021-09-07', 30, '60000', '2021-08-26 10:41:05'),
(24, 'mmmmm', 'mrt@gmail.com', '565566', '2021-09-14', 1, '2000', '2021-09-06 11:47:47'),
(25, 'mmdhhhdhh', 'popl@gmail.com', '849926662', '2021-08-25', 5, '10000', '2021-09-14 13:23:20'),
(26, 'mmddhhhhsshsh', 'pool@gmail.com', '488484884', '2021-09-15', 5, '0', '2021-09-14 13:24:23'),
(27, 'mmddhhhhsshsh', 'pool@gmail.com', '488484884', '2021-09-15', 5, '0', '2021-09-14 13:24:24');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `room_type` varchar(50) NOT NULL,
  `price` varchar(11) NOT NULL,
  `photo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `room_type`, `price`, `photo`) VALUES
(1, 'Standard', '2000', '1.jpg'),
(2, 'Superior', '2400', '3.jpg'),
(3, 'Super Deluxe', '2800', '4.jpg'),
(4, 'Jr. Suite', '3800', '5.jpg'),
(5, 'Executive Suite', '4000', '6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `guest_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `room_no` int(5) NOT NULL,
  `extra_bed` int(11) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `days` int(2) NOT NULL,
  `checkin` date DEFAULT NULL,
  `checkin_time` time DEFAULT NULL,
  `checkout` date DEFAULT NULL,
  `checkout_time` time DEFAULT NULL,
  `bill` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `guest_id`, `room_id`, `room_no`, `extra_bed`, `status`, `days`, `checkin`, `checkin_time`, `checkout`, `checkout_time`, `bill`) VALUES
(1, 1, 1, 1, 1, 'Check Out', 30, '2021-08-27', '02:07:31', '2021-09-26', '02:08:53', '60800'),
(2, 1, 3, 1, NULL, 'Pending', 5, '2021-08-31', NULL, NULL, NULL, NULL),
(3, 3, 1, 1, NULL, 'Pending', 30, '2021-08-24', NULL, NULL, NULL, NULL),
(4, 10, 1, 1, NULL, 'Pending', 5, '2021-08-29', NULL, NULL, NULL, NULL),
(5, 11, 1, 1, NULL, 'Pending', 3, '2021-08-30', NULL, NULL, NULL, NULL),
(6, 13, 2, 1, NULL, 'Pending', 7, '2021-08-30', NULL, NULL, NULL, NULL),
(7, 14, 1, 1, NULL, 'Pending', 5, '2021-08-27', NULL, NULL, NULL, NULL),
(8, 16, 5, 1, NULL, 'Pending', 3, '2021-08-25', NULL, NULL, NULL, NULL),
(9, 18, 2, 1, NULL, 'Pending', 5, '2021-09-08', NULL, NULL, NULL, NULL),
(10, 20, 5, 5, 1, 'Check In', 30, '2021-08-27', '02:22:45', '2021-09-26', NULL, '120800'),
(11, 21, 5, 1, NULL, 'Pending', 30, '2021-09-09', NULL, NULL, NULL, NULL),
(12, 23, 1, 1, NULL, 'Pending', 30, '2021-09-07', NULL, NULL, NULL, NULL),
(13, 24, 1, 1, NULL, 'Pending', 1, '2021-09-14', NULL, NULL, NULL, NULL),
(14, 26, 1, 1, NULL, 'Pending', 5, '2021-09-15', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
