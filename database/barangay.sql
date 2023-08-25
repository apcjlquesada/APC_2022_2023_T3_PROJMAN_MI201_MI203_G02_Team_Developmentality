-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 04:35 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barangay`
--

-- --------------------------------------------------------

--
-- Table structure for table `concern`
--

CREATE TABLE `concern` (
  `concern_id` bigint(20) UNSIGNED NOT NULL,
  `reference_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `resident_id` bigint(20) UNSIGNED NOT NULL,
  `concern_processed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concern_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concern`
--

INSERT INTO `concern` (`concern_id`, `reference_key`, `resident_id`, `concern_processed_by`, `concern_title`, `concern_description`, `concern_type`, `concern_photo`, `concern_status`, `concern_message`, `created_at`, `updated_at`) VALUES
(13, 'CONCERN-1043366', 56, 'NERISA CADUCIO', 'No lights in the stress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis aliquam malesuada bibendum arcu vitae. Quis varius quam quisque id. Sit amet cursus sit amet dictum sit. Sit amet justo donec enim diam vulputate. Felis imperdiet proin fermentum leo vel orci porta non. Lectus magna fringilla urna porttitor rhoncus dolor purus. Porttitor massa id neque aliquam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Non enim praesent elementum facilisis leo vel fringilla est. Molestie nunc non blandit massa enim. Sagittis orci a scelerisque purus semper eget duis at tellus.\r\n\r\nImperdiet dui accumsan sit amet nulla facilisi. Luctus venenatis lectus magna fringilla urna. Bibendum arcu vitae elementum curabitur vitae. Ullamcorper a lacus vestibulum sed. Neque aliquam vestibulum morbi blandit cursus risus. Pellentesque eu tincidunt tortor aliquam. In metus vulputate eu scelerisque. At urna condimentum mattis pellentesque. Tellus rutrum tellus pellentesque eu tincidunt. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Congue quisque egestas diam in. Scelerisque eleifend donec pretium vulputate sapien nec. Nisi porta lorem mollis aliquam ut porttitor leo a diam. Scelerisque eu ultrices vitae auctor eu augue ut lectus arcu. Tempor nec feugiat nisl pretium fusce id velit ut. Nunc eget lorem dolor sed viverra ipsum nunc aliquet. Hendrerit dolor magna eget est lorem ipsum dolor sit.', 'Infrastructure', '', 'DENIED', 'Your submitted concern is out of range.', '2023-02-19 09:42:15', '2023-02-21 07:30:51'),
(14, 'CONCERN-5679098', 56, 'NERISA CADUCIO', 'No lights in the stress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis aliquam malesuada bibendum arcu vitae. Quis varius quam quisque id. Sit amet cursus sit amet dictum sit. Sit amet justo donec enim diam vulputate. Felis imperdiet proin fermentum leo vel orci porta non. Lectus magna fringilla urna porttitor rhoncus dolor purus. Porttitor massa id neque aliquam. Faucibus purus in massa tempor nec feugiat nisl pretium fusce. Non enim praesent elementum facilisis leo vel fringilla est. Molestie nunc non blandit massa enim. Sagittis orci a scelerisque purus semper eget duis at tellus.\r\n\r\nImperdiet dui accumsan sit amet nulla facilisi. Luctus venenatis lectus magna fringilla urna. Bibendum arcu vitae elementum curabitur vitae. Ullamcorper a lacus vestibulum sed. Neque aliquam vestibulum morbi blandit cursus risus. Pellentesque eu tincidunt tortor aliquam. In metus vulputate eu scelerisque. At urna condimentum mattis pellentesque. Tellus rutrum tellus pellentesque eu tincidunt. Adipiscing diam donec adipiscing tristique risus nec feugiat in fermentum. Congue quisque egestas diam in. Scelerisque eleifend donec pretium vulputate sapien nec. Nisi porta lorem mollis aliquam ut porttitor leo a diam. Scelerisque eu ultrices vitae auctor eu augue ut lectus arcu. Tempor nec feugiat nisl pretium fusce id velit ut. Nunc eget lorem dolor sed viverra ipsum nunc aliquet. Hendrerit dolor magna eget est lorem ipsum dolor sit.', 'Transportation', '', 'DENIED', 'The reason is null.', '2023-02-19 09:45:12', '2023-02-21 07:32:39'),
(15, 'CONCERN-7595812', 56, 'NERISA CADUCIO', 'The flood in ourcanal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Integer enim neque volutpat ac. Sapien faucibus et molestie ac feugiat sed. Ultrices gravida dictum fusce ut placerat orci. Vitae elementum curabitur vitae nunc sed velit dignissim sodales ut. Id leo in vitae turpis massa sed elementum tempus egestas. Consequat semper viverra nam libero. Pharetra diam sit amet nisl suscipit adipiscing. Praesent tristique magna sit amet purus gravida quis blandit. Turpis egestas integer eget aliquet nibh praesent tristique. Placerat orci nulla pellentesque dignissim. Id aliquet risus feugiat in ante.\r\n\r\nDolor sit amet consectetur adipiscing elit ut aliquam purus sit. Ut eu sem integer vitae justo eget. Nunc faucibus a pellentesque sit amet porttitor. Facilisis magna etiam tempor orci eu. Enim nulla aliquet porttitor lacus luctus. Sit amet nisl suscipit adipiscing bibendum. Bibendum neque egestas congue quisque egestas diam in. Posuere lorem ipsum dolor sit amet consectetur. Diam quam nulla porttitor massa id neque aliquam vestibulum morbi. Massa massa ultricies mi quis hendrerit dolor magna eget. Orci eu lobortis elementum nibh tellus molestie nunc non. Aliquam ut porttitor leo a diam sollicitudin. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Sagittis id consectetur purus ut.', 'Infrastructure', '56_concern 2023-02-21-06-35-42.png', 'DENIED', 'dfddsgsd', '2023-02-20 22:35:42', '2023-02-21 08:23:57'),
(16, 'CONCERN-6689206', 56, 'NERISA CADUCIO', 'I would like to delete my account immediately.', 'Please delete my account immediately because I would lie to have a new one.', 'Resident Account', '', 'DONE', NULL, '2023-02-21 08:37:28', '2023-02-21 13:01:24'),
(17, 'CONCERN-9127662', 56, 'NERISA CADUCIO', 'No lights in the stress', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Dignissim enim sit amet venenatis urna cursus eget nunc scelerisque. Fringilla urna porttitor rhoncus dolor. Enim nunc faucibus a pellentesque sit. In cursus turpis massa tincidunt dui.', 'Transportation', '56_concern 2023-02-21-21-06-24.jpg', 'DONE', NULL, '2023-02-21 13:06:24', '2023-02-21 13:09:48'),
(18, 'CONCERN-2793249', 56, 'KENNETH IAN NADELA', 'Laging bumabaha sa Manga st,', 'dsfdsv sdfrsdd\r\nyuijmyijjyu\r\njkytuktyjktyktyktyk', 'Environmental', '', 'DONE', NULL, '2023-02-28 13:13:07', '2023-02-28 13:20:25'),
(19, 'CONCERN-5572045', 62, 'NERISA CADUCIO', 'May gulo sa Bonifacio St.', 'Maynagkaalitan sa street ng bonfacio. Nalasaing at nagsaksakan sa gilid ng daan.', 'Safety & Security', '', 'DONE', NULL, '2023-03-01 03:33:38', '2023-03-01 04:17:15'),
(20, 'CONCERN-7306014', 63, 'NERISA CADUCIO', 'I want to deact my account', 'jndfihdbfhisdbfhsdb ydgfhsdbhdgv', 'Resident Account', '', 'DONE', NULL, '2023-03-01 06:18:40', '2023-03-01 06:23:52'),
(21, 'CONCERN-2098173', 63, 'NERISA CADUCIO', 'refrgreg', 'rgregr tbthtty', 'Infrastructure', '', 'DENIED', 'Bad Request', '2023-03-01 06:53:08', '2023-03-03 03:47:15'),
(22, 'CONCERN-5439433', 61, 'NERISA CADUCIO', 'test', 'test', 'Environmental', '', 'PROCESSING', NULL, '2023-03-03 04:13:26', '2023-03-03 04:13:46'),
(23, 'CONCERN-8508034', 192, 'NERISA CADUCIO', 'Basura Kailangan linisin', 'Ipinapadala ko ito upang ipahayag ang aking alalahanin tungkol sa isang isyu sa ating komunidad na nangangailangan ng iyong pansin. Kamakailan, may mga balita na dumarami ang mga insidente ng iligal na pagtatapon ng basura sa ating lugar. Ang sitwasyong ito ay hindi magandang tingnan at nagdudulot ng mga panganib sa kalusugan sa ating komunidad. Bilang mga residente, dapat tayong magtulungan upang mapanatili ang malinis at ligtas na kapaligiran. Mangyaring tumulong sa pagtugon sa usaping ito sa pamamagitan ng pagtaas ng dalas ng pangongolekta ng basura sa aming lugar at pagpapatupad ng mas mahigpit na mga hakbang upang mapigilan ang iligal na pagtatapon. Ikinalulugod kong ipaalam mo sa komunidad ang kahalagahan ng wastong pagtatapon ng basura. Salamat sa iyong pansin sa bagay na ito. Inaasahan ko ang iyong agarang pagkilos', 'Environmental', '192_concern 2023-03-03-14-23-48.jpeg', 'PROCESSING', NULL, '2023-03-03 06:23:48', '2023-03-07 18:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `concern_history`
--

CREATE TABLE `concern_history` (
  `concern_history_id` bigint(20) UNSIGNED NOT NULL,
  `concern` bigint(20) UNSIGNED NOT NULL,
  `concern_update_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `concern_update_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `concern_update_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `concern_history`
--

INSERT INTO `concern_history` (`concern_history_id`, `concern`, `concern_update_status`, `concern_update_title`, `concern_update_description`, `employee_name`, `created_at`, `updated_at`) VALUES
(8, 13, 'PENDING', NULL, NULL, NULL, '2023-02-19 09:42:15', '2023-02-19 09:42:15'),
(9, 14, 'PENDING', NULL, NULL, NULL, '2023-02-19 09:45:12', '2023-02-19 09:45:12'),
(10, 15, 'PENDING', NULL, NULL, NULL, '2023-02-20 22:35:42', '2023-02-20 22:35:42'),
(11, 13, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 02:49:39', '2023-02-21 02:49:39'),
(12, 15, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 02:53:10', '2023-02-21 02:53:10'),
(13, 14, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 02:53:25', '2023-02-21 02:53:25'),
(14, 14, 'PENDING', 'RE-OPEN THE CONCERN', 'NERISA CADUCIO re-open the concern', 'NERISA CADUCIO', '2023-02-21 06:59:37', '2023-02-21 06:59:37'),
(15, 14, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 06:59:41', '2023-02-21 06:59:41'),
(16, 13, 'DENIED', 'DENIED CONCERN', 'Your submitted concern is out of range.', 'NERISA CADUCIO', '2023-02-21 07:30:51', '2023-02-21 07:30:51'),
(17, 14, 'DENIED', 'DENIED CONCERN', 'The reason is null.', 'NERISA CADUCIO', '2023-02-21 07:32:39', '2023-02-21 07:32:39'),
(18, 15, 'RE-OPEN', 'RE-OPEN THE CONCERN', 'NERISA CADUCIO re-open the concern', 'NERISA CADUCIO', '2023-02-21 08:12:37', '2023-02-21 08:12:37'),
(19, 15, 'DENIED', 'DENIED CONCERN', 'dfddsgsd', 'NERISA CADUCIO', '2023-02-21 08:23:57', '2023-02-21 08:23:57'),
(20, 16, 'PENDING', NULL, NULL, NULL, '2023-02-21 08:37:28', '2023-02-21 08:37:28'),
(21, 16, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened byNERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 08:39:07', '2023-02-21 08:39:07'),
(22, 16, 'UPDATE', 'fgdfgdgfd', 'fdghnbgh gfhngfmf tdhntrt dfgbdnb', 'NERISA CADUCIO', '2023-02-21 09:22:38', '2023-02-21 09:22:38'),
(23, 16, 'DONE', 'fghfgh', 'fdgbghn ghngfhnfgnfggnfh hnfg', 'NERISA CADUCIO', '2023-02-21 13:01:24', '2023-02-21 13:01:24'),
(24, 17, 'PENDING', NULL, NULL, NULL, '2023-02-21 13:06:24', '2023-02-21 13:06:24'),
(25, 17, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-02-21 13:06:55', '2023-02-21 13:06:55'),
(26, 17, 'UPDATE', 'Sodales neque sodales ut etiam sit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Euismod quis viverra nibh cras. Risus quis varius quam quisque id. Ante in nibh mauris cursus. Dolor sit amet consectetur adipiscing elit ut aliquam. Curabitur vitae nunc sed velit dignissim sodales ut eu. Sodales neque sodales ut etiam sit amet nisl purus. Mi eget mauris pharetra et. Vestibulum mattis ullamcorper velit sed ullamcorper morbi. Semper feugiat nibh sed pulvinar proin.', 'NERISA CADUCIO', '2023-02-21 13:08:58', '2023-02-21 13:08:58'),
(27, 17, 'DONE', 'CONCERN DONE', 'Thank you - Mi eget mauris pharetra et. Vestibulum mattis ullamcorper velit sed ullamcorper morbi. Semper feugiat nibh sed pulvinar proin.', 'NERISA CADUCIO', '2023-02-21 13:09:48', '2023-02-21 13:09:48'),
(28, 18, 'PENDING', NULL, NULL, NULL, '2023-02-28 13:13:07', '2023-02-28 13:13:07'),
(29, 18, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by KENNETH IAN NADELA', 'KENNETH IAN NADELA', '2023-02-28 13:15:00', '2023-02-28 13:15:00'),
(30, 18, 'RE-OPEN', 'RE-OPEN THE CONCERN', 'KENNETH IAN NADELA re-open the concern', 'KENNETH IAN NADELA', '2023-02-28 13:17:00', '2023-02-28 13:17:00'),
(31, 18, 'UPDATE', 'Tinawag na namin sa Meralco', 'Tinawag na namin sa MeralcoTinawag na namin sa MeralcoTinawag na namin sa MeralcoTinawag na namin sa Meralco', 'KENNETH IAN NADELA', '2023-02-28 13:19:08', '2023-02-28 13:19:08'),
(32, 18, 'DONE', 'CONCERN DONE', 'sgdfbf dfdf', 'KENNETH IAN NADELA', '2023-02-28 13:20:25', '2023-02-28 13:20:25'),
(33, 19, 'PENDING', NULL, NULL, NULL, '2023-03-01 03:33:38', '2023-03-01 03:33:38'),
(34, 19, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-03-01 04:13:50', '2023-03-01 04:13:50'),
(35, 19, 'RE-OPEN', 'RE-OPEN THE CONCERN', 'NERISA CADUCIO re-open the concern', 'NERISA CADUCIO', '2023-03-01 04:14:59', '2023-03-01 04:14:59'),
(36, 19, 'UPDATE', 'May pumunta na mga tanod', 'may pumunta na mga tanod', 'NERISA CADUCIO', '2023-03-01 04:15:52', '2023-03-01 04:15:52'),
(37, 19, 'DONE', 'CONCERN DONE', 'Tapos na po ang away', 'NERISA CADUCIO', '2023-03-01 04:17:15', '2023-03-01 04:17:15'),
(38, 20, 'PENDING', NULL, NULL, NULL, '2023-03-01 06:18:40', '2023-03-01 06:18:40'),
(39, 20, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-03-01 06:19:24', '2023-03-01 06:19:24'),
(40, 20, 'UPDATE', 'Tinawag na namin sa Meralco', 'SDHNV YGYDFSEB VETBE', 'NERISA CADUCIO', '2023-03-01 06:21:00', '2023-03-01 06:21:00'),
(41, 20, 'DONE', 'CONCERN DONE', 'csdsfdf dfv', 'NERISA CADUCIO', '2023-03-01 06:23:52', '2023-03-01 06:23:52'),
(42, 21, 'PENDING', NULL, NULL, NULL, '2023-03-01 06:53:08', '2023-03-01 06:53:08'),
(43, 21, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-03-01 06:55:57', '2023-03-01 06:55:57'),
(44, 21, 'UPDATE', 'Tinawag na namin sa Meralcoa', 'sadadsa', 'NERISA CADUCIO', '2023-03-03 03:46:26', '2023-03-03 03:46:26'),
(45, 21, 'DENIED', 'DENIED CONCERN', 'Bad Request', 'NERISA CADUCIO', '2023-03-03 03:47:15', '2023-03-03 03:47:15'),
(46, 22, 'PENDING', NULL, NULL, NULL, '2023-03-03 04:13:26', '2023-03-03 04:13:26'),
(47, 22, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-03-03 04:13:46', '2023-03-03 04:13:46'),
(48, 23, 'PENDING', NULL, NULL, NULL, '2023-03-03 06:23:48', '2023-03-03 06:23:48'),
(49, 23, 'PROCESSING', 'OPENED THE CONCERN', 'The concern was opened by NERISA CADUCIO', 'NERISA CADUCIO', '2023-03-07 18:27:47', '2023-03-07 18:27:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_web_app`
--

CREATE TABLE `manage_web_app` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `modified_by` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_web_app`
--

INSERT INTO `manage_web_app` (`id`, `type`, `content`, `file`, `modified_by`, `created_at`, `updated_at`) VALUES
(1, 'Punong Barangay', 'Hon. Michelle Ann M. Odevilas', 'Hon. Michelle Ann M. Odevilas2023-02-28-13-43-32.jpg', '', '2023-02-22 11:06:08', '2023-03-02 02:08:08'),
(2, 'Livelihood, Cooperatives and Entrepreneurship Committee/Committee on Education and Culture', 'Hon. Kenneth Ian V. Nadela', 'Hon. Kenneth Ian V. Nadela2023-02-23-13-10-11.jpg', '', '2023-02-22 11:08:52', '2023-03-02 02:08:08'),
(3, 'Committee on Health and Sanitation/Committee on Women’s Org. and Family Welfare', 'Hon Norman H. Hortilano', 'Hon Norman H. Hortilano2023-02-23-13-10-11.jpg', '', '2023-02-22 11:08:52', '2023-03-02 02:08:08'),
(4, 'Committee on Ways & Means', 'Hon Glenn V. Daiz', 'Hon Glenn V. Daiz2023-02-23-13-10-11.jpg', '', '2023-02-22 11:10:35', '2023-03-02 02:08:08'),
(5, 'Appropriation Committee / Committee on Community Development', 'Hon Francisco P. Galudo', 'Hon Francisco P. Galudo2023-02-23-13-10-11.jpg', '', '2023-02-22 11:10:35', '2023-03-02 02:08:08'),
(6, 'Committee on Transportation, & Market Management', 'Hon Cesar S. Tiglao', 'Hon Cesar S. Tiglao2023-03-02-10-08-08.jpg', '', '2023-02-22 11:12:47', '2023-03-02 02:08:08'),
(7, 'Peace and Order Committee', 'Hon Glenn Robert N. Roa', 'Hon Glenn Robert N. Roa2023-02-23-13-10-11.jpg', '', '2023-02-22 11:12:47', '2023-03-02 02:08:08'),
(8, 'Committee on Senior Citizen', 'Hon Geofrey S. Dubria', 'Hon Geofrey S. Dubria2023-02-23-13-10-11.jpg', '', '2023-02-22 11:13:53', '2023-03-02 02:08:08'),
(9, 'Committee on Youth and Sports Development', 'Hon. Kenneth D. Cañeda', 'Hon. Kenneth D. Cañeda2023-02-23-13-10-11.jpg', '', '2023-02-22 11:13:53', '2023-03-02 02:08:08'),
(10, 'Brgy.Secretary', 'Nerisa V. Caducio', 'Nerisa V. Caducio2023-02-23-13-10-11.jpg', '', '2023-02-22 11:14:39', '2023-03-02 02:08:08'),
(11, 'Total Land Area (sq. meters)', '802145', NULL, '', NULL, '2023-02-23 09:48:17'),
(12, 'Population', '42994', NULL, '', NULL, '2023-02-23 09:48:17'),
(13, 'Registered Voters', '22958', NULL, '', NULL, '2023-02-23 09:48:17'),
(14, 'Household', '8506', NULL, '', NULL, '2023-02-23 09:48:17'),
(15, 'No. of puroks', '57', NULL, '', NULL, '2023-02-23 09:48:17'),
(16, 'No. of streets', '64', NULL, '', NULL, '2023-02-23 09:48:17'),
(17, 'No. of Polling Precincts', '104', NULL, '', NULL, '2023-02-23 09:48:17'),
(18, 'Telephone', '88660385', NULL, '', NULL, NULL),
(19, 'Smart', '09491551111', NULL, '', NULL, NULL),
(20, 'Sun', '09236152389', NULL, '', NULL, NULL),
(21, 'Globe', '09956531922', NULL, '', NULL, NULL),
(22, 'Fire Station', '88370740', NULL, '', NULL, NULL),
(23, 'Taguig Rescue', '86407006', NULL, '', NULL, NULL),
(24, 'Taguig Police', '86423582', NULL, '', NULL, NULL),
(25, 'Police Station 6', '09171843906', NULL, '', NULL, NULL),
(28, 'banner_1', 'banner/banner_12023-02-27-01-15-38.png', NULL, '', NULL, '2023-03-01 04:31:41'),
(29, 'banner_2', 'banner/banner_22023-02-27-01-15-38.png', NULL, '', NULL, '2023-03-01 04:31:41'),
(30, 'banner_3', 'banner/banner_32023-02-27-01-15-38.png', NULL, '', NULL, '2023-03-01 04:31:41'),
(31, 'banner_4', 'banner/banner_42023-03-01-12-31-41.png', NULL, '', NULL, '2023-03-01 04:31:41');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_01_03_130555_document_type', 2),
(6, '2023_01_03_142623_requests', 3),
(7, '2023_02_11_081249_create_request_history', 4),
(8, '2023_02_18_223458_create_concern', 5),
(9, '2023_02_18_224445_create_concern_history', 5),
(10, '2023_02_22_105328_create_manage_web_app', 6),
(11, '2023_02_27_090042_create_reset_password', 7),
(12, '2023_02_28_145005_create_visitor', 8);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'API TOKEN', '1f8fadd8b8e635d42ef202b70e17f539be04e83b546a34fd5e3335c5c5e2d90f', '[\"*\"]', NULL, NULL, '2022-11-22 08:33:25', '2022-11-22 08:33:25'),
(2, 'App\\Models\\User', 1, 'API TOKEN', 'ceb43e1618b77aad54f8a6c99d69fadccf2a64ad8e90fabb9bcaf4b8aae5c9df', '[\"*\"]', NULL, NULL, '2022-11-23 01:30:55', '2022-11-23 01:30:55'),
(3, 'App\\Models\\User', 3, 'API TOKEN', '8515ddd4496610ebb9dce01db80c529d54b84b5a8fdd1833a40a5a6e8e1f3bd3', '[\"*\"]', NULL, NULL, '2022-11-24 08:00:23', '2022-11-24 08:00:23'),
(4, 'App\\Models\\User', 3, 'API TOKEN', '9c6c42dfb63befd69441f7a173b70a0fe2b6dbec876fceedff55c476dc13b883', '[\"*\"]', NULL, NULL, '2022-11-24 08:06:47', '2022-11-24 08:06:47'),
(5, 'App\\Models\\User', 3, 'API TOKEN', 'a6e08db2457f40183ee3afca3189d19c7edda27bd407cfcee33dcb35f1070bdd', '[\"*\"]', NULL, NULL, '2022-11-24 08:06:53', '2022-11-24 08:06:53'),
(6, 'App\\Models\\User', 1, 'API TOKEN', '6a02de7cee8f44c03cffec57a0cd451aca3a7d75bb6a37cfbc1ae6c25e8832f6', '[\"*\"]', NULL, NULL, '2022-11-24 08:13:23', '2022-11-24 08:13:23'),
(7, 'App\\Models\\User', 1, 'API TOKEN', 'a6710ac4ffb5e78afb95b646137b0abb892cb23b23f0da7b140427a458d19372', '[\"*\"]', NULL, NULL, '2022-11-24 08:20:02', '2022-11-24 08:20:02'),
(8, 'App\\Models\\User', 1, 'API TOKEN', '5f16a6811cf432ec579d50eb42a23ef0f8ec3e54437cb55477e0a8705c5e2100', '[\"*\"]', NULL, NULL, '2022-11-24 08:21:03', '2022-11-24 08:21:03'),
(9, 'App\\Models\\User', 1, 'API TOKEN', '6fa76c9f0d7886d8ed8c3f868fdd5eb125f78dfcca7cc3c3ed9e454f822d991b', '[\"*\"]', NULL, NULL, '2022-11-30 04:46:55', '2022-11-30 04:46:55'),
(10, 'App\\Models\\User', 3, 'API TOKEN', 'cc027b1adc643e520ee2d90e8c4b69d575f2f3ec78e96d51ffd4d610483267ee', '[\"*\"]', NULL, NULL, '2022-11-30 17:29:58', '2022-11-30 17:29:58'),
(11, 'App\\Models\\User', 1, 'API TOKEN', '6cf39b2d91c7b540fb0d6ebc9c4b165220e151fb48e9e427940ed7bcb37cf15b', '[\"*\"]', NULL, NULL, '2022-11-30 18:47:11', '2022-11-30 18:47:11'),
(12, 'App\\Models\\User', 3, 'API TOKEN', '463c43080dbe1d1e50e6d6fbe7b5a1c9feea9ac0a094e6d7b25a0ce4da843558', '[\"*\"]', NULL, NULL, '2022-11-30 18:47:36', '2022-11-30 18:47:36'),
(13, 'App\\Models\\User', 3, 'API TOKEN', '3ace5ca9c3fbad6916fe7fcca6d86c19a80b334e2581d2da31a6a0711034dcf4', '[\"*\"]', NULL, NULL, '2022-11-30 19:03:19', '2022-11-30 19:03:19'),
(14, 'App\\Models\\User', 3, 'API TOKEN', '47f2cef907c157d0f5588f54d50ee4ff972e1c4d42734c9c93e79e52d501da1e', '[\"*\"]', NULL, NULL, '2022-11-30 19:04:39', '2022-11-30 19:04:39'),
(15, 'App\\Models\\User', 3, 'API TOKEN', 'c047b977bdfcd9125e959177fca07fe7f6500bbc23a8230d7c7ca1cc64dbb1c1', '[\"*\"]', NULL, NULL, '2022-11-30 19:19:37', '2022-11-30 19:19:37'),
(16, 'App\\Models\\User', 1, 'API TOKEN', '7f9ea33ea9e7cee76a9243a98f6c527f3277d82f16bccecbedca2d491a30fefe', '[\"*\"]', NULL, NULL, '2022-11-30 21:24:14', '2022-11-30 21:24:14'),
(17, 'App\\Models\\User', 3, 'API TOKEN', '1f12b09abaef91f595d895816a63e6ad62f0bd07611189404a9d2cf7055d478a', '[\"*\"]', NULL, NULL, '2022-11-30 21:27:18', '2022-11-30 21:27:18'),
(18, 'App\\Models\\User', 3, 'API TOKEN', 'd26e567c4d8dcf8b084b7139a061047d5c2799f762f658f5d5b9885abb902c8d', '[\"*\"]', NULL, NULL, '2022-11-30 21:27:46', '2022-11-30 21:27:46'),
(19, 'App\\Models\\User', 1, 'API TOKEN', 'd2d4e46d9c494be2d9e503afcbf6da84a082557e0e1f07325e4125135bfa3494', '[\"*\"]', NULL, NULL, '2022-11-30 21:37:40', '2022-11-30 21:37:40'),
(20, 'App\\Models\\User', 1, 'API TOKEN', '2fa7e1890f449d605ba082844bca3114374c67d60384a26e513343b98c4f604b', '[\"*\"]', NULL, NULL, '2022-11-30 21:38:44', '2022-11-30 21:38:44'),
(21, 'App\\Models\\User', 3, 'API TOKEN', 'ad92ea49e55fe832c257fbcb47859816161acc42dcf2eb0d321576130b32f73a', '[\"*\"]', NULL, NULL, '2022-11-30 21:42:49', '2022-11-30 21:42:49'),
(22, 'App\\Models\\User', 1, 'API TOKEN', 'cd50354bea8d4c787aaa1fd6eb9b07b4be9886b32aa594adcdb17c56c8c3b9fc', '[\"*\"]', NULL, NULL, '2022-11-30 21:46:39', '2022-11-30 21:46:39'),
(23, 'App\\Models\\User', 3, 'API TOKEN', '3da4803ab61da5cb9680bc1f6e15bb6c41fbb00c401c3d60e80c987f55408c9a', '[\"*\"]', NULL, NULL, '2022-11-30 21:50:16', '2022-11-30 21:50:16'),
(24, 'App\\Models\\User', 3, 'API TOKEN', '92b2e91ef799f57f1c79351e3ffc1d125ac3f7909c08914161ce9cc437e9472c', '[\"*\"]', NULL, NULL, '2022-12-01 21:45:43', '2022-12-01 21:45:43'),
(25, 'App\\Models\\User', 1, 'API TOKEN', '48b13c39e989db6a22afc3acdca69320dbb807a8a521a204e6aa99db4390ad8a', '[\"*\"]', NULL, NULL, '2022-12-04 18:11:10', '2022-12-04 18:11:10'),
(26, 'App\\Models\\User', 1, 'API TOKEN', '8184e92dfcfe47cd5a6fe0c36e6b2fef57d01047de73e4be86b48db645798147', '[\"*\"]', NULL, NULL, '2022-12-04 18:11:18', '2022-12-04 18:11:18'),
(27, 'App\\Models\\User', 1, 'API TOKEN', '9959ba9b80b126d72df045d10b11cf3ef099b24e962b978704cb1d0fecfcf872', '[\"*\"]', NULL, NULL, '2022-12-04 18:28:00', '2022-12-04 18:28:00'),
(28, 'App\\Models\\User', 1, 'API TOKEN', '3ea09ca5f4aca70a23c148065b41cd14ba930743f558a93531390751674b5f0d', '[\"*\"]', NULL, NULL, '2022-12-04 20:51:35', '2022-12-04 20:51:35'),
(29, 'App\\Models\\User', 3, 'API TOKEN', '720e87229be26d67d3d609073429ecf7877970f9ac157eaf0ec86f7b44a896ba', '[\"*\"]', NULL, NULL, '2022-12-04 21:02:26', '2022-12-04 21:02:26'),
(30, 'App\\Models\\User', 1, 'API TOKEN', '0c75cb58b2a2f262c3d65cc53fd77ea2926274ba194b01b6da0f1cb49fd6807c', '[\"*\"]', NULL, NULL, '2022-12-04 21:19:59', '2022-12-04 21:19:59'),
(31, 'App\\Models\\User', 3, 'API TOKEN', 'ca78838854518d165e09548f118831d6468f0f847b4329a178f855d2322c58e3', '[\"*\"]', NULL, NULL, '2022-12-06 05:41:21', '2022-12-06 05:41:21'),
(32, 'App\\Models\\User', 3, 'API TOKEN', '6d4ce273d8b32972bf55aa8dd00ef733be74b3c2130181a439b13efd97f560e8', '[\"*\"]', NULL, NULL, '2022-12-06 05:50:47', '2022-12-06 05:50:47'),
(33, 'App\\Models\\User', 3, 'API TOKEN', 'fbb1e7602de02f83b416bed18bb4c63324d605c16b0e3eabf3397d914bf8c212', '[\"*\"]', NULL, NULL, '2022-12-06 05:52:12', '2022-12-06 05:52:12'),
(34, 'App\\Models\\User', 3, 'API TOKEN', 'eb80534d1692b92487fa57ffa471b83188deacf8c3616ac9d25360bd7d9ed81c', '[\"*\"]', NULL, NULL, '2022-12-06 05:54:54', '2022-12-06 05:54:54'),
(35, 'App\\Models\\User', 3, 'API TOKEN', '580d5bc7c48e4c82d36ba55818833de3573925417b33eb1458fb27f80c1fdef4', '[\"*\"]', NULL, NULL, '2022-12-06 05:56:03', '2022-12-06 05:56:03'),
(36, 'App\\Models\\User', 3, 'API TOKEN', '9775f9d2b809dab75387c5a0ef6ee58aa7bd84729f3c28f55abaf8c607fd92bf', '[\"*\"]', NULL, NULL, '2022-12-06 05:58:35', '2022-12-06 05:58:35'),
(37, 'App\\Models\\User', 3, 'API TOKEN', 'f6663e388c07c44fa1ed368bd2cfdddc9eda0550dc58bf37107420e716409d1c', '[\"*\"]', NULL, NULL, '2022-12-06 06:03:21', '2022-12-06 06:03:21'),
(38, 'App\\Models\\User', 3, 'API TOKEN', '23f1c09d633c1510721db4d7a617ced1c3f961d286c77f04c5c43754efa3b7aa', '[\"*\"]', NULL, NULL, '2022-12-06 06:06:24', '2022-12-06 06:06:24'),
(39, 'App\\Models\\User', 3, 'API TOKEN', '4ef400f409045dab0e83a8fa9111335b0b9c97598a2d4f1bd7827a43d2971112', '[\"*\"]', NULL, NULL, '2022-12-06 06:07:05', '2022-12-06 06:07:05'),
(40, 'App\\Models\\User', 3, 'API TOKEN', '6f6bf5bb6501e7b0c78c004e83e9fd1c02e28847128c3b6b85895c7e3378d9cd', '[\"*\"]', NULL, NULL, '2022-12-06 06:07:38', '2022-12-06 06:07:38'),
(41, 'App\\Models\\User', 3, 'API TOKEN', '1b309ab4f585453cfe152be98148dc19bd1d84066f37f6e6f76e493a8a388169', '[\"*\"]', NULL, NULL, '2022-12-06 06:38:02', '2022-12-06 06:38:02'),
(42, 'App\\Models\\User', 1, 'API TOKEN', 'ff01789115b6dde757e3d664e858ddbb3b046c13e81dbbff362f257c0d934ddf', '[\"*\"]', NULL, NULL, '2022-12-06 06:39:23', '2022-12-06 06:39:23'),
(43, 'App\\Models\\User', 3, 'API TOKEN', 'c1cdbc1e5b4a281e66d6e759b498f97029bcdd074139475e990bee95158bbc56', '[\"*\"]', NULL, NULL, '2022-12-06 06:40:11', '2022-12-06 06:40:11'),
(44, 'App\\Models\\User', 4, 'API TOKEN', '3868f98c9df829702e350df94e42ca27d30d9880c77049a81112801934b60bb4', '[\"*\"]', NULL, NULL, '2022-12-06 06:45:07', '2022-12-06 06:45:07'),
(45, 'App\\Models\\User', 3, 'API TOKEN', '443b35fc4dd59fcae21536029156619f728acfb9706d566e1438ebac4df9a963', '[\"*\"]', NULL, NULL, '2022-12-06 06:46:23', '2022-12-06 06:46:23'),
(46, 'App\\Models\\User', 5, 'API TOKEN', 'b21c34dd1109c6cd23285f16dee97cffa549803cf6c9ca578d6b1b0a0c83e917', '[\"*\"]', NULL, NULL, '2022-12-06 06:50:05', '2022-12-06 06:50:05'),
(47, 'App\\Models\\User', 8, 'API TOKEN', 'c38f0cfe03c970dd69384d47d1511ae9ef1cb2266f86be5ce8d7230a3bf4df42', '[\"*\"]', NULL, NULL, '2022-12-06 06:50:16', '2022-12-06 06:50:16'),
(48, 'App\\Models\\User', 5, 'API TOKEN', '6a55460eab506974203aafb9d9d35390d39898ebfe572f3d44f4d690fa3630cd', '[\"*\"]', NULL, NULL, '2022-12-06 06:50:57', '2022-12-06 06:50:57'),
(49, 'App\\Models\\User', 9, 'API TOKEN', 'f090648b2eddef612b380913c9521415045add5f592f4a296aa0968c2b66719e', '[\"*\"]', NULL, NULL, '2022-12-06 07:03:38', '2022-12-06 07:03:38'),
(50, 'App\\Models\\User', 9, 'API TOKEN', 'ac2e35e40255a1a362f70bf13cfb64c1363ca2bedfba8828d70f824016a88c5f', '[\"*\"]', NULL, NULL, '2022-12-06 07:33:06', '2022-12-06 07:33:06'),
(51, 'App\\Models\\User', 3, 'API TOKEN', 'd9f344dca740ed9739c30092e1dca0da8b5ac1e4ae01a811810a26f7bb465244', '[\"*\"]', NULL, NULL, '2022-12-06 07:34:43', '2022-12-06 07:34:43'),
(52, 'App\\Models\\User', 10, 'API TOKEN', '404571fd6caeea09c056752afb38bcf36af96b362300c4a622f2bcee21b9634e', '[\"*\"]', NULL, NULL, '2022-12-06 07:35:42', '2022-12-06 07:35:42'),
(53, 'App\\Models\\User', 10, 'API TOKEN', '0be700fdda6e4d153a803b5d71eb7bf64b726d19ef0d2a3a24d5aacfcbc4519e', '[\"*\"]', NULL, NULL, '2022-12-06 20:20:50', '2022-12-06 20:20:50'),
(54, 'App\\Models\\User', 11, 'API TOKEN', '625e909befc717413b128ef4bda5a828325d71e530eafc1f5f1a99342b6dcb53', '[\"*\"]', NULL, NULL, '2022-12-06 20:27:21', '2022-12-06 20:27:21'),
(55, 'App\\Models\\User', 11, 'API TOKEN', '13af68739c0d6b5165e93e7911b00d5f889856dbe1767c6de346869f7a086d18', '[\"*\"]', NULL, NULL, '2022-12-06 20:32:38', '2022-12-06 20:32:38'),
(56, 'App\\Models\\User', 10, 'API TOKEN', '4f1a453b4003c58436e903e1a76c2761cdf0cc6959ef33c174a284d0dade77c6', '[\"*\"]', NULL, NULL, '2022-12-06 20:33:53', '2022-12-06 20:33:53'),
(57, 'App\\Models\\User', 12, 'API TOKEN', 'e40358a93c111e157e68d62ee2ee354f0c7395d7fd284521ab5b134ab7b6f8c6', '[\"*\"]', NULL, NULL, '2022-12-06 20:37:56', '2022-12-06 20:37:56'),
(58, 'App\\Models\\User', 10, 'API TOKEN', 'd24ed93c4be217bf0dee6848ffa424a2f5239555cc80b1f07fbb1e8d939e8347', '[\"*\"]', NULL, NULL, '2022-12-06 20:41:59', '2022-12-06 20:41:59'),
(59, 'App\\Models\\User', 15, 'API TOKEN', '687be97b9604895dfd0bf10c91048ecfeb38c5cf478e21e391f8d2b6be594633', '[\"*\"]', NULL, NULL, '2022-12-06 20:53:32', '2022-12-06 20:53:32'),
(60, 'App\\Models\\User', 14, 'API TOKEN', '8e960d5a6ebb29e84decd4705ee0c80162779f1aca429fd3aa89b055d2098e9d', '[\"*\"]', NULL, NULL, '2022-12-06 20:59:58', '2022-12-06 20:59:58'),
(61, 'App\\Models\\User', 15, 'API TOKEN', '9695281fbb3ebe68803d55ec57cb21c7eb0d0cf8edc063bcd0640407d6e7a752', '[\"*\"]', NULL, NULL, '2022-12-06 21:23:32', '2022-12-06 21:23:32'),
(62, 'App\\Models\\User', 13, 'API TOKEN', 'b848437b62a945d120d680c0d1abc76882f36d3f8cff89815705631e4ee2d705', '[\"*\"]', NULL, NULL, '2022-12-06 21:23:53', '2022-12-06 21:23:53'),
(63, 'App\\Models\\User', 10, 'API TOKEN', '4a0c615f85ae9ceb00ef4253b46d8531ee5173ef321ce193952c6c853b6df25e', '[\"*\"]', NULL, NULL, '2022-12-06 21:24:05', '2022-12-06 21:24:05'),
(64, 'App\\Models\\User', 16, 'API TOKEN', '51b56bdf21462801326a3d263bdf95b381d1575e907ef97e05290037046d6733', '[\"*\"]', NULL, NULL, '2022-12-07 01:47:05', '2022-12-07 01:47:05'),
(65, 'App\\Models\\User', 1, 'API TOKEN', 'ee81940e3c74365bd893c33f4a46bf538bf0da1a40429eb61d57d2482a48a844', '[\"*\"]', NULL, NULL, '2022-12-07 02:01:40', '2022-12-07 02:01:40'),
(66, 'App\\Models\\User', 16, 'API TOKEN', 'a495790a17e7fcd619f528253ba17e141c364081b5bc594b666f6454f74348ea', '[\"*\"]', NULL, NULL, '2022-12-07 02:15:29', '2022-12-07 02:15:29'),
(67, 'App\\Models\\User', 14, 'API TOKEN', '6f568b7d618595a4d087cebfa275bd94332ce5e29c8225cea3c2b5913a9c6742', '[\"*\"]', NULL, NULL, '2022-12-07 02:16:52', '2022-12-07 02:16:52'),
(68, 'App\\Models\\User', 16, 'API TOKEN', '5e1c19495bc719335938d2f1f5f268c560426fd5b6d506d066828038658631dc', '[\"*\"]', NULL, NULL, '2022-12-08 05:28:11', '2022-12-08 05:28:11'),
(69, 'App\\Models\\User', 1, 'API TOKEN', '5bac074ef88cd5f35d9082e2bc2ee86126613aa46ceb70f3465535ba82b8e968', '[\"*\"]', NULL, NULL, '2022-12-08 05:46:25', '2022-12-08 05:46:25'),
(70, 'App\\Models\\User', 14, 'API TOKEN', '9fa3f66610c5054e020c04714f7d9559e7091dbb1f829b63f970774fea8842eb', '[\"*\"]', NULL, NULL, '2022-12-08 06:02:19', '2022-12-08 06:02:19'),
(71, 'App\\Models\\User', 16, 'API TOKEN', 'e579805904781bec79643f46ad649c4ff9b44fd23a64f5b34d6d6ccc59f23db4', '[\"*\"]', NULL, NULL, '2022-12-08 22:31:02', '2022-12-08 22:31:02'),
(72, 'App\\Models\\User', 10, 'API TOKEN', '4e321d4b769e8a5b251b147e9f261cd79d4b5f318436e93fe7698fd569bd95b8', '[\"*\"]', NULL, NULL, '2022-12-12 04:38:01', '2022-12-12 04:38:01'),
(73, 'App\\Models\\User', 16, 'API TOKEN', 'd9a84032433d484b4660e39c170039bc311293d0c4541cc06d48536a953a6c4d', '[\"*\"]', NULL, NULL, '2022-12-12 04:40:53', '2022-12-12 04:40:53'),
(74, 'App\\Models\\User', 10, 'API TOKEN', '5b301d229a014e7340cee5d7ccd3002cda3960bd70abcb54ac42867df6526573', '[\"*\"]', NULL, NULL, '2022-12-12 05:06:42', '2022-12-12 05:06:42'),
(75, 'App\\Models\\User', 10, 'API TOKEN', '9c45228f7cdecebf298e1da576e3f6512cf93dc4a91ab8957e0b21f90cf0b8b3', '[\"*\"]', NULL, NULL, '2022-12-12 05:40:07', '2022-12-12 05:40:07'),
(76, 'App\\Models\\User', 10, 'API TOKEN', 'e9263845aff38a753d98e68766801acf76948be0a06597fbe73bbdb83d0359f2', '[\"*\"]', NULL, NULL, '2022-12-12 05:41:38', '2022-12-12 05:41:38'),
(77, 'App\\Models\\User', 10, 'API TOKEN', 'dd6696b891aed5551ba433b4fd806cbdd46f264aa361f22a5527a3b96e9e1240', '[\"*\"]', NULL, NULL, '2022-12-12 05:44:49', '2022-12-12 05:44:49'),
(78, 'App\\Models\\User', 10, 'API TOKEN', 'a06aef3e0bd1ab92c9d17c36ba44dc0a672ff14396fbcae0dbb6cd77b0b951a3', '[\"*\"]', NULL, NULL, '2022-12-12 05:50:00', '2022-12-12 05:50:00'),
(79, 'App\\Models\\User', 10, 'API TOKEN', '1ae3502d134e694aa91434d5c9cb325144d917d8b3eca995194e26689bc7e338', '[\"*\"]', NULL, NULL, '2022-12-12 05:56:42', '2022-12-12 05:56:42'),
(80, 'App\\Models\\User', 14, 'API TOKEN', '2b2fd909a202824a590a1e8ae968a1010d89d38e06cd0e0eaf824c9bad5f4a09', '[\"*\"]', NULL, NULL, '2022-12-12 06:08:38', '2022-12-12 06:08:38'),
(81, 'App\\Models\\User', 10, 'API TOKEN', '521187813ab75900c348948c182db5260b7f5011df26022bf232d2080f018cc5', '[\"*\"]', NULL, NULL, '2022-12-12 06:13:24', '2022-12-12 06:13:24'),
(82, 'App\\Models\\User', 10, 'API TOKEN', 'eb18873fb57bc744af65e33340b90e1d2badc6cf9d0a44df7c6b465450327f18', '[\"*\"]', NULL, NULL, '2022-12-12 18:32:00', '2022-12-12 18:32:00'),
(83, 'App\\Models\\User', 10, 'API TOKEN', '9c1350bab1184979a88acf3496a84965da5b8098b2eac1d1056be736bd1a3f0f', '[\"*\"]', NULL, NULL, '2022-12-13 05:00:48', '2022-12-13 05:00:48'),
(84, 'App\\Models\\User', 10, 'API TOKEN', 'e4b1de48be02030ee1a0fa8c8905411e464de100170d79d402ad3b7515a60042', '[\"*\"]', NULL, NULL, '2022-12-13 18:16:40', '2022-12-13 18:16:40'),
(85, 'App\\Models\\User', 14, 'API TOKEN', '847d171f32f85608471d461776effc89a025bfce78e976a94b3f1eb125e8c9e2', '[\"*\"]', NULL, NULL, '2022-12-13 18:40:38', '2022-12-13 18:40:38'),
(86, 'App\\Models\\User', 14, 'API TOKEN', '51c98f15e2207fc33ba2e84390dc2d74f8e7d7b14c3f0a3abd9a4c4fd46e0d7b', '[\"*\"]', NULL, NULL, '2022-12-13 18:45:14', '2022-12-13 18:45:14'),
(87, 'App\\Models\\User', 10, 'API TOKEN', '9daf00fd6f9fec8fd8cd11aaec4cfc079324aa643936cc9cad5825c71ea0dccf', '[\"*\"]', NULL, NULL, '2022-12-13 18:45:30', '2022-12-13 18:45:30'),
(88, 'App\\Models\\User', 10, 'API TOKEN', 'c9cd33d4629f7b490e5b4412f9a6e342ca1f131be6cd47d27e4324a1a771e1c5', '[\"*\"]', NULL, NULL, '2022-12-13 19:08:51', '2022-12-13 19:08:51'),
(89, 'App\\Models\\User', 10, 'API TOKEN', '1da528b3c6145baa36bfaf554c1cd2f1572bc377db7789f1e59fd93a4e00d3b5', '[\"*\"]', NULL, NULL, '2022-12-13 19:12:04', '2022-12-13 19:12:04'),
(90, 'App\\Models\\User', 10, 'API TOKEN', 'ba5877651153439117f48a88b466e52480b23d1bf544e9b72c3d119ea8baafde', '[\"*\"]', NULL, NULL, '2022-12-13 19:12:43', '2022-12-13 19:12:43'),
(91, 'App\\Models\\User', 10, 'API TOKEN', '86ba6f16dab5dea979b03e251916aa7000e0ec64420b6952d96e676622dd8eeb', '[\"*\"]', NULL, NULL, '2022-12-13 19:19:49', '2022-12-13 19:19:49'),
(92, 'App\\Models\\User', 10, 'API TOKEN', '010aa619ac21686e9f09e281dd02f3ef8ce5ecff75af87e476daf7b223c12297', '[\"*\"]', NULL, NULL, '2022-12-13 19:22:44', '2022-12-13 19:22:44'),
(93, 'App\\Models\\User', 14, 'API TOKEN', '40b76102dc7bf1f5dfbac035a79c3bd95a07dd471bb5d1127bfd79e28e3813a3', '[\"*\"]', NULL, NULL, '2022-12-13 19:23:00', '2022-12-13 19:23:00'),
(94, 'App\\Models\\User', 10, 'API TOKEN', 'fe747ef5a511fe3c36701a100c80ba2b38110b21c9a5ababfd09f0702cd5a5b1', '[\"*\"]', NULL, NULL, '2022-12-13 19:25:08', '2022-12-13 19:25:08'),
(95, 'App\\Models\\User', 14, 'API TOKEN', 'fa7de44894a108f8b85feba2ad95434680d7467c8373ad40e98da1f0a9592249', '[\"*\"]', NULL, NULL, '2022-12-13 19:25:32', '2022-12-13 19:25:32'),
(96, 'App\\Models\\User', 15, 'API TOKEN', 'ecb1b130e360bb910873bc09499ebd94856dad22e8a2ffd6477802a0e23b18ea', '[\"*\"]', NULL, NULL, '2022-12-13 20:21:48', '2022-12-13 20:21:48'),
(97, 'App\\Models\\User', 10, 'API TOKEN', 'e6803d14570c806df445f18fa4bf842d79d2088ff7a9dd653c529bdecab09edd', '[\"*\"]', NULL, NULL, '2022-12-13 20:39:47', '2022-12-13 20:39:47'),
(98, 'App\\Models\\User', 17, 'API TOKEN', '7f3a623be1ecc0328b424a3443d21fc83e816f67e805dff40944da446f4b4b94', '[\"*\"]', NULL, NULL, '2022-12-13 20:50:56', '2022-12-13 20:50:56'),
(99, 'App\\Models\\User', 10, 'API TOKEN', 'f76177ae00b34eb59e300b8bbbe3dab269cd0d1422aa27cf6b9263c6ebc43b48', '[\"*\"]', NULL, NULL, '2022-12-13 21:10:24', '2022-12-13 21:10:24'),
(100, 'App\\Models\\User', 1, 'API TOKEN', 'b6f13bca7410e52595566f326ebaf03d4ec4557a9c0d6a0ce998589d334d0992', '[\"*\"]', NULL, NULL, '2022-12-13 22:41:20', '2022-12-13 22:41:20'),
(101, 'App\\Models\\User', 17, 'API TOKEN', '1185d9d8d9f26e428189213086eb7cdea7d06012631b498903e1fb7e0ac41ca7', '[\"*\"]', NULL, NULL, '2022-12-13 22:44:26', '2022-12-13 22:44:26'),
(102, 'App\\Models\\User', 14, 'API TOKEN', '8160b496880d861133b8d7b3adb376a370f84d534b851d7516f1cd45805f564d', '[\"*\"]', NULL, NULL, '2022-12-13 22:47:44', '2022-12-13 22:47:44'),
(103, 'App\\Models\\User', 10, 'API TOKEN', '9c2da2d07d1f840c06bf45d1c7afd47b6f162d07234ba0f57a006b5af0a78ed0', '[\"*\"]', NULL, NULL, '2022-12-13 23:00:52', '2022-12-13 23:00:52'),
(104, 'App\\Models\\User', 10, 'API TOKEN', 'b63ae2ca719714403127be9f39592d612deabd74b1f6c93ffe624da8da194057', '[\"*\"]', NULL, NULL, '2022-12-14 05:29:18', '2022-12-14 05:29:18'),
(105, 'App\\Models\\User', 17, 'API TOKEN', '7f6f85de1fde046065603466769b7f79cfc9af92b98d7237090d84052b681efe', '[\"*\"]', NULL, NULL, '2022-12-14 06:11:06', '2022-12-14 06:11:06'),
(106, 'App\\Models\\User', 1, 'API TOKEN', '1530c6af7454759e3db882290bc4d2720511753daec25d45dfe6b4f2d024dee2', '[\"*\"]', NULL, NULL, '2022-12-14 06:50:09', '2022-12-14 06:50:09'),
(107, 'App\\Models\\User', 10, 'API TOKEN', 'b50839093613cdf049323a47549f472e86b29e5e67acee05b3cc991e63fbaa38', '[\"*\"]', NULL, NULL, '2022-12-14 08:18:24', '2022-12-14 08:18:24'),
(108, 'App\\Models\\User', 17, 'API TOKEN', 'ccf7ce0bb5ffdc7a177d8767306e18580b45626a06028d0d43fc00596e7e5c73', '[\"*\"]', NULL, NULL, '2022-12-14 18:11:41', '2022-12-14 18:11:41'),
(109, 'App\\Models\\User', 17, 'API TOKEN', '433d1ec1aee5c637a3c5c77814f9774ddba37b9d54b02a7c558bf318e0a5c34b', '[\"*\"]', NULL, NULL, '2022-12-15 18:30:53', '2022-12-15 18:30:53'),
(110, 'App\\Models\\User', 14, 'API TOKEN', '2889eb41900c69b24ecd847f813e6ff767345e62ca7d9f32bd6d943c56748444', '[\"*\"]', NULL, NULL, '2022-12-15 20:33:35', '2022-12-15 20:33:35'),
(111, 'App\\Models\\User', 15, 'API TOKEN', '6b38106ddcba7cb951362cee46348c5f3bc31ac9d1b9ec6ea4b517a209a336a9', '[\"*\"]', NULL, NULL, '2022-12-15 20:39:27', '2022-12-15 20:39:27'),
(112, 'App\\Models\\User', 17, 'API TOKEN', '3d968bc90aa419be469da648efcc044b270f5e1abfd9106727da105ff3c7df67', '[\"*\"]', NULL, NULL, '2022-12-15 20:40:53', '2022-12-15 20:40:53'),
(113, 'App\\Models\\User', 14, 'API TOKEN', 'b99a38d1f6501e3991c5f2f646cd9aa131dd67761a496c8460728c7e8d16553f', '[\"*\"]', NULL, NULL, '2022-12-15 20:46:23', '2022-12-15 20:46:23'),
(114, 'App\\Models\\User', 14, 'API TOKEN', 'ed4128ba10a7f5bd3e7e0718e134b94ae9f0995548ac5671511b438163e62983', '[\"*\"]', NULL, NULL, '2022-12-15 20:48:38', '2022-12-15 20:48:38'),
(115, 'App\\Models\\User', 10, 'API TOKEN', 'fd096821e698d934b92e727924c98398631cb62641ad7138d986f00494406631', '[\"*\"]', NULL, NULL, '2022-12-15 20:51:07', '2022-12-15 20:51:07'),
(116, 'App\\Models\\User', 1, 'API TOKEN', '4aaa9743f360c9a413b5ff26eae6c0aa52cc666d78bb9e127e9dbc172effbeac', '[\"*\"]', NULL, NULL, '2022-12-15 22:37:59', '2022-12-15 22:37:59'),
(117, 'App\\Models\\User', 10, 'API TOKEN', 'f4fe17ccc1533068694817d9375eda703941f5d2d88ea76b1418f70fac7fc6de', '[\"*\"]', NULL, NULL, '2022-12-15 22:39:03', '2022-12-15 22:39:03'),
(118, 'App\\Models\\User', 1, 'API TOKEN', 'e5bd9c480a4b3abe869a484f356196ea9689da75e83a1d9d293ecf17a44c7d11', '[\"*\"]', NULL, NULL, '2022-12-15 23:02:19', '2022-12-15 23:02:19'),
(119, 'App\\Models\\User', 17, 'API TOKEN', '58f1000e3a34333d4e6f8df80ae67bb254cc33fdb7e970a3ae67040a983faf5d', '[\"*\"]', NULL, NULL, '2022-12-15 23:03:40', '2022-12-15 23:03:40'),
(120, 'App\\Models\\User', 1, 'API TOKEN', 'e993cb776d9126430debd284bdafc849d204c95a81e93bd4b62407a5c7f4db5b', '[\"*\"]', NULL, NULL, '2022-12-16 05:50:30', '2022-12-16 05:50:30'),
(121, 'App\\Models\\User', 10, 'API TOKEN', 'e12d33dfc0bc1a7048dc1d2a00657d185a89fd1fa826a3839ab351c93cb0d004', '[\"*\"]', NULL, NULL, '2022-12-16 23:00:45', '2022-12-16 23:00:45'),
(122, 'App\\Models\\User', 17, 'API TOKEN', 'bdb11ac22d6e989afeb7c5daa9a20ca0cc3c6ddd429b89ab12eb4b3361dae559', '[\"*\"]', NULL, NULL, '2022-12-17 06:58:41', '2022-12-17 06:58:41'),
(123, 'App\\Models\\User', 17, 'API TOKEN', '1cb16e11cbcbabf255ad7eb75899b9a4370194d90353dee03b2eedb32e026400', '[\"*\"]', NULL, NULL, '2022-12-17 08:33:43', '2022-12-17 08:33:43'),
(124, 'App\\Models\\User', 17, 'API TOKEN', 'e513b4ece4d85cf8063abb54fa68930c419b0f1791faa55adb1b946d43a2bf78', '[\"*\"]', NULL, NULL, '2022-12-17 23:57:05', '2022-12-17 23:57:05'),
(125, 'App\\Models\\User', 10, 'API TOKEN', 'bf0e294f34fae38eadd1745adfffb02b6399c198eb10dfa6f31f7c38fc8caeb5', '[\"*\"]', NULL, NULL, '2022-12-17 23:57:20', '2022-12-17 23:57:20'),
(126, 'App\\Models\\User', 10, 'API TOKEN', 'a85bf02abf3212bced6bf6143cf02463d86c466b891b54db96816fc3702b4380', '[\"*\"]', NULL, NULL, '2022-12-18 03:09:54', '2022-12-18 03:09:54'),
(127, 'App\\Models\\User', 17, 'API TOKEN', '139da93a11250243e08228f15bb45dae207496e0b6431e90eb0447691f7a4138', '[\"*\"]', NULL, NULL, '2022-12-18 17:41:17', '2022-12-18 17:41:17'),
(128, 'App\\Models\\User', 14, 'API TOKEN', 'f0cd4760e47c1ba512fe06023178d02b43e2619c0a039c4648f7d8704e4cc135', '[\"*\"]', NULL, NULL, '2022-12-18 21:53:01', '2022-12-18 21:53:01'),
(129, 'App\\Models\\User', 10, 'API TOKEN', '02e52137fea8c7347b8437fedab3127cad2a801eca1a5c7e6cad5ba0bd1d10a2', '[\"*\"]', NULL, NULL, '2022-12-18 21:53:19', '2022-12-18 21:53:19'),
(130, 'App\\Models\\User', 17, 'API TOKEN', '510e6c1b539b5ec8cd469b3533b098d316462da26917091c8925a9e5835b21b2', '[\"*\"]', NULL, NULL, '2022-12-19 02:57:00', '2022-12-19 02:57:00'),
(131, 'App\\Models\\User', 17, 'API TOKEN', 'ac7170c75e5592b0cc92fa698d10e3e28a21bd34062d9fea21f2386e915fc39d', '[\"*\"]', NULL, NULL, '2022-12-19 03:00:30', '2022-12-19 03:00:30'),
(132, 'App\\Models\\User', 17, 'API TOKEN', 'c17abfd459cc59dac3bd02008ce04900f04d9a089d765ae337c76553229a2be1', '[\"*\"]', NULL, NULL, '2022-12-19 06:53:15', '2022-12-19 06:53:15'),
(133, 'App\\Models\\User', 1, 'API TOKEN', 'c763a5c9409d9fcd51da245a28a2f11f07be5f9f5b6e0ae17b94732d475de428', '[\"*\"]', NULL, NULL, '2022-12-19 09:29:07', '2022-12-19 09:29:07'),
(134, 'App\\Models\\User', 17, 'API TOKEN', '051a93fcb76925d26fc02e3280be85d1e7f577b66feeec83e02841b302d407f5', '[\"*\"]', NULL, NULL, '2022-12-19 17:29:27', '2022-12-19 17:29:27'),
(135, 'App\\Models\\User', 10, 'API TOKEN', '5b3e1c9e8cfa5a829dce89194c2941ce9dbd9a79b1d6da1c949a9f7bffbcfa2a', '[\"*\"]', NULL, NULL, '2022-12-19 20:04:02', '2022-12-19 20:04:02'),
(136, 'App\\Models\\User', 19, 'API TOKEN', 'd33bd99875ae7f822c6195fbc80d56e2fd3ceb3977538bd92bb96e969c063812', '[\"*\"]', NULL, NULL, '2022-12-19 20:09:24', '2022-12-19 20:09:24'),
(137, 'App\\Models\\User', 10, 'API TOKEN', 'b15dd6558eadcf37eecf8bb01a688a487206d470511a14886af1eedf7e60fa0a', '[\"*\"]', NULL, NULL, '2022-12-19 20:19:57', '2022-12-19 20:19:57'),
(138, 'App\\Models\\User', 16, 'API TOKEN', '2e0cab509badac982c87ac063923f339eb9bc83c067dccfa789ce1840d483478', '[\"*\"]', NULL, NULL, '2022-12-19 21:05:47', '2022-12-19 21:05:47'),
(139, 'App\\Models\\User', 10, 'API TOKEN', '38cad78a7405fc101dfad50bc7a8fe2a410bd184b8c90b97dd9ce4dc284c5e4d', '[\"*\"]', NULL, NULL, '2022-12-19 21:20:48', '2022-12-19 21:20:48'),
(140, 'App\\Models\\User', 16, 'API TOKEN', 'a5f6aae41f7d136bcbf1468641449accddf44b4f670d85500c91a34ffe6dce01', '[\"*\"]', NULL, NULL, '2022-12-19 21:44:49', '2022-12-19 21:44:49'),
(141, 'App\\Models\\User', 10, 'API TOKEN', '2309611b90b472aae91259ea4b653fa3bbb39abd3f6a2ee7d4067ca207496f67', '[\"*\"]', NULL, NULL, '2022-12-19 21:46:52', '2022-12-19 21:46:52'),
(142, 'App\\Models\\User', 16, 'API TOKEN', '1018a06628e0356c27887268b4321028b88f6cf30fd66ef0f7b12dfa7dbd2bb9', '[\"*\"]', NULL, NULL, '2022-12-19 21:51:11', '2022-12-19 21:51:11'),
(143, 'App\\Models\\User', 17, 'API TOKEN', 'adf8dd14e146f30dfbad6898622877bc84e2cdded690052c864dd620df5079e9', '[\"*\"]', NULL, NULL, '2022-12-19 22:16:01', '2022-12-19 22:16:01'),
(144, 'App\\Models\\User', 17, 'API TOKEN', '4c80a496b973633476d3a95fdd743760b826f9bebfe6544f7834c76144d63e66', '[\"*\"]', NULL, NULL, '2022-12-19 23:39:17', '2022-12-19 23:39:17'),
(145, 'App\\Models\\User', 19, 'API TOKEN', 'f6d35234ccbd23ff261f8478dedcb603c7dd97454f8f69ceca4ed72a9d6e0b1e', '[\"*\"]', NULL, NULL, '2022-12-19 23:40:33', '2022-12-19 23:40:33'),
(146, 'App\\Models\\User', 19, 'API TOKEN', 'a30668a12fbb46db8a3d94481281196b250eb994489ef5b1fdd8f9d2ea3a3559', '[\"*\"]', NULL, NULL, '2022-12-21 23:32:14', '2022-12-21 23:32:14'),
(147, 'App\\Models\\User', 10, 'API TOKEN', 'c9daebcd1138fc061a2e96042e3250393fe660a4e76139b39aa9c73a07fd3d73', '[\"*\"]', NULL, NULL, '2022-12-21 23:33:08', '2022-12-21 23:33:08'),
(148, 'App\\Models\\User', 19, 'API TOKEN', 'e0f96c4c1c1e1ca2bd40afd31ff3ab25315f5490efbb56b5926e708982e000d3', '[\"*\"]', NULL, NULL, '2022-12-28 09:59:45', '2022-12-28 09:59:45'),
(149, 'App\\Models\\User', 19, 'API TOKEN', '1b3b199cc6e1c589faf98f762ddf54ed61f1d847373fb38663a0540eeaa0777b', '[\"*\"]', NULL, NULL, '2023-01-02 07:00:14', '2023-01-02 07:00:14'),
(150, 'App\\Models\\User', 19, 'API TOKEN', 'b4fdc54c924c71541e2d58151cb0c6111c98fe60b8e888a3ac2a2dc80d72ef97', '[\"*\"]', NULL, NULL, '2023-01-02 07:00:46', '2023-01-02 07:00:46'),
(151, 'App\\Models\\User', 19, 'API TOKEN', 'd97f5503e0e492d921071779c390b0ceaa1b85cf18004065ec9d7ea0981c0b3e', '[\"*\"]', NULL, NULL, '2023-01-02 07:17:53', '2023-01-02 07:17:53'),
(152, 'App\\Models\\User', 17, 'API TOKEN', '84068a19e89485bef0fb433702f24db00f9574138579c46bc375b100b94b5918', '[\"*\"]', NULL, NULL, '2023-01-02 07:24:56', '2023-01-02 07:24:56'),
(153, 'App\\Models\\User', 15, 'API TOKEN', '4a6681ad123486efbd41ff845449193cad2c21bea12d29d9fdb0dc4232eb850f', '[\"*\"]', NULL, NULL, '2023-01-02 07:27:56', '2023-01-02 07:27:56'),
(154, 'App\\Models\\User', 19, 'API TOKEN', '12f28f81b19915c2b1572ec31428f2aafed1fa2aea3e4c36bd2ddfe3dc6faca1', '[\"*\"]', NULL, NULL, '2023-01-03 03:57:03', '2023-01-03 03:57:03'),
(155, 'App\\Models\\User', 19, 'API TOKEN', '2621ae47032c249965bc505bdb953cb0718071fcd754f5b4e1196aeba0637e53', '[\"*\"]', NULL, NULL, '2023-01-03 04:20:33', '2023-01-03 04:20:33'),
(156, 'App\\Models\\User', 19, 'API TOKEN', '4851884b422389c44a9ae7406a3294046a13d5b4be716b31f83e54753bcf3244', '[\"*\"]', NULL, NULL, '2023-01-03 04:35:16', '2023-01-03 04:35:16'),
(157, 'App\\Models\\User', 19, 'API TOKEN', 'a1233571c0279c8c09f7621758769d7b24ce5766ebb2b0b6b858dc5fcc052261', '[\"*\"]', NULL, NULL, '2023-01-03 05:10:26', '2023-01-03 05:10:26'),
(158, 'App\\Models\\User', 17, 'API TOKEN', 'd60490de023f5c37e0193a308d87e6b38b6dfd00b04e940e6a957b57e32b282a', '[\"*\"]', NULL, NULL, '2023-01-03 05:31:09', '2023-01-03 05:31:09'),
(159, 'App\\Models\\User', 14, 'API TOKEN', '95db1907488554d097454a939161de0b9b619fe280e6a60c361418a2c8be3a78', '[\"*\"]', NULL, NULL, '2023-01-03 05:38:48', '2023-01-03 05:38:48'),
(160, 'App\\Models\\User', 14, 'API TOKEN', '72dcfb7c34bb05981754e537de4cdff0076cc5261fb4d201e4f3454717a0cf60', '[\"*\"]', NULL, NULL, '2023-01-03 06:49:35', '2023-01-03 06:49:35'),
(161, 'App\\Models\\User', 17, 'API TOKEN', '7be8a4d268615f91315740ae27199c997cce7815ccea7cff1354f9e997b0d129', '[\"*\"]', NULL, NULL, '2023-01-03 07:14:46', '2023-01-03 07:14:46'),
(162, 'App\\Models\\User', 14, 'API TOKEN', '9daf0116b6d8852ca04228cb93ea64eed8da4ed34982763ac3f33d7583cc8377', '[\"*\"]', NULL, NULL, '2023-01-03 07:19:20', '2023-01-03 07:19:20'),
(163, 'App\\Models\\User', 19, 'API TOKEN', 'd5ae3e7709e1ea89354125fd41da1f2676969bf5a619751f62cd793f3223afe7', '[\"*\"]', NULL, NULL, '2023-01-03 12:05:40', '2023-01-03 12:05:40'),
(164, 'App\\Models\\User', 25, 'API TOKEN', '6fe94e09f44f0152ddc8035a1954fb9c8da21e6db6680d28098f4a950cc1844f', '[\"*\"]', NULL, NULL, '2023-01-03 13:45:58', '2023-01-03 13:45:58'),
(165, 'App\\Models\\User', 14, 'API TOKEN', '5479580d4c9264caadfc58b31b4e284c341634489cae1b627d76fdf24204dbfe', '[\"*\"]', NULL, NULL, '2023-01-03 13:46:33', '2023-01-03 13:46:33'),
(166, 'App\\Models\\User', 14, 'API TOKEN', 'a46103713fb45f440cf9be4b64b327331c54b48ae2d394279a8e0786aa5f6e12', '[\"*\"]', NULL, NULL, '2023-01-04 16:18:17', '2023-01-04 16:18:17'),
(167, 'App\\Models\\User', 14, 'API TOKEN', 'db0e9f9b18eabf971aee728b020dc3d3f8b04f58ff9ef7e21e901269d2b83f0e', '[\"*\"]', NULL, NULL, '2023-01-04 16:34:25', '2023-01-04 16:34:25'),
(168, 'App\\Models\\User', 14, 'API TOKEN', 'c658e48f05d886888e4d846cca314c6879195af0b6abe603615d581a681b7dd7', '[\"*\"]', NULL, NULL, '2023-01-05 02:48:57', '2023-01-05 02:48:57'),
(169, 'App\\Models\\User', 19, 'API TOKEN', '1a17277a32bbcb669a185a382bf583b53597cdefbd3daec9b8795d6d9bccc145', '[\"*\"]', NULL, NULL, '2023-01-05 03:41:48', '2023-01-05 03:41:48'),
(170, 'App\\Models\\User', 10, 'API TOKEN', '65a236fe97d3ef9223d3206c2af968210478a35d485ec51364f506ff297c9a9c', '[\"*\"]', NULL, NULL, '2023-01-05 03:44:48', '2023-01-05 03:44:48'),
(171, 'App\\Models\\User', 14, 'API TOKEN', '216f6d3befafb9aca67c3bac8f3f8fa8a4118ecbd03e80cdc410d19209ee1030', '[\"*\"]', NULL, NULL, '2023-01-05 04:01:41', '2023-01-05 04:01:41'),
(172, 'App\\Models\\User', 14, 'API TOKEN', '6b164ee57e09c7a099f48ffe58835b129a8467627630bbd5d3abaa4f3e3d7d15', '[\"*\"]', NULL, NULL, '2023-01-05 16:16:40', '2023-01-05 16:16:40'),
(173, 'App\\Models\\User', 19, 'API TOKEN', '3c71a21f0af3ec9323ddce70518538e5118802f2d620ed39e1be7bcfda7d3edd', '[\"*\"]', NULL, NULL, '2023-01-05 16:17:19', '2023-01-05 16:17:19'),
(174, 'App\\Models\\User', 10, 'API TOKEN', '31b69370dd0150c4edd82ef35bc326aa1bc6cda12f0d777f9aab11c1eaaca2db', '[\"*\"]', NULL, NULL, '2023-01-05 16:18:37', '2023-01-05 16:18:37'),
(175, 'App\\Models\\User', 26, 'API TOKEN', '2908e4ba7ae350a3d91bd791a83eaa3ad516b53ad71c81ec7e2645bab5d803e8', '[\"*\"]', NULL, NULL, '2023-01-05 16:49:05', '2023-01-05 16:49:05'),
(176, 'App\\Models\\User', 25, 'API TOKEN', 'a5b57b2fed3c66274d2efac1e1f1864429e6acf7ad215ded2b3d55877d2cd09f', '[\"*\"]', NULL, NULL, '2023-01-07 03:29:12', '2023-01-07 03:29:12'),
(177, 'App\\Models\\User', 25, 'API TOKEN', 'b0f426af746cab883cd0a6ad3c45fe531629fe4bb6e1c697fabd6eeebf3f617e', '[\"*\"]', NULL, NULL, '2023-01-07 03:51:15', '2023-01-07 03:51:15'),
(178, 'App\\Models\\User', 10, 'API TOKEN', 'e58e3c19bab48f43bef383cf946a7cbec50f23a31c9532140cb99d49e7c93772', '[\"*\"]', NULL, NULL, '2023-01-07 03:52:38', '2023-01-07 03:52:38'),
(179, 'App\\Models\\User', 19, 'API TOKEN', '6818d71a5378c7973116e36c6c91d5cca31e8fec00a07379d61e10e896a9a769', '[\"*\"]', NULL, NULL, '2023-01-07 07:41:13', '2023-01-07 07:41:13'),
(180, 'App\\Models\\User', 25, 'API TOKEN', '095c335f8761e5f76288cb8608045a25465d673420c9ad9d0531509348b429e4', '[\"*\"]', NULL, NULL, '2023-01-07 08:05:16', '2023-01-07 08:05:16'),
(181, 'App\\Models\\User', 19, 'API TOKEN', '50f3d67d703377833c784d5fbe85339a2f4a1b7d8d76f1b3a9e90513968b4b4d', '[\"*\"]', NULL, NULL, '2023-01-07 14:29:05', '2023-01-07 14:29:05'),
(182, 'App\\Models\\User', 33, 'API TOKEN', '788ef43fdb71d44ea8d7edaed7101ea975bcddc034138976b4d617a1e0930fa9', '[\"*\"]', NULL, NULL, '2023-01-07 15:52:20', '2023-01-07 15:52:20'),
(183, 'App\\Models\\User', 34, 'API TOKEN', '36bf7d661997f71df1596288ff32ed0ca5599fc96689c3afe835a577c827768a', '[\"*\"]', NULL, NULL, '2023-01-07 16:16:07', '2023-01-07 16:16:07'),
(184, 'App\\Models\\User', 16, 'API TOKEN', 'fc711494b5769b584faa0134ccbf70ef79cd7f45a1f50ea205cc5ffebef53808', '[\"*\"]', NULL, NULL, '2023-01-07 16:58:22', '2023-01-07 16:58:22'),
(185, 'App\\Models\\User', 34, 'API TOKEN', '378efdd871f84da4144f2c28b8b4fb025a053d70c066bd1b4042a56bf109abbe', '[\"*\"]', NULL, NULL, '2023-01-07 17:00:08', '2023-01-07 17:00:08'),
(186, 'App\\Models\\User', 33, 'API TOKEN', 'c9f574eb4dd18d6633fbcf2726f972f0afae1512d3f1cafd293130b0d5006bcf', '[\"*\"]', NULL, NULL, '2023-01-07 17:10:19', '2023-01-07 17:10:19'),
(187, 'App\\Models\\User', 33, 'API TOKEN', '00c24e44bf497ec05cb273028dd0f948daedcfa9f776408d97bc4cd7d84c35fa', '[\"*\"]', NULL, NULL, '2023-01-08 01:17:58', '2023-01-08 01:17:58'),
(188, 'App\\Models\\User', 14, 'API TOKEN', '3c6040eecdd0d2cbd0101a32cb5027db745d78e5178fcedad83492ee12896241', '[\"*\"]', NULL, NULL, '2023-01-08 01:33:20', '2023-01-08 01:33:20'),
(189, 'App\\Models\\User', 17, 'API TOKEN', 'd05ce4be3be972037907c6db5ca81fc9d7de9862520d897a0273aa103ffe095a', '[\"*\"]', NULL, NULL, '2023-01-08 01:51:36', '2023-01-08 01:51:36'),
(190, 'App\\Models\\User', 14, 'API TOKEN', '83ac0b53f37ed1b5ff83870c44a33245a5a40e80ba878fc4cc8c789e52804c8c', '[\"*\"]', NULL, NULL, '2023-01-08 04:55:33', '2023-01-08 04:55:33'),
(191, 'App\\Models\\User', 25, 'API TOKEN', '11f7aaefdea85997073df99d77bdc3328223fad38ba7d94395032db4f5adbb94', '[\"*\"]', NULL, NULL, '2023-01-08 08:51:03', '2023-01-08 08:51:03'),
(192, 'App\\Models\\User', 33, 'API TOKEN', 'e3ee71b8f65d8d379dcb31c69191796ad44c4744a7a446ac2eaa96ab0ef4aea9', '[\"*\"]', NULL, NULL, '2023-01-08 17:17:45', '2023-01-08 17:17:45'),
(193, 'App\\Models\\User', 17, 'API TOKEN', 'f8ac9e114951e7500e23e317a84ff791771104ae3d1c45c80f5b616eb203c094', '[\"*\"]', NULL, NULL, '2023-01-08 19:19:34', '2023-01-08 19:19:34'),
(194, 'App\\Models\\User', 14, 'API TOKEN', 'e45ec28515a927635e2abb879a1889db75c8fa5d4c66d462bc56a09d502903d7', '[\"*\"]', NULL, NULL, '2023-01-08 20:39:19', '2023-01-08 20:39:19'),
(195, 'App\\Models\\User', 33, 'API TOKEN', '21b936d3ebc7502d7dd787fa712d738bc9f14f35211c8e5566b1827ab2df4bc1', '[\"*\"]', NULL, NULL, '2023-01-09 03:56:05', '2023-01-09 03:56:05'),
(196, 'App\\Models\\User', 17, 'API TOKEN', 'a6d6e5f6027618c21b94597eb2e525a5166626c26beb1be8ce7fa347e8dc524f', '[\"*\"]', NULL, NULL, '2023-01-09 03:57:13', '2023-01-09 03:57:13'),
(197, 'App\\Models\\User', 37, 'API TOKEN', '44eb84ee95b350ce0c7ba8e05c533df5e32952609fe6c1860836a6b81bd44c6d', '[\"*\"]', NULL, NULL, '2023-01-09 03:57:52', '2023-01-09 03:57:52'),
(198, 'App\\Models\\User', 14, 'API TOKEN', 'eff904433f717a60fa783c6b0e38cd57906d910bf3ecceda101eb57024ca164c', '[\"*\"]', NULL, NULL, '2023-01-09 17:40:10', '2023-01-09 17:40:10'),
(199, 'App\\Models\\User', 37, 'API TOKEN', 'bbde8fb3f147443bd9c1dc9c1ae9754ac065278c5f64d56688af75c666a300d7', '[\"*\"]', NULL, NULL, '2023-01-09 18:13:07', '2023-01-09 18:13:07'),
(200, 'App\\Models\\User', 36, 'API TOKEN', '83760d174dcade44422a8c21dd5b556af2aa69a4eedb210624683fbdc499d836', '[\"*\"]', NULL, NULL, '2023-01-09 18:14:27', '2023-01-09 18:14:27'),
(201, 'App\\Models\\User', 25, 'API TOKEN', '0dcdc4f06b6c9efed391c198ee89ca04ba1d65d8a8de6ab8e010dc336fe92efa', '[\"*\"]', NULL, NULL, '2023-01-09 18:30:59', '2023-01-09 18:30:59'),
(202, 'App\\Models\\User', 14, 'API TOKEN', 'eb1b698941679e6fc8ad6927f1ead7eb347909d15aa9720acbe7ce061efad4c0', '[\"*\"]', NULL, NULL, '2023-01-09 18:33:42', '2023-01-09 18:33:42'),
(203, 'App\\Models\\User', 33, 'API TOKEN', '04403dbe3e105a85353b9624222b398bbad49aeddcb4cac00c3936c7cfde2f66', '[\"*\"]', NULL, NULL, '2023-01-09 18:48:46', '2023-01-09 18:48:46'),
(204, 'App\\Models\\User', 34, 'API TOKEN', 'b6006c8bfd1b2fc440d8d5e1d394a995075bdfc5e4df48c6394905dec42c2501', '[\"*\"]', NULL, NULL, '2023-01-09 22:29:17', '2023-01-09 22:29:17'),
(205, 'App\\Models\\User', 16, 'API TOKEN', '76b7c321ecf3b118b1e2e03c5bdc5078fe8cee96c2621831677e41b858a8ce02', '[\"*\"]', NULL, NULL, '2023-01-09 22:41:43', '2023-01-09 22:41:43'),
(206, 'App\\Models\\User', 14, 'API TOKEN', '466569dfb31ddd8d40189de0c13b9b379c27897ad2bc4da74da1397b07c3d095', '[\"*\"]', NULL, NULL, '2023-01-09 22:43:08', '2023-01-09 22:43:08'),
(207, 'App\\Models\\User', 16, 'API TOKEN', '546e7da6531bff7d7f527a005ab5d9d02fb8412ed762e13fef84fe672b216049', '[\"*\"]', NULL, NULL, '2023-01-09 22:43:57', '2023-01-09 22:43:57'),
(208, 'App\\Models\\User', 33, 'API TOKEN', '8b1b70ed64b4da733425f2474fa5c924f9137a63b71b5dabfa9834bd7fb5a794', '[\"*\"]', NULL, NULL, '2023-01-11 06:01:27', '2023-01-11 06:01:27'),
(209, 'App\\Models\\User', 34, 'API TOKEN', 'bc0ee6c7fef564a513dba26c679a469148f13c15347458d4c0291453b09a08b7', '[\"*\"]', NULL, NULL, '2023-01-11 07:55:18', '2023-01-11 07:55:18'),
(210, 'App\\Models\\User', 33, 'API TOKEN', '0e6d4589b96bdc8de22e6bd68b476c6bfa48505a65e5899f2175e9cb47903591', '[\"*\"]', NULL, NULL, '2023-01-11 15:20:18', '2023-01-11 15:20:18'),
(211, 'App\\Models\\User', 36, 'API TOKEN', 'ed06cd8f4a297c23c73d91c1092fff2e16900bf8b06472a576d77c9cbd75084d', '[\"*\"]', NULL, NULL, '2023-01-11 16:43:51', '2023-01-11 16:43:51'),
(212, 'App\\Models\\User', 37, 'API TOKEN', '68df30eed09de80bf546fc52a8ea9c37e0d5d4548aa16707cc0e44eb6fa06abc', '[\"*\"]', NULL, NULL, '2023-01-11 17:59:27', '2023-01-11 17:59:27'),
(213, 'App\\Models\\User', 14, 'API TOKEN', '0951e73e205052a25d3ffa36125effc5c5b7ab729af6cc68b022822ddd5ac4d3', '[\"*\"]', NULL, NULL, '2023-01-11 20:06:50', '2023-01-11 20:06:50'),
(214, 'App\\Models\\User', 36, 'API TOKEN', 'ea0b079abfa8b47ed85f1f045858c4705a9662c3e26aa20e917fdf3fe5434946', '[\"*\"]', NULL, NULL, '2023-01-12 03:29:50', '2023-01-12 03:29:50'),
(215, 'App\\Models\\User', 17, 'API TOKEN', '13656cbf61d9ce108207f0c006ea310e57bd9291d02d0e5aa8bae0f01d3807fa', '[\"*\"]', NULL, NULL, '2023-01-12 04:29:07', '2023-01-12 04:29:07'),
(216, 'App\\Models\\User', 15, 'API TOKEN', '75ba556cc23719492f8946f9dcd89f7edb747b7d39d774594bd462e51bb84af1', '[\"*\"]', NULL, NULL, '2023-01-12 04:29:28', '2023-01-12 04:29:28'),
(217, 'App\\Models\\User', 14, 'API TOKEN', '50889e0de9fe4c27e5fc830ac00e900f84ebbee869a89bfe9bd98ddea6830647', '[\"*\"]', NULL, NULL, '2023-01-12 04:42:49', '2023-01-12 04:42:49'),
(218, 'App\\Models\\User', 15, 'API TOKEN', 'f8fc9ba7c95c8f1b08a0b91af12d641901306f1e048e82aaa6a2dd709df32c71', '[\"*\"]', NULL, NULL, '2023-01-12 16:35:03', '2023-01-12 16:35:03'),
(219, 'App\\Models\\User', 36, 'API TOKEN', 'a8d86fc5e96009081fa4a92369383b82acfc670c97e99f6ce861b6ecc41260df', '[\"*\"]', NULL, NULL, '2023-01-12 16:38:59', '2023-01-12 16:38:59'),
(220, 'App\\Models\\User', 14, 'API TOKEN', 'ee9f8d4c36bd8f5e93cb32b8fe92686bdb43fc5cf357c19455e28aa796698757', '[\"*\"]', NULL, NULL, '2023-01-12 16:39:40', '2023-01-12 16:39:40'),
(221, 'App\\Models\\User', 16, 'API TOKEN', '2c7fd14b1416ee03ad2ae7d557afaa747504b536615af0f9813684c410a1a500', '[\"*\"]', NULL, NULL, '2023-01-12 19:24:03', '2023-01-12 19:24:03'),
(222, 'App\\Models\\User', 15, 'API TOKEN', '4f1d2b2cd1f4c40964848e91b102c702a587e753561c3556ce1e05c045b721ad', '[\"*\"]', NULL, NULL, '2023-01-12 19:33:08', '2023-01-12 19:33:08'),
(223, 'App\\Models\\User', 17, 'API TOKEN', '49bffdfe8f3843df8d33c9ee3d488a8428eaf8950bcab828213853dcdc1e4b40', '[\"*\"]', NULL, NULL, '2023-01-12 19:33:23', '2023-01-12 19:33:23'),
(224, 'App\\Models\\User', 17, 'API TOKEN', '72b73166f5b721e361b3608bbedaba3b9791f51954e13f33daddf744b6662d5e', '[\"*\"]', NULL, NULL, '2023-01-12 19:35:13', '2023-01-12 19:35:13'),
(225, 'App\\Models\\User', 14, 'API TOKEN', '450ba5ab11537ac527b3e4231ab6b5f17747cba3423d432b4a6fcbb241cb9233', '[\"*\"]', NULL, NULL, '2023-01-12 19:38:21', '2023-01-12 19:38:21'),
(226, 'App\\Models\\User', 17, 'API TOKEN', 'adbcee09e9b750c5a783d6de42bfd3682d7a901d9a431f191fb82da36ae9d236', '[\"*\"]', NULL, NULL, '2023-01-12 21:57:01', '2023-01-12 21:57:01'),
(227, 'App\\Models\\User', 14, 'API TOKEN', '66e439c1786e1e1a585d4512095581cc77bf96a532156f499210a2b032392687', '[\"*\"]', NULL, NULL, '2023-01-12 21:57:16', '2023-01-12 21:57:16'),
(228, 'App\\Models\\User', 15, 'API TOKEN', '6f67a77e6d047e7b2bb323eb90e335519d0e87c09d5f991b1ed413e1995f09d3', '[\"*\"]', NULL, NULL, '2023-01-12 21:57:31', '2023-01-12 21:57:31'),
(229, 'App\\Models\\User', 46, 'API TOKEN', '4847a223beefd68b281e47160cfc9cdc51f6d1b4e4ea5e0042594b0e2215bfa7', '[\"*\"]', NULL, NULL, '2023-01-12 23:28:09', '2023-01-12 23:28:09'),
(230, 'App\\Models\\User', 17, 'API TOKEN', 'fea9cba6335c95ae97c1f710fe5bcf0d3fdc2916a154885bfd1f505b6e55fac1', '[\"*\"]', NULL, NULL, '2023-01-12 23:37:27', '2023-01-12 23:37:27'),
(231, 'App\\Models\\User', 14, 'API TOKEN', '8db112a8fb0ff86b117bf53d253f54cfccff3b373e26a2e0de9d618ff3814107', '[\"*\"]', NULL, NULL, '2023-01-12 23:43:35', '2023-01-12 23:43:35'),
(232, 'App\\Models\\User', 47, 'API TOKEN', '8cb5c21d660085ee700d0b602552262c651d0d9a56bee7155e12976c1bffff0c', '[\"*\"]', NULL, NULL, '2023-01-13 18:27:46', '2023-01-13 18:27:46'),
(233, 'App\\Models\\User', 14, 'API TOKEN', '0cd7eb5d4877a6d63ea45360ca5887a0e72d4dc9a7d839638fff08a48b67ff2e', '[\"*\"]', NULL, NULL, '2023-01-22 17:16:30', '2023-01-22 17:16:30'),
(234, 'App\\Models\\User', 17, 'API TOKEN', '5f97c31425219ea666dc2557873e91a82ff1f1fdc6d3825f69a13ac9d673c339', '[\"*\"]', NULL, NULL, '2023-01-22 19:03:02', '2023-01-22 19:03:02'),
(235, 'App\\Models\\User', 22, 'API TOKEN', '84a26e1ae198b495c3745cf204aa8b00e47623849f4c776676a64212360df3a3', '[\"*\"]', NULL, NULL, '2023-01-22 19:07:36', '2023-01-22 19:07:36'),
(236, 'App\\Models\\User', 14, 'API TOKEN', '2c5ac04198d67b3f23c990e542b22024501b1b3161d5967d9a729b5cd1993e21', '[\"*\"]', NULL, NULL, '2023-01-22 20:20:15', '2023-01-22 20:20:15'),
(237, 'App\\Models\\User', 14, 'API TOKEN', '37e7904df16dbdc3871f1f92bde694a2408e7a3aaed9bab3f86c10041dd80c5e', '[\"*\"]', NULL, NULL, '2023-01-23 00:45:17', '2023-01-23 00:45:17'),
(238, 'App\\Models\\User', 14, 'API TOKEN', 'f3ac9feef5c3eaa5df8322cd1dc6cf5a00b084d778bedbf74e0cad2c37906be6', '[\"*\"]', NULL, NULL, '2023-01-23 17:26:06', '2023-01-23 17:26:06'),
(239, 'App\\Models\\User', 22, 'API TOKEN', '2c469cfdbc990c85a69696e82f77a581101e6736dce6a7c5e0f5c6fe7f59d897', '[\"*\"]', NULL, NULL, '2023-01-23 17:29:43', '2023-01-23 17:29:43'),
(240, 'App\\Models\\User', 48, 'API TOKEN', '75597b5d36ef89677167ff31296b15d94bf1600ed3a1ae21b7db3d1e018bbd19', '[\"*\"]', NULL, NULL, '2023-01-23 17:58:06', '2023-01-23 17:58:06'),
(241, 'App\\Models\\User', 49, 'API TOKEN', 'a15a440b88f9a33d3c948348118c366c8aea0f5580e3c31621e0c1231ceaacb3', '[\"*\"]', NULL, NULL, '2023-01-23 18:04:04', '2023-01-23 18:04:04'),
(242, 'App\\Models\\User', 50, 'API TOKEN', '61e7fc44e2f380a78a1c2156abad011c79052633ab6da09a795810bea343e984', '[\"*\"]', NULL, NULL, '2023-01-23 18:11:26', '2023-01-23 18:11:26'),
(243, 'App\\Models\\User', 49, 'API TOKEN', '6ce4637557e24133d4e7c81b2e5f30f04b4827352251efe4a8e356d385b68a96', '[\"*\"]', NULL, NULL, '2023-01-23 18:12:37', '2023-01-23 18:12:37'),
(244, 'App\\Models\\User', 51, 'API TOKEN', '1433e7055e311c85728336e530b69ed479d63b0520324d708348a59386571081', '[\"*\"]', NULL, NULL, '2023-01-23 18:16:56', '2023-01-23 18:16:56'),
(245, 'App\\Models\\User', 49, 'API TOKEN', '257d1b53f4589a60f96653e7084953165a14e7d98283b5b6b3b2d47750935edd', '[\"*\"]', NULL, NULL, '2023-01-23 18:17:12', '2023-01-23 18:17:12'),
(246, 'App\\Models\\User', 49, 'API TOKEN', 'de58b12f003f6fe71cde580b0f23ff8487c78edf68bbe9e265266529970f5c67', '[\"*\"]', NULL, NULL, '2023-01-23 18:19:44', '2023-01-23 18:19:44'),
(247, 'App\\Models\\User', 53, 'API TOKEN', '95984ad57234f930116d281b80ec2ed7bf449e8272ae4e7ae54b062aa5666f1f', '[\"*\"]', NULL, NULL, '2023-01-23 18:23:07', '2023-01-23 18:23:07'),
(248, 'App\\Models\\User', 53, 'API TOKEN', '6d43cf7c3ad370efcdcc48db1c08d97139a3a8e5257f6f5dd9940f23bbcb0215', '[\"*\"]', NULL, NULL, '2023-01-23 18:23:26', '2023-01-23 18:23:26'),
(249, 'App\\Models\\User', 55, 'API TOKEN', 'd1399a676cac69f5d1e7afe3579002b0927f08e1dbce900cd08bb8bf447b7ec4', '[\"*\"]', NULL, NULL, '2023-01-23 18:30:08', '2023-01-23 18:30:08'),
(250, 'App\\Models\\User', 51, 'API TOKEN', '90be9c51564e4740c737b274457fb2145161c328148ad0c15dc3de8809e50d37', '[\"*\"]', NULL, NULL, '2023-01-23 18:30:34', '2023-01-23 18:30:34'),
(251, 'App\\Models\\User', 56, 'API TOKEN', 'a8a6b64e877829d332c2c3ab4ee20adee4a4af8cd379c9cdad80dac0761e894d', '[\"*\"]', NULL, NULL, '2023-01-23 18:32:59', '2023-01-23 18:32:59'),
(252, 'App\\Models\\User', 52, 'API TOKEN', 'ea562a17f78c7a1d41c5a94bbd84ea8c93a7a5b6c7d4de173c20eb5d4017be5c', '[\"*\"]', NULL, NULL, '2023-01-23 18:33:33', '2023-01-23 18:33:33'),
(253, 'App\\Models\\User', 56, 'API TOKEN', '82b38a75429f1ee95fc5ba8361ea092a12833116b2f84e7c29e9f3163a8ee25e', '[\"*\"]', NULL, NULL, '2023-01-23 18:36:48', '2023-01-23 18:36:48'),
(254, 'App\\Models\\User', 56, 'API TOKEN', 'ad2be4be7d09c988f7131e78da91fe7e971f8cb3b158d64bca4b4f16a4136e36', '[\"*\"]', NULL, NULL, '2023-01-24 18:45:35', '2023-01-24 18:45:35'),
(255, 'App\\Models\\User', 51, 'API TOKEN', '768414c4a2709399667ae449d7d2a1d5553ec6424a96bb5c22ce3f7a62874f04', '[\"*\"]', NULL, NULL, '2023-01-24 19:05:39', '2023-01-24 19:05:39'),
(256, 'App\\Models\\User', 53, 'API TOKEN', 'd9e5e32a057030747fb5d5630a51a8dff986533d754d7948a724e56310b7e076', '[\"*\"]', NULL, NULL, '2023-01-24 19:21:58', '2023-01-24 19:21:58'),
(257, 'App\\Models\\User', 56, 'API TOKEN', '833d001308f3ade947229146b1831513f6cc01c39f68d735e5e07b84a30204fc', '[\"*\"]', NULL, NULL, '2023-02-01 05:07:47', '2023-02-01 05:07:47'),
(258, 'App\\Models\\User', 56, 'API TOKEN', '737f9f430e7719053e58da747e2314136edc14fd4b7f9629e7faedfb954d3593', '[\"*\"]', NULL, NULL, '2023-02-01 05:13:02', '2023-02-01 05:13:02'),
(259, 'App\\Models\\User', 56, 'API TOKEN', '07bc886202caa2b9da5aa6378d36d7ab45969948beca1c60672325bc1482b2c9', '[\"*\"]', NULL, NULL, '2023-02-01 05:13:34', '2023-02-01 05:13:34'),
(260, 'App\\Models\\User', 56, 'API TOKEN', 'a3080e4370d4cb073142d469eeb043e5df728748f47cff76b5b815498f1e1409', '[\"*\"]', NULL, NULL, '2023-02-01 05:15:44', '2023-02-01 05:15:44'),
(261, 'App\\Models\\User', 56, 'API TOKEN', '1759ee1d9a12e9548890a29195da05bbabcccc629ecceacbdb053d9b2515382c', '[\"*\"]', NULL, NULL, '2023-02-01 06:35:47', '2023-02-01 06:35:47'),
(262, 'App\\Models\\User', 53, 'API TOKEN', 'f3a210d70c04d0522efafb2587c6278967a2ee4811dd3489749d3e6fb17eaaa4', '[\"*\"]', NULL, NULL, '2023-02-01 06:37:54', '2023-02-01 06:37:54'),
(263, 'App\\Models\\User', 56, 'API TOKEN', 'b94d693d2dd994480ec20119f7c145743983388bf9733acb2e1b4a056914936b', '[\"*\"]', NULL, NULL, '2023-02-01 17:59:34', '2023-02-01 17:59:34'),
(264, 'App\\Models\\User', 53, 'API TOKEN', 'afacfbc5dd4b3595925d6add42c4420a700855af2529790774895fbb6c11cbd6', '[\"*\"]', NULL, NULL, '2023-02-01 18:05:14', '2023-02-01 18:05:14'),
(265, 'App\\Models\\User', 53, 'API TOKEN', '65f1a9526e750761dbf0f231f127cb81a5f383e4bd303a0838f6aca24cc16c6c', '[\"*\"]', NULL, NULL, '2023-02-01 18:11:50', '2023-02-01 18:11:50'),
(266, 'App\\Models\\User', 53, 'API TOKEN', 'ec6f53622d9456d833f6075669c7ef5c271796d9aa58f86e705d3cb1a6a02dad', '[\"*\"]', NULL, NULL, '2023-02-01 18:55:10', '2023-02-01 18:55:10'),
(267, 'App\\Models\\User', 53, 'API TOKEN', 'eb6dc087f9a82b2366bf70a6fde58996d149839384e63547fe152d343d4ad547', '[\"*\"]', NULL, NULL, '2023-02-01 18:55:52', '2023-02-01 18:55:52'),
(268, 'App\\Models\\User', 53, 'API TOKEN', '44acf4b07fafc7cf04c2cf641a00fb8a2059f914a230eb72e06d8642f65b62da', '[\"*\"]', NULL, NULL, '2023-02-01 19:02:41', '2023-02-01 19:02:41'),
(269, 'App\\Models\\User', 53, 'API TOKEN', 'c4964f5a368acbe21e311521fb7776e8102477df72dc9ac12f939f3d7ff23565', '[\"*\"]', NULL, NULL, '2023-02-01 20:26:19', '2023-02-01 20:26:19'),
(270, 'App\\Models\\User', 56, 'API TOKEN', 'b1b03ca6ed3fed83b5770b7e97337bc009c5c461180fa8c5b5db5fdc97c7dbc3', '[\"*\"]', NULL, NULL, '2023-02-01 20:38:08', '2023-02-01 20:38:08'),
(271, 'App\\Models\\User', 53, 'API TOKEN', '689ee88c468364e633e4cd0ba09259e2f90fb1f573fa11dbb7148aa9356f195a', '[\"*\"]', NULL, NULL, '2023-02-01 20:45:20', '2023-02-01 20:45:20'),
(272, 'App\\Models\\User', 56, 'API TOKEN', '3a6e4a539387d2eedb87435a62a6532d22038e0097377735b8f37e99e5a43206', '[\"*\"]', NULL, NULL, '2023-02-01 21:48:38', '2023-02-01 21:48:38'),
(273, 'App\\Models\\User', 53, 'API TOKEN', '7bb70afa40a7ad7107a763f576bb1d2b53b219411b057ec2c2c46b5fdfcb1a90', '[\"*\"]', NULL, NULL, '2023-02-02 04:57:51', '2023-02-02 04:57:51'),
(274, 'App\\Models\\User', 56, 'API TOKEN', '0e5c56072e7207cc2edc5a38559304b1a35f443852577651e7b696e0000b3653', '[\"*\"]', NULL, NULL, '2023-02-03 21:53:53', '2023-02-03 21:53:53'),
(275, 'App\\Models\\User', 56, 'API TOKEN', '125acc8b9d6acf54b9d111e0ab7b015a05d67c60e2b59ff0cd588cb169aafb46', '[\"*\"]', NULL, NULL, '2023-02-03 22:22:13', '2023-02-03 22:22:13'),
(276, 'App\\Models\\User', 56, 'API TOKEN', 'ec9a4cb39fa945c3f5525809528141f9c8c281352a7c5d4c7ba64fd721c748f2', '[\"*\"]', NULL, NULL, '2023-02-03 23:12:37', '2023-02-03 23:12:37'),
(277, 'App\\Models\\User', 56, 'API TOKEN', 'd9cc7ed420ff6dbc2abcb10f20874828ab4c2e56b4305ed930c94261ece54e2d', '[\"*\"]', NULL, NULL, '2023-02-03 23:14:30', '2023-02-03 23:14:30');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(278, 'App\\Models\\User', 56, 'API TOKEN', '4a3358e60872b893460ce1390de6c549d55637190ef8e8e3d4654b1872d3d137', '[\"*\"]', NULL, NULL, '2023-02-03 23:15:46', '2023-02-03 23:15:46'),
(279, 'App\\Models\\User', 56, 'API TOKEN', '74d30c2dd07f3f033b0416a1f2239802ae15ebd067ead4ccceb82ab54508f16d', '[\"*\"]', NULL, NULL, '2023-02-03 23:18:03', '2023-02-03 23:18:03'),
(280, 'App\\Models\\User', 56, 'API TOKEN', '2c9811aafa731197dd3cd470dede39c773d711680a360b846f0f3e2f203a9c99', '[\"*\"]', NULL, NULL, '2023-02-03 23:21:45', '2023-02-03 23:21:45'),
(281, 'App\\Models\\User', 56, 'API TOKEN', '454cf91882e5eae3cea3d10b043a0a979bdbeb3549f96638b91633ead2bd2611', '[\"*\"]', NULL, NULL, '2023-02-03 23:30:25', '2023-02-03 23:30:25'),
(282, 'App\\Models\\User', 56, 'Our Token', '1ad53519c689f5c3f04e2f29b1a4aadc8121aea88fc2fd666830d2f87d42a684', '[\"*\"]', NULL, NULL, '2023-02-03 23:34:08', '2023-02-03 23:34:08'),
(283, 'App\\Models\\User', 56, 'API TOKEN', 'eb204b3e1f109668c28e67fc11d0ffa3a86dcd9d524a97ed23e1b9c6cc8bed03', '[\"*\"]', NULL, NULL, '2023-02-03 23:36:58', '2023-02-03 23:36:58'),
(284, 'App\\Models\\User', 56, 'API TOKEN', 'c90ad0ebf4b98586492f855015a052ad320b410e7d4df7901120382ee49b326c', '[\"*\"]', NULL, NULL, '2023-02-03 23:36:58', '2023-02-03 23:36:58'),
(285, 'App\\Models\\User', 56, 'API TOKEN', 'd67c6e4358c454f6369e08e49e755d52579e739eb5f1677772204ad531937e07', '[\"*\"]', NULL, NULL, '2023-02-03 23:39:01', '2023-02-03 23:39:01'),
(286, 'App\\Models\\User', 56, 'API TOKEN', 'e0c58350dec5b1bcfa3b8e71c61af7b80bf4391320b1af39ccecff47cab6e782', '[\"*\"]', NULL, NULL, '2023-02-03 23:39:01', '2023-02-03 23:39:01'),
(287, 'App\\Models\\User', 56, 'API TOKEN', '9fcd3b3ed1ba89bdcd93d1e2034cf8c104a6a429dc4e98893d5a6c4d85e0f1b7', '[\"*\"]', NULL, NULL, '2023-02-03 23:40:00', '2023-02-03 23:40:00'),
(288, 'App\\Models\\User', 56, 'API TOKEN', 'df76061be96abf851cdabeb8b2b674fa8b54bf921ea30e5ed229f668949dec07', '[\"*\"]', NULL, NULL, '2023-02-03 23:40:00', '2023-02-03 23:40:00'),
(289, 'App\\Models\\User', 56, 'API TOKEN', 'fc81babf1babfa4b8d6321932f5580e50abba4c75ad7fc5e63f8a206a2a1d1f2', '[\"*\"]', NULL, NULL, '2023-02-03 23:43:52', '2023-02-03 23:43:52'),
(290, 'App\\Models\\User', 56, 'API TOKEN', '50ea6c701eacbe8ccaa2b81b4ebcff6cf3c72e9e15e0e836db903265bd187016', '[\"*\"]', NULL, NULL, '2023-02-03 23:45:09', '2023-02-03 23:45:09'),
(291, 'App\\Models\\User', 56, 'API TOKEN', '4edf99abd0f421e67498e211c89bb0f9e63e52f1c3ca03ce960f5c03533154e7', '[\"*\"]', NULL, NULL, '2023-02-03 23:45:44', '2023-02-03 23:45:44'),
(292, 'App\\Models\\User', 56, 'API TOKEN', '8e5221834400681a48dc83fb2836e828f2e65f07c55b2e054a908135fd894c3c', '[\"*\"]', NULL, NULL, '2023-02-03 23:53:03', '2023-02-03 23:53:03'),
(293, 'App\\Models\\User', 53, 'API TOKEN', '7a9089adbf9752191c980dce58f3dc8984cfe89a40c8539670724c01d7dc4f66', '[\"*\"]', NULL, NULL, '2023-02-04 00:09:43', '2023-02-04 00:09:43'),
(294, 'App\\Models\\User', 51, 'API TOKEN', '6ab011c4d1eb2d14aead4d0553b68f1ebad1cbea23841c31fe1b23fcd8c25d03', '[\"*\"]', NULL, NULL, '2023-02-04 00:10:29', '2023-02-04 00:10:29'),
(295, 'App\\Models\\User', 56, 'API TOKEN', '89b3e87f384198dd5aee01b9573ec0ae9ef2fbede2233ce199e7840b1c3edde2', '[\"*\"]', NULL, NULL, '2023-02-04 02:14:38', '2023-02-04 02:14:38'),
(296, 'App\\Models\\User', 56, 'API TOKEN', '0bbfb800a4e0d5d7e461010797dffb5028788ca990b8e6d0fd782aea23336d4f', '[\"*\"]', NULL, NULL, '2023-02-05 17:53:37', '2023-02-05 17:53:37'),
(297, 'App\\Models\\User', 51, 'API TOKEN', '948ad020c98200c39f454d7871abdb979fe83043b5950ae50cb2c7fb4b759fb8', '[\"*\"]', NULL, NULL, '2023-02-05 21:56:33', '2023-02-05 21:56:33'),
(298, 'App\\Models\\User', 56, 'API TOKEN', '029fac9a76f4af52a7296ae2250c1a2da0c061e7e45012613f0b283e76fadb00', '[\"*\"]', NULL, NULL, '2023-02-06 17:09:41', '2023-02-06 17:09:41'),
(299, 'App\\Models\\User', 51, 'API TOKEN', '09751fe8b844d03536e5888aa5c58b70cdc2849ff0aa57bc4b7ddf295014f784', '[\"*\"]', NULL, NULL, '2023-02-06 19:12:28', '2023-02-06 19:12:28'),
(300, 'App\\Models\\User', 55, 'API TOKEN', 'db47011b1b6b4b4cbb983106bc7eee969c1470fc9bd41b8d8ba28784889a81df', '[\"*\"]', NULL, NULL, '2023-02-06 19:27:41', '2023-02-06 19:27:41'),
(301, 'App\\Models\\User', 51, 'API TOKEN', '6fdd4d9531c15f709fc02223accfd105bf418e7aca941a92c0a46c3af12d4184', '[\"*\"]', NULL, NULL, '2023-02-06 19:28:55', '2023-02-06 19:28:55'),
(302, 'App\\Models\\User', 55, 'API TOKEN', '4bf1c8d58bfc66cb2c7cc9e3c2dc7feb4bb67b0b7e68f024f2ed45cb123aad2b', '[\"*\"]', NULL, NULL, '2023-02-06 19:29:14', '2023-02-06 19:29:14'),
(303, 'App\\Models\\User', 56, 'API TOKEN', '1a450b44cf5812bcb55fbf9e44ab355a19cd00790c3b52def30969ebb1dd5a27', '[\"*\"]', NULL, NULL, '2023-02-06 22:10:13', '2023-02-06 22:10:13'),
(304, 'App\\Models\\User', 51, 'API TOKEN', '9140b6af66e341dac8fe236b283b703e2444ba68806d0b0311c8f69ff6a8a488', '[\"*\"]', NULL, NULL, '2023-02-06 22:14:43', '2023-02-06 22:14:43'),
(305, 'App\\Models\\User', 51, 'API TOKEN', '452889d82a46532255c195f0b62e98bd6eda06d5f3e5bd34820bad5488f34011', '[\"*\"]', NULL, NULL, '2023-02-07 06:34:23', '2023-02-07 06:34:23'),
(306, 'App\\Models\\User', 51, 'API TOKEN', 'fd2eee85d1ca828ce1d36758b2ca04fcca6afe143bc64e2585ed0576517efe99', '[\"*\"]', NULL, NULL, '2023-02-07 19:05:30', '2023-02-07 19:05:30'),
(307, 'App\\Models\\User', 56, 'API TOKEN', '1ce7f97e4816cfa111dbf1bd2e220fce2b2848337bd08fad2117b6b01749dd8d', '[\"*\"]', NULL, NULL, '2023-02-07 20:20:48', '2023-02-07 20:20:48'),
(308, 'App\\Models\\User', 51, 'API TOKEN', '46649219d192d11926e1d9562553c3ecced639e98ee3a2e6f8470f4b266da148', '[\"*\"]', NULL, NULL, '2023-02-07 21:28:35', '2023-02-07 21:28:35'),
(309, 'App\\Models\\User', 51, 'API TOKEN', '1624cdc6cf040e34dfbfea98983e9e38c60b820a1780900b51e7fb1dfcfd2dc1', '[\"*\"]', NULL, NULL, '2023-02-08 18:38:39', '2023-02-08 18:38:39'),
(310, 'App\\Models\\User', 56, 'API TOKEN', '7be4fbe597abd26166f4624903a6e58352303525a7c6ef2367233e6c4234fb90', '[\"*\"]', NULL, NULL, '2023-02-08 19:10:56', '2023-02-08 19:10:56'),
(311, 'App\\Models\\User', 56, 'API TOKEN', 'fd6674f7ad74551494c7053fff21a5ded143f84c95a171c492245527f79995c5', '[\"*\"]', NULL, NULL, '2023-02-10 08:31:59', '2023-02-10 08:31:59'),
(312, 'App\\Models\\User', 51, 'API TOKEN', '462a115bb8cf7e4ad9a482207f384aa4d2af425bacbd081001e3f5570ae64a1d', '[\"*\"]', NULL, NULL, '2023-02-10 08:32:28', '2023-02-10 08:32:28'),
(313, 'App\\Models\\User', 56, 'API TOKEN', '8eb9c3de662ca920c64dde0231d174321e1e1565608ecba900e9d69a4b865bd9', '[\"*\"]', NULL, NULL, '2023-02-11 00:52:58', '2023-02-11 00:52:58'),
(314, 'App\\Models\\User', 51, 'API TOKEN', '26f796f234726ac472ee1552d25c630a3c777d0b2889fbd56d0f93cbc9976a28', '[\"*\"]', NULL, NULL, '2023-02-11 00:56:38', '2023-02-11 00:56:38'),
(315, 'App\\Models\\User', 51, 'API TOKEN', '1e5df5044ade49c1fcdce21dd3ecb1deb622c81703c18ea47130f490a917fb99', '[\"*\"]', NULL, NULL, '2023-02-11 03:40:34', '2023-02-11 03:40:34'),
(316, 'App\\Models\\User', 56, 'API TOKEN', '380ee3fa666dd80816ce5ba9773531cc0b8797575b3528bc286a0c284875709e', '[\"*\"]', NULL, NULL, '2023-02-11 03:40:44', '2023-02-11 03:40:44'),
(317, 'App\\Models\\User', 56, 'API TOKEN', '5db783b5ea1094ac2344fc21c4b56bf55fbe188e7bbc2390f2904c53efd4fa52', '[\"*\"]', NULL, NULL, '2023-02-11 05:43:56', '2023-02-11 05:43:56'),
(318, 'App\\Models\\User', 51, 'API TOKEN', 'eb228fc0de45c6f6b96c541eeb68d7fb06ea2b19428f78fbc1f4f10bc4e23540', '[\"*\"]', NULL, NULL, '2023-02-11 18:25:21', '2023-02-11 18:25:21'),
(319, 'App\\Models\\User', 51, 'API TOKEN', '5703ac88123fe4ecf6d9a6cd16c9aaaf4fab562c71551315f404e1a7637fcaac', '[\"*\"]', NULL, NULL, '2023-02-11 18:39:31', '2023-02-11 18:39:31'),
(320, 'App\\Models\\User', 51, 'API TOKEN', '2f6e2051d02ccf63d80d2fb1c0bb8dc513f8efd82fa6f39ae4b30c087be5c967', '[\"*\"]', NULL, NULL, '2023-02-12 01:13:27', '2023-02-12 01:13:27'),
(321, 'App\\Models\\User', 56, 'API TOKEN', 'a9a43dcdc0ecfd09e4d75134eba409a3b8760db3b1423323e841e5e0c97c9dc0', '[\"*\"]', NULL, NULL, '2023-02-12 02:05:22', '2023-02-12 02:05:22'),
(322, 'App\\Models\\User', 53, 'API TOKEN', '1cf0f5664d1660f25cf3b02322f847032b214781fb5a556b07af498c5f399714', '[\"*\"]', NULL, NULL, '2023-02-12 02:20:27', '2023-02-12 02:20:27'),
(323, 'App\\Models\\User', 52, 'API TOKEN', '7094ec71235ac493e8e1f2fb74a068969098949ce967670093b1cf152e869229', '[\"*\"]', NULL, NULL, '2023-02-12 02:25:21', '2023-02-12 02:25:21'),
(324, 'App\\Models\\User', 51, 'API TOKEN', '6d785ea726e3ea99e4f5dd66b862eea5aa3f38e57e4c126aba73c92df0a58571', '[\"*\"]', NULL, NULL, '2023-02-12 02:29:21', '2023-02-12 02:29:21'),
(325, 'App\\Models\\User', 55, 'API TOKEN', '81741293bdb5e17b0c3a39c84015be8c11eedc10d74b3753a6db88a1d530e28a', '[\"*\"]', NULL, NULL, '2023-02-12 02:33:24', '2023-02-12 02:33:24'),
(326, 'App\\Models\\User', 53, 'API TOKEN', 'f65f1bf39e94463bac564ec9ec94dab67007f89ecb264ed55a02ccf3d7c7abf3', '[\"*\"]', NULL, NULL, '2023-02-12 02:37:06', '2023-02-12 02:37:06'),
(327, 'App\\Models\\User', 57, 'API TOKEN', 'a0929a46f2ed823b3d8ffd94838c58edb0b8ad6c74f795c19cd73aeed11801ed', '[\"*\"]', NULL, NULL, '2023-02-12 02:39:25', '2023-02-12 02:39:25'),
(328, 'App\\Models\\User', 51, 'API TOKEN', '3c83fd2294c5d545b9e424b72e82e6719ea2189921ecacd6b4a39864d6836783', '[\"*\"]', NULL, NULL, '2023-02-12 03:14:52', '2023-02-12 03:14:52'),
(329, 'App\\Models\\User', 56, 'API TOKEN', 'b4999bf560d947adc300acd6f51485226a330dfaebe332a27c8b65d82023aedc', '[\"*\"]', NULL, NULL, '2023-02-12 06:09:19', '2023-02-12 06:09:19'),
(330, 'App\\Models\\User', 51, 'API TOKEN', '834b3700e73d23a1dbf1cffa195807a098e677f9801119db0c896f47ca9f4ae8', '[\"*\"]', NULL, NULL, '2023-02-12 20:00:29', '2023-02-12 20:00:29'),
(331, 'App\\Models\\User', 56, 'API TOKEN', 'c5baac66d2900f2f77beb6742af6908c12818503b58483481934e731187dac87', '[\"*\"]', NULL, NULL, '2023-02-12 21:03:43', '2023-02-12 21:03:43'),
(332, 'App\\Models\\User', 51, 'API TOKEN', '30162f81da07e75a3449ec05e2953f79f5291223977401dce8a7b6fdaff8eb7d', '[\"*\"]', NULL, NULL, '2023-02-12 21:04:24', '2023-02-12 21:04:24'),
(333, 'App\\Models\\User', 51, 'API TOKEN', '99ca79bb4532f90e08e963cb76e501f29092eea19ff463a1b0e7834988664c6c', '[\"*\"]', NULL, NULL, '2023-02-13 05:07:02', '2023-02-13 05:07:02'),
(334, 'App\\Models\\User', 53, 'API TOKEN', '30bacb42ee1064b54ad1811c6dc794b3fa8b2852fd0e61faadd63fa04476863e', '[\"*\"]', NULL, NULL, '2023-02-13 05:30:34', '2023-02-13 05:30:34'),
(335, 'App\\Models\\User', 51, 'API TOKEN', '226cae258b6c94baa1bb83a6f84e45b23d7a2f8180051719ba738873a80acf66', '[\"*\"]', NULL, NULL, '2023-02-13 05:31:48', '2023-02-13 05:31:48'),
(336, 'App\\Models\\User', 51, 'API TOKEN', '14d377c909eb1f7884659df2596154421b7ca59d6ec3a224d00825d055f89f78', '[\"*\"]', NULL, NULL, '2023-02-13 06:46:26', '2023-02-13 06:46:26'),
(337, 'App\\Models\\User', 56, 'API TOKEN', '4891d9164b97cf11cc35aae86a2076f23ac43f14d2123f36349c223a8952c931', '[\"*\"]', NULL, NULL, '2023-02-13 07:32:26', '2023-02-13 07:32:26'),
(338, 'App\\Models\\User', 55, 'API TOKEN', 'c4859589dcb16a12678ca4101f8bceed725e40a3982c77cf89609740da6fbb7f', '[\"*\"]', NULL, NULL, '2023-02-13 17:14:08', '2023-02-13 17:14:08'),
(339, 'App\\Models\\User', 56, 'API TOKEN', 'c4944c08728b2edaa9219ab235fe9cc5da69da7d4abc29cf3fc10ea1834d499f', '[\"*\"]', NULL, NULL, '2023-02-13 18:22:01', '2023-02-13 18:22:01'),
(340, 'App\\Models\\User', 56, 'API TOKEN', '95319c97da911dc0bb654f61ef69defbceabb2e141e3fa1e64f99ceeba89ff58', '[\"*\"]', NULL, NULL, '2023-02-14 03:22:12', '2023-02-14 03:22:12'),
(341, 'App\\Models\\User', 56, 'API TOKEN', '71a287c4ac8e5a1225a5d693ce3cbfe727049872254d3e4107e630209e235a54', '[\"*\"]', NULL, NULL, '2023-02-14 03:24:53', '2023-02-14 03:24:53'),
(342, 'App\\Models\\User', 56, 'API TOKEN', '8ec291fa7a94a62bea835c1a4fe9c518ec4ce61a262718b0687e016e4f26f84b', '[\"*\"]', NULL, NULL, '2023-02-14 04:03:15', '2023-02-14 04:03:15'),
(343, 'App\\Models\\User', 51, 'API TOKEN', '16dfe6c428764537a16648a1971a639ee030bbf3aa1a02f3761bff5cca0b8595', '[\"*\"]', NULL, NULL, '2023-02-14 04:05:28', '2023-02-14 04:05:28'),
(344, 'App\\Models\\User', 55, 'API TOKEN', '51b080aad1c04862c4397926567aaac972e4f7c2720b38d9111bed7aaeb5c84d', '[\"*\"]', NULL, NULL, '2023-02-14 04:08:39', '2023-02-14 04:08:39'),
(345, 'App\\Models\\User', 51, 'API TOKEN', '563cd87899698470c0aa94e44bd4d7024fd843485f396dd8571420c662602071', '[\"*\"]', NULL, NULL, '2023-02-14 07:57:23', '2023-02-14 07:57:23'),
(346, 'App\\Models\\User', 51, 'API TOKEN', '6d5b47b2028362acefeca46d2586245a41cb39d5f44a1f194d8acd712d504369', '[\"*\"]', NULL, NULL, '2023-02-14 17:53:02', '2023-02-14 17:53:02'),
(347, 'App\\Models\\User', 56, 'API TOKEN', 'fd8ea3134172ce88eaa88938bda080b6fcc5b3d2de08faf09c5bd9cb544807e4', '[\"*\"]', NULL, NULL, '2023-02-14 17:53:23', '2023-02-14 17:53:23'),
(348, 'App\\Models\\User', 56, 'API TOKEN', '49e509748bb17845bf6edf63f73012f9d9dd3f0b071403dd7b6936e2f6e48450', '[\"*\"]', NULL, NULL, '2023-02-14 19:29:38', '2023-02-14 19:29:38'),
(349, 'App\\Models\\User', 51, 'API TOKEN', '0b262745ec0b705a6d5850c30c1fbc6568ae67c5282d92140a57fd4707014aaf', '[\"*\"]', NULL, NULL, '2023-02-15 05:54:53', '2023-02-15 05:54:53'),
(350, 'App\\Models\\User', 56, 'API TOKEN', '95064f3c6f1fddcebeb8734e5a3aed549395bdcd154264c30a1e78593b17fcbd', '[\"*\"]', NULL, NULL, '2023-02-15 06:31:44', '2023-02-15 06:31:44'),
(351, 'App\\Models\\User', 51, 'API TOKEN', 'f5246a7573c55699bbb932b337a99d130775b515e3f0ed93f4bffa9ee1001709', '[\"*\"]', NULL, NULL, '2023-02-15 16:55:06', '2023-02-15 16:55:06'),
(352, 'App\\Models\\User', 56, 'API TOKEN', '9752d848f5070416fc4699196c09548d2ad0197bf6cfb82d13acbab70062bf0b', '[\"*\"]', NULL, NULL, '2023-02-15 17:11:35', '2023-02-15 17:11:35'),
(353, 'App\\Models\\User', 56, 'API TOKEN', '5baabe0d95fe683481eb56d0162b184572a668012bf0219c18ba7d0c7976bb4d', '[\"*\"]', NULL, NULL, '2023-02-16 04:52:28', '2023-02-16 04:52:28'),
(354, 'App\\Models\\User', 56, 'API TOKEN', 'c999ba354db44bfd4f500f2467b943c122ed94da885e0246517f5f633cd167cc', '[\"*\"]', NULL, NULL, '2023-02-17 04:45:03', '2023-02-17 04:45:03'),
(355, 'App\\Models\\User', 51, 'API TOKEN', 'e5c637e194c41521c823d825e42b7c7f68b603d5c870e9e107521bc4571bd2ab', '[\"*\"]', NULL, NULL, '2023-02-18 12:37:26', '2023-02-18 12:37:26'),
(356, 'App\\Models\\User', 56, 'API TOKEN', 'd87a4c2567f30132e42c9bb1ed3722004ad148d8a3cea4380606f84a34f4bf1e', '[\"*\"]', NULL, NULL, '2023-02-18 12:38:48', '2023-02-18 12:38:48'),
(357, 'App\\Models\\User', 56, 'API TOKEN', '936b61dbe16b2948c30b169026df2b2288a4562b5eacc553e97b439a236f007b', '[\"*\"]', NULL, NULL, '2023-02-18 13:35:20', '2023-02-18 13:35:20'),
(358, 'App\\Models\\User', 56, 'API TOKEN', '5672bac083229a77f181602ca1368feb88074e796362b29a3d0106e6d98e1993', '[\"*\"]', NULL, NULL, '2023-02-19 05:54:54', '2023-02-19 05:54:54'),
(359, 'App\\Models\\User', 51, 'API TOKEN', '196192c26ebd75e1fc80ce74580bce60da367424d99ac1ebb21a642e7b27a102', '[\"*\"]', NULL, NULL, '2023-02-19 10:03:51', '2023-02-19 10:03:51'),
(360, 'App\\Models\\User', 56, 'API TOKEN', '3f133e8965039a12d96ad76d92f34a2114c35b46714f15cf2c1f7118a22dfc92', '[\"*\"]', NULL, NULL, '2023-02-19 12:49:46', '2023-02-19 12:49:46'),
(361, 'App\\Models\\User', 51, 'API TOKEN', '83121254d861173c406cda265581b0f0d1dbabeb3dbe899bcd16793a603cd400', '[\"*\"]', NULL, NULL, '2023-02-20 09:40:18', '2023-02-20 09:40:18'),
(362, 'App\\Models\\User', 56, 'API TOKEN', '66c34cf909527873fa46d5d55699841581b5060ea77449d8b6c4fbfe4f266b00', '[\"*\"]', NULL, NULL, '2023-02-20 12:23:05', '2023-02-20 12:23:05'),
(363, 'App\\Models\\User', 51, 'API TOKEN', '3a581dfea7c24a949af6386a4f42199e155bfea75b337ecb2ba228daa014a29d', '[\"*\"]', NULL, NULL, '2023-02-20 21:16:26', '2023-02-20 21:16:26'),
(364, 'App\\Models\\User', 56, 'API TOKEN', '8d6386fcc794fa6520cf4a7107da7db1a541aed286e21f0f59d31da64874dc4a', '[\"*\"]', NULL, NULL, '2023-02-20 21:20:58', '2023-02-20 21:20:58'),
(365, 'App\\Models\\User', 53, 'API TOKEN', 'a6a5d4711ea25b36ac092af538bf3cd426b9de525489c2c62ffcc5660e6f2e72', '[\"*\"]', NULL, NULL, '2023-02-20 21:23:37', '2023-02-20 21:23:37'),
(366, 'App\\Models\\User', 51, 'API TOKEN', '2577a07f132df3fb3da9df2e970ae903aa6eed1cc56aa711fb6ec10d23026afb', '[\"*\"]', NULL, NULL, '2023-02-20 21:33:00', '2023-02-20 21:33:00'),
(367, 'App\\Models\\User', 56, 'API TOKEN', 'cd3180ba8561d18d78af6f7b28875b05ad6a5c4fd7c1138d8be1bc39f160ce72', '[\"*\"]', NULL, NULL, '2023-02-20 22:16:03', '2023-02-20 22:16:03'),
(368, 'App\\Models\\User', 52, 'API TOKEN', 'a039d41d9c6fe14e3bacd63ce563220eced288e0a3a9660d5b689fabd7f7f6f6', '[\"*\"]', NULL, NULL, '2023-02-20 23:07:40', '2023-02-20 23:07:40'),
(369, 'App\\Models\\User', 57, 'API TOKEN', 'f8c294806df697268d95104816a7a31bcc8e250bfdea91444c33624c0b32323f', '[\"*\"]', NULL, NULL, '2023-02-21 00:29:31', '2023-02-21 00:29:31'),
(370, 'App\\Models\\User', 51, 'API TOKEN', 'af68f7d25308e80e859a3c2c736c855ea53bbb16085036bdc89ce5b0086fe323', '[\"*\"]', NULL, NULL, '2023-02-21 01:39:31', '2023-02-21 01:39:31'),
(371, 'App\\Models\\User', 51, 'API TOKEN', 'f197a49b8cba4aff61688f5b7cc73159b078b564d0d1d8eb1b69e1ab342481ae', '[\"*\"]', NULL, NULL, '2023-02-21 06:23:29', '2023-02-21 06:23:29'),
(372, 'App\\Models\\User', 56, 'API TOKEN', '3ddde1c1a947e834491fdcf6ad40b934e0d72f2432f41c425648355a78917a6e', '[\"*\"]', NULL, NULL, '2023-02-21 08:30:08', '2023-02-21 08:30:08'),
(373, 'App\\Models\\User', 56, 'API TOKEN', '25fcc6752b5576476b5af317bb973bc2857fa206696b580232dafc3569518ced', '[\"*\"]', NULL, NULL, '2023-02-21 08:30:21', '2023-02-21 08:30:21'),
(374, 'App\\Models\\User', 56, 'API TOKEN', '6d178781c82be244ff99721e20cd3ec8683bc3f7f09644a294c96c77fa38e4a0', '[\"*\"]', NULL, NULL, '2023-02-21 08:31:08', '2023-02-21 08:31:08'),
(375, 'App\\Models\\User', 56, 'API TOKEN', '3d356c6014237ef200fa3f245f45c62d703e863fad34e6b702d730c82e947851', '[\"*\"]', NULL, NULL, '2023-02-21 08:31:52', '2023-02-21 08:31:52'),
(376, 'App\\Models\\User', 56, 'API TOKEN', '4ca777ba96b41d8180db1ea34f4c61c3a819af353afd7d5303df569b018875ef', '[\"*\"]', NULL, NULL, '2023-02-21 08:34:39', '2023-02-21 08:34:39'),
(377, 'App\\Models\\User', 51, 'API TOKEN', '683826ae227b902b1a421cfe0d8bf931e07ddfbee068b313147ed47d412edc9d', '[\"*\"]', NULL, NULL, '2023-02-21 08:38:18', '2023-02-21 08:38:18'),
(378, 'App\\Models\\User', 51, 'API TOKEN', '882e4fc6e6329ed4706217fcf16422904f98149f6a9eda37a300407b45ae3c5c', '[\"*\"]', NULL, NULL, '2023-02-21 12:44:37', '2023-02-21 12:44:37'),
(379, 'App\\Models\\User', 56, 'API TOKEN', '7e0c898b87bf3f356a911ab30e8a0854cdf162c02e8e6be863aa2da7eb2d1671', '[\"*\"]', NULL, NULL, '2023-02-21 13:05:39', '2023-02-21 13:05:39'),
(380, 'App\\Models\\User', 53, 'API TOKEN', '479c04aea1d68e72961bab72a813bfed6fddedf180434f41246ac8c2ff3d9354', '[\"*\"]', NULL, NULL, '2023-02-21 13:32:52', '2023-02-21 13:32:52'),
(381, 'App\\Models\\User', 56, 'API TOKEN', '957ec3b39dbff51dcd3410ff0b697393acd07d2f6b72b5481a6306454253cb54', '[\"*\"]', NULL, NULL, '2023-02-21 13:39:43', '2023-02-21 13:39:43'),
(382, 'App\\Models\\User', 51, 'API TOKEN', '8d1d216c3e7f5a46bcbc45be3c6cc05fb3624c4f909156bf7487d9ec212efc4e', '[\"*\"]', NULL, NULL, '2023-02-21 13:41:06', '2023-02-21 13:41:06'),
(383, 'App\\Models\\User', 56, 'API TOKEN', '625f2e9b20d48f9a2dbd9bdb6f3c30bbcaeceb884973cd9ab2993f47cbbac4b9', '[\"*\"]', NULL, NULL, '2023-02-21 13:46:39', '2023-02-21 13:46:39'),
(384, 'App\\Models\\User', 53, 'API TOKEN', '56390f98600f19594a143e618e9e6490475f357eedf3a2ab7062618be22e7af9', '[\"*\"]', NULL, NULL, '2023-02-22 02:14:00', '2023-02-22 02:14:00'),
(385, 'App\\Models\\User', 53, 'API TOKEN', '74f9e206c6e6bfc2a9d51ae0511ae6d4839b09b31749171ec22f592789595c93', '[\"*\"]', NULL, NULL, '2023-02-22 10:55:57', '2023-02-22 10:55:57'),
(386, 'App\\Models\\User', 53, 'API TOKEN', 'ee74eb0bf0d30d721999c3dd72d2c24978f943a99eb420147b37e20ac2c197bf', '[\"*\"]', NULL, NULL, '2023-02-22 11:32:35', '2023-02-22 11:32:35'),
(387, 'App\\Models\\User', 53, 'API TOKEN', '0bd0ff50709ea16a7ec8d28db735749f1a5a0e43824d58fa3051ec0fa3fc0fdb', '[\"*\"]', NULL, NULL, '2023-02-23 02:27:32', '2023-02-23 02:27:32'),
(388, 'App\\Models\\User', 53, 'API TOKEN', 'c96672821af9985033a1c06ea65f648c25f2ba077b6145bb135cbde8633d844a', '[\"*\"]', NULL, NULL, '2023-02-23 09:37:36', '2023-02-23 09:37:36'),
(389, 'App\\Models\\User', 51, 'API TOKEN', 'f0199a88d1c80518a787fa71327362f2955c3c70fcccc49e9cd73c41d3df2132', '[\"*\"]', NULL, NULL, '2023-02-23 12:57:57', '2023-02-23 12:57:57'),
(390, 'App\\Models\\User', 56, 'API TOKEN', 'faaac63afbaa89088bd94ce997c2d67f0ae8b7d97659117bd73ebb1240248a2b', '[\"*\"]', NULL, NULL, '2023-02-23 13:15:39', '2023-02-23 13:15:39'),
(391, 'App\\Models\\User', 53, 'API TOKEN', '8b5bb4bb0564a3ddccd5e755f89d2515d5fe0ced43dcfa77df53315a56a22918', '[\"*\"]', NULL, NULL, '2023-02-23 14:22:30', '2023-02-23 14:22:30'),
(392, 'App\\Models\\User', 52, 'API TOKEN', 'c6c95e826e9e7e1757963d74e12448196a5098c11c83cebecdddddbdd5554838', '[\"*\"]', NULL, NULL, '2023-02-23 14:27:35', '2023-02-23 14:27:35'),
(393, 'App\\Models\\User', 51, 'API TOKEN', '2a804f4667bb221bfda5787974d6b07acead50be65edc10cffbf84d84b22996f', '[\"*\"]', NULL, NULL, '2023-02-23 14:34:03', '2023-02-23 14:34:03'),
(394, 'App\\Models\\User', 51, 'API TOKEN', '9d658e2b7c665ed2ac9b00f6605013948a6616e0a0544c94e5d2b4f88c22e942', '[\"*\"]', NULL, NULL, '2023-02-24 07:52:43', '2023-02-24 07:52:43'),
(395, 'App\\Models\\User', 51, 'API TOKEN', 'c600701e6a5bd7ed92aba48e1ad8de04f9f55848492166601f76c09a849dbcfe', '[\"*\"]', NULL, NULL, '2023-02-24 09:43:12', '2023-02-24 09:43:12'),
(396, 'App\\Models\\User', 53, 'API TOKEN', '1455682fea62aac7db546d982368b016f3b21cf5f4bc618403f9da5486c02b8e', '[\"*\"]', NULL, NULL, '2023-02-24 10:06:08', '2023-02-24 10:06:08'),
(397, 'App\\Models\\User', 51, 'API TOKEN', 'b67326ee7f93293235f3ad020c02148c1cd43d8259aff1dcc973cc2812be74a7', '[\"*\"]', NULL, NULL, '2023-02-24 10:08:59', '2023-02-24 10:08:59'),
(398, 'App\\Models\\User', 53, 'API TOKEN', '3c0f8ac563aa2428973c35acd7d30e8e785f754c71bbb6f233d4ae5e7fd3f794', '[\"*\"]', NULL, NULL, '2023-02-24 10:09:26', '2023-02-24 10:09:26'),
(399, 'App\\Models\\User', 56, 'API TOKEN', '89c8b8fe7416dd3f82233e5899a68852236e84be07cec59e899bec0d240e070d', '[\"*\"]', NULL, NULL, '2023-02-24 10:32:42', '2023-02-24 10:32:42'),
(400, 'App\\Models\\User', 51, 'API TOKEN', 'f5b0c63b2d3870b821dddb934d864aefcb98c6f3cc72667599305245b9b4822f', '[\"*\"]', NULL, NULL, '2023-02-24 10:33:01', '2023-02-24 10:33:01'),
(401, 'App\\Models\\User', 51, 'API TOKEN', 'b0f359ec10abee92cefab8338890142a640a1fec2ea499665042d786687ac196', '[\"*\"]', NULL, NULL, '2023-02-24 16:50:17', '2023-02-24 16:50:17'),
(402, 'App\\Models\\User', 56, 'API TOKEN', '19a5e1e7b9eb3310c93daa4052080f91582923533f670cafb203d17ee0fd7df0', '[\"*\"]', NULL, NULL, '2023-02-24 17:41:25', '2023-02-24 17:41:25'),
(403, 'App\\Models\\User', 51, 'API TOKEN', 'd1080c33de577502ba04d125abcd9729726e3c41d691ad7d548207bd7a880600', '[\"*\"]', NULL, NULL, '2023-02-24 17:42:22', '2023-02-24 17:42:22'),
(404, 'App\\Models\\User', 52, 'API TOKEN', '9b9513280e0a58a1438637b1f14b3b66c54fae5cee2ace0d751b1cf167780b71', '[\"*\"]', NULL, NULL, '2023-02-24 18:14:29', '2023-02-24 18:14:29'),
(405, 'App\\Models\\User', 51, 'API TOKEN', '8f0d864858e93b296dcdb5b97bce5e1bc9bc0105f42c0affa04ee8943738a2dc', '[\"*\"]', NULL, NULL, '2023-02-25 10:54:20', '2023-02-25 10:54:20'),
(406, 'App\\Models\\User', 57, 'API TOKEN', '4b75763a7c047f74eb404c9c02778ebb3aa5ed4cf95cd476ee613ad757b8c112', '[\"*\"]', NULL, NULL, '2023-02-25 12:38:41', '2023-02-25 12:38:41'),
(407, 'App\\Models\\User', 51, 'API TOKEN', '25aca1c9120172e8d1bdd2e96f667c9bf246e04c2ec5f048ef9593f2bc4d60f5', '[\"*\"]', NULL, NULL, '2023-02-25 12:39:41', '2023-02-25 12:39:41'),
(408, 'App\\Models\\User', 57, 'API TOKEN', '95f6edf22d529b43597e24dc3c8c475414b03679a96cb525562ca50422ec2e03', '[\"*\"]', NULL, NULL, '2023-02-25 12:40:03', '2023-02-25 12:40:03'),
(409, 'App\\Models\\User', 55, 'API TOKEN', '04e6bfbf32a96370bda7cb315b5293d42f32fc523e5610b8ad41d75b509cb315', '[\"*\"]', NULL, NULL, '2023-02-25 12:42:17', '2023-02-25 12:42:17'),
(410, 'App\\Models\\User', 57, 'API TOKEN', 'ec9745d0a4ca396fc4e619f9c2f536c5c06f600471498fdaf9a0b202389e84a6', '[\"*\"]', NULL, NULL, '2023-02-25 12:42:31', '2023-02-25 12:42:31'),
(411, 'App\\Models\\User', 55, 'API TOKEN', '86839b89e08131ebb291a4097171b9150b94cddbbe1b08f454425222d459b93d', '[\"*\"]', NULL, NULL, '2023-02-25 12:50:06', '2023-02-25 12:50:06'),
(412, 'App\\Models\\User', 51, 'API TOKEN', '068195218a425eaff2651b8eac41b31bce33d18a287ac6cd7789818d36eea7b3', '[\"*\"]', NULL, NULL, '2023-02-25 12:50:25', '2023-02-25 12:50:25'),
(413, 'App\\Models\\User', 57, 'API TOKEN', 'f36d0c2924b9c6499d577d143037658889326af40f54767d165405ddd44230e5', '[\"*\"]', NULL, NULL, '2023-02-25 12:50:48', '2023-02-25 12:50:48'),
(414, 'App\\Models\\User', 51, 'API TOKEN', 'b420dd3860aafc7bc2693609b250ef7e1ccfb759d5c0270dcf4141516d2726a3', '[\"*\"]', NULL, NULL, '2023-02-25 12:54:28', '2023-02-25 12:54:28'),
(415, 'App\\Models\\User', 51, 'API TOKEN', '3467413c045ee6b0ffe15a33983b4c8f414f89db4d17204dcd73ecb8d1473728', '[\"*\"]', NULL, NULL, '2023-02-25 13:10:11', '2023-02-25 13:10:11'),
(416, 'App\\Models\\User', 56, 'API TOKEN', 'a0096d48b67bff753f54edcaed0877bae202f4674de407c7cb60a7dab4deffc1', '[\"*\"]', NULL, NULL, '2023-02-25 14:43:51', '2023-02-25 14:43:51'),
(417, 'App\\Models\\User', 56, 'API TOKEN', '563eba604908a238bce8efe4b028ca67723955508f293df55bc74ea3fb8d946d', '[\"*\"]', NULL, NULL, '2023-02-25 14:53:42', '2023-02-25 14:53:42'),
(418, 'App\\Models\\User', 61, 'API TOKEN', 'fd47515807f30186e6067003052a81dd5f5fb78252725bafb3c0a7a723d93fa4', '[\"*\"]', NULL, NULL, '2023-02-25 21:32:49', '2023-02-25 21:32:49'),
(419, 'App\\Models\\User', 61, 'API TOKEN', 'b242f6242c10098fa23f8e30c986f760492e47e2adb0d1ebedae51192298f520', '[\"*\"]', NULL, NULL, '2023-02-25 21:33:49', '2023-02-25 21:33:49'),
(420, 'App\\Models\\User', 51, 'API TOKEN', '920a1d9bbe088e8ceb2838a962036105c6198b4bac92232f05c9bcf86be04e72', '[\"*\"]', NULL, NULL, '2023-02-26 08:41:06', '2023-02-26 08:41:06'),
(421, 'App\\Models\\User', 61, 'API TOKEN', '64414892cde46cce0132554a1906d29a1b1befe5b5aed9f94f5a16b2258e150d', '[\"*\"]', NULL, NULL, '2023-02-26 08:59:45', '2023-02-26 08:59:45'),
(422, 'App\\Models\\User', 53, 'API TOKEN', '1a119f169d21b9f88aeedcb9e123b2fa9b2c6a6b9867844fd5c4bd16554444bb', '[\"*\"]', NULL, NULL, '2023-02-26 09:35:37', '2023-02-26 09:35:37'),
(423, 'App\\Models\\User', 51, 'API TOKEN', '6aa4c3c02028a1d420713277dc029dcdf909eb124cb1558ea58d955c82d0fafd', '[\"*\"]', NULL, NULL, '2023-02-26 09:38:04', '2023-02-26 09:38:04'),
(424, 'App\\Models\\User', 53, 'API TOKEN', '827e31011a12e3014c9295740cceca3f575390b2327db8ea7ad4cb1d5a06df4f', '[\"*\"]', NULL, NULL, '2023-02-26 15:08:17', '2023-02-26 15:08:17'),
(425, 'App\\Models\\User', 51, 'API TOKEN', '758af4796ac6e1fe403a7159a5fe898582961ecc31840e7c3811bb21726f895a', '[\"*\"]', NULL, NULL, '2023-02-27 08:54:28', '2023-02-27 08:54:28'),
(426, 'App\\Models\\User', 52, 'API TOKEN', '3a31f95477b6715b37b98c99ec77b4b9e3c74cef5cb1386c144461b37b7c6fe7', '[\"*\"]', NULL, NULL, '2023-02-27 09:46:18', '2023-02-27 09:46:18'),
(427, 'App\\Models\\User', 51, 'API TOKEN', '206f0d4dfd757c2693dc9caf4134f831c4c5182def91e0b44262163f158eb124', '[\"*\"]', NULL, NULL, '2023-02-27 10:13:33', '2023-02-27 10:13:33'),
(428, 'App\\Models\\User', 56, 'API TOKEN', '59a8a2da24fce8a3b3d4af8734aa17fc44e7d20e5de9127301de0adb56d46200', '[\"*\"]', NULL, NULL, '2023-02-27 11:07:54', '2023-02-27 11:07:54'),
(429, 'App\\Models\\User', 51, 'API TOKEN', '03feb217970150661050c3435165bff2e111787935475f82ce732cd54b1839df', '[\"*\"]', NULL, NULL, '2023-02-27 11:23:52', '2023-02-27 11:23:52'),
(430, 'App\\Models\\User', 51, 'API TOKEN', '41f1c5a118c4d5cf4ff3a33fd6220b6a929d7c9341eb844ec100c8ce4f135068', '[\"*\"]', NULL, NULL, '2023-02-27 13:41:53', '2023-02-27 13:41:53'),
(431, 'App\\Models\\User', 61, 'API TOKEN', 'a3d272404837a5049c3d4e2ebad9ae1bd892b6100a484e1d837575a57792d3e4', '[\"*\"]', NULL, NULL, '2023-02-27 14:34:44', '2023-02-27 14:34:44'),
(432, 'App\\Models\\User', 55, 'API TOKEN', '76fc659fcc993d62dd599597840f3a3e9ef1958835fd98e191708f1e118ba28e', '[\"*\"]', NULL, NULL, '2023-02-27 14:35:38', '2023-02-27 14:35:38'),
(433, 'App\\Models\\User', 51, 'API TOKEN', '38304f7e228f89ed1e5008d942b3b8d3faf2b626f16dc711dd42df7eb5040775', '[\"*\"]', NULL, NULL, '2023-02-27 14:36:02', '2023-02-27 14:36:02'),
(434, 'App\\Models\\User', 55, 'API TOKEN', '53d9f2de4aa7a23b2d7956b491f731b00fb3d971ffa7fad8127e45b7776d93bf', '[\"*\"]', NULL, NULL, '2023-02-27 14:50:57', '2023-02-27 14:50:57'),
(435, 'App\\Models\\User', 55, 'API TOKEN', '68d985d57cf4cc5a1a351d74a20c9d74d1609d988fe0e98a6f7af7d45d0000d3', '[\"*\"]', NULL, NULL, '2023-02-27 14:53:39', '2023-02-27 14:53:39'),
(436, 'App\\Models\\User', 57, 'API TOKEN', 'e823b3ccb7ea9c728e3459e6ce4ec537131ac3a1d326d70bfe627e6ab8567077', '[\"*\"]', NULL, NULL, '2023-02-27 15:15:12', '2023-02-27 15:15:12'),
(437, 'App\\Models\\User', 57, 'API TOKEN', 'd67309065d1c23e311f277b5ee83219fbaf700b06393b7f66dc871ca086c7f03', '[\"*\"]', NULL, NULL, '2023-02-27 15:15:31', '2023-02-27 15:15:31'),
(438, 'App\\Models\\User', 57, 'API TOKEN', 'b4d60a16400fe9e8b56aab8a544703200b623759cc334804b5b575abe3e5d1f2', '[\"*\"]', NULL, NULL, '2023-02-27 15:51:37', '2023-02-27 15:51:37'),
(439, 'App\\Models\\User', 53, 'API TOKEN', 'ad82b851af26eff3d2dbe2c1e08bc7048aa3ffd9b29ea17242d28eea2cad27c0', '[\"*\"]', NULL, NULL, '2023-02-27 16:20:23', '2023-02-27 16:20:23'),
(440, 'App\\Models\\User', 51, 'API TOKEN', '7fa9ca5c6286e2d887bef66a77dbb6d0466994f4d4d31d2128602c34181ba39d', '[\"*\"]', NULL, NULL, '2023-02-27 16:28:04', '2023-02-27 16:28:04'),
(441, 'App\\Models\\User', 51, 'API TOKEN', '646d613384dd608be1ca64e25be3c19950e38c64555c67f82e34614ab290eb7b', '[\"*\"]', NULL, NULL, '2023-02-28 04:21:41', '2023-02-28 04:21:41'),
(442, 'App\\Models\\User', 53, 'API TOKEN', 'c965b59b7fa7293f4c1bfab659ce8dd0c3cfef7907568d9e512969d8263f50ed', '[\"*\"]', NULL, NULL, '2023-02-28 04:22:27', '2023-02-28 04:22:27'),
(443, 'App\\Models\\User', 51, 'API TOKEN', '8b4c214ae80f79b493f3a18c03c4ca779d83f36ea5080f8176018bd78f0aeb98', '[\"*\"]', NULL, NULL, '2023-02-28 04:23:18', '2023-02-28 04:23:18'),
(444, 'App\\Models\\User', 53, 'API TOKEN', 'cfdb8adde772c02d9313f68a9a19dc81862e20d69f993895cbc3c25b5a284e24', '[\"*\"]', NULL, NULL, '2023-02-28 04:34:01', '2023-02-28 04:34:01'),
(445, 'App\\Models\\User', 52, 'API TOKEN', '65672234526291bb4c78d9030c671f1baef2c17c9f8704451c0d390c23b07238', '[\"*\"]', NULL, NULL, '2023-02-28 04:34:41', '2023-02-28 04:34:41'),
(446, 'App\\Models\\User', 51, 'API TOKEN', '8a405a0cd5f9e0d5d4bf842a751f2c25d9568afba2b571c3ee058d1e9db20577', '[\"*\"]', NULL, NULL, '2023-02-28 04:43:52', '2023-02-28 04:43:52'),
(447, 'App\\Models\\User', 57, 'API TOKEN', 'fdc05e577a780a8491650cc08d25324f0778a99aa9ce130e55b0d55c2444a090', '[\"*\"]', NULL, NULL, '2023-02-28 04:44:08', '2023-02-28 04:44:08'),
(448, 'App\\Models\\User', 55, 'API TOKEN', '636445bcd32210b94e2b0dea6362f1c7a45366174bf2536e012e1bc7264dcf6d', '[\"*\"]', NULL, NULL, '2023-02-28 04:45:36', '2023-02-28 04:45:36'),
(449, 'App\\Models\\User', 53, 'API TOKEN', 'bed9e7dc487bc22cff947a185dd58015feec004ec2b2590264a7a05861bef1ae', '[\"*\"]', NULL, NULL, '2023-02-28 04:53:52', '2023-02-28 04:53:52'),
(450, 'App\\Models\\User', 52, 'API TOKEN', '835d48662d564dbb32da9bdd1c3a414120c2d4c655a21f477b2393ac5d19ebf6', '[\"*\"]', NULL, NULL, '2023-02-28 04:54:20', '2023-02-28 04:54:20'),
(451, 'App\\Models\\User', 53, 'API TOKEN', '8fe89ab9068e752807852a01e87b0b39a262164cc872dade09f6a4c8ff382413', '[\"*\"]', NULL, NULL, '2023-02-28 04:55:49', '2023-02-28 04:55:49'),
(452, 'App\\Models\\User', 53, 'API TOKEN', 'f0865adec3fdd213e04d696ed74cf6ea2ab5174c4537a4dd71a6186ab1886adc', '[\"*\"]', NULL, NULL, '2023-02-28 06:09:00', '2023-02-28 06:09:00'),
(453, 'App\\Models\\User', 51, 'API TOKEN', 'c66bbacb88bdad8c6ba24c33b5b8c821b63d556c6e22752e1612253a8cd13d7a', '[\"*\"]', NULL, NULL, '2023-02-28 10:12:34', '2023-02-28 10:12:34'),
(454, 'App\\Models\\User', 53, 'API TOKEN', 'c49d9bacb951da8a63b363b49d76e2591f9d644c2aa434aa52bf666873cde8e0', '[\"*\"]', NULL, NULL, '2023-02-28 10:13:58', '2023-02-28 10:13:58'),
(455, 'App\\Models\\User', 61, 'API TOKEN', 'e389192eecb9f2f3f6258d366e7c58dd72e567110376bf70f205d056839657dd', '[\"*\"]', NULL, NULL, '2023-02-28 13:09:32', '2023-02-28 13:09:32'),
(456, 'App\\Models\\User', 56, 'API TOKEN', 'eb7097fb2ed91bcb2623a9f1223426cf66051bf39d88b294d743560d8e1521b3', '[\"*\"]', NULL, NULL, '2023-02-28 13:10:16', '2023-02-28 13:10:16'),
(457, 'App\\Models\\User', 57, 'API TOKEN', 'a4231d77149bc0156ed659ad1a053c94d149e409da2ae14e8e850b59c51b7caa', '[\"*\"]', NULL, NULL, '2023-02-28 13:13:45', '2023-02-28 13:13:45'),
(458, 'App\\Models\\User', 56, 'API TOKEN', 'd6d6224040b5b99fa0fe670365535c28091fb5fb03dfe78b49bd9498985141d5', '[\"*\"]', NULL, NULL, '2023-02-28 13:15:29', '2023-02-28 13:15:29'),
(459, 'App\\Models\\User', 51, 'API TOKEN', '168b70b268383f3129ff7a0256ff934956041d05362016a9d15b766a260c5a3a', '[\"*\"]', NULL, NULL, '2023-02-28 13:23:21', '2023-02-28 13:23:21'),
(460, 'App\\Models\\User', 53, 'API TOKEN', '5748f4294cb1592b6f81c9d4c57b90673607eed5c7e88b434197d3c724a0ed3b', '[\"*\"]', NULL, NULL, '2023-02-28 13:24:25', '2023-02-28 13:24:25'),
(461, 'App\\Models\\User', 53, 'API TOKEN', '535589a04cc428d8b76ecd5b16dd90787b53adcf0823ea23d7e841c17cdd3610', '[\"*\"]', NULL, NULL, '2023-02-28 13:26:10', '2023-02-28 13:26:10'),
(462, 'App\\Models\\User', 55, 'API TOKEN', '48a7c9a34a7473edf6b2fbc23700a32af340a53ad4b667504ce5f2196b4956d1', '[\"*\"]', NULL, NULL, '2023-02-28 13:26:50', '2023-02-28 13:26:50'),
(463, 'App\\Models\\User', 53, 'API TOKEN', '58d95ca86532cb2600dfaa0c7e11003c7768c8fcca15608ea8be9fc7f454cc9c', '[\"*\"]', NULL, NULL, '2023-02-28 13:31:33', '2023-02-28 13:31:33'),
(464, 'App\\Models\\User', 51, 'API TOKEN', '42515a709b51613f66031f1e2b74cea503c35733b99c9200b96edcb852c80936', '[\"*\"]', NULL, NULL, '2023-02-28 14:46:53', '2023-02-28 14:46:53'),
(465, 'App\\Models\\User', 53, 'API TOKEN', 'ebfbc0619b5b649e9bf6cd31d204f01a950408782b23adb3c4788f51da7b5dcf', '[\"*\"]', NULL, NULL, '2023-02-28 14:47:28', '2023-02-28 14:47:28'),
(466, 'App\\Models\\User', 51, 'API TOKEN', '87615a52d1e9fe3ffb3edc31789bee4f89144c2f51db4b0d4b4cbcac600f6a05', '[\"*\"]', NULL, NULL, '2023-02-28 15:44:38', '2023-02-28 15:44:38'),
(467, 'App\\Models\\User', 53, 'API TOKEN', 'a561434e6042827b2f3ec4b40d3ff61fc91e36475e1b8f614ff3162d9c99151e', '[\"*\"]', NULL, NULL, '2023-02-28 15:48:08', '2023-02-28 15:48:08'),
(468, 'App\\Models\\User', 51, 'API TOKEN', '4d60f85b8868a8d6f7853bf1b79e706013c9927ff5ac597df2077d5e30eb6735', '[\"*\"]', NULL, NULL, '2023-02-28 15:50:17', '2023-02-28 15:50:17'),
(469, 'App\\Models\\User', 53, 'API TOKEN', 'd758721f7f6e1a4c45d451c4e9481c6eb40ef25f399e1548687d06446d655653', '[\"*\"]', NULL, NULL, '2023-02-28 17:28:47', '2023-02-28 17:28:47'),
(470, 'App\\Models\\User', 51, 'API TOKEN', '0df811d1380f39afc614f4f8a79edb02e3ad2a3ad012f9386906cafcdf015c99', '[\"*\"]', NULL, NULL, '2023-03-01 02:31:39', '2023-03-01 02:31:39'),
(471, 'App\\Models\\User', 53, 'API TOKEN', '9a255d431ec89b0152d09f4d550f3af36a2c098b86243eb7b1aa70df92cd24db', '[\"*\"]', NULL, NULL, '2023-03-01 02:35:37', '2023-03-01 02:35:37'),
(472, 'App\\Models\\User', 62, 'API TOKEN', '3e80b6f072317fab5e5be5935eb146caadd1b59588a793433e4ecef56b0f7205', '[\"*\"]', NULL, NULL, '2023-03-01 03:28:05', '2023-03-01 03:28:05'),
(473, 'App\\Models\\User', 53, 'API TOKEN', '5b7b61ac9809a2a2e1939b2781ca09d084820df291f681f9ea02e617750bc403', '[\"*\"]', NULL, NULL, '2023-03-01 04:18:57', '2023-03-01 04:18:57'),
(474, 'App\\Models\\User', 53, 'API TOKEN', 'ac519eb612d9cadbba8c735419cfc9613a42d3d927ddd06372129638a0081cdc', '[\"*\"]', NULL, NULL, '2023-03-01 04:43:32', '2023-03-01 04:43:32'),
(475, 'App\\Models\\User', 56, 'API TOKEN', '9f5f93e915b1fdda623ded3bfbb85041720de39c76d99612e6ce832c1df2ca6a', '[\"*\"]', NULL, NULL, '2023-03-01 06:00:26', '2023-03-01 06:00:26'),
(476, 'App\\Models\\User', 63, 'API TOKEN', 'db3041e4852cc8e03294e21d4f5720299a1714884df1d648361bacc632f8b8f5', '[\"*\"]', NULL, NULL, '2023-03-01 06:05:28', '2023-03-01 06:05:28'),
(477, 'App\\Models\\User', 51, 'API TOKEN', '63751e7cb3151112c55d8d8d5409cf6b870f6610c3bbc455b40dcd6ff31151fd', '[\"*\"]', NULL, NULL, '2023-03-01 06:06:59', '2023-03-01 06:06:59'),
(478, 'App\\Models\\User', 63, 'API TOKEN', '58a59cf4c21e0df0c2132cec1580458b92ee50d3895fe6d3b6f6e4c028138895', '[\"*\"]', NULL, NULL, '2023-03-01 06:17:11', '2023-03-01 06:17:11'),
(479, 'App\\Models\\User', 53, 'API TOKEN', '31f950050e2ee32ab43871c98ec0644fd59318ff2f10aa8124c6d5c7ca6c9350', '[\"*\"]', NULL, NULL, '2023-03-01 06:25:34', '2023-03-01 06:25:34'),
(480, 'App\\Models\\User', 52, 'API TOKEN', '454028faea22ea21f5774f88258854b73d486afe9f0cd76c24c0ab5366ea4767', '[\"*\"]', NULL, NULL, '2023-03-01 06:29:30', '2023-03-01 06:29:30'),
(481, 'App\\Models\\User', 51, 'API TOKEN', 'a745d40616856b29b762fa9e26e81668bd4fdb085e14f834a460e9f0dc8e24e6', '[\"*\"]', NULL, NULL, '2023-03-01 06:52:25', '2023-03-01 06:52:25'),
(482, 'App\\Models\\User', 52, 'API TOKEN', '51a6a09c4dc61e7e2f3f34016c020d4be56e6a02699c0a98906a408a1aef9474', '[\"*\"]', NULL, NULL, '2023-03-01 07:29:34', '2023-03-01 07:29:34'),
(483, 'App\\Models\\User', 51, 'API TOKEN', 'e63fd629644d161fe43d458496b3ddc850bcf32ce20b69b89db155149ec5dc84', '[\"*\"]', NULL, NULL, '2023-03-01 07:44:43', '2023-03-01 07:44:43'),
(484, 'App\\Models\\User', 51, 'API TOKEN', 'd623fd3877f880a39703f049110ceee3a3afcbb3a39f53a94fea69dc8ac18c59', '[\"*\"]', NULL, NULL, '2023-03-01 07:52:43', '2023-03-01 07:52:43'),
(485, 'App\\Models\\User', 51, 'API TOKEN', '98180cbdedd12126903056513b1dceb9a2482167965bd3eec1770632131edee7', '[\"*\"]', NULL, NULL, '2023-03-01 08:26:47', '2023-03-01 08:26:47'),
(486, 'App\\Models\\User', 61, 'API TOKEN', 'd246f430ed2ed974926d1a0a65d9c7d8c61de71fdf4ad60078c4f74902016994', '[\"*\"]', NULL, NULL, '2023-03-01 12:19:14', '2023-03-01 12:19:14'),
(487, 'App\\Models\\User', 51, 'API TOKEN', '1dd35fd7c268b1f9678858ba90325f55f822c2be92860b166149dd5ca6b415db', '[\"*\"]', NULL, NULL, '2023-03-01 12:21:22', '2023-03-01 12:21:22'),
(488, 'App\\Models\\User', 61, 'API TOKEN', '8a9c631b4b5efe145849320aca5164e9f6405de573a2e3c720a249d64f0f2356', '[\"*\"]', NULL, NULL, '2023-03-01 13:15:18', '2023-03-01 13:15:18'),
(489, 'App\\Models\\User', 61, 'API TOKEN', '5351d5a7597e7fab3bd98244978a72fe58cf1c3189d89bd2d1dfb899f505c8b1', '[\"*\"]', NULL, NULL, '2023-03-01 13:45:17', '2023-03-01 13:45:17'),
(490, 'App\\Models\\User', 51, 'API TOKEN', 'a0c45608f785619a4cc663e6ea2339e6f671ae075f4ef4b6e585fbd465cadcfe', '[\"*\"]', NULL, NULL, '2023-03-01 14:04:43', '2023-03-01 14:04:43'),
(491, 'App\\Models\\User', 53, 'API TOKEN', '52b5703f770fe004400e425a7c00c060c64ec33353c9c2c8a60aa32b39155618', '[\"*\"]', NULL, NULL, '2023-03-01 16:28:42', '2023-03-01 16:28:42'),
(492, 'App\\Models\\User', 51, 'API TOKEN', '4254218b49472762f40360778c8629ec36aea42d8895a28da354a18c949bf046', '[\"*\"]', NULL, NULL, '2023-03-01 16:30:09', '2023-03-01 16:30:09'),
(493, 'App\\Models\\User', 53, 'API TOKEN', '99587b0318265e46720a0055b95153cf9f37e69888f51a3ce1007ebe001c2cf2', '[\"*\"]', NULL, NULL, '2023-03-01 16:43:29', '2023-03-01 16:43:29'),
(494, 'App\\Models\\User', 51, 'API TOKEN', '6106a2d5a8cf8878ee9650c51d8addcb194039d7713dad13416d454251cd3bfa', '[\"*\"]', NULL, NULL, '2023-03-02 01:02:38', '2023-03-02 01:02:38'),
(495, 'App\\Models\\User', 61, 'API TOKEN', 'c08642622c45817c3b2fa80fd8f0573d8c9d5863c78fc4718ebf9985dc90aa8e', '[\"*\"]', NULL, NULL, '2023-03-02 01:14:27', '2023-03-02 01:14:27'),
(496, 'App\\Models\\User', 53, 'API TOKEN', 'f9db8e4c04dbe553c284e93b907cea0fd99dd9d0e94396b4f0cbcb1116807760', '[\"*\"]', NULL, NULL, '2023-03-02 01:53:38', '2023-03-02 01:53:38'),
(497, 'App\\Models\\User', 51, 'API TOKEN', 'a12e1e3eef4a798299ad89a39ffe344f83cb90dccd58c811ba0e03f997612a87', '[\"*\"]', NULL, NULL, '2023-03-02 01:59:53', '2023-03-02 01:59:53'),
(498, 'App\\Models\\User', 55, 'API TOKEN', '90ea3cba8f4cb42442680bdc424c2c832df1444ca60609fb98bd79f5b64685df', '[\"*\"]', NULL, NULL, '2023-03-02 02:01:34', '2023-03-02 02:01:34'),
(499, 'App\\Models\\User', 55, 'API TOKEN', '7f6498f40aa963865c46dbc4bcfe50e5a6fab6233231266a7a9e90f9a7177291', '[\"*\"]', NULL, NULL, '2023-03-02 02:01:45', '2023-03-02 02:01:45'),
(500, 'App\\Models\\User', 57, 'API TOKEN', '40aa11c9803a565aeca08d4b7199d99fa599d0964a25f9bf61952a286da5b852', '[\"*\"]', NULL, NULL, '2023-03-02 02:02:29', '2023-03-02 02:02:29'),
(501, 'App\\Models\\User', 52, 'API TOKEN', '7dbd11a40fb8f974b7ca0a988439b53e8bb61789a8e2892708501c2545dba0bd', '[\"*\"]', NULL, NULL, '2023-03-02 02:03:01', '2023-03-02 02:03:01'),
(502, 'App\\Models\\User', 57, 'API TOKEN', 'e26f93bbf921d7aea9d4a9deb03c2818f435ee29e828551d2e58ff51d89489a0', '[\"*\"]', NULL, NULL, '2023-03-02 02:03:14', '2023-03-02 02:03:14'),
(503, 'App\\Models\\User', 55, 'API TOKEN', '430a47ef4f7dd1188383f897e710db521f70a9d1eec96875d917a36b7706da0e', '[\"*\"]', NULL, NULL, '2023-03-02 02:05:32', '2023-03-02 02:05:32'),
(504, 'App\\Models\\User', 53, 'API TOKEN', '9388f47672dda89f6aa1f965e70fd9faa160d698efbb736b1f84278956e33bc8', '[\"*\"]', NULL, NULL, '2023-03-02 02:06:56', '2023-03-02 02:06:56'),
(505, 'App\\Models\\User', 53, 'API TOKEN', 'bac1acd66d5ec11c7d92098486d92804c3bfee7ff9086fdaab2930ff3e81ae6c', '[\"*\"]', NULL, NULL, '2023-03-02 02:17:16', '2023-03-02 02:17:16'),
(506, 'App\\Models\\User', 51, 'API TOKEN', '8f62ac09517cb55a5dac1e2cfb111268a7871cf316a1a9377e4d316f0b842419', '[\"*\"]', NULL, NULL, '2023-03-02 02:41:30', '2023-03-02 02:41:30'),
(507, 'App\\Models\\User', 55, 'API TOKEN', 'e874e60fde88c8c5dfe2fd3314a311248d27b0faa6a7652f8fe02fd5ae90e5bf', '[\"*\"]', NULL, NULL, '2023-03-02 02:41:49', '2023-03-02 02:41:49'),
(508, 'App\\Models\\User', 51, 'API TOKEN', '416bc9aef59d56582013564aee262bc68c11a5f31e7c3a63ee310b87223a2322', '[\"*\"]', NULL, NULL, '2023-03-02 02:42:13', '2023-03-02 02:42:13'),
(509, 'App\\Models\\User', 51, 'API TOKEN', '740e41ae8c813f49f7e89aba3ce8e2602191d4a04c8e7eeae3bef9f8ae6c2bcd', '[\"*\"]', NULL, NULL, '2023-03-02 02:42:36', '2023-03-02 02:42:36'),
(510, 'App\\Models\\User', 53, 'API TOKEN', 'a614fcff4232cf1de4f11c7af0be743d0ec0a826d3b93e498b2b09c0b4d3f042', '[\"*\"]', NULL, NULL, '2023-03-02 02:43:10', '2023-03-02 02:43:10'),
(511, 'App\\Models\\User', 52, 'API TOKEN', 'd595b30e1a8b95f02507fdddbeb7090431c74eb88c6caccbacded060c27cf2fc', '[\"*\"]', NULL, NULL, '2023-03-02 03:34:08', '2023-03-02 03:34:08'),
(512, 'App\\Models\\User', 53, 'API TOKEN', '2e03e4beac282ecb0d51afe5d51161e6d6dc66d262bd036bf82569c8a2d3515e', '[\"*\"]', NULL, NULL, '2023-03-02 03:40:00', '2023-03-02 03:40:00'),
(513, 'App\\Models\\User', 51, 'API TOKEN', '2311e932ccbe646920555650e3c14b58f03bcfd408c4f59eed1676e776f8e33f', '[\"*\"]', NULL, NULL, '2023-03-02 03:40:22', '2023-03-02 03:40:22'),
(514, 'App\\Models\\User', 52, 'API TOKEN', 'db742e52d3608ef6ab3c414f0a0667f1e9c5dd5e6bcb575b3d44e397fd96a7ea', '[\"*\"]', NULL, NULL, '2023-03-02 03:40:40', '2023-03-02 03:40:40'),
(515, 'App\\Models\\User', 53, 'API TOKEN', '4cb4012f682d0c511b5b4054d521948337d83366c6dd31f4563023a6be3e198d', '[\"*\"]', NULL, NULL, '2023-03-02 04:54:02', '2023-03-02 04:54:02'),
(516, 'App\\Models\\User', 51, 'API TOKEN', '1fbdec20aa6979551e495ac8c20368807dccc9ab7592e1fe08c2cac891f127dc', '[\"*\"]', NULL, NULL, '2023-03-02 04:58:02', '2023-03-02 04:58:02'),
(517, 'App\\Models\\User', 52, 'API TOKEN', '9eedc79d9393792e6b65e21f9520da2cff2d840e35675abc50ccaa1f6477ab9e', '[\"*\"]', NULL, NULL, '2023-03-02 05:00:07', '2023-03-02 05:00:07'),
(518, 'App\\Models\\User', 52, 'API TOKEN', '0e1c01bf07a241fc7518ecdf5b4bc5ded2c96748a3b5677beb8c80e7e3bdc44a', '[\"*\"]', NULL, NULL, '2023-03-02 05:18:51', '2023-03-02 05:18:51'),
(519, 'App\\Models\\User', 52, 'API TOKEN', 'd499d62b25552f4b7fa7bc6a21da958556b6d9270e39ab80b85cf1b3d47990bc', '[\"*\"]', NULL, NULL, '2023-03-02 08:34:34', '2023-03-02 08:34:34'),
(520, 'App\\Models\\User', 55, 'API TOKEN', 'f16e411dbb0ac886504a4848edbe804c7c09a040f46f241dd22c72a4a4a9f316', '[\"*\"]', NULL, NULL, '2023-03-02 08:35:23', '2023-03-02 08:35:23'),
(521, 'App\\Models\\User', 55, 'API TOKEN', 'a7be82c0c7e8b06c1fd729f346c78f0501ba25dae1d5413774e2e6e7493c078d', '[\"*\"]', NULL, NULL, '2023-03-02 08:35:50', '2023-03-02 08:35:50'),
(522, 'App\\Models\\User', 57, 'API TOKEN', '7dee09cdd69297d2de73226320f20770cde53a3c4a7310a8c9ca91f552ca710a', '[\"*\"]', NULL, NULL, '2023-03-02 08:36:23', '2023-03-02 08:36:23'),
(523, 'App\\Models\\User', 53, 'API TOKEN', '5515a05d794d0211037f49d753a1ede93915f705014119de57ac01c709adb7ba', '[\"*\"]', NULL, NULL, '2023-03-02 09:12:31', '2023-03-02 09:12:31'),
(524, 'App\\Models\\User', 53, 'API TOKEN', 'eb3169d5b03d21d5c011daccf3f6f4a5dd4de8b647123c2bfe9c1ea6c795964e', '[\"*\"]', NULL, NULL, '2023-03-02 09:28:20', '2023-03-02 09:28:20'),
(525, 'App\\Models\\User', 52, 'API TOKEN', 'bdebfde36f8e5335ebe36d54221d92824d67515d24ce38bd35bb4f7e9133adde', '[\"*\"]', NULL, NULL, '2023-03-02 09:28:43', '2023-03-02 09:28:43'),
(526, 'App\\Models\\User', 52, 'API TOKEN', '6e7e36e5def3af305dd6f0098de9ebc04a63a211182282fed94d3887aed7c155', '[\"*\"]', NULL, NULL, '2023-03-02 12:02:48', '2023-03-02 12:02:48'),
(527, 'App\\Models\\User', 52, 'API TOKEN', '7eb47cfe080968ca7ff9ecbf2d6b04188c18b37f49b757ab7110fcd3d72684ed', '[\"*\"]', NULL, NULL, '2023-03-02 13:31:53', '2023-03-02 13:31:53'),
(528, 'App\\Models\\User', 51, 'API TOKEN', '8d0db7d67b24c57fdd6cc7ee74b31adfb682149b658ccee4be1bc1c122310a1b', '[\"*\"]', NULL, NULL, '2023-03-02 13:35:36', '2023-03-02 13:35:36'),
(529, 'App\\Models\\User', 53, 'API TOKEN', '0d7aaaab04f0154bf3be0f79aed5a548d0c3e54a75c5a565d690d16d5e540146', '[\"*\"]', NULL, NULL, '2023-03-03 01:17:36', '2023-03-03 01:17:36'),
(530, 'App\\Models\\User', 52, 'API TOKEN', '163441c1ec40abd8c1520580dac1fcfdfb3049481ef024de5a7a4d264219cbb5', '[\"*\"]', NULL, NULL, '2023-03-03 01:23:01', '2023-03-03 01:23:01'),
(531, 'App\\Models\\User', 51, 'API TOKEN', 'fca9494e4e0f441ddf6d2d94c22196b64ab9f856088ee47a1048cd15ea1a432d', '[\"*\"]', NULL, NULL, '2023-03-03 02:07:56', '2023-03-03 02:07:56'),
(532, 'App\\Models\\User', 61, 'API TOKEN', '2704a7b3e7ac49796b269ce467630e248fbb2f2304d758a692d80a1349212210', '[\"*\"]', NULL, NULL, '2023-03-03 02:16:21', '2023-03-03 02:16:21'),
(533, 'App\\Models\\User', 51, 'API TOKEN', '2b74f4c54a3f3a6192f6aaecc67fb0f3997268fdbd14d700eab6e1fbf93d6427', '[\"*\"]', NULL, NULL, '2023-03-03 02:17:17', '2023-03-03 02:17:17'),
(534, 'App\\Models\\User', 61, 'API TOKEN', '57214844f9c62adb380394952959a03a987761b314c8fa5095cfa4d42b844442', '[\"*\"]', NULL, NULL, '2023-03-03 03:25:29', '2023-03-03 03:25:29'),
(535, 'App\\Models\\User', 61, 'API TOKEN', '1cbc422362c173d5f83e32c6698b91909649bc07635b52bb4eba9c962f2071d2', '[\"*\"]', NULL, NULL, '2023-03-03 03:32:45', '2023-03-03 03:32:45'),
(536, 'App\\Models\\User', 51, 'API TOKEN', '6affa15b5a535233f1041c443b92efb042302c3c846d8df588838e121b8cb706', '[\"*\"]', NULL, NULL, '2023-03-03 03:34:02', '2023-03-03 03:34:02'),
(537, 'App\\Models\\User', 53, 'API TOKEN', '47f05ea6bef551da08a5f42b50fc52bb13b00877bf287429d92abc6b4249b16c', '[\"*\"]', NULL, NULL, '2023-03-03 03:47:51', '2023-03-03 03:47:51'),
(538, 'App\\Models\\User', 52, 'API TOKEN', '7e46c928a979dcc59ab20a664b1a4a94843fc8744555db524bf1415a12b78e5f', '[\"*\"]', NULL, NULL, '2023-03-03 03:55:26', '2023-03-03 03:55:26'),
(539, 'App\\Models\\User', 52, 'API TOKEN', '9ae171457386688208063cc5325283bec6f088fa669d82d8ff2508470149deca', '[\"*\"]', NULL, NULL, '2023-03-03 03:58:38', '2023-03-03 03:58:38'),
(540, 'App\\Models\\User', 52, 'API TOKEN', '40f67ab671dacf10004572cfae17439bac068926c3dabc2c553cb3b0c0b430d2', '[\"*\"]', NULL, NULL, '2023-03-03 04:00:04', '2023-03-03 04:00:04'),
(541, 'App\\Models\\User', 53, 'API TOKEN', 'c4e3e6319cca9abb23175b3f962d570ccfcb51191cba5e43216597ae9824a8e3', '[\"*\"]', NULL, NULL, '2023-03-03 04:01:10', '2023-03-03 04:01:10'),
(542, 'App\\Models\\User', 52, 'API TOKEN', '259cb95e0684a2cc8f9b364b63d75b870792078e17a47fbdfb9e066b0de5ecfa', '[\"*\"]', NULL, NULL, '2023-03-03 04:04:24', '2023-03-03 04:04:24'),
(543, 'App\\Models\\User', 52, 'API TOKEN', 'e454733f64ebfafe721765482aef6200ebf6277c2bacd3d5dd8b30c6cfa436eb', '[\"*\"]', NULL, NULL, '2023-03-03 04:05:30', '2023-03-03 04:05:30'),
(544, 'App\\Models\\User', 51, 'API TOKEN', '0e65445b218c104a931b5aa3146ee8395afda2f00167b56b8581b935f1e5fc8a', '[\"*\"]', NULL, NULL, '2023-03-03 04:10:17', '2023-03-03 04:10:17'),
(545, 'App\\Models\\User', 61, 'API TOKEN', 'b1a8889a878edd3e3c9d648b168632df30cefeaf5c97fb61eb8ea12cee921bab', '[\"*\"]', NULL, NULL, '2023-03-03 04:12:23', '2023-03-03 04:12:23'),
(546, 'App\\Models\\User', 53, 'API TOKEN', '7ddf5124c21b791e81c3ce0e5161dc5d504d8b8bfd2bb8582b0902fcb9a85946', '[\"*\"]', NULL, NULL, '2023-03-03 04:14:50', '2023-03-03 04:14:50'),
(547, 'App\\Models\\User', 53, 'API TOKEN', '0e43091507a546f0367195ccf3f315059667c44764fd1c6f3a0e385b210c5d2e', '[\"*\"]', NULL, NULL, '2023-03-03 04:22:08', '2023-03-03 04:22:08'),
(548, 'App\\Models\\User', 53, 'API TOKEN', '426c72f0ec9c3c6617b613d2f6b0f59b6dee6342f66707bd7859e6aba96c2269', '[\"*\"]', NULL, NULL, '2023-03-03 04:25:50', '2023-03-03 04:25:50'),
(549, 'App\\Models\\User', 53, 'API TOKEN', 'f4de7ea0d6775b7e74f04c608b3cc66242097684ea82a9470d94de2faafb2c3a', '[\"*\"]', NULL, NULL, '2023-03-03 04:28:36', '2023-03-03 04:28:36'),
(550, 'App\\Models\\User', 53, 'API TOKEN', '4bc30409043ce52ea3573c72474aeba8922979026681a40c7cc49e865aaf49de', '[\"*\"]', NULL, NULL, '2023-03-03 04:42:43', '2023-03-03 04:42:43'),
(551, 'App\\Models\\User', 53, 'API TOKEN', '8da8bd45ddd376fd1365a37872378c1634747f62eec855ec380e7d501ffbc6a5', '[\"*\"]', NULL, NULL, '2023-03-03 04:43:23', '2023-03-03 04:43:23'),
(552, 'App\\Models\\User', 53, 'API TOKEN', '6592d0bcbc7c96c77fe70a4458868932b857c6b6217c71149ba81e7485e7cc15', '[\"*\"]', NULL, NULL, '2023-03-03 05:06:33', '2023-03-03 05:06:33'),
(553, 'App\\Models\\User', 51, 'API TOKEN', 'f1d9505f9a618fc05773a447db9c686ae47561c725ccc02694ea0a21e5f2d86e', '[\"*\"]', NULL, NULL, '2023-03-03 05:06:57', '2023-03-03 05:06:57');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(554, 'App\\Models\\User', 52, 'API TOKEN', '6d552919c679dc97b9b6c1190c28d96e79e9c1fd7f1e4e9bea7d70671f8cdbdf', '[\"*\"]', NULL, NULL, '2023-03-03 05:07:12', '2023-03-03 05:07:12'),
(555, 'App\\Models\\User', 53, 'API TOKEN', 'cb2529b6946e295716ccee7ca09eb4047489675e2c770ac17b25b62adf300061', '[\"*\"]', NULL, NULL, '2023-03-03 05:10:25', '2023-03-03 05:10:25'),
(556, 'App\\Models\\User', 61, 'API TOKEN', '70fbb2465db1c6b8cd643512abf47240c0091bf65b10c208dc5af18dc7c15a7e', '[\"*\"]', NULL, NULL, '2023-03-03 05:44:27', '2023-03-03 05:44:27'),
(557, 'App\\Models\\User', 61, 'API TOKEN', 'f18fd71d454eb1b1560f5400fc8cc534bf1c6e5a5f17bcb224ad2a4179cfdefd', '[\"*\"]', NULL, NULL, '2023-03-03 05:55:08', '2023-03-03 05:55:08'),
(558, 'App\\Models\\User', 192, 'API TOKEN', '28975f104c5aed063999f4f49b1673cc435071f0b4fd4cc370e66c083e34a212', '[\"*\"]', NULL, NULL, '2023-03-03 06:16:54', '2023-03-03 06:16:54'),
(559, 'App\\Models\\User', 51, 'API TOKEN', '26439e835776c94bc293ad095cb39c00c4cee5b4a22533d12a860f1128e043f0', '[\"*\"]', NULL, NULL, '2023-03-03 06:24:56', '2023-03-03 06:24:56'),
(560, 'App\\Models\\User', 53, 'API TOKEN', '6e2923a11c3048e607280bdf1e5c516137c003d06d67e185d17cc74e2f60a307', '[\"*\"]', NULL, NULL, '2023-03-05 13:42:47', '2023-03-05 13:42:47'),
(561, 'App\\Models\\User', 52, 'API TOKEN', 'f470e853cad309e705b4e1c3ee88b4f81c4effd3b4ded1634588abad7ac8a5ae', '[\"*\"]', NULL, NULL, '2023-03-05 15:45:48', '2023-03-05 15:45:48'),
(562, 'App\\Models\\User', 61, 'API TOKEN', 'c7d67d24b8227efdd9c8eb9bb1129d761887ea5bb42ead887f28853f2a502b01', '[\"*\"]', NULL, NULL, '2023-03-06 08:28:02', '2023-03-06 08:28:02'),
(563, 'App\\Models\\User', 61, 'API TOKEN', '5aea1f4e903e77f285eb2d01c1ceb2fe37c0b004962e402362b4ae76daea107e', '[\"*\"]', NULL, NULL, '2023-03-06 08:34:39', '2023-03-06 08:34:39'),
(564, 'App\\Models\\User', 52, 'API TOKEN', 'bb39abbbd9df45b737abcdfcbbe0d559fa5c9a6a6e2246c282552d1ba8984295', '[\"*\"]', NULL, NULL, '2023-03-07 14:16:25', '2023-03-07 14:16:25'),
(565, 'App\\Models\\User', 61, 'API TOKEN', 'd6f7493fbe2a87987d35ddeed61e94058ed68c5d8d41310bce909f4222968b20', '[\"*\"]', NULL, NULL, '2023-03-07 16:28:33', '2023-03-07 16:28:33'),
(566, 'App\\Models\\User', 51, 'API TOKEN', '392ea23924ededf4a00329d92e9dddcbf6fd9d1453e9559f9acc03b6e288dce8', '[\"*\"]', NULL, NULL, '2023-03-07 17:01:35', '2023-03-07 17:01:35'),
(567, 'App\\Models\\User', 53, 'API TOKEN', '7c628329dca95736bd42c4bdcedd0246a824f1b806661ad38020414392ed9686', '[\"*\"]', NULL, NULL, '2023-03-07 18:35:49', '2023-03-07 18:35:49'),
(568, 'App\\Models\\User', 53, 'API TOKEN', '065331c3d48b1fc3e97356aced55cf9b0297a0150794346b86bc01bd3e39bd0c', '[\"*\"]', NULL, NULL, '2023-03-07 19:15:21', '2023-03-07 19:15:21'),
(569, 'App\\Models\\User', 51, 'API TOKEN', 'ee39877a1346f657cd6103c8d04e0bb05c31827b825baef8c3256c5cff381109', '[\"*\"]', NULL, NULL, '2023-03-07 19:18:26', '2023-03-07 19:18:26'),
(570, 'App\\Models\\User', 52, 'API TOKEN', '806fdf386e2e7cb8f02458cc1add402a49b46f460d36df6c9e051e503a4eea67', '[\"*\"]', NULL, NULL, '2023-03-07 19:22:26', '2023-03-07 19:22:26'),
(571, 'App\\Models\\User', 51, 'API TOKEN', 'c42b71ae513538cb340f7f4c0bee55a90d83e7dd92b0b3e8ac663dbfd8642b11', '[\"*\"]', NULL, NULL, '2023-05-01 15:35:01', '2023-05-01 15:35:01'),
(572, 'App\\Models\\User', 51, 'API TOKEN', 'f3301e8341fbc8e9e4fe7de07c24441ff621dfa1472eff297b933a81840df13d', '[\"*\"]', NULL, NULL, '2023-05-01 16:57:54', '2023-05-01 16:57:54'),
(573, 'App\\Models\\User', 52, 'API TOKEN', 'a323185be0bce24b8d815b80998984a9acdb1fba16365719e32e376e045f9816', '[\"*\"]', NULL, NULL, '2023-05-02 05:15:16', '2023-05-02 05:15:16');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `request_id` int(10) NOT NULL,
  `reference_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_type_id` bigint(20) UNSIGNED NOT NULL,
  `resident_id` bigint(20) UNSIGNED NOT NULL,
  `employee_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_message` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_purpose` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_relatives` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `residency_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `date_claim` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pdf_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ctc` int(10) DEFAULT NULL,
  `or_num` int(10) DEFAULT NULL,
  `ref` int(10) DEFAULT NULL,
  `issue_on` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`request_id`, `reference_key`, `request_type_id`, `resident_id`, `employee_name`, `request_status`, `request_description`, `request_message`, `request_purpose`, `business_address`, `business_name`, `live_relatives`, `residency_type`, `file`, `price`, `date_claim`, `created_at`, `updated_at`, `pdf_file`, `ctc`, `or_num`, `ref`, `issue_on`) VALUES
(152, 'BRGY-ID-2154606', 1, 56, 'NERISA CADUCIO', 'DONE', 'New', 'Please bring your latest ID', 'For school puposes.', NULL, NULL, 'Yes', 'House Owner', '', 100, 'Feb. 15, 2023 - Feb. 24, 2023', '2023-02-14 17:55:39', '2023-02-15 17:28:24', NULL, 1234, 1213, 131, '2023-02-16'),
(153, 'BRGY-CED-6551371', 2, 56, 'NERISA CADUCIO', 'DENIED', 'New', 'Mismatch inofrmation from your ID', 'For business clearance', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-02-14 17:56:08', '2023-02-14 19:43:35', NULL, NULL, NULL, NULL, NULL),
(154, 'BRGY-CLR-2041390', 3, 56, 'NERISA CADUCIO', 'DONE', 'LOAN Purpose', 'dfdsf', 'for LOAN', NULL, NULL, 'Yes', 'Renter', '_BRGY-CERT-5742585jpeg', 200, 'Jan. 01, 1970', '2023-02-14 17:56:44', '2023-02-15 09:23:36', 'BRGY-CLR-2041390.pdf', NULL, NULL, NULL, NULL),
(155, 'BRGY-CERT-5742585', 4, 56, 'NERISA CADUCIO', 'READY FOR PAYMENT', 'Certificate of Guardianship', 'Accept', 'for my child\'s enrollment', NULL, NULL, 'Yes', 'House Owner', '_BRGY-CERT-5742585jpeg', 50, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-14 17:57:35', '2023-02-15 18:48:59', NULL, NULL, NULL, NULL, NULL),
(156, 'BRGY-CERT-4504356', 4, 56, 'NERISA CADUCIO', 'DENIED', 'Lot Survey', 'EFRETGRETRE Secretary_123', 'for lot survey', NULL, NULL, 'Yes', 'House Owner', '_BRGY-CERT-4504356jpg', 100, NULL, '2023-02-14 18:00:02', '2023-02-26 09:12:30', NULL, NULL, NULL, NULL, NULL),
(157, 'BUS-CLR-8796028', 5, 56, 'NERISA CADUCIO', 'DONE', 'SINGLE PROPRIETORSHIP (New)', 'Accepted', 'REQUEST FOR BUSINESS CLEARANCE', '615 CONSULAR AREA FORT BONIFACIO TAGUIG CITY', 'Asia Pacific College', NULL, NULL, '_2023-02-15BUS-CLR-8796028jpg', 500, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-14 18:00:39', '2023-02-15 18:10:12', 'BUS-CLR-8796028.pdf', 8417, 2546, 14785, '2023-02-16'),
(158, 'BRGY-CERT-3483681', 4, 56, 'NERISA CADUCIO', 'PROCESSING', 'Good Moral Character', NULL, 'For school requirements', NULL, NULL, 'No', 'House Owner', '_BRGY-CERT-3483681jpeg', 50, NULL, '2023-02-14 18:45:57', '2023-03-07 19:20:47', NULL, NULL, NULL, NULL, NULL),
(159, 'BRGY-ID-7966331', 1, 56, 'NERISA CADUCIO', 'DONE', 'New', 'Accepted', 'For school', NULL, NULL, 'Yes', 'House Owner', '', 100, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-14 19:33:36', '2023-02-15 18:50:38', NULL, 5354345, 5354, 5255, '2023-02-16'),
(160, 'BRGY-CLR-4626250', 3, 56, 'NERISA CADUCIO', 'DONE', 'MERALCO Connection', 'Accepted', 'For meralco', NULL, NULL, 'Yes', 'House Owner', '_BRGY-CLR-4626250jpg', 100, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-15 17:12:12', '2023-02-15 17:18:50', 'BRGY-CLR-4626250.pdf', 1412, 1331, 1213, '2023-02-16'),
(161, 'BRGY-CLR-8773494', 3, 56, 'NERISA CADUCIO', 'DONE', '4Ps Employment', 'Accepted', 'For scholarship', NULL, NULL, 'No', 'House Owner', '_BRGY-CLR-8773494jpg', 0, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-15 17:20:56', '2023-02-15 17:22:54', 'BRGY-CLR-8773494.pdf', 44718, 36652, 14558, '2023-02-16'),
(162, 'BRGY-CED-8964217', 2, 56, 'NERISA CADUCIO', 'DONE', 'New', 'Accepted', 'Hello', NULL, NULL, 'Yes', 'House Owner', '', 100, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-15 17:30:42', '2023-02-15 17:32:28', NULL, 1248, 5242, 2541, '2023-02-16'),
(163, 'BUS-CLR-5306608', 5, 56, 'NERISA CADUCIO', 'DONE', 'SINGLE PROPRIETORSHIP (New)', 'Accepted', 'for business', '615 CONSULAR AREA FORT BONIFACIO TAGUIG CITY', 'Asia Pacific College', NULL, NULL, '_2023-02-16BUS-CLR-5306608jpg', 500, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-15 18:11:58', '2023-02-15 18:38:07', 'BUS-CLR-5306608.pdf', 245, 234, 353, '2023-02-16'),
(164, 'BRGY-CLR-4161197', 3, 56, 'NERISA CADUCIO', 'DONE', 'Renewal of (TRU) Franchise', 'Accepted', 'HugsY', NULL, NULL, 'Yes', 'House Owner', '_BRGY-CLR-4161197jpg', 200, 'Feb. 16, 2023 - Feb. 16, 2023', '2023-02-16 04:52:51', '2023-02-16 04:57:03', 'BRGY-CLR-4161197.pdf', 2422, 1232, 1323, '2023-02-16'),
(165, 'BUS-CLR-1536153', 5, 56, 'NERISA CADUCIO', 'DONE', 'CORPORATION (New)', 'Accepted', 'For business', '615 CONSULAR AREA FORT BONIFACIO TAGUIG CITY', 'Asia Pacific College', NULL, NULL, '_2023-02-18BUS-CLR-1536153jpg', 500, 'Feb. 18, 2023 - Feb. 18, 2023', '2023-02-18 12:39:52', '2023-02-18 12:43:16', 'BUS-CLR-1536153.pdf', 45633, 54634, 34224, '2023-02-18'),
(166, 'BRGY-CLR-2829534', 3, 56, 'NERISA CADUCIO', 'DONE', 'LOAN Purpose', 'sadsadsa', 'Loan', NULL, NULL, 'Yes', 'House Owner', '56_BRGY-CLR-2829534jpg', 200, 'Mar. 01, 2023 - Mar. 01, 2023', '2023-02-20 22:16:29', '2023-03-01 07:50:27', 'BRGY-CLR-2829534.pdf', 243, 2424, 242, '2023-03-01'),
(167, 'BRGY-CED-9443301', 2, 56, 'NERISA CADUCIO', 'PROCESSING', 'New', NULL, 'fgdfdg', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-02-24 17:41:42', '2023-02-26 09:11:52', NULL, NULL, NULL, NULL, NULL),
(168, 'BRGY-ID-4279467', 1, 61, 'NERISA CADUCIO', 'DENIED', 'New', 'xdf Secretary_123', 'dsfd', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-02-26 09:00:02', '2023-02-26 09:17:27', NULL, NULL, NULL, NULL, NULL),
(169, 'BRGY-CED-2369556', 2, 61, 'NERISA CADUCIO', 'DENIED', 'New', 'sdwsdssa', 'aSWD', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-02-26 09:11:15', '2023-02-26 09:13:00', NULL, NULL, NULL, NULL, NULL),
(170, 'BRGY-ID-8085708', 1, 61, 'GLENN ROBERT ROA', 'PROCESSING', 'New', NULL, 'yuy', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-02-27 14:35:00', '2023-02-27 14:35:52', NULL, NULL, NULL, NULL, NULL),
(171, 'BRGY-CLR-7985403', 3, 56, 'GLENN ROBERT ROA', 'DONE', 'Fencing', 'dsgfv dgdfbdvcb bhf', 'dsfsdgfsdfg', NULL, NULL, 'Yes', 'House Owner', '56_BRGY-CLR-7985403jpg', 200, 'Feb. 28, 2023 - Mar. 11, 2023', '2023-02-28 13:22:27', '2023-02-28 13:29:20', 'BRGY-CLR-7985403.pdf', 325323, 463434, 24234, '2023-02-28'),
(172, 'BRGY-CLR-5949749', 3, 62, 'NERISA CADUCIO', 'DONE', 'MERALCO Connection', 'Please bring your latest ID and ready for payment.', 'For electricity', NULL, NULL, 'Yes', 'Renter', '62_BRGY-CLR-5949749jpeg', 100, 'Mar. 01, 2023 - Mar. 02, 2023', '2023-03-01 03:52:50', '2023-03-01 04:06:15', 'BRGY-CLR-5949749.pdf', 478, 554, 659, '2023-03-01'),
(173, 'BRGY-ID-3685563', 1, 61, 'NERISA CADUCIO', 'PROCESSING', 'New', NULL, 'For employment', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-03-03 03:28:26', '2023-03-03 03:39:18', NULL, NULL, NULL, NULL, NULL),
(174, 'BRGY-ID-8131518', 1, 61, 'NERISA CADUCIO', 'PROCESSING', 'New', NULL, 'wqffafsafafsa', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-03-03 04:12:46', '2023-03-07 18:12:30', NULL, NULL, NULL, NULL, NULL),
(175, 'BRGY-CED-5400844', 2, 61, NULL, 'PENDING', 'New', NULL, 'For employement', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-03-03 06:03:38', '2023-03-03 06:03:38', NULL, NULL, NULL, NULL, NULL),
(176, 'BRGY-ID-4605694', 1, 192, 'NERISA CADUCIO', 'DENIED', 'New', 'Invalid ID', 'For scholarship', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-03-03 06:17:49', '2023-03-03 06:34:01', NULL, NULL, NULL, NULL, NULL),
(177, 'BRGY-CLR-7056395', 3, 192, 'NERISA CADUCIO', 'DONE', 'LOAN Purpose', 'Please bring your latest ID', 'For Loan', NULL, NULL, 'Yes', 'House Owner', '192_BRGY-CLR-7056395png', 200, 'Mar. 03, 2023 - Mar. 03, 2023', '2023-03-03 06:20:56', '2023-03-03 06:36:54', 'BRGY-CLR-7056395.pdf', 256, 1025, 4144, '2023-03-03'),
(178, 'BRGY-CED-5778977', 2, 192, 'NERISA CADUCIO', 'PROCESSING', 'New', NULL, 'For school', NULL, NULL, 'Yes', 'House Owner', '', 100, NULL, '2023-03-03 06:21:50', '2023-03-03 06:31:26', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `request_history`
--

CREATE TABLE `request_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_id` bigint(20) UNSIGNED NOT NULL,
  `processed_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_history`
--

INSERT INTO `request_history` (`id`, `request_id`, `processed_by`, `request_status`, `created_at`, `updated_at`) VALUES
(84, 152, NULL, 'PENDING', '2023-02-14 17:55:39', '2023-02-14 17:55:39'),
(85, 153, NULL, 'PENDING', '2023-02-14 17:56:08', '2023-02-14 17:56:08'),
(86, 154, NULL, 'PENDING', '2023-02-14 17:56:44', '2023-02-14 17:56:44'),
(87, 155, NULL, 'PENDING', '2023-02-14 17:57:35', '2023-02-14 17:57:35'),
(88, 156, NULL, 'PENDING', '2023-02-14 18:00:02', '2023-02-14 18:00:02'),
(89, 157, NULL, 'PENDING', '2023-02-14 18:00:39', '2023-02-14 18:00:39'),
(90, 158, NULL, 'PENDING', '2023-02-14 18:45:57', '2023-02-14 18:45:57'),
(91, 152, 'NERISA CADUCIO', 'PROCESSING', '2023-02-14 18:47:18', '2023-02-14 18:47:18'),
(92, 152, 'NERISA CADUCIO', 'PENDING', '2023-02-14 18:48:08', '2023-02-14 18:48:08'),
(93, 152, 'NERISA CADUCIO', 'PROCESSING', '2023-02-14 18:48:18', '2023-02-14 18:48:18'),
(94, 159, NULL, 'PENDING', '2023-02-14 19:33:36', '2023-02-14 19:33:36'),
(95, 153, 'NERISA CADUCIO', 'PROCESSING', '2023-02-14 19:41:55', '2023-02-14 19:41:55'),
(96, 153, 'NERISA CADUCIO', 'PENDING', '2023-02-14 19:42:16', '2023-02-14 19:42:16'),
(97, 153, 'NERISA CADUCIO', 'PROCESSING', '2023-02-14 19:42:24', '2023-02-14 19:42:24'),
(98, 153, 'NERISA CADUCIO', 'DENIED', '2023-02-14 19:43:35', '2023-02-14 19:43:35'),
(99, 152, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-14 19:46:13', '2023-02-14 19:46:13'),
(100, 154, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 06:22:29', '2023-02-15 06:22:29'),
(101, 154, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 06:38:53', '2023-02-15 06:38:53'),
(102, 155, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 06:39:04', '2023-02-15 06:39:04'),
(103, 154, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 08:27:39', '2023-02-15 08:27:39'),
(104, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 08:32:06', '2023-02-15 08:32:06'),
(105, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 08:39:24', '2023-02-15 08:39:24'),
(106, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 08:45:00', '2023-02-15 08:45:00'),
(107, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 08:57:41', '2023-02-15 08:57:41'),
(108, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:00:30', '2023-02-15 09:00:30'),
(109, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:01:12', '2023-02-15 09:01:12'),
(110, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:01:45', '2023-02-15 09:01:45'),
(111, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:04:58', '2023-02-15 09:04:58'),
(112, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:06:46', '2023-02-15 09:06:46'),
(113, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:08:38', '2023-02-15 09:08:38'),
(114, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:08:52', '2023-02-15 09:08:52'),
(115, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:11:08', '2023-02-15 09:11:08'),
(116, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:12:06', '2023-02-15 09:12:06'),
(117, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:12:48', '2023-02-15 09:12:48'),
(118, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:14:22', '2023-02-15 09:14:22'),
(119, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:15:24', '2023-02-15 09:15:24'),
(120, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:16:08', '2023-02-15 09:16:08'),
(121, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:19:19', '2023-02-15 09:19:19'),
(122, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:21:01', '2023-02-15 09:21:01'),
(123, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:21:29', '2023-02-15 09:21:29'),
(124, 154, 'NERISA CADUCIO', 'DONE', '2023-02-15 09:23:36', '2023-02-15 09:23:36'),
(125, 160, NULL, 'PENDING', '2023-02-15 17:12:12', '2023-02-15 17:12:12'),
(126, 160, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 17:12:50', '2023-02-15 17:12:50'),
(127, 160, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 17:13:26', '2023-02-15 17:13:26'),
(128, 160, 'NERISA CADUCIO', 'DONE', '2023-02-15 17:17:01', '2023-02-15 17:17:01'),
(129, 160, 'NERISA CADUCIO', 'DONE', '2023-02-15 17:18:50', '2023-02-15 17:18:50'),
(130, 161, NULL, 'PENDING', '2023-02-15 17:20:56', '2023-02-15 17:20:56'),
(131, 161, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 17:21:20', '2023-02-15 17:21:20'),
(132, 161, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 17:21:38', '2023-02-15 17:21:38'),
(133, 161, 'NERISA CADUCIO', 'DONE', '2023-02-15 17:22:54', '2023-02-15 17:22:54'),
(134, 152, 'NERISA CADUCIO', 'DONE', '2023-02-15 17:28:24', '2023-02-15 17:28:24'),
(135, 162, NULL, 'PENDING', '2023-02-15 17:30:42', '2023-02-15 17:30:42'),
(136, 162, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 17:30:58', '2023-02-15 17:30:58'),
(137, 162, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 17:31:14', '2023-02-15 17:31:14'),
(138, 162, 'NERISA CADUCIO', 'DONE', '2023-02-15 17:32:28', '2023-02-15 17:32:28'),
(139, 157, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 18:05:46', '2023-02-15 18:05:46'),
(140, 157, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 18:06:07', '2023-02-15 18:06:07'),
(141, 157, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:10:12', '2023-02-15 18:10:12'),
(142, 163, NULL, 'PENDING', '2023-02-15 18:11:58', '2023-02-15 18:11:58'),
(143, 163, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 18:17:47', '2023-02-15 18:17:47'),
(144, 163, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 18:18:23', '2023-02-15 18:18:23'),
(145, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:18:52', '2023-02-15 18:18:52'),
(146, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:24:08', '2023-02-15 18:24:08'),
(147, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:30:40', '2023-02-15 18:30:40'),
(148, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:32:56', '2023-02-15 18:32:56'),
(149, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:34:35', '2023-02-15 18:34:35'),
(150, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:36:43', '2023-02-15 18:36:43'),
(151, 163, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:38:07', '2023-02-15 18:38:07'),
(152, 155, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 18:48:59', '2023-02-15 18:48:59'),
(153, 159, 'NERISA CADUCIO', 'PROCESSING', '2023-02-15 18:50:00', '2023-02-15 18:50:00'),
(154, 159, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-15 18:50:15', '2023-02-15 18:50:15'),
(155, 159, 'NERISA CADUCIO', 'DONE', '2023-02-15 18:50:38', '2023-02-15 18:50:38'),
(156, 164, NULL, 'PENDING', '2023-02-16 04:52:51', '2023-02-16 04:52:51'),
(157, 164, 'NERISA CADUCIO', 'PROCESSING', '2023-02-16 04:56:00', '2023-02-16 04:56:00'),
(158, 164, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-16 04:56:32', '2023-02-16 04:56:32'),
(159, 164, 'NERISA CADUCIO', 'DONE', '2023-02-16 04:57:03', '2023-02-16 04:57:03'),
(160, 165, NULL, 'PENDING', '2023-02-18 12:39:52', '2023-02-18 12:39:52'),
(161, 165, 'NERISA CADUCIO', 'PROCESSING', '2023-02-18 12:40:02', '2023-02-18 12:40:02'),
(162, 165, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-18 12:41:23', '2023-02-18 12:41:23'),
(163, 165, 'NERISA CADUCIO', 'DONE', '2023-02-18 12:43:16', '2023-02-18 12:43:16'),
(164, 166, NULL, 'PENDING', '2023-02-20 22:16:29', '2023-02-20 22:16:29'),
(165, 166, 'NERISA CADUCIO', 'PROCESSING', '2023-02-20 22:18:55', '2023-02-20 22:18:55'),
(166, 166, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-02-20 22:20:48', '2023-02-20 22:20:48'),
(167, 166, 'NERISA CADUCIO', 'DONE', '2023-02-20 22:23:34', '2023-02-20 22:23:34'),
(168, 158, 'NERISA CADUCIO', 'PROCESSING', '2023-02-21 02:33:59', '2023-02-21 02:33:59'),
(169, 156, 'NERISA CADUCIO', 'PROCESSING', '2023-02-21 06:47:23', '2023-02-21 06:47:23'),
(170, 13, 'NERISA CADUCIO', 'PENDING', '2023-02-21 06:58:50', '2023-02-21 06:58:50'),
(171, 167, NULL, 'PENDING', '2023-02-24 17:41:42', '2023-02-24 17:41:42'),
(172, 168, NULL, 'PENDING', '2023-02-26 09:00:02', '2023-02-26 09:00:02'),
(173, 169, NULL, 'PENDING', '2023-02-26 09:11:15', '2023-02-26 09:11:15'),
(174, 167, 'NERISA CADUCIO', 'PROCESSING', '2023-02-26 09:11:52', '2023-02-26 09:11:52'),
(175, 156, 'NERISA CADUCIO', 'DENIED', '2023-02-26 09:12:30', '2023-02-26 09:12:30'),
(176, 169, 'NERISA CADUCIO', 'PROCESSING', '2023-02-26 09:12:49', '2023-02-26 09:12:49'),
(177, 169, 'NERISA CADUCIO', 'DENIED', '2023-02-26 09:13:00', '2023-02-26 09:13:00'),
(178, 168, 'NERISA CADUCIO', 'PROCESSING', '2023-02-26 09:17:09', '2023-02-26 09:17:09'),
(179, 168, 'NERISA CADUCIO', 'DENIED', '2023-02-26 09:17:27', '2023-02-26 09:17:27'),
(180, 170, NULL, 'PENDING', '2023-02-27 14:35:00', '2023-02-27 14:35:00'),
(181, 170, 'GLENN ROBERT ROA', 'PROCESSING', '2023-02-27 14:35:52', '2023-02-27 14:35:52'),
(182, 171, NULL, 'PENDING', '2023-02-28 13:22:27', '2023-02-28 13:22:27'),
(183, 171, 'GLENN ROBERT ROA', 'PROCESSING', '2023-02-28 13:27:04', '2023-02-28 13:27:04'),
(184, 171, 'GLENN ROBERT ROA', 'READY FOR PAYMENT', '2023-02-28 13:28:11', '2023-02-28 13:28:11'),
(185, 171, 'GLENN ROBERT ROA', 'DONE', '2023-02-28 13:29:20', '2023-02-28 13:29:20'),
(186, 172, NULL, 'PENDING', '2023-03-01 03:52:51', '2023-03-01 03:52:51'),
(187, 172, 'NERISA CADUCIO', 'PROCESSING', '2023-03-01 03:58:12', '2023-03-01 03:58:12'),
(188, 172, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-03-01 04:03:22', '2023-03-01 04:03:22'),
(189, 172, 'NERISA CADUCIO', 'DONE', '2023-03-01 04:06:15', '2023-03-01 04:06:15'),
(190, 166, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-03-01 07:49:48', '2023-03-01 07:49:48'),
(191, 166, 'NERISA CADUCIO', 'DONE', '2023-03-01 07:50:27', '2023-03-01 07:50:27'),
(192, 173, NULL, 'PENDING', '2023-03-03 03:28:26', '2023-03-03 03:28:26'),
(193, 173, 'NERISA CADUCIO', 'PROCESSING', '2023-03-03 03:39:18', '2023-03-03 03:39:18'),
(194, 174, NULL, 'PENDING', '2023-03-03 04:12:46', '2023-03-03 04:12:46'),
(195, 175, NULL, 'PENDING', '2023-03-03 06:03:38', '2023-03-03 06:03:38'),
(196, 176, NULL, 'PENDING', '2023-03-03 06:17:49', '2023-03-03 06:17:49'),
(197, 177, NULL, 'PENDING', '2023-03-03 06:20:56', '2023-03-03 06:20:56'),
(198, 178, NULL, 'PENDING', '2023-03-03 06:21:50', '2023-03-03 06:21:50'),
(199, 178, 'NERISA CADUCIO', 'PROCESSING', '2023-03-03 06:31:26', '2023-03-03 06:31:26'),
(200, 176, 'NERISA CADUCIO', 'PROCESSING', '2023-03-03 06:33:40', '2023-03-03 06:33:40'),
(201, 176, 'NERISA CADUCIO', 'DENIED', '2023-03-03 06:34:01', '2023-03-03 06:34:01'),
(202, 177, 'NERISA CADUCIO', 'PROCESSING', '2023-03-03 06:35:08', '2023-03-03 06:35:08'),
(203, 177, 'NERISA CADUCIO', 'READY FOR PAYMENT', '2023-03-03 06:35:42', '2023-03-03 06:35:42'),
(204, 177, 'NERISA CADUCIO', 'DONE', '2023-03-03 06:36:54', '2023-03-03 06:36:54'),
(205, 174, 'NERISA CADUCIO', 'PROCESSING', '2023-03-07 18:12:30', '2023-03-07 18:12:30'),
(206, 158, 'NERISA CADUCIO', 'PENDING', '2023-03-07 18:24:48', '2023-03-07 18:24:48'),
(207, 158, 'NERISA CADUCIO', 'PROCESSING', '2023-03-07 19:20:47', '2023-03-07 19:20:47');

-- --------------------------------------------------------

--
-- Table structure for table `request_type`
--

CREATE TABLE `request_type` (
  `request_type_id` int(10) UNSIGNED NOT NULL,
  `request_type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `request_type_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isEnabled` int(11) NOT NULL DEFAULT 1,
  `code_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `request_type`
--

INSERT INTO `request_type` (`request_type_id`, `request_type_name`, `request_type_description`, `isEnabled`, `code_name`) VALUES
(1, 'BARANGAY ID', 'none', 1, 'bar_id'),
(2, 'COMMUNITY TAX CERTIFICATE', 'none', 1, 'comm_tax'),
(3, 'BARANGAY\r\nCLEARANCE', 'none', 1, 'bar_clr'),
(4, 'BARANGAY\r\nCERTIFICATION', 'none', 1, 'bar_cert'),
(5, 'ISSUANCE OF\r\nBUSINESS CLEARANCE', 'none', 1, 'bar_clear'),
(7, 'CONCERN', '', 1, 'concern');

-- --------------------------------------------------------

--
-- Table structure for table `reset_password`
--

CREATE TABLE `reset_password` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expired_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reset_password`
--

INSERT INTO `reset_password` (`id`, `email`, `key`, `token`, `created_at`, `updated_at`, `expired_at`) VALUES
(1, 'jakersonbermudo98@gmail.com', '$2y$10$6jftK.tlfZg1ZANpAjaAIurjzaehPkc7/M9kB2PAn3bpFRZrlDr7m', 'tFt5RzkdJLJpWRIGWzogm6ttC7znVtob2irBAL6P', '2023-02-27 01:17:42', '2023-02-27 01:17:42', '2023-02-27 01:20:42'),
(2, 'jakersonbermudo98@gmail.com', '$2y$10$6jftK.tlfZg1ZANpAjaAIurjzaehPkc7/M9kB2PAn3bpFRZrlDr7m', 'K1jgafR8O2Z6KXDQwJyaffoaLIjUYI6AiTNaadYk', '2023-02-28 06:06:19', '2023-02-28 06:06:19', '2023-02-28 06:36:19'),
(3, 'jakersonbermudo98@gmail.com', '$2y$10$6jftK.tlfZg1ZANpAjaAIurjzaehPkc7/M9kB2PAn3bpFRZrlDr7m', 'UGqtdE8V3MrlG9OJ8FguGnr2N75FHJHkQRL7JNkF', '2023-02-28 13:08:29', '2023-02-28 13:08:29', '2023-02-28 13:38:29'),
(4, 'dale123@gmail.com', '$2y$10$Fdp.Lb0XV0yBHV8WgYg5TucuvtQvDNG5u8aly9h13htCfYH7lx/2S', 'Y75yVuOUlGzz3K84zyXYCLYiQx27cgZrlZe36JHO', '2023-03-01 06:05:40', '2023-03-01 06:05:40', '2023-03-01 06:35:40');

--
-- Triggers `reset_password`
--
DELIMITER $$
CREATE TRIGGER `set_expired_at` BEFORE INSERT ON `reset_password` FOR EACH ROW SET NEW.expired_at = DATE_ADD(NEW.created_at, INTERVAL 30 MINUTE)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `middle_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `suffix` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marital_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthdate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place_birth` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_unitNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_houseNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_street` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_purok` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_num` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `valiID_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validID_num` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validID_front` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validID_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profilePic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `OTP` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isEnabled` int(11) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `suffix`, `gender`, `marital_status`, `nationality`, `birthdate`, `place_birth`, `address_unitNo`, `address_houseNo`, `address_street`, `address_purok`, `email`, `password`, `mobile_num`, `valiID_type`, `validID_num`, `validID_front`, `validID_back`, `profilePic`, `role`, `OTP`, `isEnabled`, `remember_token`, `created_at`, `updated_at`) VALUES
(51, 'NERISA', '', 'CADUCIO', 'JR.', 'Female', 'Married', 'FILIPINO', '1987-11-11', 'QUEZON CITY', '', '23', 'MANGGA', '', 'secretary@gmail.com', '$2y$10$H4Xavk8Fc7etxfw86S/lBeeGH5DARPSLe8/FXst7haNwoljp9XcZ6', '2572558448', NULL, '52155524', NULL, NULL, 'Nerisa_Caducio.jpg', 'Barangay Secretary', NULL, 1, NULL, '2023-01-23 18:15:37', '2023-03-03 04:29:04'),
(52, 'MICHELLE', 'M', 'ODEVILAS', '', 'Female', 'Married', 'FILIPINO', '0084-12-12', 'TAGUIG CITY', '', '1321', 'MALIGAYA', '', 'captain@gmail.com', '$2y$10$VzTGLzfRSGbpUA2BMzloW.vVixDGGMUOjvIvCE9pU74BEKLHC.kb6', '5154552555', NULL, '5151125', NULL, NULL, 'Michelle_Odevilas.jpg', 'Barangay Captain', NULL, 1, NULL, '2023-01-23 18:21:01', '2023-03-03 04:42:10'),
(53, 'NORMAN', 'H', 'HORTILANO', '', 'Female', 'Single', 'FILIPINO', '1985-10-09', 'QUEZON CITY', '', '1321', 'MALIGAYA', '', 'admin@gmail.com', '$2y$10$843h9iHrsEwCD1negM1yYOIhw5i1I81qMJBoSlrShZ77SotNTeNx.', '9458524554', NULL, '5468654', NULL, NULL, 'NORMAN_HORTILANO.2023-02-02-13-00-38jpg', 'Administrator', NULL, 1, NULL, '2023-01-23 18:22:55', '2023-03-03 04:38:57'),
(54, 'CESAR', 'S', 'TIGLAO', 'JR.', 'Male', 'Single', 'FILIPINO', '1975-08-05', 'QUEZON CITY', '', '23', 'MANGGA', '', 'ticket@gmail.com', '$2y$10$NyKT.joZ14IoS2CYsHmtO.nwVXz27XO.vgyZeEsEU9F28q7ZC84.S', '2572558448', NULL, '24114', NULL, NULL, 'Cesar_Tiglao.jpg', 'Concern Manager', NULL, 1, NULL, '2023-01-23 18:26:51', '2023-03-07 18:48:00'),
(55, 'GLENN ROBERT', 'N', 'ROA', '', 'Male', 'Single', 'FILIPINO', '1956-12-10', 'QUEZON CITY', '', '1321', 'MALIGAYA', '', 'request@gmail.com', '$2y$10$m97BMevo5L8Of5eG/ug9WuZsOrNPFEusXmL64rJyioFnzYiEFQGQa', '1234656565', NULL, '5154851', NULL, NULL, 'Glenn Robert_Roa.jpg', 'Request Manager', NULL, 1, NULL, '2023-01-23 18:29:59', '2023-02-28 13:26:40'),
(56, 'JAKERSON', 'BAIT-IT', 'BERMUDO', '', 'Female', 'Single', 'FILIPINO', '1998-11-11', 'QUEZON CITY', '', '615', 'DAISY', '', 'jakerson@gmail.com', '$2y$10$BOrZGIEbVw4J0YsXKXOHHe2tZ6VCb2sJhIVQ579DyIeX6lVjx1DMW', '9785477444', 'Driver’s license', 'NI2326641', 'JAKERSON_BERMUDO2023-01-24frontPic.jpeg', 'JAKERSON_BERMUDO2023-01-24backPic.jpeg', NULL, 'resident', '802924', 1, NULL, '2023-01-23 18:32:50', '2023-02-01 21:51:18'),
(57, 'KENNETH IAN', 'V', 'NADELA', '', 'Male', 'Single', 'FILIPINO', '1899-12-11', 'QUEZON CITY', 'UNIT 256', '1321', '1213', '', 'concern@gmail.com', '$2y$10$tKlE.KwDyEOdklE9XiCyn.mJAGmqZKaYNcwZD/WzCPuFGBxt9DKKm', '4563222455', NULL, '2678775', NULL, NULL, 'Kenneth Ian_Nadela.jpg', 'Concern Manager', NULL, 1, NULL, '2023-02-12 02:39:12', '2023-03-05 13:44:15'),
(61, 'JAKERSON', '', 'BERMUDO', '', 'Male', 'Single', 'FILIPINO', '1998-11-11', 'QUEZON CITY', '13213', '1321', 'COL. BALLECER EXTN.', 'ZONE 6', 'jakersonbermudo98@gmail.com', '$2y$10$M9Bhv8JL8oyg160xUwQH6uJZDW0WBiLHKSu7vC2umrIYgeEykQCEC', '5154552555', 'Driver’s license', '5656556', '61-JAKERSON-BERMUDO-2023-03-08-00-35-10-frontPic.jpeg', '61-JAKERSON-BERMUDO-2023-03-08-00-35-10-backPic.jpg', NULL, 'resident', '477020', 1, NULL, '2023-02-25 16:49:54', '2023-03-07 16:35:10'),
(62, 'MIKEDALE', 'BUNTOG', 'DELLERA', 'JR.', 'Male', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', '', '615', 'PC ROAD', 'ZONE 6', 'dale@gmail.com', '$2y$10$PHnJLuE5TWdd0OuCmV2TneA0ZQtzFjmei/ykscjEnfWI8r30TM9Ju', '9254854855', 'Postal ID', '64154155', 'Mikedale_dellera2023-03-01-11-27-13frontPic.jpeg', 'Mikedale_dellera2023-03-01-11-27-13backPic.jpg', NULL, 'resident', '127397', 1, NULL, '2023-03-01 03:27:13', '2023-03-01 03:27:53'),
(63, 'MIKEDALE', 'BUNTOG', 'DELLERA', 'JR.', 'Male', 'Single', 'FILIPINO', '05/14/1953', 'QUEZON CITY', '', '615', 'GEN. MALVAR', 'ZONE 6', 'dale123@gmail.com', '$2y$10$DkeWxFlB/ju.uni4Ya8Iw.vbzVAlMC85FYEZkwozm36lpk/8ExC6C', '9254854855', 'Philippine passport', '154515151', 'Mikedale_dellera2023-03-01-14-04-21frontPic.jpeg', 'Mikedale_dellera2023-03-01-14-04-21backPic.jpg', NULL, 'resident', '424153', 1, NULL, '2023-03-01 06:04:21', '2023-03-01 06:06:29'),
(64, 'MICHAELS', 'DOEM', 'FANTOS', '', 'Female', 'Single', 'FILIPINO', '03/24/1985', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 6', 'michaels@gmail.com', '$2y$10$aa9CUupX8BYqmq9yJf3bw.Hvvwurww6d7kEIqOqcJX3AA9IFEfIYS', '9254854855', 'Philippine passport', '4588484', 'JAKERSON_BERMUDO2023-01-24frontPic.jpeg', NULL, NULL, 'resident', '3433', 1, NULL, NULL, NULL),
(65, 'MICHAEL', 'DOE', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 6', 'michael@gmail.com', '$2y$10$Bral/iADs756cZSbIZNz5eXdN0KeB2rCFEuDN/WIEZ7MW3gnmO/wi', '9254854855', 'Philippine passport', '4588484', 'JAKERSON_BERMUDO2023-01-24frontPic.jpeg', NULL, NULL, 'resident', '3433', 1, NULL, NULL, NULL),
(68, 'ABRAHAM', 'FERRER', 'HIDAMA', '', 'Male', 'Married', 'FILIPINO', '12/03/1974', 'PARANAQUE CITY', 'UNIT 188', '188', 'QUINTAR', 'Zone 1', 'abraham@gmail.com', '$2y$10$CJ21zZooccXPblPdQK5Eo.2MVfOB.xPR5EpwORwGQqT1bKaoR1iqS', '9213452250', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:16:17', '2023-03-03 04:44:48'),
(69, 'AGRIPINA', 'LORZANA', 'CRUZ', '', 'Female', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 1', 'agripina@gmail.com', '$2y$10$Dlxfc/dOxLSF3Dy3jWqfsOtSbQcsY98wNevC2HrW0a3rFNsNNaRny', '9254823415', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:16:17', '2023-03-02 09:16:17'),
(70, 'John', 'Doe', 'Smith', '', 'Male', 'Single', 'FILIPINO', '08/14/1992', 'Cavite', 'Unit 301', '301', 'Col. Ballecer', 'Zone 3', 'john.smith@gmail.com', '$2y$10$pGFVAlZwBmcSiIluYHluu.4/aOfOcS1OG0/ia/TLHyaANnoL0ua8K', '1234567890', 'Driver\'s License', 'A1234567', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:16:17', '2023-03-02 09:16:17'),
(71, 'Jane', 'Marie', 'Johnson', '', 'Female', 'Single', 'FILIPINO', '09/22/1999', 'Manchester', 'Unit 102', '102', 'Orchid', 'Zone 2', 'jane.johnson@gmail.com', '$2y$10$45.AR2xSq6qp2DJuu/zX7evU138vR8CL.cVQPL1VvOfWfilmrsQlS', '2345678901', 'Passport', 'B1234567', NULL, NULL, NULL, 'resident', '2222', 1, NULL, '2023-03-02 09:16:17', '2023-03-02 09:16:17'),
(72, 'William', 'Henry', 'Lee', '', 'Male', 'Married', 'FILIPINO', '11/29/1985', 'Shanghai', 'Unit 405', '405', 'Martinez', 'Zone 1', 'william.lee@gmail.com', '$2y$10$DXiqfidtYr9nFftuADlt0eL7zZfYdo5wExeGKgfZgohfraO1H8Wuq', '3456789012', 'National ID', 'C1234567', NULL, NULL, NULL, 'resident', '3333', 1, NULL, '2023-03-02 09:16:17', '2023-03-02 09:16:17'),
(73, 'MIC', 'FERRER', 'HIDAMA', '', 'Male', 'Married', 'FILIPINO', '12/03/1974', 'PARANAQUE CITY', 'UNIT 188', '188', 'QUINTAR', 'Zone 1', 'abraham3@gmail.com', '$2y$10$7I/49gqlevGlRF/KJvqf2uvDR/E6udLtkGV.15VMjjZ3hl4UJrzFW', '9213452250', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:17:30', '2023-03-02 09:17:30'),
(74, 'AGRIPINA', 'LORZANA', 'CRUZ', '', 'Female', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 1', 'agripina@gmail.com', '$2y$10$zD0sO2xYxEuf5rL.7S5tNe8vSyYsYfdi2Ldx/eyIw4gIl4SZILIIS', '9254823415', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:17:30', '2023-03-02 09:17:30'),
(75, 'John', 'Doe', 'Smith', '', 'Male', 'Single', 'FILIPINO', '08/14/1992', 'Cavite', 'Unit 301', '301', 'Col. Ballecer', 'Zone 3', 'john.smith@gmail.com', '$2y$10$/imvAbPwHDiKmGL58JE8X.vvNUAqIQb1nVLwieiYBMSSN1cc.qysG', '1234567890', 'Driver\'s License', 'A1234567', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:17:30', '2023-03-02 09:17:30'),
(76, 'Jane', 'Marie', 'Johnson', '', 'Female', 'Single', 'FILIPINO', '09/22/1999', 'Manchester', 'Unit 102', '102', 'Orchid', 'Zone 2', 'jane.johnson@gmail.com', '$2y$10$Mo6zmAxNf7oXtKUTADy9/uOKiFQ7bp1P1CD84yOMr3Gr/WHDZyUSi', '2345678901', 'Passport', 'B1234567', NULL, NULL, NULL, 'resident', '2222', 1, NULL, '2023-03-02 09:17:30', '2023-03-02 09:17:30'),
(77, 'William', 'Henry', 'Lee', '', 'Male', 'Married', 'FILIPINO', '11/29/1985', 'Shanghai', 'Unit 405', '405', 'Martinez', 'Zone 1', 'william.lee@gmail.com', '$2y$10$biKXosfOFP6Sgpp/1N9q..pvTanTkMU7WblXSxSrAgu5N/Rhzs7bu', '3456789012', 'National ID', 'C1234567', NULL, NULL, NULL, 'resident', '3333', 1, NULL, '2023-03-02 09:17:30', '2023-03-02 09:17:30'),
(78, 'JOSH', 'FERRER', 'HIDAMA', '', 'Male', 'Married', 'FILIPINO', '12/03/1974', 'PARANAQUE CITY', 'UNIT 188', '188', 'QUINTAR', 'Zone 1', 'wert@gmail.com', '$2y$10$zdfQBDqJIPTuOUNzM5thUOZwdf4hDorCpOTPbLIS8s4IsfaYL2lbe', '9213452250', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(79, 'AGRIPINA', 'LORZANA', 'CRUZ', '', 'Female', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 1', 'agripina@gmail.com', '$2y$10$b7dzPBCBaQ67EL3.zM8uD.8tuYvLNF9XIPfdirywQ6g/1mN/1iysO', '9254823415', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(80, 'John', 'Doe', 'Smith', '', 'Male', 'Single', 'FILIPINO', '08/14/1992', 'Cavite', 'Unit 301', '301', 'Col. Ballecer', 'Zone 3', 'john.smith@gmail.com', '$2y$10$Tiwe7MWTE3tPYMlHrDHDOeN9b7fhohlHXSL1e4mxlzicjI4tvoLCi', '1234567890', 'Driver\'s License', 'A1234567', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(81, 'Jane', 'Marie', 'Johnson', '', 'Female', 'Single', 'FILIPINO', '09/22/1999', 'Manchester', 'Unit 102', '102', 'Orchid', 'Zone 2', 'jane.johnson@gmail.com', '$2y$10$6YlniHw7Dg0IhO1zb3Gf7u05RBZMy4XnhcV0VPMMfpxSChVXnlWEu', '2345678901', 'Passport', 'B1234567', NULL, NULL, NULL, 'resident', '2222', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(82, 'William', 'Henry', 'Lee', '', 'Male', 'Married', 'FILIPINO', '11/29/1985', 'Shanghai', 'Unit 405', '405', 'Martinez', 'Zone 1', 'william.lee@gmail.com', '$2y$10$yes8f1X..TpHrEnt/xF0W.VdvGNif9uONiLFT1Ht4JfXLcAu6m2Zm', '3456789012', 'National ID', 'C1234567', NULL, NULL, NULL, 'resident', '3333', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(83, 'Maria', 'Gonzales', 'Alvarez', '', 'Female', 'Single', 'Filipino', '05/21/1968', 'Quezon City', 'Unit 301', '354', 'Col. Ballecer', 'Zone 3', 'maria.alvarez@gmail.com', '$2y$10$czHqineWGnTaiwDVVTyM1.L6ozLhtSARA5kftSjhvzkHeRKKvAOnG', '9187854567', 'Driver\'s License', '1234567890', NULL, NULL, NULL, 'resident', '4432', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(84, 'John', 'Garcia', 'Cruz', '', 'Male', 'Married', 'Filipino', '11/07/1989', 'Pasig City', 'Unit 302', '776', 'Orchid', 'Zone 2', 'john.cruz@gmail.com', '$2y$10$sHLVfxfXbO0jjjlXVSPS2eaTHgVgHHIh.2WSRXOIKT4EIltrAzGMG', '9174326789', 'SSS ID', '0987654321', NULL, NULL, NULL, 'resident', '1245', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(85, 'Sarah', 'Tolentino', 'Dizon', '', 'Female', 'Separated', 'Filipino', '08/15/1996', 'Makati City', 'Unit 103', '871', 'Martinez', 'Zone 4', 'sarah.dizon@gmail.com', '$2y$10$/A7fdBLA2OuKxnORVeHa0u67C6Au3zTuXzxPw2kW/f5Ienr81e1fK', '9267891234', 'PhilHealth ID', '5432109876', NULL, NULL, NULL, 'resident', '6543', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(86, 'Michael', 'Tan', 'Espinosa', '', 'Male', 'Married', 'Filipino', '03/29/1991', 'Pasig City', 'Unit 302', '776', 'Orchid', 'Zone 2', 'john.cruz@gmail.com', '$2y$10$1TzBLIAejxRiYTvsAZEQK.MKTkt0xwGdlwJoN8/2S0PELXjWjnCza', '9174326789', 'SSS ID', '0987654321', NULL, NULL, NULL, 'resident', '1245', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(87, 'JASMINE', 'GARCIA', 'MIRANDA', '', 'Female', 'Single', 'FILIPINO', '06/12/2001', 'QUEZON CITY', 'UNIT 44', '44', 'MARTINEZ', 'Zone 2', 'jasmiranda@gmail.com', '$2y$10$CParqvepb1YWTndQ/6Jio.0UTy..yUxV71u5WtZ.znlr1SzSMD9mi', '9213452251', 'Driver\'s License', 'N01-01-0000001', NULL, NULL, NULL, 'resident', '1289', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(88, 'CHRISTIAN', 'RAMIREZ', 'DE LEON', '', 'Male', 'Single', 'FILIPINO', '09/23/2003', 'MANDALUYONG CITY', 'UNIT 13', '13', 'PRES. GARCIA', 'Zone 3', 'chrideleon@gmail.com', '$2y$10$UO9S0R2fyiVob8ycHoidzOXaLitp8.0GHlPDppdNyenAQuGrvDCfW', '9213452252', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(89, 'ANGELA', 'REYES', 'CRUZ', '', 'Female', 'Married', 'FILIPINO', '02/18/1995', 'SAN JUAN CITY', 'UNIT 53', '53', 'STO. NIÑO', 'Zone 4', 'angelacruz@gmail.com', '$2y$10$YGYYlKJQiqZO4aAlV0qwgOpv.5BmF1cjbQyr6faMcu7A7xxCCUknq', '9213452253', 'Postal ID', '789456123', NULL, NULL, NULL, 'resident', '2345', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(90, 'BRIAN', 'TORRES', 'GOMEZ', '', 'Male', 'Single', 'FILIPINO', '09/23/2003', 'MANDALUYONG CITY', 'UNIT 13', '13', 'PRES. GARCIA', 'Zone 3', 'chrideleon@gmail.com', '$2y$10$BbrtXr3DsEi2vqmJwZQGfea0aD0264hdi5dKYcdA2LNSAIB8jUPru', '9213452252', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(91, ' Mary', 'Cruz', 'Santos', '', 'Female', 'Single', 'FILIPINO', '08/21/1997', 'Quezon City', 'Unit 12', '153', 'Daisy', 'Zone 3', 'mary.santos@gmail.com', '$2y$10$7M6upVN8A5shrPmo8rIgoemnipVNHL92XshAJP9Qwlo74/1nYKG0y', '9183746521', 'Postal ID', '789456123', NULL, NULL, NULL, 'resident', '2345', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(92, 'John', 'Cruz', 'Reyes', '', 'Male', 'Married', 'FILIPINO', '03/08/1985', 'Mandaluyong City', 'Unit 24', '321', 'Col. Ballecer', 'Zone 4', 'john.reyes@gmail.com', '$2y$10$tJKTcfORlpSmaM.o6IdC7OMmCTscU9g4abrGrqCeXPamym9/N6pie', '9165437892', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(93, 'Mary', 'Ann', 'Smith', '', 'Female', 'Single', 'American', '05/16/1999', 'California', 'UNIT 101', '101', 'Martinez', 'Zone 2', 'mary.smith@gmail.com', '$2y$10$LkDMrkvepF4rqxaCjseSfuZGwTHDz7QFHmDB3RLtS9R7sOh8jFXQq', '1234567890', 'Driver\'s license', 'A12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(94, 'John', 'Patrick', 'Doe', '', 'Male', 'Married', 'Canadian', '02/25/1988', 'Ontario', 'UNIT 205', '205', 'Palma', 'Zone 3', 'johndoe@gmail.com', '$2y$10$Depi/wIRRfyr66QQ9CDbiu/ubhBRZ6kIXTiXoWxkec76f03W05TZ6', '2345678901', 'Passport', 'B12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(95, 'Emily', 'Rose', 'Johnson', '', 'Female', 'Divorced', 'British', '09/01/1995', 'London', 'UNIT 301', '301', 'Pres. Laurel', 'Zone 4', 'emilyjohnson@gmail.com', '$2y$10$pfRSCucDMTpaskyC9VhCHuQPeuBIHM8J2fTJE9j.JsksNNOOYsRca', '3456789012', 'National ID', 'C12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(96, 'John', 'Paul', 'Garcia', '', 'Male', 'Single', 'Filipino', '04/02/2004', 'Manila', 'Unit 10', '120', 'Gen. del Pilar', 'Zone 2', 'john_garcia@yahoo.com', '$2y$10$1JCuXlzSHaMDeGjUzWyS8e99hWz3XXUBqwtIzuJfBxkzcU2j35wdy', '09123456789', 'Philippine Passport', 'A1234567', NULL, NULL, NULL, 'resident', '1234', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(97, 'Jane', 'Doe', 'Perez', '', 'Female', 'Married', 'Filipino', '08/25/1990', 'Quezon City', 'Unit 5', '85', 'Aguirre', 'Zone 1', 'jane_perez@gmail.com', '$2y$10$T9SlldBXU8hMCdE2CNITTePc9kk5642M2edlHwKxJ1c1K7j87DRD6', '09123456780', 'Philippine Driver\'s License', '123456789012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(98, 'Juan', 'Cruz', 'Santos', '', 'Male', 'Single', 'Filipino', '02/17/2002', 'Pasig City', 'Unit 3', '56', 'Pres. Garcia', 'Zone 2', 'juan_santos@yahoo.com', '$2y$10$O.o1ZfsgPlzsOlc9HO5bA.f2u5UxbawdB9GJqfTwtU/dtnKs.cHJG', '09123456791', 'Philhealth ID', '123456789012', NULL, NULL, NULL, 'resident', '9012', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(99, 'POLER', 'MUNISPO', 'ESTAFA', 'JR.', 'MALE', 'Single', 'FILIPINO', '04/25/1995', 'TAGUIG CITY', 'UNIT 823', '5', 'ORCHID', 'Zone 3', 'pmestafa@gmail.com', '$2y$10$b7uisMu1FM1N9mKRcUYV5eaxH.Pw2LWrYMDwLFOMwJOYdnwDKL28q', '9237346565', 'Driver\'s License', '019542', NULL, NULL, NULL, 'resident', '2845', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(100, 'MICHELLE', 'DELOS', 'ANGELES', '', 'Female', 'Single', 'FILIPINO', '11/13/2000', 'TAGUIG CITY', 'UNIT 256', '324', 'MANALILI', 'Zone 1', 'mdangeles@gmail.com', '$2y$10$fr2IFx1ntDX6XSjD6T1jVezQUeN/Nh0HVOnH10p9hVfTowtLgNpdK', '9618273233', 'Driver\'s License', '323324', NULL, NULL, NULL, 'resident', '2425', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(101, 'FRANCIS', 'CORNEJO', 'POGI', 'SR.', 'Male', 'Single', 'FILIPINO', '09/11/1997', 'TAGUIG CITY', 'UNIT 552', '11', 'ATIS', 'Zone 2', 'fcpogi@gmail.com', '$2y$10$8pqg9ebzA6vJujhJcHyrbOqSdomTZtASlyX21iA0VowYefiD73Zw2', '9610928988', 'Driver\'s License', '751823', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(102, 'EVA', 'SANTOS', 'VILLANUEVA', '', 'Female', 'Single', 'FILIPINO', '12/21/2001', 'QUEZON CITY', 'UNIT 11', '2', 'AGUIRRE', 'Zone 4', 'esvillanueva@gmail.com', '$2y$10$RAwlhvBpmbQHjPPl67ELdOzgV6p6xo7Z1xPa1pXNB.am2zfw1mAo6', '9297746565', 'Philippine passport', '128478', NULL, NULL, NULL, 'resident', '8472', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(103, 'FILEMON', 'KULINTA', 'PADRE', '', 'Male', 'Single', 'FILIPINO', '02/14/2002', 'MAKATI CITY', 'UNIT 23', '8', 'A. Bonifacio', 'Zone 6', 'fkpadre@gmail.com', '$2y$10$hiUpsvCrwzralSP95rTJHe9BqiOlD3Xim6vwoVgKZs.aJ0D9kf2.6', '9619908652', 'Driver\'s license', '829213', NULL, NULL, NULL, 'resident', '9902', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(104, 'MIKAELA', 'ESTRADA', 'CRUZ', '', 'Female', 'Separated', 'FILIPINO', '05/11/1954', 'QUEZON CITY', 'UNIT 61', '4', 'COL. BALLECER EXTN.', 'Zone 6', 'mecruz@gmail.com', '$2y$10$i39qUepmJRE/JYuDe.PLpe4TRRMFXHWhfFPpP0828FtRplWMnfAQa', '9254854855', 'Philippine passport', '872938', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(105, 'JOSE', 'FIDEL', 'RAMOS', '', 'Male', 'Married', 'FILIPINO', '11/11/1991', 'PASAY CITY', 'UNIT 11', '11', 'HERBS', 'Zone 1', 'jframos@gmail.com', '$2y$10$YPGOBgkg2xjJLtD3VkudcOk0T6Y3QuZXqDB6nPkzvax.4KIZgU/.S', '9611111111', 'Driver\'s License', '811112', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(106, 'WILKINS', 'VILLARET', 'CADUCIO', '', 'Male', 'Single', 'FILIPINO', '2/11/2002', 'TAGUIG CITY', 'UNIT 24', '8', 'A. BONIFACIO', 'Zone 6', 'wvcaducio@gmail.com', '$2y$10$cUATFRz6GTsXGcTIy./DMOCSeNveMWm7BSx/wgtpLSxWAqHk75k42', '9618291408', 'Philippine passport', '031102', NULL, NULL, NULL, 'resident', '2312', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(107, 'PRETTY', 'GERRY', 'MARIA', '', 'Female', 'Divorced', 'FILIPINO', '01/01/2001', '', 'UNIT 256', '324', 'RANGER', 'Zone 5', 'pgmaria@gmail.com', '$2y$10$M9PpAGruC7iVKR7emNHjueewRRrHdlYFmTd5Yw1Me/cNGpW.O8.mm', '9986574232', 'Philippine passport', '062866', NULL, NULL, NULL, 'resident', '9572', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(108, 'SANTO', 'PEDRO', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '01/22/2001', 'MANILA CITY', 'UNIT 114', '56', 'ARMY ROAD', 'Zone 4', 'michael@gmail.com', '$2y$10$fMWXncyFpctY5Gm4qSjCU.AZBhGau2qd.ySk6pbmCRIao8PN4cp/K', '9617723134', 'Philippine passport', '892466', NULL, NULL, NULL, 'resident', '1004', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(109, 'JANELLA', 'ROSE', 'DELA CRUZ', '', 'Female', 'Single', 'FILIPINO', '06/12/1962', 'MANILA', 'UNIT 1201', '282', 'PRES. ROXAS', 'Zone 2', 'janelladc@gmail.com', '$2y$10$MVKs1mCP8/Nyo2LNNQqGN.DkSk.skkB7L3kDYlpovxb/bbEhYimQ.', '9265783499', 'Philippine driver\'s license', 'A4321-12345-78901', NULL, NULL, NULL, 'resident', '8877', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(110, 'JIMMY', 'RIVERA', 'MARTINEZ', '', 'Male', 'Married', 'FILIPINO', '11/22/1980', 'QUEZON CITY', 'UNIT 708', '312', 'PRES. MAGSAYSAY', 'Zone 4', 'jimmymartinez@gmail.com', '$2y$10$QaU/jWxGzu4SYPyxVIff.ucBvkBKMMV2Wi7AnCxYymZT1xIks/mPC', '9273327456', 'Philippine postal ID', '123456789012345678', NULL, NULL, NULL, 'resident', '5544', 1, NULL, '2023-03-02 09:19:06', '2023-03-02 09:19:06'),
(111, 'HUDASA', 'FERRER', 'HIDAMA', '', 'Male', 'Married', 'FILIPINO', '12/03/1974', 'PARANAQUE CITY', 'UNIT 188', '188', 'QUINTAR', 'Zone 1', 'poul@gmail.com', '$2y$10$NMZXzuQQmivt3adw3XbbJ.texFAqNFYyHehC9TNqBvfUHHxmYGTSW', '9213452250', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(112, 'AGRIPINA', 'LORZANA', 'CRUZ', '', 'Female', 'Single', 'FILIPINO', '01/22/2001', 'QUEZON CITY', 'UNIT 256', '324', 'COL. BALLECER EXTN.', 'Zone 1', 'agripina@gmail.com', '$2y$10$QiUVg049/ALw8qf2I7LVvuUaiomnbnuAliCQ6avcAoc06PPH8cJk.', '9254823415', 'Philippine passport', '4588484', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(113, 'John', 'Doe', 'Smith', '', 'Male', 'Single', 'FILIPINO', '08/14/1992', 'Cavite', 'Unit 301', '301', 'Col. Ballecer', 'Zone 3', 'john.smith@gmail.com', '$2y$10$F0zzoYYqZ1w4JrSdQVE/8./dYSPqGcz52torfO38eKNuZD7QSz0pW', '1234567890', 'Driver\'s License', 'A1234567', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(114, 'Jane', 'Marie', 'Johnson', '', 'Female', 'Single', 'FILIPINO', '09/22/1999', 'Manchester', 'Unit 102', '102', 'Orchid', 'Zone 2', 'jane.johnson@gmail.com', '$2y$10$W86jcbxZuJFc57KunLfCVeYxAFgLJq7wNr66HgT1Dw31oD0dXDKDu', '2345678901', 'Passport', 'B1234567', NULL, NULL, NULL, 'resident', '2222', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(115, 'William', 'Henry', 'Lee', '', 'Male', 'Married', 'FILIPINO', '11/29/1985', 'Shanghai', 'Unit 405', '405', 'Martinez', 'Zone 1', 'william.lee@gmail.com', '$2y$10$zUZALUQL.Cny0T08Ds6PZuEIre..9j4GhyDmZdIbYRs51Zvhl7OrG', '3456789012', 'National ID', 'C1234567', NULL, NULL, NULL, 'resident', '3333', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(116, 'Maria', 'Gonzales', 'Alvarez', '', 'Female', 'Single', 'Filipino', '05/21/2001', 'Quezon City', 'Unit 301', '354', 'Col. Ballecer', 'Zone 3', 'maria.alvarez@gmail.com', '$2y$10$Cn0d10oTQCsxNqHvW7AVl.yZzc/CU1pjyAsopC5RcRslawmu46.ka', '9187854567', 'Driver\'s License', '1234567890', NULL, NULL, NULL, 'resident', '4432', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(117, 'John', 'Garcia', 'Cruz', '', 'Male', 'Married', 'Filipino', '11/07/1989', 'Pasig City', 'Unit 302', '776', 'Orchid', 'Zone 2', 'john.cruz@gmail.com', '$2y$10$dsmm5teKeetKRkxabfsTEu/EtzIOwTAW.ErbP46ugLckWD/uRCNZi', '9174326789', 'SSS ID', '0987654321', NULL, NULL, NULL, 'resident', '1245', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(118, 'Sarah', 'Tolentino', 'Dizon', '', 'Female', 'Separated', 'Filipino', '08/15/1996', 'Makati City', 'Unit 103', '871', 'Martinez', 'Zone 4', 'sarah.dizon@gmail.com', '$2y$10$9yvCgalwlD4HyV0zlhWIJ.kK96g32RlzSMl6xfsJfgTPyg/r8u5SW', '9267891234', 'PhilHealth ID', '5432109876', NULL, NULL, NULL, 'resident', '6543', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(119, 'Michael', 'Tan', 'Espinosa', '', 'Male', 'Married', 'Filipino', '03/29/1991', 'Pasig City', 'Unit 302', '776', 'Orchid', 'Zone 2', 'john.cruz@gmail.com', '$2y$10$5ITlFQuDoaib7Qt6pJMlaeE.aoKv5YRdyn3Avxr6UNNzwjQjh49ea', '9174326789', 'SSS ID', '0987654321', NULL, NULL, NULL, 'resident', '1245', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(120, 'JASMINE', 'GARCIA', 'MIRANDA', '', 'Female', 'Single', 'FILIPINO', '06/12/2001', 'QUEZON CITY', 'UNIT 44', '44', 'MARTINEZ', 'Zone 2', 'jasmiranda@gmail.com', '$2y$10$0TxpEAKRZYyfwX/YRA1WM.pLsvd3FqiWYvh4c.3R8hBs.avPFaQ2m', '9213452251', 'Driver\'s License', 'N01-01-0000001', NULL, NULL, NULL, 'resident', '1289', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(121, 'CHRISTIAN', 'RAMIREZ', 'DE LEON', '', 'Male', 'Single', 'FILIPINO', '09/23/2003', 'MANDALUYONG CITY', 'UNIT 13', '13', 'PRES. GARCIA', 'Zone 3', 'chrideleon@gmail.com', '$2y$10$fSiQPz6RjIoZVCVMIiKRH..TbOu0fFBwLpKqntvD5IrrKZFfKz.eq', '9213452252', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(122, 'ANGELA', 'REYES', 'CRUZ', '', 'Female', 'Married', 'FILIPINO', '02/18/1995', 'SAN JUAN CITY', 'UNIT 53', '53', 'STO. NIÑO', 'Zone 4', 'angelacruz@gmail.com', '$2y$10$ZRCLTcQ46xcrDoqN/5TpSeptMG9BEL7aRk/io5TSvxxSIKsvNHRfS', '9213452253', 'Postal ID', '789456123', NULL, NULL, NULL, 'resident', '2345', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(123, 'BRIAN', 'TORRES', 'GOMEZ', '', 'Male', 'Single', 'FILIPINO', '09/23/2003', 'MANDALUYONG CITY', 'UNIT 13', '13', 'PRES. GARCIA', 'Zone 3', 'chrideleon@gmail.com', '$2y$10$2fW4z/8S9TV8.jxjMMe7p.ukmxfMT05Pt4c2/.5iRnZHCof0jAOr2', '9213452252', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(124, ' Mary', 'Cruz', 'Santos', '', 'Female', 'Single', 'FILIPINO', '08/21/1997', 'Quezon City', 'Unit 12', '153', 'Daisy', 'Zone 3', 'mary.santos@gmail.com', '$2y$10$bk3cVSqUgr7wk0bJaENwseE1rY/Lmm4Gkc54OTUlnCjnQOVjMFhyS', '9183746521', 'Postal ID', '789456123', NULL, NULL, NULL, 'resident', '2345', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(125, 'John', 'Cruz', 'Reyes', '', 'Male', 'Married', 'FILIPINO', '03/08/1985', 'Mandaluyong City', 'Unit 24', '321', 'Col. Ballecer', 'Zone 4', 'john.reyes@gmail.com', '$2y$10$YtvWxx3uoELLY.HVxwlfZePD3lnOovmE4NNuL2J0ydawBBIVvlJHO', '9165437892', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(126, 'Mary', 'Ann', 'Smith', '', 'Female', 'Single', 'American', '05/16/1999', 'California', 'UNIT 101', '101', 'Martinez', 'Zone 2', 'mary.smith@gmail.com', '$2y$10$BhJyOFWcGkzTyQFaQRaMbO02o2TMDp.jgzeHDy30qr8WO.8rVzNnu', '1234567890', 'Driver\'s license', 'A12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(127, 'John', 'Patrick', 'Doe', '', 'Male', 'Married', 'Canadian', '02/25/1988', 'Ontario', 'UNIT 205', '205', 'Palma', 'Zone 3', 'johndoe@gmail.com', '$2y$10$vCtg0aK4vpLWw8YLufpTJe03WlahOzjIRbgIvvpRXA9K0MwXkM0SS', '2345678901', 'Passport', 'B12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(128, 'Emily', 'Rose', 'Johnson', '', 'Female', 'Divorced', 'British', '09/01/1995', 'London', 'UNIT 301', '301', 'Pres. Laurel', 'Zone 4', 'emilyjohnson@gmail.com', '$2y$10$JIdJcEuk.FWglfOCEUJa7Onb5ikzdiQW/r5Nu.zZfv98xpKCaVMlK', '3456789012', 'National ID', 'C12345678', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(129, 'John', 'Paul', 'Garcia', '', 'Male', 'Single', 'Filipino', '04/02/2004', 'Manila', 'Unit 10', '120', 'Gen. del Pilar', 'Zone 2', 'john_garcia@yahoo.com', '$2y$10$2D59BeaeVcrs0Sr0X3eEm.07H0vvHgb3DK6bFaL61UxPO7vIH5OeC', '09123456789', 'Philippine Passport', 'A1234567', NULL, NULL, NULL, 'resident', '1234', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(130, 'Jane', 'Doe', 'Perez', '', 'Female', 'Married', 'Filipino', '08/25/1990', 'Quezon City', 'Unit 5', '85', 'Aguirre', 'Zone 1', 'jane_perez@gmail.com', '$2y$10$x.XD8puLFleGITko72Wk/upM0gKbRgcHwPpxNo7DPgosdzdSQ4nc.', '09123456780', 'Philippine Driver\'s License', '123456789012', NULL, NULL, NULL, 'resident', '5678', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(131, 'Juan', 'Cruz', 'Santos', '', 'Male', 'Single', 'Filipino', '02/17/2002', 'Pasig City', 'Unit 3', '56', 'Pres. Garcia', 'Zone 2', 'juan_santos@yahoo.com', '$2y$10$bfXJ7FWmWR5qg2QlJm9wTuNZkJFpng/Q.ocKbFVTcZntIVs585/re', '09123456791', 'Philhealth ID', '123456789012', NULL, NULL, NULL, 'resident', '9012', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(132, 'POLER', 'MUNISPO', 'ESTAFA', 'JR.', 'MALE', 'Single', 'FILIPINO', '04/25/1995', 'TAGUIG CITY', 'UNIT 823', '5', 'ORCHID', 'Zone 3', 'pmestafa@gmail.com', '$2y$10$d9ejvTE0s9qN0u8sVUTuue.8qC.X9UHhJ4sRgwOZvPj9M4/hslVi.', '9237346565', 'Driver\'s License', '019542', NULL, NULL, NULL, 'resident', '2845', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(133, 'MICHELLE', 'DELOS', 'ANGELES', '', 'Female', 'Single', 'FILIPINO', '11/13/2000', 'TAGUIG CITY', 'UNIT 256', '324', 'MANALILI', 'Zone 1', 'mdangeles@gmail.com', '$2y$10$o76dETYuc6.Ga2ap6PTC6u5iIAR6H1YSwyyJCRq6SjEgXIZi2JduS', '9618273233', 'Driver\'s License', '323324', NULL, NULL, NULL, 'resident', '2425', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(134, 'FRANCIS', 'CORNEJO', 'POGI', 'SR.', 'Male', 'Single', 'FILIPINO', '09/11/1997', 'TAGUIG CITY', 'UNIT 552', '11', 'ATIS', 'Zone 2', 'fcpogi@gmail.com', '$2y$10$WzrbbfED1rOnX6bwM3cBPOwEjsmFpllgZk/9oxyEGsfA/hEkM5pmm', '9610928988', 'Driver\'s License', '751823', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(135, 'EVA', 'SANTOS', 'VILLANUEVA', '', 'Female', 'Single', 'FILIPINO', '12/21/2001', 'QUEZON CITY', 'UNIT 11', '2', 'AGUIRRE', 'Zone 4', 'esvillanueva@gmail.com', '$2y$10$nJ/q4OrvehRStZsY4jKKaOWHki4JzRxurZWEegohJj7QPpoADveAW', '9297746565', 'Philippine passport', '128478', NULL, NULL, NULL, 'resident', '8472', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(136, 'FILEMON', 'KULINTA', 'PADRE', '', 'Male', 'Single', 'FILIPINO', '02/14/2002', 'MAKATI CITY', 'UNIT 23', '8', 'A. Bonifacio', 'Zone 6', 'fkpadre@gmail.com', '$2y$10$Wv0O9sSptmQ/7Dk72.ohdu6XMiykfoHQfOFX6slodT8BT3ld9sYeu', '9619908652', 'Driver\'s license', '829213', NULL, NULL, NULL, 'resident', '9902', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(137, 'MIKAELA', 'ESTRADA', 'CRUZ', '', 'Female', 'Separated', 'FILIPINO', '05/11/1998', 'QUEZON CITY', 'UNIT 61', '4', 'COL. BALLECER EXTN.', 'Zone 6', 'mecruz@gmail.com', '$2y$10$qeRqbFnFSkV7SZBv42idyOfe.PepAQJ57slpLQeBoERyvMtDbvhh2', '9254854855', 'Philippine passport', '872938', NULL, NULL, NULL, 'resident', '3433', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(138, 'JOSE', 'FIDEL', 'RAMOS', '', 'Male', 'Married', 'FILIPINO', '11/11/1991', 'PASAY CITY', 'UNIT 11', '11', 'HERBS', 'Zone 1', 'jframos@gmail.com', '$2y$10$7gwsGtkZfeQFo0XVaZK3R.Rx/f2MYhxG8d9luR0sVVbx8vClCkIMG', '9611111111', 'Driver\'s License', '811112', NULL, NULL, NULL, 'resident', '1111', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(139, 'WILKINS', 'VILLARET', 'CADUCIO', '', 'Male', 'Single', 'FILIPINO', '5/11/2002', 'TAGUIG CITY', 'UNIT 24', '8', 'A. BONIFACIO', 'Zone 6', 'wvcaducio@gmail.com', '$2y$10$CF2OMoluXjBU1ruZaG802e2HsasuvNbQM7xTsX1XaLU.M6t6Eaoku', '9618291408', 'Philippine passport', '031102', NULL, NULL, NULL, 'resident', '2312', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(140, 'PRETTY', 'GERRY', 'MARIA', '', 'Female', 'Divorced', 'FILIPINO', '01/01/2001', '', 'UNIT 256', '324', 'RANGER', 'Zone 5', 'pgmaria@gmail.com', '$2y$10$s1nx1xEDud5Y64u3ucLgNO/J0sjth07f4gbtWZg0syItlbcFDB5.y', '9986574232', 'Philippine passport', '062866', NULL, NULL, NULL, 'resident', '9572', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(141, 'SANTO', 'PEDRO', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '01/22/2001', 'MANILA CITY', 'UNIT 114', '56', 'ARMY ROAD', 'Zone 4', 'michael@gmail.com', '$2y$10$m7EtlhDuMhxmNiyiOQL66OtgjrDl/KyhQ1gzfRBrW2ZdBXpbCV5J6', '9617723134', 'Philippine passport', '892466', NULL, NULL, NULL, 'resident', '1004', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(142, 'JANELLA', 'ROSE', 'DELA CRUZ', '', 'Female', 'Single', 'FILIPINO', '06/12/1994', 'MANILA', 'UNIT 1201', '282', 'PRES. ROXAS', 'Zone 2', 'janelladc@gmail.com', '$2y$10$yuSqK063x.TgMFeH886u7.vdXqfVE1BOqpMU6ZpUETZX8imiwFaza', '9265783499', 'Philippine driver\'s license', 'A4321-12345-78901', NULL, NULL, NULL, 'resident', '8877', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(143, 'JIMMY', 'RIVERA', 'MARTINEZ', '', 'Male', 'Married', 'FILIPINO', '11/22/1980', 'QUEZON CITY', 'UNIT 708', '312', 'PRES. MAGSAYSAY', 'Zone 4', 'jimmymartinez@gmail.com', '$2y$10$qLl7Xv5AU8FTH/ByAlBdNeM29veacqPvKEqFfXcsX78oF8poAMOMS', '9273327456', 'Philippine postal ID', '123456789012345678', NULL, NULL, NULL, 'resident', '5544', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(144, 'MARY', 'GRACE', 'TORRES', '', 'Female', 'Widowed', 'FILIPINO', '09/18/1976', 'CALOOCAN CITY', 'UNIT 406', '250', 'PRES. LAUREL', 'Zone 1', 'marygtorres@gmail.com', '$2y$10$byel3iuS9oOj9iB97VswYewINcoIJWGnSfJEQ2Wompf.nX1.uCWX2', '9264890123', 'Philippine national ID', '1234-5678-9012', NULL, NULL, NULL, 'resident', '1345', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(145, 'JONATHAN', 'CRUZ', 'MENDOZA', '', 'Male', 'Married', 'FILIPINO', '09/12/1990', 'MANILA', 'UNIT 102', '1234', 'DIRECTO', 'Purok 2', 'jonathan.mendoza@gmail.com', '$2y$10$srasmjcg.O8dBA4aOmD4R.XbrZh4o0NQzp934XZwyQUImLKKTn4Y2', '9254865656', 'Driver\'s License', 'B1234567', NULL, NULL, NULL, 'resident', '9888', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(146, 'JASMINE', 'TAN', 'CHAN', '', 'Female', 'Single', 'FILIPINO', '04/20/1995', 'CEBU CITY', 'UNIT 15', '2345', 'GUMAMELA', 'Purok 3', 'jasmine.chan@gmail.com', '$2y$10$rEVoBPBOj1hSCy1FsvrlvO6hJR4AkUxaPj3o6wKIqYmN5qhA1TZ3e', '9254876767', 'Postal ID', 'P1234567', NULL, NULL, NULL, 'resident', '4455', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(147, 'ERIC', 'GARCIA', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '07/15/1997', 'MAKATI CITY', 'UNIT 3', '3456', 'MARTINEZ', 'Purok 4', 'eric.santos@gmail.com', '$2y$10$hrSSPIvXwonGMZy6Y6FgQexbHAn4pxJ1VGRDuL6UgIyNFfb4Ki5rS', '9254887878', 'SSS ID', 'S1234567', NULL, NULL, NULL, 'resident', '5566', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(148, 'CHARLES', 'DALE', 'FERNANDEZ', '', 'Male', 'Married', 'FILIPINO', '06/17/1988', 'MANDAUE CITY', 'UNIT 44', '128', 'CONVERGENCE', 'Zone 2', 'charles.fernandez@gmail.com', '$2y$10$Hb6p.vmHFmuw4ajGT51pW.FI38ENklQYWR5mOr1JqfXzSUTJooi9q', '9285748585', 'Driver\'s License', 'G13331-1', NULL, NULL, NULL, 'resident', '2121', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(149, 'BEA', 'RODRIGUEZ', 'CORDERO', '', 'Female', 'Single', 'FILIPINO', '12/03/1997', 'MANILA CITY', 'UNIT 1201', '742', 'BAYANIHAN ROAD', 'Zone 7', 'bea.cordero@gmail.com', '$2y$10$9MGs3zFF6Mce1xxm84D1oOhgF3P2pXA5Z.Zs7aFKrcgJjq3ciImaW', '9213876589', 'UMID Card', 'S1118567-1', NULL, NULL, NULL, 'resident', '8889', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(150, 'DAVID', 'CARLO', 'MORALES', '', 'Male', 'Married', 'FILIPINO', '09/21/1981', 'CEBU CITY', 'UNIT 22', '348', 'ILA-ILA', 'Zone 4', 'david.morales@gmail.com', '$2y$10$k1BmgbfLIagmzKkDYNnHeOY45EZdGtHP6K0YC8IPvE//NQ9aiiFZi', '9398888545', 'Philippine passport', 'J2458533', NULL, NULL, NULL, 'resident', '1198', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(151, 'JOHN', 'CARLO', 'SANTOS', '', 'Male', 'Married', 'FILIPINO', '07/11/1992', 'PARANAQUE CITY', 'UNIT 3C', '38', 'MARTINEZ', 'Zone 4', 'johnsantos@gmail.com', '$2y$10$mTLuoUoYB7w8y0oaRp4RWuFl5UGa7yzopGhmWGwyXx37609R1kMZ6', '9177560235', 'Driver\'s license', 'A1234567890', NULL, NULL, NULL, 'resident', '8882', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(152, 'MARIE', 'DOMINGO', 'RAMIREZ', '', 'Female', 'Single', 'FILIPINO', '09/22/1999', 'MUNTINLUPA CITY', 'UNIT 12A', '27', 'PRES. QUIRINO', 'Zone 7', 'marieramirez@yahoo.com', '$2y$10$b5DeW6.77QzjYZODBBLCkuVYEPZ0IfDB7qxWAmwlRpoeHtY1l0PsK', '9237890256', 'SSS ID', '09-1234567-8', NULL, NULL, NULL, 'resident', '1735', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(153, 'PAUL', 'BAUTISTA', 'CRUZ', '', 'Male', 'Separated', 'FILIPINO', '11/19/1988', 'PASAY CITY', 'UNIT 4D', '12', 'J.P. LAUREL', 'Zone 5', 'paulcruz@hotmail.com', '$2y$10$JEMH1vgQE4dxZ2i9Vai8B.DB/QF0gMTLDeVYpFobHBFDiJ8Ks8pGy', '9194560789', 'Passport', 'EB1234567', NULL, NULL, NULL, 'resident', '6409', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(154, 'JASMINE', 'RAMIREZ', 'FERNANDEZ', '', 'Female', 'Married', 'FILIPINO', '05/11/1992', 'MARIKINA CITY', 'UNIT 102', '21', 'PRES. LAUREL', 'Zone 5', 'jasminefernandez@gmail.com', '$2y$10$SEhzvxW5Vc6kefmfWt4tWOVSYMoABcOm9S/2lxHy9JC.5NEdSJ5N.', '9776341928', 'Driver\'s License', 'M7891202541', NULL, NULL, NULL, 'resident', '1726', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(155, 'BRANDON', 'GOMEZ', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '01/02/1998', 'TAGUIG CITY', 'UNIT 607', '58', 'PRES. GARCIA', 'Zone 3', 'brandonsantos@gmail.com', '$2y$10$7GHW6l/dQQmlde3VVOis1.ZvaHw/wyIlyo9ma8YwHXH3v65Qo8ESC', '9264752837', 'Passport', 'E446920', NULL, NULL, NULL, 'resident', '8191', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(156, 'SABRINA', 'BAUTISTA', 'CRUZ', '', 'Female', 'Married', 'FILIPINO', '10/21/1987', 'PASIG CITY', 'UNIT 710', '29', 'MANGGAHAN', 'Zone 4', 'sabrinacruz@gmail.com', '$2y$10$8cRDEeWV7292YVWFfgsczO6OeLYzpSYlhY9A82viPfHyoy5UrQeqK', '9772940383', 'SSS ID', '0223456789', NULL, NULL, NULL, 'resident', '9538', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(157, 'DARLENE', 'KIM', 'BARRETO', '', 'Female', 'Married', 'FILIPINO', '11/07/1992', 'PASAY CITY', 'UNIT 14', '738', 'JASMIN', 'Purok 2', 'darlenebarreto@gmail.com', '$2y$10$aJf4k6nCLMZ7rQKKZqaO/e2qL0ZGHEe1PJmJjVgw4/Jw7WzfG1g7K', '9478325123', 'Driver\'s license', 'T-458621', NULL, NULL, NULL, 'resident', '2468', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(158, 'ELLIOT', 'JOHN', 'MENDOZA', '', 'Male', 'Separated', 'FILIPINO', '05/18/1978', 'PASIG CITY', 'UNIT 32', '1221', 'PRES. LAUREL', 'Purok 7', 'elliotmendoza@gmail.com', '$2y$10$6GpsfPucTu8zIEInlTa9BOuT1kwTwdXqMAZgr8AFs9t5CaUU5RZlq', '9251671234', 'UMID card', '5432156789', NULL, NULL, NULL, 'resident', '1357', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(159, 'JONATHAN', 'LEE', 'REYES', '', 'Male', 'Married', 'FILIPINO', '09/23/1989', 'MANILA CITY', 'UNIT 23', '841', 'GEN. DEL PILAR', 'Purok 9', 'jonathanreyes@gmail.com', '$2y$10$Pt9.ZflM0PLQRMYwrvJGre1XLiV7AvErlVlwquNv.YsAi1NYAp6vS', '9178349012', 'Postal ID', 'PO19900304', NULL, NULL, NULL, 'resident', '7890', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(160, 'CRISTIAN', 'FERMIN', 'BALDEO', '', 'Male', 'Single', 'FILIPINO', '06/17/1990', 'PASAY CITY', 'UNIT 18', '121', 'PRES. LAUREL', 'Zone 3', 'cristian.baldeo@gmail.com', '$2y$10$42gK42kHP6VP5fW.kVykB.l8vmjVnAQc9ukVfHxwT8Onx8LiU6g2a', '9234848585', 'Driver\'s License', '1234567890', NULL, NULL, NULL, 'resident', '4556', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(161, 'KATRINA', 'BERNAL', 'MANANGAN', '', 'Female', 'Married', 'FILIPINO', '08/23/1986', 'MANILA CITY', 'UNIT 12', '76', 'PRES. GARCIA', 'Zone 2', 'katrina.manangan@yahoo.com', '$2y$10$F0KAk/Xlp1ZlaTE0.JQYcuFTGipu8LUSh8xP6umHvdVbk4yu4kJbS', '9255567843', 'SSS ID', '0987654321', NULL, NULL, NULL, 'resident', '1234', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(162, 'ANA', 'BAUTISTA', 'GONZALES', '', 'Female', 'Single', 'FILIPINO', '07/14/1997', 'PASAY CITY', 'UNIT 212', '480', 'HERBS DIRECTO', 'Phase 1', 'anabgonzales@gmail.com', '$2y$10$dbP0.aReeDOr3SER/HcGbe/MFrx5BP4iPuIm9lVNS4/yvugS6kMGW', '9152424752', 'Driver\'s License', 'Z1256-02147-85451', NULL, NULL, NULL, 'resident', '7883', 1, NULL, '2023-03-02 09:20:08', '2023-03-03 04:43:32'),
(163, 'KATHRINE', 'REYES', 'JAVIER', '', 'Female', 'Single', 'FILIPINO', '11/12/1991', 'MANILA', 'UNIT 111', '456', 'BANABA', 'Phase 2', 'kathrinejavier@gmail.com', '$2y$10$fJoYtnPkpZZKEF4U8PhBte77JLke9aIT9QaAI9ON2lLT82M528pK.', '9174216578', 'Philippine passport', '8531856', NULL, NULL, NULL, 'resident', '4956', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(164, 'JAMES', 'GONZALES', 'MENDOZA', '', 'Male', 'Married', 'FILIPINO', '09/01/1980', 'QUEZON CITY', '', '123', 'VISAYAS', 'Phase 1', 'jamesgmendoza@gmail.com', '$2y$10$/VCWx5dpasdXklyB8xx6buy2mQg7Qo8UJuOisBIBEcrZbRZhh6OOq', '9254789632', 'Voter\'s ID', '1278-9812-5415', NULL, NULL, NULL, 'resident', '6348', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(165, 'MAURICE', 'SALAZAR', 'CASTRO', '', 'Male', 'Single', 'FILIPINO', '12/10/1998', 'QUEZON CITY', 'UNIT 562', '23', 'BANABA', 'Zone 3', 'maurice.castro@gmail.com', '$2y$10$AkA0o0YsiH9oEB3j7Dkaf.VBOYTM4rLiGZ4P3OvIY3Rs9DFBK8ske', '9254854875', 'Philippine passport', '4584984', NULL, NULL, NULL, 'resident', '4748', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(166, 'MARIANA', 'VASQUEZ', 'CRUZ', '', 'Female', 'Married', 'FILIPINO', '09/21/1987', 'TAGUIG CITY', 'UNIT 121', '283', 'PRES. MAGSAYSAY', 'Zone 5', 'mariana.cruz@yahoo.com', '$2y$10$g.S6vxrTkI6CAUmTLHYcsOfBdidTo12kqYFrSZ.d81./0vNSF6RQi', '9254875843', 'Driver\'s License', '4568484', NULL, NULL, NULL, 'resident', '3739', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(167, 'GABRIEL', 'MARTINEZ', 'DAVIS', '', 'Male', 'Single', 'FILIPINO', '06/14/2000', 'PASIG CITY', 'UNIT 456', '394', 'BAYANIHAN ROAD', 'Zone 4', 'gabriel.davis@gmail.com', '$2y$10$aTcsbzotJRbR2wQpw044YeJMS7oYa.YFrWO97dYEgsBxrOj2C14Vi', '9254848382', 'UMID', '1248484', NULL, NULL, NULL, 'resident', '7578', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(168, 'KYLE', 'ALVAREZ', 'GOMEZ', '', 'Male', 'Single', 'FILIPINO', '09/11/1992', 'PASIG CITY', 'UNIT 203', '480', 'PRES. GARCIA', 'Zone 2', 'kylegomez@gmail.com', '$2y$10$dlWBAq70/st3zokj1M4LDenak/dtFCjbmPCkKXMpwsp9aEroXPb1O', '9455687856', 'Driver\'s License', 'A123456789', NULL, NULL, NULL, 'resident', '2121', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(169, 'KAYLA', 'MARTINEZ', 'CRUZ', '', 'Female', 'Single', 'FILIPINO', '02/05/1999', 'MANILA CITY', 'UNIT 301', '2101', 'VISAYAS', 'Zone 3', 'kaylacruz@gmail.com', '$2y$10$0KaFJsQ.seHiFzLSeY1hDOH96a3F3MbdGvNtCrCVMdUXKKKwRewli', '9544857954', 'Philippine passport', 'B45858844', NULL, NULL, NULL, 'resident', '7684', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(170, 'MIGUEL', 'DIAZ', 'GONZALES', '', 'Male', 'Single', 'FILIPINO', '06/17/1990', 'MAKATI CITY', 'UNIT 502', '110', 'BANABA', 'Zone 4', 'migueldiaz@gmail.com', '$2y$10$PcCrGEofQFw.KWhLftW0AeIb6BinmzVV1QnCmZJ.0CdI6YM/UixSW', '9675686587', 'SSS ID', '33-1234567-8', NULL, NULL, NULL, 'resident', '1122', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(171, 'MARYJANE', 'FRANCISCO', 'BACULIO', '', 'Female', 'Married', 'FILIPINO', '07/11/1988', 'PASAY CITY', 'UNIT 39', '11', 'PRES. GARCIA', 'Zone 8', 'maryjane@gmail.com', '$2y$10$jdeRQ9TEoOo.U43KkwlhleSjX4LAP.4/mFiLbQ1z7Z311APvgcgqy', '9294878754', 'Philippine passport', '93947283', NULL, NULL, NULL, 'resident', '2837', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(172, 'MARCUS', 'CHUA', 'TAN', '', 'Male', 'Single', 'FILIPINO', '10/08/1993', 'MANDALUYONG CITY', 'UNIT 25', '84', 'ESPEDILLA', 'Zone 3', 'marcus.tan@gmail.com', '$2y$10$ZPB54uSKQbDMOmrzmSX3iOQHNriUVl6boKjE7yYEe/yEkpSQqmvge', '9264839385', 'Philippine driver\'s license', 'A12345678', NULL, NULL, NULL, 'resident', '0987', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(173, 'ANNA', 'FERNANDEZ', 'GONZALES', '', 'Female', 'Divorced', 'FILIPINO', '02/20/1979', 'QUEZON CITY', 'UNIT 33', '27', 'GEN. DEL PILAR', 'Zone 2', 'anna.gonzales@yahoo.com', '$2y$10$liVDFVe.vIUyCq9UymChr.mayTNRqbEB9fmCtQlPmTRUQnLUD8Tj6', '9358495757', 'Postal ID', 'P23098765', NULL, NULL, NULL, 'resident', '1836', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(174, 'JENNY', 'BRIONES', 'REYES', '', 'Male', 'Single', 'FILIPINO', '12/15/1997', 'QUEZON CITY', 'UNIT 120', '221', 'PRES. LAUREL', 'Zone 4', 'jenny.reyes@gmail.com', '$2y$10$rygUCyUnIu0qGLS4eLP/Puu462Le/.0jddXjuHS4Pbs8zwAlz3sNi', '9331564556', 'Philippine driver\'s license', 'M11223456', NULL, NULL, NULL, 'resident', '8987', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(175, 'MARK', 'HERNANDEZ', 'GARCIA', '', 'Female', 'Married', 'FILIPINO', '06/02/1988', 'MAKATI CITY', 'UNIT 84', '449', 'PRES. QUIRINO EXTN.', 'Zone 3', 'mark.garcia@gmail.com', '$2y$10$8H3vBV1QtAbouQvxbBI4uOF19Wu1wNXOVKdCGKgeHF0yEoSvOT76q', '9987456231', 'Postal ID', '78245631', NULL, NULL, NULL, 'resident', '7569', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(176, 'BENJAMIN', 'VILLAR', 'CRUZ', '', 'Male', 'Single', 'FILIPINO', '02/27/1992', 'MANILA CITY', 'UNIT 45', '322', 'ESPEDILLA', 'Zone 2', 'benjamin.cruz@gmail.com', '$2y$10$3CrD03KNmY7EybendzJuL.fASnxo0gVBJZlgE9rdiGnTqpcU53ORi', '9178654321', 'SSS ID', '0507890345', NULL, NULL, NULL, 'resident', '4563', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(177, 'JONAS', 'RODRIGO', 'TAN', '', 'Male', 'Married', 'FILIPINO', '11/08/1982', 'QUEZON CITY', 'UNIT 102', '235', 'PRES. QUIRINO', 'Zone 8', 'jonas.tan@gmail.com', '$2y$10$ircNq.snx1JRl/L2XmVkIe0ng2i/3JGH/Gb01C5Df4HIAH52a865q', '9254847878', 'Philippine passport', '9876543', NULL, NULL, NULL, 'resident', '5637', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(178, 'JADE', 'GARCIA', 'CASTILLO', '', 'Female', 'Married', 'FILIPINO', '05/14/1990', 'MANILA', 'UNIT 9', '412', 'VISAYAS', 'Zone 2', 'jade.castillo@gmail.com', '$2y$10$TZ6gxhHMXNlxFpbbAm01ROzz.VpHXAjKrNxsnIzUg1ueC4UyibDFC', '9254847474', 'Philippine driver\'s license', '12345678', NULL, NULL, NULL, 'resident', '2489', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(179, 'NICOLE', 'ABEJERO', 'MARTINEZ', '', 'Female', 'Single', 'FILIPINO', '02/19/1999', 'MARIKINA', 'UNIT 406', '786', 'PRES. GARCIA', 'Zone 4', 'nicole.martinez@gmail.com', '$2y$10$YvIs2yrQsPGNjjjbLBJQPuTa8t71dtH8rUziZt.u1qUbQ/gauhOrG', '9254847109', 'Philippine passport', '8765432', NULL, NULL, NULL, 'resident', '6935', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(180, 'KIMBERLY', 'JOY', 'REYES', '', 'Female', 'Single', 'FILIPINO', '07/12/1997', 'QUEZON CITY', 'UNIT 17', '321', 'PNP ROAD', 'Zone 3', 'kimberlyr@yahoo.com', '$2y$10$yBJqtKCBl9murouk8j4xHuqxNq2Sg9fFq2Gf/KyqHeOAIRsrQdUPi', '9158547578', 'Driver\'s License', '2019097845', NULL, NULL, NULL, 'resident', '7859', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(181, 'CARLOS', 'MARTIN', 'BUSTOS', '', 'Male', 'Married', 'FILIPINO', '10/15/1982', 'CALOOCAN CITY', 'UNIT 1203', '77', 'CONVERGENCE', 'Zone 2', 'carlosbustos@gmail.com', '$2y$10$SB/LNTZizxchXbEg4rFGnuuH8Tkq1nVzD032uv9EVuORFWIb0lfPS', '9178542658', 'Passport', 'A4848385', NULL, NULL, NULL, 'resident', '1876', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(182, 'MARIA', 'CRISTINA', 'BAUTISTA', '', 'Female', 'Married', 'FILIPINO', '02/18/1991', 'QUEZON CITY', 'UNIT 32', '110', 'GEN. LUNA', 'Zone 5', 'mariacristinab@yahoo.com', '$2y$10$gprVbT.yE7A7YgM3jOzrGeZ5.dq9Kae8MSMRRF2e65h4GJ0BupFgm', '9258546482', 'SSS ID', '03894853', NULL, NULL, NULL, 'resident', '2459', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(183, 'CHRISTIAN', 'TANGARO', 'TORRE', '', 'Male', 'Single', 'FILIPINO', '07/17/1990', 'QUEZON CITY', 'UNIT 1502', '189', 'COL. GERVAICO', 'Zone 4', 'christian.torre@gmail.com', '$2y$10$SrH.7OVwDnG7t6M.5DnBluhR3ueL0pcT6wfyco7a8O3lfnTdDeD8.', '9125485548', 'Driver\'s License', '8787444', NULL, NULL, NULL, 'resident', '4234', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(184, 'MARJORIE', 'BRIONES', 'MENDOZA', '', 'Female', 'Single', 'FILIPINO', '05/11/1998', 'PASAY CITY', 'UNIT 805', '23', 'VISAYAS', 'Zone 3', 'marjorie.mendoza@gmail.com', '$2y$10$o7MntQdBumqVr/tuUx80peI4Gw3Ldsxn2GLKIgjGdhgg8hOEW9l/S', '9125484577', 'Postal ID', '8894544', NULL, NULL, NULL, 'resident', '5542', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(185, 'RICHARD', 'CABALLERO', 'SANTOS', '', 'Male', 'Single', 'FILIPINO', '01/30/1987', 'QUEZON CITY', 'UNIT 1406', '54', 'PRES. LAUREL', 'Zone 2', 'richard.santos@gmail.com', '$2y$10$rWSpsGReIJwFF212dSoyce1EnNuvyIjfuKKAgRy80mez9Ndkrg.ZO', '9254854555', 'SSS ID', '4656884', NULL, NULL, NULL, 'resident', '2876', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(186, 'JOHN', 'CRAIG', 'TORRES', '', 'Male', 'Married', 'FILIPINO', '02/15/1981', 'PASAY CITY', 'UNIT 12C', '987', 'MANGGAHAN', 'Purok 3', 'johntorres@gmail.com', '$2y$10$JBJoAu1dVJVBbJrwMv26CeYV51f1bN5gz.9xbGy7z0jkVyhjXmvN6', '9175546655', 'Driver\'s License', 'A1234567890123', NULL, NULL, NULL, 'resident', '9943', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(187, 'JENNA', 'GRACE', 'PARK', '', 'Female', 'Single', 'KOREAN', '08/06/1995', 'SEOUL', 'UNIT 5F', '221', 'VISAYAS', 'Purok 4', 'jennapark@gmail.com', '$2y$10$UyRZp132.ExDwdDKz2l.o.ZoJV0cT6cZZ1/mhfR.jWmO3cFoIaIiG', '9254789966', 'Passport', 'B1234567890123', NULL, NULL, NULL, 'resident', '1852', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(188, 'MARK', 'JASON', 'RAMIREZ', '', 'Male', 'Single', 'FILIPINO', '11/19/1992', 'QUEZON CITY', 'UNIT 8D', '120', 'BAYANIHAN ROAD', 'Purok 2', 'markramirez@gmail.com', '$2y$10$SdHLTG2pNGM55AOKxyj13uEG.jieI.L8i.f54KFTYTMYdzPpz0Y0G', '9397874475', 'UMID', '123456789012', NULL, NULL, NULL, 'resident', '2638', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(189, 'JACINTA', 'P', 'MENDOZA', '', 'Female', 'Single', 'FILIPINO', '05/16/1990', 'PASIG CITY', 'UNIT 456', '678', 'PRES. MAGSAYSAY', 'Zone 2', 'jacinta.mendoza@gmail.com', '$2y$10$JQTou7KzTUKmRoW430GPw.8/0bwojyWBDU.rLcWLO7LGBE97NWmMa', '9987463621', 'Driver\'s License', 'N409-0134-2596', NULL, NULL, NULL, 'resident', '5821', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08');
INSERT INTO `users` (`id`, `first_name`, `middle_name`, `last_name`, `suffix`, `gender`, `marital_status`, `nationality`, `birthdate`, `place_birth`, `address_unitNo`, `address_houseNo`, `address_street`, `address_purok`, `email`, `password`, `mobile_num`, `valiID_type`, `validID_num`, `validID_front`, `validID_back`, `profilePic`, `role`, `OTP`, `isEnabled`, `remember_token`, `created_at`, `updated_at`) VALUES
(190, 'NICO', 'L', 'PASCUAL', '', 'Male', 'Married', 'FILIPINO', '11/28/1983', 'MANILA', '', '1234', 'J.P. LAUREL', '', 'nico.pascual@gmail.com', '$2y$10$.efqEX3fk9OzQkQhIxTWEOcJ7fbC/NaIR.GIAozBLmxFM9P5TDP1e', '9876543210', 'UMID', '1234-5678-9012', NULL, NULL, NULL, 'admin', '2167', 0, NULL, '2023-03-02 09:20:08', '2023-03-03 04:42:29'),
(191, 'LUCAS', 'B', 'TAN', '', 'Male', 'Single', 'FILIPINO', '02/10/1995', 'MAKATI CITY', '', '789', 'MANGGAHAN EXTN.', '', 'lucas.tan@yahoo.com', '$2y$10$8Z8.lY82igSg2evhRciHDOCUGEk8x3RP98sk/YNdRpuVnF4u6jj5K', '9456341789', 'Passport', 'AB1234567', NULL, NULL, NULL, 'resident', '3254', 1, NULL, '2023-03-02 09:20:08', '2023-03-02 09:20:08'),
(192, 'MIKEDALE', 'BUNTOG', 'DELLERA', '', 'Male', 'Single', 'FILIPINO', '03/20/2001', 'PASAY CITY', '20', '420', 'ORCHID', 'ZONE 5', 'dalemike91@gmail.com', '$2y$10$506HXcAQHsCCp2UCt41H4.4Tl9IAgnd86EItzrOiMMZzOgFsyQaiy', '05690353', 'Student ID', '2020-141265', 'mikedale_dellera2023-03-03-14-15-17frontPic.png', 'mikedale_dellera2023-03-03-14-15-17backPic.png', NULL, 'resident', '686896', 1, NULL, '2023-03-03 06:15:18', '2023-03-03 06:16:28');

-- --------------------------------------------------------

--
-- Table structure for table `visitor`
--

CREATE TABLE `visitor` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitor`
--

INSERT INTO `visitor` (`id`, `created_at`, `updated_at`) VALUES
(1, '2023-02-28 06:59:23', '2023-02-28 06:59:23'),
(2, '2023-02-28 06:59:41', '2023-02-28 06:59:41'),
(3, '2023-02-28 07:19:37', '2023-02-28 07:19:37'),
(4, '2023-02-28 10:12:22', '2023-02-28 10:12:22'),
(5, '2023-02-27 10:36:24', '2023-02-27 10:36:24'),
(6, '2023-02-27 10:36:24', '2023-02-27 10:36:24'),
(7, '2023-02-22 10:39:06', '2023-02-22 10:39:06'),
(8, '2023-02-22 10:39:06', '2023-02-22 10:39:06'),
(9, '2023-02-22 10:39:06', '2023-02-22 10:39:06'),
(10, '2023-02-22 10:39:06', '2023-02-22 10:39:06'),
(11, '2023-02-20 10:39:54', '2023-02-20 10:39:54'),
(12, '2023-02-20 10:39:54', '2023-02-20 10:39:54'),
(13, '2023-02-20 10:39:54', '2023-02-20 10:39:54'),
(14, '2023-02-20 10:39:54', '2023-02-20 10:39:54'),
(15, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(16, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(17, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(18, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(19, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(20, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(21, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(22, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(23, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(24, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(25, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(26, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(27, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(28, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(29, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(30, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(31, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(32, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(33, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(34, '2023-02-13 10:48:38', '2023-02-13 10:48:38'),
(35, '2023-02-28 11:21:27', '2023-02-28 11:21:27'),
(36, '2023-02-28 11:21:28', '2023-02-28 11:21:28'),
(37, '2023-02-28 11:21:29', '2023-02-28 11:21:29'),
(38, '2023-02-28 11:21:30', '2023-02-28 11:21:30'),
(39, '2023-02-28 11:21:30', '2023-02-28 11:21:30'),
(40, '2023-02-28 11:21:31', '2023-02-28 11:21:31'),
(41, '2023-02-28 11:21:32', '2023-02-28 11:21:32'),
(42, '2023-02-28 11:21:32', '2023-02-28 11:21:32'),
(43, '2023-02-28 11:21:33', '2023-02-28 11:21:33'),
(44, '2023-01-12 11:58:42', '2023-01-12 11:58:42'),
(45, '2023-01-16 11:58:42', '2023-01-16 11:58:42'),
(46, '2023-01-06 11:59:09', '2023-01-06 11:59:09'),
(47, '2023-01-18 11:59:09', '2023-01-18 11:59:09'),
(48, '2022-12-22 11:59:09', '2022-12-22 11:59:09'),
(49, '2023-01-29 11:59:09', '2023-01-29 11:59:09'),
(50, '2022-11-30 11:59:09', '2022-11-30 11:59:09'),
(51, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(52, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(53, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(54, '2023-01-12 11:58:42', '2023-01-12 11:58:42'),
(55, '2023-01-16 11:58:42', '2023-01-16 11:58:42'),
(56, '2023-01-06 11:59:09', '2023-01-06 11:59:09'),
(57, '2023-01-18 11:59:09', '2023-01-18 11:59:09'),
(58, '2022-12-22 11:59:09', '2022-12-22 11:59:09'),
(59, '2023-01-29 11:59:09', '2023-01-29 11:59:09'),
(60, '2022-11-30 11:59:09', '2022-11-30 11:59:09'),
(61, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(62, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(63, '2022-11-10 11:59:09', '2022-11-10 11:59:09'),
(64, '2023-02-28 12:58:49', '2023-02-28 12:58:49'),
(65, '2023-02-28 13:01:47', '2023-02-28 13:01:47'),
(66, '2023-02-28 13:02:05', '2023-02-28 13:02:05'),
(67, '2023-02-28 13:08:19', '2023-02-28 13:08:19'),
(68, '2023-02-28 13:08:35', '2023-02-28 13:08:35'),
(69, '2023-02-28 13:08:58', '2023-02-28 13:08:58'),
(70, '2023-02-28 13:09:07', '2023-02-28 13:09:07'),
(71, '2023-02-28 13:15:08', '2023-02-28 13:15:08'),
(72, '2023-02-28 13:22:54', '2023-02-28 13:22:54'),
(73, '2023-03-01 02:29:48', '2023-03-01 02:29:48'),
(74, '2023-03-01 02:31:19', '2023-03-01 02:31:19'),
(75, '2023-03-01 02:38:05', '2023-03-01 02:38:05'),
(76, '2023-03-01 02:38:10', '2023-03-01 02:38:10'),
(77, '2023-03-01 02:38:11', '2023-03-01 02:38:11'),
(78, '2023-03-01 02:38:11', '2023-03-01 02:38:11'),
(79, '2023-03-01 02:38:12', '2023-03-01 02:38:12'),
(80, '2023-03-01 04:31:47', '2023-03-01 04:31:47'),
(81, '2023-03-01 05:56:48', '2023-03-01 05:56:48'),
(82, '2023-03-01 06:05:46', '2023-03-01 06:05:46'),
(83, '2023-03-01 06:05:59', '2023-03-01 06:05:59'),
(84, '2023-03-01 06:06:29', '2023-03-01 06:06:29'),
(85, '2023-03-01 06:06:34', '2023-03-01 06:06:34'),
(86, '2023-03-01 06:16:45', '2023-03-01 06:16:45'),
(87, '2023-03-01 07:35:43', '2023-03-01 07:35:43'),
(88, '2023-03-01 07:44:23', '2023-03-01 07:44:23'),
(89, '2023-03-01 08:26:29', '2023-03-01 08:26:29'),
(90, '2023-03-01 12:18:27', '2023-03-01 12:18:27'),
(91, '2023-03-01 12:18:29', '2023-03-01 12:18:29'),
(92, '2023-03-01 12:18:34', '2023-03-01 12:18:34'),
(93, '2023-03-01 12:21:35', '2023-03-01 12:21:35'),
(94, '2023-03-01 12:24:06', '2023-03-01 12:24:06'),
(95, '2023-03-01 12:24:57', '2023-03-01 12:24:57'),
(96, '2023-03-01 12:25:35', '2023-03-01 12:25:35'),
(97, '2023-03-01 12:50:09', '2023-03-01 12:50:09'),
(98, '2023-03-01 12:52:00', '2023-03-01 12:52:00'),
(99, '2023-03-01 13:07:00', '2023-03-01 13:07:00'),
(100, '2023-03-01 14:01:54', '2023-03-01 14:01:54'),
(101, '2023-03-01 14:01:57', '2023-03-01 14:01:57'),
(102, '2023-03-02 01:02:24', '2023-03-02 01:02:24'),
(103, '2023-03-02 01:13:12', '2023-03-02 01:13:12'),
(104, '2023-03-02 01:14:11', '2023-03-02 01:14:11'),
(105, '2023-03-02 01:36:15', '2023-03-02 01:36:15'),
(106, '2023-03-02 02:01:34', '2023-03-02 02:01:34'),
(107, '2023-03-02 02:01:45', '2023-03-02 02:01:45'),
(108, '2023-03-02 02:02:29', '2023-03-02 02:02:29'),
(109, '2023-03-02 04:53:32', '2023-03-02 04:53:32'),
(110, '2023-03-02 04:53:35', '2023-03-02 04:53:35'),
(111, '2023-03-02 05:43:45', '2023-03-02 05:43:45'),
(112, '2023-03-02 08:32:16', '2023-03-02 08:32:16'),
(113, '2023-03-02 12:00:40', '2023-03-02 12:00:40'),
(114, '2023-03-02 12:06:08', '2023-03-02 12:06:08'),
(115, '2023-03-02 14:04:46', '2023-03-02 14:04:46'),
(116, '2023-03-03 00:54:02', '2023-03-03 00:54:02'),
(117, '2023-03-03 01:56:30', '2023-03-03 01:56:30'),
(118, '2023-03-03 02:14:34', '2023-03-03 02:14:34'),
(119, '2023-03-03 02:16:59', '2023-03-03 02:16:59'),
(120, '2023-03-03 02:25:32', '2023-03-03 02:25:32'),
(121, '2023-03-03 02:28:44', '2023-03-03 02:28:44'),
(122, '2023-03-03 03:02:18', '2023-03-03 03:02:18'),
(123, '2023-03-03 03:19:21', '2023-03-03 03:19:21'),
(124, '2023-03-03 03:19:26', '2023-03-03 03:19:26'),
(125, '2023-03-03 03:21:01', '2023-03-03 03:21:01'),
(126, '2023-03-03 03:24:47', '2023-03-03 03:24:47'),
(127, '2023-03-03 04:08:42', '2023-03-03 04:08:42'),
(128, '2023-03-03 04:12:00', '2023-03-03 04:12:00'),
(129, '2023-03-03 05:33:16', '2023-03-03 05:33:16'),
(130, '2023-03-03 05:33:59', '2023-03-03 05:33:59'),
(131, '2023-03-03 05:34:52', '2023-03-03 05:34:52'),
(132, '2023-03-03 05:41:16', '2023-03-03 05:41:16'),
(133, '2023-03-03 05:41:17', '2023-03-03 05:41:17'),
(134, '2023-03-03 05:55:14', '2023-03-03 05:55:14'),
(135, '2023-03-05 15:45:30', '2023-03-05 15:45:30'),
(136, '2023-03-06 08:24:08', '2023-03-06 08:24:08'),
(137, '2023-03-07 14:16:03', '2023-03-07 14:16:03'),
(138, '2023-03-07 15:44:08', '2023-03-07 15:44:08'),
(139, '2023-03-07 17:36:46', '2023-03-07 17:36:46'),
(140, '2023-05-01 15:33:38', '2023-05-01 15:33:38'),
(141, '2023-05-01 15:55:22', '2023-05-01 15:55:22'),
(142, '2023-05-01 16:57:37', '2023-05-01 16:57:37'),
(143, '2023-05-02 05:14:45', '2023-05-02 05:14:45'),
(144, '2023-05-24 15:15:52', '2023-05-24 15:15:52'),
(145, '2023-05-27 11:46:48', '2023-05-27 11:46:48'),
(146, '2023-05-27 14:32:39', '2023-05-27 14:32:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `concern`
--
ALTER TABLE `concern`
  ADD PRIMARY KEY (`concern_id`);

--
-- Indexes for table `concern_history`
--
ALTER TABLE `concern_history`
  ADD PRIMARY KEY (`concern_history_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `manage_web_app`
--
ALTER TABLE `manage_web_app`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `request_history`
--
ALTER TABLE `request_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_type`
--
ALTER TABLE `request_type`
  ADD PRIMARY KEY (`request_type_id`);

--
-- Indexes for table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reset_password_expired_at_index` (`expired_at`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitor`
--
ALTER TABLE `visitor`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `concern`
--
ALTER TABLE `concern`
  MODIFY `concern_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `concern_history`
--
ALTER TABLE `concern_history`
  MODIFY `concern_history_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manage_web_app`
--
ALTER TABLE `manage_web_app`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=574;

--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `request_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `request_history`
--
ALTER TABLE `request_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=208;

--
-- AUTO_INCREMENT for table `request_type`
--
ALTER TABLE `request_type`
  MODIFY `request_type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `visitor`
--
ALTER TABLE `visitor`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=147;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
