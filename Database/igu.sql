-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2023 at 02:34 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `igu`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE `bookissue` (
  `MemId` int(4) NOT NULL,
  `Card_Id` int(5) NOT NULL,
  `BookId` int(4) NOT NULL,
  `Book_Name` varchar(20) NOT NULL,
  `Category` varchar(15) NOT NULL,
  `Author_Name` varchar(15) NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`MemId`, `Card_Id`, `BookId`, `Book_Name`, `Category`, `Author_Name`, `Status`) VALUES
(3397, 5027, 1255, 'The Hidden Hindu', 'Religion', 'Akshat Gupta', 1),
(3396, 5026, 1253, 'Believe In Yourself', 'self help', 'Dr. Joseph Murp', 1),
(3395, 5025, 1253, 'Believe In Yourself', 'self help', 'Dr. Joseph Murp', 1),
(3400, 5030, 1252, 'Treasure Island', 'Adventure', 'Robert Louis St', 1),
(3400, 5030, 1254, 'Mastering Hacking', 'Computer Scienc', 'Harsh Bothara', 1),
(3400, 5030, 1255, 'The Hidden Hindu', 'Religion', 'Akshat Gupta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bookrequest`
--

CREATE TABLE `bookrequest` (
  `S_No` int(3) NOT NULL,
  `MemId` int(4) NOT NULL,
  `Book_Name` varchar(20) NOT NULL,
  `Category` varchar(15) NOT NULL,
  `Author_Name` varchar(15) NOT NULL,
  `Approved` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(15) NOT NULL,
  `Last_Name` varchar(15) NOT NULL,
  `DOB` date NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Aadhaar` bigint(12) NOT NULL,
  `Country_Code` tinyint(3) NOT NULL,
  `Phone` int(10) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Course` varchar(10) NOT NULL,
  `Category` varchar(7) NOT NULL,
  `Sub_category` varchar(7) NOT NULL,
  `Physically_disabled` tinyint(1) NOT NULL,
  `EWS` tinyint(1) NOT NULL,
  `Kashmiri_Migrant` tinyint(1) NOT NULL,
  `TWS` tinyint(1) NOT NULL,
  `Father_Name` varchar(20) NOT NULL,
  `Mother_Name` varchar(20) NOT NULL,
  `Father_Occupation` varchar(13) NOT NULL,
  `Mother_Occupation` varchar(13) NOT NULL,
  `Income` varchar(9) NOT NULL,
  `Country` varchar(10) NOT NULL,
  `State` varchar(15) NOT NULL,
  `District` varchar(15) NOT NULL,
  `Town_or_Vill` varchar(10) NOT NULL,
  `Pincode` mediumint(6) NOT NULL,
  `Area` varchar(5) NOT NULL,
  `Roll_No` int(10) NOT NULL,
  `Exam_Yr` year(4) NOT NULL,
  `Exam_Board` varchar(4) NOT NULL,
  `Result` tinyint(4) NOT NULL,
  `Institute` varchar(20) NOT NULL,
  `Photo` varchar(15) NOT NULL,
  `Signature` varchar(15) NOT NULL,
  `Marksheet` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`ID`, `First_Name`, `Last_Name`, `DOB`, `Gender`, `Aadhaar`, `Country_Code`, `Phone`, `Email`, `Course`, `Category`, `Sub_category`, `Physically_disabled`, `EWS`, `Kashmiri_Migrant`, `TWS`, `Father_Name`, `Mother_Name`, `Father_Occupation`, `Mother_Occupation`, `Income`, `Country`, `State`, `District`, `Town_or_Vill`, `Pincode`, `Area`, `Roll_No`, `Exam_Yr`, `Exam_Board`, `Result`, `Institute`, `Photo`, `Signature`, `Marksheet`) VALUES
(1, 'Lakshey', 'Kumar', '2022-09-21', 'Male', 123456789012, 127, 1234567890, 'lkjasoria0@gmail.com', 'B.Tech', 'General', 'NA', 0, 0, 0, 0, 'Sunil Kumar', 'Manisha Devi', 'Govt. Job Emp', 'Housewife', '5lac-8lac', 'India', 'Haryana', 'Rewari', 'Maliyaki', 123035, 'Rural', 322323233, 2022, 'CBSE', 45, 'Vivekanand sr.sec.sc', 'Photo/0x0.jpg', 'Sign/11.jpg', 'Marksheet/11.jp');

-- --------------------------------------------------------

--
-- Table structure for table `lib`
--

CREATE TABLE `lib` (
  `ID` int(3) NOT NULL,
  `Name` varchar(20) NOT NULL,
  `Author` varchar(20) NOT NULL,
  `Subject` varchar(20) NOT NULL,
  `Cover` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lib`
--

INSERT INTO `lib` (`ID`, `Name`, `Author`, `Subject`, `Cover`) VALUES
(1252, 'Treasure Island', 'Robert Louis Stevens', 'Adventure', 'Book/Tresure Island.jpg'),
(1254, 'Mastering Hacking', 'Harsh Bothara', 'Computer Science', 'Book/hacking.jpg'),
(1255, 'The Hidden Hindu', 'Akshat Gupta', 'Religion', 'Book/The Hidden Hindu.jpg'),
(1256, 'Think & Grow Rich', 'Napoleon Hills', 'Marketing', 'Book/Think & Grow Rich.jpg'),
(1257, 'A Million Thought', 'Astha Anand ', 'Thought', 'Book/A Million Thoughts.jpg'),
(1258, 'The World As I See I', 'Albert Einstein', 'Science', 'Book/The World As I See It.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `libuser`
--

CREATE TABLE `libuser` (
  `ID` int(6) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Department` varchar(15) NOT NULL,
  `Gender` text NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone_No` varchar(10) NOT NULL,
  `CardId` int(4) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `libuser`
--

INSERT INTO `libuser` (`ID`, `Name`, `Department`, `Gender`, `Email`, `Phone_No`, `CardId`, `Password`, `Photo`) VALUES
(3394, 'nik', '', '0000', 'lkjasoria0@gmail.com', '1234567890', 5024, '1', 'Libpht/vansh photo.jpg'),
(3395, 'Lucky', 'Teacher', 'M', 'lk@gmail.com', '2147483647', 5025, '1', 'Libpht/Screenshot 5.png'),
(3396, 'lk', 'Teacher', 'M', 'lkj@mm.mm', '2147483647', 5026, '2', 'Libpht/2022-06-30 (1).png'),
(3400, 'b', 'Reader', 'M', 'b@b.mn', '12344', 5030, '123', 'Libpht/des2.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookrequest`
--
ALTER TABLE `bookrequest`
  ADD PRIMARY KEY (`S_No`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lib`
--
ALTER TABLE `lib`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `libuser`
--
ALTER TABLE `libuser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookrequest`
--
ALTER TABLE `bookrequest`
  MODIFY `S_No` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `lib`
--
ALTER TABLE `lib`
  MODIFY `ID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1261;

--
-- AUTO_INCREMENT for table `libuser`
--
ALTER TABLE `libuser`
  MODIFY `ID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3402;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
