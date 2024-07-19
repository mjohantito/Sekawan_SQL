-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 19, 2024 at 06:04 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Sekawan_Tambang`
--

-- --------------------------------------------------------

--
-- Table structure for table `appuser`
--

CREATE TABLE `appuser` (
  `appuserid` varchar(8) NOT NULL,
  `appusername` varchar(128) NOT NULL,
  `appuserpassword` varchar(128) NOT NULL,
  `appuserrole` tinyint(1) NOT NULL,
  `name` varchar(128) NOT NULL,
  `appuserstatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appuseractivity`
--

CREATE TABLE `appuseractivity` (
  `activityid` varchar(128) NOT NULL,
  `appuserid` varchar(8) NOT NULL,
  `activitydate` date NOT NULL,
  `activityinfo` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver`
--

CREATE TABLE `driver` (
  `driverid` varchar(64) NOT NULL,
  `drivername` varchar(128) NOT NULL,
  `driverage` int(3) NOT NULL,
  `driverstatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `driver`
--

INSERT INTO `driver` (`driverid`, `drivername`, `driverage`, `driverstatus`) VALUES
('3571988909380003', 'Mujimin', 34, 2),
('35780291890001', 'KASEP', 35, 1),
('3587981090980002', 'Suyanto', 23, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `vehicleid` varchar(64) NOT NULL,
  `vehicleinfo` varchar(256) NOT NULL,
  `vehicletype` tinyint(1) NOT NULL,
  `vehicleownership` tinyint(1) NOT NULL,
  `vehiclelastservice` date NOT NULL,
  `vehiclestatus` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`vehicleid`, `vehicleinfo`, `vehicletype`, `vehicleownership`, `vehiclelastservice`, `vehiclestatus`) VALUES
('B565SS', 'TANK', 2, 1, '2024-07-01', 2),
('N123A', 'OYOTA AVANZA', 2, 1, '2024-07-01', 1),
('N123XX', 'TOYOTA AVANZO', 2, 1, '2024-05-02', 1),
('N125BB', 'NISSIN ABC', 2, 1, '2024-07-08', 2),
('N345KK', 'HONDI IJA', 2, 1, '2024-07-02', 2),
('X1111XX', 'OYOTA AVANZO', 1, 2, '2024-07-19', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vehicleorder`
--

CREATE TABLE `vehicleorder` (
  `orderid` varchar(128) NOT NULL,
  `orderdate` date NOT NULL,
  `ordertype` tinyint(1) NOT NULL,
  `vehicleid` varchar(64) NOT NULL,
  `driverid` varchar(64) NOT NULL,
  `appuserid` varchar(8) NOT NULL,
  `origin` varchar(128) NOT NULL,
  `destination` varchar(128) NOT NULL,
  `distance` int(8) NOT NULL,
  `fuelconsumption` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `driver`
--
ALTER TABLE `driver`
  ADD PRIMARY KEY (`driverid`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`vehicleid`);

--
-- Indexes for table `vehicleorder`
--
ALTER TABLE `vehicleorder`
  ADD PRIMARY KEY (`orderid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
