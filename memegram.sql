-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 26, 2018 at 06:55 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.2.7-0ubuntu0.18.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `memegram`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author_id`, `body`, `created_at`, `updated_at`) VALUES
(1, 1, 7, 'I had it written up somewhere.\' Down, down, down. There was nothing so VERY nearly at the mushroom for a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they sat down, and the.', '2018-08-25 05:39:39', '2018-08-25 05:39:39'),
(4, 4, 13, 'Alice remained looking thoughtfully at the house, quite forgetting that she was exactly the right size, that it was quite impossible to say which), and they walked off together. Alice was soon.', '2018-08-25 05:39:42', '2018-08-25 05:39:42'),
(5, 5, 15, 'There was certainly English. \'I don\'t know what \"it\" means well enough, when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of them bowed low. \'Would you like to be lost, as she left.', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(6, 24, 48, 'IS that to be ashamed of yourself for asking such a thing. After a while she was as much as she did not feel encouraged to ask the question?\' said the Mouse, getting up and picking the daisies, when.', '2018-08-25 06:09:05', '2018-08-25 06:09:05'),
(7, 25, 50, 'Eaglet. \'I don\'t much care where--\' said Alice. \'Come on, then,\' said Alice, feeling very glad to get in at the number of changes she had put on her lap as if she meant to take out of breath, and.', '2018-08-25 06:09:08', '2018-08-25 06:09:08'),
(8, 26, 52, 'She was close behind her, listening: so she began looking at Alice the moment they saw the Mock Turtle, and to her lips. \'I know SOMETHING interesting is sure to do THAT in a whisper, half afraid.', '2018-08-25 06:09:12', '2018-08-25 06:09:12'),
(9, 27, 54, 'Classics master, though. He was an old woman--but then--always to have wondered at this, but at the end of half those long words, and, what\'s more, I don\'t take this child away with me,\' thought.', '2018-08-25 06:09:15', '2018-08-25 06:09:15'),
(10, 28, 56, 'Duchess sang the second time round, she came upon a little bit, and said to herself, and shouted out, \'You\'d better not do that again!\' which produced another dead silence. Alice was more than Alice.', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(11, 1, 8, 'hahah', NULL, NULL),
(12, 72, 133, 'Majesty,\' said the Gryphon. \'Do you play croquet?\' The soldiers were always getting up and said, without opening its eyes, \'Of course, of course; just what I could show you our cat Dinah: I think.', '2018-08-25 16:14:59', '2018-08-25 16:14:59'),
(13, 73, 135, 'The Footman seemed to be talking in his confusion he bit a large piece out of the table. \'Have some wine,\' the March Hare. \'Yes, please do!\' but the great puzzle!\' And she tried to say a word, but.', '2018-08-25 16:15:00', '2018-08-25 16:15:00'),
(14, 74, 137, 'Latitude was, or Longitude either, but thought they were nice grand words to say.) Presently she began fancying the sort of a candle is blown out, for she thought, \'and hand round the neck of the.', '2018-08-25 16:15:01', '2018-08-25 16:15:01'),
(15, 75, 139, 'M?\' said Alice. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then treading on her face in her pocket, and pulled out a box of comfits, (luckily the salt water had not as.', '2018-08-25 16:15:02', '2018-08-25 16:15:02'),
(16, 76, 141, 'There was nothing so VERY much out of sight. Alice remained looking thoughtfully at the time they were nowhere to be in a tone of great dismay, and began bowing to the tarts on the hearth and.', '2018-08-25 16:15:04', '2018-08-25 16:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `followers`
--

CREATE TABLE `followers` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followers`
--

INSERT INTO `followers` (`id`, `author_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 41, 'rejected', '2018-08-25 05:40:03', '2018-08-25 07:10:52'),
(2, 77, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(4, 79, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(5, 80, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(6, 81, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(7, 82, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(8, 83, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(9, 84, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(10, 85, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(11, 86, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(12, 87, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(13, 88, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(14, 89, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(15, 90, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(16, 91, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(17, 92, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(18, 93, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(19, 94, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(20, 95, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(21, 96, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(22, 97, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(23, 98, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(24, 99, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(25, 100, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(26, 101, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(27, 111, 'accepted', NULL, NULL),
(28, 111, 'accepted', NULL, NULL),
(29, 43, 'rejected', '2018-08-25 07:11:48', '2018-08-25 07:11:48'),
(30, 43, 'pending', '2018-08-25 07:12:30', '2018-08-25 07:12:30'),
(31, 167, 'pending', '2018-08-25 16:15:27', '2018-08-25 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `followings`
--

CREATE TABLE `followings` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `status` enum('pending','accepted','rejected') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `followings`
--

INSERT INTO `followings` (`id`, `author_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 102, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(2, 103, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(3, 104, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(4, 105, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(5, 106, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(6, 107, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(7, 108, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(8, 109, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(9, 110, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(10, 111, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(11, 112, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(12, 113, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(13, 114, 'accepted', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(14, 115, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(15, 116, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(16, 117, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(17, 118, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(18, 119, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(19, 120, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(20, 121, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(21, 122, 'rejected', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(22, 123, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(23, 124, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(24, 125, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(25, 126, 'pending', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(26, 104, 'accepted', '2018-08-25 07:27:21', '2018-08-25 07:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(10) UNSIGNED NOT NULL,
  `photo_id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `photo_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 14, 27, '2018-08-25 05:39:56', '2018-08-25 05:39:56'),
(2, 15, 29, '2018-08-25 05:39:57', '2018-08-25 05:39:57'),
(3, 16, 31, '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(4, 17, 33, '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(5, 18, 35, '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(6, 37, 68, '2018-08-25 06:10:08', '2018-08-25 06:10:08'),
(7, 38, 70, '2018-08-25 06:10:15', '2018-08-25 06:10:15'),
(8, 39, 72, '2018-08-25 06:10:21', '2018-08-25 06:10:21'),
(9, 40, 74, '2018-08-25 06:10:22', '2018-08-25 06:10:22'),
(10, 41, 76, '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(11, 85, 153, '2018-08-25 16:15:22', '2018-08-25 16:15:22'),
(12, 86, 155, '2018-08-25 16:15:23', '2018-08-25 16:15:23'),
(13, 87, 157, '2018-08-25 16:15:24', '2018-08-25 16:15:24'),
(14, 88, 159, '2018-08-25 16:15:26', '2018-08-25 16:15:26'),
(15, 89, 161, '2018-08-25 16:15:27', '2018-08-25 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2017_09_06_062000_create_people_table', 1),
(3, '2017_09_06_063000_create_photos_table', 1),
(4, '2017_09_06_064000_create_comments_table', 1),
(5, '2018_08_18_090844_create_likes_table', 1),
(6, '2018_08_23_010645_create_followers_table', 1),
(7, '2018_08_23_010701_create_followings_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `people`
--

CREATE TABLE `people` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `salted_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `people`
--

INSERT INTO `people` (`id`, `username`, `email`, `salted_password`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'natalie.hilpert', 'zgulgowski@example.net', '.M-T2}', 'Rory', 'Runolfsdottir', '2018-08-25 05:39:34', '2018-08-25 05:39:34'),
(2, 'weber.edwardo', 'caroline.fay@example.org', 'FpHEm]a!', 'Jaydon', 'Zboncak', '2018-08-25 05:39:35', '2018-08-25 05:39:35'),
(3, 'douglas.maude', 'wintheiser.casey@example.com', 'Y\"7JB5', 'Jamison', 'Weissnat', '2018-08-25 05:39:36', '2018-08-25 05:39:36'),
(4, 'dayana.lehner', 'zanderson@example.net', 'mN\\y$t', 'Rosie', 'Zemlak', '2018-08-25 05:39:37', '2018-08-25 05:39:37'),
(5, 'ron.pfeffer', 'bins.noelia@example.org', '7fc\\u/f', 'Summer', 'Kuhn', '2018-08-25 05:39:38', '2018-08-25 05:39:38'),
(6, 'colby73', 'zjohnson@example.net', 'uKT)gkU18J9f\'8xvvpRD', 'Kayley', 'Hamill', '2018-08-25 05:39:39', '2018-08-25 05:39:39'),
(7, 'parker.beryl', 'orland71@example.org', '`z:Vkg^Fwu', 'Sandra', 'Huels', '2018-08-25 05:39:39', '2018-08-25 05:39:39'),
(8, 'flatley.aliyah', 'mstrosin@example.org', 'B1yBP\"Pe&WC', 'Karolann', 'Yundt', '2018-08-25 05:39:40', '2018-08-25 05:39:40'),
(9, 'helena.mcglynn', 'swalsh@example.org', ',c`>Mz', 'Cole', 'Lakin', '2018-08-25 05:39:40', '2018-08-25 05:39:40'),
(10, 'swaniawski.adrianna', 'trinity01@example.org', 'P4vW\"Lr$.!6N8', 'Ronaldo', 'Smith', '2018-08-25 05:39:41', '2018-08-25 05:39:41'),
(11, 'crona.zola', 'trudie01@example.com', 'S>t`0&u/', 'Aidan', 'Heidenreich', '2018-08-25 05:39:41', '2018-08-25 05:39:41'),
(12, 'levi53', 'dietrich.kieran@example.com', 'g:3Q=j;f|_dn9r@', 'Monty', 'Mueller', '2018-08-25 05:39:42', '2018-08-25 05:39:42'),
(13, 'mayert.marguerite', 'reynold.rohan@example.org', 'w?xH-Q7P](,c+bis3', 'Priscilla', 'Hoppe', '2018-08-25 05:39:42', '2018-08-25 05:39:42'),
(14, 'wyman.assunta', 'swest@example.com', 'l24LbmW[$rb6?', 'Darron', 'Bosco', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(15, 'brenna.tromp', 'marisol61@example.org', 'h1-Y(y6!z^]f$', 'Aglae', 'Okuneva', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(16, 'uhand', 'timmothy76@example.org', 'ZhB?WX:uo[>!v', 'Kristopher', 'Wyman', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(17, 'ujohns', 'ryan.laurence@example.org', 'V&Aw>1yE@j4-VmLG', 'Jessy', 'Dickinson', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(18, 'carter.korbin', 'dicki.khalil@example.net', 'k\'b#(Z3LN=', 'Madelyn', 'Von', '2018-08-25 05:39:44', '2018-08-25 05:39:44'),
(19, 'bosco.emile', 'cummerata.tianna@example.com', 'mi/Y!mqp:b,/t6', 'Alfreda', 'Kuvalis', '2018-08-25 05:39:45', '2018-08-25 05:39:45'),
(20, 'skohler', 'rice.guy@example.org', 'c8~0l<', 'Yasmine', 'Rau', '2018-08-25 05:39:47', '2018-08-25 05:39:47'),
(21, 'jeffrey18', 'hayes.ebony@example.com', '\'^9ek5)]SVV>ft`m', 'Asa', 'Collier', '2018-08-25 05:39:48', '2018-08-25 05:39:48'),
(22, 'nova.boehm', 'lourdes.sanford@example.com', 'eY0Bt/`fWG', 'Anthony', 'Murazik', '2018-08-25 05:39:49', '2018-08-25 05:39:49'),
(23, 'brennon10', 'wmuller@example.net', '0$%t8v^&@P9#Y$xY4Be', 'Gregorio', 'Bernhard', '2018-08-25 05:39:50', '2018-08-25 05:39:50'),
(24, 'bell.lynch', 'brooklyn.daniel@example.com', '=yIP(zH1W]]Sv2AP-eW', 'Jackie', 'Stracke', '2018-08-25 05:39:53', '2018-08-25 05:39:53'),
(25, 'chelsie95', 'arely17@example.org', '&c\'eXM5XZP', 'Flo', 'Waelchi', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(26, 'estell49', 'maynard58@example.com', 'ucPHPe|', 'Camila', 'Flatley', '2018-08-25 05:39:56', '2018-08-25 05:39:56'),
(27, 'hickle.kendall', 'sherwood.heidenreich@example.org', '!1#J2-MKKc9j', 'Jay', 'Wisozk', '2018-08-25 05:39:56', '2018-08-25 05:39:56'),
(28, 'mckenzie.edwin', 'bogisich.doyle@example.org', '/=,Pde!9Q}.$}uM', 'Gregory', 'Hayes', '2018-08-25 05:39:57', '2018-08-25 05:39:57'),
(29, 'giovanni.mertz', 'rhackett@example.org', 'V/FTN@a', 'Savanna', 'Tromp', '2018-08-25 05:39:57', '2018-08-25 05:39:57'),
(30, 'treutel.francis', 'nova.graham@example.org', 'Dw.l0,Y}iA%', 'Jaycee', 'Denesik', '2018-08-25 05:40:00', '2018-08-25 05:40:00'),
(31, 'fkemmer', 'okon.alysson@example.net', '7I[m#l&43BlV14:Ymf', 'Abbey', 'Rippin', '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(32, 'medhurst.sabina', 'jones.pedro@example.org', '5;(H?5nf!e-7-', 'Anastacio', 'Bailey', '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(33, 'david95', 'zreichel@example.org', '\\6YRo?&s]?', 'Bonita', 'Kozey', '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(34, 'xbartoletti', 'aracely17@example.org', 'puui-Vo6T_t', 'Verlie', 'Rau', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(35, 'christine16', 'jgulgowski@example.net', '/Q*d`__{c', 'Darius', 'Willms', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(36, 'domenick84', 'reid.ortiz@example.org', 'KYm\'n3$_)<Ik', 'Gina', 'Rempel', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(37, 'kristy18', 'olarkin@example.net', '@ygwcQMflfC', 'Cristopher', 'Raynor', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(38, 'lurline.hirthe', 'fframi@example.net', '-{!Xwk', 'Craig', 'McClure', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(39, 'katharina02', 'volkman.piper@example.net', '<mau0%X8', 'Sam', 'Reichert', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(40, 'larue38', 'tbayer@example.com', 'V)yZ;m#1P>3Sd', 'Noe', 'Champlin', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(41, 'tyrique.yost', 'daniela68@example.org', 'sK{j\'M5gpRqoJ%ZR_H', 'Einar', 'Wilderman', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(42, 'schroeder.laney', 'brolfson@example.net', '#|lTk6(EBZI2O<d', 'Clotilde', 'Lynch', '2018-08-25 06:08:33', '2018-08-25 06:08:33'),
(43, 'kurtis.gleichner', 'elenor.hills@example.com', 'myl,j3<XT\'F(,E2', 'Mabel', 'Dach', '2018-08-25 06:08:40', '2018-08-25 06:08:40'),
(44, 'witting.berniece', 'kira93@example.com', '/KQp<!C_HF$Oq=u?ZX/x', 'Emmett', 'Jacobson', '2018-08-25 06:08:47', '2018-08-25 06:08:47'),
(45, 'kadin74', 'hilpert.cicero@example.net', 'S(\'Y(@:V&}4%fmy!6TV', 'Eryn', 'Prohaska', '2018-08-25 06:08:51', '2018-08-25 06:08:51'),
(46, 'augusta.macejkovic', 'drake09@example.net', '4d10+:\'sOL{PDS:3ad19', 'Lindsay', 'McLaughlin', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(47, 'opadberg', 'oglover@example.com', '&EpB?~N{[', 'Domenick', 'Hagenes', '2018-08-25 06:09:05', '2018-08-25 06:09:05'),
(48, 'tiana12', 'creola.aufderhar@example.net', '0X<~71\"tAqgIsKFL', 'Ryan', 'McGlynn', '2018-08-25 06:09:05', '2018-08-25 06:09:05'),
(49, 'rpaucek', 'orohan@example.org', '_3qgNx.B9le[!R', 'Nyah', 'Kreiger', '2018-08-25 06:09:08', '2018-08-25 06:09:08'),
(50, 'tyree.reynolds', 'lessie.jaskolski@example.com', '3w(jZg`ByzJ_M.CHn}', 'Silas', 'Klocko', '2018-08-25 06:09:08', '2018-08-25 06:09:08'),
(51, 'dahlia.bernier', 'makenna.crist@example.net', 'N=NJi*e/?B\")8iwM`)', 'Joe', 'Mayer', '2018-08-25 06:09:12', '2018-08-25 06:09:12'),
(52, 'uolson', 'wlueilwitz@example.org', '(>#DL;', 'Shirley', 'McClure', '2018-08-25 06:09:12', '2018-08-25 06:09:12'),
(53, 'abner.watsica', 'lillian.halvorson@example.com', 'DM6m<z2/i!j_gk<?BZ9', 'Harley', 'Reinger', '2018-08-25 06:09:15', '2018-08-25 06:09:15'),
(54, 'heidi.gleichner', 'danial31@example.org', 'Ba_E_r2pTwa', 'Kenyon', 'Larson', '2018-08-25 06:09:15', '2018-08-25 06:09:15'),
(55, 'leslie.heaney', 'mara42@example.com', 'k6n+n3*O/5)', 'Bernadette', 'Leannon', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(56, 'ymayer', 'pink29@example.com', 'l9=J=PY*', 'Elian', 'Wyman', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(57, 'stuart.fadel', 'rowland59@example.net', 'xhu}q/{R}}}v', 'Leland', 'Conroy', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(58, 'jakob.schoen', 'gerlach.abdiel@example.org', 'vYuBq^p5?$\\)A[a.MW}!', 'Maximo', 'Runolfsson', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(59, 'qjaskolski', 'lula92@example.com', 'Y5l82>E', 'Hayley', 'Friesen', '2018-08-25 06:09:21', '2018-08-25 06:09:21'),
(60, 'dbayer', 'jaquan.king@example.org', 'N-Fy?17TF4O?B)rb8\'7', 'Kaylin', 'Rau', '2018-08-25 06:09:24', '2018-08-25 06:09:24'),
(61, 'mann.marguerite', 'fwatsica@example.net', 'ZCJJR\"P&M8[RQ', 'Effie', 'Price', '2018-08-25 06:09:27', '2018-08-25 06:09:27'),
(62, 'kiehn.pierce', 'eveline23@example.com', 'mOE[Dj1^}%$(OohH/#U*', 'Layla', 'Romaguera', '2018-08-25 06:09:32', '2018-08-25 06:09:32'),
(63, 'derick34', 'ernest91@example.net', 'n\'=\"wf3*\"', 'Reginald', 'McKenzie', '2018-08-25 06:09:37', '2018-08-25 06:09:37'),
(64, 'jhettinger', 'stefanie49@example.com', '~h<=A.+j', 'Katelynn', 'Hamill', '2018-08-25 06:09:44', '2018-08-25 06:09:44'),
(65, 'wilderman.franco', 'dickinson.bridie@example.org', '6T>Nl00o', 'Esperanza', 'Schroeder', '2018-08-25 06:09:54', '2018-08-25 06:09:54'),
(66, 'betty34', 'luettgen.federico@example.com', 'Ue%J\"3OYN', 'Amanda', 'Wisoky', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(67, 'paucek.jay', 'xdickens@example.com', '%.9Gw2|\'pO\\Hon6', 'Jacynthe', 'Boyle', '2018-08-25 06:10:08', '2018-08-25 06:10:08'),
(68, 'cremin.anahi', 'cordell.wilderman@example.net', '8H.aoEAp<7', 'Hassie', 'Purdy', '2018-08-25 06:10:08', '2018-08-25 06:10:08'),
(69, 'reese.rohan', 'rjacobs@example.com', '-_kF\'y-@N~', 'Sebastian', 'Moen', '2018-08-25 06:10:15', '2018-08-25 06:10:15'),
(70, 'barrows.heather', 'vkeebler@example.com', 'lfJo`qj/P@y\'X', 'Mavis', 'Labadie', '2018-08-25 06:10:15', '2018-08-25 06:10:15'),
(71, 'vkoepp', 'hyatt.felicity@example.org', 'i&WcJ}vI+*=e', 'Juliana', 'Mills', '2018-08-25 06:10:21', '2018-08-25 06:10:21'),
(72, 'feeney.harry', 'ndibbert@example.org', 'N1)D9XBkD7', 'Shanelle', 'Bergstrom', '2018-08-25 06:10:21', '2018-08-25 06:10:21'),
(73, 'prunolfsdottir', 'tyreek32@example.net', 'O;xr[!</j!RX', 'Breanne', 'Dibbert', '2018-08-25 06:10:22', '2018-08-25 06:10:22'),
(74, 'egrant', 'bonita.orn@example.com', 'wbh4[n/OjK', 'Gilda', 'Jacobs', '2018-08-25 06:10:22', '2018-08-25 06:10:22'),
(75, 'roob.durward', 'pinkie.thiel@example.org', '3&7p}k7x3{F_h.v2', 'Lon', 'Gutkowski', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(76, 'sadie.mertz', 'kariane10@example.net', '(kjGTmFf\'!jXe', 'Kari', 'Hodkiewicz', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(77, 'raheem.windler', 'morgan.collier@example.net', 'FG?/*}Uo$3(in1UzvMg', 'Candelario', 'Rodriguez', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(78, 'rempel.pearline', 'alanna82@example.org', 'Rsk-]?', 'Lane', 'McLaughlin', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(79, 'cloyd.wiegand', 'hartmann.eliane@example.net', 'nma>U^x-r0Z@', 'Hardy', 'Goyette', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(80, 'kassulke.willow', 'audrey32@example.com', '{R8#I3.Gc%G', 'Kyler', 'Bins', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(81, 'cbosco', 'elinore23@example.com', 'eB!?ma`+09>3+t', 'Ismael', 'Becker', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(82, 'rickie85', 'zberge@example.com', '1+c]w-', 'Kendall', 'Turner', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(83, 'vdurgan', 'abdul.toy@example.net', '9zhwO&vQ-`Q', 'Ofelia', 'Davis', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(84, 'krajcik.gayle', 'breanna07@example.net', '^:n|s<^#04\\n6qEukz<', 'Letha', 'Ullrich', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(85, 'richmond90', 'ruben66@example.net', 'Y!;D$<hD\'i+E}HT', 'Augusta', 'Wisoky', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(86, 'issac.larkin', 'candace.boehm@example.com', '!eOPq.g&jqA', 'Theresia', 'Hermann', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(87, 'hickle.jordy', 'padberg.bertrand@example.net', '-7PK!/0fsA=M\")(t58', 'Kristoffer', 'Schroeder', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(88, 'kianna.orn', 'grady.tyson@example.com', 'O>1c5D3+2z', 'Yvonne', 'Wehner', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(89, 'susanna.barrows', 'stefan.bartell@example.com', 'h?mzT?rTu', 'Adrianna', 'Kozey', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(90, 'monserrate.roberts', 'jerrod90@example.com', '_<xOkD4pY29!Gfb\'w', 'Trudie', 'Tillman', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(91, 'wyman.walsh', 'willa37@example.org', 'F2+PRi12j~\"D%tiV@f', 'Justen', 'Kirlin', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(92, 'carolyn55', 'oscar.pfannerstill@example.com', 'e0p{ee%AE?D:/\'.`>kv', 'Verna', 'Ruecker', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(93, 'mayert.katheryn', 'hoppe.eryn@example.org', 'j7zL<)>^*3|G', 'Susie', 'White', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(94, 'benton95', 'heaney.megane@example.com', 'd5^n@Oo/4[-', 'Malika', 'O\'Connell', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(95, 'collins.karianne', 'preynolds@example.org', 'V<D|y+qgQPuH!N4W', 'Leora', 'Quigley', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(96, 'hoppe.lia', 'zetta98@example.com', '\\~ZTX-Dd+_', 'Caden', 'Fritsch', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(97, 'weber.estel', 'caesar17@example.org', 'c4r:o${pyfJ[!fk}', 'Olga', 'Ebert', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(98, 'dkuhic', 'bosco.arnulfo@example.com', 'bE/I=%<^$Ml$S%teX[)A', 'Toney', 'Kris', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(99, 'amber29', 'torrey27@example.net', 'KzXd,V*C<MLPA\'P', 'Odessa', 'Schneider', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(100, 'wilma98', 'jayden.stamm@example.net', '8+()=WNZ\";W\"BjU\"e7', 'Edmund', 'Kozey', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(101, 'douglas30', 'eschowalter@example.com', '5Q1zV#=IhWss)=H', 'Mariano', 'Thiel', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(102, 'lockman.rahul', 'spinka.jermaine@example.com', '!\'.z-rjKTgr>>SWJ', 'Michele', 'Hermann', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(103, 'ivory.quigley', 'connelly.adela@example.org', 'fv5GSk0', 'Deion', 'Lehner', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(104, 'freeda.ernser', 'chad00@example.com', '9*Ld$W!5ap{;', 'Kylie', 'Bailey', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(105, 'urobel', 'rkerluke@example.net', 'u|sN*{prbzVG{5ia!', 'Heloise', 'Keeling', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(106, 'altenwerth.margret', 'elmo33@example.com', 'AI.R9V@%2XJ|)[_#Asya', 'Maggie', 'Fahey', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(107, 'fortiz', 'whowell@example.net', 'c?I6txnu', 'Mossie', 'Schmeler', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(108, 'buckridge.maritza', 'nsawayn@example.com', 'k8Cm$;^FR^r<\\V![w\'^U', 'Tyra', 'Feeney', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(109, 'mills.kale', 'rheathcote@example.org', 't=j/aru~)Ch\'_h`.\'z', 'Dessie', 'Harvey', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(110, 'destini09', 'junius82@example.com', ',1:;!}l', 'Oswaldo', 'Hayes', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(111, 'adella15', 'bahringer.chelsie@example.net', 'o>*i@`&y', 'Dominic', 'Greenfelder', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(112, 'chester76', 'doris50@example.com', 'pU-;h^\"QB{dEYlq~P', 'Brionna', 'Lubowitz', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(113, 'lloyd56', 'pkub@example.com', 'X4Yn\'K.!o)I:Nq', 'Richmond', 'Predovic', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(114, 'halle18', 'austen.mcdermott@example.org', '\'!>nq-:>ODPQ\'c', 'Jordy', 'Raynor', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(115, 'jaleel.lakin', 'kasey.klein@example.com', '\'\\%-~v{3a', 'Stephany', 'Strosin', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(116, 'frida53', 'igraham@example.com', 'jOA?&T<$dM5`iA_<mQy', 'Evelyn', 'Walker', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(117, 'mckenzie.brock', 'gwendolyn.lebsack@example.com', 'l<8_egLLMFm', 'Ciara', 'Paucek', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(118, 'flatley.destiney', 'nyah86@example.net', '\\m/)Rr=m', 'Alta', 'Romaguera', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(119, 'raquel90', 'koch.camilla@example.net', 'N_R`=&$NYq.WlM/wjU%', 'Oswaldo', 'Pouros', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(120, 'crystal41', 'harris.dan@example.net', '6er_E]i93tOZqQke\'9)', 'Kassandra', 'Donnelly', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(121, 'leopold.schulist', 'frankie.nienow@example.org', '>^wl#QkHjxZ#cv0!|n6`', 'Mafalda', 'Mayer', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(122, 'padberg.hazle', 'sanford.narciso@example.net', '\"_61r>4PJ', 'Maximillia', 'Watsica', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(123, 'frida08', 'jacobs.sarai@example.com', 'krk;\")hr27\'qTY#.c', 'Marquise', 'Waelchi', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(124, 'uroberts', 'alvis.schulist@example.net', 'KZ7d,?k/RN8so>u,', 'Ayden', 'Jacobson', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(125, 'marcella.quitzon', 'dbeatty@example.com', 'ULmMV#r]}w/;Um', 'Rudolph', 'Tremblay', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(126, 'raymundo54', 'derek.mckenzie@example.com', 'U.kFqz_', 'Viva', 'Koelpin', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(127, 'senger.elenora', 'nikki55@example.org', '2?RWU`>09F@K/', 'America', 'McLaughlin', '2018-08-25 16:14:53', '2018-08-25 16:14:53'),
(128, 'flavie.beahan', 'hwindler@example.com', '$8o.#uUz\"Z', 'Diamond', 'Lesch', '2018-08-25 16:14:54', '2018-08-25 16:14:54'),
(129, 'electa.lubowitz', 'rodriguez.orrin@example.org', '2,-qPc=EaY:af4', 'Roxanne', 'Miller', '2018-08-25 16:14:55', '2018-08-25 16:14:55'),
(130, 'ramiro05', 'qabbott@example.com', 'MpV6}zqCXL>{lbW', 'Aubree', 'Schinner', '2018-08-25 16:14:56', '2018-08-25 16:14:56'),
(131, 'odell.huels', 'brycen.turner@example.com', 'uagde5ZFB', 'Isabel', 'Streich', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(132, 'cluettgen', 'murphy.jamal@example.net', '1rXN=owHd(ZY', 'Clay', 'Kovacek', '2018-08-25 16:14:59', '2018-08-25 16:14:59'),
(133, 'weber.hanna', 'qjohnston@example.net', '.{=7nul;U]|$', 'Demarcus', 'Schroeder', '2018-08-25 16:14:59', '2018-08-25 16:14:59'),
(134, 'dzemlak', 'cshields@example.org', '\'k;ZPPtq37fx]eanXFk', 'Amos', 'Schaefer', '2018-08-25 16:15:00', '2018-08-25 16:15:00'),
(135, 'karson.cassin', 'chloe.klein@example.com', '(]jXYz4zj8RP2*', 'Mayra', 'Hermiston', '2018-08-25 16:15:00', '2018-08-25 16:15:00'),
(136, 'cwehner', 'joe51@example.org', '@a[R)eJH3;Ce%X', 'Veda', 'Will', '2018-08-25 16:15:01', '2018-08-25 16:15:01'),
(137, 'bruen.cordia', 'april.considine@example.org', '/#8@<\\)_-', 'Aylin', 'Wyman', '2018-08-25 16:15:01', '2018-08-25 16:15:01'),
(138, 'gweber', 'marlin.davis@example.com', '2~+sr)~lar\"fUP\"@m', 'Vivien', 'Kub', '2018-08-25 16:15:02', '2018-08-25 16:15:02'),
(139, 'emilia99', 'fwillms@example.org', '4nOs-F', 'Nicklaus', 'Bechtelar', '2018-08-25 16:15:02', '2018-08-25 16:15:02'),
(140, 'sebastian.schaden', 'roslyn37@example.net', 'Fha}XuI', 'Maci', 'Kautzer', '2018-08-25 16:15:04', '2018-08-25 16:15:04'),
(141, 'fhamill', 'mstanton@example.org', '{[.^WK83', 'Holly', 'Kuhn', '2018-08-25 16:15:04', '2018-08-25 16:15:04'),
(142, 'beier.gilbert', 'schimmel.gilda@example.com', '4v%<>^I', 'Erling', 'Nikolaus', '2018-08-25 16:15:04', '2018-08-25 16:15:04'),
(143, 'oda.leannon', 'arice@example.com', 'ggrrxf.o', 'Reyes', 'Wiza', '2018-08-25 16:15:04', '2018-08-25 16:15:04'),
(144, 'lavinia17', 'iferry@example.org', 'ie/y%/(RKP$', 'Alivia', 'Swaniawski', '2018-08-25 16:15:08', '2018-08-25 16:15:08'),
(145, 'haag.antonetta', 'jacques.corwin@example.com', '()ImaWhDgj_', 'Carmella', 'Pollich', '2018-08-25 16:15:12', '2018-08-25 16:15:12'),
(146, 'wendell.wunsch', 'aditya.dubuque@example.com', 'ZDR0#f~^*$D5W_E\"g', 'Eda', 'Dickinson', '2018-08-25 16:15:14', '2018-08-25 16:15:14'),
(147, 'gdietrich', 'loy.schiller@example.com', '$7I;%?D?4u{^*z', 'Kieran', 'Carroll', '2018-08-25 16:15:16', '2018-08-25 16:15:16'),
(148, 'breitenberg.lennie', 'akautzer@example.net', 'gEKw-^R#])lr<_v`', 'Germaine', 'Brown', '2018-08-25 16:15:17', '2018-08-25 16:15:17'),
(149, 'rwitting', 'don36@example.org', 'AEwDBW:!F', 'Earlene', 'Mertz', '2018-08-25 16:15:18', '2018-08-25 16:15:18'),
(150, 'angelo01', 'nash.hermiston@example.net', '@Bm\\yd-1+s1-0qa', 'Hershel', 'Moen', '2018-08-25 16:15:19', '2018-08-25 16:15:19'),
(151, 'nolan.ellen', 'xzavier12@example.net', '~Wf\"q0', 'Betsy', 'Cummings', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(152, 'brant.kautzer', 'lilyan.bednar@example.net', '/pSQO2-', 'Glenda', 'Schaefer', '2018-08-25 16:15:22', '2018-08-25 16:15:22'),
(153, 'joannie.considine', 'oreilly.newton@example.net', '&XO(Jf\"d', 'Name', 'Heaney', '2018-08-25 16:15:22', '2018-08-25 16:15:22'),
(154, 'stefanie.hodkiewicz', 'jzboncak@example.org', ']rRP2p!pMmDYH', 'Edgardo', 'Hane', '2018-08-25 16:15:23', '2018-08-25 16:15:23'),
(155, 'nabernathy', 'sherwood.oconnell@example.com', '?OT\"FeifL,\'SN', 'Orpha', 'Cummings', '2018-08-25 16:15:23', '2018-08-25 16:15:23'),
(156, 'gaston80', 'strosin.deanna@example.net', 'eiG5eshywaJ2zLFD)', 'Alejandrin', 'Heller', '2018-08-25 16:15:24', '2018-08-25 16:15:24'),
(157, 'alivia26', 'luis25@example.net', 'Y)TAWr_;:Z*X4', 'Reagan', 'Howe', '2018-08-25 16:15:24', '2018-08-25 16:15:24'),
(158, 'prince37', 'beer.colt@example.com', 'w#{m#e$]EJ.!!$t3BN', 'Tanya', 'Mayert', '2018-08-25 16:15:26', '2018-08-25 16:15:26'),
(159, 'ryder22', 'isidro.dicki@example.org', 'dIZY|9JT\\KOVtwB/', 'Vella', 'Orn', '2018-08-25 16:15:26', '2018-08-25 16:15:26'),
(160, 'alisa.sipes', 'fadel.prudence@example.net', '*tE+jp18{<9=WR1', 'Christa', 'Rau', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(161, 'elza70', 'ankunding.newton@example.com', '.E!WE)_]-6c+mI\'Ig1', 'Hellen', 'Schneider', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(162, 'davin.jaskolski', 'florine33@example.com', '>cl2o@I>`-Z_1;3D>/*a', 'Pattie', 'Okuneva', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(163, 'parker.clara', 'kim.bernhard@example.net', '<Sci{WZ-bXD7j', 'Karine', 'Quitzon', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(164, 'wolff.robyn', 'pboehm@example.com', '.[wfA|Jy3HwbG', 'Dexter', 'Hammes', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(165, 'bergstrom.ayden', 'leland38@example.com', '2P(eM.\"{;@^z5w6', 'Reggie', 'Stoltenberg', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(166, 'kub.ramon', 'cartwright.sabina@example.com', 'Z9qjmm~]x0*2PMxDo', 'Alba', 'Daugherty', '2018-08-25 16:15:27', '2018-08-25 16:15:27'),
(167, 'anita.pfannerstill', 'kaycee50@example.com', 'vKmts7{h4#&', 'Josianne', 'Wiza', '2018-08-25 16:15:27', '2018-08-25 16:15:27');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(10) UNSIGNED NOT NULL,
  `caption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `author_id`, `caption`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'Veritatis porro eos praesentium sit. Est et nulla sunt placeat voluptatem aspernatur.', '4652396c9ee3d3fb112465b8e62112ca.jpg', '2018-08-25 05:39:38', '2018-08-25 05:39:38'),
(4, 4, 'Et aliquam aut iusto sint. Quasi in ut numquam recusandae laudantium sit.', '93c666398222baf2e0e94b2f0eee45da.jpg', '2018-08-25 05:39:38', '2018-08-25 05:39:38'),
(5, 5, 'Sint hic sit tempore vitae et. Eligendi quo dolores tempore rerum.', '02ed09d119239e76e0a3061ae65e712a.jpg', '2018-08-25 05:39:38', '2018-08-25 05:39:38'),
(6, 6, 'Maiores soluta ea sed nobis est sit reprehenderit. Eaque qui amet error reiciendis voluptate.', '915c36a8410363253cdd07fb5e102ec5.jpg', '2018-08-25 05:39:39', '2018-08-25 05:39:39'),
(7, 8, 'Suscipit reiciendis incidunt rerum ut. In recusandae in et dicta cumque quo.', '9d588c4f88de3b30ade16f6a433721ff.jpg', '2018-08-25 05:39:40', '2018-08-25 05:39:40'),
(8, 10, 'Corporis et iste eos veritatis voluptatem dicta. Voluptatum illum et qui nihil.', '3b7d7a3d9455f067a63f8614f8851610.jpg', '2018-08-25 05:39:41', '2018-08-25 05:39:41'),
(9, 12, 'Et odit veniam placeat est quasi. Nesciunt est recusandae fugiat quo enim.', '9080e0f04def70afa2ce7f444c4d177c.jpg', '2018-08-25 05:39:42', '2018-08-25 05:39:42'),
(10, 14, 'Veniam explicabo aperiam nobis natus. Facere fugit dolorem magnam non. Qui rerum unde recusandae.', 'a2f6f9e08675593e5c4c636caf1c3877.jpg', '2018-08-25 05:39:43', '2018-08-25 05:39:43'),
(11, 18, 'Quibusdam quidem doloremque quas magnam aliquam quidem. Rerum sed quis et aperiam.', '9fe1c59328f85216edfe55721a5477f5.jpg', '2018-08-25 05:39:47', '2018-08-25 05:39:47'),
(12, 19, 'Id rerum minima hic. Non quas quo dicta et repudiandae quo. Labore occaecati amet eos quod.', 'f9061dec3de646e8f4d67e698a731e07.jpg', '2018-08-25 05:39:47', '2018-08-25 05:39:47'),
(13, 20, 'In iste ad neque similique. Ut quisquam eos et in eos dicta natus. Iure incidunt rerum quae.', '5eece12fbe4177cce5aa34bb187fefe2.jpg', '2018-08-25 05:39:47', '2018-08-25 05:39:47'),
(14, 21, 'Cum dolorem enim illo sint at. Quaerat sunt magnam assumenda explicabo fuga. Velit enim sit neque.', '804cfe0683085cd45c0d5d7843c4f001.jpg', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(15, 22, 'Consequatur beatae autem repudiandae facilis ipsam neque id. Saepe pariatur consequatur ex.', '1b7dd3c02d127ff968134eb05151f8c1.jpg', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(16, 23, 'Quia sunt quis id doloribus est est. Voluptatem amet et enim placeat.', '229f524dbe089ca0e7d2e61bf41bdeb1.jpg', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(17, 24, 'Qui veritatis eum nulla quod. Sapiente architecto aut aut ut. Ullam ut est labore nostrum rerum.', '2af7cba6ce92657d383c339944d3243f.jpg', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(18, 25, 'Quia dolores sequi ipsum omnis. Omnis adipisci aut voluptas hic commodi.', '8c394c34d10c10d7f89a6fad1ff5e158.jpg', '2018-08-25 05:39:54', '2018-08-25 05:39:54'),
(19, 26, 'Dolorem quis illo atque voluptas nam. Beatae reiciendis pariatur voluptatem.', '2166880338d395b8b84e01cfccc4e66e.jpg', '2018-08-25 05:39:56', '2018-08-25 05:39:56'),
(20, 28, 'Ipsam iste dolor et numquam tempora et possimus. Earum numquam ipsa qui nobis molestias.', 'b5863e59bbf150e3e7070e9a1d407804.jpg', '2018-08-25 05:39:57', '2018-08-25 05:39:57'),
(21, 30, 'Illo qui magni non consequuntur est aut. Facere ipsam ut id enim enim eius. Sit sit et esse.', '5a367d0d53b309d44c2cd9745fbf3f6e.jpg', '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(22, 32, 'Nostrum illum a est non. Voluptatem eum quia et esse. Ad rerum nobis et consequatur.', '1473e80d04dfab0066cb4e7b795f2544.jpg', '2018-08-25 05:40:01', '2018-08-25 05:40:01'),
(23, 34, 'Dolor ut molestiae et mollitia. Tempora sit non beatae. Deserunt aperiam fuga magni odit.', 'dee3bca44768fe4eed20e264cbaf95ac.jpg', '2018-08-25 05:40:03', '2018-08-25 05:40:03'),
(24, 42, 'Ut suscipit distinctio et et. Corrupti non eos non maiores ipsa laborum repudiandae et.', '6aca63e6afcb8fc6cc488fd4b774abf4.jpg', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(25, 43, 'Dolores omnis quia libero ducimus voluptatum voluptas tempora. Nemo voluptatum nostrum ipsa.', 'c76468e72f070f210d1431f89cf00ec5.jpg', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(26, 44, 'Odit nam illum totam perspiciatis. Magnam eos et quia mollitia. Iure molestiae eum eos nesciunt.', '5d7f7a8c47e73fae0adc79263aa2dd8b.jpg', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(27, 45, 'Officiis voluptatibus aut corporis quis ut ipsum. Debitis ut voluptates dolor enim fuga odit.', 'a7bb02c823961c09724cba9ea1e3ef39.jpg', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(28, 46, 'Dolorem modi accusantium qui. Mollitia aut qui reiciendis.', '6a8382f67a307fcc3683dbd0a078d9b0.jpg', '2018-08-25 06:08:57', '2018-08-25 06:08:57'),
(29, 47, 'Et repellendus quo ipsum omnis veniam. Est sed quas sed aut. Tenetur voluptas dolorum eveniet.', '24be7fea10caa52f7f1654ff2a2454c1.jpg', '2018-08-25 06:09:05', '2018-08-25 06:09:05'),
(30, 49, 'Voluptates eius id omnis in nisi. Possimus et omnis eveniet sit provident corporis sequi.', '7eb1ec1c3e14645d9198729ed827943d.jpg', '2018-08-25 06:09:08', '2018-08-25 06:09:08'),
(31, 51, 'Quia voluptatem suscipit quae doloribus aut. Illum aut libero provident ipsam laudantium.', '533e41df012845edb4e52fd2479bb824.jpg', '2018-08-25 06:09:12', '2018-08-25 06:09:12'),
(32, 53, 'Non dolorem quaerat fugit soluta iusto et hic. Harum iusto quod velit non consequatur quis.', '5c0b5837a1b67978f619064ffc019954.jpg', '2018-08-25 06:09:15', '2018-08-25 06:09:15'),
(33, 55, 'In praesentium incidunt ut qui. Sed temporibus a quaerat aperiam voluptas. Animi sequi ut qui id.', '2857fedc2449adad9cf8510b8a7b897e.jpg', '2018-08-25 06:09:17', '2018-08-25 06:09:17'),
(34, 59, 'Aut expedita veritatis dolorem fuga sed et. Unde quae et sequi nihil neque accusamus consequuntur.', 'dcdbf3afe1f9d1678e17a0d8ea838789.jpg', '2018-08-25 06:09:27', '2018-08-25 06:09:27'),
(35, 60, 'Atque voluptatem quasi ut inventore voluptatibus. Ut minima ullam autem.', '1f550875cc6fe0cb04a45a79b8f98cf1.jpg', '2018-08-25 06:09:27', '2018-08-25 06:09:27'),
(36, 61, 'Facilis eum beatae quos odio. Sit vel sit odit qui.', '059feedc75dda32921e672b3da89d123.jpg', '2018-08-25 06:09:27', '2018-08-25 06:09:27'),
(37, 62, 'Quis omnis non sequi sunt et sunt. Quam ut autem repellendus cumque optio qui iure.', '9a08c901ec379849a79c77ff9e66358e.jpg', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(38, 63, 'Veritatis repellat iusto quia explicabo incidunt voluptas quis ad. Qui temporibus qui in voluptas.', '058b9ab343cb323d557f3862ea991023.jpg', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(39, 64, 'Sit aspernatur velit quae quidem minima. Vero in voluptatem at aut.', 'b9bc409a16d71ff7c115d450c94055bb.jpg', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(40, 65, 'Excepturi modi animi et aliquid neque impedit. Provident est earum aut sint et.', '45afaf82ee9d90008e1f6dbdde48cd31.jpg', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(41, 66, 'Doloribus deserunt et nisi voluptas aut quae ut. Repudiandae delectus eum facilis et enim.', '73f8dd0177e6143faa8735d5ce5ce600.jpg', '2018-08-25 06:10:00', '2018-08-25 06:10:00'),
(42, 67, 'Est molestiae ea non dolor sed nam. Sed enim non ratione ipsam atque. Aut ut nisi sunt.', 'e4b57f76e2368595e1c6cb60d7001451.jpg', '2018-08-25 06:10:08', '2018-08-25 06:10:08'),
(43, 69, 'Deleniti rerum molestias rerum officia. Sit sed sed aut aut deleniti voluptas sed.', 'd5a73066abdeaa514d1fd43b8000ba22.jpg', '2018-08-25 06:10:15', '2018-08-25 06:10:15'),
(44, 71, 'Accusantium sint natus ex rerum non. Aspernatur id aut tenetur nesciunt.', '9f2d854c20d9ed617701e9be597295a4.jpg', '2018-08-25 06:10:21', '2018-08-25 06:10:21'),
(45, 73, 'Autem quia non voluptate et vero. Facere provident consequatur soluta iusto harum nulla aut.', 'ab4f6462818021b405b2dce4e961c73e.jpg', '2018-08-25 06:10:22', '2018-08-25 06:10:22'),
(46, 75, 'Fuga tempore voluptas odit quia accusamus expedita. Earum quia sit reprehenderit qui provident.', '2f1b27758252deb767bf9b70ff9568e7.jpg', '2018-08-25 06:10:25', '2018-08-25 06:10:25'),
(47, 5, '\"lollllll\"', '.jpg', '2018-08-25 15:31:17', '2018-08-25 15:31:17'),
(48, 5, 'lollllll', '.jpg', '2018-08-25 15:31:42', '2018-08-25 15:31:42'),
(49, 5, 'lollllll', '.jpg', '2018-08-25 15:31:58', '2018-08-25 15:31:58'),
(50, 5, 'lollllll', '/home/hell/sucked/public/images/.jpg', '2018-08-25 15:32:37', '2018-08-25 15:32:37'),
(51, 5, 'lollllll', '/home/hell/sucked/public/images/.jpg', '2018-08-25 15:39:56', '2018-08-25 15:39:56'),
(52, 5, 'lollllll', '/tmp/phpM7UIDN', '2018-08-25 15:43:42', '2018-08-25 15:43:42'),
(53, 5, 'lollllll', '/tmp/phpeVQhLa', '2018-08-25 15:43:46', '2018-08-25 15:43:46'),
(54, 5, 'lollllll', '.jpg', '2018-08-25 15:44:26', '2018-08-25 15:44:26'),
(55, 5, 'lollllll', '.jpg', '2018-08-25 15:46:06', '2018-08-25 15:46:06'),
(56, 5, 'lollllll', '.jpg', '2018-08-25 15:46:08', '2018-08-25 15:46:08'),
(57, 5, 'lollllll', '/tmp/phpSUXoDG', '2018-08-25 15:50:57', '2018-08-25 15:50:57'),
(58, 5, 'lollllll', '/tmp/phpS0QAcD', '2018-08-25 15:51:11', '2018-08-25 15:51:11'),
(59, 5, 'lollllll', '/tmp/phpWtxwBu.png', '2018-08-25 15:51:55', '2018-08-25 15:51:55'),
(60, 5, 'lollllll', '/tmp/phpuOcmPZ.png', '2018-08-25 15:57:21', '2018-08-25 15:57:21'),
(61, 5, 'lollllll', '/tmp/phpZd4Wvr.jpeg', '2018-08-25 15:58:13', '2018-08-25 15:58:13'),
(62, 5, 'lollllll', '/tmp/phpMGIas6.jpeg', '2018-08-25 15:59:26', '2018-08-25 15:59:26'),
(63, 5, 'lollllll', '/home/hell/sucked/public/images//tmp/php2O3X3v.jpeg', '2018-08-25 16:00:06', '2018-08-25 16:00:06'),
(64, 5, 'lollllll', '/home/hell/sucked/public/images//tmp/phprNkxK0.jpeg', '2018-08-25 16:01:39', '2018-08-25 16:01:39'),
(65, 5, 'lollllll', '/home/hell/sucked/public/images/jpg.jpeg', '2018-08-25 16:04:16', '2018-08-25 16:04:16'),
(66, 5, 'lollllll', '/home/hell/sucked/public/images/jpg.jpeg', '2018-08-25 16:04:22', '2018-08-25 16:04:22'),
(67, 5, 'lollllll', '/home/hell/sucked/public/images//tmp/phpb76i9w.jpg', '2018-08-25 16:05:26', '2018-08-25 16:05:26'),
(68, 5, 'lollllll', 'phpMke6jd.jpg', '2018-08-25 16:06:16', '2018-08-25 16:06:16'),
(69, 5, 'lollllll', 'phpcblW2Q.svg', '2018-08-25 16:06:38', '2018-08-25 16:06:38'),
(70, 5, 'haha', 'phpCUFklQ.jpg', '2018-08-25 16:07:54', '2018-08-25 16:09:25'),
(71, 5, 'lollllll', 'phpBqZkV0.png', '2018-08-25 16:10:15', '2018-08-25 16:10:15'),
(72, 127, 'Fugit et amet iure quia ab nam fugiat. Voluptatum officia sed soluta assumenda officiis sit sit.', 'd72895c236c874b9f2663511d7d6b6fc.jpg', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(73, 128, 'Rerum ea laborum fugiat sint. Praesentium asperiores aut ad explicabo earum laudantium.', 'bb001017ed79ec137cc0441105c7ac65.jpg', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(74, 129, 'Voluptatem consequatur tempora et dolorum. Voluptates tenetur fuga natus perferendis doloribus.', 'cf439651c7953c5c9a23f1447b331c60.jpg', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(75, 130, 'Qui delectus autem nostrum quis. Nobis et corrupti tenetur omnis.', '2bd9def50a4312c2a22fa4aa2e90a81c.jpg', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(76, 131, 'Quia non sunt quam. Perspiciatis labore inventore est.', '31c50fe6d35c6246b2ed46657c2cb7aa.jpg', '2018-08-25 16:14:58', '2018-08-25 16:14:58'),
(77, 132, 'Velit nam ut quasi quis. Itaque et ipsam ipsum voluptas reiciendis.', 'd460bd1c7f078b8d7026d97ce63a8f4d.jpg', '2018-08-25 16:14:59', '2018-08-25 16:14:59'),
(78, 134, 'Non molestiae est facilis consequatur et cupiditate. Officiis aut nihil tempore fugiat.', 'ed31a037388a85ed9a0d0ce100c1a3eb.jpg', '2018-08-25 16:15:00', '2018-08-25 16:15:00'),
(79, 136, 'Quis itaque repudiandae voluptates placeat quis et. Nihil quo sed voluptas beatae quia.', 'f3361073a2ce247b4b56acd0d8478b14.jpg', '2018-08-25 16:15:01', '2018-08-25 16:15:01'),
(80, 138, 'Quae magnam velit aperiam. Maxime officia enim perferendis autem. Saepe impedit ad quo dolorem.', '2a857e0959ea4f815d8bd0fe9f8fe074.jpg', '2018-08-25 16:15:02', '2018-08-25 16:15:02'),
(81, 140, 'Velit unde enim et harum tempora. Et enim tempora id et placeat.', 'ba561992ef3a8204a8e252a9629f2060.jpg', '2018-08-25 16:15:04', '2018-08-25 16:15:04'),
(82, 144, 'Totam minus non repellendus est. Sed corporis laborum aut id consequuntur libero recusandae.', '16374989170514bcf6f68d5e4dd6f32d.jpg', '2018-08-25 16:15:14', '2018-08-25 16:15:14'),
(83, 145, 'Et quaerat quo aperiam est et commodi excepturi ut. Aut omnis eaque debitis placeat iure.', '1b3b04c3bbe16772fe3577a5cb499e93.jpg', '2018-08-25 16:15:14', '2018-08-25 16:15:14'),
(84, 146, 'Rerum temporibus enim consequatur repellat. Nihil id tempore blanditiis reprehenderit.', 'd962d1b53bdb99264719bd40e31be011.jpg', '2018-08-25 16:15:14', '2018-08-25 16:15:14'),
(85, 147, 'Nihil est tempora reprehenderit et minima quos quia. Aut in voluptate quos nesciunt.', '89bc622dde7c74b722e193f4c1dd5d76.jpg', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(86, 148, 'Qui perferendis rerum quas sequi nam iste nihil consectetur. Aut ut minima et consequatur et.', 'b1803a7edb754d8996a24c0d46fdc8e4.jpg', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(87, 149, 'Aliquid vel voluptatem doloremque et nisi omnis neque. Eos cumque illum quos quod.', '935abe55b686b1891400ed42ff51ae51.jpg', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(88, 150, 'In corrupti nobis sed magni et. Vel vitae quas est autem iure.', '3696547ffe4e4fad7be6c493b35dc808.jpg', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(89, 151, 'Aut et ex cum ab sunt sed. Occaecati architecto delectus occaecati quod minima rem.', 'f273f6a76f22bd3842182b21df74c07f.jpg', '2018-08-25 16:15:20', '2018-08-25 16:15:20'),
(90, 152, 'Velit sint voluptatem adipisci voluptate. Vel odio iure non molestiae doloribus.', 'b5b0f88e737a02e1466a4b7e04993561.jpg', '2018-08-25 16:15:22', '2018-08-25 16:15:22'),
(91, 154, 'Quo dolor dolorem nesciunt vero doloremque. Porro quidem aut accusamus ut voluptatem.', '1a123211098103253deb9e2034d319d9.jpg', '2018-08-25 16:15:23', '2018-08-25 16:15:23'),
(92, 156, 'Ea rerum in et. Eum esse iusto laborum illum id iure. Quidem iste quis dolor.', 'ec55d9a2216a58aa4905678308ef5c73.jpg', '2018-08-25 16:15:24', '2018-08-25 16:15:24'),
(93, 158, 'Quidem sit natus labore dolorum reprehenderit. Aut placeat aperiam quia vel et explicabo iste.', 'f16f5a8efbdb2fbdb4dda1d809cdc1a2.jpg', '2018-08-25 16:15:26', '2018-08-25 16:15:26'),
(94, 160, 'Aut sit accusantium mollitia omnis. Dignissimos accusantium voluptatibus dignissimos.', '4c37cd9fb8723010126d43bdadeaa3ec.jpg', '2018-08-25 16:15:27', '2018-08-25 16:15:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_photo_id_foreign` (`photo_id`),
  ADD KEY `comments_author_id_foreign` (`author_id`);

--
-- Indexes for table `followers`
--
ALTER TABLE `followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followers_author_id_foreign` (`author_id`);

--
-- Indexes for table `followings`
--
ALTER TABLE `followings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `followings_author_id_foreign` (`author_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `likes_photo_id_foreign` (`photo_id`),
  ADD KEY `likes_author_id_foreign` (`author_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `people`
--
ALTER TABLE `people`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `people_username_unique` (`username`),
  ADD UNIQUE KEY `people_email_unique` (`email`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photos_author_id_foreign` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `followers`
--
ALTER TABLE `followers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `followings`
--
ALTER TABLE `followings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `people`
--
ALTER TABLE `people`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `people` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comments_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followers`
--
ALTER TABLE `followers`
  ADD CONSTRAINT `followers_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `people` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `followings`
--
ALTER TABLE `followings`
  ADD CONSTRAINT `followings_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `people` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `people` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `likes_photo_id_foreign` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `people` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
