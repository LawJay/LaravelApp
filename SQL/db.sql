-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.19 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for jambo
CREATE DATABASE IF NOT EXISTS `jambo` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `jambo`;

-- Dumping structure for table jambo.companies
CREATE TABLE IF NOT EXISTS `companies` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Website` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.companies: ~15 rows (approximately)
/*!40000 ALTER TABLE `companies` DISABLE KEYS */;
INSERT INTO `companies` (`id`, `Name`, `Email`, `Logo`, `Website`, `created_at`, `updated_at`) VALUES
	(1, 'Intellicore updated', 'info@intellicore.co.uk', 'https://www.intellicore.co.uk/public/uploads/intellicore_logo_dark.png', 'https://www.intellicore.co.uk/', NULL, '2018-07-25 17:18:26'),
	(2, 'Codify', 'info@codify.ltd.uk', 'https://media.cylex-uk.co.uk/companies/2240/0174/logo/logo.jpg', 'https://www.codify.ltd.uk/', NULL, NULL),
	(4, 'Jumbo Ltd', 'Jumbo@Jumbo.com', 'https://www.kingsavenuemall.com/wp-content/uploads/2017/03/jumbo.png', 'www.Jumbo.com', '2018-07-25 14:03:50', '2018-07-25 14:03:50'),
	(5, 'Shell', 'info@shell.com', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e8/Shell_logo.svg/1200px-Shell_logo.svg.png', 'https://www.shell.co.uk/', '2018-07-26 22:55:39', '2018-07-26 22:55:39'),
	(6, 'StarBucks', 'info@starbucks.com', 'https://upload.wikimedia.org/wikipedia/en/thumb/d/d3/Starbucks_Corporation_Logo_2011.svg/1200px-Starbucks_Corporation_Logo_2011.svg.png', 'https://www.starbucks.co.uk/', '2018-07-26 22:59:33', '2018-07-26 22:59:33'),
	(7, 'Costa', 'info@costa.co.uk', 'https://upload.wikimedia.org/wikipedia/en/thumb/4/42/CostaLogo.svg/1200px-CostaLogo.svg.png', 'https://www.costa.co.uk/', '2018-07-26 23:03:41', '2018-07-26 23:03:41'),
	(8, 'Mcdonald\'s', 'info@mcdonalds.com', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/Mcdonald%27s_logo.svg/220px-Mcdonald%27s_logo.svg.png', 'www.Mcdonalds.com', '2018-07-28 15:14:12', '2018-07-28 15:14:12'),
	(9, 'BBC', 'info@bbc.co.uk', 'https://kandl-genres.files.bbci.co.uk/kandl-genres/1231-1/images/meta-images/bbc_blocks.png', 'www.bbc.co.uk', '2018-07-28 15:15:31', '2018-07-28 15:15:31'),
	(10, 'Apple', 'info@apple.com', 'https://www.apple.com/ac/structured-data/images/knowledge_graph_logo.png?201606271147', 'apple.co.uk', '2018-07-28 15:16:18', '2018-07-28 15:16:18'),
	(11, 'Android', 'info@android.com', 'https://cnet4.cbsistatic.com/img/QJcTT2ab-sYWwOGrxJc0MXSt3UI=/2011/10/27/a66dfbb7-fdc7-11e2-8c7c-d4ae52e62bcc/android-wallpaper5_2560x1600_1.jpg', 'www.google.com', '2018-07-28 15:18:18', '2018-07-28 15:18:18'),
	(12, 'Microsoft', 'info@microsoft.com', 'https://cdn.vox-cdn.com/thumbor/NeSo4JAqv-fFJCIhb5K5eBqvXG4=/7x0:633x417/1200x800/filters:focal(7x0:633x417)/cdn.vox-cdn.com/assets/1311169/mslogo.jpg', 'www.microsoft.com', '2018-07-29 22:02:30', '2018-07-29 22:02:30'),
	(13, 'BP', 'info@bp.com', 'https://upload.wikimedia.org/wikipedia/commons/c/c3/Bp-logo.jpg', 'www.bp.co.uk', '2018-07-29 22:05:46', '2018-07-29 22:05:46'),
	(14, 'Espresso House', 'info@espressohouse.com', 'https://upload.wikimedia.org/wikipedia/en/thumb/3/33/Espresso_House_Logo.png/220px-Espresso_House_Logo.png', 'https://espressohouse.com/', '2018-07-29 22:07:25', '2018-07-29 22:07:25'),
	(15, 'Valve', 'info@valve.com', 'https://steamstore-a.akamaihd.net/public/shared/images/responsive/share_steam_logo.png', 'Valve.com', '2018-07-29 22:09:17', '2018-07-29 22:09:17'),
	(16, 'Red Gate', 'info~redgate.com', 'https://cdn.rd.gt/assets/company/careers/images/logo-horizontal-on-red.png', 'redgate.co.uk', '2018-07-29 22:11:58', '2018-07-29 22:11:58');
/*!40000 ALTER TABLE `companies` ENABLE KEYS */;

-- Dumping structure for table jambo.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Company` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.employees: ~12 rows (approximately)
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` (`id`, `firstName`, `lastName`, `Company`, `Email`, `Phone`, `created_at`, `updated_at`) VALUES
	(1, 'Jamie', 'Law', 'Freelance', 'jamiepeterlaw@gmail.com', '07964769689', NULL, '2018-07-25 17:20:13'),
	(2, 'Jambo', 'Unchained', 'Boss', 'test@test.com', '123456789', NULL, NULL),
	(4, 'Jamie', 'Law', 'test', 'test', 'test', '2018-07-25 13:51:31', '2018-07-25 13:51:31'),
	(5, 'Johan', 'Cruyff', 'Shoes Inc', 'Johan@cruyff.com', '01244575387', '2018-07-29 22:17:22', '2018-07-29 22:17:22'),
	(6, 'Jane', 'Doe', 'Code & Co.', 'Jane@Doe.com', '01221795475', '2018-07-29 22:22:03', '2018-07-29 22:22:03'),
	(7, 'Jack', 'Jarvis', 'Craiglang Community Centre', 'still@game.co.uk', '01466795732', '2018-07-29 22:25:34', '2018-07-29 22:25:34'),
	(8, 'Victor', 'Mcdade', 'Clansman Pub', 'Victor@mcdade.com', '01224123456', '2018-07-29 22:28:59', '2018-07-29 22:28:59'),
	(9, 'Winston', 'Ingram', 'Glasgow Council', 'W.ingram@gcc.com', '123456789', '2018-07-29 22:30:59', '2018-07-29 22:30:59'),
	(10, 'Isa', 'Drennen', 'Navid\'s shop', 'N/A', '07583428936', '2018-07-29 22:32:23', '2018-07-29 22:32:23'),
	(11, 'Navid', 'Harrid', 'Navid\'s Shop', 'N.Harrid@info.co.uk', '07953738765', '2018-07-29 22:33:19', '2018-07-29 22:36:08'),
	(12, 'Pete', 'Mackormack', 'N/A', 'N/A', 'N/A', '2018-07-29 22:34:43', '2018-07-29 22:34:43'),
	(13, 'Thomas', 'Mullen', 'Bookies Inc', 'N/A', '01542667998', '2018-07-29 22:45:34', '2018-07-29 22:45:34'),
	(14, 'Eric', 'Jones', 'Retired', 'Eric@btinternet.com', '01224658943', '2018-07-29 22:47:09', '2018-07-29 22:47:09');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;

-- Dumping structure for table jambo.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.migrations: ~5 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_07_23_225004_create_posts_table', 1),
	(4, '2018_07_24_110811_create_employees_table', 1),
	(5, '2018_07_24_111026_create_companies_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table jambo.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table jambo.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cover_image` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.posts: ~1 rows (approximately)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `cover_image`) VALUES
	(2, 'My Second Post', 'this my second posts body!', '2018-07-24 12:26:57', '2018-07-24 12:26:57', NULL),
	(3, 'test', 'test', '2018-07-27 18:53:49', '2018-07-27 18:53:49', 'brain_1532717629.png');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Dumping structure for table jambo.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table jambo.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Jamie', 'admin@admin.com', '$2y$10$pXMpg2Obbt8kKwhTfvvNCeajzVhIa6yvyAUrW8D3BoIeDnXRbwoY2', 'FuRIu6K40qVjS3kx1HH3Vsx4owWbvOpzYyD2PUeac6Nr5uuZHaSPaotsa4oM', '2018-07-25 22:35:32', '2018-07-25 22:35:32');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
