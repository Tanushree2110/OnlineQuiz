-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 25, 2021 at 03:24 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'tanushree2102@gmail.com', 'Tanushree@21');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('5b13ed3a6e006', '5b13ed3a9436a'),
('5b13ed72489d8', '5b13ed7263d70'),
('605c932b69624', '605c932b73fab'),
('605c932bee6b6', '605c932c1db9d'),
('605c932c86c30', '605c932c93857'),
('605c932d14375', '605c932d267f7'),
('605c932d658af', '605c932da4178'),
('605c9718c4a9e', '605c9718df23c'),
('605c97191913d', '605c971949b2b');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('tanushree2102@gmail.com', '605c90fb4e4a5', 15, 5, 5, 0, '2021-03-25 13:50:57'),
('yuvrajanand1801@gmail.com', '605c90fb4e4a5', 15, 5, 5, 0, '2021-03-25 13:54:27'),
('tanushree2102@gmail.com', '605c96b3e503e', 4, 2, 2, 0, '2021-03-25 13:59:16');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('5b13ed3a6e006', 'sdb', '5b13ed3a9436a'),
('5b13ed3a6e006', 'jsdb', '5b13ed3a94374'),
('5b13ed3a6e006', 'dsbv', '5b13ed3a94377'),
('5b13ed3a6e006', 'jbdv', '5b13ed3a94379'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d70'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7a'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d7d'),
('5b13ed72489d8', 'vsdv', '5b13ed7263d80'),
('605c932b69624', 'Sacred Games', '605c932b73f92'),
('605c932b69624', ' Lust Stories', '605c932b73fa5'),
('605c932b69624', ' Ozark', '605c932b73fa8'),
('605c932b69624', ' Game of Thrones', '605c932b73fab'),
('605c932bee6b6', '1500', '605c932c1db87'),
('605c932bee6b6', '1600', '605c932c1db9d'),
('605c932bee6b6', '1700', '605c932c1dba2'),
('605c932bee6b6', '1800', '605c932c1dba5'),
('605c932c86c30', 'Sweden', '605c932c93851'),
('605c932c86c30', 'Copenhagen', '605c932c93857'),
('605c932c86c30', 'Norway', '605c932c93859'),
('605c932c86c30', 'Glassgow', '605c932c9385a'),
('605c932d14375', 'He transfigures into a shark ', '605c932d267ee'),
('605c932d14375', 'He kisses a mermaid', '605c932d267f5'),
('605c932d14375', ' He eats gillyweed', '605c932d267f7'),
('605c932d14375', 'He performs a bubble-head charm ', '605c932d267f8'),
('605c932d658af', 'Mischief Managed ', '605c932da4178'),
('605c932d658af', 'Nothing to See Here ', '605c932da4181'),
('605c932d658af', 'All Done ', '605c932da4184'),
('605c932d658af', 'Hello Professor', '605c932da4187'),
('605c9718c4a9e', 'Yuvi', '605c9718df236'),
('605c9718c4a9e', 'Yuvraj Anand', '605c9718df23c'),
('605c9718c4a9e', 'Chhoti', '605c9718df23d'),
('605c9718c4a9e', 'Yuvraj', '605c9718df23e'),
('605c97191913d', '16', '605c971949b24'),
('605c97191913d', '17', '605c971949b2b'),
('605c97191913d', '18', '605c971949b2c'),
('605c97191913d', '19', '605c971949b2d');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('5b13ed30cd71f', '5b13ed3a6e006', 'dbjb', 4, 1),
('5b13ed6bb8bcd', '5b13ed72489d8', 'dvsd', 4, 1),
('605c90fb4e4a5', '605c932bee6b6', 'There are 5 multiple-choice questions in the test.If the first three questions have 4 choices each and the next two have 5 choices each, the number of answers possible is', 4, 2),
('605c90fb4e4a5', '605c932c86c30', 'What is the capital of Denmark?', 4, 3),
('605c90fb4e4a5', '605c932d14375', 'How does Harry breathe underwater during the second task of the Triwizard Tournament?', 4, 4),
('605c90fb4e4a5', '605c932d658af', 'What does one say to close the Marauder’s Map and make it blank again?', 4, 5),
('605c96b3e503e', '605c9718c4a9e', 'What is your name?', 4, 1),
('605c96b3e503e', '605c97191913d', 'What is your age?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `date`) VALUES
('605c90fb4e4a5', 'Test Your Knowledge', 3, 1, 5, '2021-03-25 13:32:43'),
('605c96b3e503e', 'Quiz', 2, 1, 2, '2021-03-25 13:57:07');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('tanushree2102@gmail.com', 19, '2021-03-25 13:59:16'),
('yuvrajanand1801@gmail.com', 15, '2021-03-25 13:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `college`, `email`, `password`) VALUES
('Tanushree ', 'IIT Patna', 'tanushree2102@gmail.com', 'Tanushree@21'),
('Yuvraj Anand', 'NIL', 'yuvrajanand1801@gmail.com', 'YUVI18y@');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
