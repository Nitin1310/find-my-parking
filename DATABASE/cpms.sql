-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2019 at 02:53 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cpms`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
`id` int(11) NOT NULL,
  `msgdate` text NOT NULL,
  `name` text NOT NULL,
  `phone` text NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `msgdate`, `name`, `phone`, `msg`) VALUES
(1, '03.06.16 05:02', 'Vincent Nyabuto', '0708222536', 'Hello');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `username` text NOT NULL,
  `email` text NOT NULL,
  `phone` text NOT NULL,
  `name` text NOT NULL,
  `avator` blob NOT NULL,
  `password` text NOT NULL,
  `id_no` text NOT NULL,
  `plate_no` text NOT NULL,
`id` int(11) NOT NULL,
  `pl_booked` text NOT NULL,
  `access` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `email`, `phone`, `name`, `avator`, `password`, `id_no`, `plate_no`, `id`, `pl_booked`, `access`) VALUES
('Vincent', '', '0708222536', 'Vincent Nyabutos', '', '123123', '29222343', 'KAC 456B', 1, 'YES', 0),
('Ednah', '', '0712312312', 'Ednah Obese', '', '123123', '20203434', 'KAB 555A', 2, 'YES', 2),
('Daniel', '', '0708222500', 'Daniel Mose', '', '123666', '', '', 3, '', 2),
('Felstley', '', '0708222537', 'Felstley Okumu', '', '123123', '', '', 5, '', 1),
('harry', 'harryden@ourmail.com', 'harry', 'harry den', '', 'den', '', '4545', 6, 'NO', 2);

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE IF NOT EXISTS `zones` (
  `street` text NOT NULL,
  `plot` text NOT NULL,
  `status` text NOT NULL,
  `model` text NOT NULL,
  `vehicle` text NOT NULL,
  `platenumber` text NOT NULL,
  `email` text NOT NULL,
  `account` text NOT NULL,
  `d1` text NOT NULL,
  `d2` text NOT NULL,
  `charge` text NOT NULL,
`id` int(5) NOT NULL,
  `phone` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`street`, `plot`, `status`, `model`, `vehicle`, `platenumber`, `email`, `account`, `d1`, `d2`, `charge`, `id`, `phone`) VALUES
('CITY HALL', 'PL 001', 'RESERVED', 'BMW', 'volvo', 'KAB 123B', 'vinny@yahoo.com', 'TGF12322', '02.11.2014 11:05AM', '02.11.2014 12:05AM', '60', 1, ''),
('KIJABE STREET', 'PL 001', 'RESERVED', 'BMW', 'volvo', 'KAB 123B', '', 'GHZ', '02.11.2014 11:05AM', '02.11.2014 12:05AM', '120', 2, ''),
('CITY HALL', 'PL 004', 'UNBOOKED', 'Audi ', 'volvo', '4545', '', '123456', '02.11.2014 11:05AM', '02.11.2014 12:05AM', '120', 3, 'harry');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
 ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
