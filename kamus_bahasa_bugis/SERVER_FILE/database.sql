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


-- Dumping database structure for db_kamus
CREATE DATABASE IF NOT EXISTS `db_kamus` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_kamus`;

-- Dumping structure for table db_kamus.listkata
CREATE TABLE IF NOT EXISTS `listkata` (
  `id` int(11) DEFAULT NULL,
  `indonesia` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `bugis` varchar(23) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table db_kamus.listkata: ~207 rows (approximately)
/*!40000 ALTER TABLE `listkata` DISABLE KEYS */;
REPLACE INTO `listkata` (`id`, `indonesia`, `bugis`) VALUES
	(1, 'saya', 'iya\''),
	(2, 'kamu', 'idi\', iko'),
	(3, 'dia', 'alena'),
	(4, 'kami/kita', 'idi\''),
	(5, 'kalian', 'idi\''),
	(6, 'mereka', 'ya maneng'),
	(7, 'ini', 'yae'),
	(8, 'itu', 'yaro'),
	(9, 'sini', 'akkoe'),
	(10, 'situ/sana', 'akkoro'),
	(11, 'siapa', 'niga'),
	(12, 'apa', 'aga'),
	(13, 'di mana', 'kega'),
	(14, 'kapan', 'uppanna'),
	(15, 'bagaimana', 'pekkoga'),
	(16, 'bukan/tidak', 'tania'),
	(17, 'semua', 'maneng'),
	(18, 'banyak', 'mega'),
	(19, 'beberapa', 'siaga-siaga'),
	(20, 'sedikit', 'ce\'de'),
	(21, 'lain', 'laeng'),
	(22, 'satu', 'siddi, se\'di'),
	(23, 'dua', 'duwa'),
	(24, 'tiga', 'téllu'),
	(25, 'empat', 'éppa'),
	(26, 'lima', 'lima'),
	(27, 'besar', 'maloppo'),
	(28, 'panjang', 'malampe'),
	(29, 'lebar', 'mallebba\''),
	(30, 'tebal', 'maumpe\''),
	(31, 'berat', 'matane\''),
	(32, 'kecil', 'mabiccu\''),
	(33, 'pendek', 'maponco\''),
	(34, 'sempit', 'macipi\''),
	(35, 'tipis', 'manipi\''),
	(36, 'perempuan/wanita', 'makkunrai'),
	(37, 'laki-laki/pria', 'urane'),
	(38, 'manusia', 'tau'),
	(39, 'anak', 'ana\''),
	(40, 'istri', 'bene'),
	(41, 'suami', 'lakkai'),
	(42, 'ibu', 'indo\''),
	(43, 'ayah', 'ambo\''),
	(44, 'binatang', 'olo\'kolo\''),
	(45, 'ikan', 'bale'),
	(46, 'burung', 'manu\'-manu\', dongi\''),
	(47, 'anjing', 'asu'),
	(48, 'kutu', 'utu'),
	(49, 'ular', 'ula\''),
	(50, 'cacing', 'bito'),
	(51, 'pohon', 'tanet-taneng'),
	(52, 'hutan', 'ale\''),
	(53, 'ranting', 'takke iccu\''),
	(54, 'buah', 'bua'),
	(55, 'biji', 'lice\''),
	(56, 'daun', 'raun'),
	(57, 'akar', 'ure\''),
	(58, 'kulit kayu', 'uli aju'),
	(59, 'bunga', 'bunga'),
	(60, 'rumput', 'ruu\''),
	(61, 'tali', 'tulu\''),
	(62, 'kulit', 'uli\''),
	(63, 'daging', 'juku\''),
	(64, 'darah', 'cera\''),
	(65, 'tulang', 'kabuttu'),
	(66, 'lemak', 'lappe'),
	(67, 'telur', 'tello'),
	(68, 'tanduk', 'tanru\''),
	(69, 'ekor', 'ikko\''),
	(70, 'bulu', 'hulu'),
	(71, 'rambut', 'belua'),
	(72, 'kepala', 'ulu'),
	(73, 'telinga', 'coli'),
	(74, 'mata', 'mata'),
	(75, 'hidung', 'inge\''),
	(76, 'mulut', 'timu'),
	(77, 'gigi', 'isi'),
	(78, 'lidah', 'lilla'),
	(79, 'kuku', 'kanuku'),
	(80, 'kaki', 'aje'),
	(81, 'telapak kaki', '[[]]'),
	(82, 'lutut', 'uttu\''),
	(83, 'tangan', 'lima'),
	(84, 'sayap', '[[]]'),
	(85, 'perut', 'perru\''),
	(86, 'usus', '[[]]'),
	(87, 'leher', 'éllong'),
	(88, 'punggung', '[[]]'),
	(89, 'payudara', 'tete\',susu'),
	(90, 'jantung', '[[]]'),
	(91, 'hati', '[[]]'),
	(92, 'minum (meminum)', 'minung'),
	(93, 'makan (memakan)', 'manre'),
	(94, 'gigit (menggigit)', 'mattoa\''),
	(95, 'isap (mengisap)', 'mangngiso\''),
	(96, 'ludah (meludah)', 'mammiccu'),
	(97, 'muntah', 'tallua'),
	(98, 'tiup (meniup)', 'ma\'berrung'),
	(99, 'nafas (bernafas)', 'makkinnyawa'),
	(100, 'tawa (tertawa)', 'micawa, macawa, mecawa'),
	(101, 'lihat (melihat)', 'makkita'),
	(102, 'dengar (mendengar)', 'mangkalinga'),
	(103, 'tahu (mengetahui)', 'misséng'),
	(104, 'pikir (berpikir)', 'mappikkiri\''),
	(105, 'cium (mencium)', 'cippo'),
	(106, 'takut', 'mitau\''),
	(107, 'tidur', 'matinro'),
	(108, 'hidup', 'tuo'),
	(109, 'mati', 'mate'),
	(110, 'bunuh (membunuh)', 'uno, mammuno'),
	(111, 'kelahi (berkelahi)', 'mangkaga'),
	(112, 'buru (berburu)', 'mattolu'),
	(113, 'pukul (memukul)', 'péppe'),
	(114, 'potong (memotong)', 'polo'),
	(115, 'belah (membelah)', 'pue'),
	(116, 'tusuk (menusuk)', 'to\'do'),
	(117, 'coret (mencoret)', 'maccore'),
	(118, 'gali (menggali)', 'kae'),
	(119, 'renang (berenang)', 'nange, lange'),
	(120, 'terbang', 'luttu\''),
	(121, 'jalan (berjalan)', 'jokka'),
	(122, 'datang', 'éngka'),
	(123, 'baring (berbaring)', 'leu'),
	(124, 'duduk', 'tudang'),
	(125, 'diri (berdiri)', 'tettong'),
	(126, 'belok (berbelok)', 'belo'),
	(127, 'jatuh', 'mabuang'),
	(128, 'beri (memberi)', 'péreng'),
	(129, 'pegang (memegang)', 'makkatenni'),
	(130, 'peras (memeras)', 'pérra'),
	(131, 'gosok (menggosok)', 'goso\''),
	(132, 'cuci (mencuci)', 'mabbissa'),
	(133, 'hapus (menghapus)', '[[]]'),
	(134, 'tarik (menarik)', 'marrui'),
	(135, 'dorong (mendorong)', 'sorong'),
	(136, 'lempar (melempar)', 'marrempe\''),
	(137, 'ikat (mengikat)', 'massio\''),
	(138, 'jahit (menjahit)', 'ma\'jai'),
	(139, 'hitung (menghitung)', 'marrekeng, maddekeng'),
	(140, 'kata (berkata)', 'ma\'bicara'),
	(141, 'nyanyi (bernyanyi)', 'makkelong'),
	(142, 'main (bermain)', 'maccule'),
	(143, 'apung (mengapung)', 'mawang'),
	(144, 'alir (mengalir)', 'maccolo'),
	(145, 'beku (membeku)', 'mabékku\''),
	(146, 'bengkak (membengkak)', 'boro'),
	(147, 'matahari', 'mataesso'),
	(148, 'bulan', 'uleng'),
	(149, 'bintang', 'bintoeng'),
	(150, 'air', 'wae'),
	(151, 'hujan', 'bosi'),
	(152, 'sungai', 'salo'),
	(153, 'danau', '[[]]'),
	(154, 'laut', 'tasi'),
	(155, 'garam', 'péjje'),
	(156, 'batu', 'batu'),
	(157, 'pasir', 'késsi'),
	(158, 'debu', 'alulu'),
	(159, 'bumi', 'bumi'),
	(160, 'awan', 'éllung'),
	(161, 'kabut', '[[]]'),
	(162, 'langit', 'langi\''),
	(163, 'angin', 'anging'),
	(164, 'salju', 'saléju'),
	(165, 'es', 'ese\''),
	(166, 'asap', 'dumpu, rumpu'),
	(167, 'api', 'api'),
	(168, 'abu', 'abu'),
	(169, 'bakar', 'tunu'),
	(170, 'jalan', 'laleng'),
	(171, 'gunung', 'bulu\''),
	(172, 'merah', 'cella\''),
	(173, 'hijau', 'cémbulo, ijo'),
	(174, 'kuning', 'ridi'),
	(175, 'putih', 'pute'),
	(176, 'hitam', 'lotong'),
	(177, 'malam', 'wénni'),
	(178, 'hari', 'ésso'),
	(179, 'tahun', 'taung'),
	(180, 'hangat', 'kémmu'),
	(181, 'dingin', 'kécce, macékke, makécce'),
	(182, 'penuh', 'penno'),
	(183, 'baru', 'baru, mabaru'),
	(184, 'lama/tua', 'toa, matoa'),
	(185, 'baik', 'kanja\''),
	(186, 'buruk', 'maja\''),
	(187, 'busuk', 'kébbong'),
	(188, 'kotor', 'rota, marota'),
	(189, 'lurus', 'lémpu, malémpu'),
	(190, 'bulat', 'lebu, malebu'),
	(191, 'tajam', 'taréng'),
	(192, 'tumpul', 'kunru, makunru'),
	(193, 'licin', 'maléngngo'),
	(194, 'basah', 'marica'),
	(195, 'kering', 'marakko'),
	(196, 'betul', 'tongéng'),
	(197, 'dekat', 'cawe, macawe, micawe'),
	(198, 'jauh', 'bela, mabela'),
	(199, 'kanan', 'kanang'),
	(200, 'kiri', 'kiri'),
	(201, 'di', 'ri'),
	(202, 'dalam', 'laléng'),
	(203, 'dengan', 'sibawa'),
	(204, 'dan', 'na'),
	(205, 'kalau', 'rekko, narekko'),
	(206, 'karena', 'nasaba'),
	(207, 'nama', 'aséng');
/*!40000 ALTER TABLE `listkata` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
