-- phpMyAdmin SQL Dump
-- version 4.6.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2016 at 12:42 PM
-- Server version: 5.7.12-log
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `herrmann-j`
--

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_assets`
--

CREATE TABLE `t30ib_assets` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) UNSIGNED NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_assets`
--

INSERT INTO `t30ib_assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 0, 181, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.login.offline":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 92, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 93, 94, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 95, 96, 1, 'com_installer', 'com_installer', '{"core.admin":[],"core.manage":{"7":0},"core.delete":{"7":0},"core.edit.state":{"7":0}}'),
(11, 1, 97, 98, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 99, 100, 1, 'com_login', 'com_login', '{}'),
(13, 1, 101, 102, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 103, 104, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 105, 106, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 107, 110, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 111, 112, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 113, 150, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 151, 154, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 155, 156, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 157, 158, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 159, 160, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 161, 162, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 163, 166, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":{"6":1}}'),
(26, 1, 167, 168, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 25, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 152, 153, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 24, 164, 165, 1, 'com_users.category.7', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 1, 169, 170, 1, 'com_finder', 'com_finder', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(35, 27, 19, 20, 3, 'com_content.article.2', 'About Us', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 8, 26, 29, 2, 'com_content.category.8', 'News', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(37, 36, 27, 28, 3, 'com_content.article.3', 'Article 1 Title', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 27, 21, 22, 3, 'com_content.article.6', 'Creating Your Site', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(41, 1, 171, 172, 1, 'com_joomlaupdate', 'com_joomlaupdate', '{"core.admin":[],"core.manage":[],"core.delete":[],"core.edit.state":[]}'),
(42, 1, 173, 174, 1, 'com_tags', 'com_tags', '{"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(43, 1, 175, 176, 1, 'com_contenthistory', 'com_contenthistory', '{}'),
(44, 1, 177, 178, 1, 'com_ajax', 'com_ajax', '{}'),
(47, 1, 179, 180, 1, 'com_postinstall', 'com_postinstall', '{}'),
(48, 18, 114, 115, 2, 'com_modules.module.10', 'Logged-in Users', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(49, 18, 116, 117, 2, 'com_modules.module.3', 'Popular Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(50, 18, 118, 119, 2, 'com_modules.module.4', 'Recently Added Articles', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(51, 18, 120, 121, 2, 'com_modules.module.89', 'Site Information', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(52, 18, 122, 123, 2, 'com_modules.module.88', 'Image', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"module.edit.frontend":[]}'),
(53, 18, 124, 125, 2, 'com_modules.module.90', 'Release News', '{"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1}}'),
(54, 8, 30, 35, 2, 'com_content.category.9', 'Unternehmen', '{}'),
(55, 54, 31, 32, 3, 'com_content.article.7', 'Aktuelles', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(56, 54, 33, 34, 3, 'com_content.article.8', 'Einsatzgebiet', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(57, 18, 126, 127, 2, 'com_modules.module.83', 'Side Module', '{}'),
(58, 18, 128, 129, 2, 'com_modules.module.1', 'Main Menu', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(59, 18, 130, 131, 2, 'com_modules.module.91', 'Unternehmen', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(60, 18, 132, 133, 2, 'com_modules.module.87', 'Footer', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(61, 27, 23, 24, 3, 'com_content.article.9', 'Rohrbruchortung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(62, 8, 36, 61, 2, 'com_content.category.10', 'Dienstleistungen', '{}'),
(63, 8, 62, 65, 2, 'com_content.category.11', 'Referenzen', '{}'),
(64, 8, 66, 73, 2, 'com_content.category.12', 'Kontakt', '{}'),
(65, 62, 37, 44, 3, 'com_content.category.13', 'Ortung', '{}'),
(66, 62, 45, 52, 3, 'com_content.category.14', 'Diagnostik', '{}'),
(67, 62, 53, 60, 3, 'com_content.category.15', 'Trocknung', '{}'),
(68, 65, 38, 39, 4, 'com_content.article.10', 'Rohrbruchortung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(69, 65, 40, 41, 4, 'com_content.article.11', 'Prüfgasverfahren', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(70, 65, 42, 43, 4, 'com_content.article.12', 'Videoendoskopie', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(71, 66, 46, 47, 4, 'com_content.article.13', 'Bauwerksdiagnostik', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(72, 66, 48, 49, 4, 'com_content.article.14', 'Thermografie', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(73, 66, 50, 51, 4, 'com_content.article.15', 'BlowerDoor-Messung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(74, 67, 54, 55, 4, 'com_content.article.16', 'Spezialtrocknung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(75, 67, 56, 57, 4, 'com_content.article.17', 'Bautrocknung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(76, 67, 58, 59, 4, 'com_content.article.18', 'Infrarot-Trocknung', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(77, 63, 63, 64, 3, 'com_content.article.19', 'Referenzen', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(78, 64, 67, 68, 3, 'com_content.article.20', 'Schadensformular', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(79, 64, 69, 70, 3, 'com_content.article.21', 'Standorte', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(80, 64, 71, 72, 3, 'com_content.article.22', ' Kontaktformular', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(81, 16, 108, 109, 2, 'com_menus.menu.2', 'nav menu', '{}'),
(82, 18, 134, 135, 2, 'com_modules.module.92', 'Dienstleistungen', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(83, 90, 77, 78, 3, 'com_content.article.23', 'Home', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(84, 8, 74, 75, 2, 'com_content.category.16', 'Home', '{}'),
(85, 91, 81, 82, 3, 'com_content.article.24', 'Verehrte Kunden', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(86, 18, 136, 137, 2, 'com_modules.module.82', 'News Flash', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(87, 18, 138, 139, 2, 'com_modules.module.93', 'Articles - Newsflash (Advanced)', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(88, 18, 140, 141, 2, 'com_modules.module.94', 'Flash advance', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(89, 92, 85, 86, 3, 'com_content.article.25', 'Firmenvideos', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(90, 8, 76, 79, 2, 'com_content.category.17', 'Herrmann GmbH', '{}'),
(91, 8, 80, 83, 2, 'com_content.category.18', 'main-left', '{}'),
(92, 8, 84, 87, 2, 'com_content.category.19', 'main-center', '{}'),
(93, 8, 88, 89, 2, 'com_content.category.20', 'main-right', '{}'),
(94, 18, 142, 143, 2, 'com_modules.module.95', 'main-left', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(95, 18, 144, 145, 2, 'com_modules.module.96', 'main-center', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(96, 18, 146, 147, 2, 'com_modules.module.97', 'main-right', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(97, 18, 148, 149, 2, 'com_modules.module.98', 'Contact Information Module', '{"core.delete":[],"core.edit":[],"core.edit.state":[],"module.edit.frontend":[]}'),
(98, 8, 90, 91, 2, 'com_content.category.21', 'contacts', '{}');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_associations`
--

CREATE TABLE `t30ib_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_banners`
--

CREATE TABLE `t30ib_banners` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custombannercode` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sticky` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_banner_clients`
--

CREATE TABLE `t30ib_banner_clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extrainfo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_banner_tracks`
--

CREATE TABLE `t30ib_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `count` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_categories`
--

CREATE TABLE `t30ib_categories` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `extension` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_categories`
--

INSERT INTO `t30ib_categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`, `version`) VALUES
(1, 0, 0, 0, 39, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(7, 32, 1, 9, 10, 1, 'uncategorised', 'com_users', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(8, 36, 1, 11, 12, 1, 'news', 'com_content', 'News', 'news', '', '<p>This is the latest new from us.</p><p>You can edit this description in the Content Category Manager.</p><p>This will show the most recent article. You can easily change it to show more if you wish.</p><p>The module on the left shows a list of older articles.</p>', -2, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 745, '2011-01-01 00:00:01', 0, '0000-00-00 00:00:00', 0, '*', 1),
(9, 54, 1, 13, 14, 1, 'unternehmen', 'com_content', 'Unternehmen', 'unternehmen', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":"Unternehmen"}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:08:51', 0, '2016-07-21 13:08:51', 0, '*', 1),
(10, 62, 1, 15, 22, 1, 'dienstleistungen', 'com_content', 'Dienstleistungen', 'dienstleistungen', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:56:27', 0, '2016-07-21 13:56:27', 0, '*', 1),
(11, 63, 1, 23, 24, 1, 'referenzen', 'com_content', 'Referenzen', 'referenzen', '', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Referenzen</span></strong></h2>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:57:06', 0, '2016-07-21 13:57:06', 0, '*', 1),
(12, 64, 1, 25, 26, 1, 'kontakt', 'com_content', 'Kontakt', 'kontakt', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:57:33', 0, '2016-07-21 13:57:33', 0, '*', 1),
(13, 65, 10, 16, 17, 2, 'dienstleistungen/ortung', 'com_content', 'Ortung', 'ortung', '', '<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Ortung</h4>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:58:54', 0, '2016-07-21 13:58:54', 0, '*', 1),
(14, 66, 10, 18, 19, 2, 'dienstleistungen/diagnostik', 'com_content', 'Diagnostik', 'diagnostik', '', '<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Diagnostik</h4>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 13:59:26', 0, '2016-07-21 13:59:26', 0, '*', 1),
(15, 67, 10, 20, 21, 2, 'dienstleistungen/trocknung', 'com_content', 'Trocknung', 'trocknung', '', '<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Trocknung</h4>', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 14:00:03', 0, '2016-07-21 14:00:03', 0, '*', 1),
(16, 84, 1, 27, 28, 1, 'home', 'com_content', 'Home', 'home', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-21 15:28:09', 0, '2016-07-21 15:28:09', 0, '*', 1),
(17, 90, 1, 29, 30, 1, 'herrmann-gmbh', 'com_content', 'Herrmann GmbH', 'herrmann-gmbh', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-27 14:29:34', 0, '2016-07-27 14:29:34', 0, '*', 1),
(18, 91, 1, 31, 32, 1, 'main-left', 'com_content', 'main-left', 'main-left', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-27 14:44:04', 0, '2016-07-27 14:44:04', 0, '*', 1),
(19, 92, 1, 33, 34, 1, 'main-center', 'com_content', 'main-center', 'main-center', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-27 14:44:19', 0, '2016-07-27 14:44:19', 0, '*', 1),
(20, 93, 1, 35, 36, 1, 'main-right', 'com_content', 'main-right', 'main-right', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-27 14:44:36', 0, '2016-07-27 14:44:36', 0, '*', 1),
(21, 98, 1, 37, 38, 1, 'contacts', 'com_content', 'contacts', 'contacts', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":"","image_alt":""}', '', '', '{"author":"","robots":""}', 745, '2016-07-30 08:52:28', 0, '2016-07-30 08:52:28', 0, '*', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_contact_details`
--

CREATE TABLE `t30ib_contact_details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `suburb` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `misc` mediumtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_to` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_con` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `webpage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sortname1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sortname3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_contact_details`
--

INSERT INTO `t30ib_contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`, `sortname1`, `sortname2`, `sortname3`, `language`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `metakey`, `metadesc`, `metadata`, `featured`, `xreference`, `publish_up`, `publish_down`, `version`, `hits`) VALUES
(1, 'Center Dortmund', 'center-dortmund', 'Deusener Str. 100  44369 Dortmund', 'Deusener Str. 100  44369 Dortmund', '', '', '', '', '0231 - 793030 - 0', '0231 - 793030 - 22', '', '', 'info@herrmann-j.de', 0, 1, 0, '0000-00-00 00:00:00', 1, '{"show_contact_category":"","show_contact_list":"","presentation_style":"","show_tags":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","articles_display_num":"","show_profile":"","show_links":"","linka_name":"","linka":false,"linkb_name":"","linkb":false,"linkc_name":"","linkc":false,"linkd_name":"","linkd":false,"linke_name":"","linke":false,"contact_layout":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":""}', 0, 4, 1, '', '', '', '', '', '*', '2011-01-01 00:00:01', 745, 'Joomla', '2016-07-30 08:52:46', 745, '', '', '{"robots":"","rights":""}', 0, '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_content`
--

CREATE TABLE `t30ib_content` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `introtext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fulltext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribs` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_content`
--

INSERT INTO `t30ib_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(2, 35, 'About Us', 'about-us', '<p>Put more information on this page.</p>', '', -2, 2, '2011-01-01 00:00:01', 745, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-04 03:06:07', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 7, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 37, 'Article 1 Title', 'article-1-title', '<p>Here is a news article.</p>', '', -2, 8, '2011-01-01 00:00:01', 745, 'Joomla', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-04 03:10:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":"","urlatext":"","targeta":"","urlb":"","urlbtext":"","targetb":"","urlc":"","urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(6, 40, 'Creating Your Site', 'creating-your-site', '<p>Joomla! is all about allowing you to create a site that matches your vision. The possibilities are limitless; this sample site will get you started.</p><p>There are a few things you should know to get you started.</p><p>Every Joomla! Web site has two parts: the Site (which is what your site visitors see) and the Administrator (which is where you will do a lot of the site management). You need to log in to the Administrator separately with the same username and password. There is a link to the administrator on the top menu that you will see when you log in.</p><p>You can edit articles in the Site by clicking on the edit icon. You can create a new article by clicking on the Create Article link in the top menu.</p><p>To do basic changes to the appearance your site click Home, Site Settings and Home, Template Settings.</p><p>To do more advanced things, like edit the contact form, manage users, or install a new template or extension, login to the Administrator.</p><p>Some quick tips for working in the Administrator</p><ul><li>To change the image on all the pages: Go to the Module Manager and click on Image Module.</li><li>To edit the Side Module: Go to Extensions, Module Manager and click on Side Module.</li><li>To edit the Contact Form: Go to Components, Contacts. Click on Your Name.</li></ul><p>Once you have your basic site you may want to install your own template (that controls the overall design of your site) and then, perhaps additional extensions.</p><p>There is a lot of help available for Joomla!. You can visit the <a href="http://forum.joomla.org">Joomla! forums</a> and the<a href="https://docs.joomla.org" target="_blank"> Joomla! documentation site</a> to get started.</p>', '', -2, 2, '2011-01-01 00:00:01', 745, 'Joomla', '2013-10-29 12:46:03', 237, 0, '0000-00-00 00:00:00', '2012-01-04 04:27:11', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":null,"urlatext":"","targeta":"","urlb":null,"urlbtext":"","targetb":"","urlc":null,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 8, 0, '', '', 1, 175, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(7, 55, 'Aktuelles', 'aktuelles', '<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Herrmann Gebäudesanierung GmbH</h4>\r\n<p><img src="images/Logo-Herrmann-Gebaeudesanierung-GmbH.jpg" alt="" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;">Wo Herrmann drinsteckt steht ab sofort auch Herrmann drauf. Die im April 2015 gegründete DuweSan GmbH firmiert ab sofort unter Herrmann Gebäudesanierung GmbH. Und auch in der Geschäftsführung hat es Änderungen gegeben. Mit Herrn Kai Desimeier konnten wir einen erfahrenen und kompetenten Geschäftsführer für das Unternehmen gewinnen. Herr Desimeier kennt das Herrmann Geschäft zudem seit vielen Jahren, zuletzt in der Position des Niederlassungsleiter der Herrmann GmbH - Niederlassung Essen.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;"><strong style="box-sizing: border-box;">Herrmann Gebäudesanierung GmbH</strong> <br style="box-sizing: border-box;" />Hoppe 3<br style="box-sizing: border-box;" />45549 Sprockhövel<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Tel. 02339 929 82 - 30<br style="box-sizing: border-box;" />Fax 02339 929 82 - 33</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;"><strong style="box-sizing: border-box;">Achtung:</strong><br style="box-sizing: border-box;" />Die neue Internetpräsenz befindet sich aktuell noch im Aufbau. Mehr Informationen finden Sie in Kürze auf der Website der Herrmann Gebäudesanierung GmbH unter <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" title="www.herrmann-san.de" href="http://www.herrmann-san.de/" target="_blank">www.herrmann-san.de</a> Bis dahin finden Sie alle relevanten Informationen zum Unternehmen weiterhin auf der Website <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" title="www.duwesan.de" href="http://www.duwesan.de/" target="_blank">www.duwesan.de</a>.</p>\r\n', '\r\n<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Im Zeichen der Energiewende!</h4>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;"><img src="images/Im-Zeichen-der-Energiewende.jpg" alt="" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;">Neben zahlreichen anderen Themen sind Energiesparende Geräte auf dem Messekongress "Schadenmanagement &amp; Assistance" in Leipzig für viele Versicherungen ein großes Thema. <br style="box-sizing: border-box;" />Wo andere Unternehmen noch darüber sprechen haben WIR bereits gehandelt. Unsere Produktpalette umfasst inzwischen rund 1.000 Geräte der ES Serie von CorroVenta und weitere rund 1.000 Energiesparende Geräte anderer Hersteller. <br style="box-sizing: border-box;" />Erfahren Sie mehr über unsere Produktpalette und unsere Arbeit und besuchen Sie uns noch bis einschließlich 21.04.2016 auf dem Messekongress in Leipzig (Ebene 0, Stand 93).</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;"><strong style="box-sizing: border-box;">Wir freuen uns auf Ihren Besuch!</strong></p>\r\n<hr title="Messekongress Schadenmanagement &amp; Assistance" class="system-pagebreak" />\r\n<h4 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Messekongress Schadenmanagement &amp; Assistance</h4>\r\n<p><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px;">Besuchen Sie uns auf dem Messekongress in Leipzig.</span></p>\r\n<p><img src="images/Messekongress-Leipzig.jpg" alt="" /></p>', 1, 9, '2016-07-21 13:20:53', 745, '', '2016-07-21 13:20:53', 0, 745, '2016-07-27 14:52:26', '2016-07-21 13:20:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 9, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(8, 56, 'Einsatzgebiet', 'einsatzgebiet', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;">Unser<strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;"> Einsatzgebiet</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Unser Einsatzgebiet liegt im gesamten Ruhrgebiet, Bergischen Land und Rheinland.<br style="box-sizing: border-box;" />Hier eine Übersichtskarte:</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;"><img src="images/Einsatzgebiet_01_2014.jpg" alt="" /></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px;"><a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" title="Hier können Sie eine PDF der Übersichtskarte downloaden." href="http://www.herrmann-j.de/pdf/Herrmann-Einsatzgebiet_01_2014.pdf" target="_blank">Hier können Sie eine PDF der Übersichtskarte downloaden.</a></p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px;"><a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" title="Unsere Einsatzgebiete nach Orten mit Postleitzahlen (PDF). " href="http://www.herrmann-j.de/pdf/Herrmann-Einsatzgebiet_PLZ_01_2014.pdf" target="_blank">Unsere Einsatzgebiete nach Orten mit Postleitzahlen (PDF).</a></p>\r\n</div>\r\n</div>', '', 1, 9, '2016-07-21 13:23:03', 745, '', '2016-07-21 13:23:03', 0, 0, '0000-00-00 00:00:00', '2016-07-21 13:23:03', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 6, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(9, 61, 'Rohrbruchortung', 'rohrbruchortung', '<p><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;">Bei Rohrbrüchen an Heizungs- und Wasserleitungen gewährleisten wir innerhalb kürzester Zeit eine Ortung der Leckstelle um das Ausmaß des Gebäudeschadens auf ein Minimum zu begrenzen. Unsere Messwagen sind mit modernsten Spezialmessgeräten und Diagnoseverfahren ausgerüstet. Wir setzen hoch auflösende Infrarotkameras ein, führen "Elektro-Akustischen Messungen" durch oder setzen das "Spürgasverfahren" ein, um für sie unnötige Stemmarbeiten, Lärm, Schmutz und Kosten zu sparen.</span></p>', '', 1, 2, '2016-07-21 13:55:20', 745, '', '2016-07-21 14:03:56', 745, 0, '0000-00-00 00:00:00', '2016-07-21 13:55:20', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 2, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 68, 'Rohrbruchortung', 'rohrbruchortung', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Rohrbruchortung</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Bei Rohrbrüchen an Heizungs- und Wasserleitungen gewährleisten wir innerhalb kürzester Zeit eine Ortung der Leckstelle um das Ausmaß des Gebäudeschadens auf ein Minimum zu begrenzen. Unsere Messwagen sind mit modernsten Spezialmessgeräten und Diagnoseverfahren ausgerüstet. Wir setzen hoch auflösende Infrarotkameras ein, führen "Elektro-Akustischen Messungen" durch oder setzen das "Spürgasverfahren" ein, um für sie unnötige Stemmarbeiten, Lärm, Schmutz und Kosten zu sparen.</p>\r\n</div>\r\n</div>', '', 1, 13, '2016-07-21 14:01:52', 745, '', '2016-07-21 14:01:52', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:01:52', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(11, 69, 'Prüfgasverfahren', 'pruefgasverfahren', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Prüfgasverfahren</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Diese Messtechnik kommt im Außen- und Innenbereich zum Einsatz. Hierbei wird die Leitung mit einem gesundheitsunschädlichen und nicht brennbaren Prüfgas, auch Tracergas genannt, befüllt. Feinste Gasspuren im PPM-Bereich können mit einem auf dieses Gas abgestimmten Gasspürgerät zuverlässig gefunden werden.</p>\r\n</div>\r\n</div>', '', 1, 13, '2016-07-21 14:02:40', 745, '', '2016-07-21 14:02:40', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:02:40', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(12, 70, 'Videoendoskopie', 'videoendoskopie', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Videoendoskopie</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Ein Endoskop ist ein optisches Gerät zur visuellen Inspektion von Hohlräumen und Schichtaufbauten.<br style="box-sizing: border-box;" />Als Videoendoskop bezeichnet man eine besondere Gerätekombination zur visuellen Kontrolle schwer zugänglicher Hohlräume, bestehend aus einem flexiblen Endoskop und einem direkt in der Messsonde integrierten Video-Chip ( CCD ), wodurch eine Video-Aufzeichnung möglich wird. Über einen TFT-Bild- schirm können sie somit selbst an der Überprüfung teilhaben und sich ein Bild von dem Ergebnis der Untersuchung machen.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Eine Untersuchung von Hohlräumen mit Hilfe eines beweglichen Videoskopes, bietet viele Vorteile wie z. B. die zerstörungsfreie Untersuchung oder die fast uneingeschränkte Zugänglichkeit zur Schadens- findung und Überprüfung. Anwendungen für dieses optische Untersuchungsverfahren sind unter anderem in Sanitär-Vorsatzschalen, Leichtbauwände , abgehangene Zimmerdecken, Holzbalkeneinschubdecken, Abwasserleitung DN 30 bis DN 100, hinter / unter Einbauschränke sowie unter Laminat,- Holzböden.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Weitere Spezialprüfungen für die Industrie findet Ihre Anwendung zur Prüfung von Schweißnähte, zur Rissvermessung, im Anlagenbau und in der Flugzeugtechnik.</p>\r\n</div>\r\n</div>', '', 1, 13, '2016-07-21 14:02:55', 745, '', '2016-07-21 14:02:55', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:02:55', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(13, 71, 'Bauwerksdiagnostik', 'bauwerksdiagnostik', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Bauwerksdiagnostik</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Durch verdeckte Bauwerksfehler kann Wasser ins Mauerwerk eindringen. Unter Umständen bilden sich Schimmelpilznester. Eine frühzeitige Ursachenfindung hilft Ihnen <strong style="box-sizing: border-box;">Großschäden</strong> an Wänden und Dächern zu <strong style="box-sizing: border-box;">vermeiden</strong>.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Wir helfen Ihnen gerne mit unseren modernen Diagnoseverfahren und unserer <strong style="box-sizing: border-box;">langjährigen Erfahrung</strong> den versteckten Mängeln auf den Grund zu gehen.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" /><strong style="box-sizing: border-box;">Falsches Lüften oder Heizen</strong> kann ebenfalls die Ursache für Feuchteschäden sein. Wir zeichnen Ihnen gerne die Raumklimadaten mit Hilfe von Langzeitmessungen auf und werten die ermittelten Daten aus. Hieraus können wir die Fehlerursache ableiten.</p>\r\n</div>\r\n</div>', '', 1, 14, '2016-07-21 14:04:15', 745, '', '2016-07-21 14:04:15', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:04:15', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(14, 72, 'Thermografie', 'thermografie', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Thermografie</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Mit Hilfe der Thermografie kann man zwar nicht durch Wände sehen, sie kann aber ein genaues Bild davon liefern, wie sich die sichtbare Oberfläche eines Objekts erwärmt oder abgekühlt. Fussboden- heizungen, Hohlräume hinter Wänden, Decken oder Böden, Heizungs- und Wasserleitungen können so untersucht werden. <br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Mit Hilfe einer Thermografiekamera wird Wärmestrahlung erfasst und als Farbbild, das so genannte Thermogramm visuell dargestellt. So kann aus dem Wärmebild schnell auf das innere des Objekts geschlossen werden. Dieses bleibt dabei unberüht wodurch gewährleistet wird, dass eine zerstörungsfreie Untersuchung erfolgt. Die Auswertung des Thermogramms wird durch einen unserer zertifizierten Messtechniker nach DIN EN 473 vorgenommen.</p>\r\n</div>\r\n</div>', '', 1, 14, '2016-07-21 14:04:50', 745, '', '2016-07-21 14:04:50', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:04:50', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 2, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(15, 73, 'BlowerDoor-Messung', 'blowerdoor-messung', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">BlowerDoor-Messung</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Um ein optimales Wohngefühl zu erreichen, ist es erforderlich, dass ein Gebäude eine möglichst luftdichte Außenhülle hat. Damit wir Leckagen in der Hülle eines Hauses oder einer Halle orten können, ermitteln wir die Luftwechselrate (n50-Wert) mit Hilfe der BlowerDoor-Messung (Differenzdruck-Messverfahren).</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Man simuliert auf das Gebäude eine konstante Windlast mit Hilfe eines Ventilators mit kalibrierter Messblende. Dabei wird Luft in das Gebäude hineingedrückt oder herausgesogen. Die Mängel sind dann mit Hilfe eines Luftgeschwindigkeitsmessers, eines Nebelgerätes oder einer Thermografiekamera feststellbar.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Das Verfahren führen wir Ihnen an jedem Neu- oder Umbau sowie an Hallen durch. Wir helfen Ihr Gebäude luftdicht zu machen, damit Bauschäden nicht vorprogrammiert sind.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Das BlowerDoor-Messsystem zeichnet sich durch seinen sehr großen Messbereich von 19 m³/h bis 7.200 m³/h aus. Es ist dadurch universell einsetzbar sowohl für die Luftdichtheitsmessung von Passivhäusern, neu errichteten Einfamilienhäusern und Altbauten.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Für die Messung großer Industriehallen und Verwaltungsgebäude können mehrere BlowerDoor- Ventilatoren einfach kombiniert werden. Der automatische Messablauf wird für Sie verständlich und nachvollziehbar auf dem Laptop dargestellt. Alle relevanten Daten werden per Knopfdruck in den normgerechten BlowerDoor-Prüfbericht übernommen und können noch vor Ort ausgewertet werden.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Setzen Sie BlowerDoor-Messungen zur Qualitätssicherung am Bau ein: Vermeiden Sie Feuchteeinträge in die Baukonstruktion durch Undichtigkeiten in der Gebäudehülle. Die luftdichte Gebäudehülle ist zudem Voraussetzung für die Energieeffizienz eines Gebäudes und damit ein wesentliches Kriterium auch in der Energieberatung: Erst wenn unerwünschte Leckagen in der Gebäudehülle beseitigt werden, erreichen energetische Maßnahmen wie der Einbau neuer Fenster oder Heizsysteme ihr Potenzial zur Energieeinsparung.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Leicht und verständlich...</p>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px;">\r\n<div class="col-sm-5" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 365.625px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; font-size: 12px;">Blowerdoor-Messung </p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; font-size: 12px;"> </p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 14, '2016-07-21 14:05:53', 745, '', '2016-07-21 14:05:53', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:05:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(16, 74, 'Spezialtrocknung', 'spezialtrocknung', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Spezialtrocknung</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Die technische Austrocknung der durchnässten Bausubstanzen nach einem Wasserschaden ist von zahlreichen Faktoren abhängig. Einige wichtige Verfahren sind unter anderem die Überdrucktrocknung und Unterdrucktrocknung von Dämmschichten.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Die Vorteile der Spezialtrocknung:</p>\r\n<ul style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;">\r\n<li style="box-sizing: border-box; line-height: 24px;">Oberbodenerhalt</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">Keine Betriebsunterbrechnung</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">Auslagerung der Trocknungsgeräte</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">Keine Stolperfallen</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">Geräuschlose Trockung</li>\r\n</ul>\r\n</div>\r\n</div>', '', 1, 15, '2016-07-21 14:06:27', 745, '', '2016-07-21 14:06:27', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:06:27', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(17, 75, 'Bautrocknung', 'bautrocknung', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Bautrocknung</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Heutzutage wird der Bauprozess jedoch immer mehr unter wirtschaftlichen Gesichtspunkten betrachtet und unter hohem Kosten- und Termindruck durchgeführt. Daher machen sich immer mehr Bauunternehmer und Bauherrn die Vorteile einer technischen Trocknung zu Nutze. <br style="box-sizing: border-box;" />So wird ein zügiger Baufortschritt gewährleistet und auch bei widrigen Witterungsumständen wird eine zuverlässige Trocknung erreicht. Zudem erleichtern kalkulierbare Trocknungszeiten die Terminierung aller Gewerke. Durch den bereits trocknen Baukörper kommt es zu drastischen Senkungen der Heiz- kosten in den ersten Heizperioden. Auf diese Weise lohnt sich der finanzielle Einsatz für die technische Trocknung nachhaltig.</p>\r\n</div>\r\n</div>', '', 1, 15, '2016-07-21 14:06:53', 745, '', '2016-07-21 14:06:53', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:06:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(18, 76, 'Infrarot-Trocknung', 'infrarot-trocknung', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Infrarot-Trocknung</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Beim aufheizen der Wandfläche mit einer Infrarotplatte wird durch das Partikeldruckgefälle der Wassergehalt zur Oberfläche geführt und dort an die Umgebung abgegeben. Durch den zusätzlichen Einsatz von Kondenstrocknern und Ventilatoren wird die Entfeuchtung beschleunigt.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Ein weiterer wichtiger Vorteil ist, dass das Austreiben der Feuchte aus der Tiefe der Wand in einem wesentlich kürzeren Zeitraum als mit herkömmlichen Verfahren erfolgt. Vergleicht man die Gesamt- kosten einer Trocknung mit Entfeuchtern und zusätzlich mit dem Einsatz der speziellen Infrarot- trocknung, so können Zeiteinsparungen von ca. 50 % erzielt werden.<br style="box-sizing: border-box;" /><br style="box-sizing: border-box;" />Ein zusätzlicher Vorteil: Die meist mit der Feuchte auftretenden Mikroorganismen (Schimmel, usw.) werden an der Oberfläche durch die Wärme bzw. den Entzug der Feuchte abgetötet. Es handelt sich um eine Infrarot-Strahlung ähnlich der Strahlung von Kaminen, Öfen oder Rotlichtlampen.</p>\r\n</div>\r\n</div>', '', 1, 15, '2016-07-21 14:07:35', 745, '', '2016-07-21 14:07:35', 0, 745, '2016-07-27 15:03:12', '2016-07-21 14:07:35', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(19, 77, 'Referenzen', 'referenzen', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Unsere Referenzen</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Unsere Auftraggeber vertrauen auf unseren Sachverstand, Qualität und Zuverlässigkeit.<br style="box-sizing: border-box;" />Daher gehören diese Versicherer zu unseren Partnern:</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;"><img src="images/referenzen_10-2014.png" alt="" /></p>\r\n</div>\r\n</div>', '', 1, 11, '2016-07-21 14:08:54', 745, '', '2016-07-21 14:08:54', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:08:54', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 5, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(20, 78, 'Schadensformular', 'schadensformular', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;"><strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Schadensformular</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;">Hier können Sie bequem ihren Schadenfall melden. Bitte füllen Sie die nachfolgenden Felder aus.</p>\r\n</div>\r\n</div>', '', 1, 12, '2016-07-21 14:11:25', 745, '', '2016-07-21 14:11:25', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:11:25', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 1, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');
INSERT INTO `t30ib_content` (`id`, `asset_id`, `title`, `alias`, `introtext`, `fulltext`, `state`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(21, 79, 'Standorte', 'standorte', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;">Herrmann GmbH: <strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Standorte</span></strong></h2>\r\n<div class="row" style="box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;">\r\n<div class="col-md-12" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;">\r\n<div class="col-md-4" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;">\r\n<div class="contact-details" style="box-sizing: border-box;">\r\n<h4 style="box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Zentrale Dortmund</h4>\r\n<ul class="contact" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;">\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> Deusener Str. 100<br style="box-sizing: border-box;" />44369 Dortmund</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefon:</strong> 0231 - 793030 - 0</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefax:</strong> 0231 - 793030 - 22</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Email:</strong> <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="mailto:info@herrmann-j.de">info@herrmann-j.de</a></p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="col-md-4" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;">\r\n<div class="contact-details" style="box-sizing: border-box;">\r\n<h4 style="box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Niederlassung Sprockhövel</h4>\r\n<ul class="contact" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;">\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> Hoppe 3<br style="box-sizing: border-box;" />45549 Sprockhövel</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefon:</strong> 02339 - 929 828</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefax:</strong> 02339 - 929 822</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Email:</strong> <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="mailto:info@herrmann-j.de">info@herrmann-j.de</a></p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n<div class="col-md-4" style="box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;">\r\n<div class="contact-details" style="box-sizing: border-box;">\r\n<h4 style="box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;">Niederlassung Essen</h4>\r\n<ul class="contact" style="box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;">\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> Alte Landstraße 3c<br style="box-sizing: border-box;" />45329 Essen</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefon:</strong> 0201 - 2795 2020</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Telefax:</strong> 0201 - 2795 2222</p>\r\n</li>\r\n<li style="box-sizing: border-box; line-height: 24px;">\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px;"> <strong style="box-sizing: border-box;">Email:</strong> <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="mailto:info@herrmann-j.de">info@herrmann-j.de</a></p>\r\n</li>\r\n</ul>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', '', 1, 12, '2016-07-21 14:11:47', 745, '', '2016-07-21 14:11:47', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:11:47', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 2, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(22, 80, ' Kontaktformular', 'kontaktformular', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;">Fragen, Anregungen, Wünsche?<br style="box-sizing: border-box;" />Nutzen Sie <strong style="box-sizing: border-box;"><span style="box-sizing: border-box; color: #c40014;">Unser Kontaktformular</span></strong></h2>', '', 1, 12, '2016-07-21 14:24:06', 745, '', '2016-07-21 14:24:06', 0, 0, '0000-00-00 00:00:00', '2016-07-21 14:24:06', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 1, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(23, 83, 'Home', 'home', '<h2 class="short word-rotator-title" style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 54px; color: #0e0e0e; margin: 0px 0px 15px; font-size: 2em; letter-spacing: -1px; text-align: center;">Herrmann GmbH <strong class="inverted" style="box-sizing: border-box; color: #ffffff; display: inline-block; padding-left: 10px; padding-right: 10px; min-height: 60px; background-color: #c40014;"><span class="word-rotate active" style="box-sizing: border-box; visibility: visible; width: auto; height: 54px; margin-bottom: -12px; display: inline-block; overflow: hidden; position: relative;"><span class="word-rotate-items" style="box-sizing: border-box; position: relative; top: -108px; width: auto;"><span style="box-sizing: border-box; display: block; white-space: nowrap;">Ortung</span><span style="box-sizing: border-box; display: block; white-space: nowrap;">Trocknung</span><span style="box-sizing: border-box; display: block; white-space: nowrap;">Diagnostik</span><span style="box-sizing: border-box; display: block; white-space: nowrap;">Ortung</span></span></span></strong> auch in Ihrer Nähe.</h2>\r\n<p class="featured lead" style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;">Die Firma Herrmann GmbH bietet alle Leistungen der <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/rohrbruchortung.html">Ortungstechnik</a>, <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/spezialtrocknung.html">Trocknungstechnik</a>, der<a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/dienstleistungen.html">Wasserschadenbeseitigung</a>, <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/wiederherstellung.html">Sanierung</a>, <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/pruefung-privater-abwasserleitungen.html">Dichtheitsprüfung</a>, <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/schimmelpilzbehandlung.html">Schimmelpilzbehandlung</a> und <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/blowerdoor.html">Diagnostik</a> im gesamten<a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/einsatzgebiet.html">Ruhrgebiet</a>, dem <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/einsatzgebiet.html">Bergischen Land</a> und dem <a style="box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;" href="http://www.herrmann-j.de/einsatzgebiet.html">Rheinland</a> an.</p>\r\n<p class="featured lead" style="box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;"><span style="box-sizing: border-box; color: #c40014; font-weight: bold;">HOTLINE 0231 793030 0</span></p>', '', 1, 17, '2016-07-21 14:58:26', 745, '', '2016-07-27 14:29:53', 745, 0, '0000-00-00 00:00:00', '2016-07-21 14:58:26', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 3, 3, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(24, 85, 'Verehrte Kunden', 'verehrte-kunden', '<h2 style="box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;">Verehrte Kunden</h2>\r\n<p><img src="images/joerg_herrmann.jpg" alt="" width="270" height="270" /></p>\r\n<p><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;">Seit vielen Jahren sind vielfältigste Wasserschäden eine stete Herausforderung für unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gefühl zurück geben können. </span><br style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;" /><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;">Testen Sie unsere Leistungen! </span><br style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;" /><br style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;" /><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;">Ihr Jörg Herrmann</span></p>\r\n', '\r\n<p> </p>\r\n<p><img src="images/Einsatzgebiet_01_2014.jpg" alt="" /></p>', 1, 18, '2016-07-21 15:29:53', 745, '', '2016-07-27 14:55:28', 745, 0, '0000-00-00 00:00:00', '2016-07-21 15:29:53', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 6, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(25, 89, 'Firmenvideos', 'firmenvideos', '<p>Firmenvideos</p>\r\n<table style="width: 408px; float: left;">\r\n<tbody>\r\n<tr>\r\n<td style="width: 244px;"><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">Imagefilm </span><br style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;" /><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik </span></td>\r\n<td style="width: 10px;"><iframe src="https://www.youtube.com/embed/UU4Dv9FAbOU" width="311" height="175" frameborder="0" allowfullscreen=""></iframe></td>\r\n</tr>\r\n<tr>\r\n<td style="width: 244px;"><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">Leckortung und Trocknung von Wasserschäden</span></td>\r\n<td style="width: 10px;"> <iframe src="https://www.youtube.com/embed/Fp85vcwhlkk" width="311" height="175" frameborder="0" allowfullscreen=""></iframe></td>\r\n</tr>\r\n<tr>\r\n<td style="width: 244px;"> <span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">Schimmelpilzbehandlung</span></td>\r\n<td style="width: 10px;"> <iframe src="https://www.youtube.com/embed/hvLyu3MUpdo" width="311" height="175" frameborder="0" allowfullscreen=""></iframe></td>\r\n</tr>\r\n<tr>\r\n<td style="width: 244px;"> <span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">Blowerdoor-Messung</span></td>\r\n<td style="width: 10px;"> <iframe src="https://www.youtube.com/embed/cwemiytdib8" width="311" height="175" frameborder="0" allowfullscreen=""></iframe></td>\r\n</tr>\r\n<tr>\r\n<td style="width: 244px;"><span style="color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;">Ceravogue - Wiederherstellung keramischer Bodenbeläge</span></td>\r\n<td style="width: 10px;"> <iframe src="https://www.youtube.com/embed/Qu16jmhubYI" width="311" height="175" frameborder="0" allowfullscreen=""></iframe></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p> </p>', '', 1, 19, '2016-07-21 16:46:51', 745, '', '2016-07-27 14:49:20', 745, 0, '0000-00-00 00:00:00', '2016-07-21 16:46:51', '0000-00-00 00:00:00', '{"image_intro":"","float_intro":"","image_intro_alt":"","image_intro_caption":"","image_fulltext":"","float_fulltext":"","image_fulltext_alt":"","image_fulltext_caption":""}', '{"urla":false,"urlatext":"","targeta":"","urlb":false,"urlbtext":"","targetb":"","urlc":false,"urlctext":"","targetc":""}', '{"show_title":"","link_titles":"","show_tags":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","urls_position":"","alternative_readmore":"","article_layout":"","show_publishing_options":"","show_article_options":"","show_urls_images_backend":"","show_urls_images_frontend":""}', 5, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_contentitem_tag_map`
--

CREATE TABLE `t30ib_contentitem_tag_map` (
  `type_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_content_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) UNSIGNED NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Maps items from content tables to tags';

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_content_frontpage`
--

CREATE TABLE `t30ib_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_content_frontpage`
--

INSERT INTO `t30ib_content_frontpage` (`content_id`, `ordering`) VALUES
(3, 2),
(6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_content_rating`
--

CREATE TABLE `t30ib_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `rating_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lastip` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_content_types`
--

CREATE TABLE `t30ib_content_types` (
  `type_id` int(10) UNSIGNED NOT NULL,
  `type_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rules` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_mappings` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `router` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON string for com_contenthistory options'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_content_types`
--

INSERT INTO `t30ib_content_types` (`type_id`, `type_title`, `type_alias`, `table`, `rules`, `field_mappings`, `router`, `content_history_options`) VALUES
(1, 'Article', 'com_content.article', '{"special":{"dbtable":"#__content","key":"id","type":"Content","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"state","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"introtext", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"attribs", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"asset_id"}, "special":{"fulltext":"fulltext"}}', 'ContentHelperRoute::getArticleRoute', '{"formFile":"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml", "hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(2, 'Contact', 'com_contact.contact', '{"special":{"dbtable":"#__contact_details","key":"id","type":"Contact","prefix":"ContactTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"address", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"image", "core_urls":"webpage", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"con_position":"con_position","suburb":"suburb","state":"state","country":"country","postcode":"postcode","telephone":"telephone","fax":"fax","misc":"misc","email_to":"email_to","default_con":"default_con","user_id":"user_id","mobile":"mobile","sortname1":"sortname1","sortname2":"sortname2","sortname3":"sortname3"}}', 'ContactHelperRoute::getContactRoute', '{"formFile":"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml","hideFields":["default_con","checked_out","checked_out_time","version","xreference"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"], "displayLookup":[ {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ] }'),
(3, 'Newsfeed', 'com_newsfeeds.newsfeed', '{"special":{"dbtable":"#__newsfeeds","key":"id","type":"Newsfeed","prefix":"NewsfeedsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"hits","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"xreference", "asset_id":"null"}, "special":{"numarticles":"numarticles","cache_time":"cache_time","rtl":"rtl"}}', 'NewsfeedsHelperRoute::getNewsfeedRoute', '{"formFile":"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml","hideFields":["asset_id","checked_out","checked_out_time","version"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "hits"],"convertToInt":["publish_up", "publish_down", "featured", "ordering"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(4, 'User', 'com_users.user', '{"special":{"dbtable":"#__users","key":"id","type":"User","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"null","core_alias":"username","core_created_time":"registerdate","core_modified_time":"lastvisitDate","core_body":"null", "core_hits":"null","core_publish_up":"null","core_publish_down":"null","access":"null", "core_params":"params", "core_featured":"null", "core_metadata":"null", "core_language":"null", "core_images":"null", "core_urls":"null", "core_version":"null", "core_ordering":"null", "core_metakey":"null", "core_metadesc":"null", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{}}', 'UsersHelperRoute::getUserRoute', ''),
(5, 'Article Category', 'com_content.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContentHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(6, 'Contact Category', 'com_contact.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'ContactHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(7, 'Newsfeeds Category', 'com_newsfeeds.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', 'NewsfeedsHelperRoute::getCategoryRoute', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(8, 'Tag', 'com_tags.tag', '{"special":{"dbtable":"#__tags","key":"tag_id","type":"Tag","prefix":"TagsTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"featured", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"urls", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"null", "core_xreference":"null", "asset_id":"null"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path"}}', 'TagsHelperRoute::getTagRoute', '{"formFile":"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml", "hideFields":["checked_out","checked_out_time","version", "lft", "rgt", "level", "path", "urls", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"],"convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(9, 'Banner', 'com_banners.banner', '{"special":{"dbtable":"#__banners","key":"id","type":"Banner","prefix":"BannersTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"name","core_state":"published","core_alias":"alias","core_created_time":"created","core_modified_time":"modified","core_body":"description", "core_hits":"null","core_publish_up":"publish_up","core_publish_down":"publish_down","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"images", "core_urls":"link", "core_version":"version", "core_ordering":"ordering", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"catid", "core_xreference":"null", "asset_id":"null"}, "special":{"imptotal":"imptotal", "impmade":"impmade", "clicks":"clicks", "clickurl":"clickurl", "custombannercode":"custombannercode", "cid":"cid", "purchase_type":"purchase_type", "track_impressions":"track_impressions", "track_clicks":"track_clicks"}}', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml", "hideFields":["checked_out","checked_out_time","version", "reset"],"ignoreChanges":["modified_by", "modified", "checked_out", "checked_out_time", "version", "imptotal", "impmade", "reset"], "convertToInt":["publish_up", "publish_down", "ordering"], "displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"cid","targetTable":"#__banner_clients","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"created_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"modified_by","targetTable":"#__users","targetColumn":"id","displayColumn":"name"} ]}'),
(10, 'Banners Category', 'com_banners.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special": {"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["asset_id","checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}'),
(11, 'Banner Client', 'com_banners.client', '{"special":{"dbtable":"#__banner_clients","key":"id","type":"Client","prefix":"BannersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml", "hideFields":["checked_out","checked_out_time"], "ignoreChanges":["checked_out", "checked_out_time"], "convertToInt":[], "displayLookup":[]}'),
(12, 'User Notes', 'com_users.note', '{"special":{"dbtable":"#__user_notes","key":"id","type":"Note","prefix":"UsersTable"}}', '', '', '', '{"formFile":"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml", "hideFields":["checked_out","checked_out_time", "publish_up", "publish_down"],"ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time"], "convertToInt":["publish_up", "publish_down"],"displayLookup":[{"sourceColumn":"catid","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}, {"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}]}'),
(13, 'User Notes Category', 'com_users.category', '{"special":{"dbtable":"#__categories","key":"id","type":"Category","prefix":"JTable","config":"array()"},"common":{"dbtable":"#__ucm_content","key":"ucm_id","type":"Corecontent","prefix":"JTable","config":"array()"}}', '', '{"common":{"core_content_item_id":"id","core_title":"title","core_state":"published","core_alias":"alias","core_created_time":"created_time","core_modified_time":"modified_time","core_body":"description", "core_hits":"hits","core_publish_up":"null","core_publish_down":"null","core_access":"access", "core_params":"params", "core_featured":"null", "core_metadata":"metadata", "core_language":"language", "core_images":"null", "core_urls":"null", "core_version":"version", "core_ordering":"null", "core_metakey":"metakey", "core_metadesc":"metadesc", "core_catid":"parent_id", "core_xreference":"null", "asset_id":"asset_id"}, "special":{"parent_id":"parent_id","lft":"lft","rgt":"rgt","level":"level","path":"path","extension":"extension","note":"note"}}', '', '{"formFile":"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml", "hideFields":["checked_out","checked_out_time","version","lft","rgt","level","path","extension"], "ignoreChanges":["modified_user_id", "modified_time", "checked_out", "checked_out_time", "version", "hits", "path"], "convertToInt":["publish_up", "publish_down"], "displayLookup":[{"sourceColumn":"created_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"}, {"sourceColumn":"access","targetTable":"#__viewlevels","targetColumn":"id","displayColumn":"title"},{"sourceColumn":"modified_user_id","targetTable":"#__users","targetColumn":"id","displayColumn":"name"},{"sourceColumn":"parent_id","targetTable":"#__categories","targetColumn":"id","displayColumn":"title"}]}');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_core_log_searches`
--

CREATE TABLE `t30ib_core_log_searches` (
  `search_term` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_extensions`
--

CREATE TABLE `t30ib_extensions` (
  `extension_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_extensions`
--

INSERT INTO `t30ib_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '{"name":"com_mailto","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MAILTO_XML_DESCRIPTION","group":"","filename":"mailto"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '{"name":"com_wrapper","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.\\n\\t","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_WRAPPER_XML_DESCRIPTION","group":"","filename":"wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '{"name":"com_admin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_ADMIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '{"name":"com_banners","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_BANNERS_XML_DESCRIPTION","group":"","filename":"banners"}', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":"","save_history":"1","history_limit":10}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '{"name":"com_cache","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CACHE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '{"name":"com_categories","type":"component","creationDate":"December 2007","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CATEGORIES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '{"name":"com_checkin","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CHECKIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '{"name":"com_contact","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '{"show_contact_category":"hide","save_history":"1","history_limit":10,"show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '{"name":"com_cpanel","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CPANEL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '{"name":"com_installer","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_INSTALLER_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '{"name":"com_languages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LANGUAGES_XML_DESCRIPTION","group":""}', '{"administrator":"en-GB","site":"en-GB"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '{"name":"com_login","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_LOGIN_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '{"name":"com_media","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MEDIA_XML_DESCRIPTION","group":"","filename":"media"}', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '{"name":"com_menus","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MENUS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '{"name":"com_messages","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MESSAGES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '{"name":"com_modules","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_MODULES_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '{"name":"com_newsfeeds","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"newsfeed_layout":"_:default","save_history":"1","history_limit":5,"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_character_count":"0","feed_display_order":"des","float_first":"right","float_second":"right","show_tags":"1","category_layout":"_:default","show_category_title":"1","show_description":"1","show_description_image":"1","maxLevel":"-1","show_empty_categories":"0","show_subcat_desc":"1","show_cat_items":"1","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_items_cat":"1","filter_field":"1","show_pagination_limit":"1","show_headings":"1","show_articles":"0","show_link":"1","show_pagination":"1","show_pagination_results":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '{"name":"com_plugins","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_PLUGINS_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 0, '{"name":"com_search","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_SEARCH_XML_DESCRIPTION","group":"","filename":"search"}', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '{"name":"com_templates","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_TEMPLATES_XML_DESCRIPTION","group":""}', '{"template_positions_display":"0","upload_limit":"2","image_formats":"gif,bmp,jpg,jpeg,png","source_formats":"txt,less,ini,xml,js,php,css","font_formats":"woff,ttf,otf","compressed_formats":"zip"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '{"name":"com_content","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"article_layout":"_:default","show_title":"0","link_titles":"1","show_intro":"0","info_block_position":"0","info_block_show_title":"0","show_category":"0","link_category":"0","show_parent_category":"0","link_parent_category":"0","show_author":"0","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_tags":"0","show_icons":"0","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_noauth":"0","urls_position":"0","show_publishing_options":"1","show_article_options":"1","save_history":"1","history_limit":10,"show_urls_images_frontend":"0","show_urls_images_backend":"1","targeta":0,"targetb":0,"targetc":0,"float_intro":"left","float_fulltext":"left","category_layout":"_:blog","show_category_heading_title_text":"1","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_cat_tags":"1","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","show_subcategory_content":"0","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination":"2","show_pagination_results":"1","show_featured":"show","show_feed_link":"1","feed_summary":"0","feed_show_readmore":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '{"name":"com_config","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_CONFIG_XML_DESCRIPTION","group":""}', '{"filters":{"1":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"9":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"NH","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '{"name":"com_redirect","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_REDIRECT_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '{"name":"com_users","type":"component","creationDate":"April 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_USERS_XML_DESCRIPTION","group":"","filename":"users"}', '{"allowUserRegistration":"0","new_usertype":"2","guest_usergroup":"9","sendpassword":"1","useractivation":"1","mail_to_admin":"0","captcha":"","frontend_userparams":"1","site_language":"0","change_login_name":"0","reset_count":"10","reset_time":"1","minimum_length":"4","minimum_integers":"0","minimum_symbols":"0","minimum_uppercase":"0","save_history":"1","history_limit":5,"mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(27, 'com_finder', 'component', 'com_finder', '', 1, 1, 0, 0, '{"name":"com_finder","type":"component","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"COM_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '{"show_description":"1","description_length":255,"allow_empty_query":"0","show_url":"1","show_advanced":"1","expand_advanced":"0","show_date_filters":"0","highlight_terms":"1","opensearch_name":"","opensearch_description":"","batch_size":"50","memory_table_limit":30000,"title_multiplier":"1.7","text_multiplier":"0.7","meta_multiplier":"1.2","path_multiplier":"2.0","misc_multiplier":"0.3","stemmer":"snowball"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(28, 'com_joomlaupdate', 'component', 'com_joomlaupdate', '', 1, 1, 0, 1, '{"name":"com_joomlaupdate","type":"component","creationDate":"February 2012","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"COM_JOOMLAUPDATE_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(29, 'com_tags', 'component', 'com_tags', '', 1, 1, 1, 1, '{"name":"com_tags","type":"component","creationDate":"December 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"COM_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"tag_layout":"_:default","save_history":"1","history_limit":5,"show_tag_title":"0","tag_list_show_tag_image":"0","tag_list_show_tag_description":"0","tag_list_image":"","show_tag_num_items":"0","tag_list_orderby":"title","tag_list_orderby_direction":"ASC","show_headings":"0","tag_list_show_date":"0","tag_list_show_item_image":"0","tag_list_show_item_description":"0","tag_list_item_maximum_characters":0,"return_any_or_all":"1","include_children":"0","maximum":200,"tag_list_language_filter":"all","tags_layout":"_:default","all_tags_orderby":"title","all_tags_orderby_direction":"ASC","all_tags_show_tag_image":"0","all_tags_show_tag_descripion":"0","all_tags_tag_maximum_characters":20,"all_tags_show_tag_hits":"0","filter_field":"1","show_pagination_limit":"1","show_pagination":"2","show_pagination_results":"1","tag_field_ajax_mode":"1","show_feed_link":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(30, 'com_contenthistory', 'component', 'com_contenthistory', '', 1, 1, 1, 0, '{"name":"com_contenthistory","type":"component","creationDate":"May 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_CONTENTHISTORY_XML_DESCRIPTION","group":"","filename":"contenthistory"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(31, 'com_ajax', 'component', 'com_ajax', '', 1, 1, 1, 1, '{"name":"com_ajax","type":"component","creationDate":"August 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_AJAX_XML_DESCRIPTION","group":"","filename":"ajax"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(32, 'com_postinstall', 'component', 'com_postinstall', '', 1, 1, 1, 1, '{"name":"com_postinstall","type":"component","creationDate":"September 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"COM_POSTINSTALL_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '{"name":"phputf8","type":"library","creationDate":"2006","author":"Harry Fuecks","copyright":"Copyright various authors","authorEmail":"hfuecks@gmail.com","authorUrl":"http:\\/\\/sourceforge.net\\/projects\\/phputf8","version":"0.5","description":"LIB_PHPUTF8_XML_DESCRIPTION","group":"","filename":"phputf8"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Platform', 'library', 'joomla', '', 0, 1, 1, 1, '{"name":"Joomla! Platform","type":"library","creationDate":"2008","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"https:\\/\\/www.joomla.org","version":"13.1","description":"LIB_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"mediaversion":"0b358df8bee280807c5722398bca5111"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(104, 'IDNA Convert', 'library', 'idna_convert', '', 0, 1, 1, 1, '{"name":"IDNA Convert","type":"library","creationDate":"2004","author":"phlyLabs","copyright":"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de","authorEmail":"phlymail@phlylabs.de","authorUrl":"http:\\/\\/phlylabs.de","version":"0.8.0","description":"LIB_IDNA_XML_DESCRIPTION","group":"","filename":"idna_convert"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(105, 'FOF', 'library', 'fof', '', 0, 1, 1, 1, '{"name":"FOF","type":"library","creationDate":"2015-04-22 13:15:32","author":"Nicholas K. Dionysopoulos \\/ Akeeba Ltd","copyright":"(C)2011-2015 Nicholas K. Dionysopoulos","authorEmail":"nicholas@akeebabackup.com","authorUrl":"https:\\/\\/www.akeebabackup.com","version":"2.4.3","description":"LIB_FOF_XML_DESCRIPTION","group":"","filename":"fof"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(106, 'PHPass', 'library', 'phpass', '', 0, 1, 1, 1, '{"name":"PHPass","type":"library","creationDate":"2004-2006","author":"Solar Designer","copyright":"","authorEmail":"solar@openwall.com","authorUrl":"http:\\/\\/www.openwall.com\\/phpass\\/","version":"0.3","description":"LIB_PHPASS_XML_DESCRIPTION","group":"","filename":"phpass"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 0, '{"name":"mod_articles_archive","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION","group":"","filename":"mod_articles_archive"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 0, '{"name":"mod_articles_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '{"name":"mod_articles_popular","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_articles_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 0, '{"name":"mod_banners","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BANNERS_XML_DESCRIPTION","group":"","filename":"mod_banners"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '{"name":"mod_breadcrumbs","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_BREADCRUMBS_XML_DESCRIPTION","group":"","filename":"mod_breadcrumbs"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 0, '{"name":"mod_footer","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FOOTER_XML_DESCRIPTION","group":"","filename":"mod_footer"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '{"name":"mod_menu","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '{"name":"mod_articles_news","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_NEWS_XML_DESCRIPTION","group":"","filename":"mod_articles_news"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '{"name":"mod_random_image","type":"module","creationDate":"July 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RANDOM_IMAGE_XML_DESCRIPTION","group":"","filename":"mod_random_image"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '{"name":"mod_related_items","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_RELATED_XML_DESCRIPTION","group":"","filename":"mod_related_items"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '{"name":"mod_search","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SEARCH_XML_DESCRIPTION","group":"","filename":"mod_search"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '{"name":"mod_stats","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '{"name":"mod_syndicate","type":"module","creationDate":"May 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SYNDICATE_XML_DESCRIPTION","group":"","filename":"mod_syndicate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 0, '{"name":"mod_users_latest","type":"module","creationDate":"December 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_USERS_LATEST_XML_DESCRIPTION","group":"","filename":"mod_users_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '{"name":"mod_whosonline","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WHOSONLINE_XML_DESCRIPTION","group":"","filename":"mod_whosonline"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '{"name":"mod_wrapper","type":"module","creationDate":"October 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_WRAPPER_XML_DESCRIPTION","group":"","filename":"mod_wrapper"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 0, '{"name":"mod_articles_category","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION","group":"","filename":"mod_articles_category"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 0, '{"name":"mod_articles_categories","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION","group":"","filename":"mod_articles_categories"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '{"name":"mod_languages","type":"module","creationDate":"February 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"MOD_LANGUAGES_XML_DESCRIPTION","group":"","filename":"mod_languages"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(223, 'mod_finder', 'module', 'mod_finder', '', 0, 1, 0, 0, '{"name":"mod_finder","type":"module","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FINDER_XML_DESCRIPTION","group":"","filename":"mod_finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '{"name":"mod_custom","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_CUSTOM_XML_DESCRIPTION","group":"","filename":"mod_custom"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '{"name":"mod_feed","type":"module","creationDate":"July 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_FEED_XML_DESCRIPTION","group":"","filename":"mod_feed"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '{"name":"mod_latest","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LATEST_XML_DESCRIPTION","group":"","filename":"mod_latest"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '{"name":"mod_logged","type":"module","creationDate":"January 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGGED_XML_DESCRIPTION","group":"","filename":"mod_logged"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '{"name":"mod_login","type":"module","creationDate":"March 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_LOGIN_XML_DESCRIPTION","group":"","filename":"mod_login"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '{"name":"mod_menu","type":"module","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MENU_XML_DESCRIPTION","group":"","filename":"mod_menu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '{"name":"mod_popular","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_popular"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '{"name":"mod_quickicon","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_QUICKICON_XML_DESCRIPTION","group":"","filename":"mod_quickicon"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '{"name":"mod_status","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATUS_XML_DESCRIPTION","group":"","filename":"mod_status"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '{"name":"mod_submenu","type":"module","creationDate":"Feb 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_SUBMENU_XML_DESCRIPTION","group":"","filename":"mod_submenu"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '{"name":"mod_title","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TITLE_XML_DESCRIPTION","group":"","filename":"mod_title"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '{"name":"mod_toolbar","type":"module","creationDate":"Nov 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_TOOLBAR_XML_DESCRIPTION","group":"","filename":"mod_toolbar"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_multilangstatus', 'module', 'mod_multilangstatus', '', 1, 1, 1, 0, '{"name":"mod_multilangstatus","type":"module","creationDate":"September 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_MULTILANGSTATUS_XML_DESCRIPTION","group":"","filename":"mod_multilangstatus"}', '{"cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(314, 'mod_version', 'module', 'mod_version', '', 1, 1, 1, 0, '{"name":"mod_version","type":"module","creationDate":"January 2012","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_VERSION_XML_DESCRIPTION","group":"","filename":"mod_version"}', '{"format":"short","product":"1","cache":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(315, 'mod_stats_admin', 'module', 'mod_stats_admin', '', 1, 1, 1, 0, '{"name":"mod_stats_admin","type":"module","creationDate":"July 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"MOD_STATS_XML_DESCRIPTION","group":"","filename":"mod_stats_admin"}', '{"serverinfo":"0","siteinfo":"0","counter":"0","increase":"0","cache":"1","cache_time":"900","cachemode":"static"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(316, 'mod_tags_popular', 'module', 'mod_tags_popular', '', 0, 1, 1, 0, '{"name":"mod_tags_popular","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_POPULAR_XML_DESCRIPTION","group":"","filename":"mod_tags_popular"}', '{"maximum":"5","timeframe":"alltime","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(317, 'mod_tags_similar', 'module', 'mod_tags_similar', '', 0, 1, 1, 0, '{"name":"mod_tags_similar","type":"module","creationDate":"January 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.1.0","description":"MOD_TAGS_SIMILAR_XML_DESCRIPTION","group":"","filename":"mod_tags_similar"}', '{"maximum":"5","matchtype":"any","owncache":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_gmail","type":"plugin","creationDate":"February 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_GMAIL_XML_DESCRIPTION","group":"","filename":"gmail"}', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '{"name":"plg_authentication_joomla","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '{"name":"plg_authentication_ldap","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LDAP_XML_DESCRIPTION","group":"","filename":"ldap"}', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(403, 'plg_content_contact', 'plugin', 'contact', 'content', 0, 1, 1, 0, '{"name":"plg_content_contact","type":"plugin","creationDate":"January 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.2","description":"PLG_CONTENT_CONTACT_XML_DESCRIPTION","group":"","filename":"contact"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '{"name":"plg_content_emailcloak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION","group":"","filename":"emailcloak"}', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '{"name":"plg_content_loadmodule","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOADMODULE_XML_DESCRIPTION","group":"","filename":"loadmodule"}', '{"style":"xhtml"}', '', '', 0, '2011-09-18 15:22:50', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagebreak","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 1, 1, 0, '{"name":"plg_content_pagenavigation","type":"plugin","creationDate":"January 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_PAGENAVIGATION_XML_DESCRIPTION","group":"","filename":"pagenavigation"}', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 0, '{"name":"plg_content_vote","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_VOTE_XML_DESCRIPTION","group":"","filename":"vote"}', '', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_codemirror","type":"plugin","creationDate":"28 March 2011","author":"Marijn Haverbeke","copyright":"Copyright (C) 2014 by Marijn Haverbeke <marijnh@gmail.com> and others","authorEmail":"marijnh@gmail.com","authorUrl":"http:\\/\\/codemirror.net\\/","version":"5.15.2","description":"PLG_CODEMIRROR_XML_DESCRIPTION","group":"","filename":"codemirror"}', '{"lineNumbers":"1","lineWrapping":"1","matchTags":"1","matchBrackets":"1","marker-gutter":"1","autoCloseTags":"1","autoCloseBrackets":"1","autoFocus":"1","theme":"default","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '{"name":"plg_editors_none","type":"plugin","creationDate":"September 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_NONE_XML_DESCRIPTION","group":"","filename":"none"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 0, '{"name":"plg_editors_tinymce","type":"plugin","creationDate":"2005-2016","author":"Ephox Corporation","copyright":"Ephox Corporation","authorEmail":"N\\/A","authorUrl":"http:\\/\\/www.tinymce.com","version":"4.3.12","description":"PLG_TINY_XML_DESCRIPTION","group":"","filename":"tinymce"}', '{"skin":"0","skin_admin":"0","mode":"1","mobile":"0","drag_drop":"1","path":"","entity_encoding":"raw","lang_mode":"1","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","use_config_textfilters":"0","invalid_elements":"script,applet","valid_elements":"","extended_elements":"","html_height":"550","html_width":"750","resizing":"1","resize_horizontal":"1","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","colors":"1","table":"1","smilies":"1","hr":"1","link":"1","media":"1","print":"1","directionality":"1","fullscreen":"1","alignment":"1","visualchars":"1","visualblocks":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","image_advtab":"1","code_sample":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_article","type":"plugin","creationDate":"October 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_ARTICLE_XML_DESCRIPTION","group":"","filename":"article"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_image","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_IMAGE_XML_DESCRIPTION","group":"","filename":"image"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_pagebreak","type":"plugin","creationDate":"August 2004","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION","group":"","filename":"pagebreak"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_readmore","type":"plugin","creationDate":"March 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_READMORE_XML_DESCRIPTION","group":"","filename":"readmore"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0);
INSERT INTO `t30ib_extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '{"name":"plg_search_categories","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '{"name":"plg_search_contacts","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '{"name":"plg_search_content","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '{"name":"plg_search_newsfeeds","type":"plugin","creationDate":"November 2005","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '{"name":"plg_system_languagefilter","type":"plugin","creationDate":"July 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION","group":"","filename":"languagefilter"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 0, 1, 0, '{"name":"plg_system_p3p","type":"plugin","creationDate":"September 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_P3P_XML_DESCRIPTION","group":"","filename":"p3p"}', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '{"name":"plg_system_cache","type":"plugin","creationDate":"February 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CACHE_XML_DESCRIPTION","group":"","filename":"cache"}', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '{"name":"plg_system_debug","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_DEBUG_XML_DESCRIPTION","group":"","filename":"debug"}', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '{"name":"plg_system_log","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_LOG_XML_DESCRIPTION","group":"","filename":"log"}', '', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '{"name":"plg_system_redirect","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_REDIRECT_XML_DESCRIPTION","group":"","filename":"redirect"}', '{"collect_urls":"1"}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '{"name":"plg_system_remember","type":"plugin","creationDate":"April 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_REMEMBER_XML_DESCRIPTION","group":"","filename":"remember"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '{"name":"plg_system_sef","type":"plugin","creationDate":"December 2007","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEF_XML_DESCRIPTION","group":"","filename":"sef"}', '', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '{"name":"plg_system_logout","type":"plugin","creationDate":"April 2009","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION","group":"","filename":"logout"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 0, '{"name":"plg_user_contactcreator","type":"plugin","creationDate":"August 2009","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTACTCREATOR_XML_DESCRIPTION","group":"","filename":"contactcreator"}', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '{"name":"plg_user_joomla","type":"plugin","creationDate":"December 2006","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '{"autoregister":"1","mail_to_user":"1","forceLogout":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 0, '{"name":"plg_user_profile","type":"plugin","creationDate":"January 2008","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_USER_PROFILE_XML_DESCRIPTION","group":"","filename":"profile"}', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '{"name":"plg_extension_joomla","type":"plugin","creationDate":"May 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '{"name":"plg_content_joomla","type":"plugin","creationDate":"November 2010","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_JOOMLA_XML_DESCRIPTION","group":"","filename":"joomla"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(436, 'plg_system_languagecode', 'plugin', 'languagecode', 'system', 0, 0, 1, 0, '{"name":"plg_system_languagecode","type":"plugin","creationDate":"November 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION","group":"","filename":"languagecode"}', '', '', '', 0, '0000-00-00 00:00:00', 10, 0),
(437, 'plg_quickicon_joomlaupdate', 'plugin', 'joomlaupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_joomlaupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION","group":"","filename":"joomlaupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(438, 'plg_quickicon_extensionupdate', 'plugin', 'extensionupdate', 'quickicon', 0, 1, 1, 1, '{"name":"plg_quickicon_extensionupdate","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION","group":"","filename":"extensionupdate"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(439, 'plg_captcha_recaptcha', 'plugin', 'recaptcha', 'captcha', 0, 0, 1, 0, '{"name":"plg_captcha_recaptcha","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.4.0","description":"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION","group":"","filename":"recaptcha"}', '{"public_key":"","private_key":"","theme":"clean"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(440, 'plg_system_highlight', 'plugin', 'highlight', 'system', 0, 1, 1, 0, '{"name":"plg_system_highlight","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION","group":"","filename":"highlight"}', '', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(441, 'plg_content_finder', 'plugin', 'finder', 'content', 0, 0, 1, 0, '{"name":"plg_content_finder","type":"plugin","creationDate":"December 2011","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_CONTENT_FINDER_XML_DESCRIPTION","group":"","filename":"finder"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(442, 'plg_finder_categories', 'plugin', 'categories', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_categories","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CATEGORIES_XML_DESCRIPTION","group":"","filename":"categories"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(443, 'plg_finder_contacts', 'plugin', 'contacts', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_contacts","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTACTS_XML_DESCRIPTION","group":"","filename":"contacts"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(444, 'plg_finder_content', 'plugin', 'content', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_content","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_CONTENT_XML_DESCRIPTION","group":"","filename":"content"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(445, 'plg_finder_newsfeeds', 'plugin', 'newsfeeds', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_newsfeeds","type":"plugin","creationDate":"August 2011","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION","group":"","filename":"newsfeeds"}', '', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(447, 'plg_finder_tags', 'plugin', 'tags', 'finder', 0, 1, 1, 0, '{"name":"plg_finder_tags","type":"plugin","creationDate":"February 2013","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_FINDER_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(448, 'plg_twofactorauth_totp', 'plugin', 'totp', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_totp","type":"plugin","creationDate":"August 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION","group":"","filename":"totp"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(449, 'plg_authentication_cookie', 'plugin', 'cookie', 'authentication', 0, 1, 1, 0, '{"name":"plg_authentication_cookie","type":"plugin","creationDate":"July 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_AUTH_COOKIE_XML_DESCRIPTION","group":"","filename":"cookie"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(450, 'plg_twofactorauth_yubikey', 'plugin', 'yubikey', 'twofactorauth', 0, 0, 1, 0, '{"name":"plg_twofactorauth_yubikey","type":"plugin","creationDate":"September 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.2.0","description":"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION","group":"","filename":"yubikey"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(451, 'plg_search_tags', 'plugin', 'tags', 'search', 0, 1, 1, 0, '{"name":"plg_search_tags","type":"plugin","creationDate":"March 2014","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.0.0","description":"PLG_SEARCH_TAGS_XML_DESCRIPTION","group":"","filename":"tags"}', '{"search_limit":"50","show_tagged_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(452, 'plg_system_updatenotification', 'plugin', 'updatenotification', 'system', 0, 1, 1, 0, '{"name":"plg_system_updatenotification","type":"plugin","creationDate":"May 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_UPDATENOTIFICATION_XML_DESCRIPTION","group":"","filename":"updatenotification"}', '{"lastrun":1469866218}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(453, 'plg_editors-xtd_module', 'plugin', 'module', 'editors-xtd', 0, 1, 1, 0, '{"name":"plg_editors-xtd_module","type":"plugin","creationDate":"October 2015","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_MODULE_XML_DESCRIPTION","group":"","filename":"module"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(454, 'plg_system_stats', 'plugin', 'stats', 'system', 0, 1, 1, 0, '{"name":"plg_system_stats","type":"plugin","creationDate":"November 2013","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.5.0","description":"PLG_SYSTEM_STATS_XML_DESCRIPTION","group":"","filename":"stats"}', '{"mode":3,"lastrun":1469106026,"unique_id":"50223ef6c6b349c4a34d92b1f883d956562b7ad3","interval":12}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(455, 'plg_installer_packageinstaller', 'plugin', 'packageinstaller', 'installer', 0, 1, 1, 1, '{"name":"plg_installer_packageinstaller","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_PACKAGEINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"packageinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(456, 'PLG_INSTALLER_FOLDERINSTALLER', 'plugin', 'folderinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_FOLDERINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_FOLDERINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"folderinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(457, 'PLG_INSTALLER_URLINSTALLER', 'plugin', 'urlinstaller', 'installer', 0, 1, 1, 1, '{"name":"PLG_INSTALLER_URLINSTALLER","type":"plugin","creationDate":"May 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"PLG_INSTALLER_URLINSTALLER_PLUGIN_XML_DESCRIPTION","group":"","filename":"urlinstaller"}', '', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(503, 'beez3', 'template', 'beez3', '', 0, 1, 1, 0, '{"name":"beez3","type":"template","creationDate":"25 November 2009","author":"Angie Radtke","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"a.radtke@derauftritt.de","authorUrl":"http:\\/\\/www.der-auftritt.de","version":"3.1.0","description":"TPL_BEEZ3_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"wrapperSmall":"53","wrapperLarge":"72","sitetitle":"","sitedescription":"","navposition":"center","templatecolor":"nature"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(504, 'hathor', 'template', 'hathor', '', 1, 1, 1, 0, '{"name":"hathor","type":"template","creationDate":"May 2010","author":"Andrea Tarr","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"3.0.0","description":"TPL_HATHOR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"showSiteName":"0","colourChoice":"0","boldText":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(506, 'protostar', 'template', 'protostar', '', 0, 1, 1, 0, '{"name":"protostar","type":"template","creationDate":"4\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_PROTOSTAR_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(507, 'isis', 'template', 'isis', '', 1, 1, 1, 0, '{"name":"isis","type":"template","creationDate":"3\\/30\\/2012","author":"Kyle Ledbetter","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"","version":"1.0","description":"TPL_ISIS_XML_DESCRIPTION","group":"","filename":"templateDetails"}', '{"templateColor":"","logoFile":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (en-GB)', 'language', 'en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"en-GB site language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (en-GB)', 'language', 'en-GB', '', 1, 1, 1, 1, '{"name":"English (en-GB)","type":"language","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"en-GB administrator language","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'files_joomla', 'file', 'joomla', '', 0, 1, 1, 1, '{"name":"files_joomla","type":"file","creationDate":"July 2016","author":"Joomla! Project","copyright":"(C) 2005 - 2016 Open Source Matters. All rights reserved","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0","description":"FILES_JOOMLA_XML_DESCRIPTION","group":""}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(802, 'English (en-GB) Language Pack', 'package', 'pkg_en-GB', '', 0, 1, 1, 1, '{"name":"English (en-GB) Language Pack","type":"package","creationDate":"July 2016","author":"Joomla! Project","copyright":"Copyright (C) 2005 - 2016 Open Source Matters, Inc. All rights reserved.","authorEmail":"admin@joomla.org","authorUrl":"www.joomla.org","version":"3.6.0.1","description":"en-GB language pack","group":"","filename":"pkg_en-GB"}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'mod_articles_news_adv', 'module', 'mod_articles_news_adv', '', 0, 1, 0, 0, '{"name":"mod_articles_news_adv","type":"module","creationDate":"April 2013","author":"Joomla! Project","copyright":"Copyright (c) 2012-20013 by TemplateMonster - www.templatemonster.com","authorEmail":"","authorUrl":"www.templatemonster.com","version":"1.4.5","description":"MOD_ARTICLES_NEWS_ADV_XML_DESCRIPTION","group":"","filename":"mod_articles_news_adv"}', '{"catid":"","count":"5","columns":"1","ordering":"a.publish_up","mod_button":"0","custom_link_title":"","custom_link_route":"0","custom_link_url":"http:\\/\\/","item_title":"0","item_heading":"h4","show_tags":"0","published":"0","createdby":"0","intro_image":"0","intro_image_align":"none","image":"0","readmore":"0","bootstrap_layout":"0","cache":"1","cache_time":"900","cachemode":"itemid"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, 'herrman-j', 'template', 'herrmann-j', '', 0, 1, 1, 0, '{"name":"herrman-j","type":"template","creationDate":"2016-07-26","author":"D.U.K","copyright":"Herrman-j 2016","authorEmail":"ndung.trn@gmail.com","authorUrl":"http:\\/\\/www.example.com","version":"1.0.2","description":"Herrmann Template","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, 'T3 Framework', 'plugin', 't3', 'system', 0, 1, 1, 0, '{"name":"T3 Framework","type":"plugin","creationDate":"July 22, 2016","author":"JoomlArt.com","copyright":"Copyright (C) 2005 - 2016 Open Source Matters. All rights reserved.","authorEmail":"info@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.6.0","description":"\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2016 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 't3_blank', 'template', 't3_blank', '', 0, 1, 1, 0, '{"name":"t3_blank","type":"template","creationDate":"July 22 2016","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.2.3","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 't3_bs3_blank', 'template', 't3_bs3_blank', '', 0, 1, 1, 0, '{"name":"t3_bs3_blank","type":"template","creationDate":"July 22 2016","author":"JoomlArt.com","copyright":"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.","authorEmail":"webmaster@joomlart.com","authorUrl":"http:\\/\\/www.t3-framework.org","version":"2.2.3","description":"\\n\\t\\t\\n\\t\\t<div align=\\"center\\">\\n\\t\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\"color:#FF0000\\">Note: T3 blank requires T3 plugin to be installed and enabled.<\\/span><p><\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2015 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t","group":"","filename":"templateDetails"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'T3 Framework Package', 'package', 'pkg_t3', '', 0, 1, 1, 0, '{"name":"T3 Framework Package","type":"package","creationDate":"July 22, 2016","author":"t3-framework.org","copyright":"(C) 2012 - 2016. All rights reserved.","authorEmail":"support@t3-framework.org","authorUrl":"www.t3-framework.org","version":"2.6.0","description":"\\t\\n\\t\\n\\t<div align=\\"center\\">\\n\\t\\t<div class=\\"alert alert-success\\" style=\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\">\\n\\t\\t\\t\\t<a href=\\"http:\\/\\/t3-framework.org\\/\\"><img src=\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\" alt=\\"some_text\\" width=\\"300\\" height=\\"99\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\"http:\\/\\/t3-framework.org\\/\\" title=\\"\\">Home<\\/a> | <a href=\\"http:\\/\\/demo.t3-framework.org\\/\\" title=\\"\\">Demo<\\/a> | <a href=\\"http:\\/\\/t3-framework.org\\/documentation\\" title=\\"\\">Document<\\/a> | <a href=\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\" title=\\"\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2016 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t","group":"","filename":"pkg_t3"}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'Contact Information Module', 'module', 'mod_contactinfo', '', 0, 1, 0, 0, '{"name":"Contact Information Module","type":"module","creationDate":"February 2013","author":"Edward Cupler","copyright":"(C) 2013 Digital Greys. All rights reserved.","authorEmail":"ecupler@digitalgreys.com","authorUrl":"www.digitalgreys.com","version":"3.3","description":"MOD_CONTACTINFO_XML_DESCRIPTION","group":"","filename":"mod_contactinfo"}', '{"layout_style":"SeperateLines","separate_code":"vert_indent","link_to":"1","link_website":"1","website_target":"0","contact_cid":"","show_image":"0","link_image":"1","thumb_size":"100","@spacer":"","show_name":"0","show_alias":"0","con_position":"0","show_address":"0","show_suburb":"0","show_state":"0","show_postcode":"0","show_country":"0","show_telephone":"0","show_mobile":"0","show_fax":"0","show_email_to":"0","email_text":"","show_webpage":"0","show_misc":"0","show_vcard":"0","cache":"1","cache_time":"900"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_filters`
--

CREATE TABLE `t30ib_finder_filters` (
  `filter_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links`
--

CREATE TABLE `t30ib_finder_links` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(400) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double UNSIGNED NOT NULL DEFAULT '0',
  `sale_price` double UNSIGNED NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms0`
--

CREATE TABLE `t30ib_finder_links_terms0` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms1`
--

CREATE TABLE `t30ib_finder_links_terms1` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms2`
--

CREATE TABLE `t30ib_finder_links_terms2` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms3`
--

CREATE TABLE `t30ib_finder_links_terms3` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms4`
--

CREATE TABLE `t30ib_finder_links_terms4` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms5`
--

CREATE TABLE `t30ib_finder_links_terms5` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms6`
--

CREATE TABLE `t30ib_finder_links_terms6` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms7`
--

CREATE TABLE `t30ib_finder_links_terms7` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms8`
--

CREATE TABLE `t30ib_finder_links_terms8` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_terms9`
--

CREATE TABLE `t30ib_finder_links_terms9` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termsa`
--

CREATE TABLE `t30ib_finder_links_termsa` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termsb`
--

CREATE TABLE `t30ib_finder_links_termsb` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termsc`
--

CREATE TABLE `t30ib_finder_links_termsc` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termsd`
--

CREATE TABLE `t30ib_finder_links_termsd` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termse`
--

CREATE TABLE `t30ib_finder_links_termse` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_links_termsf`
--

CREATE TABLE `t30ib_finder_links_termsf` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `term_id` int(10) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_taxonomy`
--

CREATE TABLE `t30ib_finder_taxonomy` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `access` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t30ib_finder_taxonomy`
--

INSERT INTO `t30ib_finder_taxonomy` (`id`, `parent_id`, `title`, `state`, `access`, `ordering`) VALUES
(1, 0, 'ROOT', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_taxonomy_map`
--

CREATE TABLE `t30ib_finder_taxonomy_map` (
  `link_id` int(10) UNSIGNED NOT NULL,
  `node_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_terms`
--

CREATE TABLE `t30ib_finder_terms` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_terms_common`
--

CREATE TABLE `t30ib_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t30ib_finder_terms_common`
--

INSERT INTO `t30ib_finder_terms_common` (`term`, `language`) VALUES
('a', 'en'),
('about', 'en'),
('after', 'en'),
('ago', 'en'),
('all', 'en'),
('am', 'en'),
('an', 'en'),
('and', 'en'),
('ani', 'en'),
('any', 'en'),
('are', 'en'),
('aren\'t', 'en'),
('as', 'en'),
('at', 'en'),
('be', 'en'),
('but', 'en'),
('by', 'en'),
('for', 'en'),
('from', 'en'),
('get', 'en'),
('go', 'en'),
('how', 'en'),
('if', 'en'),
('in', 'en'),
('into', 'en'),
('is', 'en'),
('isn\'t', 'en'),
('it', 'en'),
('its', 'en'),
('me', 'en'),
('more', 'en'),
('most', 'en'),
('must', 'en'),
('my', 'en'),
('new', 'en'),
('no', 'en'),
('none', 'en'),
('not', 'en'),
('noth', 'en'),
('nothing', 'en'),
('of', 'en'),
('off', 'en'),
('often', 'en'),
('old', 'en'),
('on', 'en'),
('onc', 'en'),
('once', 'en'),
('onli', 'en'),
('only', 'en'),
('or', 'en'),
('other', 'en'),
('our', 'en'),
('ours', 'en'),
('out', 'en'),
('over', 'en'),
('page', 'en'),
('she', 'en'),
('should', 'en'),
('small', 'en'),
('so', 'en'),
('some', 'en'),
('than', 'en'),
('thank', 'en'),
('that', 'en'),
('the', 'en'),
('their', 'en'),
('theirs', 'en'),
('them', 'en'),
('then', 'en'),
('there', 'en'),
('these', 'en'),
('they', 'en'),
('this', 'en'),
('those', 'en'),
('thus', 'en'),
('time', 'en'),
('times', 'en'),
('to', 'en'),
('too', 'en'),
('true', 'en'),
('under', 'en'),
('until', 'en'),
('up', 'en'),
('upon', 'en'),
('use', 'en'),
('user', 'en'),
('users', 'en'),
('veri', 'en'),
('version', 'en'),
('very', 'en'),
('via', 'en'),
('want', 'en'),
('was', 'en'),
('way', 'en'),
('were', 'en'),
('what', 'en'),
('when', 'en'),
('where', 'en'),
('whi', 'en'),
('which', 'en'),
('who', 'en'),
('whom', 'en'),
('whose', 'en'),
('why', 'en'),
('wide', 'en'),
('will', 'en'),
('with', 'en'),
('within', 'en'),
('without', 'en'),
('would', 'en'),
('yes', 'en'),
('yet', 'en'),
('you', 'en'),
('your', 'en'),
('yours', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_tokens`
--

CREATE TABLE `t30ib_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` float UNSIGNED NOT NULL DEFAULT '1',
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_tokens_aggregate`
--

CREATE TABLE `t30ib_finder_tokens_aggregate` (
  `term_id` int(10) UNSIGNED NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `phrase` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `term_weight` float UNSIGNED NOT NULL,
  `context` tinyint(1) UNSIGNED NOT NULL DEFAULT '2',
  `context_weight` float UNSIGNED NOT NULL,
  `total_weight` float UNSIGNED NOT NULL,
  `language` char(3) NOT NULL DEFAULT ''
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_finder_types`
--

CREATE TABLE `t30ib_finder_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_languages`
--

CREATE TABLE `t30ib_languages` (
  `lang_id` int(11) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `lang_code` char(7) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_native` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sef` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sitename` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_languages`
--

INSERT INTO `t30ib_languages` (`lang_id`, `asset_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `sitename`, `published`, `access`, `ordering`) VALUES
(1, 0, 'en-GB', 'English (UK)', 'English (UK)', 'en', 'en', '', '', '', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_menu`
--

CREATE TABLE `t30ib_menu` (
  `id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_menu`
--

INSERT INTO `t30ib_menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 101, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 59, 68, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 60, 61, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 62, 63, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 64, 65, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 66, 67, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 69, 74, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 70, 71, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 72, 73, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 75, 78, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 76, 77, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 79, 84, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 80, 81, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 82, 83, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 91, 92, 0, '*', 1),
(17, 'menu', 'com_search', 'Basic Search', '', 'Basic Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 89, 90, 0, '*', 1),
(21, 'menu', 'com_finder', 'Smart Search', '', 'Smart Search', 'index.php?option=com_finder', 'component', 0, 1, 1, 27, 0, '0000-00-00 00:00:00', 0, 0, 'class:finder', 0, '', 87, 88, 0, '*', 1),
(22, 'menu', 'com_joomlaupdate', 'Joomla! Update', '', 'Joomla! Update', 'index.php?option=com_joomlaupdate', 'component', 0, 1, 1, 28, 0, '0000-00-00 00:00:00', 0, 0, 'class:joomlaupdate', 0, '', 85, 86, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=featured', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 11, '{"layout_type":"blog","num_leading_articles":"1","num_intro_articles":"5","num_columns":"3","num_links":"5","multi_column_order":"","orderby_pri":"none","orderby_sec":"front","order_date":"","show_pagination":"0","show_pagination_results":"0","show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"0","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"0","show_modify_date":"0","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"0","show_email_icon":"0","show_hits":"0","show_tags":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"0","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 1, 6, 1, '*', 0),
(102, 'mainmenu', 'About Us', 'about-us', '', 'about-us', 'index.php?option=com_content&view=article&id=2', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"0","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"0","show_item_navigation":"0","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 48, 0, '*', 0),
(103, 'mainmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=category&layout=blog&id=8', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"layout_type":"blog","show_category_title":"","show_description":"1","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"1","num_intro_articles":"0","num_columns":"1","num_links":"3","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"published","show_pagination":"0","show_pagination_results":"0","show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","info_bloc_position":"0","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"0","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 49, 50, 0, '*', 0),
(104, 'mainmenu', 'Login', 'login', '', 'login', 'index.php?option=com_users&view=login', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 4, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 53, 54, 0, '*', 0),
(105, 'mainmenu', 'Edit Profile', 'edit-profile', '', 'edit-profile', 'index.php?option=com_users&view=profile&layout=edit', 'component', -2, 1, 1, 25, 0, '0000-00-00 00:00:00', 0, 2, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 55, 56, 0, '*', 0),
(106, 'mainmenu', 'Contact Us', 'contact-us', '', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 1, 1, 8, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"presentation_style":"","show_contact_category":"","show_contact_list":"","show_name":"","show_position":"","show_email":"","show_street_address":"","show_suburb":"","show_state":"","show_postcode":"","show_country":"","show_telephone":"","show_mobile":"","show_fax":"","show_webpage":"","show_misc":"","show_image":"","allow_vcard":"","show_articles":"","show_links":"","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","show_email_form":"","show_email_copy":"","banned_email":"","banned_subject":"","banned_text":"","validate_session":"","custom_reply":"","redirect":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 51, 52, 0, '*', 0),
(107, 'mainmenu', 'Administrator', '2012-01-04-04-05-24', '', '2012-01-04-04-05-24', 'administrator', 'url', -2, 1, 1, 0, 0, '0000-00-00 00:00:00', 1, 3, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1}', 93, 94, 0, '*', 0),
(109, 'mainmenu', 'Create an Article', 'create-an-article', '', 'create-an-article', 'index.php?option=com_content&view=form&layout=edit', 'component', -2, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 3, '', 0, '{"enable_category":"0","catid":"2","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 57, 58, 0, '*', 0),
(110, 'menu', 'com_tags', 'com-tags', '', 'com-tags', 'index.php?option=com_tags', 'component', 0, 1, 1, 29, 0, '0000-00-00 00:00:00', 0, 1, 'class:tags', 0, '', 95, 96, 0, '', 1),
(111, 'main', 'com_postinstall', 'Post-installation messages', '', 'Post-installation messages', 'index.php?option=com_postinstall', 'component', 0, 1, 1, 32, 0, '0000-00-00 00:00:00', 0, 1, 'class:postinstall', 0, '', 97, 98, 0, '*', 1),
(112, 'mainmenu', 'Site Settings', 'site-settings', '', 'home/site-settings', 'index.php?option=com_config&view=config&controller=config.display.config', 'component', -2, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 2, 3, 0, '*', 0),
(113, 'mainmenu', 'Template Settings', 'template-settings', '', 'home/template-settings', 'index.php?option=com_config&view=templates&controller=config.display.templates', 'component', -2, 101, 2, 23, 0, '0000-00-00 00:00:00', 0, 6, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 4, 5, 0, '*', 0),
(114, 'mainmenu', 'Unternehmen', 'unternehmen', '', 'unternehmen', 'index.php?option=com_content&view=article&id=7', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 7, 12, 0, '*', 0),
(115, 'mainmenu', 'Einsatzgebiet', 'einsatzgebiet', '', 'unternehmen/einsatzgebiet', 'index.php?option=com_content&view=article&id=8', 'component', 1, 114, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 10, 11, 0, '*', 0),
(116, 'mainmenu', 'Aktuelles', 'aktuelles', '', 'unternehmen/aktuelles', 'index.php?option=com_content&view=article&id=7', 'component', 1, 114, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 8, 9, 0, '*', 0),
(117, 'mainmenu', 'Dienstleistungen', 'dienstleistungen', '', 'dienstleistungen', 'index.php?option=com_content&view=article&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 13, 38, 0, '*', 0),
(118, 'mainmenu', 'Schwerpunkt: Ortung', 'schwerpunkt-ortung', '', 'dienstleistungen/schwerpunkt-ortung', 'index.php?option=com_content&view=category&id=13', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 14, 21, 0, '*', 0),
(119, 'mainmenu', 'Schwerpunkt: Diagnostik', 'schwerpunkt-diagnostik', '', 'dienstleistungen/schwerpunkt-diagnostik', 'index.php?option=com_content&view=category&id=14', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 22, 29, 0, '*', 0),
(120, 'mainmenu', 'Schwerpunkt: Trocknung', 'schwerpunkt-trocknung', '', 'dienstleistungen/schwerpunkt-trocknung', 'index.php?option=com_content&view=category&id=15', 'component', 1, 117, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 30, 37, 0, '*', 0),
(121, 'mainmenu', 'Rohrbruchortung', 'rohrbruchortung', '', 'dienstleistungen/schwerpunkt-ortung/rohrbruchortung', 'index.php?option=com_content&view=article&id=10', 'component', 1, 118, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 15, 16, 0, '*', 0),
(122, 'mainmenu', 'Prüfgasverfahren', 'pruefgasverfahren', '', 'dienstleistungen/schwerpunkt-ortung/pruefgasverfahren', 'index.php?option=com_content&view=article&id=11', 'component', 1, 118, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 17, 18, 0, '*', 0),
(123, 'mainmenu', 'Videoendoskopie', 'videoendoskopie', '', 'dienstleistungen/schwerpunkt-ortung/videoendoskopie', 'index.php?option=com_content&view=article&id=12', 'component', 1, 118, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 19, 20, 0, '*', 0),
(124, 'mainmenu', 'BlowerDoor-Messung', 'blowerdoor-messung', '', 'dienstleistungen/schwerpunkt-diagnostik/blowerdoor-messung', 'index.php?option=com_content&view=article&id=15', 'component', 1, 119, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 23, 24, 0, '*', 0),
(125, 'mainmenu', 'Thermografie', 'thermografie', '', 'dienstleistungen/schwerpunkt-diagnostik/thermografie', 'index.php?option=com_content&view=article&id=14', 'component', 1, 119, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 25, 26, 0, '*', 0),
(126, 'mainmenu', 'Bauwerksdiagnostik', 'bauwerksdiagnostik', '', 'dienstleistungen/schwerpunkt-diagnostik/bauwerksdiagnostik', 'index.php?option=com_content&view=article&id=13', 'component', 1, 119, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 27, 28, 0, '*', 0),
(127, 'mainmenu', 'Spezialtrocknung', 'spezialtrocknung', '', 'dienstleistungen/schwerpunkt-trocknung/spezialtrocknung', 'index.php?option=com_content&view=article&id=16', 'component', 1, 120, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 31, 32, 0, '*', 0),
(128, 'mainmenu', 'Bautrocknung', 'bautrocknung', '', 'dienstleistungen/schwerpunkt-trocknung/bautrocknung', 'index.php?option=com_content&view=article&id=17', 'component', 1, 120, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 33, 34, 0, '*', 0),
(129, 'mainmenu', 'Infrarot-Trocknung', 'infrarot-trocknung', '', 'dienstleistungen/schwerpunkt-trocknung/infrarot-trocknung', 'index.php?option=com_content&view=article&id=18', 'component', 1, 120, 3, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 35, 36, 0, '*', 0),
(130, 'mainmenu', 'Kontakt', 'kontakt', '', 'kontakt', 'index.php?option=com_content&view=article&id=22', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 46, 0, '*', 0),
(131, 'mainmenu', 'Standorte', 'standorte', '', 'kontakt/standorte', 'index.php?option=com_content&view=article&id=21', 'component', 1, 130, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 42, 43, 0, '*', 0),
(132, 'mainmenu', 'Schadensformular', 'schadensformular', '', 'kontakt/schadensformular', 'index.php?option=com_content&view=article&id=20', 'component', 1, 130, 2, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 44, 45, 0, '*', 0),
(133, 'mainmenu', 'Referenzen', 'referenzen', '', 'referenzen', 'index.php?option=com_content&view=article&id=19', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_title":"","link_titles":"","show_intro":"","info_block_position":"","info_block_show_title":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_tags":"","show_noauth":"","urls_position":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 0, '*', 0),
(134, 'navmenu', 'Category List', 'category-list', '', 'category-list', 'index.php?option=com_content&view=category&id=10', 'component', 1, 1, 1, 22, 0, '0000-00-00 00:00:00', 0, 1, ' ', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_category_heading_title_text":"","show_subcat_desc":"","show_cat_num_articles":"","show_cat_tags":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_featured":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"menu_show":1,"page_title":"","show_page_heading":"","page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 99, 100, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_menu_types`
--

CREATE TABLE `t30ib_menu_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `asset_id` int(11) NOT NULL,
  `menutype` varchar(24) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_menu_types`
--

INSERT INTO `t30ib_menu_types` (`id`, `asset_id`, `menutype`, `title`, `description`) VALUES
(1, 0, 'mainmenu', 'Main Menu', 'The main menu for the site'),
(2, 81, 'navmenu', 'nav menu', 'asdasd');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_messages`
--

CREATE TABLE `t30ib_messages` (
  `message_id` int(10) UNSIGNED NOT NULL,
  `user_id_from` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id_to` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_messages_cfg`
--

CREATE TABLE `t30ib_messages_cfg` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cfg_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_modules`
--

CREATE TABLE `t30ib_modules` (
  `id` int(11) NOT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_modules`
--

INSERT INTO `t30ib_modules` (`id`, `asset_id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, 58, 'Main Menu', '', '', 1, 'mainnav', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"mainmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":" nav-pills","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h2","header_class":"","style":"0"}', 0, '*'),
(2, 0, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 49, 'Popular Articles', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(4, 50, 'Recently Added Articles', '', '', 1, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(8, 0, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 0, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 48, 'Logged-in Users', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(12, 0, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 0, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 0, 'User Status', '', '', 2, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 0, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 0, 'Login Form', '', '', 2, 'position-7', 0, '0000-00-00 00:00:00', '2016-07-21 13:03:56', '0000-00-00 00:00:00', -2, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(17, 0, 'Breadcrumbs', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '2016-07-21 13:03:15', '0000-00-00 00:00:00', -2, 'mod_breadcrumbs', 1, 1, '{"moduleclass_sfx":"","showHome":"1","homeText":"","showComponent":"1","separator":"","cache":"0","cache_time":"0","cachemode":"itemid"}', 0, '*'),
(79, 0, 'Multilanguage status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, 'mod_multilangstatus', 3, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(80, 0, 'Search', '', '', -2, 'position-0', 0, '0000-00-00 00:00:00', '2016-07-21 13:03:11', '0000-00-00 00:00:00', -2, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","opensearch":"1","opensearch_title":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(82, 86, 'News Flash', '', '', 1, 'position-1', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["17"],"image":"0","item_title":"0","link_titles":"0","item_heading":"h2","showLastSeparator":"0","readmore":"0","count":"1","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(83, 57, 'Side Module', '', '<p>This is a module where you might want to add some more information or an image, a link to your social media presence, or whatever makes sense for your site.</p>\r\n<p>You can edit this module in the module manager. Look for the Side Module.</p>', 1, 'position-9', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(86, 0, 'Joomla Version', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_version', 3, 1, '{"format":"short","product":"1","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 1, '*'),
(87, 60, 'Footer', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_footer', 1, 1, '{"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(88, 52, 'Image', '', '<p><img src="images/herrmann-start_header.jpg" alt="" /></p>', 1, 'position-0', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","backgroundimage":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"section","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(89, 51, 'Site Information', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_stats_admin', 6, 1, '{"serverinfo":"1","siteinfo":"1","counter":"1","increase":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static","module_tag":"div","bootstrap_size":"6","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(90, 53, 'Release News', '', '', 0, 'postinstall', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_feed', 1, 1, '{"rssurl":"https:\\/\\/www.joomla.org\\/announcements\\/release-news.feed","rssrtl":"0","rsstitle":"1","rssdesc":"1","rssimage":"1","rssitems":"3","rssitemdesc":"1","word_count":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 1, '*'),
(91, 59, 'Unternehmen', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', 1, 'mod_articles_categories', 1, 1, '{"parent":"9","show_description":"0","numitems":"0","show_children":"0","count":"0","maxlevel":"0","layout":"_:default","item_heading":"4","moduleclass_sfx":"","owncache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(92, 82, 'Dienstleistungen', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '2016-07-21 16:05:50', '0000-00-00 00:00:00', -2, 'mod_menu', 1, 1, '{"menutype":"navmenu","base":"","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(93, 87, 'Articles - Newsflash (Advanced)', '', '', 1, 'position-3', 0, '0000-00-00 00:00:00', '2016-07-21 16:15:24', '0000-00-00 00:00:00', 0, 'mod_articles_news_adv', 1, 1, '{"catid":["15"],"count":"3","columns":"3","ordering":"a.publish_up","mod_button":"1","custom_link_title":"","custom_link_route":"1","custom_link_url":"http:\\/\\/","custom_link_menu":"116","pretext":"","item_title":"0","link_titles":"","item_heading":"h4","show_tags":"0","published":"0","createdby":"0","intro_image":"0","intro_image_align":"none","image":"0","readmore":"1","bootstrap_layout":"1","layout":"_:bootstrapCols","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(94, 88, 'Flash advance', '', '', 1, 'position-5', 0, '0000-00-00 00:00:00', '2016-07-21 16:18:24', '0000-00-00 00:00:00', -2, 'mod_articles_news_adv', 1, 1, '{"catid":["9"],"count":"5","columns":"1","ordering":"a.publish_up","mod_button":"0","custom_link_title":"","custom_link_route":"1","custom_link_url":"http:\\/\\/","custom_link_menu":"116","pretext":"","item_title":"0","link_titles":"","item_heading":"h4","show_tags":"0","published":"0","createdby":"0","intro_image":"0","intro_image_align":"none","image":"0","readmore":"0","bootstrap_layout":"0","layout":"_:bootstrapCols","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(95, 94, 'main-left', '', '', 1, 'position-2', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["18"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"1","count":"1","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(96, 95, 'main-center', '', '', 0, 'position-3', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["19"],"image":"1","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"1","readmore":"0","count":"5","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(97, 96, 'main-right', '', '', 1, 'position-5', 745, '2016-07-27 15:01:38', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_news', 1, 0, '{"catid":["15"],"image":"0","item_title":"0","link_titles":"","item_heading":"h4","showLastSeparator":"0","readmore":"1","count":"10","ordering":"a.publish_up","direction":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid","module_tag":"aside","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*'),
(98, 97, 'Contact Information Module', '', '', 1, 'footer-contact', 0, '0000-00-00 00:00:00', '2016-07-30 08:46:28', '0000-00-00 00:00:00', 1, 'mod_contactinfo', 1, 1, '{"layout_style":"SeperateLines","separate_code":"div","link_to":"1","link_website":"1","website_target":"0","contact_cid":"","show_image":"0","link_image":"1","thumb_size":"100","show_name":"0","show_alias":"0","con_position":"0","show_address":"0","show_suburb":"0","show_state":"0","show_postcode":"0","show_country":"0","show_telephone":"0","show_mobile":"0","show_fax":"0","show_email_to":"0","email_text":"","show_webpage":"0","show_misc":"0","show_vcard":"0","moduleclass_sfx":"","cache":"1","cache_time":"900","module_tag":"div","bootstrap_size":"0","header_tag":"h3","header_class":"","style":"0"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_modules_menu`
--

CREATE TABLE `t30ib_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_modules_menu`
--

INSERT INTO `t30ib_modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(79, 0),
(80, 0),
(82, 0),
(83, 0),
(85, 0),
(86, 0),
(88, 0),
(91, 0),
(92, 0),
(93, 0),
(94, 0),
(95, 0),
(96, 0),
(97, 0),
(98, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_newsfeeds`
--

CREATE TABLE `t30ib_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `link` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `cache_time` int(10) UNSIGNED NOT NULL DEFAULT '3600',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadata` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_overrider`
--

CREATE TABLE `t30ib_overrider` (
  `id` int(10) NOT NULL COMMENT 'Primary Key',
  `constant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_postinstall_messages`
--

CREATE TABLE `t30ib_postinstall_messages` (
  `postinstall_message_id` bigint(20) UNSIGNED NOT NULL,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language_extension` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_postinstall_messages`
--

INSERT INTO `t30ib_postinstall_messages` (`postinstall_message_id`, `extension_id`, `title_key`, `description_key`, `action_key`, `language_extension`, `language_client_id`, `type`, `action_file`, `action`, `condition_file`, `condition_method`, `version_introduced`, `enabled`) VALUES
(1, 700, 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY', 'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION', 'plg_twofactorauth_totp', 1, 'action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_action', 'site://plugins/twofactorauth/totp/postinstall/actions.php', 'twofactorauth_postinstall_condition', '3.2.0', 1),
(2, 700, 'COM_CPANEL_WELCOME_BEGINNERS_TITLE', 'COM_CPANEL_WELCOME_BEGINNERS_MESSAGE', '', 'com_cpanel', 1, 'message', '', '', '', '', '3.2.0', 1),
(3, 700, 'COM_CPANEL_MSG_STATS_COLLECTION_TITLE', 'COM_CPANEL_MSG_STATS_COLLECTION_BODY', '', 'com_cpanel', 1, 'message', '', '', 'admin://components/com_admin/postinstall/statscollection.php', 'admin_postinstall_statscollection_condition', '3.5.0', 1);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_redirect_links`
--

CREATE TABLE `t30ib_redirect_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `old_url` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `new_url` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referer` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `header` smallint(3) NOT NULL DEFAULT '301'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_redirect_links`
--

INSERT INTO `t30ib_redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `hits`, `published`, `created_date`, `modified_date`, `header`) VALUES
(1, 'http://localhost/Herrmann-j/index.php/home', NULL, 'http://localhost/Herrmann-j/index.php/referenzen', '', 4, 0, '2016-07-21 14:44:33', '0000-00-00 00:00:00', 301);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_schemas`
--

CREATE TABLE `t30ib_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_schemas`
--

INSERT INTO `t30ib_schemas` (`extension_id`, `version_id`) VALUES
(700, '3.6.0-2016-06-05');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_session`
--

CREATE TABLE `t30ib_session` (
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `guest` tinyint(4) UNSIGNED DEFAULT '1',
  `time` varchar(14) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` mediumtext COLLATE utf8mb4_unicode_ci,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_session`
--

INSERT INTO `t30ib_session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`) VALUES
('m8nj28b6hu4j1d3ekgj3ulqq57', 1, 1, '1469880233', 'joomla|s:508:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjI6e3M6NzoiY291bnRlciI7aToxO3M6NToidG9rZW4iO3M6MzI6ImZrWVBoVEs2cnR0SDZ4eDN1QmI0Z29td3huYXhKaDBlIjt9czo4OiJyZWdpc3RyeSI7TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjA6e31zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9czo0OiJ1c2VyIjtPOjU6IkpVc2VyIjoxOntzOjI6ImlkIjtpOjA7fX19czo5OiJzZXBhcmF0b3IiO3M6MToiLiI7fQ==";', 0, ''),
('mdnrncommco2jgtfr600c7ru22', 0, 1, '1469880233', 'joomla|s:436:"TzoyNDoiSm9vbWxhXFJlZ2lzdHJ5XFJlZ2lzdHJ5IjoyOntzOjc6IgAqAGRhdGEiO086ODoic3RkQ2xhc3MiOjE6e3M6OToiX19kZWZhdWx0IjtPOjg6InN0ZENsYXNzIjozOntzOjc6InNlc3Npb24iO086ODoic3RkQ2xhc3MiOjE6e3M6NzoiY291bnRlciI7aToxO31zOjg6InJlZ2lzdHJ5IjtPOjI0OiJKb29tbGFcUmVnaXN0cnlcUmVnaXN0cnkiOjI6e3M6NzoiACoAZGF0YSI7Tzo4OiJzdGRDbGFzcyI6MDp7fXM6OToic2VwYXJhdG9yIjtzOjE6Ii4iO31zOjQ6InVzZXIiO086NToiSlVzZXIiOjE6e3M6MjoiaWQiO2k6MDt9fX1zOjk6InNlcGFyYXRvciI7czoxOiIuIjt9";', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_tags`
--

CREATE TABLE `t30ib_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `path` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `metadesc` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_tags`
--

INSERT INTO `t30ib_tags` (`id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `created_by_alias`, `modified_user_id`, `modified_time`, `images`, `urls`, `hits`, `language`, `version`, `publish_up`, `publish_down`) VALUES
(1, 0, 0, 1, 0, '', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '', '', '', '', 745, '2011-01-01 00:00:01', '', 0, '0000-00-00 00:00:00', '', '', 0, '*', 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_template_styles`
--

CREATE TABLE `t30ib_template_styles` (
  `id` int(10) UNSIGNED NOT NULL,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `client_id` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `home` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_template_styles`
--

INSERT INTO `t30ib_template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(4, 'beez3', 0, '0', 'Beez3 - Default', '{"wrapperSmall":"53","wrapperLarge":"72","logo":"images\\/joomla_black.png","sitetitle":"Joomla!","sitedescription":"Open Source Content Management","navposition":"left","templatecolor":"personal","html5":"0"}'),
(5, 'hathor', 1, '0', 'Hathor - Default', '{"showSiteName":"0","colourChoice":"","boldText":"0"}'),
(7, 'protostar', 0, '0', 'My Default Style (Protostar)', '{"templateColor":"#696969","templateBackgroundColor":"#e3e3e3","logoFile":"images\\/logo.jpg","sitetitle":"","sitedescription":"","googleFont":"1","googleFontName":"Open+Sans","fluidContainer":"1"}'),
(8, 'isis', 1, '1', 'isis - Default', '{"templateColor":"#000000","logoFile":"","admin_menus":1,"displayHeader":1,"statusFixed":1,"stickyToolbar":1}'),
(9, 'herrmann-j', 0, '0', 'herrman-j - Default', '{}'),
(10, 't3_blank', 0, '0', 't3_blank - Default', '{"t3_template":"1","devmode":"0","themermode":"1","responsive":"1","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"Schadensmanagement bei Wassersch\\u00e4den","logoimage":"images\\/logo.jpg","enable_logoimage_sm":"0","logoimage_sm":"images\\/logo.jpg","mainlayout":"home-1","sublayout":"default-joomla-3.x","navigation_trigger":"hover","navigation_collapse_offcanvas":"1","navigation_collapse_showsub":"1","navigation_type":"joomla","navigation_animation":"slide","navigation_animation_duration":"500","mm_type":"mainmenu","mm_config":"","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}'),
(11, 't3_bs3_blank', 0, '1', 't3_bs3_blank - Default', '{"t3_template":"1","devmode":"0","themermode":"0","legacy_css":"0","responsive":"1","non_responsive_width":"970px","build_rtl":"0","t3-assets":"t3-assets","t3-rmvlogo":"0","minify":"0","minify_js":"0","minify_js_tool":"jsmin","minify_exclude":"","link_titles":"","theme":"","logotype":"image","sitename":"","slogan":"Schadensmanagement bei Wassersch\\u00e4den","logoimage":"images\\/logo.jpg","enable_logoimage_sm":"0","logoimage_sm":"","mainlayout":"home","sublayout":"","mm_type":"mainmenu","navigation_trigger":"hover","navigation_type":"megamenu","navigation_animation":"slide","navigation_animation_duration":"400","mm_config":"","navigation_collapse_enable":"1","addon_offcanvas_enable":"1","addon_offcanvas_effect":"off-canvas-effect-4","snippet_open_head":"","snippet_close_head":"","snippet_open_body":"","snippet_close_body":"","snippet_debug":"0"}');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_ucm_base`
--

CREATE TABLE `t30ib_ucm_base` (
  `ucm_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_ucm_content`
--

CREATE TABLE `t30ib_ucm_content` (
  `core_content_id` int(10) UNSIGNED NOT NULL,
  `core_type_alias` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_alias` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `core_body` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_access` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_featured` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_urls` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_hits` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_version` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_metadesc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `core_catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Contains core content data in name spaced fields';

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_ucm_history`
--

CREATE TABLE `t30ib_ucm_history` (
  `version_id` int(10) UNSIGNED NOT NULL,
  `ucm_item_id` int(10) UNSIGNED NOT NULL,
  `ucm_type_id` int(10) UNSIGNED NOT NULL,
  `version_note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `character_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_ucm_history`
--

INSERT INTO `t30ib_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(1, 9, 5, '', '2016-07-21 13:08:51', 745, 570, 'e1d6089e5d17f3cc43b8c772fff13f51b322abd3', '{"id":9,"asset_id":54,"parent_id":"1","lft":"13","rgt":14,"level":1,"path":null,"extension":"com_content","title":"Unternehmen","alias":"unternehmen","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"Unternehmen\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:08:51","modified_user_id":null,"modified_time":"2016-07-21 13:08:51","hits":"0","language":"*","version":null}', 0),
(2, 7, 1, '', '2016-07-21 13:20:53', 745, 6388, 'ecb46ab32893da323001e168229f4442efd8d011', '{"id":7,"asset_id":55,"title":"Aktuelles","alias":"aktuelles","introtext":"<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Herrmann Geb\\u00e4udesanierung GmbH<\\/h4>\\r\\n<p><img src=\\"images\\/Logo-Herrmann-Gebaeudesanierung-GmbH.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\\">Wo Herrmann drinsteckt steht ab sofort auch Herrmann drauf. Die im April 2015 gegr\\u00fcndete DuweSan GmbH firmiert ab sofort unter Herrmann Geb\\u00e4udesanierung GmbH. Und auch in der Gesch\\u00e4ftsf\\u00fchrung hat es \\u00c4nderungen gegeben. Mit Herrn Kai Desimeier konnten wir einen erfahrenen und kompetenten Gesch\\u00e4ftsf\\u00fchrer f\\u00fcr das Unternehmen gewinnen. Herr Desimeier kennt das Herrmann Gesch\\u00e4ft zudem seit vielen Jahren, zuletzt in der Position des Niederlassungsleiter der Herrmann GmbH - Niederlassung Essen.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\\"><strong style=\\"box-sizing: border-box;\\">Herrmann Geb\\u00e4udesanierung GmbH<\\/strong>\\u00a0<br style=\\"box-sizing: border-box;\\" \\/>Hoppe 3<br style=\\"box-sizing: border-box;\\" \\/>45549 Sprockh\\u00f6vel<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Tel. 02339 929 82 - 30<br style=\\"box-sizing: border-box;\\" \\/>Fax 02339 929 82 - 33<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\\"><strong style=\\"box-sizing: border-box;\\">Achtung:<\\/strong><br style=\\"box-sizing: border-box;\\" \\/>Die neue Internetpr\\u00e4senz befindet sich aktuell noch im Aufbau. Mehr Informationen finden Sie in K\\u00fcrze auf der Website der Herrmann Geb\\u00e4udesanierung GmbH unter\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" title=\\"www.herrmann-san.de\\" href=\\"http:\\/\\/www.herrmann-san.de\\/\\" target=\\"_blank\\">www.herrmann-san.de<\\/a>\\u00a0Bis dahin finden Sie alle relevanten Informationen zum Unternehmen weiterhin auf der Website\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" title=\\"www.duwesan.de\\" href=\\"http:\\/\\/www.duwesan.de\\/\\" target=\\"_blank\\">www.duwesan.de<\\/a>.<\\/p>\\r\\n","fulltext":"\\r\\n<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Im Zeichen der Energiewende!<\\/h4>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\\"><img src=\\"images\\/Im-Zeichen-der-Energiewende.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; text-align: justify;\\">Neben zahlreichen anderen Themen sind Energiesparende Ger\\u00e4te auf dem Messekongress \\"Schadenmanagement &amp; Assistance\\" in Leipzig f\\u00fcr viele Versicherungen ein gro\\u00dfes Thema.\\u00a0<br style=\\"box-sizing: border-box;\\" \\/>Wo andere Unternehmen noch dar\\u00fcber sprechen haben WIR bereits gehandelt. Unsere Produktpalette umfasst inzwischen rund 1.000 Ger\\u00e4te der ES Serie von CorroVenta und weitere rund 1.000 Energiesparende Ger\\u00e4te anderer Hersteller.\\u00a0<br style=\\"box-sizing: border-box;\\" \\/>Erfahren Sie mehr \\u00fcber unsere Produktpalette und unsere Arbeit und besuchen Sie uns noch bis einschlie\\u00dflich 21.04.2016 auf dem Messekongress in Leipzig (Ebene 0, Stand 93).<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 24px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\\"><strong style=\\"box-sizing: border-box;\\">Wir freuen uns auf Ihren Besuch!<\\/strong><\\/p>\\r\\n<hr title=\\"Messekongress Schadenmanagement &amp; Assistance\\" class=\\"system-pagebreak\\" \\/>\\r\\n<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Messekongress Schadenmanagement &amp; Assistance<\\/h4>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px;\\">Besuchen Sie uns auf dem Messekongress in Leipzig.<\\/span><\\/p>\\r\\n<p><img src=\\"images\\/Messekongress-Leipzig.jpg\\" alt=\\"\\" \\/><\\/p>","state":1,"catid":"9","created":"2016-07-21 13:20:53","created_by":"745","created_by_alias":"","modified":"2016-07-21 13:20:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 13:20:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(3, 8, 1, '', '2016-07-21 13:23:03', 745, 3689, 'c0c589aaf5b499105214d73ebecbe988d9fde995', '{"id":8,"asset_id":56,"title":"Einsatzgebiet","alias":"einsatzgebiet","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Unser<strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">\\u00a0Einsatzgebiet<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Unser Einsatzgebiet liegt im gesamten Ruhrgebiet, Bergischen Land und Rheinland.<br style=\\"box-sizing: border-box;\\" \\/>Hier eine \\u00dcbersichtskarte:<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\"><img src=\\"images\\/Einsatzgebiet_01_2014.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px;\\"><a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" title=\\"Hier k\\u00f6nnen Sie eine PDF der \\u00dcbersichtskarte downloaden.\\" href=\\"http:\\/\\/www.herrmann-j.de\\/pdf\\/Herrmann-Einsatzgebiet_01_2014.pdf\\" target=\\"_blank\\">Hier k\\u00f6nnen Sie eine PDF der \\u00dcbersichtskarte downloaden.<\\/a><\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px;\\"><a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" title=\\"Unsere Einsatzgebiete nach Orten mit Postleitzahlen (PDF). \\" href=\\"http:\\/\\/www.herrmann-j.de\\/pdf\\/Herrmann-Einsatzgebiet_PLZ_01_2014.pdf\\" target=\\"_blank\\">Unsere Einsatzgebiete nach Orten mit Postleitzahlen (PDF).<\\/a><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"9","created":"2016-07-21 13:23:03","created_by":"745","created_by_alias":"","modified":"2016-07-21 13:23:03","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 13:23:03","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(4, 9, 1, '', '2016-07-21 13:55:20', 745, 2394, '0f8afa23d856e6df420cf4f4d99688c45e76cd54', '{"id":9,"asset_id":61,"title":"Rohrbruchortung","alias":"rohrbruchortung","introtext":"<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Bei Rohrbr\\u00fcchen an Heizungs- und Wasserleitungen gew\\u00e4hrleisten wir innerhalb k\\u00fcrzester Zeit eine Ortung der Leckstelle um das Ausma\\u00df des Geb\\u00e4udeschadens auf ein Minimum zu begrenzen. Unsere Messwagen sind mit modernsten Spezialmessger\\u00e4ten und Diagnoseverfahren ausger\\u00fcstet. Wir setzen hoch aufl\\u00f6sende Infrarotkameras ein, f\\u00fchren \\"Elektro-Akustischen Messungen\\" durch oder setzen das \\"Sp\\u00fcrgasverfahren\\" ein, um f\\u00fcr sie unn\\u00f6tige Stemmarbeiten, L\\u00e4rm, Schmutz und Kosten zu sparen.<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-07-21 13:55:20","created_by":"745","created_by_alias":"","modified":"2016-07-21 13:55:20","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 13:55:20","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(5, 10, 5, '', '2016-07-21 13:56:27', 745, 570, '518d78bf37a0734e3671e038c2dac9c84bee1910', '{"id":10,"asset_id":62,"parent_id":"1","lft":"15","rgt":16,"level":1,"path":null,"extension":"com_content","title":"Dienstleistungen","alias":"dienstleistungen","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:56:27","modified_user_id":null,"modified_time":"2016-07-21 13:56:27","hits":"0","language":"*","version":null}', 0),
(6, 11, 5, '', '2016-07-21 13:57:06', 745, 868, '2a8ba347c2c96c78f461b1f1f18c0a82c50fd2b1', '{"id":11,"asset_id":63,"parent_id":"1","lft":"17","rgt":18,"level":1,"path":null,"extension":"com_content","title":"Referenzen","alias":"referenzen","note":"","description":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Referenzen<\\/span><\\/strong><\\/h2>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:57:06","modified_user_id":null,"modified_time":"2016-07-21 13:57:06","hits":"0","language":"*","version":null}', 0),
(7, 12, 5, '', '2016-07-21 13:57:33', 745, 552, 'f41f69fed1388f539c67aeeef0a93c2716ea4ec7', '{"id":12,"asset_id":64,"parent_id":"1","lft":"19","rgt":20,"level":1,"path":null,"extension":"com_content","title":"Kontakt","alias":"kontakt","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:57:33","modified_user_id":null,"modified_time":"2016-07-21 13:57:33","hits":"0","language":"*","version":null}', 0),
(8, 13, 5, '', '2016-07-21 13:58:54', 745, 739, '70afc12e861b340cbb962a8f96dd6b3beaacb9fc', '{"id":13,"asset_id":65,"parent_id":"10","lft":"16","rgt":17,"level":2,"path":null,"extension":"com_content","title":"Ortung","alias":"ortung","note":"","description":"<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Ortung<\\/h4>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:58:54","modified_user_id":null,"modified_time":"2016-07-21 13:58:54","hits":"0","language":"*","version":null}', 0),
(9, 14, 5, '', '2016-07-21 13:59:26', 745, 751, '771f638340e838945ecc58eeaa393390eb9e4cdd', '{"id":14,"asset_id":66,"parent_id":"10","lft":"18","rgt":19,"level":2,"path":null,"extension":"com_content","title":"Diagnostik","alias":"diagnostik","note":"","description":"<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Diagnostik<\\/h4>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 13:59:26","modified_user_id":null,"modified_time":"2016-07-21 13:59:26","hits":"0","language":"*","version":null}', 0),
(10, 15, 5, '', '2016-07-21 14:00:03', 745, 748, '5c1ac948d096871ae11c7aab3face3a8a9e8c4b4', '{"id":15,"asset_id":67,"parent_id":"10","lft":"20","rgt":21,"level":2,"path":null,"extension":"com_content","title":"Trocknung","alias":"trocknung","note":"","description":"<h4 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Trocknung<\\/h4>","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 14:00:03","modified_user_id":null,"modified_time":"2016-07-21 14:00:03","hits":"0","language":"*","version":null}', 0),
(11, 10, 1, '', '2016-07-21 14:01:52', 745, 3056, '82f3386cf2cc3c1ea9820bb34dd79c5949c2f4ed', '{"id":10,"asset_id":68,"title":"Rohrbruchortung","alias":"rohrbruchortung","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Rohrbruchortung<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Bei Rohrbr\\u00fcchen an Heizungs- und Wasserleitungen gew\\u00e4hrleisten wir innerhalb k\\u00fcrzester Zeit eine Ortung der Leckstelle um das Ausma\\u00df des Geb\\u00e4udeschadens auf ein Minimum zu begrenzen. Unsere Messwagen sind mit modernsten Spezialmessger\\u00e4ten und Diagnoseverfahren ausger\\u00fcstet. Wir setzen hoch aufl\\u00f6sende Infrarotkameras ein, f\\u00fchren \\"Elektro-Akustischen Messungen\\" durch oder setzen das \\"Sp\\u00fcrgasverfahren\\" ein, um f\\u00fcr sie unn\\u00f6tige Stemmarbeiten, L\\u00e4rm, Schmutz und Kosten zu sparen.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"13","created":"2016-07-21 14:01:52","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:01:52","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:01:52","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(12, 11, 1, '', '2016-07-21 14:02:40', 745, 2870, 'b9317c431b33db85c280414a0294505f02f276a0', '{"id":11,"asset_id":69,"title":"Pr\\u00fcfgasverfahren","alias":"pruefgasverfahren","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Pr\\u00fcfgasverfahren<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Diese Messtechnik kommt im Au\\u00dfen- und Innenbereich zum Einsatz. Hierbei wird die Leitung mit einem gesundheitsunsch\\u00e4dlichen und nicht brennbaren Pr\\u00fcfgas, auch Tracergas genannt, bef\\u00fcllt. Feinste Gasspuren im PPM-Bereich k\\u00f6nnen mit einem auf dieses Gas abgestimmten Gassp\\u00fcrger\\u00e4t zuverl\\u00e4ssig gefunden werden.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"13","created":"2016-07-21 14:02:40","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:02:40","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:02:40","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(13, 12, 1, '', '2016-07-21 14:02:55', 745, 4030, '475fbcd9b437d60a9ad337ec945cf5152c89168f', '{"id":12,"asset_id":70,"title":"Videoendoskopie","alias":"videoendoskopie","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Videoendoskopie<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Ein Endoskop ist ein optisches Ger\\u00e4t zur visuellen Inspektion von Hohlr\\u00e4umen und Schichtaufbauten.<br style=\\"box-sizing: border-box;\\" \\/>Als Videoendoskop bezeichnet man eine besondere Ger\\u00e4tekombination zur visuellen Kontrolle schwer zug\\u00e4nglicher Hohlr\\u00e4ume, bestehend aus einem flexiblen Endoskop und einem direkt in der Messsonde integrierten Video-Chip ( CCD ), wodurch eine Video-Aufzeichnung m\\u00f6glich wird. \\u00dcber einen TFT-Bild- schirm k\\u00f6nnen sie somit selbst an der \\u00dcberpr\\u00fcfung teilhaben und sich ein Bild von dem Ergebnis der Untersuchung machen.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Eine Untersuchung von Hohlr\\u00e4umen mit Hilfe eines beweglichen Videoskopes, bietet viele Vorteile wie z. B. die zerst\\u00f6rungsfreie Untersuchung oder die fast uneingeschr\\u00e4nkte Zug\\u00e4nglichkeit zur Schadens- findung und \\u00dcberpr\\u00fcfung. Anwendungen f\\u00fcr dieses optische Untersuchungsverfahren sind unter anderem in Sanit\\u00e4r-Vorsatzschalen, Leichtbauw\\u00e4nde , abgehangene Zimmerdecken, Holzbalkeneinschubdecken, Abwasserleitung DN 30 bis DN 100, hinter \\/ unter Einbauschr\\u00e4nke sowie unter Laminat,- Holzb\\u00f6den.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Weitere Spezialpr\\u00fcfungen f\\u00fcr die Industrie findet Ihre Anwendung zur Pr\\u00fcfung von Schwei\\u00dfn\\u00e4hte, zur Rissvermessung, im Anlagenbau und in der Flugzeugtechnik.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"13","created":"2016-07-21 14:02:55","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:02:55","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:02:55","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(14, 9, 1, '', '2016-07-21 14:03:56', 745, 2416, '7afeb80603f39d535b7f6d1e9c2e955720bc0e35', '{"id":9,"asset_id":"61","title":"Rohrbruchortung","alias":"rohrbruchortung","introtext":"<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Bei Rohrbr\\u00fcchen an Heizungs- und Wasserleitungen gew\\u00e4hrleisten wir innerhalb k\\u00fcrzester Zeit eine Ortung der Leckstelle um das Ausma\\u00df des Geb\\u00e4udeschadens auf ein Minimum zu begrenzen. Unsere Messwagen sind mit modernsten Spezialmessger\\u00e4ten und Diagnoseverfahren ausger\\u00fcstet. Wir setzen hoch aufl\\u00f6sende Infrarotkameras ein, f\\u00fchren \\"Elektro-Akustischen Messungen\\" durch oder setzen das \\"Sp\\u00fcrgasverfahren\\" ein, um f\\u00fcr sie unn\\u00f6tige Stemmarbeiten, L\\u00e4rm, Schmutz und Kosten zu sparen.<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-07-21 13:55:20","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:03:56","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-21 14:03:14","publish_up":"2016-07-21 13:55:20","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(15, 13, 1, '', '2016-07-21 14:04:15', 745, 3578, '345bcefc57a05dc93e7f1ddf3f6f1e09bd233a5c', '{"id":13,"asset_id":71,"title":"Bauwerksdiagnostik","alias":"bauwerksdiagnostik","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Bauwerksdiagnostik<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Durch verdeckte Bauwerksfehler kann Wasser ins Mauerwerk eindringen. Unter Umst\\u00e4nden bilden sich Schimmelpilznester. Eine fr\\u00fchzeitige Ursachenfindung hilft Ihnen\\u00a0<strong style=\\"box-sizing: border-box;\\">Gro\\u00dfsch\\u00e4den<\\/strong>\\u00a0an W\\u00e4nden und D\\u00e4chern zu\\u00a0<strong style=\\"box-sizing: border-box;\\">vermeiden<\\/strong>.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Wir helfen Ihnen gerne mit unseren modernen Diagnoseverfahren und unserer\\u00a0<strong style=\\"box-sizing: border-box;\\">langj\\u00e4hrigen Erfahrung<\\/strong>\\u00a0den versteckten M\\u00e4ngeln auf den Grund zu gehen.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/><strong style=\\"box-sizing: border-box;\\">Falsches L\\u00fcften oder Heizen<\\/strong>\\u00a0kann ebenfalls die Ursache f\\u00fcr Feuchtesch\\u00e4den sein. Wir zeichnen Ihnen gerne die Raumklimadaten mit Hilfe von Langzeitmessungen auf und werten die ermittelten Daten aus. Hieraus k\\u00f6nnen wir die Fehlerursache ableiten.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"14","created":"2016-07-21 14:04:15","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:04:15","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:04:15","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(16, 14, 1, '', '2016-07-21 14:04:50', 745, 3393, '4c8499cde60e8ee5656d8d1809dc84c86f17300a', '{"id":14,"asset_id":72,"title":"Thermografie","alias":"thermografie","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Thermografie<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Mit Hilfe der Thermografie kann man zwar nicht durch W\\u00e4nde sehen, sie kann aber ein genaues Bild davon liefern, wie sich die sichtbare Oberfl\\u00e4che eines Objekts erw\\u00e4rmt oder abgek\\u00fchlt. Fussboden- heizungen, Hohlr\\u00e4ume hinter W\\u00e4nden, Decken oder B\\u00f6den, Heizungs- und Wasserleitungen k\\u00f6nnen so untersucht werden.\\u00a0<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Mit Hilfe einer Thermografiekamera wird W\\u00e4rmestrahlung erfasst und als Farbbild, das so genannte Thermogramm visuell dargestellt. So kann aus dem W\\u00e4rmebild schnell auf das innere des Objekts geschlossen werden. Dieses bleibt dabei unber\\u00fcht wodurch gew\\u00e4hrleistet wird, dass eine zerst\\u00f6rungsfreie Untersuchung erfolgt. Die Auswertung des Thermogramms wird durch einen unserer zertifizierten Messtechniker nach DIN EN 473 vorgenommen.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"14","created":"2016-07-21 14:04:50","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:04:50","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:04:50","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(17, 15, 1, '', '2016-07-21 14:05:53', 745, 5822, 'ac62b1261184bd86a2a031abdca1cb063acad793', '{"id":15,"asset_id":73,"title":"BlowerDoor-Messung","alias":"blowerdoor-messung","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">BlowerDoor-Messung<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Um ein optimales Wohngef\\u00fchl zu erreichen, ist es erforderlich, dass ein Geb\\u00e4ude eine m\\u00f6glichst luftdichte Au\\u00dfenh\\u00fclle hat. Damit wir Leckagen in der H\\u00fclle eines Hauses oder einer Halle orten k\\u00f6nnen, ermitteln wir die Luftwechselrate (n50-Wert) mit Hilfe der BlowerDoor-Messung (Differenzdruck-Messverfahren).<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Man simuliert auf das Geb\\u00e4ude eine konstante Windlast mit Hilfe eines Ventilators mit kalibrierter Messblende. Dabei wird Luft in das Geb\\u00e4ude hineingedr\\u00fcckt oder herausgesogen. Die M\\u00e4ngel sind dann mit Hilfe eines Luftgeschwindigkeitsmessers, eines Nebelger\\u00e4tes oder einer Thermografiekamera feststellbar.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Das Verfahren f\\u00fchren wir Ihnen an jedem Neu- oder Umbau sowie an Hallen durch. Wir helfen Ihr Geb\\u00e4ude luftdicht zu machen, damit Bausch\\u00e4den nicht vorprogrammiert sind.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Das BlowerDoor-Messsystem zeichnet sich durch seinen sehr gro\\u00dfen Messbereich von 19 m\\u00b3\\/h bis 7.200 m\\u00b3\\/h aus. Es ist dadurch universell einsetzbar sowohl f\\u00fcr die Luftdichtheitsmessung von Passivh\\u00e4usern, neu errichteten Einfamilienh\\u00e4usern und Altbauten.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">F\\u00fcr die Messung gro\\u00dfer Industriehallen und Verwaltungsgeb\\u00e4ude k\\u00f6nnen mehrere BlowerDoor- Ventilatoren einfach kombiniert werden. Der automatische Messablauf wird f\\u00fcr Sie verst\\u00e4ndlich und nachvollziehbar auf dem Laptop dargestellt. Alle relevanten Daten werden per Knopfdruck in den normgerechten BlowerDoor-Pr\\u00fcfbericht \\u00fcbernommen und k\\u00f6nnen noch vor Ort ausgewertet werden.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Setzen Sie BlowerDoor-Messungen zur Qualit\\u00e4tssicherung am Bau ein: Vermeiden Sie Feuchteeintr\\u00e4ge in die Baukonstruktion durch Undichtigkeiten in der Geb\\u00e4udeh\\u00fclle. Die luftdichte Geb\\u00e4udeh\\u00fclle ist zudem Voraussetzung f\\u00fcr die Energieeffizienz eines Geb\\u00e4udes und damit ein wesentliches Kriterium auch in der Energieberatung: Erst wenn unerw\\u00fcnschte Leckagen in der Geb\\u00e4udeh\\u00fclle beseitigt werden, erreichen energetische Ma\\u00dfnahmen wie der Einbau neuer Fenster oder Heizsysteme ihr Potenzial zur Energieeinsparung.<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Leicht und verst\\u00e4ndlich...<\\/p>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px;\\">\\r\\n<div class=\\"col-sm-5\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 365.625px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; font-size: 12px;\\">Blowerdoor-Messung\\u00a0<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; font-size: 12px;\\">\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"14","created":"2016-07-21 14:05:53","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:05:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:05:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0);
INSERT INTO `t30ib_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(18, 16, 1, '', '2016-07-21 14:06:27', 745, 3432, '07bd318b14cc2dcad70cea0925f556f1bbb61d86', '{"id":16,"asset_id":74,"title":"Spezialtrocknung","alias":"spezialtrocknung","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Spezialtrocknung<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Die technische Austrocknung der durchn\\u00e4ssten Bausubstanzen nach einem Wasserschaden ist von zahlreichen Faktoren abh\\u00e4ngig. Einige wichtige Verfahren sind unter anderem die \\u00dcberdrucktrocknung und Unterdrucktrocknung von D\\u00e4mmschichten.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Die Vorteile der Spezialtrocknung:<\\/p>\\r\\n<ul style=\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px;\\">\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">Oberbodenerhalt<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">Keine Betriebsunterbrechnung<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">Auslagerung der Trocknungsger\\u00e4te<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">Keine Stolperfallen<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">Ger\\u00e4uschlose Trockung<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"15","created":"2016-07-21 14:06:27","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:06:27","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:06:27","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(19, 17, 1, '', '2016-07-21 14:06:53', 745, 3265, '41639f6fff4c28db716fc585e0a65e3873759082', '{"id":17,"asset_id":75,"title":"Bautrocknung","alias":"bautrocknung","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Bautrocknung<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Heutzutage wird der Bauprozess jedoch immer mehr unter wirtschaftlichen Gesichtspunkten betrachtet und unter hohem Kosten- und Termindruck durchgef\\u00fchrt. Daher machen sich immer mehr Bauunternehmer und Bauherrn die Vorteile einer technischen Trocknung zu Nutze.\\u00a0<br style=\\"box-sizing: border-box;\\" \\/>So wird ein z\\u00fcgiger Baufortschritt gew\\u00e4hrleistet und auch bei widrigen Witterungsumst\\u00e4nden wird eine zuverl\\u00e4ssige Trocknung erreicht. Zudem erleichtern kalkulierbare Trocknungszeiten die Terminierung aller Gewerke. Durch den bereits trocknen Bauk\\u00f6rper kommt es zu drastischen Senkungen der Heiz- kosten in den ersten Heizperioden. Auf diese Weise lohnt sich der finanzielle Einsatz f\\u00fcr die technische Trocknung nachhaltig.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"15","created":"2016-07-21 14:06:53","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:06:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:06:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(20, 18, 1, '', '2016-07-21 14:07:35', 745, 3669, '8cfd4a8803f08550a1da0da82d5fa118c9fee00f', '{"id":18,"asset_id":76,"title":"Infrarot-Trocknung","alias":"infrarot-trocknung","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Infrarot-Trocknung<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Beim aufheizen der Wandfl\\u00e4che mit einer Infrarotplatte wird durch das Partikeldruckgef\\u00e4lle der Wassergehalt zur Oberfl\\u00e4che gef\\u00fchrt und dort an die Umgebung abgegeben. Durch den zus\\u00e4tzlichen Einsatz von Kondenstrocknern und Ventilatoren wird die Entfeuchtung beschleunigt.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Ein weiterer wichtiger Vorteil ist, dass das Austreiben der Feuchte aus der Tiefe der Wand in einem wesentlich k\\u00fcrzeren Zeitraum als mit herk\\u00f6mmlichen Verfahren erfolgt. Vergleicht man die Gesamt- kosten einer Trocknung mit Entfeuchtern und zus\\u00e4tzlich mit dem Einsatz der speziellen Infrarot- trocknung, so k\\u00f6nnen Zeiteinsparungen von ca. 50 % erzielt werden.<br style=\\"box-sizing: border-box;\\" \\/><br style=\\"box-sizing: border-box;\\" \\/>Ein zus\\u00e4tzlicher Vorteil: Die meist mit der Feuchte auftretenden Mikroorganismen (Schimmel, usw.) werden an der Oberfl\\u00e4che durch die W\\u00e4rme bzw. den Entzug der Feuchte abget\\u00f6tet. Es handelt sich um eine Infrarot-Strahlung \\u00e4hnlich der Strahlung von Kaminen, \\u00d6fen oder Rotlichtlampen.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"15","created":"2016-07-21 14:07:35","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:07:35","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:07:35","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(21, 19, 1, '', '2016-07-21 14:08:54', 745, 2859, '1f1124b46e82c3380e46e451afacbf6f2aa65b73', '{"id":19,"asset_id":77,"title":"Referenzen","alias":"referenzen","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Unsere Referenzen<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Unsere Auftraggeber vertrauen auf unseren Sachverstand, Qualit\\u00e4t und Zuverl\\u00e4ssigkeit.<br style=\\"box-sizing: border-box;\\" \\/>Daher geh\\u00f6ren diese Versicherer zu unseren Partnern:<\\/p>\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\"><img src=\\"images\\/referenzen_10-2014.png\\" alt=\\"\\" \\/><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"11","created":"2016-07-21 14:08:54","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:08:54","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:08:54","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(22, 20, 1, '', '2016-07-21 14:11:25', 745, 2618, 'f4bf4aca467579996d239fdc4731dc546ecfa383', '{"id":20,"asset_id":78,"title":"Schadensformular","alias":"schadensformular","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\"><strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Schadensformular<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px; line-height: 24px; text-align: justify;\\">Hier k\\u00f6nnen Sie bequem ihren Schadenfall melden. Bitte f\\u00fcllen Sie die nachfolgenden Felder aus.<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"12","created":"2016-07-21 14:11:25","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:11:25","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:11:25","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(23, 21, 1, '', '2016-07-21 14:11:47', 745, 7347, '716b1766950dd871e0b8a1ee413a100293265ac1', '{"id":21,"asset_id":79,"title":"Standorte","alias":"standorte","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Herrmann GmbH:\\u00a0<strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Standorte<\\/span><\\/strong><\\/h2>\\r\\n<div class=\\"row\\" style=\\"box-sizing: border-box; margin-right: -15px; margin-left: -15px; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 22px;\\">\\r\\n<div class=\\"col-md-12\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 877.5px;\\">\\r\\n<div class=\\"col-md-4\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;\\">\\r\\n<div class=\\"contact-details\\" style=\\"box-sizing: border-box;\\">\\r\\n<h4 style=\\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Zentrale Dortmund<\\/h4>\\r\\n<ul class=\\"contact\\" style=\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;\\">\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0Deusener Str. 100<br style=\\"box-sizing: border-box;\\" \\/>44369 Dortmund<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefon:<\\/strong>\\u00a00231 - 793030 - 0<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefax:<\\/strong>\\u00a00231 - 793030 - 22<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Email:<\\/strong>\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"mailto:info@herrmann-j.de\\">info@herrmann-j.de<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-4\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;\\">\\r\\n<div class=\\"contact-details\\" style=\\"box-sizing: border-box;\\">\\r\\n<h4 style=\\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Niederlassung Sprockh\\u00f6vel<\\/h4>\\r\\n<ul class=\\"contact\\" style=\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;\\">\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0Hoppe 3<br style=\\"box-sizing: border-box;\\" \\/>45549 Sprockh\\u00f6vel<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefon:<\\/strong>\\u00a002339 - 929 828<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefax:<\\/strong>\\u00a002339 - 929 822<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Email:<\\/strong>\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"mailto:info@herrmann-j.de\\">info@herrmann-j.de<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\"col-md-4\\" style=\\"box-sizing: border-box; position: relative; min-height: 1px; padding-right: 15px; padding-left: 15px; float: left; width: 282.484px;\\">\\r\\n<div class=\\"contact-details\\" style=\\"box-sizing: border-box;\\">\\r\\n<h4 style=\\"box-sizing: border-box; font-family: inherit; font-weight: 400; line-height: 27px; color: #c40014; margin: 0px 0px 14px; font-size: 1.4em;\\">Niederlassung Essen<\\/h4>\\r\\n<ul class=\\"contact\\" style=\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 10px; list-style: none outside none; padding-left: 0px;\\">\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0Alte Landstra\\u00dfe 3c<br style=\\"box-sizing: border-box;\\" \\/>45329 Essen<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefon:<\\/strong>\\u00a00201 - 2795 2020<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Telefax:<\\/strong>\\u00a00201 - 2795 2222<\\/p>\\r\\n<\\/li>\\r\\n<li style=\\"box-sizing: border-box; line-height: 24px;\\">\\r\\n<p style=\\"box-sizing: border-box; margin: 0px 0px 20px;\\">\\u00a0<strong style=\\"box-sizing: border-box;\\">Email:<\\/strong>\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"mailto:info@herrmann-j.de\\">info@herrmann-j.de<\\/a><\\/p>\\r\\n<\\/li>\\r\\n<\\/ul>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","fulltext":"","state":1,"catid":"12","created":"2016-07-21 14:11:47","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:11:47","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:11:47","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(24, 22, 1, '', '2016-07-21 14:24:06', 745, 2112, '7ce38b02c6ae29ec229cd610bce06ac0a4708129', '{"id":22,"asset_id":80,"title":" Kontaktformular","alias":"kontaktformular","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Fragen, Anregungen, W\\u00fcnsche?<br style=\\"box-sizing: border-box;\\" \\/>Nutzen Sie\\u00a0<strong style=\\"box-sizing: border-box;\\"><span style=\\"box-sizing: border-box; color: #c40014;\\">Unser Kontaktformular<\\/span><\\/strong><\\/h2>","fulltext":"","state":1,"catid":"12","created":"2016-07-21 14:24:06","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:24:06","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:24:06","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(25, 23, 1, '', '2016-07-21 14:58:26', 745, 5390, '84269ef9b75b2fef11f83c853a99d4eb88078be2', '{"id":23,"asset_id":83,"title":"Home","alias":"home","introtext":"<h2 class=\\"short word-rotator-title\\" style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 54px; color: #0e0e0e; margin: 0px 0px 15px; font-size: 2em; letter-spacing: -1px; text-align: center;\\">Herrmann GmbH\\u00a0<strong class=\\"inverted\\" style=\\"box-sizing: border-box; color: #ffffff; display: inline-block; padding-left: 10px; padding-right: 10px; min-height: 60px; background-color: #c40014;\\"><span class=\\"word-rotate active\\" style=\\"box-sizing: border-box; visibility: visible; width: auto; height: 54px; margin-bottom: -12px; display: inline-block; overflow: hidden; position: relative;\\"><span class=\\"word-rotate-items\\" style=\\"box-sizing: border-box; position: relative; top: -108px; width: auto;\\"><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Trocknung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Diagnostik<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><\\/span><\\/span><\\/strong>\\u00a0auch in Ihrer N\\u00e4he.<\\/h2>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\">Die Firma Herrmann GmbH bietet alle Leistungen der\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/rohrbruchortung.html\\">Ortungstechnik<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/spezialtrocknung.html\\">Trocknungstechnik<\\/a>, der<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/dienstleistungen.html\\">Wasserschadenbeseitigung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/wiederherstellung.html\\">Sanierung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/pruefung-privater-abwasserleitungen.html\\">Dichtheitspr\\u00fcfung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/schimmelpilzbehandlung.html\\">Schimmelpilzbehandlung<\\/a>\\u00a0und\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/blowerdoor.html\\">Diagnostik<\\/a>\\u00a0im gesamten<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Ruhrgebiet<\\/a>, dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Bergischen Land<\\/a>\\u00a0und dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Rheinland<\\/a>\\u00a0an.<\\/p>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\"><span style=\\"box-sizing: border-box; color: #c40014; font-weight: bold;\\">HOTLINE 0231 793030 0<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-07-21 14:58:26","created_by":"745","created_by_alias":"","modified":"2016-07-21 14:58:26","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 14:58:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":3,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(26, 16, 5, '', '2016-07-21 15:28:09', 745, 546, 'd7f6b190a06b1700979663303fe9425b05eb052b', '{"id":16,"asset_id":84,"parent_id":"1","lft":"27","rgt":28,"level":1,"path":null,"extension":"com_content","title":"Home","alias":"home","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-21 15:28:09","modified_user_id":null,"modified_time":"2016-07-21 15:28:09","hits":"0","language":"*","version":null}', 0),
(27, 24, 1, '', '2016-07-21 15:29:53', 745, 3221, '840ce3757853632a2a39342f4c2c833244057aca', '{"id":24,"asset_id":85,"title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"16","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-21 15:29:53","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":1,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(28, 25, 1, '', '2016-07-21 16:46:51', 745, 4155, '4a6f916ac76f490d4427b81bd8f7f15df7256fa9', '{"id":25,"asset_id":89,"title":"Firmenvideos","alias":"firmenvideos","introtext":"<p>Firmenvideos<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<table style=\\"width: 604.6px; float: left;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Imagefilm\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik\\u00a0<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\"><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/UU4Dv9FAbOU\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Leckortung und Trocknung von Wassersch\\u00e4den<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Fp85vcwhlkk\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Schimmelpilzbehandlung<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/hvLyu3MUpdo\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Blowerdoor-Messung<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/cwemiytdib8\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Ceravogue - Wiederherstellung keramischer Bodenbel\\u00e4ge<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Qu16jmhubYI\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-07-21 16:46:51","created_by":"745","created_by_alias":"","modified":"2016-07-21 16:46:51","modified_by":null,"checked_out":null,"checked_out_time":null,"publish_up":"2016-07-21 16:46:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":1,"ordering":2,"metakey":"","metadesc":"","access":"1","hits":null,"metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(29, 25, 1, '', '2016-07-21 16:49:38', 745, 4165, '87dc82539b26ed9064cf381041c1812b5684433e', '{"id":25,"asset_id":"89","title":"Firmenvideos","alias":"firmenvideos","introtext":"<p>Firmenvideos<\\/p>\\r\\n<p>\\u00a0\\u00a0<\\/p>\\r\\n<table style=\\"width: 604.6px; float: left;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Imagefilm\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik\\u00a0<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\"><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/UU4Dv9FAbOU\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Leckortung und Trocknung von Wassersch\\u00e4den<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Fp85vcwhlkk\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Schimmelpilzbehandlung<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/hvLyu3MUpdo\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Blowerdoor-Messung<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/cwemiytdib8\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 433px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Ceravogue - Wiederherstellung keramischer Bodenbel\\u00e4ge<\\/span><\\/td>\\r\\n<td style=\\"width: 134.6px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Qu16jmhubYI\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-07-21 16:46:51","created_by":"745","created_by_alias":"","modified":"2016-07-21 16:49:38","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-21 16:48:42","publish_up":"2016-07-21 16:46:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0);
INSERT INTO `t30ib_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(30, 25, 1, '', '2016-07-21 16:54:44', 745, 4148, '844387dbe45b1ced0c01e537e1d40eb25a81ba5d', '{"id":25,"asset_id":"89","title":"Firmenvideos","alias":"firmenvideos","introtext":"<p>Firmenvideos<\\/p>\\r\\n<p>\\u00a0\\u00a0<\\/p>\\r\\n<table style=\\"width: 409px; float: left;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 298px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Imagefilm\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik\\u00a0<\\/span><\\/td>\\r\\n<td style=\\"width: 80px;\\"><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/UU4Dv9FAbOU\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 298px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Leckortung und Trocknung von Wassersch\\u00e4den<\\/span><\\/td>\\r\\n<td style=\\"width: 80px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Fp85vcwhlkk\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 298px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Schimmelpilzbehandlung<\\/span><\\/td>\\r\\n<td style=\\"width: 80px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/hvLyu3MUpdo\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 298px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Blowerdoor-Messung<\\/span><\\/td>\\r\\n<td style=\\"width: 80px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/cwemiytdib8\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 298px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Ceravogue - Wiederherstellung keramischer Bodenbel\\u00e4ge<\\/span><\\/td>\\r\\n<td style=\\"width: 80px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Qu16jmhubYI\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-07-21 16:46:51","created_by":"745","created_by_alias":"","modified":"2016-07-21 16:54:44","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-21 16:54:26","publish_up":"2016-07-21 16:46:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(31, 25, 1, '', '2016-07-21 16:55:54', 745, 4124, '754a08fc521d033bbd7e809c5e9f453376609789', '{"id":25,"asset_id":"89","title":"Firmenvideos","alias":"firmenvideos","introtext":"<p>Firmenvideos<\\/p>\\r\\n<table style=\\"width: 408px; float: left;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Imagefilm\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik\\u00a0<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\"><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/UU4Dv9FAbOU\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Leckortung und Trocknung von Wassersch\\u00e4den<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Fp85vcwhlkk\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Schimmelpilzbehandlung<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/hvLyu3MUpdo\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Blowerdoor-Messung<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/cwemiytdib8\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Ceravogue - Wiederherstellung keramischer Bodenbel\\u00e4ge<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Qu16jmhubYI\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"16","created":"2016-07-21 16:46:51","created_by":"745","created_by_alias":"","modified":"2016-07-21 16:55:54","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-21 16:54:59","publish_up":"2016-07-21 16:46:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"1","language":"*","xreference":""}', 0),
(32, 23, 1, '', '2016-07-27 14:21:52', 745, 5412, '813c41e63011ea27c55323f1d19bc1fc68e98805', '{"id":23,"asset_id":"83","title":"Home","alias":"home","introtext":"<h2 class=\\"short word-rotator-title\\" style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 54px; color: #0e0e0e; margin: 0px 0px 15px; font-size: 2em; letter-spacing: -1px; text-align: center;\\">Herrmann GmbH\\u00a0<strong class=\\"inverted\\" style=\\"box-sizing: border-box; color: #ffffff; display: inline-block; padding-left: 10px; padding-right: 10px; min-height: 60px; background-color: #c40014;\\"><span class=\\"word-rotate active\\" style=\\"box-sizing: border-box; visibility: visible; width: auto; height: 54px; margin-bottom: -12px; display: inline-block; overflow: hidden; position: relative;\\"><span class=\\"word-rotate-items\\" style=\\"box-sizing: border-box; position: relative; top: -108px; width: auto;\\"><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Trocknung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Diagnostik<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><\\/span><\\/span><\\/strong>\\u00a0auch in Ihrer N\\u00e4he.<\\/h2>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\">Die Firma Herrmann GmbH bietet alle Leistungen der\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/rohrbruchortung.html\\">Ortungstechnik<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/spezialtrocknung.html\\">Trocknungstechnik<\\/a>, der<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/dienstleistungen.html\\">Wasserschadenbeseitigung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/wiederherstellung.html\\">Sanierung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/pruefung-privater-abwasserleitungen.html\\">Dichtheitspr\\u00fcfung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/schimmelpilzbehandlung.html\\">Schimmelpilzbehandlung<\\/a>\\u00a0und\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/blowerdoor.html\\">Diagnostik<\\/a>\\u00a0im gesamten<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Ruhrgebiet<\\/a>, dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Bergischen Land<\\/a>\\u00a0und dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Rheinland<\\/a>\\u00a0an.<\\/p>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\"><span style=\\"box-sizing: border-box; color: #c40014; font-weight: bold;\\">HOTLINE 0231 793030 0<\\/span><\\/p>","fulltext":"","state":1,"catid":"2","created":"2016-07-21 14:58:26","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:21:52","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:21:22","publish_up":"2016-07-21 14:58:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(33, 17, 5, '', '2016-07-27 14:29:34', 745, 564, '0e650f4ccc0a439d586486771b44bebabcb2a0c4', '{"id":17,"asset_id":90,"parent_id":"1","lft":"29","rgt":30,"level":1,"path":null,"extension":"com_content","title":"Herrmann GmbH","alias":"herrmann-gmbh","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-27 14:29:34","modified_user_id":null,"modified_time":"2016-07-27 14:29:34","hits":"0","language":"*","version":null}', 0),
(34, 23, 1, '', '2016-07-27 14:29:53', 745, 5413, '80fc409ca39634036ac2d88815b9395bbf0a20c0', '{"id":23,"asset_id":"83","title":"Home","alias":"home","introtext":"<h2 class=\\"short word-rotator-title\\" style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 54px; color: #0e0e0e; margin: 0px 0px 15px; font-size: 2em; letter-spacing: -1px; text-align: center;\\">Herrmann GmbH\\u00a0<strong class=\\"inverted\\" style=\\"box-sizing: border-box; color: #ffffff; display: inline-block; padding-left: 10px; padding-right: 10px; min-height: 60px; background-color: #c40014;\\"><span class=\\"word-rotate active\\" style=\\"box-sizing: border-box; visibility: visible; width: auto; height: 54px; margin-bottom: -12px; display: inline-block; overflow: hidden; position: relative;\\"><span class=\\"word-rotate-items\\" style=\\"box-sizing: border-box; position: relative; top: -108px; width: auto;\\"><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Trocknung<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Diagnostik<\\/span><span style=\\"box-sizing: border-box; display: block; white-space: nowrap;\\">Ortung<\\/span><\\/span><\\/span><\\/strong>\\u00a0auch in Ihrer N\\u00e4he.<\\/h2>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\">Die Firma Herrmann GmbH bietet alle Leistungen der\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/rohrbruchortung.html\\">Ortungstechnik<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/spezialtrocknung.html\\">Trocknungstechnik<\\/a>, der<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/dienstleistungen.html\\">Wasserschadenbeseitigung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/wiederherstellung.html\\">Sanierung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/pruefung-privater-abwasserleitungen.html\\">Dichtheitspr\\u00fcfung<\\/a>,\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/schimmelpilzbehandlung.html\\">Schimmelpilzbehandlung<\\/a>\\u00a0und\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/blowerdoor.html\\">Diagnostik<\\/a>\\u00a0im gesamten<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Ruhrgebiet<\\/a>, dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Bergischen Land<\\/a>\\u00a0und dem\\u00a0<a style=\\"box-sizing: border-box; color: #c40014; outline: none !important; background: transparent;\\" href=\\"http:\\/\\/www.herrmann-j.de\\/einsatzgebiet.html\\">Rheinland<\\/a>\\u00a0an.<\\/p>\\r\\n<p class=\\"featured lead\\" style=\\"box-sizing: border-box; margin: 0px 0px 20px; color: #777777; line-height: 1.5em; font-size: 1.6em; font-family: \'Open Sans\', Arial, sans-serif; text-align: center;\\"><span style=\\"box-sizing: border-box; color: #c40014; font-weight: bold;\\">HOTLINE 0231 793030 0<\\/span><\\/p>","fulltext":"","state":1,"catid":"17","created":"2016-07-21 14:58:26","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:29:53","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:29:43","publish_up":"2016-07-21 14:58:26","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"3","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(35, 24, 1, '', '2016-07-27 14:43:43', 745, 3243, '3e03cffea90f4fdb3dc3987079d2f07854e23e61', '{"id":24,"asset_id":"85","title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"16","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:43:43","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:43:30","publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":2,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(36, 18, 5, '', '2016-07-27 14:44:04', 745, 556, '986a085d0e92b0d2ea279af4e4472b1fa0d21edf', '{"id":18,"asset_id":91,"parent_id":"1","lft":"31","rgt":32,"level":1,"path":null,"extension":"com_content","title":"main-left","alias":"main-left","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-27 14:44:04","modified_user_id":null,"modified_time":"2016-07-27 14:44:04","hits":"0","language":"*","version":null}', 0),
(37, 19, 5, '', '2016-07-27 14:44:19', 745, 560, '2577fcf9fce4633c3fc91f30b035f729ff3865a3', '{"id":19,"asset_id":92,"parent_id":"1","lft":"33","rgt":34,"level":1,"path":null,"extension":"com_content","title":"main-center","alias":"main-center","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-27 14:44:19","modified_user_id":null,"modified_time":"2016-07-27 14:44:19","hits":"0","language":"*","version":null}', 0),
(38, 20, 5, '', '2016-07-27 14:44:36', 745, 558, '533d1f557cb9402dc2e5e82f511120d62414f5df', '{"id":20,"asset_id":93,"parent_id":"1","lft":"35","rgt":36,"level":1,"path":null,"extension":"com_content","title":"main-right","alias":"main-right","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-27 14:44:36","modified_user_id":null,"modified_time":"2016-07-27 14:44:36","hits":"0","language":"*","version":null}', 0),
(39, 24, 1, '', '2016-07-27 14:44:58', 745, 3243, '986fd78abaa87302d1521c4ebd8f73fc4e591886', '{"id":24,"asset_id":"85","title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>","state":1,"catid":"18","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:44:58","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:44:51","publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":3,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(40, 24, 1, '', '2016-07-27 14:48:01', 745, 3314, '51b42152dadaf5b0e7326c3712c17aa5b29b60bf', '{"id":24,"asset_id":"85","title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\"images\\/Einsatzgebiet_01_2014.jpg\\" alt=\\"\\" \\/><\\/p>","state":1,"catid":"18","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:48:01","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:46:38","publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":4,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(41, 25, 1, '', '2016-07-27 14:49:20', 745, 4124, '100fcf4068ea84e598c8a1ef547e6a3ddd8cf834', '{"id":25,"asset_id":"89","title":"Firmenvideos","alias":"firmenvideos","introtext":"<p>Firmenvideos<\\/p>\\r\\n<table style=\\"width: 408px; float: left;\\">\\r\\n<tbody>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Imagefilm\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">der Firma Herrmann GmbH Ortungs- und Trocknungstechnik\\u00a0<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\"><iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/UU4Dv9FAbOU\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Leckortung und Trocknung von Wassersch\\u00e4den<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Fp85vcwhlkk\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Schimmelpilzbehandlung<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/hvLyu3MUpdo\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\">\\u00a0<span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Blowerdoor-Messung<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/cwemiytdib8\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<tr>\\r\\n<td style=\\"width: 244px;\\"><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 12px; line-height: 24px;\\">Ceravogue - Wiederherstellung keramischer Bodenbel\\u00e4ge<\\/span><\\/td>\\r\\n<td style=\\"width: 10px;\\">\\u00a0<iframe src=\\"https:\\/\\/www.youtube.com\\/embed\\/Qu16jmhubYI\\" width=\\"311\\" height=\\"175\\" frameborder=\\"0\\" allowfullscreen=\\"\\"><\\/iframe><\\/td>\\r\\n<\\/tr>\\r\\n<\\/tbody>\\r\\n<\\/table>\\r\\n<p>\\u00a0<\\/p>","fulltext":"","state":1,"catid":"19","created":"2016-07-21 16:46:51","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:49:20","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:49:10","publish_up":"2016-07-21 16:46:51","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"2","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(42, 24, 1, '', '2016-07-27 14:50:47', 745, 3343, 'e229d8b4a2a2e9b2681dba1776a6ddcf99d0b8ca', '{"id":24,"asset_id":"85","title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" width=\\"309\\" height=\\"309\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\"images\\/Einsatzgebiet_01_2014.jpg\\" alt=\\"\\" \\/><\\/p>","state":1,"catid":"18","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:50:47","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:50:31","publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":5,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(43, 24, 1, '', '2016-07-27 14:55:28', 745, 3343, '3de811842449d14be94739b6b7136b90833e4aa4', '{"id":24,"asset_id":"85","title":"Verehrte Kunden","alias":"verehrte-kunden","introtext":"<h2 style=\\"box-sizing: border-box; font-family: \'Open Sans\', Arial, sans-serif; line-height: 42px; color: #0e0e0e; margin: 0px 0px 32px; font-size: 2em; letter-spacing: -1px;\\">Verehrte Kunden<\\/h2>\\r\\n<p><img src=\\"images\\/joerg_herrmann.jpg\\" alt=\\"\\" width=\\"270\\" height=\\"270\\" \\/><\\/p>\\r\\n<p><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Seit vielen Jahren sind vielf\\u00e4ltigste Wassersch\\u00e4den eine stete Herausforderung f\\u00fcr unser Unternehmen gewesen. Wir haben uns ihnen erfolgreich gestellt und unseren Kunden damit Sicherheit und ein gutes Gef\\u00fchl zur\\u00fcck geben k\\u00f6nnen.\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Testen Sie unsere Leistungen!\\u00a0<\\/span><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><br style=\\"box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\" \\/><span style=\\"color: #777777; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; line-height: 24px; text-align: justify;\\">Ihr J\\u00f6rg Herrmann<\\/span><\\/p>\\r\\n","fulltext":"\\r\\n<p>\\u00a0<\\/p>\\r\\n<p><img src=\\"images\\/Einsatzgebiet_01_2014.jpg\\" alt=\\"\\" \\/><\\/p>","state":1,"catid":"18","created":"2016-07-21 15:29:53","created_by":"745","created_by_alias":"","modified":"2016-07-27 14:55:28","modified_by":"745","checked_out":"745","checked_out_time":"2016-07-27 14:50:47","publish_up":"2016-07-21 15:29:53","publish_down":"0000-00-00 00:00:00","images":"{\\"image_intro\\":\\"\\",\\"float_intro\\":\\"\\",\\"image_intro_alt\\":\\"\\",\\"image_intro_caption\\":\\"\\",\\"image_fulltext\\":\\"\\",\\"float_fulltext\\":\\"\\",\\"image_fulltext_alt\\":\\"\\",\\"image_fulltext_caption\\":\\"\\"}","urls":"{\\"urla\\":false,\\"urlatext\\":\\"\\",\\"targeta\\":\\"\\",\\"urlb\\":false,\\"urlbtext\\":\\"\\",\\"targetb\\":\\"\\",\\"urlc\\":false,\\"urlctext\\":\\"\\",\\"targetc\\":\\"\\"}","attribs":"{\\"show_title\\":\\"\\",\\"link_titles\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_intro\\":\\"\\",\\"info_block_position\\":\\"\\",\\"info_block_show_title\\":\\"\\",\\"show_category\\":\\"\\",\\"link_category\\":\\"\\",\\"show_parent_category\\":\\"\\",\\"link_parent_category\\":\\"\\",\\"show_author\\":\\"\\",\\"link_author\\":\\"\\",\\"show_create_date\\":\\"\\",\\"show_modify_date\\":\\"\\",\\"show_publish_date\\":\\"\\",\\"show_item_navigation\\":\\"\\",\\"show_icons\\":\\"\\",\\"show_print_icon\\":\\"\\",\\"show_email_icon\\":\\"\\",\\"show_vote\\":\\"\\",\\"show_hits\\":\\"\\",\\"show_noauth\\":\\"\\",\\"urls_position\\":\\"\\",\\"alternative_readmore\\":\\"\\",\\"article_layout\\":\\"\\",\\"show_publishing_options\\":\\"\\",\\"show_article_options\\":\\"\\",\\"show_urls_images_backend\\":\\"\\",\\"show_urls_images_frontend\\":\\"\\"}","version":6,"ordering":"1","metakey":"","metadesc":"","access":"1","hits":"0","metadata":"{\\"robots\\":\\"\\",\\"author\\":\\"\\",\\"rights\\":\\"\\",\\"xreference\\":\\"\\"}","featured":"0","language":"*","xreference":""}', 0),
(44, 1, 2, '', '2016-07-30 08:51:52', 745, 1799, '69e7863c7195cf4b1cfcd8f42fd90398faa6b3f3', '{"id":1,"name":"Center Dortmund","alias":"your-name","con_position":"Deusener Str. 100  44369 Dortmund","address":"Deusener Str. 100  44369 Dortmund","suburb":"","state":"","country":"","postcode":"","telephone":"0231 - 793030 - 0","fax":"0231 - 793030 - 22","misc":"","image":"","email_to":"info@herrmann-j.de","default_con":0,"published":"1","checked_out":"745","checked_out_time":"2016-07-30 08:50:25","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2011-01-01 00:00:01","created_by":"745","created_by_alias":"Joomla","modified":"2016-07-30 08:51:52","modified_by":"745","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":2,"hits":"0"}', 0);
INSERT INTO `t30ib_ucm_history` (`version_id`, `ucm_item_id`, `ucm_type_id`, `version_note`, `save_date`, `editor_user_id`, `character_count`, `sha1_hash`, `version_data`, `keep_forever`) VALUES
(45, 1, 2, '', '2016-07-30 08:52:08', 745, 1805, 'c11e62e9a1b7ba43df03f5b1744f6d46d5555a24', '{"id":1,"name":"Center Dortmund","alias":"center-dortmund","con_position":"Deusener Str. 100  44369 Dortmund","address":"Deusener Str. 100  44369 Dortmund","suburb":"","state":"","country":"","postcode":"","telephone":"0231 - 793030 - 0","fax":"0231 - 793030 - 22","misc":"","image":"","email_to":"info@herrmann-j.de","default_con":0,"published":"1","checked_out":"745","checked_out_time":"2016-07-30 08:51:52","ordering":"1","params":"{\\"show_contact_category\\":\\"\\",\\"show_contact_list\\":\\"\\",\\"presentation_style\\":\\"\\",\\"show_tags\\":\\"\\",\\"show_name\\":\\"\\",\\"show_position\\":\\"\\",\\"show_email\\":\\"\\",\\"show_street_address\\":\\"\\",\\"show_suburb\\":\\"\\",\\"show_state\\":\\"\\",\\"show_postcode\\":\\"\\",\\"show_country\\":\\"\\",\\"show_telephone\\":\\"\\",\\"show_mobile\\":\\"\\",\\"show_fax\\":\\"\\",\\"show_webpage\\":\\"\\",\\"show_misc\\":\\"\\",\\"show_image\\":\\"\\",\\"allow_vcard\\":\\"\\",\\"show_articles\\":\\"\\",\\"articles_display_num\\":\\"\\",\\"show_profile\\":\\"\\",\\"show_links\\":\\"\\",\\"linka_name\\":\\"\\",\\"linka\\":false,\\"linkb_name\\":\\"\\",\\"linkb\\":false,\\"linkc_name\\":\\"\\",\\"linkc\\":false,\\"linkd_name\\":\\"\\",\\"linkd\\":false,\\"linke_name\\":\\"\\",\\"linke\\":false,\\"contact_layout\\":\\"\\",\\"show_email_form\\":\\"\\",\\"show_email_copy\\":\\"\\",\\"banned_email\\":\\"\\",\\"banned_subject\\":\\"\\",\\"banned_text\\":\\"\\",\\"validate_session\\":\\"\\",\\"custom_reply\\":\\"\\",\\"redirect\\":\\"\\"}","user_id":0,"catid":"4","access":"1","mobile":"","webpage":false,"sortname1":"","sortname2":"","sortname3":"","language":"*","created":"2011-01-01 00:00:01","created_by":"745","created_by_alias":"Joomla","modified":"2016-07-30 08:52:08","modified_by":"745","metakey":"","metadesc":"","metadata":"{\\"robots\\":\\"\\",\\"rights\\":\\"\\"}","featured":"0","xreference":"","publish_up":"0000-00-00 00:00:00","publish_down":"0000-00-00 00:00:00","version":3,"hits":"0"}', 0),
(46, 21, 5, '', '2016-07-30 08:52:28', 745, 554, '3896caeb51e42fe6bc0bba401e77ad823d71f705', '{"id":21,"asset_id":98,"parent_id":"1","lft":"37","rgt":38,"level":1,"path":null,"extension":"com_content","title":"contacts","alias":"contacts","note":"","description":"","published":"1","checked_out":null,"checked_out_time":null,"access":"1","params":"{\\"category_layout\\":\\"\\",\\"image\\":\\"\\",\\"image_alt\\":\\"\\"}","metadesc":"","metakey":"","metadata":"{\\"author\\":\\"\\",\\"robots\\":\\"\\"}","created_user_id":"745","created_time":"2016-07-30 08:52:28","modified_user_id":null,"modified_time":"2016-07-30 08:52:28","hits":"0","language":"*","version":null}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_updates`
--

CREATE TABLE `t30ib_updates` (
  `update_id` int(11) NOT NULL,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `element` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `folder` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detailsurl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `infourl` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Available Updates';

--
-- Dumping data for table `t30ib_updates`
--

INSERT INTO `t30ib_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(1, 3, 0, 'Czech', '', 'pkg_cs-CZ', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/cs-CZ_details.xml', '', ''),
(2, 3, 0, 'Danish', '', 'pkg_da-DK', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/da-DK_details.xml', '', ''),
(3, 3, 0, 'Dutch', '', 'pkg_nl-NL', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/nl-NL_details.xml', '', ''),
(4, 3, 0, 'Estonian', '', 'pkg_et-EE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/et-EE_details.xml', '', ''),
(5, 3, 0, 'Italian', '', 'pkg_it-IT', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/it-IT_details.xml', '', ''),
(6, 3, 0, 'Khmer', '', 'pkg_km-KH', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/km-KH_details.xml', '', ''),
(7, 3, 0, 'Korean', '', 'pkg_ko-KR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ko-KR_details.xml', '', ''),
(8, 3, 0, 'Latvian', '', 'pkg_lv-LV', 'package', '', 0, '3.4.3.1', '', 'https://update.joomla.org/language/details3/lv-LV_details.xml', '', ''),
(9, 3, 0, 'Macedonian', '', 'pkg_mk-MK', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/mk-MK_details.xml', '', ''),
(10, 3, 0, 'Norwegian Bokmal', '', 'pkg_nb-NO', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/nb-NO_details.xml', '', ''),
(11, 3, 0, 'Norwegian Nynorsk', '', 'pkg_nn-NO', 'package', '', 0, '3.4.2.1', '', 'https://update.joomla.org/language/details3/nn-NO_details.xml', '', ''),
(12, 3, 0, 'Persian', '', 'pkg_fa-IR', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/fa-IR_details.xml', '', ''),
(13, 3, 0, 'Polish', '', 'pkg_pl-PL', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/pl-PL_details.xml', '', ''),
(14, 3, 0, 'Portuguese', '', 'pkg_pt-PT', 'package', '', 0, '3.5.1.4', '', 'https://update.joomla.org/language/details3/pt-PT_details.xml', '', ''),
(15, 3, 0, 'Russian', '', 'pkg_ru-RU', 'package', '', 0, '3.5.0.6', '', 'https://update.joomla.org/language/details3/ru-RU_details.xml', '', ''),
(16, 3, 0, 'English AU', '', 'pkg_en-AU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-AU_details.xml', '', ''),
(17, 3, 0, 'Slovak', '', 'pkg_sk-SK', 'package', '', 0, '3.6.0.3', '', 'https://update.joomla.org/language/details3/sk-SK_details.xml', '', ''),
(18, 3, 0, 'English US', '', 'pkg_en-US', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-US_details.xml', '', ''),
(19, 3, 0, 'Swedish', '', 'pkg_sv-SE', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/sv-SE_details.xml', '', ''),
(20, 3, 0, 'Syriac', '', 'pkg_sy-IQ', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/sy-IQ_details.xml', '', ''),
(21, 3, 0, 'Tamil', '', 'pkg_ta-IN', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ta-IN_details.xml', '', ''),
(22, 3, 0, 'Thai', '', 'pkg_th-TH', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/th-TH_details.xml', '', ''),
(23, 3, 0, 'Turkish', '', 'pkg_tr-TR', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/tr-TR_details.xml', '', ''),
(24, 3, 0, 'Ukrainian', '', 'pkg_uk-UA', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/uk-UA_details.xml', '', ''),
(25, 3, 0, 'Uyghur', '', 'pkg_ug-CN', 'package', '', 0, '3.3.0.1', '', 'https://update.joomla.org/language/details3/ug-CN_details.xml', '', ''),
(26, 3, 0, 'Albanian', '', 'pkg_sq-AL', 'package', '', 0, '3.1.1.1', '', 'https://update.joomla.org/language/details3/sq-AL_details.xml', '', ''),
(27, 3, 0, 'Basque', '', 'pkg_eu-ES', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/eu-ES_details.xml', '', ''),
(28, 3, 0, 'Hindi', '', 'pkg_hi-IN', 'package', '', 0, '3.3.6.1', '', 'https://update.joomla.org/language/details3/hi-IN_details.xml', '', ''),
(29, 3, 0, 'German DE', '', 'pkg_de-DE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-DE_details.xml', '', ''),
(30, 3, 0, 'Portuguese Brazil', '', 'pkg_pt-BR', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/pt-BR_details.xml', '', ''),
(31, 3, 0, 'Serbian Latin', '', 'pkg_sr-YU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sr-YU_details.xml', '', ''),
(32, 3, 0, 'Spanish', '', 'pkg_es-ES', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/es-ES_details.xml', '', ''),
(33, 3, 0, 'Bosnian', '', 'pkg_bs-BA', 'package', '', 0, '3.4.8.1', '', 'https://update.joomla.org/language/details3/bs-BA_details.xml', '', ''),
(34, 3, 0, 'Serbian Cyrillic', '', 'pkg_sr-RS', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sr-RS_details.xml', '', ''),
(35, 3, 0, 'Vietnamese', '', 'pkg_vi-VN', 'package', '', 0, '3.2.1.1', '', 'https://update.joomla.org/language/details3/vi-VN_details.xml', '', ''),
(36, 3, 0, 'Bahasa Indonesia', '', 'pkg_id-ID', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/id-ID_details.xml', '', ''),
(37, 3, 0, 'Finnish', '', 'pkg_fi-FI', 'package', '', 0, '3.5.1.1', '', 'https://update.joomla.org/language/details3/fi-FI_details.xml', '', ''),
(38, 3, 0, 'Swahili', '', 'pkg_sw-KE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/sw-KE_details.xml', '', ''),
(39, 3, 0, 'Montenegrin', '', 'pkg_srp-ME', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/srp-ME_details.xml', '', ''),
(40, 3, 0, 'English CA', '', 'pkg_en-CA', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/en-CA_details.xml', '', ''),
(41, 3, 0, 'French CA', '', 'pkg_fr-CA', 'package', '', 0, '3.5.1.2', '', 'https://update.joomla.org/language/details3/fr-CA_details.xml', '', ''),
(42, 3, 0, 'Welsh', '', 'pkg_cy-GB', 'package', '', 0, '3.3.0.2', '', 'https://update.joomla.org/language/details3/cy-GB_details.xml', '', ''),
(43, 3, 0, 'Sinhala', '', 'pkg_si-LK', 'package', '', 0, '3.3.1.1', '', 'https://update.joomla.org/language/details3/si-LK_details.xml', '', ''),
(44, 3, 0, 'Dari Persian', '', 'pkg_prs-AF', 'package', '', 0, '3.4.4.1', '', 'https://update.joomla.org/language/details3/prs-AF_details.xml', '', ''),
(45, 3, 0, 'Turkmen', '', 'pkg_tk-TM', 'package', '', 0, '3.5.0.1', '', 'https://update.joomla.org/language/details3/tk-TM_details.xml', '', ''),
(46, 3, 0, 'Irish', '', 'pkg_ga-IE', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/ga-IE_details.xml', '', ''),
(47, 3, 0, 'Dzongkha', '', 'pkg_dz-BT', 'package', '', 0, '3.4.5.1', '', 'https://update.joomla.org/language/details3/dz-BT_details.xml', '', ''),
(48, 3, 0, 'Slovenian', '', 'pkg_sl-SI', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/sl-SI_details.xml', '', ''),
(49, 3, 0, 'Spanish CO', '', 'pkg_es-CO', 'package', '', 0, '3.6.0.2', '', 'https://update.joomla.org/language/details3/es-CO_details.xml', '', ''),
(50, 3, 0, 'German CH', '', 'pkg_de-CH', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-CH_details.xml', '', ''),
(51, 3, 0, 'German AT', '', 'pkg_de-AT', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-AT_details.xml', '', ''),
(52, 3, 0, 'German LI', '', 'pkg_de-LI', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-LI_details.xml', '', ''),
(53, 3, 0, 'German LU', '', 'pkg_de-LU', 'package', '', 0, '3.6.0.1', '', 'https://update.joomla.org/language/details3/de-LU_details.xml', '', ''),
(54, 6, 0, '', '', '', 'module', '', 0, '', '', 'http://update.joomlart.com/service/tracking/j16/.xml', '', ''),
(55, 6, 0, 'JA Amazon S3 for joomla 16', '', 'com_com_jaamazons3', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml', '', ''),
(56, 6, 0, 'JA Extenstion Manager Component j16', '', 'com_com_jaextmanager', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml', '', ''),
(57, 6, 0, 'JA Amazon S3 for joomla 2.5 & 3.x', '', 'com_jaamazons3', 'component', '', 1, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml', '', ''),
(58, 6, 0, 'JA Comment Package for Joomla 2.5 & 3.x', '', 'com_jacomment', 'component', '', 1, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/com_jacomment.xml', '', ''),
(59, 6, 0, 'JA Extenstion Manager Component for J3.x', '', 'com_jaextmanager', 'component', '', 1, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml', '', ''),
(60, 6, 0, 'JA Google Storage Package for J2.5 & J3.0', '', 'com_jagooglestorage', 'component', '', 1, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml', '', ''),
(61, 6, 0, 'JA Job Board Package For J25', '', 'com_jajobboard', 'component', '', 1, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml', '', ''),
(62, 6, 0, 'JA K2 Filter Package for J25 & J3.4', '', 'com_jak2filter', 'component', '', 1, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml', '', ''),
(63, 6, 0, 'JA K2 Filter Package for J25 & J30', '', 'com_jak2fiter', 'component', '', 1, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml', '', ''),
(64, 6, 0, 'JA Showcase component for Joomla 1.7', '', 'com_jashowcase', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml', '', ''),
(65, 6, 0, 'JA Voice Package for Joomla 2.5 & 3.x', '', 'com_javoice', 'component', '', 1, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/com_javoice.xml', '', ''),
(66, 6, 0, 'JA Appolio Theme for EasyBlog', '', 'easyblog_theme_appolio', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml', '', ''),
(67, 6, 0, 'JA Biz Theme for EasyBlog', '', 'easyblog_theme_biz', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml', '', ''),
(68, 6, 0, 'JA Bookshop Theme for EasyBlog', '', 'easyblog_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml', '', ''),
(69, 6, 0, 'Theme Community Plus for Easyblog J25 & J30', '', 'easyblog_theme_community_plus', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_community_plus.xml', '', ''),
(70, 6, 0, 'JA Decor Theme for EasyBlog', '', 'easyblog_theme_decor', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml', '', ''),
(71, 6, 0, 'Theme Fixel for Easyblog J25 & J34', '', 'easyblog_theme_fixel', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml', '', ''),
(72, 6, 0, 'Theme Magz for Easyblog J25 & J34', '', 'easyblog_theme_magz', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml', '', ''),
(73, 6, 0, 'JA Muzic Theme for EasyBlog', '', 'easyblog_theme_muzic', 'custom', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml', '', ''),
(74, 6, 0, 'JA Obelisk Theme for EasyBlog', '', 'easyblog_theme_obelisk', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml', '', ''),
(75, 6, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml', '', ''),
(76, 6, 0, 'JA Anion template for Joomla 3.x', '', 'ja_anion', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_anion.xml', '', ''),
(77, 6, 0, 'JA Appolio Template', '', 'ja_appolio', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_appolio.xml', '', ''),
(78, 6, 0, 'JA Argo Template for J3x', '', 'ja_argo', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_argo.xml', '', ''),
(79, 6, 0, 'JA Beranis Template', '', 'ja_beranis', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_beranis.xml', '', ''),
(80, 6, 0, 'JA Bistro Template for Joomla 3.x', '', 'ja_bistro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_bistro.xml', '', ''),
(81, 6, 0, 'JA Blazes Template for J25 & J3x', '', 'ja_blazes', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_blazes.xml', '', ''),
(82, 6, 0, 'JA Bookshop Template', '', 'ja_bookshop', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml', '', ''),
(83, 6, 0, 'JA Brisk Template for J25 & J3x', '', 'ja_brisk', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_brisk.xml', '', ''),
(84, 6, 0, 'JA Business Template for Joomla 3.x', '', 'ja_business', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_business.xml', '', ''),
(85, 6, 0, 'JA Cloris Template for Joomla 3.x', '', 'ja_cloris', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_cloris.xml', '', ''),
(86, 6, 0, 'JA Community PLus Template for Joomla 3.x', '', 'ja_community_plus', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml', '', ''),
(87, 6, 0, 'JA Decor Template', '', 'ja_decor', 'template', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_decor.xml', '', ''),
(88, 6, 0, 'JA Droid Template for Joomla 3.x', '', 'ja_droid', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_droid.xml', '', ''),
(89, 6, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_edenite.xml', '', ''),
(90, 6, 0, 'JA Elastica Template for J25 & J3x', '', 'ja_elastica', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_elastica.xml', '', ''),
(91, 6, 0, 'JA Erio Template for Joomla 2.5 & 3.x', '', 'ja_erio', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_erio.xml', '', ''),
(92, 6, 0, 'Ja Events Template for Joomla 2.5', '', 'ja_events', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_events.xml', '', ''),
(93, 6, 0, 'JA Fubix Template for J25 & J3x', '', 'ja_fubix', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_fubix.xml', '', ''),
(94, 6, 0, 'JA Graphite Template for Joomla 3x', '', 'ja_graphite', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_graphite.xml', '', ''),
(95, 6, 0, 'JA Hawkstore Template', '', 'ja_hawkstore', 'template', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml', '', ''),
(96, 6, 0, 'JA Ironis Template for Joomla 2.5 & 3.x', '', 'ja_ironis', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_ironis.xml', '', ''),
(97, 6, 0, 'JA Jason template', '', 'ja_jason', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_jason.xml', '', ''),
(98, 6, 0, 'JA Kranos Template for J2.5 & J3.x', '', 'ja_kranos', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_kranos.xml', '', ''),
(99, 6, 0, 'JA Lens Template for Joomla 2.5 & 3.x', '', 'ja_lens', 'template', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_lens.xml', '', ''),
(100, 6, 0, 'Ja Lime Template for Joomla 3x', '', 'ja_lime', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_lime.xml', '', ''),
(101, 6, 0, 'JA Magz Template for J25 & J34', '', 'ja_magz', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_magz.xml', '', ''),
(102, 6, 0, 'JA Medicare Template', '', 'ja_medicare', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_medicare.xml', '', ''),
(103, 6, 0, 'JA Mendozite Template for J25 & J32', '', 'ja_mendozite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml', '', ''),
(104, 6, 0, 'JA Mero Template for J25 & J3x', '', 'ja_mero', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mero.xml', '', ''),
(105, 6, 0, 'JA Mers Template for J25 & J3x', '', 'ja_mers', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_mers.xml', '', ''),
(106, 6, 0, 'JA Methys Template for Joomla 3x', '', 'ja_methys', 'template', '', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_methys.xml', '', ''),
(107, 6, 0, 'Ja Minisite Template for Joomla 3.4', '', 'ja_minisite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_minisite.xml', '', ''),
(108, 6, 0, 'JA Mitius Template', '', 'ja_mitius', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_mitius.xml', '', ''),
(109, 6, 0, 'JA Mixmaz Template', '', 'ja_mixmaz', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml', '', ''),
(110, 6, 0, 'JA Nex Template for J25 & J30', '', 'ja_nex', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex.xml', '', ''),
(111, 6, 0, 'JA Nex T3 Template', '', 'ja_nex_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml', '', ''),
(112, 6, 0, 'JA Norite Template for J2.5 & J31', '', 'ja_norite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_norite.xml', '', ''),
(113, 6, 0, 'JA Nuevo template', '', 'ja_nuevo', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml', '', ''),
(114, 6, 0, 'JA Obelisk Template', '', 'ja_obelisk', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml', '', ''),
(115, 6, 0, 'JA Onepage Template', '', 'ja_onepage', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_onepage.xml', '', ''),
(116, 6, 0, 'JA ores template for Joomla 3.x', '', 'ja_ores', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_ores.xml', '', ''),
(117, 6, 0, 'JA Orisite Template  for J25 & J3x', '', 'ja_orisite', 'template', '', 0, '1.1.7', '', 'http://update.joomlart.com/service/tracking/j16/ja_orisite.xml', '', ''),
(118, 6, 0, 'JA Playmag Template', '', 'ja_playmag', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_playmag.xml', '', ''),
(119, 6, 0, 'JA Portfolio Real Estate template for Joomla 1.6.x', '', 'ja_portfolio', 'file', '', 0, '1.0.0 beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml', '', ''),
(120, 6, 0, 'JA Portfolio Template for Joomla 3.x', '', 'ja_portfolio_real_estate', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml', '', ''),
(121, 6, 0, 'JA Puresite Template for J25 & J3x', '', 'ja_puresite', 'template', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_puresite.xml', '', ''),
(122, 6, 0, 'JA Purity II template for Joomla 2.5 & 3.2', '', 'ja_purity_ii', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml', '', ''),
(123, 6, 0, 'JA Pyro Template for Joomla 3.x', '', 'ja_pyro', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_pyro.xml', '', ''),
(124, 6, 0, 'JA Rasite Template for J34', '', 'ja_rasite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rasite.xml', '', ''),
(125, 6, 0, 'JA Rave Template for Joomla 3.x', '', 'ja_rave', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_rave.xml', '', ''),
(126, 6, 0, 'JA Smashboard Template', '', 'ja_smashboard', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml', '', ''),
(127, 6, 0, 'JA Social Template for Joomla 2.5', '', 'ja_social', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_social.xml', '', ''),
(128, 6, 0, 'JA Social T3 Template for J25 & J3x', '', 'ja_social_t3', 'template', '', 0, '1.1.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_social_t3.xml', '', ''),
(129, 6, 0, 'JA Sugite Template', '', 'ja_sugite', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j16/ja_sugite.xml', '', ''),
(130, 6, 0, 'JA System Pager Plugin for J25 & J30', '', 'ja_system_japager', 'plugin', 'ja_system_japager', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml', '', ''),
(131, 6, 0, 'JA T3V2 Blank Template', '', 'ja_t3_blank', 'template', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml', '', ''),
(132, 6, 0, 'JA T3 Blank template for joomla 1.6', '', 'ja_t3_blank_j16', 'template', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml', '', ''),
(133, 6, 0, 'JA Blank Template for T3v3', '', 'ja_t3v3_blank', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml', '', ''),
(134, 6, 0, 'JA Teline III  Template for Joomla 1.6', '', 'ja_teline_iii', 'file', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml', '', ''),
(135, 6, 0, 'JA Teline IV Template for J2.5 and J3.2', '', 'ja_teline_iv', 'template', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml', '', ''),
(136, 6, 0, 'JA Teline IV T3 Template', '', 'ja_teline_iv_t3', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml', '', ''),
(137, 6, 0, 'JA Tiris Template for J25 & J3x', '', 'ja_tiris', 'template', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/ja_tiris.xml', '', ''),
(138, 6, 0, 'JA Travel Template for Joomla 3x', '', 'ja_travel', 'template', '', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_travel.xml', '', ''),
(139, 6, 0, 'JA University Template for J25 & J32', '', 'ja_university', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_university.xml', '', ''),
(140, 6, 0, 'JA University T3 template', '', 'ja_university_t3', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml', '', ''),
(141, 6, 0, 'JA Vintas Template for J25 & J31', '', 'ja_vintas', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/ja_vintas.xml', '', ''),
(142, 6, 0, 'JA Wall Template for J25 & J34', '', 'ja_wall', 'template', '', 0, '1.2.1', '', 'http://update.joomlart.com/service/tracking/j16/ja_wall.xml', '', ''),
(143, 6, 0, 'JA ZiteTemplate', '', 'ja_zite', 'template', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/ja_zite.xml', '', ''),
(144, 6, 0, 'JA Bookmark plugin for Joomla 1.6.x', '', 'jabookmark', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jabookmark.xml', '', ''),
(145, 6, 0, 'JA Comment plugin for Joomla 1.6.x', '', 'jacomment', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacomment.xml', '', ''),
(146, 6, 0, 'JA Comment Off Plugin for Joomla 1.6', '', 'jacommentoff', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommentoff.xml', '', ''),
(147, 6, 0, 'JA Comment On Plugin for Joomla 1.6', '', 'jacommenton', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/jacommenton.xml', '', ''),
(148, 6, 0, 'JA Content Extra Fields for Joomla 1.6', '', 'jacontentextrafields', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml', '', ''),
(149, 6, 0, 'JA Disqus Debate Echo plugin for Joomla 1.6.x', '', 'jadisqus_debate_echo', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml', '', ''),
(150, 6, 0, 'JA System Google Map plugin for Joomla 1.6.x', '', 'jagooglemap', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagooglemap.xml', '', ''),
(151, 6, 0, 'JA Google Translate plugin for Joomla 1.6.x', '', 'jagoogletranslate', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml', '', ''),
(152, 6, 0, 'JA Highslide plugin for Joomla 1.6.x', '', 'jahighslide', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jahighslide.xml', '', ''),
(153, 6, 0, 'JA K2 Search Plugin for Joomla 2.5', '', 'jak2_filter', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_filter.xml', '', ''),
(154, 6, 0, 'JA K2 Extra Fields Plugin for Joomla 2.5', '', 'jak2_indexing', 'plugin', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml', '', ''),
(155, 6, 0, 'JA Load module Plugin for Joomla 2.5', '', 'jaloadmodule', 'plugin', 'jaloadmodule', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml', '', ''),
(156, 6, 0, 'JA System Nrain plugin for Joomla 1.6.x', '', 'janrain', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/janrain.xml', '', ''),
(157, 6, 0, 'JA Popup plugin for Joomla 1.6', '', 'japopup', 'file', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/japopup.xml', '', ''),
(158, 6, 0, 'JA System Social plugin for Joomla 1.7', '', 'jasocial', 'file', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/jasocial.xml', '', ''),
(159, 6, 0, 'JA T3 System plugin for Joomla 1.6', '', 'jat3', 'plugin', '', 0, '1.0.0 Beta', '', 'http://update.joomlart.com/service/tracking/j16/jat3.xml', '', ''),
(160, 6, 0, 'JA Tabs plugin for Joomla 1.6.x', '', 'jatabs', 'plugin', 'jatabs', 0, '2.5.6', '', 'http://update.joomlart.com/service/tracking/j16/jatabs.xml', '', ''),
(161, 6, 0, 'JA Typo plugin For Joomla 1.6', '', 'jatypo', 'plugin', 'jatypo', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jatypo.xml', '', ''),
(162, 6, 0, 'Jomsocial Theme 3.x for JA Social', '', 'jomsocial_theme_social', 'custom', '', 0, '4.1.x', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml', '', ''),
(163, 6, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16', 'file', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml', '', ''),
(164, 6, 0, 'JA Jomsocial theme for Joomla 2.5', '', 'jomsocial_theme_social_j16_26', 'custom', '', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml', '', ''),
(165, 6, 0, 'JShopping Template for Ja Orisite', '', 'jshopping_theme_orisite', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml', '', ''),
(166, 6, 0, 'JA Tiris Jshopping theme for J25 & J3x', '', 'jshopping_theme_tiris', 'custom', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml', '', ''),
(167, 6, 0, 'Theme for Jshopping j17', '', 'jshopping_theme_tiris_j17', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml', '', ''),
(168, 6, 0, 'JA Kranos kunena theme for Joomla 3.x', '', 'kunena_theme_kranos_j17', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml', '', ''),
(169, 6, 0, 'Kunena Template for JA Mendozite', '', 'kunena_theme_mendozite', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml', '', ''),
(170, 6, 0, 'JA Mitius Kunena Theme for Joomla 25 ', '', 'kunena_theme_mitius', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml', '', ''),
(171, 6, 0, 'Kunena theme for JA Nex J2.5', '', 'kunena_theme_nex_j17', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml', '', ''),
(172, 6, 0, 'Kunena theme for JA Nex T3', '', 'kunena_theme_nex_t3', 'custom', '', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml', '', ''),
(173, 6, 0, 'Kunena Template for Ja Orisite', '', 'kunena_theme_orisite', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml', '', ''),
(174, 6, 0, 'Kunena theme for ja PlayMag', '', 'kunena_theme_playmag', 'custom', '', 0, '1.1.6', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml', '', ''),
(175, 6, 0, 'Kunena theme for JA Social T3', '', 'kunena_theme_social', 'custom', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml', '', ''),
(176, 6, 0, 'Kunena theme for Joomla 2.5', '', 'kunena_theme_social_j16', 'custom', '', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml', '', ''),
(177, 6, 0, 'Kunena theme for ja Techzone', '', 'kunena_theme_techzone', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_techzone.xml', '', ''),
(178, 6, 0, 'JA Tiris kunena theme for Joomla 2.5', '', 'kunena_theme_tiris_j16', 'custom', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml', '', ''),
(179, 6, 0, 'JA Bookshop Theme for Mijoshop V2', '', 'mijoshop_theme_bookshop', 'custom', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml', '', ''),
(180, 6, 0, 'JA Decor Theme for Mijoshop', '', 'mijoshop_theme_decor', 'custom', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml', '', ''),
(181, 6, 0, 'JA Decor Theme for Mijoshop V3', '', 'mijoshop_theme_decor_v3', 'custom', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml', '', ''),
(182, 6, 0, 'JA ACM Module', '', 'mod_ja_acm', 'module', '', 0, '2.1.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml', '', ''),
(183, 6, 0, 'JA Jobs Tags module for Joomla 2.5', '', 'mod_ja_jobs_tags', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml', '', ''),
(184, 6, 0, 'JA Accordion Module for J25 & J34', '', 'mod_jaaccordion', 'module', '', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml', '', ''),
(185, 6, 0, 'JA Animation module for Joomla 2.5 & 3.2', '', 'mod_jaanimation', 'module', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml', '', ''),
(186, 6, 0, 'JA Bulletin Module for J3.x', '', 'mod_jabulletin', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml', '', ''),
(187, 6, 0, 'JA Latest Comment Module for Joomla 2.5 & 3.3', '', 'mod_jaclatest_comments', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml', '', ''),
(188, 6, 0, 'JA Content Popup Module for J25 & J34', '', 'mod_jacontentpopup', 'module', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml', '', ''),
(189, 6, 0, 'JA Content Scroll module for Joomla 1.6', '', 'mod_jacontentscroll', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml', '', ''),
(190, 6, 0, 'JA Contenslider module for Joomla 1.6', '', 'mod_jacontentslide', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml', '', ''),
(191, 6, 0, 'JA Content Slider Module for J25 & J34', '', 'mod_jacontentslider', 'module', '', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml', '', ''),
(192, 6, 0, 'JA CountDown Module for Joomla 2.5 & 3.4', '', 'mod_jacountdown', 'module', '', 0, '1.0.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml', '', ''),
(193, 6, 0, 'JA Facebook Activity Module for J25 & J30', '', 'mod_jafacebookactivity', 'module', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml', '', ''),
(194, 6, 0, 'JA Facebook Like Box Module for Joonla 25 & 34', '', 'mod_jafacebooklikebox', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml', '', ''),
(195, 6, 0, 'JA Featured Employer module for Joomla 2.5', '', 'mod_jafeatured_employer', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml', '', ''),
(196, 6, 0, 'JA Filter Jobs module for Joomla 2.5', '', 'mod_jafilter_jobs', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml', '', ''),
(197, 6, 0, 'JA flowlist module for Joomla 2.5 & 3.0', '', 'mod_jaflowlist', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml', '', ''),
(198, 6, 0, 'JA Google chart 2', '', 'mod_jagooglechart_2', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jagooglechart_2.xml', '', ''),
(199, 6, 0, 'JAEC Halloween Module for Joomla 2.5 & 3', '', 'mod_jahalloween', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml', '', ''),
(200, 6, 0, 'JA Image Hotspot Module for Joomla 2.5 & 3.4', '', 'mod_jaimagehotspot', 'module', '', 0, '1.0.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml', '', ''),
(201, 6, 0, 'JA static module for Joomla 2.5', '', 'mod_jajb_statistic', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml', '', ''),
(202, 6, 0, 'JA Jobboard Menu module for Joomla 2.5', '', 'mod_jajobboard_menu', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml', '', ''),
(203, 6, 0, 'JA Jobs Counter module for Joomla 2.5', '', 'mod_jajobs_counter', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml', '', ''),
(204, 6, 0, 'JA Jobs Map module for Joomla 2.5', '', 'mod_jajobs_map', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml', '', ''),
(205, 6, 0, 'JA K2 Fillter Module for Joomla 2.5', '', 'mod_jak2_filter', 'module', '', 0, '1.0.0 Alpha', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml', '', ''),
(206, 6, 0, 'JA K2 Filter Module for J25 & J3.4', '', 'mod_jak2filter', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml', '', ''),
(207, 6, 0, 'JA K2 Timeline', '', 'mod_jak2timeline', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml', '', ''),
(208, 6, 0, 'JA Latest Resumes module for Joomla 2.5', '', 'mod_jalatest_resumes', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml', '', ''),
(209, 6, 0, 'JA List Employer module for Joomla 2.5', '', 'mod_jalist_employers', 'module', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml', '', ''),
(210, 6, 0, 'JA List Jobs module for Joomla 2.5', '', 'mod_jalist_jobs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml', '', ''),
(211, 6, 0, 'JA List Resumes module for Joomla 2.5', '', 'mod_jalist_resumes', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml', '', ''),
(212, 6, 0, 'JA Login module for J25 & J3x', '', 'mod_jalogin', 'module', '', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml', '', ''),
(213, 6, 0, 'JA Masshead Module for J25 & J34', '', 'mod_jamasshead', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml', '', ''),
(214, 6, 0, 'JA News Featured Module for J25 & J34', '', 'mod_janews_featured', 'module', '', 0, '2.6.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml', '', ''),
(215, 6, 0, 'JA Newsflash module for Joomla 1.6.x', '', 'mod_janewsflash', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml', '', ''),
(216, 6, 0, 'JA Newsmoo module for Joomla 1.6.x', '', 'mod_janewsmoo', 'module', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml', '', ''),
(217, 6, 0, 'JA News Pro Module for J25 & J3x', '', 'mod_janewspro', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml', '', ''),
(218, 6, 0, 'JA Newsticker Module for J3x', '', 'mod_janewsticker', 'module', '', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml', '', ''),
(219, 6, 0, 'JA Quick Contact Module for J3.x', '', 'mod_jaquickcontact', 'module', '', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml', '', ''),
(220, 6, 0, 'JA Recent Viewed Jobs module for Joomla 2.5', '', 'mod_jarecent_viewed_jobs', 'module', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml', '', ''),
(221, 6, 0, 'JA SideNews Module for J25 & J34', '', 'mod_jasidenews', 'module', '', 0, '2.6.7', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml', '', ''),
(222, 6, 0, 'JA Slideshow Module for Joomla 2.5 & 3.x', '', 'mod_jaslideshow', 'module', '', 0, '2.7.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml', '', ''),
(223, 6, 0, 'JA Slideshow Lite Module for J25 & J3.4', '', 'mod_jaslideshowlite', 'module', '', 0, '1.2.3', '', 'http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml', '', ''),
(224, 6, 0, 'JA Soccerway Module for J25 & J33', '', 'mod_jasoccerway', 'module', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml', '', ''),
(225, 6, 0, 'JA Social Locker module', '', 'mod_jasocial_locker', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml', '', ''),
(226, 6, 0, 'JA Tab module for Joomla 2.5', '', 'mod_jatabs', 'module', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml', '', ''),
(227, 6, 0, 'JA Toppanel Module for Joomla 2.5 & Joomla 3.4', '', 'mod_jatoppanel', 'module', '', 0, '2.5.8', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml', '', ''),
(228, 6, 0, 'JA Twitter Module for J25 & J3.4', '', 'mod_jatwitter', 'module', '', 0, '2.6.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml', '', ''),
(229, 6, 0, 'JA List of Voices Module for J2.5 & J3.x', '', 'mod_javlist_voices', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml', '', ''),
(230, 6, 0, 'JA VMProducts Module', '', 'mod_javmproducts', 'module', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml', '', ''),
(231, 6, 0, 'JA Voice  Work Flow Module for J2.5 & J3.x', '', 'mod_javwork_flow', 'module', '', 0, '1.1.0', '', 'http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml', '', ''),
(232, 6, 0, 'JA Amazon S3 Button Plugin for joomla 2.5 & 3.x', '', 'jaamazons3', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml', '', ''),
(233, 6, 0, 'JA AVTracklist Button plugin for J2.5 & J3.3', '', 'jaavtracklist', 'plugin', 'button', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml', '', ''),
(234, 6, 0, 'JA Comment Off Plugin for Joomla 2.5 & 3.3', '', 'jacommentoff', 'plugin', 'button', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml', '', ''),
(235, 6, 0, 'JA Comment On Plugin for Joomla 2.5 & 3.3', '', 'jacommenton', 'plugin', 'button', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml', '', ''),
(236, 6, 0, 'JA Amazon S3 System plugin for joomla 2.5 & 3.x', '', 'plg_jaamazons3', 'plugin', 'plg_jaamazons3', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml', '', ''),
(237, 6, 0, 'JA AVTracklist plugin for J2.5 & J3.x', '', 'plg_jaavtracklist', 'plugin', 'plg_jaavtracklist', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml', '', ''),
(238, 6, 0, 'JA Bookmark plugin for J3.x', '', 'plg_jabookmark', 'plugin', 'plg_jabookmark', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml', '', ''),
(239, 6, 0, 'JA Comment Plugin for Joomla 2.5 & 3.3', '', 'plg_jacomment', 'plugin', 'plg_jacomment', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml', '', ''),
(240, 6, 0, 'JA Disqus Debate Echo plugin for J3x', '', 'debate_echo', 'plugin', 'jadisqus', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml', '', ''),
(241, 6, 0, 'JA Google Storage Plugin for j25 & j30', '', 'plg_jagooglestorage', 'plugin', 'plg_jagooglestorage', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml', '', ''),
(242, 6, 0, 'JA Translate plugin for Joomla 1.6.x', '', 'plg_jagoogletranslate', 'file', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml', '', ''),
(243, 6, 0, 'JA Thumbnail Plugin for J25 & J3', '', 'plg_jathumbnail', 'plugin', 'plg_jathumbnail', 0, '2.5.9', '', 'http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml', '', ''),
(244, 6, 0, 'JA Tooltips plugin for Joomla 1.6.x', '', 'plg_jatooltips', 'plugin', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml', '', ''),
(245, 6, 0, 'JA Typo Button Plugin for J25 & J3x', '', 'plg_jatypobutton', 'plugin', 'plg_jatypobutton', 0, '2.6.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml', '', ''),
(246, 6, 0, 'JA K2 Filter Plg for J25 & J3.4', '', 'jak2filter', 'plugin', 'k2', 0, '1.2.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml', '', ''),
(247, 6, 0, 'JA K2 Timeline Plugin', '', 'jak2timeline', 'plugin', 'k2', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml', '', ''),
(248, 6, 0, 'Multi Captcha Engine Plugin for J3.x', '', 'captcha_engine', 'plugin', 'multiple', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml', '', ''),
(249, 6, 0, 'JA JobBoard Payment Plugin Authorize for Joomla 2.5', '', 'plg_payment_jajb_authorize_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml', '', ''),
(250, 6, 0, 'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5', '', 'plg_payment_jajb_moneybooker_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml', '', ''),
(251, 6, 0, 'JA JobBoard Payment Plugin Paypal for Joomla 2.5', '', 'plg_payment_jajb_paypal_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml', '', ''),
(252, 6, 0, 'JA JobBoard Payment Plugin BankWire for Joomla 2.5', '', 'plg_payment_jajb_wirebank_25', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml', '', ''),
(253, 6, 0, 'JA Search Comment Plugin for Joomla J2.5 & 3.x', '', 'jacomment', 'plugin', 'search', 0, '2.5.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml', '', ''),
(254, 6, 0, 'JA Search Jobs plugin for Joomla 2.5', '', 'jajob', 'plugin', 'search', 0, '1.0.0 stable', '', 'http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml', '', ''),
(255, 6, 0, 'JA System Comment Plugin for Joomla 2.5 & 3.3', '', 'jacomment', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml', '', ''),
(256, 6, 0, 'JA Content Extra Fields for Joomla 2.5', '', 'jacontentextrafields', 'plugin', 'system', 0, '2.5.1', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml', '', ''),
(257, 6, 0, 'JA System Google Map plugin for Joomla 2.5 & J3.4', '', 'jagooglemap', 'plugin', 'system', 0, '2.6.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml', '', ''),
(258, 6, 0, 'JAEC PLG System Jobboad Jomsocial Synchonization', '', 'jajb_jomsocial', 'plugin', 'system', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml', '', ''),
(259, 6, 0, 'JA System Lazyload Plugin for J25 & J3x', '', 'jalazyload', 'plugin', 'system', 0, '1.0.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml', '', ''),
(260, 6, 0, 'JA System Nrain Plugin for Joomla 2.5 & 3.3', '', 'janrain', 'plugin', 'system', 0, '2.5.4', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml', '', ''),
(261, 6, 0, 'JA Popup Plugin for Joomla 25 & 34', '', 'japopup', 'plugin', 'system', 0, '2.6.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml', '', ''),
(262, 6, 0, 'JA System Social Plugin for Joomla 3.x', '', 'jasocial', 'plugin', 'system', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml', '', ''),
(263, 6, 0, 'JA System Social Feed Plugin for Joomla 2.5 & 3.4', '', 'jasocial_feed', 'plugin', 'system', 0, '1.2.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml', '', ''),
(264, 6, 0, 'JA T3v2 System Plugin for J3.x', '', 'jat3', 'plugin', 'system', 0, '2.7.2', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml', '', ''),
(265, 6, 0, 'JA T3v3 System Plugin', '', 'jat3v3', 'plugin', 'system', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml', '', ''),
(266, 6, 0, 'JA Tabs Plugin for J3.x', '', 'jatabs', 'plugin', 'system', 0, '2.6.6', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml', '', ''),
(267, 6, 0, 'JA Typo Plugin for Joomla 2.5 & J34', '', 'jatypo', 'plugin', 'system', 0, '2.5.7', '', 'http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml', '', ''),
(268, 6, 0, 'JA Teline III Template for Joomla 2.5', '', 'teline_iii', 'template', '', 0, '2.5.3', '', 'http://update.joomlart.com/service/tracking/j16/teline_iii.xml', '', ''),
(269, 6, 0, 'Thirdparty Extensions Compatibility Bundle', '', 'thirdparty_exts_compatibility', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml', '', ''),
(270, 6, 0, 'Uber Template', '', 'uber', 'template', '', 0, '2.1.3', '', 'http://update.joomlart.com/service/tracking/j16/uber.xml', '', ''),
(271, 6, 0, 'Backend Template', '', 'backend_template_pkg', 'template', '', 0, '1.0.3 beta', '', 'http://update.joomlart.com/service/tracking/j30/backend_template_pkg.xml', '', ''),
(272, 6, 0, 'JA K2 v3 Filter package for J33', '', 'com_jak2v3filter', 'component', '', 1, '3.0.0 preview ', '', 'http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml', '', ''),
(273, 6, 0, 'JA Multilingual Component for Joomla 2.5 & 3.4', '', 'com_jalang', 'component', '', 1, '1.0.9', '', 'http://update.joomlart.com/service/tracking/j31/com_jalang.xml', '', ''),
(274, 6, 0, 'JA Intranet Theme for EasyBlog', '', 'easyblog_theme_intranet', 'custom', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_intranet.xml', '', ''),
(275, 6, 0, 'JA Resume Theme for EasyBlog', '', 'easyblog_theme_resume', 'custom', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_resume.xml', '', ''),
(276, 6, 0, 'JA Sugite Theme for EasyBlog', '', 'easyblog_theme_sugite', 'custom', '', 0, '1.1.1', '', 'http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml', '', ''),
(277, 6, 0, 'JA Biz Template', '', 'ja_biz', 'template', '', 0, '1.1.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_biz.xml', '', ''),
(278, 6, 0, 'JA Cago template', '', 'ja_cago', 'template', '', 0, '1.0.0', '', 'http://update.joomlart.com/service/tracking/j31/ja_cago.xml', '', ''),
(279, 6, 0, 'JA Cagox template', '', 'ja_cagox', 'template', '', 0, '1.0.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_cagox.xml', '', ''),
(280, 6, 0, 'JA Charity template', '', 'ja_charity', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_charity.xml', '', ''),
(281, 6, 0, 'JA Directory Template', '', 'ja_directory', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_directory.xml', '', ''),
(282, 6, 0, 'JA Edenite Template for J25 & J34', '', 'ja_edenite', 'template', '', 0, '2.5.5', '', 'http://update.joomlart.com/service/tracking/j31/ja_edenite.xml', '', ''),
(283, 6, 0, 'JA Elicyon Template', '', 'ja_elicyon', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_elicyon.xml', '', ''),
(284, 6, 0, 'JA Events II template', '', 'ja_events_ii', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_events_ii.xml', '', ''),
(285, 6, 0, 'JA Fixel Template', '', 'ja_fixel', 'template', '', 0, '1.1.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_fixel.xml', '', ''),
(286, 6, 0, 'JA Healthcare Template', '', 'ja_healthcare', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_healthcare.xml', '', '');
INSERT INTO `t30ib_updates` (`update_id`, `update_site_id`, `extension_id`, `name`, `description`, `element`, `type`, `folder`, `client_id`, `version`, `data`, `detailsurl`, `infourl`, `extra_query`) VALUES
(287, 6, 0, 'JA Hotel Template', '', 'ja_hotel', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_hotel.xml', '', ''),
(288, 6, 0, 'JA Intranet Template', '', 'ja_intranet', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_intranet.xml', '', ''),
(289, 6, 0, 'JA Magz II Template', '', 'ja_magz_ii', 'template', '', 0, '1.0.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_magz_ii.xml', '', ''),
(290, 6, 0, 'JA Megastore Template', '', 'ja_megastore', 'template', '', 0, '1.0.1', '', 'http://update.joomlart.com/service/tracking/j31/ja_megastore.xml', '', ''),
(291, 6, 0, 'JA Mono Template', '', 'ja_mono', 'template', '', 0, '1.0.4', '', 'http://update.joomlart.com/service/tracking/j31/ja_mono.xml', '', ''),
(292, 6, 0, 'JA Moviemax Template', '', 'ja_moviemax', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_moviemax.xml', '', ''),
(293, 6, 0, 'JA Muzic Template', '', 'ja_muzic', 'template', '', 0, '1.1.2', '', 'http://update.joomlart.com/service/tracking/j31/ja_muzic.xml', '', ''),
(294, 6, 0, 'JA Platon Template', '', 'ja_platon', 'template', '', 0, '1.0.3', '', 'http://update.joomlart.com/service/tracking/j31/ja_platon.xml', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_update_sites`
--

CREATE TABLE `t30ib_update_sites` (
  `update_site_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Update Sites';

--
-- Dumping data for table `t30ib_update_sites`
--

INSERT INTO `t30ib_update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`, `last_check_timestamp`, `extra_query`) VALUES
(1, 'Joomla! Core', 'collection', 'https://update.joomla.org/core/list.xml', 0, 0, ''),
(2, 'Joomla! Extension Directory', 'collection', 'https://update.joomla.org/jed/list.xml', 0, 0, ''),
(3, 'Accredited Joomla! Translations', 'collection', 'https://update.joomla.org/language/translationlist_3.xml', 1, 1469868212, ''),
(4, 'Joomla! Update Component Update Site', 'extension', 'https://update.joomla.org/core/extensions/com_joomlaupdate.xml', 1, 1469868213, ''),
(5, 'Articles Newsflash (Advanced) module Updates', 'extension', 'http://joomlacode.org/gf/project/tm_art_news_adv/scmsvn/?action=browse&path=%2F%2Acheckout%2A%2Ftrunk%2Fextension.xml', 1, 1469868214, ''),
(6, '', 'collection', 'http://update.joomlart.com/service/tracking/list.xml', 1, 0, ''),
(7, 'T3 Framework Update', 'extension', 'http://www.t3-framework.org/update.xml', 1, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_update_sites_extensions`
--

CREATE TABLE `t30ib_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Links extensions to update sites';

--
-- Dumping data for table `t30ib_update_sites_extensions`
--

INSERT INTO `t30ib_update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700),
(3, 802),
(4, 28),
(5, 10000),
(6, 10002),
(6, 10003),
(6, 10004),
(7, 10005);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_usergroups`
--

CREATE TABLE `t30ib_usergroups` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_usergroups`
--

INSERT INTO `t30ib_usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 18, 'Public'),
(2, 1, 8, 15, 'Registered'),
(3, 2, 9, 14, 'Author'),
(4, 3, 10, 13, 'Editor'),
(5, 4, 11, 12, 'Publisher'),
(6, 1, 4, 7, 'Manager'),
(7, 6, 5, 6, 'Administrator'),
(8, 1, 16, 17, 'Super Users'),
(9, 1, 2, 3, 'Guest');

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_users`
--

CREATE TABLE `t30ib_users` (
  `id` int(11) NOT NULL,
  `name` varchar(400) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `params` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_users`
--

INSERT INTO `t30ib_users` (`id`, `name`, `username`, `email`, `password`, `block`, `sendEmail`, `registerDate`, `lastvisitDate`, `activation`, `params`, `lastResetTime`, `resetCount`, `otpKey`, `otep`, `requireReset`) VALUES
(745, 'Super User', 'admin', 'admin@herrman.com', '$2y$10$Ce/lS.QxwHSHWxGPixI2RuW9Jedfkxdy7qQwu5uOsqmdkqHSAQtFi', 0, 1, '2016-07-21 12:58:39', '2016-07-30 08:11:36', '0', '', '0000-00-00 00:00:00', 0, '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_user_keys`
--

CREATE TABLE `t30ib_user_keys` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `series` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uastring` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_user_notes`
--

CREATE TABLE `t30ib_user_notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `catid` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `subject` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) UNSIGNED NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_user_profiles`
--

CREATE TABLE `t30ib_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Simple user profile storage table';

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_user_usergroup_map`
--

CREATE TABLE `t30ib_user_usergroup_map` (
  `user_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_user_usergroup_map`
--

INSERT INTO `t30ib_user_usergroup_map` (`user_id`, `group_id`) VALUES
(745, 8);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_utf8_conversion`
--

CREATE TABLE `t30ib_utf8_conversion` (
  `converted` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_utf8_conversion`
--

INSERT INTO `t30ib_utf8_conversion` (`converted`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `t30ib_viewlevels`
--

CREATE TABLE `t30ib_viewlevels` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Primary Key',
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'JSON encoded access control.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t30ib_viewlevels`
--

INSERT INTO `t30ib_viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 2, '[6,2,8]'),
(3, 'Special', 3, '[6,3,8]'),
(5, 'Guest', 1, '[9]'),
(6, 'Super Users', 4, '[8]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t30ib_assets`
--
ALTER TABLE `t30ib_assets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_asset_name` (`name`),
  ADD KEY `idx_lft_rgt` (`lft`,`rgt`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `t30ib_associations`
--
ALTER TABLE `t30ib_associations`
  ADD PRIMARY KEY (`context`,`id`),
  ADD KEY `idx_key` (`key`);

--
-- Indexes for table `t30ib_banners`
--
ALTER TABLE `t30ib_banners`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100)),
  ADD KEY `idx_banner_catid` (`catid`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `t30ib_banner_clients`
--
ALTER TABLE `t30ib_banner_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_own_prefix` (`own_prefix`),
  ADD KEY `idx_metakey_prefix` (`metakey_prefix`(100));

--
-- Indexes for table `t30ib_banner_tracks`
--
ALTER TABLE `t30ib_banner_tracks`
  ADD PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  ADD KEY `idx_track_date` (`track_date`),
  ADD KEY `idx_track_type` (`track_type`),
  ADD KEY `idx_banner_id` (`banner_id`);

--
-- Indexes for table `t30ib_categories`
--
ALTER TABLE `t30ib_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cat_idx` (`extension`,`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `t30ib_contact_details`
--
ALTER TABLE `t30ib_contact_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `t30ib_content`
--
ALTER TABLE `t30ib_content`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`state`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_featured_catid` (`featured`,`catid`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `t30ib_contentitem_tag_map`
--
ALTER TABLE `t30ib_contentitem_tag_map`
  ADD UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  ADD KEY `idx_tag_type` (`tag_id`,`type_id`),
  ADD KEY `idx_date_id` (`tag_date`,`tag_id`),
  ADD KEY `idx_core_content_id` (`core_content_id`);

--
-- Indexes for table `t30ib_content_frontpage`
--
ALTER TABLE `t30ib_content_frontpage`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `t30ib_content_rating`
--
ALTER TABLE `t30ib_content_rating`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `t30ib_content_types`
--
ALTER TABLE `t30ib_content_types`
  ADD PRIMARY KEY (`type_id`),
  ADD KEY `idx_alias` (`type_alias`(100));

--
-- Indexes for table `t30ib_extensions`
--
ALTER TABLE `t30ib_extensions`
  ADD PRIMARY KEY (`extension_id`),
  ADD KEY `element_clientid` (`element`,`client_id`),
  ADD KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  ADD KEY `extension` (`type`,`element`,`folder`,`client_id`);

--
-- Indexes for table `t30ib_finder_filters`
--
ALTER TABLE `t30ib_finder_filters`
  ADD PRIMARY KEY (`filter_id`);

--
-- Indexes for table `t30ib_finder_links`
--
ALTER TABLE `t30ib_finder_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `idx_type` (`type_id`),
  ADD KEY `idx_title` (`title`(100)),
  ADD KEY `idx_md5` (`md5sum`),
  ADD KEY `idx_url` (`url`(75)),
  ADD KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  ADD KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`);

--
-- Indexes for table `t30ib_finder_links_terms0`
--
ALTER TABLE `t30ib_finder_links_terms0`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms1`
--
ALTER TABLE `t30ib_finder_links_terms1`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms2`
--
ALTER TABLE `t30ib_finder_links_terms2`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms3`
--
ALTER TABLE `t30ib_finder_links_terms3`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms4`
--
ALTER TABLE `t30ib_finder_links_terms4`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms5`
--
ALTER TABLE `t30ib_finder_links_terms5`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms6`
--
ALTER TABLE `t30ib_finder_links_terms6`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms7`
--
ALTER TABLE `t30ib_finder_links_terms7`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms8`
--
ALTER TABLE `t30ib_finder_links_terms8`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_terms9`
--
ALTER TABLE `t30ib_finder_links_terms9`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termsa`
--
ALTER TABLE `t30ib_finder_links_termsa`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termsb`
--
ALTER TABLE `t30ib_finder_links_termsb`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termsc`
--
ALTER TABLE `t30ib_finder_links_termsc`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termsd`
--
ALTER TABLE `t30ib_finder_links_termsd`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termse`
--
ALTER TABLE `t30ib_finder_links_termse`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_links_termsf`
--
ALTER TABLE `t30ib_finder_links_termsf`
  ADD PRIMARY KEY (`link_id`,`term_id`),
  ADD KEY `idx_term_weight` (`term_id`,`weight`),
  ADD KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`);

--
-- Indexes for table `t30ib_finder_taxonomy`
--
ALTER TABLE `t30ib_finder_taxonomy`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parent_id` (`parent_id`),
  ADD KEY `state` (`state`),
  ADD KEY `ordering` (`ordering`),
  ADD KEY `access` (`access`),
  ADD KEY `idx_parent_published` (`parent_id`,`state`,`access`);

--
-- Indexes for table `t30ib_finder_taxonomy_map`
--
ALTER TABLE `t30ib_finder_taxonomy_map`
  ADD PRIMARY KEY (`link_id`,`node_id`),
  ADD KEY `link_id` (`link_id`),
  ADD KEY `node_id` (`node_id`);

--
-- Indexes for table `t30ib_finder_terms`
--
ALTER TABLE `t30ib_finder_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD UNIQUE KEY `idx_term` (`term`),
  ADD KEY `idx_term_phrase` (`term`,`phrase`),
  ADD KEY `idx_stem_phrase` (`stem`,`phrase`),
  ADD KEY `idx_soundex_phrase` (`soundex`,`phrase`);

--
-- Indexes for table `t30ib_finder_terms_common`
--
ALTER TABLE `t30ib_finder_terms_common`
  ADD KEY `idx_word_lang` (`term`,`language`),
  ADD KEY `idx_lang` (`language`);

--
-- Indexes for table `t30ib_finder_tokens`
--
ALTER TABLE `t30ib_finder_tokens`
  ADD KEY `idx_word` (`term`),
  ADD KEY `idx_context` (`context`);

--
-- Indexes for table `t30ib_finder_tokens_aggregate`
--
ALTER TABLE `t30ib_finder_tokens_aggregate`
  ADD KEY `token` (`term`),
  ADD KEY `keyword_id` (`term_id`);

--
-- Indexes for table `t30ib_finder_types`
--
ALTER TABLE `t30ib_finder_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `t30ib_languages`
--
ALTER TABLE `t30ib_languages`
  ADD PRIMARY KEY (`lang_id`),
  ADD UNIQUE KEY `idx_sef` (`sef`),
  ADD UNIQUE KEY `idx_image` (`image`),
  ADD UNIQUE KEY `idx_langcode` (`lang_code`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_ordering` (`ordering`);

--
-- Indexes for table `t30ib_menu`
--
ALTER TABLE `t30ib_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`(100),`language`),
  ADD KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  ADD KEY `idx_menutype` (`menutype`),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `t30ib_menu_types`
--
ALTER TABLE `t30ib_menu_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_menutype` (`menutype`);

--
-- Indexes for table `t30ib_messages`
--
ALTER TABLE `t30ib_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `useridto_state` (`user_id_to`,`state`);

--
-- Indexes for table `t30ib_messages_cfg`
--
ALTER TABLE `t30ib_messages_cfg`
  ADD UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`);

--
-- Indexes for table `t30ib_modules`
--
ALTER TABLE `t30ib_modules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `published` (`published`,`access`),
  ADD KEY `newsfeeds` (`module`,`published`),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `t30ib_modules_menu`
--
ALTER TABLE `t30ib_modules_menu`
  ADD PRIMARY KEY (`moduleid`,`menuid`);

--
-- Indexes for table `t30ib_newsfeeds`
--
ALTER TABLE `t30ib_newsfeeds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_state` (`published`),
  ADD KEY `idx_catid` (`catid`),
  ADD KEY `idx_createdby` (`created_by`),
  ADD KEY `idx_language` (`language`),
  ADD KEY `idx_xreference` (`xreference`);

--
-- Indexes for table `t30ib_overrider`
--
ALTER TABLE `t30ib_overrider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `t30ib_postinstall_messages`
--
ALTER TABLE `t30ib_postinstall_messages`
  ADD PRIMARY KEY (`postinstall_message_id`);

--
-- Indexes for table `t30ib_redirect_links`
--
ALTER TABLE `t30ib_redirect_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_old_url` (`old_url`(100)),
  ADD KEY `idx_link_modifed` (`modified_date`);

--
-- Indexes for table `t30ib_schemas`
--
ALTER TABLE `t30ib_schemas`
  ADD PRIMARY KEY (`extension_id`,`version_id`);

--
-- Indexes for table `t30ib_session`
--
ALTER TABLE `t30ib_session`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `userid` (`userid`),
  ADD KEY `time` (`time`);

--
-- Indexes for table `t30ib_tags`
--
ALTER TABLE `t30ib_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_idx` (`published`,`access`),
  ADD KEY `idx_access` (`access`),
  ADD KEY `idx_checkout` (`checked_out`),
  ADD KEY `idx_path` (`path`(100)),
  ADD KEY `idx_left_right` (`lft`,`rgt`),
  ADD KEY `idx_alias` (`alias`(100)),
  ADD KEY `idx_language` (`language`);

--
-- Indexes for table `t30ib_template_styles`
--
ALTER TABLE `t30ib_template_styles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_template` (`template`),
  ADD KEY `idx_home` (`home`);

--
-- Indexes for table `t30ib_ucm_base`
--
ALTER TABLE `t30ib_ucm_base`
  ADD PRIMARY KEY (`ucm_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_item_id`),
  ADD KEY `idx_ucm_type_id` (`ucm_type_id`),
  ADD KEY `idx_ucm_language_id` (`ucm_language_id`);

--
-- Indexes for table `t30ib_ucm_content`
--
ALTER TABLE `t30ib_ucm_content`
  ADD PRIMARY KEY (`core_content_id`),
  ADD KEY `tag_idx` (`core_state`,`core_access`),
  ADD KEY `idx_access` (`core_access`),
  ADD KEY `idx_alias` (`core_alias`(100)),
  ADD KEY `idx_language` (`core_language`),
  ADD KEY `idx_title` (`core_title`(100)),
  ADD KEY `idx_modified_time` (`core_modified_time`),
  ADD KEY `idx_created_time` (`core_created_time`),
  ADD KEY `idx_content_type` (`core_type_alias`(100)),
  ADD KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  ADD KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  ADD KEY `idx_core_created_user_id` (`core_created_user_id`),
  ADD KEY `idx_core_type_id` (`core_type_id`);

--
-- Indexes for table `t30ib_ucm_history`
--
ALTER TABLE `t30ib_ucm_history`
  ADD PRIMARY KEY (`version_id`),
  ADD KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  ADD KEY `idx_save_date` (`save_date`);

--
-- Indexes for table `t30ib_updates`
--
ALTER TABLE `t30ib_updates`
  ADD PRIMARY KEY (`update_id`);

--
-- Indexes for table `t30ib_update_sites`
--
ALTER TABLE `t30ib_update_sites`
  ADD PRIMARY KEY (`update_site_id`);

--
-- Indexes for table `t30ib_update_sites_extensions`
--
ALTER TABLE `t30ib_update_sites_extensions`
  ADD PRIMARY KEY (`update_site_id`,`extension_id`);

--
-- Indexes for table `t30ib_usergroups`
--
ALTER TABLE `t30ib_usergroups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  ADD KEY `idx_usergroup_title_lookup` (`title`),
  ADD KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  ADD KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE;

--
-- Indexes for table `t30ib_users`
--
ALTER TABLE `t30ib_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_name` (`name`(100)),
  ADD KEY `idx_block` (`block`),
  ADD KEY `username` (`username`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `t30ib_user_keys`
--
ALTER TABLE `t30ib_user_keys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `series` (`series`),
  ADD UNIQUE KEY `series_2` (`series`),
  ADD UNIQUE KEY `series_3` (`series`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `t30ib_user_notes`
--
ALTER TABLE `t30ib_user_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_id` (`user_id`),
  ADD KEY `idx_category_id` (`catid`);

--
-- Indexes for table `t30ib_user_profiles`
--
ALTER TABLE `t30ib_user_profiles`
  ADD UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`);

--
-- Indexes for table `t30ib_user_usergroup_map`
--
ALTER TABLE `t30ib_user_usergroup_map`
  ADD PRIMARY KEY (`user_id`,`group_id`);

--
-- Indexes for table `t30ib_viewlevels`
--
ALTER TABLE `t30ib_viewlevels`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `idx_assetgroup_title_lookup` (`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t30ib_assets`
--
ALTER TABLE `t30ib_assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `t30ib_banners`
--
ALTER TABLE `t30ib_banners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_banner_clients`
--
ALTER TABLE `t30ib_banner_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_categories`
--
ALTER TABLE `t30ib_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `t30ib_contact_details`
--
ALTER TABLE `t30ib_contact_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t30ib_content`
--
ALTER TABLE `t30ib_content`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `t30ib_content_types`
--
ALTER TABLE `t30ib_content_types`
  MODIFY `type_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `t30ib_extensions`
--
ALTER TABLE `t30ib_extensions`
  MODIFY `extension_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
--
-- AUTO_INCREMENT for table `t30ib_finder_filters`
--
ALTER TABLE `t30ib_finder_filters`
  MODIFY `filter_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_finder_links`
--
ALTER TABLE `t30ib_finder_links`
  MODIFY `link_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_finder_taxonomy`
--
ALTER TABLE `t30ib_finder_taxonomy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t30ib_finder_terms`
--
ALTER TABLE `t30ib_finder_terms`
  MODIFY `term_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_finder_types`
--
ALTER TABLE `t30ib_finder_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_languages`
--
ALTER TABLE `t30ib_languages`
  MODIFY `lang_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t30ib_menu`
--
ALTER TABLE `t30ib_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=135;
--
-- AUTO_INCREMENT for table `t30ib_menu_types`
--
ALTER TABLE `t30ib_menu_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `t30ib_messages`
--
ALTER TABLE `t30ib_messages`
  MODIFY `message_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_modules`
--
ALTER TABLE `t30ib_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
--
-- AUTO_INCREMENT for table `t30ib_newsfeeds`
--
ALTER TABLE `t30ib_newsfeeds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_overrider`
--
ALTER TABLE `t30ib_overrider`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key';
--
-- AUTO_INCREMENT for table `t30ib_postinstall_messages`
--
ALTER TABLE `t30ib_postinstall_messages`
  MODIFY `postinstall_message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `t30ib_redirect_links`
--
ALTER TABLE `t30ib_redirect_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t30ib_tags`
--
ALTER TABLE `t30ib_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `t30ib_template_styles`
--
ALTER TABLE `t30ib_template_styles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `t30ib_ucm_content`
--
ALTER TABLE `t30ib_ucm_content`
  MODIFY `core_content_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_ucm_history`
--
ALTER TABLE `t30ib_ucm_history`
  MODIFY `version_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `t30ib_updates`
--
ALTER TABLE `t30ib_updates`
  MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=295;
--
-- AUTO_INCREMENT for table `t30ib_update_sites`
--
ALTER TABLE `t30ib_update_sites`
  MODIFY `update_site_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `t30ib_usergroups`
--
ALTER TABLE `t30ib_usergroups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `t30ib_users`
--
ALTER TABLE `t30ib_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=746;
--
-- AUTO_INCREMENT for table `t30ib_user_keys`
--
ALTER TABLE `t30ib_user_keys`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_user_notes`
--
ALTER TABLE `t30ib_user_notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t30ib_viewlevels`
--
ALTER TABLE `t30ib_viewlevels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Primary Key', AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
