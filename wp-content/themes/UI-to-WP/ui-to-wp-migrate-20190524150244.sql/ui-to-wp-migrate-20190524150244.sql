# WordPress MySQL database migration
#
# Generated: Friday 24. May 2019 15:02 UTC
# Hostname: localhost
# Database: `UI-to-WP`
# URL: //localhost:8888/samer
# Path: C:\\xampp\\htdocs\\examles\\UI-to-WP
# Tables: wp_commentmeta, wp_comments, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, attachment, nav_menu_item, page, post, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8mb4 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-05-23 02:46:02', '2019-05-23 02:46:02', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost:8888/samer', 'yes'),
(2, 'home', 'http://localhost:8888/samer', 'yes'),
(3, 'blogname', 'UI-to-WP', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'samer-senbol@hotmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
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
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=18&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:36:"contact-form-7/wp-contact-form-7.php";i:2;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'UI-to-WP', 'yes'),
(41, 'stylesheet', 'UI-to-WP', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '23', 'yes'),
(84, 'page_on_front', '18', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-1";a:1:{i:0;s:10:"nav_menu-2";}s:13:"array_version";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:2:{i:2;a:1:{s:8:"nav_menu";i:3;}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(111, 'cron', 'a:5:{i:1558712764;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1558752364;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1558752378;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1558752380;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(112, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1558579740;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"nav_menu_locations";a:0:{}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(141, 'current_theme', '', 'yes'),
(142, 'theme_mods_UI-to-WP', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:7:"primary";i:2;s:9:"secondary";i:3;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1558579731;s:4:"data";a:1:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}s:18:"custom_css_post_id";i:-1;}', 'yes'),
(143, 'theme_switched', '', 'yes'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(183, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(193, 'wpcf7', 'a:2:{s:7:"version";s:5:"5.1.3";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1558707746;s:7:"version";s:5:"5.1.3";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(197, 'category_children', 'a:0:{}', 'yes'),
(204, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1558710164;}', 'no') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1558614171:1'),
(4, 6, '_edit_lock', '1558614186:1'),
(5, 7, '_edit_lock', '1558614622:1'),
(6, 8, '_edit_last', '1'),
(7, 8, '_edit_lock', '1558615036:1'),
(14, 1, '_wp_trash_meta_status', 'publish'),
(15, 1, '_wp_trash_meta_time', '1558615188'),
(16, 1, '_wp_desired_post_slug', 'hello-world'),
(17, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(18, 8, '_wp_trash_meta_status', 'publish'),
(19, 8, '_wp_trash_meta_time', '1558615659'),
(20, 8, '_wp_desired_post_slug', 'hej-varlden'),
(21, 13, '_edit_last', '1'),
(22, 13, '_edit_lock', '1558698569:1'),
(23, 15, '_wp_attached_file', '2019/05/city.jpg'),
(24, 15, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1920;s:6:"height";i:690;s:4:"file";s:16:"2019/05/city.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:16:"city-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:16:"city-300x108.jpg";s:5:"width";i:300;s:6:"height";i:108;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:16:"city-768x276.jpg";s:5:"width";i:768;s:6:"height";i:276;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:17:"city-1024x368.jpg";s:5:"width";i:1024;s:6:"height";i:368;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(25, 16, '_edit_last', '1'),
(26, 16, '_edit_lock', '1558699311:1'),
(27, 16, '_thumbnail_id', '15'),
(28, 18, '_edit_last', '1'),
(29, 18, '_edit_lock', '1558701517:1'),
(30, 18, '_thumbnail_id', '15'),
(31, 13, '_wp_trash_meta_status', 'draft'),
(32, 13, '_wp_trash_meta_time', '1558701699'),
(33, 13, '_wp_desired_post_slug', ''),
(34, 16, '_wp_trash_meta_status', 'publish'),
(35, 16, '_wp_trash_meta_time', '1558701708'),
(36, 16, '_wp_desired_post_slug', 'hem'),
(37, 3, '_wp_trash_meta_status', 'draft'),
(38, 3, '_wp_trash_meta_time', '1558701715'),
(39, 3, '_wp_desired_post_slug', 'privacy-policy'),
(40, 2, '_wp_trash_meta_status', 'publish'),
(41, 2, '_wp_trash_meta_time', '1558701720'),
(42, 2, '_wp_desired_post_slug', 'sample-page'),
(43, 23, '_edit_last', '1'),
(44, 23, '_edit_lock', '1558701608:1'),
(45, 25, '_edit_last', '1'),
(46, 25, '_edit_lock', '1558708400:1'),
(47, 28, '_edit_last', '1'),
(48, 28, '_edit_lock', '1558701738:1'),
(49, 29, '_wp_attached_file', '2019/05/london.jpg'),
(50, 29, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1600;s:6:"height";i:1000;s:4:"file";s:18:"2019/05/london.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"london-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"london-300x188.jpg";s:5:"width";i:300;s:6:"height";i:188;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"london-768x480.jpg";s:5:"width";i:768;s:6:"height";i:480;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"london-1024x640.jpg";s:5:"width";i:1024;s:6:"height";i:640;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:12:"Getty Images";s:6:"camera";s:0:"";s:7:"caption";s:48:"London Big Ben and traffic on Westminster Bridge";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:18:"(c) Sylvain Sonnet";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:9:"174726709";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(51, 28, '_thumbnail_id', '29'),
(54, 31, '_edit_last', '1'),
(55, 31, '_edit_lock', '1558702714:1'),
(56, 32, '_wp_attached_file', '2019/05/paris.jpg'),
(57, 32, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1024;s:6:"height";i:576;s:4:"file";s:17:"2019/05/paris.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"paris-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"paris-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:17:"paris-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:18:"paris-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(58, 31, '_thumbnail_id', '32'),
(61, 34, '_edit_last', '1'),
(62, 34, '_edit_lock', '1558702786:1'),
(63, 35, '_wp_attached_file', '2019/05/washington.jpg'),
(64, 35, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1112;s:6:"height";i:626;s:4:"file";s:22:"2019/05/washington.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:22:"washington-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:22:"washington-300x169.jpg";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:22:"washington-768x432.jpg";s:5:"width";i:768;s:6:"height";i:432;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:23:"washington-1024x576.jpg";s:5:"width";i:1024;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"8";s:6:"credit";s:12:"Victor Leung";s:6:"camera";s:21:"Canon EOS 5D Mark III";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1380385710";s:9:"copyright";s:0:"";s:12:"focal_length";s:3:"135";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:6:"0.0025";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:9:{i:0;s:8:"Products";i:1;s:13:"Washington-DC";i:2;s:7:"Big-Bus";i:3;s:8:"24-Hours";i:4;s:5:"sunny";i:5;s:7:"vehicle";i:6;s:9:"monuments";i:7;s:9:"buidlinds";i:8;s:12:"architecture";}}}'),
(65, 34, '_thumbnail_id', '35'),
(68, 37, '_edit_last', '1'),
(69, 37, '_edit_lock', '1558708316:1'),
(70, 39, '_edit_last', '1'),
(71, 39, '_edit_lock', '1558708306:1'),
(72, 42, '_wp_attached_file', '2019/05/photo.jpg'),
(73, 42, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:620;s:6:"height";i:620;s:4:"file";s:17:"2019/05/photo.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"photo-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"photo-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(74, 41, '_edit_last', '1'),
(75, 41, '_thumbnail_id', '42'),
(76, 41, '_edit_lock', '1558708267:1'),
(77, 44, '_edit_last', '1'),
(78, 44, '_edit_lock', '1558708462:1'),
(79, 46, '_menu_item_type', 'post_type'),
(80, 46, '_menu_item_menu_item_parent', '0'),
(81, 46, '_menu_item_object_id', '44'),
(82, 46, '_menu_item_object', 'page'),
(83, 46, '_menu_item_target', ''),
(84, 46, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(85, 46, '_menu_item_xfn', ''),
(86, 46, '_menu_item_url', ''),
(88, 47, '_menu_item_type', 'post_type'),
(89, 47, '_menu_item_menu_item_parent', '0'),
(90, 47, '_menu_item_object_id', '41'),
(91, 47, '_menu_item_object', 'page'),
(92, 47, '_menu_item_target', ''),
(93, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(94, 47, '_menu_item_xfn', ''),
(95, 47, '_menu_item_url', ''),
(97, 48, '_menu_item_type', 'post_type'),
(98, 48, '_menu_item_menu_item_parent', '0'),
(99, 48, '_menu_item_object_id', '39'),
(100, 48, '_menu_item_object', 'page'),
(101, 48, '_menu_item_target', ''),
(102, 48, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(103, 48, '_menu_item_xfn', ''),
(104, 48, '_menu_item_url', ''),
(106, 49, '_menu_item_type', 'post_type'),
(107, 49, '_menu_item_menu_item_parent', '0'),
(108, 49, '_menu_item_object_id', '37'),
(109, 49, '_menu_item_object', 'page'),
(110, 49, '_menu_item_target', ''),
(111, 49, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(112, 49, '_menu_item_xfn', ''),
(113, 49, '_menu_item_url', ''),
(115, 50, '_menu_item_type', 'post_type'),
(116, 50, '_menu_item_menu_item_parent', '0') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(117, 50, '_menu_item_object_id', '25'),
(118, 50, '_menu_item_object', 'page'),
(119, 50, '_menu_item_target', ''),
(120, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(121, 50, '_menu_item_xfn', ''),
(122, 50, '_menu_item_url', ''),
(124, 51, '_menu_item_type', 'post_type'),
(125, 51, '_menu_item_menu_item_parent', '0'),
(126, 51, '_menu_item_object_id', '23'),
(127, 51, '_menu_item_object', 'page'),
(128, 51, '_menu_item_target', ''),
(129, 51, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(130, 51, '_menu_item_xfn', ''),
(131, 51, '_menu_item_url', ''),
(133, 52, '_menu_item_type', 'post_type'),
(134, 52, '_menu_item_menu_item_parent', '0'),
(135, 52, '_menu_item_object_id', '18'),
(136, 52, '_menu_item_object', 'page'),
(137, 52, '_menu_item_target', ''),
(138, 52, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(139, 52, '_menu_item_xfn', ''),
(140, 52, '_menu_item_url', ''),
(142, 53, '_menu_item_type', 'post_type'),
(143, 53, '_menu_item_menu_item_parent', '0'),
(144, 53, '_menu_item_object_id', '41'),
(145, 53, '_menu_item_object', 'page'),
(146, 53, '_menu_item_target', ''),
(147, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(148, 53, '_menu_item_xfn', ''),
(149, 53, '_menu_item_url', ''),
(151, 54, '_menu_item_type', 'post_type'),
(152, 54, '_menu_item_menu_item_parent', '0'),
(153, 54, '_menu_item_object_id', '39'),
(154, 54, '_menu_item_object', 'page'),
(155, 54, '_menu_item_target', ''),
(156, 54, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(157, 54, '_menu_item_xfn', ''),
(158, 54, '_menu_item_url', ''),
(160, 55, '_menu_item_type', 'post_type'),
(161, 55, '_menu_item_menu_item_parent', '0'),
(162, 55, '_menu_item_object_id', '37'),
(163, 55, '_menu_item_object', 'page'),
(164, 55, '_menu_item_target', ''),
(165, 55, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(166, 55, '_menu_item_xfn', ''),
(167, 55, '_menu_item_url', ''),
(169, 56, '_menu_item_type', 'post_type'),
(170, 56, '_menu_item_menu_item_parent', '0'),
(171, 56, '_menu_item_object_id', '25'),
(172, 56, '_menu_item_object', 'page'),
(173, 56, '_menu_item_target', ''),
(174, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(175, 56, '_menu_item_xfn', ''),
(176, 56, '_menu_item_url', ''),
(178, 25, '_wp_page_template', 'undersida.php'),
(179, 57, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]'),
(180, 57, '_mail', 'a:8:{s:7:"subject";s:25:"UI-to-WP "[your-subject]"";s:6:"sender";s:35:"UI-to-WP <samer-senbol@hotmail.com>";s:4:"body";s:174:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on UI-to-WP (http://localhost:8888/samer)";s:9:"recipient";s:24:"samer-senbol@hotmail.com";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(181, 57, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:25:"UI-to-WP "[your-subject]"";s:6:"sender";s:35:"UI-to-WP <samer-senbol@hotmail.com>";s:4:"body";s:116:"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on UI-to-WP (http://localhost:8888/samer)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:34:"Reply-To: samer-senbol@hotmail.com";s:11:"attachments";s:0:"";s:8:"use_html";i:0;s:13:"exclude_blank";i:0;}'),
(182, 57, '_messages', 'a:8:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";}'),
(183, 57, '_additional_settings', NULL),
(184, 57, '_locale', 'en_US'),
(185, 44, '_wp_page_template', 'contact.php'),
(186, 41, '_wp_page_template', 'undersida4.php'),
(187, 39, '_wp_page_template', 'undersida3.php'),
(188, 37, '_wp_page_template', 'undersida2.php') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-05-23 02:46:02', '2019-05-23 02:46:02', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2019-05-23 12:39:48', '2019-05-23 12:39:48', '', 0, 'http://localhost:8888/samer/?p=1', 0, 'post', '', 1),
(2, 1, '2019-05-23 02:46:02', '2019-05-23 02:46:02', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/samer/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2019-05-24 12:42:00', '2019-05-24 12:42:00', '', 0, 'http://localhost:8888/samer/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-05-23 02:46:02', '2019-05-23 02:46:02', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/samer.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2019-05-24 12:41:55', '2019-05-24 12:41:55', '', 0, 'http://localhost:8888/samer/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-05-23 02:46:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-23 02:46:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?p=4', 0, 'post', '', 0),
(5, 1, '2019-05-23 12:17:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-23 12:17:58', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?p=5', 0, 'post', '', 0),
(6, 1, '2019-05-23 12:25:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-23 12:25:17', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?p=6', 0, 'post', '', 0),
(7, 1, '2019-05-23 12:25:32', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-23 12:25:32', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?p=7', 0, 'post', '', 0),
(8, 1, '2019-05-23 12:39:06', '2019-05-23 12:39:06', 'Sed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet\r\n\r\n[caption id="attachment_10" align="alignnone" width="300"]<img class="size-medium wp-image-10" src="http://localhost:8888/samer/wp-content/uploads/2019/05/london-300x188.jpg" alt="" width="300" height="188" /> London Big Ben and traffic on Westminster Bridge[/caption]', 'Hej världen!', '', 'trash', 'open', 'open', '', 'hej-varlden__trashed', '', '', '2019-05-23 12:47:39', '2019-05-23 12:47:39', '', 0, 'http://localhost:8888/samer/?p=8', 0, 'post', '', 0),
(11, 1, '2019-05-23 12:39:06', '2019-05-23 12:39:06', 'Sed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet\r\n\r\n[caption id="attachment_10" align="alignnone" width="300"]<img class="size-medium wp-image-10" src="http://localhost:8888/samer/wp-content/uploads/2019/05/london-300x188.jpg" alt="" width="300" height="188" /> London Big Ben and traffic on Westminster Bridge[/caption]', 'Hej världen!', '', 'inherit', 'closed', 'closed', '', '8-revision-v1', '', '', '2019-05-23 12:39:06', '2019-05-23 12:39:06', '', 8, 'http://localhost:8888/samer/2019/05/23/8-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2019-05-23 12:39:48', '2019-05-23 12:39:48', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-05-23 12:39:48', '2019-05-23 12:39:48', '', 1, 'http://localhost:8888/samer/2019/05/23/1-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2019-05-24 12:41:39', '2019-05-24 12:41:39', '', 'Hem', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2019-05-24 12:41:39', '2019-05-24 12:41:39', '', 0, 'http://localhost:8888/samer/?page_id=13', 0, 'page', '', 0),
(14, 1, '2019-05-24 11:52:06', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-05-24 11:52:06', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?page_id=14', 0, 'page', '', 0),
(15, 1, '2019-05-24 11:52:22', '2019-05-24 11:52:22', '', 'city', 'Hej ', 'inherit', 'open', 'closed', '', 'city', '', '', '2019-05-24 11:54:09', '2019-05-24 11:54:09', '', 14, 'http://localhost:8888/samer/wp-content/uploads/2019/05/city.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2019-05-24 12:04:12', '2019-05-24 12:04:12', '', 'Hem', '', 'trash', 'closed', 'closed', '', 'hem__trashed', '', '', '2019-05-24 12:41:48', '2019-05-24 12:41:48', '', 0, 'http://localhost:8888/samer/?page_id=16', 0, 'page', '', 0),
(17, 1, '2019-05-24 12:04:12', '2019-05-24 12:04:12', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2019-05-24 12:04:12', '2019-05-24 12:04:12', '', 16, 'http://localhost:8888/samer/2019/05/24/16-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2019-05-24 12:40:56', '2019-05-24 12:40:56', '<h1>Hej och välkommen!</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex.', 'Hem', '', 'publish', 'closed', 'closed', '', 'hem-2', '', '', '2019-05-24 12:40:56', '2019-05-24 12:40:56', '', 0, 'http://localhost:8888/samer/?page_id=18', 0, 'page', '', 0),
(19, 1, '2019-05-24 12:40:56', '2019-05-24 12:40:56', '<h1>Hej och välkommen!</h1>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex.', 'Hem', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-05-24 12:40:56', '2019-05-24 12:40:56', '', 18, 'http://localhost:8888/samer/2019/05/24/18-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2019-05-24 12:41:39', '2019-05-24 12:41:39', '', 'Hem', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-05-24 12:41:39', '2019-05-24 12:41:39', '', 13, 'http://localhost:8888/samer/2019/05/24/13-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2019-05-24 12:41:55', '2019-05-24 12:41:55', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost:8888/samer.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-05-24 12:41:55', '2019-05-24 12:41:55', '', 3, 'http://localhost:8888/samer/2019/05/24/3-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2019-05-24 12:42:00', '2019-05-24 12:42:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://localhost:8888/samer/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-05-24 12:42:00', '2019-05-24 12:42:00', '', 2, 'http://localhost:8888/samer/2019/05/24/2-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-05-24 12:42:21', '2019-05-24 12:42:21', '', 'Blogg', '', 'publish', 'closed', 'closed', '', 'blogg', '', '', '2019-05-24 12:42:21', '2019-05-24 12:42:21', '', 0, 'http://localhost:8888/samer/?page_id=23', 0, 'page', '', 0),
(24, 1, '2019-05-24 12:42:21', '2019-05-24 12:42:21', '', 'Blogg', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2019-05-24 12:42:21', '2019-05-24 12:42:21', '', 23, 'http://localhost:8888/samer/2019/05/24/23-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2019-05-24 12:43:10', '2019-05-24 12:43:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida', '', 'publish', 'closed', 'closed', '', 'undersida', '', '', '2019-05-24 13:53:11', '2019-05-24 13:53:11', '', 0, 'http://localhost:8888/samer/?page_id=25', 0, 'page', '', 0),
(26, 1, '2019-05-24 12:43:10', '2019-05-24 12:43:10', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida', '', 'inherit', 'closed', 'closed', '', '25-revision-v1', '', '', '2019-05-24 12:43:10', '2019-05-24 12:43:10', '', 25, 'http://localhost:8888/samer/2019/05/24/25-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2019-05-24 12:43:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-24 12:43:20', '0000-00-00 00:00:00', '', 0, 'http://localhost:8888/samer/?p=27', 0, 'post', '', 0),
(28, 1, '2019-05-24 12:44:29', '2019-05-24 12:44:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Hej världen!', '', 'publish', 'open', 'open', '', 'hej-varlden', '', '', '2019-05-24 12:44:29', '2019-05-24 12:44:29', '', 0, 'http://localhost:8888/samer/?p=28', 0, 'post', '', 0),
(29, 1, '2019-05-24 12:44:20', '2019-05-24 12:44:20', '', 'london', 'London Big Ben and traffic on Westminster Bridge', 'inherit', 'open', 'closed', '', 'london', '', '', '2019-05-24 12:44:20', '2019-05-24 12:44:20', '', 28, 'http://localhost:8888/samer/wp-content/uploads/2019/05/london.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2019-05-24 12:44:29', '2019-05-24 12:44:29', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Hej världen!', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2019-05-24 12:44:29', '2019-05-24 12:44:29', '', 28, 'http://localhost:8888/samer/2019/05/24/28-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2019-05-24 13:00:49', '2019-05-24 13:00:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Mitt andra inlägg', '', 'publish', 'open', 'open', '', 'mitt-andra-inlagg', '', '', '2019-05-24 13:00:49', '2019-05-24 13:00:49', '', 0, 'http://localhost:8888/samer/?p=31', 0, 'post', '', 0),
(32, 1, '2019-05-24 13:00:41', '2019-05-24 13:00:41', '', 'paris', '', 'inherit', 'open', 'closed', '', 'paris', '', '', '2019-05-24 13:00:41', '2019-05-24 13:00:41', '', 31, 'http://localhost:8888/samer/wp-content/uploads/2019/05/paris.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2019-05-24 13:00:49', '2019-05-24 13:00:49', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Mitt andra inlägg', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2019-05-24 13:00:49', '2019-05-24 13:00:49', '', 31, 'http://localhost:8888/samer/2019/05/24/31-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2019-05-24 13:01:43', '2019-05-24 13:01:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Det tredje inlägget', '', 'publish', 'open', 'open', '', 'det-tredje-inlagget', '', '', '2019-05-24 13:01:43', '2019-05-24 13:01:43', '', 0, 'http://localhost:8888/samer/?p=34', 0, 'post', '', 0),
(35, 1, '2019-05-24 13:01:36', '2019-05-24 13:01:36', '', 'washington', '', 'inherit', 'open', 'closed', '', 'washington', '', '', '2019-05-24 13:01:36', '2019-05-24 13:01:36', '', 34, 'http://localhost:8888/samer/wp-content/uploads/2019/05/washington.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2019-05-24 13:01:43', '2019-05-24 13:01:43', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Det tredje inlägget', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2019-05-24 13:01:43', '2019-05-24 13:01:43', '', 34, 'http://localhost:8888/samer/2019/05/24/34-revision-v1/', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(37, 1, '2019-05-24 13:03:00', '2019-05-24 13:03:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida 2', '', 'publish', 'closed', 'closed', '', 'undersida-2', '', '', '2019-05-24 14:34:18', '2019-05-24 14:34:18', '', 0, 'http://localhost:8888/samer/?page_id=37', 0, 'page', '', 0),
(38, 1, '2019-05-24 13:03:00', '2019-05-24 13:03:00', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida 2', '', 'inherit', 'closed', 'closed', '', '37-revision-v1', '', '', '2019-05-24 13:03:00', '2019-05-24 13:03:00', '', 37, 'http://localhost:8888/samer/2019/05/24/37-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2019-05-24 13:03:33', '2019-05-24 13:03:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida 3', '', 'publish', 'closed', 'closed', '', 'undersida-3', '', '', '2019-05-24 14:34:06', '2019-05-24 14:34:06', '', 0, 'http://localhost:8888/samer/?page_id=39', 0, 'page', '', 0),
(40, 1, '2019-05-24 13:03:33', '2019-05-24 13:03:33', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.\r\n\r\nDuis hendrerit sit amet nibh ac mattis. Integer tincidunt lacus sit amet tellus ullamcorper, eget pulvinar ligula luctus. Vivamus viverra nisl eu lobortis imperdiet. Sed rhoncus vulputate nunc et pulvinar. Aliquam dignissim efficitur condimentum. Nulla in lacus sed arcu ornare congue ut ut quam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque eu condimentum massa. Vestibulum hendrerit bibendum orci, non facilisis tellus pharetra eu. Donec molestie eget ante vestibulum dictum. Phasellus sed efficitur quam. In feugiat magna mauris. Praesent tempus dignissim nunc. Aenean eu sollicitudin ipsum. Vivamus quis venenatis felis.\r\n\r\nProin imperdiet imperdiet lacus, eu dignissim nunc rutrum sit amet. Proin purus dui, tempor a mi at, congue ultrices nibh. Nulla in turpis et turpis porttitor blandit sed vitae quam. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras in dui at lacus molestie varius sit amet eu nibh. Donec dolor massa, sollicitudin vitae urna dignissim, porta ornare velit. Nunc non tellus elit. Suspendisse ut risus eu sem sagittis sodales. Sed sed lacinia turpis. Proin nec ex ante. Nulla quis est laoreet, aliquam eros eget, venenatis sem. Morbi nulla dui, bibendum eget lacinia et, placerat ac sapien. Morbi tincidunt blandit erat ut accumsan.', 'Undersida 3', '', 'inherit', 'closed', 'closed', '', '39-revision-v1', '', '', '2019-05-24 13:03:33', '2019-05-24 13:03:33', '', 39, 'http://localhost:8888/samer/2019/05/24/39-revision-v1/', 0, 'revision', '', 0),
(41, 1, '2019-05-24 13:04:41', '2019-05-24 13:04:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.', 'Undersida 4', '', 'publish', 'closed', 'closed', '', 'undersida-4', '', '', '2019-05-24 14:33:28', '2019-05-24 14:33:28', '', 0, 'http://localhost:8888/samer/?page_id=41', 0, 'page', '', 0),
(42, 1, '2019-05-24 13:04:27', '2019-05-24 13:04:27', '', 'photo', '', 'inherit', 'open', 'closed', '', 'photo', '', '', '2019-05-24 13:04:27', '2019-05-24 13:04:27', '', 41, 'http://localhost:8888/samer/wp-content/uploads/2019/05/photo.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2019-05-24 13:04:41', '2019-05-24 13:04:41', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed sed sodales mauris. Aliquam felis est, efficitur vel fringilla quis, vehicula quis ex. Phasellus tristique nunc in leo faucibus, a consequat nulla sagittis. In sed mi mi. Praesent condimentum sollicitudin nibh. Vivamus vulputate purus quis volutpat fringilla. Ut tortor libero, semper eget dolor vel, hendrerit tempus dui. Suspendisse dictum efficitur blandit. In porta scelerisque nulla ac placerat.\r\n\r\nInteger quis eros at urna pulvinar mollis eget quis ex. Nam fringilla tellus at ligula consequat, sed sagittis ipsum ultricies. Nunc pretium bibendum enim id iaculis. Nam sed leo non sem aliquam imperdiet dictum vitae magna. Phasellus ac accumsan dolor, quis congue mauris. Maecenas vehicula, arcu sed congue euismod, mi urna rhoncus nunc, et feugiat arcu tellus vitae odio. Sed luctus vel lorem vel dictum. Suspendisse potenti. Proin vel efficitur ex. Suspendisse scelerisque rutrum mattis. In sed laoreet augue, non maximus ante. Nam a rhoncus ligula. Aliquam at aliquet lorem. Suspendisse non risus tincidunt, gravida augue non, fringilla libero.\r\n\r\nSed pretium metus in urna vehicula imperdiet. Fusce at odio vitae felis maximus tincidunt. Nunc porttitor ex a elementum dictum. Maecenas eget arcu nulla. Cras auctor dui aliquet, condimentum orci vel, venenatis nisl. Ut semper magna urna, ac congue dui cursus vitae. Nam sed pharetra leo, vel tincidunt est. Phasellus volutpat tortor nec nulla feugiat congue. Donec quis ligula varius, euismod nisl eu, aliquet metus. Aliquam tempus iaculis odio, sed volutpat mi aliquam aliquet.', 'Undersida 4', '', 'inherit', 'closed', 'closed', '', '41-revision-v1', '', '', '2019-05-24 13:04:41', '2019-05-24 13:04:41', '', 41, 'http://localhost:8888/samer/2019/05/24/41-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2019-05-24 13:05:16', '2019-05-24 13:05:16', '', 'Kontakt', '', 'publish', 'closed', 'closed', '', 'kontakt', '', '', '2019-05-24 14:36:42', '2019-05-24 14:36:42', '', 0, 'http://localhost:8888/samer/?page_id=44', 0, 'page', '', 0),
(45, 1, '2019-05-24 13:05:16', '2019-05-24 13:05:16', 'Kontakt', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-24 13:05:16', '2019-05-24 13:05:16', '', 44, 'http://localhost:8888/samer/2019/05/24/44-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2019-05-24 13:09:30', '2019-05-24 13:09:30', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=46', 7, 'nav_menu_item', '', 0),
(47, 1, '2019-05-24 13:09:30', '2019-05-24 13:09:30', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=47', 6, 'nav_menu_item', '', 0),
(48, 1, '2019-05-24 13:09:30', '2019-05-24 13:09:30', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=48', 5, 'nav_menu_item', '', 0),
(49, 1, '2019-05-24 13:09:31', '2019-05-24 13:09:31', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=49', 4, 'nav_menu_item', '', 0),
(50, 1, '2019-05-24 13:09:31', '2019-05-24 13:09:31', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=50', 3, 'nav_menu_item', '', 0),
(51, 1, '2019-05-24 13:09:31', '2019-05-24 13:09:31', ' ', '', '', 'publish', 'closed', 'closed', '', '51', '', '', '2019-05-24 13:10:15', '2019-05-24 13:10:15', '', 0, 'http://localhost:8888/samer/?p=51', 2, 'nav_menu_item', '', 0),
(52, 1, '2019-05-24 13:09:32', '2019-05-24 13:09:32', ' ', '', '', 'publish', 'closed', 'closed', '', '52', '', '', '2019-05-24 13:10:14', '2019-05-24 13:10:14', '', 0, 'http://localhost:8888/samer/?p=52', 1, 'nav_menu_item', '', 0),
(53, 1, '2019-05-24 13:47:50', '2019-05-24 13:47:50', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-05-24 13:47:50', '2019-05-24 13:47:50', '', 0, 'http://localhost:8888/samer/?p=53', 4, 'nav_menu_item', '', 0),
(54, 1, '2019-05-24 13:47:50', '2019-05-24 13:47:50', ' ', '', '', 'publish', 'closed', 'closed', '', '54', '', '', '2019-05-24 13:47:50', '2019-05-24 13:47:50', '', 0, 'http://localhost:8888/samer/?p=54', 3, 'nav_menu_item', '', 0),
(55, 1, '2019-05-24 13:47:49', '2019-05-24 13:47:49', ' ', '', '', 'publish', 'closed', 'closed', '', '55', '', '', '2019-05-24 13:47:49', '2019-05-24 13:47:49', '', 0, 'http://localhost:8888/samer/?p=55', 2, 'nav_menu_item', '', 0),
(56, 1, '2019-05-24 13:47:49', '2019-05-24 13:47:49', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-05-24 13:47:49', '2019-05-24 13:47:49', '', 0, 'http://localhost:8888/samer/?p=56', 1, 'nav_menu_item', '', 0),
(57, 1, '2019-05-24 14:22:26', '2019-05-24 14:22:26', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit "Send"]\nUI-to-WP "[your-subject]"\nUI-to-WP <samer-senbol@hotmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on UI-to-WP (http://localhost:8888/samer)\nsamer-senbol@hotmail.com\nReply-To: [your-email]\n\n0\n0\n\nUI-to-WP "[your-subject]"\nUI-to-WP <samer-senbol@hotmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on UI-to-WP (http://localhost:8888/samer)\n[your-email]\nReply-To: samer-senbol@hotmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2019-05-24 14:22:26', '2019-05-24 14:22:26', '', 0, 'http://localhost:8888/samer/?post_type=wpcf7_contact_form&p=57', 0, 'wpcf7_contact_form', '', 0),
(58, 1, '2019-05-24 14:29:05', '2019-05-24 14:29:05', '', '', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-24 14:29:05', '2019-05-24 14:29:05', '', 44, 'http://localhost:8888/samer/2019/05/24/44-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2019-05-24 14:29:46', '2019-05-24 14:29:46', '', 'Kontakt', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2019-05-24 14:29:46', '2019-05-24 14:29:46', '', 44, 'http://localhost:8888/samer/2019/05/24/44-revision-v1/', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 1, 0),
(28, 1, 0),
(31, 1, 0),
(34, 1, 0),
(46, 2, 0),
(47, 2, 0),
(48, 2, 0),
(49, 2, 0),
(50, 2, 0),
(51, 2, 0),
(52, 2, 0),
(53, 3, 0),
(54, 3, 0),
(55, 3, 0),
(56, 3, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 7),
(3, 3, 'nav_menu', '', 0, 4) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Header Navigation', 'primary-header-navigation', 0),
(3, 'Sidebar Menu', 'sidebar-menu', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'samer'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:"fe3478daffebcfd23117a678a6c080e429a3709301cf53729912d88ca46a2a20";a:4:{s:10:"expiration";i:1558752378;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.157 Safari/537.36";s:5:"login";i:1558579578;}s:64:"cb2d312281bf0d9db9bc731ea4b91d039fd8a51beab7e3a7fda4b035f252695e";a:4:{s:10:"expiration";i:1558786663;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36";s:5:"login";i:1558613863;}s:64:"60b4ac457f2e3b4dbe2bf12d5beaa332890ab96243867e6238ec3b36915f58d1";a:4:{s:10:"expiration";i:1558871030;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.169 Safari/537.36";s:5:"login";i:1558698230;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'wp_user-settings', 'libraryContent=browse'),
(19, 1, 'wp_user-settings-time', '1558698767'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(22, 1, 'nav_menu_recently_edited', '3') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'samer', '$P$BHwhbiS3DRXjE/8U5r605HFc62g5YJ1', 'samer', 'samer-senbol@hotmail.com', '', '2019-05-23 02:46:01', '', 0, 'samer') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

