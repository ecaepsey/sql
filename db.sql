-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: wordpress
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2019-08-29 10:07:12','2019-08-29 10:07:12','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://134.209.117.67','yes'),(2,'home','http://134.209.117.67','yes'),(3,'blogname','FormGen','yes'),(4,'blogdescription','','yes'),(5,'users_can_register','0','yes'),(6,'admin_email','yespeace@bk.ru','yes'),(7,'start_of_week','1','yes'),(8,'use_balanceTags','0','yes'),(9,'use_smilies','1','yes'),(10,'require_name_email','1','yes'),(11,'comments_notify','1','yes'),(12,'posts_per_rss','10','yes'),(13,'rss_use_excerpt','0','yes'),(14,'mailserver_url','mail.example.com','yes'),(15,'mailserver_login','login@example.com','yes'),(16,'mailserver_pass','password','yes'),(17,'mailserver_port','110','yes'),(18,'default_category','1','yes'),(19,'default_comment_status','open','yes'),(20,'default_ping_status','open','yes'),(21,'default_pingback_flag','1','yes'),(22,'posts_per_page','10','yes'),(23,'date_format','F j, Y','yes'),(24,'time_format','g:i a','yes'),(25,'links_updated_date_format','F j, Y g:i a','yes'),(26,'comment_moderation','0','yes'),(27,'moderation_notify','1','yes'),(28,'permalink_structure','/index.php/%year%/%monthnum%/%day%/%postname%/','yes'),(29,'rewrite_rules','a:90:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:57:\"index.php/category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:45:\"index.php/category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:54:\"index.php/tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:49:\"index.php/tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:30:\"index.php/tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:42:\"index.php/tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:24:\"index.php/tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:55:\"index.php/type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:50:\"index.php/type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:31:\"index.php/type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:43:\"index.php/type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:25:\"index.php/type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:42:\"index.php/feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:37:\"index.php/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:18:\"index.php/embed/?$\";s:21:\"index.php?&embed=true\";s:30:\"index.php/page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:51:\"index.php/comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:46:\"index.php/comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:27:\"index.php/comments/embed/?$\";s:21:\"index.php?&embed=true\";s:54:\"index.php/search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:49:\"index.php/search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:30:\"index.php/search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:42:\"index.php/search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:24:\"index.php/search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:57:\"index.php/author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:52:\"index.php/author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:33:\"index.php/author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:45:\"index.php/author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:27:\"index.php/author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:79:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:55:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:49:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:66:\"index.php/([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:42:\"index.php/([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:54:\"index.php/([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:36:\"index.php/([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:53:\"index.php/([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:48:\"index.php/([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:29:\"index.php/([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:41:\"index.php/([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:23:\"index.php/([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:68:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:78:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:98:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:93:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:74:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:63:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:67:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:87:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:75:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:82:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:71:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:57:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:67:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:87:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:82:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:63:\"index.php/[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:74:\"index.php/([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:61:\"index.php/([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:48:\"index.php/([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:37:\"index.php/.?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"index.php/.?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"index.php/.?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"index.php/.?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"index.php/.?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"index.php/(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:30:\"index.php/(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:50:\"index.php/(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:45:\"index.php/(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:38:\"index.php/(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:45:\"index.php/(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:34:\"index.php/(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}','yes'),(30,'hack_file','0','yes'),(31,'blog_charset','UTF-8','yes'),(32,'moderation_keys','','no'),(33,'active_plugins','a:2:{i:0;s:43:\"visual-form-builder/visual-form-builder.php\";i:1;s:27:\"wp-fail2ban/wp-fail2ban.php\";}','yes'),(34,'category_base','','yes'),(35,'ping_sites','http://rpc.pingomatic.com/','yes'),(36,'comment_max_links','2','yes'),(37,'gmt_offset','0','yes'),(38,'default_email_category','1','yes'),(39,'recently_edited','a:5:{i:0;s:56:\"/var/www/html/wp-content/themes/twentynineteen/style.css\";i:2;s:74:\"/var/www/html/wp-content/themes/twentynineteen/style-editor-customizer.css\";i:3;s:57:\"/var/www/html/wp-content/themes/twentynineteen/style.scss\";i:4;s:60:\"/var/www/html/wp-content/themes/twentynineteen/functions.php\";i:5;s:57:\"/var/www/html/wp-content/themes/twentyseventeen/style.css\";}','no'),(40,'template','twentynineteen','yes'),(41,'stylesheet','twentynineteen','yes'),(42,'comment_whitelist','1','yes'),(43,'blacklist_keys','','no'),(44,'comment_registration','0','yes'),(45,'html_type','text/html','yes'),(46,'use_trackback','0','yes'),(47,'default_role','subscriber','yes'),(48,'db_version','44719','yes'),(49,'uploads_use_yearmonth_folders','1','yes'),(50,'upload_path','','yes'),(51,'blog_public','1','yes'),(52,'default_link_category','2','yes'),(53,'show_on_front','posts','yes'),(54,'tag_base','','yes'),(55,'show_avatars','1','yes'),(56,'avatar_rating','G','yes'),(57,'upload_url_path','','yes'),(58,'thumbnail_size_w','150','yes'),(59,'thumbnail_size_h','150','yes'),(60,'thumbnail_crop','1','yes'),(61,'medium_size_w','300','yes'),(62,'medium_size_h','300','yes'),(63,'avatar_default','mystery','yes'),(64,'large_size_w','1024','yes'),(65,'large_size_h','1024','yes'),(66,'image_default_link_type','none','yes'),(67,'image_default_size','','yes'),(68,'image_default_align','','yes'),(69,'close_comments_for_old_posts','0','yes'),(70,'close_comments_days_old','14','yes'),(71,'thread_comments','1','yes'),(72,'thread_comments_depth','5','yes'),(73,'page_comments','0','yes'),(74,'comments_per_page','50','yes'),(75,'default_comments_page','newest','yes'),(76,'comment_order','asc','yes'),(77,'sticky_posts','a:0:{}','yes'),(78,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(79,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(80,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes'),(81,'uninstall_plugins','a:0:{}','no'),(82,'timezone_string','','yes'),(83,'page_for_posts','0','yes'),(84,'page_on_front','0','yes'),(85,'default_post_format','0','yes'),(86,'link_manager_enabled','0','yes'),(87,'finished_splitting_shared_terms','1','yes'),(88,'site_icon','0','yes'),(89,'medium_large_size_w','768','yes'),(90,'medium_large_size_h','0','yes'),(91,'wp_page_for_privacy_policy','3','yes'),(92,'show_comments_cookies_opt_in','1','yes'),(93,'initial_db_version','44719','yes'),(94,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes'),(95,'fresh_site','0','yes'),(96,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(97,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(98,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes'),(99,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes'),(100,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes'),(101,'sidebars_widgets','a:3:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}','yes'),(102,'cron','a:4:{i:1568095633;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1568110033;a:4:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1568110313;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}','yes'),(103,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(104,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(105,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(106,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(107,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(108,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(109,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(110,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(111,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(113,'recovery_keys','a:0:{}','yes'),(114,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.3-partial-2.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.2.3-partial-2.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-rollback-2.zip\";}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:5:\"5.2.2\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1568075550;s:15:\"version_checked\";s:5:\"5.2.2\";s:12:\"translations\";a:0:{}}','no'),(119,'_site_transient_update_themes','O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1568075550;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}','no'),(120,'theme_mods_twentynineteen','a:3:{s:18:\"custom_css_post_id\";i:19;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567074222;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}}}s:18:\"nav_menu_locations\";a:0:{}}','yes'),(123,'fs_active_plugins','O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:41:\"wp-fail2ban/vendor/freemius/wordpress-sdk\";O:8:\"stdClass\":4:{s:7:\"version\";s:5:\"2.3.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1567073235;s:11:\"plugin_path\";s:27:\"wp-fail2ban/wp-fail2ban.php\";}}s:7:\"abspath\";s:14:\"/var/www/html/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:27:\"wp-fail2ban/wp-fail2ban.php\";s:8:\"sdk_path\";s:41:\"wp-fail2ban/vendor/freemius/wordpress-sdk\";s:7:\"version\";s:5:\"2.3.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1567073235;}}','yes'),(124,'fs_debug_mode','','yes'),(125,'fs_accounts','a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:3072;a:3:{s:4:\"slug\";s:11:\"wp-fail2ban\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:27:\"wp-fail2ban/wp-fail2ban.php\";}}s:11:\"plugin_data\";a:1:{s:11:\"wp-fail2ban\";a:16:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:27:\"wp-fail2ban/wp-fail2ban.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1567073235;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"4.2.5\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:14:\"134.209.117.67\";s:9:\"server_ip\";s:13:\"46.251.197.40\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1567073513;s:7:\"version\";s:5:\"4.2.5\";}s:15:\"prev_is_premium\";b:0;s:18:\"sticky_optin_added\";b:1;}}s:13:\"file_slug_map\";a:1:{s:27:\"wp-fail2ban/wp-fail2ban.php\";s:11:\"wp-fail2ban\";}s:7:\"plugins\";a:1:{s:11:\"wp-fail2ban\";O:9:\"FS_Plugin\":22:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:11:\"WP fail2ban\";s:4:\"slug\";s:11:\"wp-fail2ban\";s:12:\"premium_slug\";s:19:\"wp-fail2ban-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:27:\"wp-fail2ban/wp-fail2ban.php\";s:7:\"version\";s:5:\"4.2.5\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:10:\"public_key\";s:32:\"pk_146d2c2a5bee3b157e43501ef8682\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"3072\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"edb942acb589c716e228323755fc609d\";s:13:\"admin_notices\";a:1:{s:11:\"wp-fail2ban\";a:0:{}}}','yes'),(126,'fs_gdpr','a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}','yes'),(139,'can_compress_scripts','0','no'),(148,'recently_activated','a:0:{}','yes'),(152,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1568075550;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:9:\"hello.php\";s:5:\"1.7.2\";s:43:\"visual-form-builder/visual-form-builder.php\";s:5:\"3.0.1\";s:27:\"wp-fail2ban/wp-fail2ban.php\";s:5:\"4.2.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:43:\"visual-form-builder/visual-form-builder.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/visual-form-builder\";s:4:\"slug\";s:19:\"visual-form-builder\";s:6:\"plugin\";s:43:\"visual-form-builder/visual-form-builder.php\";s:11:\"new_version\";s:5:\"3.0.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/visual-form-builder/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/visual-form-builder.3.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/visual-form-builder/assets/icon-256x256.png?rev=1205840\";s:2:\"1x\";s:72:\"https://ps.w.org/visual-form-builder/assets/icon-128x128.png?rev=1205840\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/visual-form-builder/assets/banner-1544x500.png?rev=1205840\";s:2:\"1x\";s:74:\"https://ps.w.org/visual-form-builder/assets/banner-772x250.png?rev=1205840\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"wp-fail2ban/wp-fail2ban.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/wp-fail2ban\";s:4:\"slug\";s:11:\"wp-fail2ban\";s:6:\"plugin\";s:27:\"wp-fail2ban/wp-fail2ban.php\";s:11:\"new_version\";s:5:\"4.2.5\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/wp-fail2ban/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wp-fail2ban.4.2.5.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/wp-fail2ban/assets/icon-128x128.png?rev=1995316\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/wp-fail2ban/assets/banner-772x250.png?rev=1995314\";}s:11:\"banners_rtl\";a:0:{}}}}','no'),(153,'vfb_db_version','2.9','yes'),(154,'widget_vfb_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes'),(155,'vfb_dashboard_widget_options','a:1:{s:28:\"vfb_dashboard_recent_entries\";a:1:{s:5:\"items\";i:5;}}','yes'),(158,'current_theme','Twenty Nineteen','yes'),(159,'theme_mods_twentyseventeen','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1567074228;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}','yes'),(160,'theme_switched','','yes'),(428,'_site_transient_timeout_theme_roots','1568077350','no'),(429,'_site_transient_theme_roots','a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default'),(2,3,'_wp_page_template','default'),(5,1,'_wp_trash_meta_status','publish'),(6,1,'_wp_trash_meta_time','1567073943'),(7,1,'_wp_desired_post_slug','hello-world'),(8,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}'),(9,2,'_wp_trash_meta_status','publish'),(10,2,'_wp_trash_meta_time','1567073953'),(11,2,'_wp_desired_post_slug','sample-page'),(12,3,'_wp_trash_meta_status','draft'),(13,3,'_wp_trash_meta_time','1567073956'),(14,3,'_wp_desired_post_slug','privacy-policy'),(15,9,'_wp_trash_meta_status','publish'),(16,9,'_wp_trash_meta_time','1567074055'),(17,10,'_wp_trash_meta_status','publish'),(18,10,'_wp_trash_meta_time','1567074166'),(20,12,'_edit_lock','1567074412:1'),(21,12,'_wp_trash_meta_status','publish'),(22,12,'_wp_trash_meta_time','1567074567'),(23,12,'_wp_desired_post_slug','vfb-id1'),(24,15,'_edit_lock','1567076683:1'),(31,18,'_wp_trash_meta_status','publish'),(32,18,'_wp_trash_meta_time','1567075220'),(33,21,'_wp_trash_meta_status','publish'),(34,21,'_wp_trash_meta_time','1567075344'),(35,23,'_edit_lock','1567076895:1'),(36,25,'_edit_lock','1567399207:1'),(37,25,'_wp_trash_meta_status','publish'),(38,25,'_wp_trash_meta_time','1567399236');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2019-08-29 10:07:12','2019-08-29 10:07:12','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2019-08-29 10:19:03','2019-08-29 10:19:03','',0,'http://134.209.117.67/?p=1',0,'post','',1),(2,1,'2019-08-29 10:07:12','2019-08-29 10:07:12','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://134.209.117.67/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','trash','closed','open','','sample-page__trashed','','','2019-08-29 10:19:13','2019-08-29 10:19:13','',0,'http://134.209.117.67/?page_id=2',0,'page','',0),(3,1,'2019-08-29 10:07:12','2019-08-29 10:07:12','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://134.209.117.67.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','trash','closed','open','','privacy-policy__trashed','','','2019-08-29 10:19:16','2019-08-29 10:19:16','',0,'http://134.209.117.67/?page_id=3',0,'page','',0),(6,1,'2019-08-29 10:19:03','2019-08-29 10:19:03','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2019-08-29 10:19:03','2019-08-29 10:19:03','',1,'http://134.209.117.67/index.php/2019/08/29/1-revision-v1/',0,'revision','',0),(7,1,'2019-08-29 10:19:13','2019-08-29 10:19:13','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://134.209.117.67/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','inherit','closed','closed','','2-revision-v1','','','2019-08-29 10:19:13','2019-08-29 10:19:13','',2,'http://134.209.117.67/index.php/2019/08/29/2-revision-v1/',0,'revision','',0),(8,1,'2019-08-29 10:19:16','2019-08-29 10:19:16','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://134.209.117.67.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','inherit','closed','closed','','3-revision-v1','','','2019-08-29 10:19:16','2019-08-29 10:19:16','',3,'http://134.209.117.67/index.php/2019/08/29/3-revision-v1/',0,'revision','',0),(9,1,'2019-08-29 10:20:55','2019-08-29 10:20:55','{\n    \"sidebars_widgets[sidebar-1]\": {\n        \"value\": [],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-29 10:20:55\"\n    }\n}','','','trash','closed','closed','','8fb043b5-67a4-450b-a280-83bc28f3908c','','','2019-08-29 10:20:55','2019-08-29 10:20:55','',0,'http://134.209.117.67/index.php/2019/08/29/8fb043b5-67a4-450b-a280-83bc28f3908c/',0,'customize_changeset','',0),(10,1,'2019-08-29 10:22:46','2019-08-29 10:22:46','{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-29 10:22:46\"\n    }\n}','','','trash','closed','closed','','552b7039-8d0c-4221-ab63-28fb309927d9','','','2019-08-29 10:22:46','2019-08-29 10:22:46','',0,'http://134.209.117.67/index.php/2019/08/29/552b7039-8d0c-4221-ab63-28fb309927d9/',0,'customize_changeset','',0),(12,1,'2019-08-29 10:28:29','2019-08-29 10:28:29','<!-- wp:shortcode -->\n[vfb id=\'1\']\n<!-- /wp:shortcode -->','','','trash','closed','closed','','vfb-id1__trashed','','','2019-08-29 10:29:27','2019-08-29 10:29:27','',0,'http://134.209.117.67/?page_id=12',0,'page','',0),(13,1,'2019-08-29 10:28:29','2019-08-29 10:28:29','','[vfb id=\'1\']','','inherit','closed','closed','','12-revision-v1','','','2019-08-29 10:28:29','2019-08-29 10:28:29','',12,'http://134.209.117.67/index.php/2019/08/29/12-revision-v1/',0,'revision','',0),(14,1,'2019-08-29 10:28:50','2019-08-29 10:28:50','<!-- wp:shortcode -->\n[vfb id=\'1\']\n<!-- /wp:shortcode -->','','','inherit','closed','closed','','12-revision-v1','','','2019-08-29 10:28:50','2019-08-29 10:28:50','',12,'http://134.209.117.67/index.php/2019/08/29/12-revision-v1/',0,'revision','',0),(15,1,'2019-08-29 10:29:39','2019-08-29 10:29:39','<!-- wp:shortcode -->\n[vfb id=\'1\']\n<!-- /wp:shortcode -->','','','publish','closed','closed','','vfb-id1','','','2019-08-29 10:35:49','2019-08-29 10:35:49','',0,'http://134.209.117.67/?p=15',0,'post','',0),(16,1,'2019-08-29 10:29:39','2019-08-29 10:29:39','','[vfb id=\'1\']','','inherit','closed','closed','','15-revision-v1','','','2019-08-29 10:29:39','2019-08-29 10:29:39','',15,'http://134.209.117.67/index.php/2019/08/29/15-revision-v1/',0,'revision','',0),(17,1,'2019-08-29 10:29:59','2019-08-29 10:29:59','<!-- wp:shortcode -->\n[vfb id=\'1\']\n<!-- /wp:shortcode -->','','','inherit','closed','closed','','15-revision-v1','','','2019-08-29 10:29:59','2019-08-29 10:29:59','',15,'http://134.209.117.67/index.php/2019/08/29/15-revision-v1/',0,'revision','',0),(18,1,'2019-08-29 10:40:20','2019-08-29 10:40:20','{\n    \"custom_css[twentynineteen]\": {\n        \"value\": \".entry-meta .byline, .entry-meta .cat-links { display: none; }\\n \\n.entry-meta .posted-on { display: none; }\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-29 10:40:20\"\n    }\n}','','','trash','closed','closed','','3b022616-fed2-4f23-acd8-ed83d1852e12','','','2019-08-29 10:40:20','2019-08-29 10:40:20','',0,'http://134.209.117.67/index.php/2019/08/29/3b022616-fed2-4f23-acd8-ed83d1852e12/',0,'customize_changeset','',0),(19,1,'2019-08-29 10:40:20','2019-08-29 10:40:20','.visual-form-builder fieldset {\n    clear: both;\n    /* margin: 15px 0; */\n    padding: 0;\n    /* border: 1px solid #d3d3d3; */\n    /* border-radius: 3px; */\n    /* background-color: #eee; */\n    border: 0;\n}\n','twentynineteen','','publish','closed','closed','','twentynineteen','','','2019-09-02 04:40:36','2019-09-02 04:40:36','',0,'http://134.209.117.67/index.php/2019/08/29/twentynineteen/',0,'custom_css','',0),(20,1,'2019-08-29 10:40:20','2019-08-29 10:40:20','.entry-meta .byline, .entry-meta .cat-links { display: none; }\n \n.entry-meta .posted-on { display: none; }','twentynineteen','','inherit','closed','closed','','19-revision-v1','','','2019-08-29 10:40:20','2019-08-29 10:40:20','',19,'http://134.209.117.67/index.php/2019/08/29/19-revision-v1/',0,'revision','',0),(21,1,'2019-08-29 10:42:24','2019-08-29 10:42:24','{\n    \"custom_css[twentynineteen]\": {\n        \"value\": \"\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-08-29 10:42:24\"\n    }\n}','','','trash','closed','closed','','f78428d2-3e8a-4543-a04e-e4235b8a23d2','','','2019-08-29 10:42:24','2019-08-29 10:42:24','',0,'http://134.209.117.67/index.php/2019/08/29/f78428d2-3e8a-4543-a04e-e4235b8a23d2/',0,'customize_changeset','',0),(22,1,'2019-08-29 10:42:24','2019-08-29 10:42:24','','twentynineteen','','inherit','closed','closed','','19-revision-v1','','','2019-08-29 10:42:24','2019-08-29 10:42:24','',19,'http://134.209.117.67/index.php/2019/08/29/19-revision-v1/',0,'revision','',0),(23,1,'2019-08-29 11:07:31','0000-00-00 00:00:00','','f','','draft','closed','closed','','','','','2019-08-29 11:07:31','2019-08-29 11:07:31','',0,'http://134.209.117.67/?page_id=23',0,'page','',0),(24,1,'2019-08-29 11:07:31','2019-08-29 11:07:31','','f','','inherit','closed','closed','','23-revision-v1','','','2019-08-29 11:07:31','2019-08-29 11:07:31','',23,'http://134.209.117.67/index.php/2019/08/29/23-revision-v1/',0,'revision','',0),(25,1,'2019-09-02 04:40:36','2019-09-02 04:40:36','{\n    \"custom_css[twentynineteen]\": {\n        \"value\": \".visual-form-builder fieldset {\\n    clear: both;\\n    /* margin: 15px 0; */\\n    padding: 0;\\n    /* border: 1px solid #d3d3d3; */\\n    /* border-radius: 3px; */\\n    /* background-color: #eee; */\\n    border: 0;\\n}\\n\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2019-09-02 04:40:36\"\n    }\n}','','','trash','closed','closed','','0e7f245e-371a-4455-b7b0-973338b9d287','','','2019-09-02 04:40:36','2019-09-02 04:40:36','',0,'http://134.209.117.67/?p=25',0,'customize_changeset','',0),(26,1,'2019-09-02 04:40:36','2019-09-02 04:40:36','.visual-form-builder fieldset {\n    clear: both;\n    /* margin: 15px 0; */\n    padding: 0;\n    /* border: 1px solid #d3d3d3; */\n    /* border-radius: 3px; */\n    /* background-color: #eee; */\n    border: 0;\n}\n','twentynineteen','','inherit','closed','closed','','19-revision-v1','','','2019-09-02 04:40:36','2019-09-02 04:40:36','',19,'http://134.209.117.67/index.php/2019/09/02/19-revision-v1/',0,'revision','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,1,0),(15,1,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','damir'),(2,1,'first_name',''),(3,1,'last_name',''),(4,1,'description',''),(5,1,'rich_editing','true'),(6,1,'syntax_highlighting','true'),(7,1,'comment_shortcuts','false'),(8,1,'admin_color','fresh'),(9,1,'use_ssl','0'),(10,1,'show_admin_bar_front','true'),(11,1,'locale',''),(12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}'),(13,1,'wp_user_level','10'),(14,1,'dismissed_wp_pointers','theme_editor_notice'),(15,1,'show_welcome_panel','1'),(17,1,'wp_dashboard_quick_press_last_post_id','4'),(18,1,'community-events-location','a:1:{s:2:\"ip\";s:12:\"46.251.197.0\";}'),(19,1,'managenav-menuscolumnshidden','a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),(20,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}'),(21,1,'manageedit-postcolumnshidden','a:5:{i:0;s:6:\"author\";i:1;s:10:\"categories\";i:2;s:4:\"tags\";i:3;s:8:\"comments\";i:4;s:4:\"date\";}'),(22,1,'edit_post_per_page','20'),(23,1,'wp_user-settings','posts_list_mode=list'),(24,1,'wp_user-settings-time','1567075059'),(25,1,'vfb-form-settings','a:1:{i:1;a:2:{s:16:\"form_setting_tab\";s:6:\"opened\";s:17:\"setting_accordion\";s:13:\"email-details\";}}'),(26,1,'session_tokens','a:1:{s:64:\"1c8020e13e013fbb3702686c7f7caea8a5072a64d6d4252073e32b4e6408ab2e\";a:4:{s:10:\"expiration\";i:1568787705;s:2:\"ip\";s:14:\"46.251.197.118\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.90 Safari/537.36\";s:5:\"login\";i:1567578105;}}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'damir','$P$BMGWo6wkWIybjBK5pUiULDW26z.GAo0','damir','yespeace@bk.ru','','2019-08-29 10:07:12','',0,'damir');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_visual_form_builder_entries`
--

DROP TABLE IF EXISTS `wp_visual_form_builder_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_visual_form_builder_entries` (
  `entries_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_520_ci,
  `sender_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sender_email` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `emails_to` text COLLATE utf8mb4_unicode_520_ci,
  `date_submitted` datetime DEFAULT NULL,
  `ip_address` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `entry_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT '1',
  PRIMARY KEY (`entries_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_visual_form_builder_entries`
--

LOCK TABLES `wp_visual_form_builder_entries` WRITE;
/*!40000 ALTER TABLE `wp_visual_form_builder_entries` DISABLE KEYS */;
INSERT INTO `wp_visual_form_builder_entries` VALUES (1,1,'a:4:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"slug\";s:8:\"fieldset\";s:4:\"name\";s:8:\"Fieldset\";s:4:\"type\";s:8:\"fieldset\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:1;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"slug\";s:12:\"verification\";s:4:\"name\";s:12:\"Verification\";s:4:\"type\";s:12:\"verification\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:2;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"slug\";s:27:\"please-enter-any-two-digits\";s:4:\"name\";s:27:\"Please enter any two digits\";s:4:\"type\";s:6:\"secret\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:2:\"12\";}i:3;a:7:{s:2:\"id\";s:1:\"4\";s:4:\"slug\";s:6:\"submit\";s:4:\"name\";s:6:\"Submit\";s:4:\"type\";s:6:\"submit\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:0:\"\";}}','','app','yespeace@bk.ru','a:1:{i:0;s:0:\"\";}','2019-08-29 10:51:23','185.88.32.12','1'),(2,1,'a:10:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"slug\";s:8:\"fieldset\";s:4:\"name\";s:8:\"Fieldset\";s:4:\"type\";s:8:\"fieldset\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:1;a:7:{s:2:\"id\";s:1:\"5\";s:4:\"slug\";s:8:\"checkbox\";s:4:\"name\";s:8:\"Checkbox\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";s:63:\"a:3:{i:0;s:8:\"Option 1\";i:1;s:8:\"Option 2\";i:2;s:8:\"Option 3\";}\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:2;a:7:{s:2:\"id\";s:1:\"6\";s:4:\"slug\";s:8:\"checkbox\";s:4:\"name\";s:8:\"Checkbox\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";s:63:\"a:3:{i:0;s:8:\"Option 1\";i:1;s:8:\"Option 2\";i:2;s:8:\"Option 3\";}\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:3;a:7:{s:2:\"id\";s:1:\"7\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:4;a:7:{s:2:\"id\";s:1:\"8\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:5;a:7:{s:2:\"id\";s:1:\"9\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:6;a:7:{s:2:\"id\";s:2:\"10\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:7;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"slug\";s:12:\"verification\";s:4:\"name\";s:12:\"Verification\";s:4:\"type\";s:12:\"verification\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:8;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"slug\";s:27:\"please-enter-any-two-digits\";s:4:\"name\";s:27:\"Please enter any two digits\";s:4:\"type\";s:6:\"secret\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:2:\"14\";}i:9;a:7:{s:2:\"id\";s:1:\"4\";s:4:\"slug\";s:6:\"submit\";s:4:\"name\";s:6:\"Submit\";s:4:\"type\";s:6:\"submit\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:0:\"\";}}','','app','yespeace@bk.ru','a:1:{i:0;s:0:\"\";}','2019-08-29 11:00:38','46.251.197.40','1'),(3,1,'a:10:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"slug\";s:8:\"fieldset\";s:4:\"name\";s:8:\"Fieldset\";s:4:\"type\";s:8:\"fieldset\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:1;a:7:{s:2:\"id\";s:1:\"5\";s:4:\"slug\";s:8:\"checkbox\";s:4:\"name\";s:8:\"Checkbox\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";s:63:\"a:3:{i:0;s:8:\"Option 1\";i:1;s:8:\"Option 2\";i:2;s:8:\"Option 3\";}\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:8:\"Option 1\";}i:2;a:7:{s:2:\"id\";s:1:\"6\";s:4:\"slug\";s:8:\"checkbox\";s:4:\"name\";s:8:\"Checkbox\";s:4:\"type\";s:8:\"checkbox\";s:7:\"options\";s:63:\"a:3:{i:0;s:8:\"Option 1\";i:1;s:8:\"Option 2\";i:2;s:8:\"Option 3\";}\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:8:\"Option 1\";}i:3;a:7:{s:2:\"id\";s:1:\"7\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:3:\"324\";}i:4;a:7:{s:2:\"id\";s:1:\"8\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:3:\"234\";}i:5;a:7:{s:2:\"id\";s:1:\"9\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:3:\"234\";}i:6;a:7:{s:2:\"id\";s:2:\"10\";s:4:\"slug\";s:4:\"text\";s:4:\"name\";s:4:\"Text\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:6:\"ыфв\";}i:7;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"slug\";s:12:\"verification\";s:4:\"name\";s:12:\"Verification\";s:4:\"type\";s:12:\"verification\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:8;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"slug\";s:27:\"please-enter-any-two-digits\";s:4:\"name\";s:27:\"Please enter any two digits\";s:4:\"type\";s:6:\"secret\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:2:\"12\";}i:9;a:7:{s:2:\"id\";s:1:\"4\";s:4:\"slug\";s:6:\"submit\";s:4:\"name\";s:6:\"Submit\";s:4:\"type\";s:6:\"submit\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:0:\"\";}}','','app','yespeace@bk.ru','a:1:{i:0;s:0:\"\";}','2019-08-29 11:19:05','185.88.32.12','1'),(4,1,'a:16:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"slug\";s:8:\"fieldset\";s:4:\"name\";s:8:\"Fieldset\";s:4:\"type\";s:8:\"fieldset\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:1;a:7:{s:2:\"id\";s:1:\"8\";s:4:\"slug\";s:14:\"d184-d0b8-d0be\";s:4:\"name\";s:8:\"Ф.И.О\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"воырао\";}i:2;a:7:{s:2:\"id\";s:1:\"9\";s:4:\"slug\";s:12:\"d0bfd0bed0bb\";s:4:\"name\";s:6:\"Пол\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:14:\"выаорыв\";}i:3;a:7:{s:2:\"id\";s:2:\"10\";s:4:\"slug\";s:28:\"d0b2d0bed0b7d180d0b0d181d182\";s:4:\"name\";s:14:\"Возраст\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"ыволар\";}i:4;a:7:{s:2:\"id\";s:2:\"11\";s:4:\"slug\";s:69:\"d181d0b5d0bcd0b5d0b9d0bdd0bed0b9-d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b5\";s:4:\"name\";s:35:\"Семейной положение\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"выоаро\";}i:5;a:7:{s:2:\"id\";s:2:\"12\";s:4:\"slug\";s:36:\"d0b8d0b6d0b4d0b8d0b2d0b5d0bdd186d18b\";s:4:\"name\";s:18:\"Иждивенцы\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"ывлоар\";}i:6;a:7:{s:2:\"id\";s:2:\"13\";s:4:\"slug\";s:61:\"d0bcd0b5d181d182d0be-d0bfd180d0bed0b6d0b8d0b2d0b0d0bdd0b8d18f\";s:4:\"name\";s:31:\"Место проживания\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:8:\"лвар\";}i:7;a:7:{s:2:\"id\";s:2:\"14\";s:4:\"slug\";s:45:\"d0bcd0b5d181d182d0be-d180d0b0d0b1d0bed182d18b\";s:4:\"name\";s:23:\"Место работы\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:10:\"ывлао\";}i:8;a:7:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:91:\"d0bad180d0b5d0b4d0b8d182d0bed0b2d0b0d0bbd0b8d181d18c-d0bbd0b8-d0b2d18b-d180d0b0d0bdd0b5d0b5\";s:4:\"name\";s:47:\"Кредитовались ли вы ранее\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:9;a:7:{s:2:\"id\";s:2:\"16\";s:4:\"slug\";s:122:\"d0bdd0b0d0bbd0b8d187d0b8d0b5-d0bed0b1d18fd0b7d0b0d182d0b5d0bbd18cd181d182d0b2-d183d0bcd0b5d0bdd18cd188d0b0d18ed189d0b8d185\";s:4:\"name\";s:63:\"Наличие обязательств, уменьшающих\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:10;a:7:{s:2:\"id\";s:2:\"17\";s:4:\"slug\";s:81:\"d0bdd0b0d0bbd0b8d187d0b8d0b5-d181d0bed0b1d181d182d0b2d0b5d0bdd0bdd0bed181d182d0b8\";s:4:\"name\";s:41:\"Наличие собственности\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:11;a:7:{s:2:\"id\";s:2:\"18\";s:4:\"slug\";s:131:\"d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b7d0b0d180d0b0d0b1d0bed182d0bdd0b0d18f-d0bfd0bbd0b0\";s:4:\"name\";s:157:\"среднемесячный доход ( заработная плата, доходы от предпринимательской деятельности)\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:12;a:7:{s:2:\"id\";s:2:\"19\";s:4:\"slug\";s:132:\"d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b4d180d183d0b3d0b8d185-d187d0bbd0b5d0bdd0bed0b2-d181\";s:4:\"name\";s:146:\"среднемесячный доход других членов семьи проживающих с клиентом (супруги, дети)\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:13;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"slug\";s:12:\"verification\";s:4:\"name\";s:12:\"Verification\";s:4:\"type\";s:12:\"verification\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:14;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"slug\";s:27:\"please-enter-any-two-digits\";s:4:\"name\";s:27:\"Please enter any two digits\";s:4:\"type\";s:6:\"secret\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:2:\"14\";}i:15;a:7:{s:2:\"id\";s:1:\"4\";s:4:\"slug\";s:6:\"submit\";s:4:\"name\";s:6:\"Submit\";s:4:\"type\";s:6:\"submit\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:0:\"\";}}','','app','yespeace@bk.ru','a:1:{i:0;s:0:\"\";}','2019-09-02 05:12:45','185.88.35.42','1'),(5,1,'a:16:{i:0;a:7:{s:2:\"id\";s:1:\"1\";s:4:\"slug\";s:8:\"fieldset\";s:4:\"name\";s:8:\"Fieldset\";s:4:\"type\";s:8:\"fieldset\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:1;a:7:{s:2:\"id\";s:1:\"8\";s:4:\"slug\";s:14:\"d184-d0b8-d0be\";s:4:\"name\";s:8:\"Ф.И.О\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:14:\"Уралиев\";}i:2;a:7:{s:2:\"id\";s:1:\"9\";s:4:\"slug\";s:12:\"d0bfd0bed0bb\";s:4:\"name\";s:6:\"Пол\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:2:\"М\";}i:3;a:7:{s:2:\"id\";s:2:\"10\";s:4:\"slug\";s:28:\"d0b2d0bed0b7d180d0b0d181d182\";s:4:\"name\";s:14:\"Возраст\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:2:\"28\";}i:4;a:7:{s:2:\"id\";s:2:\"11\";s:4:\"slug\";s:69:\"d181d0b5d0bcd0b5d0b9d0bdd0bed0b9-d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b5\";s:4:\"name\";s:35:\"Семейной положение\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"Холост\";}i:5;a:7:{s:2:\"id\";s:2:\"12\";s:4:\"slug\";s:36:\"d0b8d0b6d0b4d0b8d0b2d0b5d0bdd186d18b\";s:4:\"name\";s:18:\"Иждивенцы\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:8:\"Тест\";}i:6;a:7:{s:2:\"id\";s:2:\"13\";s:4:\"slug\";s:61:\"d0bcd0b5d181d182d0be-d0bfd180d0bed0b6d0b8d0b2d0b0d0bdd0b8d18f\";s:4:\"name\";s:31:\"Место проживания\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:12:\"Бишкек\";}i:7;a:7:{s:2:\"id\";s:2:\"14\";s:4:\"slug\";s:45:\"d0bcd0b5d181d182d0be-d180d0b0d0b1d0bed182d18b\";s:4:\"name\";s:23:\"Место работы\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:8:\"Банк\";}i:8;a:7:{s:2:\"id\";s:2:\"15\";s:4:\"slug\";s:91:\"d0bad180d0b5d0b4d0b8d182d0bed0b2d0b0d0bbd0b8d181d18c-d0bbd0b8-d0b2d18b-d180d0b0d0bdd0b5d0b5\";s:4:\"name\";s:47:\"Кредитовались ли вы ранее\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:4:\"Да\";}i:9;a:7:{s:2:\"id\";s:2:\"16\";s:4:\"slug\";s:122:\"d0bdd0b0d0bbd0b8d187d0b8d0b5-d0bed0b1d18fd0b7d0b0d182d0b5d0bbd18cd181d182d0b2-d183d0bcd0b5d0bdd18cd188d0b0d18ed189d0b8d185\";s:4:\"name\";s:63:\"Наличие обязательств, уменьшающих\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:6:\"Нет\";}i:10;a:7:{s:2:\"id\";s:2:\"17\";s:4:\"slug\";s:81:\"d0bdd0b0d0bbd0b8d187d0b8d0b5-d181d0bed0b1d181d182d0b2d0b5d0bdd0bdd0bed181d182d0b8\";s:4:\"name\";s:41:\"Наличие собственности\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:4:\"Да\";}i:11;a:7:{s:2:\"id\";s:2:\"18\";s:4:\"slug\";s:131:\"d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b7d0b0d180d0b0d0b1d0bed182d0bdd0b0d18f-d0bfd0bbd0b0\";s:4:\"name\";s:157:\"среднемесячный доход ( заработная плата, доходы от предпринимательской деятельности)\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:7:\"1000000\";}i:12;a:7:{s:2:\"id\";s:2:\"19\";s:4:\"slug\";s:132:\"d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b4d180d183d0b3d0b8d185-d187d0bbd0b5d0bdd0bed0b2-d181\";s:4:\"name\";s:146:\"среднемесячный доход других членов семьи проживающих с клиентом (супруги, дети)\";s:4:\"type\";s:4:\"text\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:7:\"1000000\";}i:13;a:7:{s:2:\"id\";s:1:\"2\";s:4:\"slug\";s:12:\"verification\";s:4:\"name\";s:12:\"Verification\";s:4:\"type\";s:12:\"verification\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"0\";s:5:\"value\";s:0:\"\";}i:14;a:7:{s:2:\"id\";s:1:\"3\";s:4:\"slug\";s:27:\"please-enter-any-two-digits\";s:4:\"name\";s:27:\"Please enter any two digits\";s:4:\"type\";s:6:\"secret\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:2:\"12\";}i:15;a:7:{s:2:\"id\";s:1:\"4\";s:4:\"slug\";s:6:\"submit\";s:4:\"name\";s:6:\"Submit\";s:4:\"type\";s:6:\"submit\";s:7:\"options\";s:0:\"\";s:9:\"parent_id\";s:1:\"2\";s:5:\"value\";s:0:\"\";}}','','app','yespeace@bk.ru','a:1:{i:0;s:0:\"\";}','2019-09-02 05:24:37','185.117.148.229','1');
/*!40000 ALTER TABLE `wp_visual_form_builder_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_visual_form_builder_fields`
--

DROP TABLE IF EXISTS `wp_visual_form_builder_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_visual_form_builder_fields` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_id` bigint(20) NOT NULL,
  `field_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_type` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_options` text COLLATE utf8mb4_unicode_520_ci,
  `field_description` text COLLATE utf8mb4_unicode_520_ci,
  `field_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `field_sequence` bigint(20) DEFAULT '0',
  `field_parent` bigint(20) DEFAULT '0',
  `field_validation` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_required` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_size` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT 'medium',
  `field_css` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_layout` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `field_default` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_visual_form_builder_fields`
--

LOCK TABLES `wp_visual_form_builder_fields` WRITE;
/*!40000 ALTER TABLE `wp_visual_form_builder_fields` DISABLE KEYS */;
INSERT INTO `wp_visual_form_builder_fields` VALUES (1,1,'fieldset','fieldset','','','Fieldset',0,0,'','','','','',''),(2,1,'verification','verification','','','Verification',13,0,'','','','','',''),(3,1,'please-enter-any-two-digits','secret','','Example: 12','Please enter any two digits',14,2,'','yes','medium','','',''),(4,1,'submit','submit','','','Submit',15,2,'','','','','',''),(8,1,'d184-d0b8-d0be','text','','','Ф.И.О',1,0,'','no','medium','','',''),(9,1,'d0bfd0bed0bb','text','','','Пол',2,0,'','no','medium','','',''),(10,1,'d0b2d0bed0b7d180d0b0d181d182','text','','','Возраст',3,0,'','no','medium','','',''),(11,1,'d181d0b5d0bcd0b5d0b9d0bdd0bed0b9-d0bfd0bed0bbd0bed0b6d0b5d0bdd0b8d0b5','text','','','Семейной положение',4,0,'','no','medium','','',''),(12,1,'d0b8d0b6d0b4d0b8d0b2d0b5d0bdd186d18b','text','','','Иждивенцы',5,0,'','no','medium','','',''),(13,1,'d0bcd0b5d181d182d0be-d0bfd180d0bed0b6d0b8d0b2d0b0d0bdd0b8d18f','text','','','Место проживания',6,0,'','no','medium','','',''),(14,1,'d0bcd0b5d181d182d0be-d180d0b0d0b1d0bed182d18b','text','','','Место работы',7,0,'','no','medium','','',''),(15,1,'d0bad180d0b5d0b4d0b8d182d0bed0b2d0b0d0bbd0b8d181d18c-d0bbd0b8-d0b2d18b-d180d0b0d0bdd0b5d0b5','text','','','Кредитовались ли вы ранее',8,0,'','no','medium','','',''),(16,1,'d0bdd0b0d0bbd0b8d187d0b8d0b5-d0bed0b1d18fd0b7d0b0d182d0b5d0bbd18cd181d182d0b2-d183d0bcd0b5d0bdd18cd188d0b0d18ed189d0b8d185','text','','','Наличие обязательств, уменьшающих',9,0,'','no','medium','','',''),(17,1,'d0bdd0b0d0bbd0b8d187d0b8d0b5-d181d0bed0b1d181d182d0b2d0b5d0bdd0bdd0bed181d182d0b8','text','','','Наличие собственности',10,0,'','no','medium','','',''),(18,1,'d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b7d0b0d180d0b0d0b1d0bed182d0bdd0b0d18f-d0bfd0bbd0b0','text','','','среднемесячный доход ( заработная плата, доходы от предпринимательской деятельности)',11,0,'','no','medium','','',''),(19,1,'d181d180d0b5d0b4d0bdd0b5d0bcd0b5d181d18fd187d0bdd18bd0b9-d0b4d0bed185d0bed0b4-d0b4d180d183d0b3d0b8d185-d187d0bbd0b5d0bdd0bed0b2-d181','text','','','среднемесячный доход других членов семьи проживающих с клиентом (супруги, дети)',12,0,'','no','medium','','','');
/*!40000 ALTER TABLE `wp_visual_form_builder_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_visual_form_builder_forms`
--

DROP TABLE IF EXISTS `wp_visual_form_builder_forms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wp_visual_form_builder_forms` (
  `form_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `form_key` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `form_email_subject` text COLLATE utf8mb4_unicode_520_ci,
  `form_email_to` text COLLATE utf8mb4_unicode_520_ci,
  `form_email_from` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_email_from_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_email_from_override` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_email_from_name_override` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_success_type` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT 'text',
  `form_success_message` text COLLATE utf8mb4_unicode_520_ci,
  `form_notification_setting` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_notification_email_name` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_notification_email_from` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_notification_email` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_notification_subject` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_notification_message` text COLLATE utf8mb4_unicode_520_ci,
  `form_notification_entry` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `form_label_alignment` varchar(25) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_visual_form_builder_forms`
--

LOCK TABLES `wp_visual_form_builder_forms` WRITE;
/*!40000 ALTER TABLE `wp_visual_form_builder_forms` DISABLE KEYS */;
INSERT INTO `wp_visual_form_builder_forms` VALUES (1,'formgen','formgen','','a:1:{i:0;s:0:\"\";}','yespeace@bk.ru','app','','','text','&lt;p id=\\\"form_success\\\"&gt;Your form was successfully submitted. Thank you for contacting us.&lt;/p&gt;','','','','','','','','');
/*!40000 ALTER TABLE `wp_visual_form_builder_forms` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10  5:28:47
