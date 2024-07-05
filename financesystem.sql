-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 05, 2024 at 07:13 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `financesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `budget`
--

CREATE TABLE IF NOT EXISTS `budget` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `amount` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `budget`
--

INSERT INTO `budget` (`id`, `name`, `category`, `amount`) VALUES
(1, 'PAWAN WAGH', 'Groceries  ', 2000),
(3, 'KALYANI KAPGATE', 'Groceries  ', 8000),
(4, 'KHUSHAL KAMBLE', 'Utilities ', 9000),
(9, 'PAWAN WAGH', 'Utilities ', 3000),
(10, 'KHUSHAL KAMBLE', 'Utilities ', 3000),
(11, 'MARYAM FIRDOUS', 'Entertainment', 8000),
(13, 'KALYANI KAPGATE', 'Groceries  ', 3000),
(14, 'PAWAN WAGH', 'Groceries  ', 3000),
(15, 'ELON MUSK', 'Groceries  ', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `name`, `amount`, `category`, `description`) VALUES
(9, 'KALYANI KAPGATE', 2000.00, 'Utilities', 'money'),
(12, 'PAWAN WAGH', 2300.00, 'Utilities', 'Buying Trees'),
(13, 'KALYANI KAPGATE', 399.00, 'Utilities', 'kharcha'),
(14, 'KHUSHAL KAMBLE', 4000.00, 'Utilities', 'bought new cloths'),
(15, 'PAWAN WAGH ', 3000.00, 'Rent  ', 'rent'),
(16, 'ELON MUSK', 30000.00, 'Entertainment', 'twitter'),
(17, 'ELON MUSK', 3000.00, 'Rent  ', 'tesla'),
(18, 'KALYANI KAPGATE ', 3000.00, 'Entertainment', 'movie');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`) VALUES
(1, 'KHUSHAL KAMBLE', '1324', 'PASS'),
(2, 'KHUSHAL KAMBLE', 'Pass@123', 'khushalkamble@gmail.com'),
(3, 'PAWAN WAGH', 'Pass@1234', 'pawanwagh34@gmail.com'),
(4, 'KALYANI KAPGATE', 'Pass@0803', 'kalyanikapgate08@gmail.com'),
(5, 'SHREYASH NANDURKAR', '0803', 'nandu@gmail.com'),
(6, 'NAYAN KALE', '0803', 'nayankale@gmail.com'),
(7, 'KALIYA ', 'dholu bholu', 'khushal'),
(8, 'CHOTABHEEM', 'chutki', 'bheem@gmail.com'),
(10, 'KHUSHAL KAMBLE', 'Pass@12345', 'khushal@gmail.com'),
(11, 'MARYAM FIRDOUS', 'Pass@123', 'firdous@gmail.com'),
(12, 'ELON MUSK', '369', 'elonMusk@gmail.com');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `budget_ibfk_1` FOREIGN KEY (`name`) REFERENCES `users` (`name`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`name`) REFERENCES `users` (`name`);
