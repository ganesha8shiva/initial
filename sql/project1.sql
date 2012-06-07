-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4053
-- Date/time:                    2012-06-07 15:34:13
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for project
CREATE DATABASE IF NOT EXISTS `project` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `project`;


-- Dumping structure for table project.artist
CREATE TABLE IF NOT EXISTS `artist` (
  `artistid` int(11) NOT NULL,
  `name` text NOT NULL,
  PRIMARY KEY (`artistid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table project.artist: ~0 rows (approximately)
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;


-- Dumping structure for table project.cd
CREATE TABLE IF NOT EXISTS `cd` (
  `cdid` int(11) NOT NULL,
  `artist` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`cdid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table project.cd: ~0 rows (approximately)
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;


-- Dumping structure for table project.track
CREATE TABLE IF NOT EXISTS `track` (
  `trackid` int(11) NOT NULL,
  `cd` int(11) NOT NULL,
  `title` text NOT NULL,
  PRIMARY KEY (`trackid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table project.track: ~0 rows (approximately)
/*!40000 ALTER TABLE `track` DISABLE KEYS */;
/*!40000 ALTER TABLE `track` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
