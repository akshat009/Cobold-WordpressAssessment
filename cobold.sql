-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 07, 2022 at 07:01 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cobold`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2022-07-01 06:02:24', '2022-07-01 06:02:24', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Cobold-WordpressAssessment', 'yes'),
(2, 'home', 'http://localhost/Cobold-WordpressAssessment', 'yes'),
(3, 'blogname', 'Cobold', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'saxena.akshat.akshat@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:118:{s:15:\"testimonials/?$\";s:32:\"index.php?post_type=testimonials\";s:45:\"testimonials/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:40:\"testimonials/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=testimonials&feed=$matches[1]\";s:32:\"testimonials/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=testimonials&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:40:\"testimonials/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"testimonials/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"testimonials/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"testimonials/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"testimonials/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"testimonials/([^/]+)/embed/?$\";s:45:\"index.php?testimonials=$matches[1]&embed=true\";s:33:\"testimonials/([^/]+)/trackback/?$\";s:39:\"index.php?testimonials=$matches[1]&tb=1\";s:53:\"testimonials/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:48:\"testimonials/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?testimonials=$matches[1]&feed=$matches[2]\";s:41:\"testimonials/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&paged=$matches[2]\";s:48:\"testimonials/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?testimonials=$matches[1]&cpage=$matches[2]\";s:37:\"testimonials/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?testimonials=$matches[1]&page=$matches[2]\";s:29:\"testimonials/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"testimonials/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"testimonials/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"testimonials/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"testimonials/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:36:\"contact-form-7/wp-contact-form-7.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'cobold-digital', 'yes'),
(41, 'stylesheet', 'cobold-digital', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '51917', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'page', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '2', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1672207344', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '51917', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'user_count', '1', 'no'),
(103, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(105, 'cron', 'a:8:{i:1657177344;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1657216944;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657216953;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1657260144;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657260153;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657260159;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1657346544;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(106, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'recovery_keys', 'a:0:{}', 'yes'),
(120, 'https_detection_errors', 'a:1:{s:20:\"https_request_failed\";a:1:{i:0;s:21:\"HTTPS request failed.\";}}', 'yes'),
(121, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.0.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.0-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.0-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.0\";s:7:\"version\";s:3:\"6.0\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.9\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1657176582;s:15:\"version_checked\";s:3:\"6.0\";s:12:\"translations\";a:0:{}}', 'no'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1657176587;s:7:\"checked\";a:1:{s:14:\"cobold-digital\";s:5:\"1.0.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(127, '_site_transient_timeout_browser_115d2e376540b89427e8a6688e8508be', '1657260155', 'no'),
(128, '_site_transient_browser_115d2e376540b89427e8a6688e8508be', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"103.0.5060.66\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_cffc7c67702d96398080b7eb753e8a70', '1657260159', 'no'),
(130, '_site_transient_php_check_cffc7c67702d96398080b7eb753e8a70', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(132, 'can_compress_scripts', '1', 'no'),
(145, 'theme_mods_twentytwentytwo', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1656655382;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(146, 'current_theme', 'Cobold Digital', 'yes'),
(147, 'theme_mods_cobold-digital', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(153, 'finished_updating_comment_type', '1', 'yes'),
(154, 'category_children', 'a:0:{}', 'yes'),
(160, 'widget_recent-comments', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(161, 'widget_recent-posts', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(167, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1657176587;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.2.4\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.2.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:3:\"5.6\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/contact-form-7.5.6.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:3:{s:19:\"akismet/akismet.php\";s:5:\"4.2.4\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:3:\"5.6\";s:9:\"hello.php\";s:5:\"1.7.2\";}}', 'no'),
(168, 'wpcf7', 'a:2:{s:7:\"version\";s:3:\"5.6\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1656655703;s:7:\"version\";s:3:\"5.6\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(169, 'recently_activated', 'a:0:{}', 'yes'),
(215, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(265, 'recovery_mode_email_last_sent', '1656674133', 'yes'),
(302, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(427, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":6,\"critical\":0}', 'yes'),
(429, '_transient_timeout_global_styles_cobold-digital', '1657176642', 'no'),
(430, '_transient_global_styles_cobold-digital', 'body{--wp--preset--color--black: #000000;--wp--preset--color--cyan-bluish-gray: #abb8c3;--wp--preset--color--white: #ffffff;--wp--preset--color--pale-pink: #f78da7;--wp--preset--color--vivid-red: #cf2e2e;--wp--preset--color--luminous-vivid-orange: #ff6900;--wp--preset--color--luminous-vivid-amber: #fcb900;--wp--preset--color--light-green-cyan: #7bdcb5;--wp--preset--color--vivid-green-cyan: #00d084;--wp--preset--color--pale-cyan-blue: #8ed1fc;--wp--preset--color--vivid-cyan-blue: #0693e3;--wp--preset--color--vivid-purple: #9b51e0;--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgba(6,147,227,1) 0%,rgb(155,81,224) 100%);--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgba(252,185,0,1) 0%,rgba(255,105,0,1) 100%);--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgba(255,105,0,1) 0%,rgb(207,46,46) 100%);--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);--wp--preset--duotone--dark-grayscale: url(\'#wp-duotone-dark-grayscale\');--wp--preset--duotone--grayscale: url(\'#wp-duotone-grayscale\');--wp--preset--duotone--purple-yellow: url(\'#wp-duotone-purple-yellow\');--wp--preset--duotone--blue-red: url(\'#wp-duotone-blue-red\');--wp--preset--duotone--midnight: url(\'#wp-duotone-midnight\');--wp--preset--duotone--magenta-yellow: url(\'#wp-duotone-magenta-yellow\');--wp--preset--duotone--purple-green: url(\'#wp-duotone-purple-green\');--wp--preset--duotone--blue-orange: url(\'#wp-duotone-blue-orange\');--wp--preset--font-size--small: 13px;--wp--preset--font-size--medium: 20px;--wp--preset--font-size--large: 36px;--wp--preset--font-size--x-large: 42px;}.has-black-color{color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-color{color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-color{color: var(--wp--preset--color--white) !important;}.has-pale-pink-color{color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-color{color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-color{color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-color{color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-color{color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-color{color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-color{color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-color{color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-color{color: var(--wp--preset--color--vivid-purple) !important;}.has-black-background-color{background-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-background-color{background-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-background-color{background-color: var(--wp--preset--color--white) !important;}.has-pale-pink-background-color{background-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-background-color{background-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-background-color{background-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-background-color{background-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-background-color{background-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-background-color{background-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-background-color{background-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-background-color{background-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-background-color{background-color: var(--wp--preset--color--vivid-purple) !important;}.has-black-border-color{border-color: var(--wp--preset--color--black) !important;}.has-cyan-bluish-gray-border-color{border-color: var(--wp--preset--color--cyan-bluish-gray) !important;}.has-white-border-color{border-color: var(--wp--preset--color--white) !important;}.has-pale-pink-border-color{border-color: var(--wp--preset--color--pale-pink) !important;}.has-vivid-red-border-color{border-color: var(--wp--preset--color--vivid-red) !important;}.has-luminous-vivid-orange-border-color{border-color: var(--wp--preset--color--luminous-vivid-orange) !important;}.has-luminous-vivid-amber-border-color{border-color: var(--wp--preset--color--luminous-vivid-amber) !important;}.has-light-green-cyan-border-color{border-color: var(--wp--preset--color--light-green-cyan) !important;}.has-vivid-green-cyan-border-color{border-color: var(--wp--preset--color--vivid-green-cyan) !important;}.has-pale-cyan-blue-border-color{border-color: var(--wp--preset--color--pale-cyan-blue) !important;}.has-vivid-cyan-blue-border-color{border-color: var(--wp--preset--color--vivid-cyan-blue) !important;}.has-vivid-purple-border-color{border-color: var(--wp--preset--color--vivid-purple) !important;}.has-vivid-cyan-blue-to-vivid-purple-gradient-background{background: var(--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple) !important;}.has-light-green-cyan-to-vivid-green-cyan-gradient-background{background: var(--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan) !important;}.has-luminous-vivid-amber-to-luminous-vivid-orange-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange) !important;}.has-luminous-vivid-orange-to-vivid-red-gradient-background{background: var(--wp--preset--gradient--luminous-vivid-orange-to-vivid-red) !important;}.has-very-light-gray-to-cyan-bluish-gray-gradient-background{background: var(--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray) !important;}.has-cool-to-warm-spectrum-gradient-background{background: var(--wp--preset--gradient--cool-to-warm-spectrum) !important;}.has-blush-light-purple-gradient-background{background: var(--wp--preset--gradient--blush-light-purple) !important;}.has-blush-bordeaux-gradient-background{background: var(--wp--preset--gradient--blush-bordeaux) !important;}.has-luminous-dusk-gradient-background{background: var(--wp--preset--gradient--luminous-dusk) !important;}.has-pale-ocean-gradient-background{background: var(--wp--preset--gradient--pale-ocean) !important;}.has-electric-grass-gradient-background{background: var(--wp--preset--gradient--electric-grass) !important;}.has-midnight-gradient-background{background: var(--wp--preset--gradient--midnight) !important;}.has-small-font-size{font-size: var(--wp--preset--font-size--small) !important;}.has-medium-font-size{font-size: var(--wp--preset--font-size--medium) !important;}.has-large-font-size{font-size: var(--wp--preset--font-size--large) !important;}.has-x-large-font-size{font-size: var(--wp--preset--font-size--x-large) !important;}', 'no'),
(432, '_site_transient_timeout_theme_roots', '1657178386', 'no'),
(433, '_site_transient_theme_roots', 'a:1:{s:14:\"cobold-digital\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'front-page-template.php'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1657177135:1'),
(4, 2, '_edit_last', '1'),
(5, 2, 'welcome_section_header_text', 'We provide the best <strong>strategy</strong><br>to grow up your <strong>business</strong>'),
(6, 2, 'welcome_section_below_text', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus, imperdiet finibus efficitur posuere, placerat sed erat. Integer viverra et sapien in ornare.'),
(7, 2, 'home_feature_section_repeat_group', 'a:3:{i:0;a:4:{s:14:\"features-title\";s:15:\"Modern Strategy\";s:26:\"features-title-description\";s:82:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus.\";s:17:\"features_image_id\";i:13;s:14:\"features_image\";s:91:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/featured-item-01.png\";}i:1;a:4:{s:14:\"features-title\";s:17:\"Best Relationship\";s:26:\"features-title-description\";s:82:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus.\";s:17:\"features_image_id\";i:13;s:14:\"features_image\";s:91:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/featured-item-01.png\";}i:2;a:4:{s:14:\"features-title\";s:18:\"Ultimate Marketing\";s:26:\"features-title-description\";s:82:\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque velit metus.\";s:17:\"features_image_id\";i:13;s:14:\"features_image\";s:91:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/featured-item-01.png\";}}'),
(8, 2, 'big-feature_text', 'Let’s discuss about you project'),
(9, 2, 'big-feature-description_text', 'Nullam sit amet purus libero. Etiam ullamcorper nisl ut augue blandit, at finibus leo efficitur. Nam gravida purus non sapien auctor, ut aliquam magna ullamcorper.'),
(10, 2, 'big-feature-section-2_text', 'We can help you to grow your business'),
(11, 2, 'big-feature-section-2_textareasmall', 'Aenean pretium, ipsum et porttitor auctor, metus ipsum iaculis nisi, a bibendum lectus libero vitae urna. Sed id leo eu dolor luctus congue sed eget ipsum. Nunc nec luctus libero. Etiam quis dolor elit'),
(12, 2, 'work_progress_title', 'Work Process'),
(13, 2, 'work_progress_textarea_small', 'Aenean nec tempor metus. Maecenas ligula dolor, commodo in imperdiet interdum, vehicula ut ex. Donec ante diam.'),
(14, 2, 'work_progress_repeat_group', 'a:6:{i:0;a:4:{s:19:\"work_progress_title\";s:9:\"Get Ideas\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}i:1;a:4:{s:19:\"work_progress_title\";s:9:\"Sketch Up\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}i:2;a:4:{s:19:\"work_progress_title\";s:7:\"Discuss\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}i:3;a:4:{s:19:\"work_progress_title\";s:6:\"Revise\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}i:4;a:4:{s:19:\"work_progress_title\";s:7:\"Approve\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}i:5;a:4:{s:19:\"work_progress_title\";s:6:\"Launch\";s:25:\"work_progress_description\";s:30:\"Godard pabst prism fam cliche.\";s:23:\"work_progresst_image_id\";i:7;s:20:\"work_progresst_image\";s:95:\"http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png\";}}'),
(15, 2, 'testimonial_text', 'What do they say?'),
(16, 2, 'testimonial_textarea_small', 'Donec tempus, sem non rutrum imperdiet, lectus orci fringilla nulla, at accumsan elit eros a turpis. Ut sagittis lectus libero.'),
(17, 2, 'pricing-plan_text', 'Pricing Plans'),
(18, 2, 'pricing-plan_textarea_small', 'Donec vulputate urna sed rutrum venenatis. Cras consequat magna quis arcu elementum, quis congue risus volutpat.'),
(19, 2, 'blogs-section_text', 'Blog Entries'),
(20, 2, 'blogs_section_textarea_small', 'Integer molestie aliquam gravida. Nullam nec arcu finibus, imperdiet nulla vitae, placerat nibh. Cras maximus venenatis molestie.'),
(21, 2, 'contactus_main_heading', 'Talk To Us'),
(22, 2, 'contactus_heading_description', 'Maecenas pellentesque ante faucibus lectus vulputate sollicitudin. Cras feugiat hendrerit semper.'),
(23, 2, 'contactus_heading', 'Keep in touch'),
(24, 2, 'contact_section_description', '<p>110-220 Quisque diam odio, maximus ac consectetur eu, 10260 auctor non lorem</p>\r\n<p>You are NOT allowed to re-distribute Softy Pinko template on any template collection websites. Thank you.</p>'),
(25, 6, '_wp_attached_file', '2022/07/work-process-bg.png'),
(26, 6, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:589;s:4:\"file\";s:27:\"2022/07/work-process-bg.png\";s:8:\"filesize\";i:336844;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:27:\"work-process-bg-300x110.png\";s:5:\"width\";i:300;s:6:\"height\";i:110;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22506;}s:5:\"large\";a:5:{s:4:\"file\";s:28:\"work-process-bg-1024x377.png\";s:5:\"width\";i:1024;s:6:\"height\";i:377;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:174782;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:27:\"work-process-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14511;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:27:\"work-process-bg-768x283.png\";s:5:\"width\";i:768;s:6:\"height\";i:283;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:106141;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:28:\"work-process-bg-1536x565.png\";s:5:\"width\";i:1536;s:6:\"height\";i:565;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:336930;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 7, '_wp_attached_file', '2022/07/work-process-item-01.png'),
(28, 7, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:32:\"2022/07/work-process-item-01.png\";s:8:\"filesize\";i:2376;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 8, '_wp_attached_file', '2022/07/banner-bg.png'),
(30, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:940;s:4:\"file\";s:21:\"2022/07/banner-bg.png\";s:8:\"filesize\";i:368747;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"banner-bg-300x176.png\";s:5:\"width\";i:300;s:6:\"height\";i:176;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25477;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"banner-bg-1024x602.png\";s:5:\"width\";i:1024;s:6:\"height\";i:602;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:187577;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"banner-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11302;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"banner-bg-768x451.png\";s:5:\"width\";i:768;s:6:\"height\";i:451;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:114597;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:22:\"banner-bg-1536x902.png\";s:5:\"width\";i:1536;s:6:\"height\";i:902;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:360413;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 9, '_wp_attached_file', '2022/07/blog-item-01.png'),
(32, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:220;s:4:\"file\";s:24:\"2022/07/blog-item-01.png\";s:8:\"filesize\";i:146826;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"blog-item-01-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:93173;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-item-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44989;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 10, '_wp_attached_file', '2022/07/blog-item-02.png'),
(34, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:220;s:4:\"file\";s:24:\"2022/07/blog-item-02.png\";s:8:\"filesize\";i:122885;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"blog-item-02-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:85727;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-item-02-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41273;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 11, '_wp_attached_file', '2022/07/blog-item-03.png'),
(36, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:370;s:6:\"height\";i:220;s:4:\"file\";s:24:\"2022/07/blog-item-03.png\";s:8:\"filesize\";i:94789;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"blog-item-03-300x178.png\";s:5:\"width\";i:300;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"blog-item-03-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30494;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 12, '_wp_attached_file', '2022/07/circle-dec.png'),
(38, 12, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:58;s:6:\"height\";i:18;s:4:\"file\";s:22:\"2022/07/circle-dec.png\";s:8:\"filesize\";i:1354;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 13, '_wp_attached_file', '2022/07/featured-item-01.png'),
(40, 13, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:56;s:6:\"height\";i:48;s:4:\"file\";s:28:\"2022/07/featured-item-01.png\";s:8:\"filesize\";i:2982;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(41, 14, '_wp_attached_file', '2022/07/fun-facts-bg.png'),
(42, 14, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1600;s:6:\"height\";i:370;s:4:\"file\";s:24:\"2022/07/fun-facts-bg.png\";s:8:\"filesize\";i:239628;s:5:\"sizes\";a:5:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"fun-facts-bg-300x69.png\";s:5:\"width\";i:300;s:6:\"height\";i:69;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16834;}s:5:\"large\";a:5:{s:4:\"file\";s:25:\"fun-facts-bg-1024x237.png\";s:5:\"width\";i:1024;s:6:\"height\";i:237;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:125766;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"fun-facts-bg-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:17506;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"fun-facts-bg-768x178.png\";s:5:\"width\";i:768;s:6:\"height\";i:178;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:78549;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:25:\"fun-facts-bg-1536x355.png\";s:5:\"width\";i:1536;s:6:\"height\";i:355;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:236741;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 15, '_wp_attached_file', '2022/07/left-image.png'),
(44, 15, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:280;s:6:\"height\";i:280;s:4:\"file\";s:22:\"2022/07/left-image.png\";s:8:\"filesize\";i:15830;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"left-image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8661;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(45, 16, '_wp_attached_file', '2022/07/logo.png'),
(46, 16, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:30;s:4:\"file\";s:16:\"2022/07/logo.png\";s:8:\"filesize\";i:1632;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x30.png\";s:5:\"width\";i:150;s:6:\"height\";i:30;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1528;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 17, '_wp_attached_file', '2022/07/right-image.png'),
(48, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:288;s:6:\"height\";i:320;s:4:\"file\";s:23:\"2022/07/right-image.png\";s:8:\"filesize\";i:20984;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"right-image-270x300.png\";s:5:\"width\";i:270;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"right-image-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10074;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(49, 18, '_wp_attached_file', '2022/07/testimonial-icon.png'),
(50, 18, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:32;s:6:\"height\";i:32;s:4:\"file\";s:28:\"2022/07/testimonial-icon.png\";s:8:\"filesize\";i:2230;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 19, '_wp_trash_meta_status', 'publish'),
(52, 19, '_wp_trash_meta_time', '1656655638'),
(53, 20, '_form', '<div class=\"row\">\n<div class=\"col-lg-6 col-md-12 col-sm-12\">\n<fieldset>\n    [text* your-name placeholder \"Full name\"]\n</fieldset>\n</div>\n<div class=\"col-lg-6 col-md-12 col-sm-12\">\n<fieldset>\n    [email* your-email placeholder \"Email\"]\n</fieldset>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-12\">\n<fieldset>\n   [textarea* your-message placeholder \"Your Message\"]\n</fieldset>\n</div>\n</div>\n<div class=\"row\">\n<div class=\"col-lg-12\">\n<fieldset>\n[submit class:main \"Send Message\"]\n</fieldset>\n</div>\n</div>'),
(54, 20, '_mail', 'a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <saxena.akshat.akshat@gmail.com>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:163:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(55, 20, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:46:\"[_site_title] <saxena.akshat.akshat@gmail.com>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:105:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}'),
(56, 20, '_messages', 'a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}'),
(57, 20, '_additional_settings', ''),
(58, 20, '_locale', 'en_US'),
(59, 2, 'contact-form-7', '[contact-form-7 id=\"20\" title=\"Contact form 1\"]'),
(60, 2, 'text_facebookurl', 'https://www.google.com'),
(61, 2, 'text_twitterurl', 'https://www.google.com'),
(62, 2, 'text_linkedinurl', 'https://www.google.com'),
(63, 2, 'text_rssurl', 'https://www.google.com'),
(64, 2, 'text_dribbleurl', 'https://www.google.com'),
(65, 2, 'copyright_text_wysiwyg', 'Cobold Digital LLP. Wordpress Assessment.'),
(66, 2, 'big-feature_image_id', '15'),
(67, 2, 'big-feature_image', 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/left-image.png'),
(68, 2, 'big-feature-section-2_image_id', '17'),
(69, 2, 'big-feature-section-2_image', 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/right-image.png'),
(70, 2, 'wiki_test_repeat_group', 'a:4:{i:0;a:2:{s:5:\"title\";s:3:\"126\";s:12:\"second-title\";s:8:\"Projects\";}i:1;a:2:{s:5:\"title\";s:2:\"63\";s:12:\"second-title\";s:13:\"Happy Clients\";}i:2;a:2:{s:5:\"title\";s:2:\"18\";s:12:\"second-title\";s:11:\"Awards Wins\";}i:3;a:2:{s:5:\"title\";s:2:\"27\";s:12:\"second-title\";s:9:\"Countries\";}}'),
(71, 2, 'table_repeat_group', 'a:3:{i:0;a:6:{s:13:\"pricing-title\";s:7:\"Starter\";s:8:\"currency\";s:1:\"$\";s:5:\"price\";s:5:\"14.50\";s:6:\"period\";s:7:\"Monthly\";s:25:\"pricing_plan_list_wysiwyg\";s:223:\"<ul class=\"list\">\r\n<li class=\"active\">60 GB space</li>\r\n<li class=\"active\">600 GB transfer</li>\r\n<li class=\"active\">Pro Design Panel</li>\r\n<li>15-minute support</li>\r\n<li>Unlimited Emails</li>\r\n<li>24/7 Security</li>\r\n</ul>\";s:16:\"pricing_plan_url\";s:1:\"#\";}i:1;a:6:{s:13:\"pricing-title\";s:7:\"Premium\";s:8:\"currency\";s:1:\"$\";s:5:\"price\";s:5:\"21.50\";s:6:\"period\";s:7:\"monthly\";s:25:\"pricing_plan_list_wysiwyg\";s:240:\"<ul class=\"list\">\r\n<li class=\"active\">120 GB space</li>\r\n<li class=\"active\">1200 GB transfer</li>\r\n<li class=\"active\">Pro Design Panel</li>\r\n<li class=\"active\">15-minute support</li>\r\n<li>Unlimited Emails</li>\r\n<li>24/7 Security</li>\r\n</ul>\";s:16:\"pricing_plan_url\";s:1:\"#\";}i:2;a:6:{s:13:\"pricing-title\";s:8:\"Advanced\";s:8:\"currency\";s:1:\"$\";s:5:\"price\";s:5:\"42.00\";s:6:\"period\";s:7:\"monthly\";s:25:\"pricing_plan_list_wysiwyg\";s:270:\"<ul class=\"list\">\r\n<li class=\"active\">250 GB space</li>\r\n<li class=\"active\">5000 GB transfer</li>\r\n<li class=\"active\">Pro Design Panel</li>\r\n<li class=\"active\">15-minute support</li>\r\n<li class=\"active\">Unlimited Emails</li>\r\n<li class=\"active\">24/7 Security</li>\r\n</ul>\";s:16:\"pricing_plan_url\";s:1:\"#\";}}'),
(72, 21, '_edit_last', '1'),
(73, 21, '_edit_lock', '1656676662:1'),
(74, 22, '_edit_lock', '1656663019:1'),
(75, 24, '_edit_lock', '1656663057:1'),
(76, 25, '_edit_lock', '1656663083:1'),
(77, 26, '_edit_lock', '1656663488:1'),
(78, 27, '_edit_lock', '1656663882:1'),
(79, 28, '_wp_attached_file', '2022/07/SeekPng.com_silhouette-person-png_1100707.png'),
(80, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:568;s:4:\"file\";s:53:\"2022/07/SeekPng.com_silhouette-person-png_1100707.png\";s:8:\"filesize\";i:10449;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"SeekPng.com_silhouette-person-png_1100707-300x284.png\";s:5:\"width\";i:300;s:6:\"height\";i:284;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4861;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"SeekPng.com_silhouette-person-png_1100707-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2428;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 21, 'client_details_name', 'Catherine Soft'),
(82, 21, 'client_details_designation', 'Managing Director'),
(83, 21, 'client_details_image_id', '28'),
(84, 21, 'client_details_image', 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/SeekPng.com_silhouette-person-png_1100707.png'),
(85, 29, '_edit_last', '1'),
(86, 29, '_edit_lock', '1656664016:1'),
(87, 29, 'client_details_name', 'Kelvin Wood'),
(88, 29, 'client_details_designation', 'Digital Marketer'),
(89, 29, 'client_details_image_id', '28'),
(90, 29, 'client_details_image', 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/SeekPng.com_silhouette-person-png_1100707.png'),
(91, 30, '_edit_last', '1'),
(92, 30, 'client_details_name', 'David Martin'),
(93, 30, 'client_details_designation', 'Website Manager'),
(94, 30, 'client_details_image_id', '28'),
(95, 30, 'client_details_image', 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/SeekPng.com_silhouette-person-png_1100707.png'),
(96, 30, '_edit_lock', '1656666143:1'),
(97, 2, 'blogs_layout_wysiwyg', '[blogs]'),
(98, 1, '_edit_lock', '1656669603:1'),
(103, 33, '_edit_lock', '1656669510:1'),
(106, 33, '_thumbnail_id', '10'),
(107, 35, '_edit_lock', '1656669558:1'),
(110, 35, '_thumbnail_id', '11'),
(113, 1, '_thumbnail_id', '9'),
(114, 2, 'testimonial_layout_textareasmall', '[testimonials]'),
(115, 37, '_edit_lock', '1656676818:1'),
(116, 38, '_menu_item_type', 'post_type'),
(117, 38, '_menu_item_menu_item_parent', '0'),
(118, 38, '_menu_item_object_id', '2'),
(119, 38, '_menu_item_object', 'page'),
(120, 38, '_menu_item_target', ''),
(121, 38, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 38, '_menu_item_xfn', ''),
(123, 38, '_menu_item_url', ''),
(125, 39, '_menu_item_type', 'custom'),
(126, 39, '_menu_item_menu_item_parent', '0'),
(127, 39, '_menu_item_object_id', '39'),
(128, 39, '_menu_item_object', 'custom'),
(129, 39, '_menu_item_target', ''),
(130, 39, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(131, 39, '_menu_item_xfn', ''),
(132, 39, '_menu_item_url', '#features'),
(134, 40, '_menu_item_type', 'custom'),
(135, 40, '_menu_item_menu_item_parent', '0'),
(136, 40, '_menu_item_object_id', '40'),
(137, 40, '_menu_item_object', 'custom'),
(138, 40, '_menu_item_target', ''),
(139, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(140, 40, '_menu_item_xfn', ''),
(141, 40, '_menu_item_url', '#work-process'),
(143, 41, '_menu_item_type', 'custom'),
(144, 41, '_menu_item_menu_item_parent', '0'),
(145, 41, '_menu_item_object_id', '41'),
(146, 41, '_menu_item_object', 'custom'),
(147, 41, '_menu_item_target', ''),
(148, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(149, 41, '_menu_item_xfn', ''),
(150, 41, '_menu_item_url', '#testimonials'),
(152, 42, '_menu_item_type', 'custom'),
(153, 42, '_menu_item_menu_item_parent', '0'),
(154, 42, '_menu_item_object_id', '42'),
(155, 42, '_menu_item_object', 'custom'),
(156, 42, '_menu_item_target', ''),
(157, 42, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(158, 42, '_menu_item_xfn', ''),
(159, 42, '_menu_item_url', '#pricing-plans'),
(161, 43, '_menu_item_type', 'custom'),
(162, 43, '_menu_item_menu_item_parent', '0'),
(163, 43, '_menu_item_object_id', '43'),
(164, 43, '_menu_item_object', 'custom'),
(165, 43, '_menu_item_target', ''),
(166, 43, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(167, 43, '_menu_item_xfn', ''),
(168, 43, '_menu_item_url', '#blog'),
(170, 44, '_menu_item_type', 'custom'),
(171, 44, '_menu_item_menu_item_parent', '0'),
(172, 44, '_menu_item_object_id', '44'),
(173, 44, '_menu_item_object', 'custom'),
(174, 44, '_menu_item_target', ''),
(175, 44, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 44, '_menu_item_xfn', ''),
(177, 44, '_menu_item_url', '#contact-us'),
(179, 37, '_customize_restore_dismissed', '1'),
(180, 45, '_edit_lock', '1656680031:1'),
(181, 45, '_wp_trash_meta_status', 'publish'),
(182, 45, '_wp_trash_meta_time', '1656680067');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2022-07-01 06:02:24', '2022-07-01 06:02:24', '<!-- wp:paragraph -->\n<p>Cras aliquet ligula dui, vitae fermentum velit tincidunt id. Praesent eu finibus nunc. Nulla in sagittis eros. Aliquam egestas augue.</p>\n<!-- /wp:paragraph -->', 'Vivamus ac vehicula dui', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2022-07-01 10:01:59', '2022-07-01 10:01:59', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=1', 0, 'post', '', 1),
(2, 1, '2022-07-01 06:02:24', '2022-07-01 06:02:24', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Cobold-WordpressAssessment/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'publish', 'closed', 'open', '', 'home', '', '', '2022-07-01 10:04:14', '2022-07-01 10:04:14', '', 0, 'http://localhost/Cobold-WordpressAssessment/?page_id=2', 0, 'page', '', 0),
(3, 1, '2022-07-01 06:02:24', '2022-07-01 06:02:24', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://localhost/Cobold-WordpressAssessment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comments</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Media</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Embedded content from other websites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where your data is sent</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2022-07-01 06:02:24', '2022-07-01 06:02:24', '', 0, 'http://localhost/Cobold-WordpressAssessment/?page_id=3', 0, 'page', '', 0),
(4, 1, '2022-07-01 06:02:39', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 06:02:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=4', 0, 'post', '', 0),
(5, 1, '2022-07-01 06:03:46', '2022-07-01 06:03:46', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/Cobold-WordpressAssessment/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2022-07-01 06:03:46', '2022-07-01 06:03:46', '', 2, 'http://localhost/Cobold-WordpressAssessment/?p=5', 0, 'revision', '', 0),
(6, 1, '2022-07-01 06:06:39', '2022-07-01 06:06:39', '', 'work-process-bg', '', 'inherit', 'open', 'closed', '', 'work-process-bg', '', '', '2022-07-01 06:06:39', '2022-07-01 06:06:39', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-bg.png', 0, 'attachment', 'image/png', 0),
(7, 1, '2022-07-01 06:06:40', '2022-07-01 06:06:40', '', 'work-process-item-01', '', 'inherit', 'open', 'closed', '', 'work-process-item-01', '', '', '2022-07-01 06:06:40', '2022-07-01 06:06:40', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/work-process-item-01.png', 0, 'attachment', 'image/png', 0),
(8, 1, '2022-07-01 06:06:40', '2022-07-01 06:06:40', '', 'banner-bg', '', 'inherit', 'open', 'closed', '', 'banner-bg', '', '', '2022-07-01 06:06:40', '2022-07-01 06:06:40', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/banner-bg.png', 0, 'attachment', 'image/png', 0),
(9, 1, '2022-07-01 06:06:41', '2022-07-01 06:06:41', '', 'blog-item-01', '', 'inherit', 'open', 'closed', '', 'blog-item-01', '', '', '2022-07-01 06:06:41', '2022-07-01 06:06:41', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/blog-item-01.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 'blog-item-02', '', 'inherit', 'open', 'closed', '', 'blog-item-02', '', '', '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/blog-item-02.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 'blog-item-03', '', 'inherit', 'open', 'closed', '', 'blog-item-03', '', '', '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/blog-item-03.png', 0, 'attachment', 'image/png', 0),
(12, 1, '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 'circle-dec', '', 'inherit', 'open', 'closed', '', 'circle-dec', '', '', '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/circle-dec.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 'featured-item-01', '', 'inherit', 'open', 'closed', '', 'featured-item-01', '', '', '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/featured-item-01.png', 0, 'attachment', 'image/png', 0),
(14, 1, '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 'fun-facts-bg', '', 'inherit', 'open', 'closed', '', 'fun-facts-bg', '', '', '2022-07-01 06:06:42', '2022-07-01 06:06:42', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/fun-facts-bg.png', 0, 'attachment', 'image/png', 0),
(15, 1, '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 'left-image', '', 'inherit', 'open', 'closed', '', 'left-image', '', '', '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/left-image.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 'right-image', '', 'inherit', 'open', 'closed', '', 'right-image', '', '', '2022-07-01 06:06:43', '2022-07-01 06:06:43', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/right-image.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2022-07-01 06:06:44', '2022-07-01 06:06:44', '', 'testimonial-icon', '', 'inherit', 'open', 'closed', '', 'testimonial-icon', '', '', '2022-07-01 06:06:44', '2022-07-01 06:06:44', '', 0, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/testimonial-icon.png', 0, 'attachment', 'image/png', 0),
(19, 1, '2022-07-01 06:07:18', '2022-07-01 06:07:18', '{\n    \"show_on_front\": {\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 06:07:18\"\n    },\n    \"page_on_front\": {\n        \"value\": \"2\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 06:07:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '8cc5518d-8741-4f4b-b294-d164f8f13795', '', '', '2022-07-01 06:07:18', '2022-07-01 06:07:18', '', 0, 'http://localhost/Cobold-WordpressAssessment/2022/07/01/8cc5518d-8741-4f4b-b294-d164f8f13795/', 0, 'customize_changeset', '', 0),
(20, 1, '2022-07-01 06:08:23', '2022-07-01 06:08:23', '<div class=\"row\">\r\n<div class=\"col-lg-6 col-md-12 col-sm-12\">\r\n<fieldset>\r\n    [text* your-name placeholder \"Full name\"]\r\n</fieldset>\r\n</div>\r\n<div class=\"col-lg-6 col-md-12 col-sm-12\">\r\n<fieldset>\r\n    [email* your-email placeholder \"Email\"]\r\n</fieldset>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<fieldset>\r\n   [textarea* your-message placeholder \"Your Message\"]\r\n</fieldset>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-lg-12\">\r\n<fieldset>\r\n[submit class:main \"Send Message\"]\r\n</fieldset>\r\n</div>\r\n</div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <saxena.akshat.akshat@gmail.com>\n[_site_admin_email]\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <saxena.akshat.akshat@gmail.com>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis e-mail was sent from a contact form on [_site_title] ([_site_url])\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2022-07-01 06:08:44', '2022-07-01 06:08:44', '', 0, 'http://localhost/Cobold-WordpressAssessment/?post_type=wpcf7_contact_form&#038;p=20', 0, 'wpcf7_contact_form', '', 0),
(21, 1, '2022-07-01 08:05:58', '2022-07-01 08:05:58', 'Proin a neque nisi. Nam ipsum nisi, venenatis ut nulla quis, egestas scelerisque orci. Maecenas a finibus odio.', 'Catherine Soft', '', 'publish', 'closed', 'closed', '', 'catherine-soft', '', '', '2022-07-01 08:28:06', '2022-07-01 08:28:06', '', 0, 'http://localhost/Cobold-WordpressAssessment/?post_type=testimonials&#038;p=21', 0, 'testimonials', '', 0),
(22, 1, '2022-07-01 08:12:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 08:12:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=22', 0, 'post', '', 0),
(23, 1, '2022-07-01 08:12:28', '2022-07-01 08:12:28', '{\"version\": 2, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-cobold-digital', '', '', '2022-07-01 08:12:28', '2022-07-01 08:12:28', '', 0, 'http://localhost/Cobold-WordpressAssessment/2022/07/01/wp-global-styles-cobold-digital/', 0, 'wp_global_styles', '', 0),
(24, 1, '2022-07-01 08:12:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 08:12:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=24', 0, 'post', '', 0),
(25, 1, '2022-07-01 08:13:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 08:13:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=25', 0, 'post', '', 0),
(26, 1, '2022-07-01 08:13:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 08:13:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=26', 0, 'post', '', 0),
(27, 1, '2022-07-01 08:18:10', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2022-07-01 08:18:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=27', 0, 'post', '', 0),
(28, 1, '2022-07-01 08:27:33', '2022-07-01 08:27:33', '', 'SeekPng.com_silhouette-person-png_1100707', '', 'inherit', 'open', 'closed', '', 'seekpng-com_silhouette-person-png_1100707', '', '', '2022-07-01 08:27:33', '2022-07-01 08:27:33', '', 21, 'http://localhost/Cobold-WordpressAssessment/wp-content/uploads/2022/07/SeekPng.com_silhouette-person-png_1100707.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2022-07-01 08:29:13', '2022-07-01 08:29:13', 'Integer molestie aliquam gravida. Nullam nec arcu finibus, imperdiet nulla vitae, placerat nibh. Cras maximus venenatis molestie.', '', '', 'publish', 'closed', 'closed', '', '29', '', '', '2022-07-01 08:29:13', '2022-07-01 08:29:13', '', 0, 'http://localhost/Cobold-WordpressAssessment/?post_type=testimonials&#038;p=29', 0, 'testimonials', '', 0),
(30, 1, '2022-07-01 08:29:58', '2022-07-01 08:29:58', 'Quisque diam odio, maximus ac consectetur eu, auctor non lorem. Cras quis est non ante ultrices molestie. Ut vehicula et diam at aliquam', 'Auto Draft', '', 'publish', 'closed', 'closed', '', 'auto-draft', '', '', '2022-07-01 08:29:58', '2022-07-01 08:29:58', '', 0, 'http://localhost/Cobold-WordpressAssessment/?post_type=testimonials&#038;p=30', 0, 'testimonials', '', 0),
(31, 1, '2022-07-01 09:05:14', '2022-07-01 09:05:14', '<!-- wp:paragraph -->\n<p>Cras aliquet ligula dui, vitae fermentum velit tincidunt id. Praesent eu finibus nunc. Nulla in sagittis eros. Aliquam egestas augue.</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-07-01 09:05:14', '2022-07-01 09:05:14', '', 1, 'http://localhost/Cobold-WordpressAssessment/?p=31', 0, 'revision', '', 0),
(32, 1, '2022-07-01 09:59:57', '2022-07-01 09:59:57', '<!-- wp:paragraph -->\n<p>Cras aliquet ligula dui, vitae fermentum velit tincidunt id. Praesent eu finibus nunc. Nulla in sagittis eros. Aliquam egestas augue.</p>\n<!-- /wp:paragraph -->', 'Vivamus ac vehicula dui', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2022-07-01 09:59:57', '2022-07-01 09:59:57', '', 1, 'http://localhost/Cobold-WordpressAssessment/?p=32', 0, 'revision', '', 0),
(33, 1, '2022-07-01 10:00:52', '2022-07-01 10:00:52', '<!-- wp:paragraph -->\n<p>Aliquam commodo ornare nisl, et scelerisque nisl dignissim ac. Vestibulum finibus urna ut velit venenatis, vel ultrices sapien mattis</p>\n<!-- /wp:paragraph -->', 'Phasellus convallis augue', '', 'publish', 'open', 'open', '', 'phasellus-convallis-augue', '', '', '2022-07-01 10:00:52', '2022-07-01 10:00:52', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=33', 0, 'post', '', 0),
(34, 1, '2022-07-01 10:00:52', '2022-07-01 10:00:52', '<!-- wp:paragraph -->\n<p>Aliquam commodo ornare nisl, et scelerisque nisl dignissim ac. Vestibulum finibus urna ut velit venenatis, vel ultrices sapien mattis</p>\n<!-- /wp:paragraph -->', 'Phasellus convallis augue', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2022-07-01 10:00:52', '2022-07-01 10:00:52', '', 33, 'http://localhost/Cobold-WordpressAssessment/?p=34', 0, 'revision', '', 0),
(35, 1, '2022-07-01 10:01:39', '2022-07-01 10:01:39', '<!-- wp:paragraph -->\n<p>Maecenas eu erat vitae dui convallis consequat vel gravida nulla. Vestibulum finibus euismod odio, ut tempus enim varius eu.</p>\n<!-- /wp:paragraph -->', 'Nam gravida purus non', '', 'publish', 'open', 'open', '', 'nam-gravida-purus-non', '', '', '2022-07-01 10:01:39', '2022-07-01 10:01:39', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=35', 0, 'post', '', 0),
(36, 1, '2022-07-01 10:01:39', '2022-07-01 10:01:39', '<!-- wp:paragraph -->\n<p>Maecenas eu erat vitae dui convallis consequat vel gravida nulla. Vestibulum finibus euismod odio, ut tempus enim varius eu.</p>\n<!-- /wp:paragraph -->', 'Nam gravida purus non', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2022-07-01 10:01:39', '2022-07-01 10:01:39', '', 35, 'http://localhost/Cobold-WordpressAssessment/?p=36', 0, 'revision', '', 0),
(37, 1, '2022-07-01 11:58:05', '0000-00-00 00:00:00', '{\n    \"cobold-digital::nav_menu_locations[menu-1]\": {\n        \"value\": -2993950655901921300,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 11:58:05\"\n    },\n    \"nav_menu[-2993950655901921300]\": {\n        \"value\": {\n            \"name\": \"home\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 11:58:05\"\n    },\n    \"nav_menu_item[-3074931294116915000]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"custom\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"About\",\n            \"url\": \"#\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"About\",\n            \"nav_menu_term_id\": -2993950655901921300,\n            \"_invalid\": false,\n            \"type_label\": \"Custom Link\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 11:58:05\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '05929bcd-4da2-43d0-a3e4-4c2b0eede1a8', '', '', '2022-07-01 11:58:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=37', 0, 'customize_changeset', '', 0),
(38, 1, '2022-07-01 12:06:16', '2022-07-01 11:58:56', ' ', '', '', 'publish', 'closed', 'closed', '', '38', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=38', 1, 'nav_menu_item', '', 0),
(39, 1, '2022-07-01 12:06:16', '2022-07-01 12:02:23', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=39', 2, 'nav_menu_item', '', 0),
(40, 1, '2022-07-01 12:54:27', '2022-07-01 12:02:23', '', 'Work Process', '', 'publish', 'closed', 'closed', '', 'work-progress', '', '', '2022-07-01 12:54:27', '2022-07-01 12:54:27', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2022-07-01 12:06:16', '2022-07-01 12:02:23', '', 'Testimonials', '', 'publish', 'closed', 'closed', '', 'testimonils', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=41', 4, 'nav_menu_item', '', 0),
(42, 1, '2022-07-01 12:06:16', '2022-07-01 12:02:23', '', 'Pricing Tables', '', 'publish', 'closed', 'closed', '', 'pricing-tables', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=42', 5, 'nav_menu_item', '', 0),
(43, 1, '2022-07-01 12:06:16', '2022-07-01 12:02:23', '', 'Blog Entries', '', 'publish', 'closed', 'closed', '', 'blog-entries', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=43', 6, 'nav_menu_item', '', 0),
(44, 1, '2022-07-01 12:06:16', '2022-07-01 12:02:23', '', 'Contact us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2022-07-01 12:06:16', '2022-07-01 12:06:16', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=44', 7, 'nav_menu_item', '', 0),
(45, 1, '2022-07-01 12:54:27', '2022-07-01 12:54:27', '{\n    \"nav_menu_item[40]\": {\n        \"value\": {\n            \"menu_item_parent\": 0,\n            \"object_id\": 40,\n            \"object\": \"custom\",\n            \"type\": \"custom\",\n            \"type_label\": \"Custom Link\",\n            \"title\": \"Work Process\",\n            \"url\": \"#work-process\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"nav_menu_term_id\": 3,\n            \"position\": 3,\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"_invalid\": false\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2022-07-01 12:54:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5ef959c1-3d09-4a79-be0e-75d8c3f6b088', '', '', '2022-07-01 12:54:27', '2022-07-01 12:54:27', '', 0, 'http://localhost/Cobold-WordpressAssessment/?p=45', 0, 'customize_changeset', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'cobold-digital', 'cobold-digital', 0),
(3, 'Menu', 'menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(23, 2, 0),
(33, 1, 0),
(35, 1, 0),
(38, 3, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(42, 3, 0),
(43, 3, 0),
(44, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'nav_menu', '', 0, 7);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"fbd50fe9a8689d53c1252ecdffad8a9d0e510f07203374db1f38e89be5275432\";a:4:{s:10:\"expiration\";i:1657349398;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.5060.66 Safari/537.36\";s:5:\"login\";i:1657176598;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_page', 'a:21:{i:0;s:45:\"cmb-group-home_feature_section_repeat_group-0\";i:1;s:45:\"cmb-group-home_feature_section_repeat_group-1\";i:2;s:45:\"cmb-group-home_feature_section_repeat_group-2\";i:3;s:38:\"cmb-group-work_progress_repeat_group-0\";i:4;s:38:\"cmb-group-work_progress_repeat_group-1\";i:5;s:38:\"cmb-group-work_progress_repeat_group-2\";i:6;s:38:\"cmb-group-work_progress_repeat_group-3\";i:7;s:38:\"cmb-group-work_progress_repeat_group-4\";i:8;s:38:\"cmb-group-work_progress_repeat_group-5\";i:9;s:21:\"pricing-plans-section\";i:10;s:30:\"cmb-group-table_repeat_group-0\";i:11;s:30:\"cmb-group-table_repeat_group-1\";i:12;s:30:\"cmb-group-table_repeat_group-2\";i:13;s:15:\"counter-section\";i:14;s:34:\"cmb-group-wiki_test_repeat_group-0\";i:15;s:34:\"cmb-group-wiki_test_repeat_group-1\";i:16;s:34:\"cmb-group-wiki_test_repeat_group-2\";i:17;s:34:\"cmb-group-wiki_test_repeat_group-3\";i:18;s:12:\"blog-section\";i:19;s:18:\"contact-us-section\";i:20;s:14:\"footer-section\";}'),
(19, 1, 'metaboxhidden_page', 'a:12:{i:0;s:10:\"postcustom\";i:1;s:16:\"commentstatusdiv\";i:2;s:11:\"commentsdiv\";i:3;s:7:\"slugdiv\";i:4;s:9:\"authordiv\";i:5;s:30:\"cmb-group-table_repeat_group-0\";i:6;s:30:\"cmb-group-table_repeat_group-1\";i:7;s:30:\"cmb-group-table_repeat_group-2\";i:8;s:34:\"cmb-group-wiki_test_repeat_group-0\";i:9;s:34:\"cmb-group-wiki_test_repeat_group-1\";i:10;s:34:\"cmb-group-wiki_test_repeat_group-2\";i:11;s:34:\"cmb-group-wiki_test_repeat_group-3\";}'),
(20, 1, 'meta-box-order_page', 'a:3:{s:4:\"side\";s:36:\"submitdiv,pageparentdiv,postimagediv\";s:6:\"normal\";s:529:\"home-feature-section,cmb-group-home_feature_section_repeat_group-0,cmb-group-home_feature_section_repeat_group-1,cmb-group-home_feature_section_repeat_group-2,big-feature-section,welcome-section,big-feature-section-2,work-process-section,cmb-group-work_progress_repeat_group-0,cmb-group-work_progress_repeat_group-1,cmb-group-work_progress_repeat_group-2,cmb-group-work_progress_repeat_group-3,cmb-group-work_progress_repeat_group-4,cmb-group-work_progress_repeat_group-5,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:338:\"testimonials-section,pricing-plans-section,cmb-group-table_repeat_group-0,cmb-group-table_repeat_group-1,cmb-group-table_repeat_group-2,counter-section,cmb-group-wiki_test_repeat_group-0,cmb-group-wiki_test_repeat_group-1,cmb-group-wiki_test_repeat_group-2,cmb-group-wiki_test_repeat_group-3,blog-section,contact-us-section,footer-section\";}'),
(21, 1, 'screen_layout_page', '2'),
(22, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(23, 1, 'wp_user-settings-time', '1656664566'),
(24, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(25, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:26:\"add-post-type-testimonials\";i:1;s:12:\"add-post_tag\";}'),
(26, 1, 'nav_menu_recently_edited', '3');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BbkacIMmDfOsPSghs3nQSED7H1LXg81', 'admin', 'saxena.akshat.akshat@gmail.com', 'http://localhost/Cobold-WordpressAssessment', '2022-07-01 06:02:24', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=434;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
