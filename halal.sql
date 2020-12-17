-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 15, 2020 at 06:34 AM
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
-- Database: `dev15db`
--

-- --------------------------------------------------------

--
-- Table structure for table `halal`
--

CREATE TABLE `halal` (
  `id` int(64) NOT NULL,
  `Name` varchar(128) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Nationality` varchar(128) DEFAULT NULL,
  `Borough` varchar(128) DEFAULT NULL,
  `lng` varchar(128) DEFAULT NULL,
  `lat` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halal`
--

INSERT INTO `halal` (`id`, `Name`, `Description`, `Nationality`, `Borough`, `lng`, `lat`) VALUES
(1, 'Halal Indian Food & Falafel', '6742 5th Ave, Brooklyn, NY 11220', 'Indian South Asian', 'Brooklyn', '-74.020870', '40.634610'),
(2, 'China Pagoda', '6918 5th Ave, Brooklyn, NY 11209', 'Chinese', 'Brooklyn', '-74.021439', '40.633129'),
(3, 'Afghan Kebab House', '1345 2nd Ave #5224, New York, NY 10021', 'Afghan', 'NY', '-73.959300', '40.768090'),
(4, 'Al-Sham', '7701 5th Ave, Brooklyn, NY 11209', 'Syrian Middle Eastern', 'Brooklyn', '-74.023100', '40.627720'),
(5, 'Al Aqsa Bakery & Restaurant', '6917 5th Ave, Brooklyn, NY 11209', 'Palestinian Middle Eastern', 'Brooklyn', '-74.021000', '40.632900'),
(6, 'Istanbul Bay', '8002 5th Ave, Brooklyn, NY 11209', 'Turkish Middle Eastern', 'Brooklyn', '-74.024460', '40.625830'),
(7, 'Au Zaatar', '188 Avenue A, New York, NY 10009', 'Lebanese Middle Eastern', 'New York', '-73.981163', '40.728870'),
(8, 'Yemen Cafe', '176 Atlantic Ave, Brooklyn, NY 11201', 'Yemeni Middle Eastern', 'Brooklyn', '-73.993698', '40.689812'),
(9, 'Twisted Mexican Grill', '18-33 Astoria Blvd, Astoria, NY 11102', 'Mexican', 'Queens', '-73.936670', '40.773970'),
(10, 'Packsun', '2160 Westchester Ave, The Bronx, NY 10462', 'Bangladeshi South Asian', 'Bronx', '-73.852400', '40.833940'),
(11, 'Royal Grill Halal Food', '1133 6th Ave, New York, NY 10036', 'Indian South Asian', 'New York', '-73.983917', '40.756069'),
(12, 'Indo Pak Halal', '2173 2nd Ave #2909, New York, NY 10029', 'Pakistani Indian South Asian', 'New York', '-73.940030', '40.794310'),
(13, 'Tokyo Hibachi Steakhouse & Sushi', '184-16 Horace Harding Expy, Queens, NY 11365', 'Japanese', 'Queens', '-73.789470', '40.739700'),
(14, 'Neerob Restaurant & Halal Chinese', '2096 Starling Ave, Bronx, NY 10462', 'Bangladeshi Chinese Asian', 'Bronx', '-73.855350', '40.835790'),
(15, 'Musas Chinese Resturaunt', '2023 Westchester Ave, Bronx, NY 10462', 'Chinese', 'Bronx', '-73.857090', '40.833850'),
(16, 'Khalil Halal Chinese', '2062 McGraw Ave, Bronx, NY 10462', 'Chinese', 'Bronx', '-73.85591497524533', '40.83551915669664'),
(17, 'Neha Palace Indian Restaurant, Banquet Hall & Party Venue', '27 Meyer Ave, Yonkers, NY 10704', 'Indian South Asian', 'New York', ' -73.85698027339448', '40.92391293780743'),
(18, 'Al-Aqsa Restaurant', '2107 Starling Ave, The Bronx, NY 10462', 'Bangladeshi Indian South Asian', 'Bronx', '-73.8526009625594', '40.83720945629595'),
(19, 'Mandela Restaurant', '267 Troy Ave, Brooklyn, NY 11213', 'South African Nigerian Black', 'Brooklyn', '-73.9366654826579', '40.672534135800895'),
(20, 'Safari Restaurant NYC', '219 W 116th St, New York, NY 10026', 'Somali East African Black', 'New York', '-73.95314081722044', '40.805881655033765'),
(21, 'Black Nile', '592 Nostrand Ave., Brooklyn, NY 11216', 'Black African', 'Brooklyn', '-73.95121949625198', '40.678701631478816'),
(22, 'Nurlan Uyghur Restaurant', '43-39 Main St, Flushing, NY 11355', 'Uzbek Uyghur', 'Queens', '-73.82704921669317', '40.75820145846006'),
(23, 'Thai Nara Halal Restaurant', '64-02 35th Ave, Woodside, NY 11377', 'Thai Asian', 'Queens', '-73.89823753728453', '40.75301638724304'),
(24, 'Chicky’s', '248-43 Jericho Turnpike, Jamaica, NY 11426', 'Portuguese South African', 'Queens', '-73.71771665511841', '40.72942286192835');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `halal`
--
ALTER TABLE `halal`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
