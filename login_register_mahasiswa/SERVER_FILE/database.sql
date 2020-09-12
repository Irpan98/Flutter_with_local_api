-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.13-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for db_ft_kampus
CREATE DATABASE IF NOT EXISTS `db_ft_kampus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_ft_kampus`;

-- Dumping structure for table db_ft_kampus.tb_mahasiswa
CREATE TABLE IF NOT EXISTS `tb_mahasiswa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_ft_kampus.tb_mahasiswa: ~6 rows (approximately)
/*!40000 ALTER TABLE `tb_mahasiswa` DISABLE KEYS */;
REPLACE INTO `tb_mahasiswa` (`id`, `email`, `name`, `password`, `alamat`) VALUES
	(1, 'asdasd', 'asd', 'asd', 'asd'),
	(2, 'asss', 'a', 'c4ca4238a0b923820dcc509a6f75849b', 'a'),
	(3, 'irpan@gmail.com', 'irpan', '202cb962ac59075b964b07152d234b70', 'samarinda'),
	(4, 'asd', 'asd', '7815696ecbf1c96e6894b779456d330e', 'asd'),
	(5, 'asds', 'asd', '7815696ecbf1c96e6894b779456d330e', 'asd'),
	(6, 'irpant1998@gmail.com	', 'irpan	', '76d80224611fc919a5d54f0ff9fba446', 'Samarinda');
/*!40000 ALTER TABLE `tb_mahasiswa` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
