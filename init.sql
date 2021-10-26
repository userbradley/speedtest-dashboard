SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";
CREATE DATABASE `internet`;
CREATE TABLE `internet`.`speedtest` (
  `time` int(11) NOT NULL,
  `upload` int(11) NOT NULL,
  `download` int(11) NOT NULL,
  `ping` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

CREATE TABLE `internet`.`ping` (
  `time` int(11) NOT NULL,
  `machine` text NOT NULL,
  `timeleft` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
