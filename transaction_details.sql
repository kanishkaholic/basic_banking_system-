-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 04:40 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `transaction_details`
--

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `sno` int(15) NOT NULL,
  `sender` varchar(20) NOT NULL,
  `receiver` varchar(20) NOT NULL,
  `balance` float NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'kanishka kannoujia ', 'shagun', 1000, '0000-00-00 00:00:00'),
(2, 'Reeta Kannoujia ', 'kanishka kannoujia ', 1000, '2021-06-14 17:47:32'),
(3, 'Somiya', 'shagun', 1000, '2021-06-14 17:49:26'),
(4, 'Mansi Ahlawat', 'kanishka kannoujia ', 1000, '2021-06-15 02:40:05'),
(5, 'shagun', 'Reeta Kannoujia ', 5, '2021-06-15 02:41:43'),
(6, 'kanishka kannoujia ', 'shagun', 100000, '2021-06-15 09:39:28'),
(7, 'Somiya', 'shagun', 50, '2021-06-15 09:41:02'),
(8, 'kanishka kannoujia ', 'shagun', 1000, '2021-06-15 09:41:27'),
(9, 'kanishka kannoujia ', 'Mansi Ahlawat', 10000, '2021-06-15 10:00:10'),
(10, 'Anokhi Sharma', 'Mansi Ahlawat', 1000, '2021-06-16 03:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `sno` int(15) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `mobile` text NOT NULL,
  `balance` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`sno`, `name`, `email`, `mobile`, `balance`) VALUES
(1, 'kanishka kannoujia ', 'kansha@gmail.com', '8569856985', 189000),
(2, 'shagun', 'shagun@gmail.com', '8569856985', 1101050),
(3, 'Reeta Kannoujia ', 'reeta@gmail.com', '8745230169', 500000),
(4, 'Somiya', 'somiya@gmail.com', '9856555665', 4950),
(5, 'Mansi Ahlawat', 'mansi@gmail.com', '5898745689', 21000),
(6, 'harshit ', 'harshit@gmail.com', '5488791232', 100000),
(7, 'Priyam ', 'priyam@gmail.com', '7894561230', 200000),
(8, 'Neha ', 'neha@gmail.com', '9876543210', 20000),
(9, 'Mukesh ', 'mukesh@gmail.com', '9856471230', 8000000),
(10, 'Dora ', 'dora@gmail.com', '8974563210', 10000000),
(11, 'Ashu Sharma', 'ashu@gmail.com', '8459632547', 1000),
(12, 'Anokhi Sharma', 'anokhi@gmail.com', '9856632564', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `sno` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
