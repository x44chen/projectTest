-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4064
-- Date/time:                    2014-10-12 21:32:16
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for victoria
DROP DATABASE IF EXISTS `victoria`;
CREATE DATABASE IF NOT EXISTS `victoria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `victoria`;


-- Dumping structure for procedure victoria.GetMenu
DROP PROCEDURE IF EXISTS `GetMenu`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetMenu`()
    COMMENT '\r\n	Desc:	Get Menu\r\n	\r\n	Created By			Date				Comments\r\n	------------------------------------------------\r\n	Nikhil Singh Thakur		09/oct/2014		Created\r\n'
BEGIN
		SELECT 	MU.id,
					MU.pageid,
					MU.name,
					MU.link
		FROM 		menu MU;
END//
DELIMITER ;


-- Dumping structure for procedure victoria.GetPageContant
DROP PROCEDURE IF EXISTS `GetPageContant`;
DELIMITER //
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetPageContant`(
	ID INT UNSIGNED
)
    COMMENT '\r\n	Desc:	Get Menu\r\n	\r\n	Created By			Date				Comments\r\n	------------------------------------------------\r\n	Nikhil Singh Thakur		09/oct/2014		Created\r\n'
BEGIN
		SELECT 	PU.id,
					PU.menuid,
					PU.title,
					PU.contant
		FROM 		page PU
					WHERE PU.id = ID;
END//
DELIMITER ;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
