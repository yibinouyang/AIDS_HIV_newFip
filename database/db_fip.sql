-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Apr 12, 2020 at 11:21 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_fip`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(200) NOT NULL DEFAULT '',
  `last_name` varchar(250) DEFAULT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL,
  `user_country` varchar(200) DEFAULT '',
  `user_ip` varchar(100) NOT NULL DEFAULT 'no',
  `hash` varchar(50) DEFAULT '',
  `start_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `verified` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `first_name`, `last_name`, `user_name`, `user_email`, `user_password`, `user_country`, `user_ip`, `hash`, `start_date`, `last_updated`, `verified`) VALUES
(1, 'test', 'qqq', NULL, 'user@qq.com', '123456', '加拿大', 'no', 'dd45045f8c68db9f54e70c67048d32e8', '2020-04-12 19:25:51', '2020-04-12 19:25:51', 0),
(4, 'aaa', NULL, '22', 'cyrene27117@outlook.com', '123456', '', 'no', '', '2020-04-12 19:38:53', '2020-04-12 19:38:53', 0),
(3, 'qqq', 'qqq', NULL, 'qqq@qq.com', '123456', '加拿大', 'no', '8f121ce07d74717e0b1f21d122e04521', '2020-04-12 19:33:46', '2020-04-12 23:17:38', 0),
(5, 'yang', 'yi', NULL, 'user1234@qq.com', 'p2717', 'china', 'no', '42e7aaa88b48137a16a1acd04ed91125', '2020-04-12 19:45:18', '2020-04-12 19:45:18', 0),
(6, 'mengyang', 'ouyyy', NULL, '3333@qq.com', '22222', 'china', 'no', '6e2713a6efee97bacb63e52c54f0ada0', '2020-04-12 19:46:16', '2020-04-12 19:46:16', 0),
(7, 'saaas', NULL, 'ssss', 'ssss@qq.com', '123456', '', 'no', '', '2020-04-12 19:48:45', '2020-04-12 19:48:45', 0),
(8, 'ou', NULL, 'ouyy', 'test123@qq.com', 'test123', '', 'no', '', '2020-04-12 21:48:48', '2020-04-12 21:48:48', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
