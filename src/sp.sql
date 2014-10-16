-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.5.8-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL version:             7.0.0.4064
-- Date/time:                    2014-10-12 21:31:57
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

-- Dumping database structure for victoria
DROP DATABASE IF EXISTS `victoria`;
CREATE DATABASE IF NOT EXISTS `victoria` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `victoria`;


-- Dumping structure for table victoria.menu
DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `pageid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='for display main menu';

-- Dumping data for table victoria.menu: ~7 rows (approximately)
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
REPLACE INTO `menu` (`id`, `pageid`, `name`, `link`) VALUES
	(1, 1, 'Home', 'index.php'),
	(2, 2, 'Teachers', 'teachers.php'),
	(3, 3, 'Parents', 'parents.php'),
	(4, 4, 'Students', 'students.php'),
	(5, 5, 'Carrer Advisors', 'carrerAdvisors.php'),
	(6, 6, 'About Us', 'aboutUs.php'),
	(7, 7, 'Contact', 'contact.php');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;


-- Dumping structure for table victoria.page
DROP TABLE IF EXISTS `page`;
CREATE TABLE IF NOT EXISTS `page` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `menuid` int(10) DEFAULT NULL,
  `title` varchar(500) DEFAULT NULL,
  `contant` varchar(10000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COMMENT='for page contant';

-- Dumping data for table victoria.page: ~7 rows (approximately)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
REPLACE INTO `page` (`id`, `menuid`, `title`, `contant`) VALUES
	(1, 1, 'Macedon Regional Park', 'The Macedon Ranges form the southern end of Victoria’s Great Dividing Range and feature a diverse range of natural and cultural features. The park protects forested land along the ridge of the range and offers great opportunities for bushwalking, scenic drives and picnics.'),
	(2, 2, 'Discover the diversity and beauty', 'Discover the diversity and beauty of regional Victoria. From world-class wineries to natural springs, the coastal villages of the peninsulas to alpine towns. Drive along one of the many scenic routes, pull on your walking boots and follow tracks and trails, or wander the shops and local produce markets.'),
	(3, 3, 'Wilsons Promontory', 'Wilsons Promontory National Park sits at the southernmost tip of the Australian mainland, offering visitors stunning scenery and wildlife.'),
	(4, 4, 'Hanging Rock', 'Your Picnic at Hanging Rock will be a gourmet affair served with drama and intrigue - and stunning flora and fauna.'),
	(5, 5, 'The Murray', 'Replenish the soul, reconnect with nature and share the best of the outdoor life amid the sunny climes of the vibrant Murray River region.'),
	(6, 6, 'Goldfields', 'Unearth the riches of today\'s Goldfields in impressive art galleries, specialty shops, fascinating museums, boutique wineries and esteemed eateries.'),
	(7, 7, 'Grampians', 'Inhale the air up there in the Grampians and be dazzled by the diverse natural attractions and their Aboriginal stories, plus stunning sparkling wine.');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;
/*!40014 SET FOREIGN_KEY_CHECKS=1 */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
