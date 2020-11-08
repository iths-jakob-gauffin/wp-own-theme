-- MySQL dump 10.13  Distrib 8.0.16, for Win64 (x86_64)
--
-- Host: ::1    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_bp_activity`
--

DROP TABLE IF EXISTS `wp_bp_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `component` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `type` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `action` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `primary_link` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `date_recorded` datetime NOT NULL,
  `hide_sitewide` tinyint(1) DEFAULT '0',
  `mptt_left` int(11) NOT NULL DEFAULT '0',
  `mptt_right` int(11) NOT NULL DEFAULT '0',
  `is_spam` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `date_recorded` (`date_recorded`),
  KEY `user_id` (`user_id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `component` (`component`),
  KEY `type` (`type`),
  KEY `mptt_left` (`mptt_left`),
  KEY `mptt_right` (`mptt_right`),
  KEY `hide_sitewide` (`hide_sitewide`),
  KEY `is_spam` (`is_spam`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_activity`
--

LOCK TABLES `wp_bp_activity` WRITE;
/*!40000 ALTER TABLE `wp_bp_activity` DISABLE KEYS */;
INSERT INTO `wp_bp_activity` VALUES (1,1,'members','last_activity','','','',0,NULL,'2020-11-03 15:56:24',0,0,0,0);
/*!40000 ALTER TABLE `wp_bp_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_activity_meta`
--

DROP TABLE IF EXISTS `wp_bp_activity_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_activity_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `activity_id` (`activity_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_activity_meta`
--

LOCK TABLES `wp_bp_activity_meta` WRITE;
/*!40000 ALTER TABLE `wp_bp_activity_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bp_activity_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_invitations`
--

DROP TABLE IF EXISTS `wp_bp_invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_invitations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `inviter_id` bigint(20) NOT NULL,
  `invitee_email` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `class` varchar(120) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'invite',
  `content` longtext COLLATE utf8mb4_unicode_520_ci,
  `date_modified` datetime NOT NULL,
  `invite_sent` tinyint(1) NOT NULL DEFAULT '0',
  `accepted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `inviter_id` (`inviter_id`),
  KEY `invitee_email` (`invitee_email`),
  KEY `class` (`class`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `type` (`type`),
  KEY `invite_sent` (`invite_sent`),
  KEY `accepted` (`accepted`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_invitations`
--

LOCK TABLES `wp_bp_invitations` WRITE;
/*!40000 ALTER TABLE `wp_bp_invitations` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bp_invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_notifications`
--

DROP TABLE IF EXISTS `wp_bp_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `item_id` bigint(20) NOT NULL,
  `secondary_item_id` bigint(20) DEFAULT NULL,
  `component_name` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `component_action` varchar(75) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_notified` datetime NOT NULL,
  `is_new` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `secondary_item_id` (`secondary_item_id`),
  KEY `user_id` (`user_id`),
  KEY `is_new` (`is_new`),
  KEY `component_name` (`component_name`),
  KEY `component_action` (`component_action`),
  KEY `useritem` (`user_id`,`is_new`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_notifications`
--

LOCK TABLES `wp_bp_notifications` WRITE;
/*!40000 ALTER TABLE `wp_bp_notifications` DISABLE KEYS */;
INSERT INTO `wp_bp_notifications` VALUES (1,1,2,2,'community','wpforo_new_reply','2020-11-03 14:52:00',1);
/*!40000 ALTER TABLE `wp_bp_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_notifications_meta`
--

DROP TABLE IF EXISTS `wp_bp_notifications_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_notifications_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `notification_id` bigint(20) NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `notification_id` (`notification_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_notifications_meta`
--

LOCK TABLES `wp_bp_notifications_meta` WRITE;
/*!40000 ALTER TABLE `wp_bp_notifications_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_bp_notifications_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_xprofile_data`
--

DROP TABLE IF EXISTS `wp_bp_xprofile_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_xprofile_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_updated` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_xprofile_data`
--

LOCK TABLES `wp_bp_xprofile_data` WRITE;
/*!40000 ALTER TABLE `wp_bp_xprofile_data` DISABLE KEYS */;
INSERT INTO `wp_bp_xprofile_data` VALUES (2,1,1,'Jakob','2020-11-03 14:48:19');
INSERT INTO `wp_bp_xprofile_data` VALUES (3,1,3,'Gym','2020-11-03 15:58:44');
/*!40000 ALTER TABLE `wp_bp_xprofile_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_xprofile_fields`
--

DROP TABLE IF EXISTS `wp_bp_xprofile_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_xprofile_fields` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned NOT NULL,
  `type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT '0',
  `is_default_option` tinyint(1) NOT NULL DEFAULT '0',
  `field_order` bigint(20) NOT NULL DEFAULT '0',
  `option_order` bigint(20) NOT NULL DEFAULT '0',
  `order_by` varchar(15) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `can_delete` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `parent_id` (`parent_id`),
  KEY `field_order` (`field_order`),
  KEY `can_delete` (`can_delete`),
  KEY `is_required` (`is_required`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_xprofile_fields`
--

LOCK TABLES `wp_bp_xprofile_fields` WRITE;
/*!40000 ALTER TABLE `wp_bp_xprofile_fields` DISABLE KEYS */;
INSERT INTO `wp_bp_xprofile_fields` VALUES (1,1,0,'textbox','Name','',1,0,0,0,'',0);
/*!40000 ALTER TABLE `wp_bp_xprofile_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_xprofile_groups`
--

DROP TABLE IF EXISTS `wp_bp_xprofile_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_xprofile_groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `group_order` bigint(20) NOT NULL DEFAULT '0',
  `can_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `can_delete` (`can_delete`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_xprofile_groups`
--

LOCK TABLES `wp_bp_xprofile_groups` WRITE;
/*!40000 ALTER TABLE `wp_bp_xprofile_groups` DISABLE KEYS */;
INSERT INTO `wp_bp_xprofile_groups` VALUES (1,'Base','',0,0);
/*!40000 ALTER TABLE `wp_bp_xprofile_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_bp_xprofile_meta`
--

DROP TABLE IF EXISTS `wp_bp_xprofile_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_bp_xprofile_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `object_id` bigint(20) NOT NULL,
  `object_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_bp_xprofile_meta`
--

LOCK TABLES `wp_bp_xprofile_meta` WRITE;
/*!40000 ALTER TABLE `wp_bp_xprofile_meta` DISABLE KEYS */;
INSERT INTO `wp_bp_xprofile_meta` VALUES (1,1,'field','allow_custom_visibility','disabled');
/*!40000 ALTER TABLE `wp_bp_xprofile_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
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
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2020-10-30 22:24:17','2020-10-30 22:24:17','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.',0,'post-trashed','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=523 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'siteurl','http://egettheme.local','yes');
INSERT INTO `wp_options` VALUES (2,'home','http://egettheme.local','yes');
INSERT INTO `wp_options` VALUES (3,'blogname','Eget-theme','yes');
INSERT INTO `wp_options` VALUES (4,'blogdescription','Just another WordPress site','yes');
INSERT INTO `wp_options` VALUES (5,'users_can_register','1','yes');
INSERT INTO `wp_options` VALUES (6,'admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (7,'start_of_week','1','yes');
INSERT INTO `wp_options` VALUES (8,'use_balanceTags','0','yes');
INSERT INTO `wp_options` VALUES (9,'use_smilies','1','yes');
INSERT INTO `wp_options` VALUES (10,'require_name_email','1','yes');
INSERT INTO `wp_options` VALUES (11,'comments_notify','1','yes');
INSERT INTO `wp_options` VALUES (12,'posts_per_rss','10','yes');
INSERT INTO `wp_options` VALUES (13,'rss_use_excerpt','0','yes');
INSERT INTO `wp_options` VALUES (14,'mailserver_url','mail.example.com','yes');
INSERT INTO `wp_options` VALUES (15,'mailserver_login','login@example.com','yes');
INSERT INTO `wp_options` VALUES (16,'mailserver_pass','password','yes');
INSERT INTO `wp_options` VALUES (17,'mailserver_port','110','yes');
INSERT INTO `wp_options` VALUES (18,'default_category','1','yes');
INSERT INTO `wp_options` VALUES (19,'default_comment_status','open','yes');
INSERT INTO `wp_options` VALUES (20,'default_ping_status','open','yes');
INSERT INTO `wp_options` VALUES (21,'default_pingback_flag','1','yes');
INSERT INTO `wp_options` VALUES (22,'posts_per_page','2','yes');
INSERT INTO `wp_options` VALUES (23,'date_format','F j, Y','yes');
INSERT INTO `wp_options` VALUES (24,'time_format','g:i a','yes');
INSERT INTO `wp_options` VALUES (25,'links_updated_date_format','F j, Y g:i a','yes');
INSERT INTO `wp_options` VALUES (26,'comment_moderation','0','yes');
INSERT INTO `wp_options` VALUES (27,'moderation_notify','1','yes');
INSERT INTO `wp_options` VALUES (28,'permalink_structure','/%postname%/','yes');
INSERT INTO `wp_options` VALUES (29,'rewrite_rules','a:158:{s:21:\"(community(?:/|$).*)$\";s:20:\"index.php?page_id=52\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"events/?$\";s:25:\"index.php?post_type=event\";s:39:\"events/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:34:\"events/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=event&feed=$matches[1]\";s:26:\"events/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=event&paged=$matches[1]\";s:11:\"programs/?$\";s:27:\"index.php?post_type=program\";s:41:\"programs/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:36:\"programs/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=program&feed=$matches[1]\";s:28:\"programs/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=program&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"events/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"events/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"events/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"events/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"events/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"events/([^/]+)/embed/?$\";s:38:\"index.php?event=$matches[1]&embed=true\";s:27:\"events/([^/]+)/trackback/?$\";s:32:\"index.php?event=$matches[1]&tb=1\";s:47:\"events/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:42:\"events/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?event=$matches[1]&feed=$matches[2]\";s:35:\"events/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&paged=$matches[2]\";s:42:\"events/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?event=$matches[1]&cpage=$matches[2]\";s:31:\"events/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?event=$matches[1]&page=$matches[2]\";s:23:\"events/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"events/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"events/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"events/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"events/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"programs/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"programs/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"programs/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"programs/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"programs/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"programs/([^/]+)/embed/?$\";s:40:\"index.php?program=$matches[1]&embed=true\";s:29:\"programs/([^/]+)/trackback/?$\";s:34:\"index.php?program=$matches[1]&tb=1\";s:49:\"programs/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:44:\"programs/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?program=$matches[1]&feed=$matches[2]\";s:37:\"programs/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&paged=$matches[2]\";s:44:\"programs/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?program=$matches[1]&cpage=$matches[2]\";s:33:\"programs/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?program=$matches[1]&page=$matches[2]\";s:25:\"programs/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"programs/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"programs/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"programs/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"programs/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"professor/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"professor/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"professor/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"professor/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"professor/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"professor/([^/]+)/embed/?$\";s:42:\"index.php?professor=$matches[1]&embed=true\";s:30:\"professor/([^/]+)/trackback/?$\";s:36:\"index.php?professor=$matches[1]&tb=1\";s:38:\"professor/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&paged=$matches[2]\";s:45:\"professor/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?professor=$matches[1]&cpage=$matches[2]\";s:34:\"professor/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?professor=$matches[1]&page=$matches[2]\";s:26:\"professor/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"professor/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"professor/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"professor/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"professor/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=38&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','yes');
INSERT INTO `wp_options` VALUES (30,'hack_file','0','yes');
INSERT INTO `wp_options` VALUES (31,'blog_charset','UTF-8','yes');
INSERT INTO `wp_options` VALUES (32,'moderation_keys','','no');
INSERT INTO `wp_options` VALUES (33,'active_plugins','a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:17:\"wpforo/wpforo.php\";}','yes');
INSERT INTO `wp_options` VALUES (34,'category_base','','yes');
INSERT INTO `wp_options` VALUES (35,'ping_sites','http://rpc.pingomatic.com/','yes');
INSERT INTO `wp_options` VALUES (36,'comment_max_links','2','yes');
INSERT INTO `wp_options` VALUES (37,'gmt_offset','0','yes');
INSERT INTO `wp_options` VALUES (38,'default_email_category','1','yes');
INSERT INTO `wp_options` VALUES (39,'recently_edited','a:3:{i:0;s:94:\"C:\\Users\\jakob\\Local Sites\\egettheme\\app\\public/wp-content/plugins/check-email/check-email.php\";i:1;s:91:\"C:\\Users\\jakob\\Local Sites\\egettheme\\app\\public/wp-content/plugins/buddypress/bp-loader.php\";i:2;s:0:\"\";}','no');
INSERT INTO `wp_options` VALUES (40,'template','wp-own-theme','yes');
INSERT INTO `wp_options` VALUES (41,'stylesheet','wp-own-theme','yes');
INSERT INTO `wp_options` VALUES (42,'comment_registration','0','yes');
INSERT INTO `wp_options` VALUES (43,'html_type','text/html','yes');
INSERT INTO `wp_options` VALUES (44,'use_trackback','0','yes');
INSERT INTO `wp_options` VALUES (45,'default_role','subscriber','yes');
INSERT INTO `wp_options` VALUES (46,'db_version','48748','yes');
INSERT INTO `wp_options` VALUES (47,'uploads_use_yearmonth_folders','1','yes');
INSERT INTO `wp_options` VALUES (48,'upload_path','','yes');
INSERT INTO `wp_options` VALUES (49,'blog_public','1','yes');
INSERT INTO `wp_options` VALUES (50,'default_link_category','2','yes');
INSERT INTO `wp_options` VALUES (51,'show_on_front','page','yes');
INSERT INTO `wp_options` VALUES (52,'tag_base','','yes');
INSERT INTO `wp_options` VALUES (53,'show_avatars','1','yes');
INSERT INTO `wp_options` VALUES (54,'avatar_rating','G','yes');
INSERT INTO `wp_options` VALUES (55,'upload_url_path','','yes');
INSERT INTO `wp_options` VALUES (56,'thumbnail_size_w','150','yes');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_h','150','yes');
INSERT INTO `wp_options` VALUES (58,'thumbnail_crop','1','yes');
INSERT INTO `wp_options` VALUES (59,'medium_size_w','300','yes');
INSERT INTO `wp_options` VALUES (60,'medium_size_h','300','yes');
INSERT INTO `wp_options` VALUES (61,'avatar_default','mystery','yes');
INSERT INTO `wp_options` VALUES (62,'large_size_w','1024','yes');
INSERT INTO `wp_options` VALUES (63,'large_size_h','1024','yes');
INSERT INTO `wp_options` VALUES (64,'image_default_link_type','none','yes');
INSERT INTO `wp_options` VALUES (65,'image_default_size','','yes');
INSERT INTO `wp_options` VALUES (66,'image_default_align','','yes');
INSERT INTO `wp_options` VALUES (67,'close_comments_for_old_posts','0','yes');
INSERT INTO `wp_options` VALUES (68,'close_comments_days_old','14','yes');
INSERT INTO `wp_options` VALUES (69,'thread_comments','1','yes');
INSERT INTO `wp_options` VALUES (70,'thread_comments_depth','5','yes');
INSERT INTO `wp_options` VALUES (71,'page_comments','0','yes');
INSERT INTO `wp_options` VALUES (72,'comments_per_page','50','yes');
INSERT INTO `wp_options` VALUES (73,'default_comments_page','newest','yes');
INSERT INTO `wp_options` VALUES (74,'comment_order','asc','yes');
INSERT INTO `wp_options` VALUES (75,'sticky_posts','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (76,'widget_categories','a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (77,'widget_text','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (78,'widget_rss','a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (79,'uninstall_plugins','a:0:{}','no');
INSERT INTO `wp_options` VALUES (80,'timezone_string','','yes');
INSERT INTO `wp_options` VALUES (81,'page_for_posts','9','yes');
INSERT INTO `wp_options` VALUES (82,'page_on_front','38','yes');
INSERT INTO `wp_options` VALUES (83,'default_post_format','0','yes');
INSERT INTO `wp_options` VALUES (84,'link_manager_enabled','0','yes');
INSERT INTO `wp_options` VALUES (85,'finished_splitting_shared_terms','1','yes');
INSERT INTO `wp_options` VALUES (86,'site_icon','0','yes');
INSERT INTO `wp_options` VALUES (87,'medium_large_size_w','768','yes');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_h','0','yes');
INSERT INTO `wp_options` VALUES (89,'wp_page_for_privacy_policy','3','yes');
INSERT INTO `wp_options` VALUES (90,'show_comments_cookies_opt_in','1','yes');
INSERT INTO `wp_options` VALUES (91,'admin_email_lifespan','1619648656','yes');
INSERT INTO `wp_options` VALUES (92,'disallowed_keys','','no');
INSERT INTO `wp_options` VALUES (93,'comment_previously_approved','1','yes');
INSERT INTO `wp_options` VALUES (94,'auto_plugin_theme_update_emails','a:0:{}','no');
INSERT INTO `wp_options` VALUES (95,'initial_db_version','48748','yes');
INSERT INTO `wp_options` VALUES (96,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','yes');
INSERT INTO `wp_options` VALUES (97,'fresh_site','0','yes');
INSERT INTO `wp_options` VALUES (98,'widget_search','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (99,'widget_recent-posts','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (100,'widget_recent-comments','a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (101,'widget_archives','a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (102,'widget_meta','a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (103,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}','yes');
INSERT INTO `wp_options` VALUES (104,'cron','a:5:{i:1604787858;a:5:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1604788255;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1604788256;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1605392658;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','yes');
INSERT INTO `wp_options` VALUES (105,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (106,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (107,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (108,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (109,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (110,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (111,'nonce_key','2[7px/D0vf!P=wX2Q}GSs/YSye9e7>)AmW2~vIdpGODZ-^^ePHskEn5|2cc# 8(>','no');
INSERT INTO `wp_options` VALUES (112,'nonce_salt','/(:Z8yI>^)G}Hb6O+_C2{yWcD<m1]t0~Yv|T_zhR@j%g>y+)3eeDl MZ{+qK!_.h','no');
INSERT INTO `wp_options` VALUES (113,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (114,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (115,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (117,'recovery_keys','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (118,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.5.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.5.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.5.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"5.5.3\";s:7:\"version\";s:5:\"5.5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1604745294;s:15:\"version_checked\";s:5:\"5.5.3\";s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (123,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604745294;s:7:\"checked\";a:4:{s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";s:12:\"wp-own-theme\";s:3:\"1.0\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}','no');
INSERT INTO `wp_options` VALUES (124,'theme_mods_twentytwenty','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1604097074;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}','yes');
INSERT INTO `wp_options` VALUES (142,'can_compress_scripts','1','no');
INSERT INTO `wp_options` VALUES (143,'current_theme','Eget tema','yes');
INSERT INTO `wp_options` VALUES (144,'theme_mods_wp-own-theme','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:4:{s:18:\"headerMenuLocation\";i:2;s:19:\"footerMenuLocation1\";i:3;s:19:\"footerMenuLocation3\";i:4;s:11:\"wpforo-menu\";i:7;}s:18:\"custom_css_post_id\";i:-1;}','yes');
INSERT INTO `wp_options` VALUES (145,'theme_switched','','yes');
INSERT INTO `wp_options` VALUES (148,'finished_updating_comment_type','1','yes');
INSERT INTO `wp_options` VALUES (156,'WPLANG','','yes');
INSERT INTO `wp_options` VALUES (157,'new_admin_email','dev-email@flywheel.local','yes');
INSERT INTO `wp_options` VALUES (185,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','yes');
INSERT INTO `wp_options` VALUES (189,'_transient_health-check-site-status-result','{\"good\":\"11\",\"recommended\":\"9\",\"critical\":\"0\"}','yes');
INSERT INTO `wp_options` VALUES (244,'category_children','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (267,'recently_activated','a:1:{s:24:\"buddypress/bp-loader.php\";i:1604419289;}','yes');
INSERT INTO `wp_options` VALUES (289,'recovery_mode_email_last_sent','1604357979','yes');
INSERT INTO `wp_options` VALUES (303,'wpforo_general_options','a:3:{s:5:\"title\";s:16:\"Eget-theme Forum\";s:11:\"description\";s:27:\"Eget-theme Discussion Board\";s:4:\"lang\";s:1:\"1\";}','yes');
INSERT INTO `wp_options` VALUES (304,'wpforo_pageid','52','yes');
INSERT INTO `wp_options` VALUES (305,'wpforo_use_home_url','0','yes');
INSERT INTO `wp_options` VALUES (306,'wpforo_permastruct','community','yes');
INSERT INTO `wp_options` VALUES (307,'wpforo_url','http://egettheme.local/community/','yes');
INSERT INTO `wp_options` VALUES (308,'wpforo_version','1.8.4','yes');
INSERT INTO `wp_options` VALUES (309,'widget_wpforo_widget_profile','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (310,'widget_wpforo_widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (311,'widget_wpforo_widget_online_members','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (312,'widget_wpforo_widget_recent_topics','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (313,'widget_wpforo_widget_recent_replies','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (314,'widget_wpforo_widget_tags','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (315,'wpforo_version_db','1.8.4','yes');
INSERT INTO `wp_options` VALUES (318,'wpforo-addon-note-dismissed','Embeds,Polls,Topic Custom Fields,MyCRED Integration,User Custom Fields,Advanced Attachments,Private Messages,\"Forum - Blog\" Cross Posting,Ads Manager,wpForo Emoticons,','yes');
INSERT INTO `wp_options` VALUES (319,'wpforo-addon-note-first','false','yes');
INSERT INTO `wp_options` VALUES (321,'wpforo_forum_tree_9b4b6ed6c62540f32984f1267dd4a672','                <option value=\"1\"  disabled  > Wp discussion main category</option>                <option value=\"2\"  > — Wp plugins</option>                <option value=\"3\"  > — Wp themes</option>','yes');
INSERT INTO `wp_options` VALUES (337,'wpforo_member_options','a:17:{s:21:\"online_status_timeout\";i:240;s:16:\"members_per_page\";s:2:\"15\";s:13:\"url_structure\";s:8:\"nicename\";s:11:\"search_type\";s:6:\"search\";s:9:\"login_url\";s:8:\"/loggain\";s:12:\"register_url\";s:9:\"/register\";s:17:\"lost_password_url\";s:13:\"/lostpassword\";s:24:\"redirect_url_after_login\";s:41:\"http://egettheme.local/community/profile/\";s:27:\"redirect_url_after_register\";s:41:\"http://egettheme.local/community/account/\";s:33:\"redirect_url_after_confirm_sbscrb\";s:50:\"http://egettheme.local/community/subscriptions/%20\";s:18:\"custom_title_is_on\";i:1;s:13:\"default_title\";s:6:\"Member\";s:6:\"rating\";a:11:{i:0;a:4:{s:6:\"points\";i:0;s:5:\"title\";s:10:\"New Member\";s:5:\"color\";s:7:\"#d2d2d2\";s:4:\"icon\";s:16:\"far fa-star-half\";}i:1;a:4:{s:6:\"points\";i:5;s:5:\"title\";s:13:\"Active Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:2;a:4:{s:6:\"points\";i:20;s:5:\"title\";s:14:\"Eminent Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:3;a:4:{s:6:\"points\";i:50;s:5:\"title\";s:14:\"Trusted Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:4;a:4:{s:6:\"points\";i:100;s:5:\"title\";s:16:\"Estimable Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:5;a:4:{s:6:\"points\";i:250;s:5:\"title\";s:16:\"Reputable Member\";s:5:\"color\";s:7:\"#4dca5c\";s:4:\"icon\";s:11:\"fas fa-star\";}i:6;a:4:{s:6:\"points\";i:500;s:5:\"title\";s:16:\"Honorable Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:7;a:4:{s:6:\"points\";i:750;s:5:\"title\";s:16:\"Prominent Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:8;a:4:{s:6:\"points\";i:1000;s:5:\"title\";s:12:\"Noble Member\";s:5:\"color\";s:7:\"#e5d600\";s:4:\"icon\";s:18:\"fas fa-certificate\";}i:9;a:4:{s:6:\"points\";i:2500;s:5:\"title\";s:12:\"Famed Member\";s:5:\"color\";s:7:\"#ff812d\";s:4:\"icon\";s:17:\"fas fa-shield-alt\";}i:10;a:4:{s:6:\"points\";i:5000;s:5:\"title\";s:18:\"Illustrious Member\";s:5:\"color\";s:7:\"#55b0d2\";s:4:\"icon\";s:13:\"fas fa-trophy\";}}s:15:\"rating_title_ug\";a:3:{i:5;i:1;i:4;i:1;i:3;i:1;}s:15:\"rating_badge_ug\";a:5:{i:1;i:1;i:5;i:1;i:4;i:1;i:2;i:1;i:3;i:1;}s:15:\"title_usergroup\";a:4:{i:1;i:1;i:5;i:1;i:4;i:1;i:2;i:1;}s:22:\"title_second_usergroup\";a:1:{i:3;i:1;}}','yes');
INSERT INTO `wp_options` VALUES (348,'bp-deactivated-components','a:0:{}','yes');
INSERT INTO `wp_options` VALUES (349,'bp-xprofile-base-group-name','Base','yes');
INSERT INTO `wp_options` VALUES (350,'bp-xprofile-fullname-field-name','Name','yes');
INSERT INTO `wp_options` VALUES (351,'bp-blogs-first-install','','yes');
INSERT INTO `wp_options` VALUES (352,'bp-disable-profile-sync','','yes');
INSERT INTO `wp_options` VALUES (353,'hide-loggedout-adminbar','','yes');
INSERT INTO `wp_options` VALUES (354,'bp-disable-avatar-uploads','','yes');
INSERT INTO `wp_options` VALUES (355,'bp-disable-cover-image-uploads','','yes');
INSERT INTO `wp_options` VALUES (356,'bp-disable-group-avatar-uploads','','yes');
INSERT INTO `wp_options` VALUES (357,'bp-disable-group-cover-image-uploads','','yes');
INSERT INTO `wp_options` VALUES (358,'bp-disable-account-deletion','','yes');
INSERT INTO `wp_options` VALUES (359,'bp-disable-blogforum-comments','1','yes');
INSERT INTO `wp_options` VALUES (360,'_bp_theme_package_id','nouveau','yes');
INSERT INTO `wp_options` VALUES (361,'bp-emails-unsubscribe-salt','ZkIzdVMvJnJgeSE6TjhMV3cxR3FoTlM8JEhbW0MxZ0hNVHokQnNrQHFmSXxleUc3VEIuNVIwbXtySHpgMVZ9KQ==','yes');
INSERT INTO `wp_options` VALUES (362,'bp_restrict_group_creation','','yes');
INSERT INTO `wp_options` VALUES (363,'_bp_enable_akismet','1','yes');
INSERT INTO `wp_options` VALUES (364,'_bp_enable_heartbeat_refresh','1','yes');
INSERT INTO `wp_options` VALUES (365,'_bp_force_buddybar','','yes');
INSERT INTO `wp_options` VALUES (366,'_bp_retain_bp_default','','yes');
INSERT INTO `wp_options` VALUES (367,'_bp_ignore_deprecated_code','1','yes');
INSERT INTO `wp_options` VALUES (368,'widget_bp_core_login_widget','','yes');
INSERT INTO `wp_options` VALUES (369,'widget_bp_core_members_widget','','yes');
INSERT INTO `wp_options` VALUES (370,'widget_bp_core_whos_online_widget','','yes');
INSERT INTO `wp_options` VALUES (371,'widget_bp_core_recently_active_widget','','yes');
INSERT INTO `wp_options` VALUES (372,'widget_bp_groups_widget','','yes');
INSERT INTO `wp_options` VALUES (373,'widget_bp_messages_sitewide_notices_widget','','yes');
INSERT INTO `wp_options` VALUES (378,'widget_bp_nouveau_sidebar_object_nav_widget','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (379,'bp-active-components','a:5:{s:8:\"activity\";i:1;s:7:\"members\";i:1;s:8:\"settings\";i:1;s:8:\"xprofile\";i:1;s:13:\"notifications\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (380,'bp-pages','a:4:{s:8:\"activity\";i:64;s:7:\"members\";i:65;s:8:\"register\";i:81;s:8:\"activate\";i:82;}','yes');
INSERT INTO `wp_options` VALUES (381,'_bp_db_version','12385','yes');
INSERT INTO `wp_options` VALUES (382,'widget_bp_latest_activities','a:1:{s:12:\"_multiwidget\";i:1;}','yes');
INSERT INTO `wp_options` VALUES (387,'illegal_names','a:19:{i:0;s:3:\"www\";i:1;s:3:\"web\";i:2;s:4:\"root\";i:3;s:5:\"admin\";i:4;s:4:\"main\";i:5;s:6:\"invite\";i:6;s:13:\"administrator\";i:7;s:6:\"groups\";i:8;s:7:\"members\";i:9;s:6:\"forums\";i:10;s:5:\"blogs\";i:11;s:8:\"activity\";i:12;s:7:\"profile\";i:13;s:7:\"friends\";i:14;s:6:\"search\";i:15;s:8:\"settings\";i:16;s:13:\"notifications\";i:17;s:8:\"register\";i:18;s:8:\"activate\";}','no');
INSERT INTO `wp_options` VALUES (393,'wpforo_forum_tree_3e3d01d4f6038f57466657e67852b6c3','                <option value=\"1\"  disabled  > Wp discussion main category</option>                <option value=\"2\"  > — Wp plugins</option>                <option value=\"3\"  > — Wp themes</option>','yes');
INSERT INTO `wp_options` VALUES (400,'wpforo_stat','a:10:{s:6:\"forums\";i:4;s:6:\"topics\";i:2;s:5:\"posts\";i:4;s:7:\"members\";i:1;s:20:\"online_members_count\";i:0;s:15:\"last_post_title\";s:6:\"Hundar\";s:13:\"last_post_url\";s:58:\"http://egettheme.local/community/main-forum/hundar/#post-4\";s:13:\"newest_member\";a:52:{s:2:\"ID\";s:1:\"4\";s:10:\"user_login\";s:7:\"Gympish\";s:9:\"user_pass\";s:34:\"$P$BsNqMBzfYJFNsVSYIQQWNu4c4xIMy1/\";s:13:\"user_nicename\";s:7:\"gympish\";s:10:\"user_email\";s:25:\"jakob_gauffin@hotmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-11-03 16:04:03\";s:19:\"user_activation_key\";s:45:\"1604419443:$P$B6E/LUzUNLOfCkLlJibRaJMqEJBzMF.\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:7:\"Gympish\";s:6:\"userid\";s:1:\"4\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:7:\"Gympish\";s:7:\"groupid\";s:1:\"3\";s:5:\"posts\";s:1:\"0\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:0:\"\";s:3:\"icq\";N;s:3:\"aim\";N;s:5:\"yahoo\";N;s:3:\"msn\";N;s:8:\"facebook\";N;s:7:\"twitter\";N;s:5:\"gtalk\";N;s:5:\"skype\";N;s:6:\"avatar\";N;s:9:\"signature\";N;s:5:\"about\";s:0:\"\";s:10:\"occupation\";N;s:8:\"location\";N;s:10:\"last_login\";s:19:\"2020-11-03 16:04:03\";s:11:\"online_time\";N;s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:8:\"inactive\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";N;s:6:\"fields\";N;s:4:\"name\";s:10:\"Registered\";s:4:\"cans\";s:645:\"a:35:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:10:\"Registered\";s:4:\"role\";s:10:\"subscriber\";s:6:\"access\";s:8:\"standard\";s:5:\"color\";s:0:\"\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"1\";s:9:\"groupname\";s:10:\"Registered\";s:11:\"profile_url\";s:49:\"http://egettheme.local/community/profile/gympish/\";}s:19:\"newest_member_dname\";s:7:\"Gympish\";s:25:\"newest_member_profile_url\";s:49:\"http://egettheme.local/community/profile/gympish/\";}','yes');
INSERT INTO `wp_options` VALUES (413,'check-email-rate-time','1604506193','yes');
INSERT INTO `wp_options` VALUES (451,'wpforo_features','a:52:{s:14:\"user-admin-bar\";i:0;s:10:\"page-title\";i:0;s:7:\"top-bar\";i:0;s:14:\"top-bar-search\";i:0;s:10:\"breadcrumb\";i:1;s:11:\"footer-stat\";i:1;s:17:\"mention-nicknames\";i:1;s:20:\"content-do_shortcode\";i:0;s:12:\"view-logging\";i:1;s:13:\"track-logging\";i:0;s:11:\"goto-unread\";i:1;s:18:\"goto-unread-button\";i:0;s:7:\"profile\";i:2;s:13:\"user-register\";i:1;s:27:\"user-register-email-confirm\";i:1;s:35:\"disable_new_user_admin_notification\";i:1;s:12:\"register-url\";i:0;s:9:\"login-url\";i:0;s:13:\"resetpass-url\";i:1;s:14:\"replace-avatar\";i:1;s:7:\"avatars\";i:1;s:14:\"custom-avatars\";i:1;s:9:\"signature\";i:1;s:6:\"rating\";i:1;s:12:\"rating_title\";i:1;s:12:\"member_cashe\";i:1;s:12:\"object_cashe\";i:1;s:12:\"memory_cashe\";i:1;s:9:\"seo-title\";i:1;s:8:\"seo-meta\";i:1;s:11:\"seo-profile\";i:1;s:8:\"rss-feed\";i:0;s:10:\"user-synch\";i:0;s:13:\"notifications\";i:1;s:18:\"notifications-live\";i:0;s:17:\"notifications-bar\";i:1;s:11:\"bp_activity\";i:0;s:15:\"bp_notification\";i:0;s:12:\"bp_forum_tab\";i:0;s:15:\"um_notification\";i:1;s:12:\"um_forum_tab\";i:1;s:12:\"font-awesome\";i:1;s:13:\"output-buffer\";i:1;s:14:\"wp-date-format\";i:0;s:14:\"subscribe_conf\";i:1;s:33:\"subscribe_checkbox_on_post_editor\";i:0;s:33:\"subscribe_checkbox_default_status\";i:0;s:10:\"role-synch\";i:1;s:16:\"attach-media-lib\";i:1;s:8:\"admin-cp\";i:0;s:10:\"debug-mode\";i:0;s:9:\"copyright\";i:0;}','yes');
INSERT INTO `wp_options` VALUES (452,'wpforo_style_options','a:4:{s:15:\"font_size_forum\";i:17;s:15:\"font_size_topic\";i:16;s:22:\"font_size_post_content\";i:14;s:10:\"custom_css\";s:79:\"#wpforo-wrap {\r\n   font-size: 13px; width: 100%; padding:10px 0; margin:0px;\r\n}\";}','yes');
INSERT INTO `wp_options` VALUES (453,'wpforo_theme_options','a:11:{s:2:\"id\";s:7:\"classic\";s:4:\"name\";s:7:\"Classic\";s:7:\"version\";s:5:\"1.7.1\";s:11:\"description\";s:22:\"Main wpForo Stylesheet\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:17:\"http://wpforo.com\";s:4:\"file\";s:17:\"classic/style.css\";s:6:\"folder\";s:7:\"classic\";s:7:\"layouts\";a:4:{i:1;a:7:{s:2:\"id\";i:1;s:4:\"name\";s:8:\"Extended\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:65:\"Extended layout displays one level deeper information in advance.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/1/forum.php\";}i:2;a:7:{s:2:\"id\";i:2;s:4:\"name\";s:10:\"Simplified\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:41:\"Simplified layout looks simple and clean.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/2/forum.php\";}i:3;a:7:{s:2:\"id\";i:3;s:4:\"name\";s:2:\"QA\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:79:\"Q&A Layout turns your forum to a powerful question and answer discussion board.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/3/forum.php\";}i:4;a:7:{s:2:\"id\";i:4;s:4:\"name\";s:8:\"Threaded\";s:7:\"version\";s:5:\"1.0.0\";s:11:\"description\";s:84:\"Threaded layout turns your forum to a threads list accented on discussion tree view.\";s:6:\"author\";s:13:\"gVectors Team\";s:3:\"url\";s:20:\"http://gvectors.com/\";s:4:\"file\";s:27:\"classic/layouts/4/forum.php\";}}s:5:\"style\";s:7:\"default\";s:6:\"styles\";a:6:{s:7:\"default\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#FFFFFF\";i:2;s:7:\"#333333\";i:3;s:7:\"#ef8b8b\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#CCCCCC\";i:8;s:7:\"#E6E6E6\";i:9;s:7:\"#F5F5F5\";i:10;s:7:\"#DADADA\";i:11;s:7:\"#659FBE\";i:12;s:7:\"#EF8B8B\";i:13;s:7:\"#72CCFC\";i:14;s:7:\"#0099CC\";i:15;s:7:\"#3F7796\";i:16;s:7:\"#4A8EB3\";i:17;s:7:\"#DFF4FF\";i:20;s:7:\"#FF812D\";i:30;s:7:\"#4DCA5C\";i:31;s:7:\"#00A636\";i:32;s:7:\"#86BA4C\";i:33;s:7:\"#6FA634\";i:40;s:7:\"#FF9595\";i:41;s:7:\"#FF7575\";i:42;s:7:\"#F46464\";}s:3:\"red\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#e0141e\";i:12;s:7:\"#ee1a26\";i:13;s:7:\"#fc979c\";i:14;s:7:\"#e0141e\";i:15;s:7:\"#99262b\";i:16;s:7:\"#d61319\";i:17;s:7:\"#fff7f7\";i:20;s:7:\"#30b2a7\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:5:\"green\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#6ea500\";i:12;s:7:\"#649e2d\";i:13;s:7:\"#8dce0c\";i:14;s:7:\"#447714\";i:15;s:7:\"#5a7f10\";i:16;s:7:\"#6ea500\";i:17;s:7:\"#f8fcef\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#ff812d\";i:33;s:7:\"#f47222\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:6:\"orange\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#555555\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#e0762f\";i:12;s:7:\"#ff6600\";i:13;s:7:\"#fc9958\";i:14;s:7:\"#f26000\";i:15;s:7:\"#aa4f12\";i:16;s:7:\"#f26000\";i:17;s:7:\"#fff4ed\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:4:\"grey\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#ffffff\";i:2;s:7:\"#333333\";i:3;s:7:\"#343434\";i:4;s:7:\"#666666\";i:5;s:7:\"#777777\";i:6;s:7:\"#999999\";i:7;s:7:\"#cccccc\";i:8;s:7:\"#e6e6e6\";i:9;s:7:\"#f5f5f5\";i:10;s:7:\"#dadada\";i:11;s:7:\"#888888\";i:12;s:7:\"#666666\";i:13;s:7:\"#7eea8d\";i:14;s:7:\"#777777\";i:15;s:7:\"#333333\";i:16;s:7:\"#555555\";i:17;s:7:\"#dff4ff\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}s:4:\"dark\";a:26:{i:0;s:7:\"#000000\";i:1;s:7:\"#141414\";i:2;s:7:\"#bbbbbb\";i:3;s:7:\"#000000\";i:4;s:7:\"#666666\";i:5;s:7:\"#bcbcbc\";i:6;s:7:\"#999999\";i:7;s:7:\"#585858\";i:8;s:7:\"#727272\";i:9;s:7:\"#323232\";i:10;s:7:\"#dadada\";i:11;s:7:\"#888888\";i:12;s:7:\"#33779b\";i:13;s:7:\"#7eea8d\";i:14;s:7:\"#777777\";i:15;s:7:\"#e0e0e0\";i:16;s:7:\"#cecece\";i:17;s:7:\"#33779b\";i:20;s:7:\"#ff812d\";i:30;s:7:\"#4dca5c\";i:31;s:7:\"#00a636\";i:32;s:7:\"#86ba4c\";i:33;s:7:\"#6fa634\";i:40;s:7:\"#ff9595\";i:41;s:7:\"#ff7575\";i:42;s:7:\"#f46464\";}}}','yes');
INSERT INTO `wp_options` VALUES (458,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1604745294;s:7:\"checked\";a:2:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"5.9.3\";s:17:\"wpforo/wpforo.php\";s:5:\"1.8.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.3\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:17:\"wpforo/wpforo.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:20:\"w.org/plugins/wpforo\";s:4:\"slug\";s:6:\"wpforo\";s:6:\"plugin\";s:17:\"wpforo/wpforo.php\";s:11:\"new_version\";s:5:\"1.8.4\";s:3:\"url\";s:37:\"https://wordpress.org/plugins/wpforo/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/wpforo.1.8.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/wpforo/assets/icon-256x256.png?rev=2121644\";s:2:\"1x\";s:59:\"https://ps.w.org/wpforo/assets/icon-128x128.png?rev=1443649\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/wpforo/assets/banner-1544x500.png?rev=1743533\";s:2:\"1x\";s:61:\"https://ps.w.org/wpforo/assets/banner-772x250.png?rev=1743533\";}s:11:\"banners_rtl\";a:0:{}}}}','no');
INSERT INTO `wp_options` VALUES (459,'acf_version','5.9.3','yes');
INSERT INTO `wp_options` VALUES (466,'_transient_timeout_wpforo_get_phrases_0d67330e40','1604792711','no');
INSERT INTO `wp_options` VALUES (467,'_transient_wpforo_get_phrases_0d67330e40','a:704:{i:0;a:5:{s:8:\"phraseid\";s:1:\"1\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"%s and %s liked\";s:12:\"phrase_value\";s:15:\"%s and %s liked\";s:7:\"package\";s:6:\"wpforo\";}i:1;a:5:{s:8:\"phraseid\";s:1:\"2\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%s liked\";s:12:\"phrase_value\";s:8:\"%s liked\";s:7:\"package\";s:6:\"wpforo\";}i:2;a:5:{s:8:\"phraseid\";s:1:\"3\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"%s, %s and %s liked\";s:12:\"phrase_value\";s:19:\"%s, %s and %s liked\";s:7:\"package\";s:6:\"wpforo\";}i:3;a:5:{s:8:\"phraseid\";s:1:\"4\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"%s, %s, %s and %d people liked\";s:12:\"phrase_value\";s:30:\"%s, %s, %s and %d people liked\";s:7:\"package\";s:6:\"wpforo\";}i:4;a:5:{s:8:\"phraseid\";s:1:\"5\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"AOL IM\";s:12:\"phrase_value\";s:6:\"AOL IM\";s:7:\"package\";s:6:\"wpforo\";}i:5;a:5:{s:8:\"phraseid\";s:1:\"6\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"About Me\";s:12:\"phrase_value\";s:8:\"About Me\";s:7:\"package\";s:6:\"wpforo\";}i:6;a:5:{s:8:\"phraseid\";s:1:\"7\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Access add error\";s:12:\"phrase_value\";s:16:\"Access add error\";s:7:\"package\";s:6:\"wpforo\";}i:7;a:5:{s:8:\"phraseid\";s:1:\"8\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Access delete error\";s:12:\"phrase_value\";s:19:\"Access delete error\";s:7:\"package\";s:6:\"wpforo\";}i:8;a:5:{s:8:\"phraseid\";s:1:\"9\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Access edit error\";s:12:\"phrase_value\";s:17:\"Access edit error\";s:7:\"package\";s:6:\"wpforo\";}i:9;a:5:{s:8:\"phraseid\";s:2:\"10\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Access successfully deleted\";s:12:\"phrase_value\";s:27:\"Access successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:10;a:5:{s:8:\"phraseid\";s:2:\"11\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Account\";s:12:\"phrase_value\";s:7:\"Account\";s:7:\"package\";s:6:\"wpforo\";}i:11;a:5:{s:8:\"phraseid\";s:2:\"12\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Activity\";s:12:\"phrase_value\";s:8:\"Activity\";s:7:\"package\";s:6:\"wpforo\";}i:12;a:5:{s:8:\"phraseid\";s:2:\"13\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Add Topic error: No forum selected\";s:12:\"phrase_value\";s:34:\"Add Topic error: No forum selected\";s:7:\"package\";s:6:\"wpforo\";}i:13;a:5:{s:8:\"phraseid\";s:2:\"14\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Add a comment\";s:12:\"phrase_value\";s:13:\"Add a comment\";s:7:\"package\";s:6:\"wpforo\";}i:14;a:5:{s:8:\"phraseid\";s:2:\"15\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Add topic\";s:12:\"phrase_value\";s:9:\"Add topic\";s:7:\"package\";s:6:\"wpforo\";}i:15;a:5:{s:8:\"phraseid\";s:2:\"16\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"All Checked topics successfully deleted\";s:12:\"phrase_value\";s:39:\"All Checked topics successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:16;a:5:{s:8:\"phraseid\";s:2:\"17\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Answer\";s:12:\"phrase_value\";s:6:\"Answer\";s:7:\"package\";s:6:\"wpforo\";}i:17;a:5:{s:8:\"phraseid\";s:2:\"18\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Answer to\";s:12:\"phrase_value\";s:9:\"Answer to\";s:7:\"package\";s:6:\"wpforo\";}i:18;a:5:{s:8:\"phraseid\";s:2:\"19\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Answers\";s:12:\"phrase_value\";s:7:\"Answers\";s:7:\"package\";s:6:\"wpforo\";}i:19;a:5:{s:8:\"phraseid\";s:2:\"20\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Any Date\";s:12:\"phrase_value\";s:8:\"Any Date\";s:7:\"package\";s:6:\"wpforo\";}i:20;a:5:{s:8:\"phraseid\";s:2:\"21\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Ascending order\";s:12:\"phrase_value\";s:15:\"Ascending order\";s:7:\"package\";s:6:\"wpforo\";}i:21;a:5:{s:8:\"phraseid\";s:2:\"22\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Attach file:\";s:12:\"phrase_value\";s:12:\"Attach file:\";s:7:\"package\";s:6:\"wpforo\";}i:22;a:5:{s:8:\"phraseid\";s:2:\"23\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Avatar\";s:12:\"phrase_value\";s:6:\"Avatar\";s:7:\"package\";s:6:\"wpforo\";}i:23;a:5:{s:8:\"phraseid\";s:2:\"24\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Can\'t add forum\";s:12:\"phrase_value\";s:15:\"Can\'t add forum\";s:7:\"package\";s:6:\"wpforo\";}i:24;a:5:{s:8:\"phraseid\";s:2:\"25\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Can\'t add new language\";s:12:\"phrase_value\";s:22:\"Can\'t add new language\";s:7:\"package\";s:6:\"wpforo\";}i:25;a:5:{s:8:\"phraseid\";s:2:\"26\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Can\'t delete this Usergroup\";s:12:\"phrase_value\";s:27:\"Can\'t delete this Usergroup\";s:7:\"package\";s:6:\"wpforo\";}i:26;a:5:{s:8:\"phraseid\";s:2:\"27\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Can\'t send confirmation email\";s:12:\"phrase_value\";s:29:\"Can\'t send confirmation email\";s:7:\"package\";s:6:\"wpforo\";}i:27;a:5:{s:8:\"phraseid\";s:2:\"28\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Can\'t send report email\";s:12:\"phrase_value\";s:23:\"Can\'t send report email\";s:7:\"package\";s:6:\"wpforo\";}i:28;a:5:{s:8:\"phraseid\";s:2:\"29\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Can\'t subscribe to this item\";s:12:\"phrase_value\";s:28:\"Can\'t subscribe to this item\";s:7:\"package\";s:6:\"wpforo\";}i:29;a:5:{s:8:\"phraseid\";s:2:\"30\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Can\'t write a post: This topic is closed\";s:12:\"phrase_value\";s:40:\"Can\'t write a post: This topic is closed\";s:7:\"package\";s:6:\"wpforo\";}i:30;a:5:{s:8:\"phraseid\";s:2:\"31\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Can`t upload file\";s:12:\"phrase_value\";s:17:\"Can`t upload file\";s:7:\"package\";s:6:\"wpforo\";}i:31;a:5:{s:8:\"phraseid\";s:2:\"32\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Cannot update forum hierarchy\";s:12:\"phrase_value\";s:29:\"Cannot update forum hierarchy\";s:7:\"package\";s:6:\"wpforo\";}i:32;a:5:{s:8:\"phraseid\";s:2:\"33\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Cannot update post data\";s:12:\"phrase_value\";s:23:\"Cannot update post data\";s:7:\"package\";s:6:\"wpforo\";}i:33;a:5:{s:8:\"phraseid\";s:2:\"34\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Change password\";s:12:\"phrase_value\";s:15:\"Change password\";s:7:\"package\";s:6:\"wpforo\";}i:34;a:5:{s:8:\"phraseid\";s:2:\"35\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Choose Target Forum\";s:12:\"phrase_value\";s:19:\"Choose Target Forum\";s:7:\"package\";s:6:\"wpforo\";}i:35;a:5:{s:8:\"phraseid\";s:2:\"36\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Comments\";s:12:\"phrase_value\";s:8:\"Comments\";s:7:\"package\";s:6:\"wpforo\";}i:36;a:5:{s:8:\"phraseid\";s:2:\"37\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Confirm my subscription\";s:12:\"phrase_value\";s:23:\"Confirm my subscription\";s:7:\"package\";s:6:\"wpforo\";}i:37;a:5:{s:8:\"phraseid\";s:2:\"38\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"Could not be unsubscribe from this item\";s:12:\"phrase_value\";s:39:\"Could not be unsubscribe from this item\";s:7:\"package\";s:6:\"wpforo\";}i:38;a:5:{s:8:\"phraseid\";s:2:\"39\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Date\";s:12:\"phrase_value\";s:4:\"Date\";s:7:\"package\";s:6:\"wpforo\";}i:39;a:5:{s:8:\"phraseid\";s:2:\"40\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Delete\";s:12:\"phrase_value\";s:6:\"Delete\";s:7:\"package\";s:6:\"wpforo\";}i:40;a:5:{s:8:\"phraseid\";s:2:\"41\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Descending order\";s:12:\"phrase_value\";s:16:\"Descending order\";s:7:\"package\";s:6:\"wpforo\";}i:41;a:5:{s:8:\"phraseid\";s:2:\"42\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Display Name\";s:12:\"phrase_value\";s:12:\"Display Name\";s:7:\"package\";s:6:\"wpforo\";}i:42;a:5:{s:8:\"phraseid\";s:2:\"43\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Edit\";s:12:\"phrase_value\";s:4:\"Edit\";s:7:\"package\";s:6:\"wpforo\";}i:43;a:5:{s:8:\"phraseid\";s:2:\"44\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Edited: \";s:12:\"phrase_value\";s:8:\"Edited: \";s:7:\"package\";s:6:\"wpforo\";}i:44;a:5:{s:8:\"phraseid\";s:2:\"45\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Email\";s:12:\"phrase_value\";s:5:\"Email\";s:7:\"package\";s:6:\"wpforo\";}i:45;a:5:{s:8:\"phraseid\";s:2:\"46\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"Email address exists. Please insert another.\";s:12:\"phrase_value\";s:44:\"Email address exists. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:46;a:5:{s:8:\"phraseid\";s:2:\"47\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Enter title here\";s:12:\"phrase_value\";s:16:\"Enter title here\";s:7:\"package\";s:6:\"wpforo\";}i:47;a:5:{s:8:\"phraseid\";s:2:\"48\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Error: Forum is not found\";s:12:\"phrase_value\";s:25:\"Error: Forum is not found\";s:7:\"package\";s:6:\"wpforo\";}i:48;a:5:{s:8:\"phraseid\";s:2:\"49\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Error: No topic selected\";s:12:\"phrase_value\";s:24:\"Error: No topic selected\";s:7:\"package\";s:6:\"wpforo\";}i:49;a:5:{s:8:\"phraseid\";s:2:\"50\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Error: Topic is not found\";s:12:\"phrase_value\";s:25:\"Error: Topic is not found\";s:7:\"package\";s:6:\"wpforo\";}i:50;a:5:{s:8:\"phraseid\";s:2:\"51\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"Error: please insert some text to report.\";s:12:\"phrase_value\";s:41:\"Error: please insert some text to report.\";s:7:\"package\";s:6:\"wpforo\";}i:51;a:5:{s:8:\"phraseid\";s:2:\"52\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Facebook\";s:12:\"phrase_value\";s:8:\"Facebook\";s:7:\"package\";s:6:\"wpforo\";}i:52;a:5:{s:8:\"phraseid\";s:2:\"53\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Failed to write file to disk\";s:12:\"phrase_value\";s:28:\"Failed to write file to disk\";s:7:\"package\";s:6:\"wpforo\";}i:53;a:5:{s:8:\"phraseid\";s:2:\"54\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Features successfully updated\";s:12:\"phrase_value\";s:29:\"Features successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:54;a:5:{s:8:\"phraseid\";s:2:\"55\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:61:\"Features successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:61:\"Features successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:55;a:5:{s:8:\"phraseid\";s:2:\"56\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"File type is not allowed\";s:12:\"phrase_value\";s:24:\"File type is not allowed\";s:7:\"package\";s:6:\"wpforo\";}i:56;a:5:{s:8:\"phraseid\";s:2:\"57\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"File upload stopped by extension\";s:12:\"phrase_value\";s:32:\"File upload stopped by extension\";s:7:\"package\";s:6:\"wpforo\";}i:57;a:5:{s:8:\"phraseid\";s:2:\"58\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Find Posts by User\";s:12:\"phrase_value\";s:18:\"Find Posts by User\";s:7:\"package\";s:6:\"wpforo\";}i:58;a:5:{s:8:\"phraseid\";s:2:\"59\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Find Topics Started by User\";s:12:\"phrase_value\";s:27:\"Find Topics Started by User\";s:7:\"package\";s:6:\"wpforo\";}i:59;a:5:{s:8:\"phraseid\";s:2:\"60\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"First post and replies\";s:12:\"phrase_value\";s:22:\"First post and replies\";s:7:\"package\";s:6:\"wpforo\";}i:60;a:5:{s:8:\"phraseid\";s:2:\"61\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Forum\";s:12:\"phrase_value\";s:5:\"Forum\";s:7:\"package\";s:6:\"wpforo\";}i:61;a:5:{s:8:\"phraseid\";s:2:\"62\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum - Login\";s:12:\"phrase_value\";s:13:\"Forum - Login\";s:7:\"package\";s:6:\"wpforo\";}i:62;a:5:{s:8:\"phraseid\";s:2:\"63\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Forum - Page Not Found\";s:12:\"phrase_value\";s:22:\"Forum - Page Not Found\";s:7:\"package\";s:6:\"wpforo\";}i:63;a:5:{s:8:\"phraseid\";s:2:\"64\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum - Registration\";s:12:\"phrase_value\";s:20:\"Forum - Registration\";s:7:\"package\";s:6:\"wpforo\";}i:64;a:5:{s:8:\"phraseid\";s:2:\"65\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Forum Base URL successfully updated\";s:12:\"phrase_value\";s:35:\"Forum Base URL successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:65;a:5:{s:8:\"phraseid\";s:2:\"66\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Forum Home\";s:12:\"phrase_value\";s:10:\"Forum Home\";s:7:\"package\";s:6:\"wpforo\";}i:66;a:5:{s:8:\"phraseid\";s:2:\"67\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum Members\";s:12:\"phrase_value\";s:13:\"Forum Members\";s:7:\"package\";s:6:\"wpforo\";}i:67;a:5:{s:8:\"phraseid\";s:2:\"68\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum Profile\";s:12:\"phrase_value\";s:13:\"Forum Profile\";s:7:\"package\";s:6:\"wpforo\";}i:68;a:5:{s:8:\"phraseid\";s:2:\"69\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Forum RSS Feed\";s:12:\"phrase_value\";s:14:\"Forum RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:69;a:5:{s:8:\"phraseid\";s:2:\"70\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Forum Statistics\";s:12:\"phrase_value\";s:16:\"Forum Statistics\";s:7:\"package\";s:6:\"wpforo\";}i:70;a:5:{s:8:\"phraseid\";s:2:\"71\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum deleting error\";s:12:\"phrase_value\";s:20:\"Forum deleting error\";s:7:\"package\";s:6:\"wpforo\";}i:71;a:5:{s:8:\"phraseid\";s:2:\"72\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Forum hierarchy successfully updated\";s:12:\"phrase_value\";s:36:\"Forum hierarchy successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:72;a:5:{s:8:\"phraseid\";s:2:\"73\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Forum is empty\";s:12:\"phrase_value\";s:14:\"Forum is empty\";s:7:\"package\";s:6:\"wpforo\";}i:73;a:5:{s:8:\"phraseid\";s:2:\"74\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Forum is successfully merged\";s:12:\"phrase_value\";s:28:\"Forum is successfully merged\";s:7:\"package\";s:6:\"wpforo\";}i:74;a:5:{s:8:\"phraseid\";s:2:\"75\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Forum merging error\";s:12:\"phrase_value\";s:19:\"Forum merging error\";s:7:\"package\";s:6:\"wpforo\";}i:75;a:5:{s:8:\"phraseid\";s:2:\"76\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Forum options successfully updated\";s:12:\"phrase_value\";s:34:\"Forum options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:76;a:5:{s:8:\"phraseid\";s:2:\"77\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:66:\"Forum options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:66:\"Forum options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:77;a:5:{s:8:\"phraseid\";s:2:\"78\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Forum successfully updated\";s:12:\"phrase_value\";s:26:\"Forum successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:78;a:5:{s:8:\"phraseid\";s:2:\"79\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Forum update error\";s:12:\"phrase_value\";s:18:\"Forum update error\";s:7:\"package\";s:6:\"wpforo\";}i:79;a:5:{s:8:\"phraseid\";s:2:\"80\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Forums\";s:12:\"phrase_value\";s:6:\"Forums\";s:7:\"package\";s:6:\"wpforo\";}i:80;a:5:{s:8:\"phraseid\";s:2:\"81\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"General options successfully updated\";s:12:\"phrase_value\";s:36:\"General options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:81;a:5:{s:8:\"phraseid\";s:2:\"82\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Group\";s:12:\"phrase_value\";s:5:\"Group\";s:7:\"package\";s:6:\"wpforo\";}i:82;a:5:{s:8:\"phraseid\";s:2:\"83\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Google+\";s:12:\"phrase_value\";s:7:\"Google+\";s:7:\"package\";s:6:\"wpforo\";}i:83;a:5:{s:8:\"phraseid\";s:2:\"84\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Guest\";s:12:\"phrase_value\";s:5:\"Guest\";s:7:\"package\";s:6:\"wpforo\";}i:84;a:5:{s:8:\"phraseid\";s:2:\"85\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"ICQ\";s:12:\"phrase_value\";s:3:\"ICQ\";s:7:\"package\";s:6:\"wpforo\";}i:85;a:5:{s:8:\"phraseid\";s:2:\"86\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Illegal character in username.\";s:12:\"phrase_value\";s:30:\"Illegal character in username.\";s:7:\"package\";s:6:\"wpforo\";}i:86;a:5:{s:8:\"phraseid\";s:2:\"87\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Insert member name or email\";s:12:\"phrase_value\";s:27:\"Insert member name or email\";s:7:\"package\";s:6:\"wpforo\";}i:87;a:5:{s:8:\"phraseid\";s:2:\"88\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Insert your Email address.\";s:12:\"phrase_value\";s:26:\"Insert your Email address.\";s:7:\"package\";s:6:\"wpforo\";}i:88;a:5:{s:8:\"phraseid\";s:2:\"89\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Invalid Email address\";s:12:\"phrase_value\";s:21:\"Invalid Email address\";s:7:\"package\";s:6:\"wpforo\";}i:89;a:5:{s:8:\"phraseid\";s:2:\"90\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Invalid request!\";s:12:\"phrase_value\";s:16:\"Invalid request!\";s:7:\"package\";s:6:\"wpforo\";}i:90;a:5:{s:8:\"phraseid\";s:2:\"91\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Joined\";s:12:\"phrase_value\";s:6:\"Joined\";s:7:\"package\";s:6:\"wpforo\";}i:91;a:5:{s:8:\"phraseid\";s:2:\"92\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 24 hours\";s:12:\"phrase_value\";s:13:\"Last 24 hours\";s:7:\"package\";s:6:\"wpforo\";}i:92;a:5:{s:8:\"phraseid\";s:2:\"93\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 3 Months\";s:12:\"phrase_value\";s:13:\"Last 3 Months\";s:7:\"package\";s:6:\"wpforo\";}i:93;a:5:{s:8:\"phraseid\";s:2:\"94\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last 6 Months\";s:12:\"phrase_value\";s:13:\"Last 6 Months\";s:7:\"package\";s:6:\"wpforo\";}i:94;a:5:{s:8:\"phraseid\";s:2:\"95\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Last Active\";s:12:\"phrase_value\";s:11:\"Last Active\";s:7:\"package\";s:6:\"wpforo\";}i:95;a:5:{s:8:\"phraseid\";s:2:\"96\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Last Month\";s:12:\"phrase_value\";s:10:\"Last Month\";s:7:\"package\";s:6:\"wpforo\";}i:96;a:5:{s:8:\"phraseid\";s:2:\"97\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Last Post\";s:12:\"phrase_value\";s:9:\"Last Post\";s:7:\"package\";s:6:\"wpforo\";}i:97;a:5:{s:8:\"phraseid\";s:2:\"98\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Last Post Info\";s:12:\"phrase_value\";s:14:\"Last Post Info\";s:7:\"package\";s:6:\"wpforo\";}i:98;a:5:{s:8:\"phraseid\";s:2:\"99\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Last Week\";s:12:\"phrase_value\";s:9:\"Last Week\";s:7:\"package\";s:6:\"wpforo\";}i:99;a:5:{s:8:\"phraseid\";s:3:\"100\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Last Year ago\";s:12:\"phrase_value\";s:13:\"Last Year ago\";s:7:\"package\";s:6:\"wpforo\";}i:100;a:5:{s:8:\"phraseid\";s:3:\"101\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Last post by %s\";s:12:\"phrase_value\";s:15:\"Last post by %s\";s:7:\"package\";s:6:\"wpforo\";}i:101;a:5:{s:8:\"phraseid\";s:3:\"102\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Latest Post\";s:12:\"phrase_value\";s:11:\"Latest Post\";s:7:\"package\";s:6:\"wpforo\";}i:102;a:5:{s:8:\"phraseid\";s:3:\"103\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Leave a reply\";s:12:\"phrase_value\";s:13:\"Leave a reply\";s:7:\"package\";s:6:\"wpforo\";}i:103;a:5:{s:8:\"phraseid\";s:3:\"104\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"Length must be between 3 characters and 15 characters.\";s:12:\"phrase_value\";s:54:\"Length must be between 3 characters and 15 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:104;a:5:{s:8:\"phraseid\";s:3:\"105\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Liked\";s:12:\"phrase_value\";s:5:\"Liked\";s:7:\"package\";s:6:\"wpforo\";}i:105;a:5:{s:8:\"phraseid\";s:3:\"106\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Location\";s:12:\"phrase_value\";s:8:\"Location\";s:7:\"package\";s:6:\"wpforo\";}i:106;a:5:{s:8:\"phraseid\";s:3:\"107\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Login\";s:12:\"phrase_value\";s:5:\"Login\";s:7:\"package\";s:6:\"wpforo\";}i:107;a:5:{s:8:\"phraseid\";s:3:\"108\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Logout\";s:12:\"phrase_value\";s:6:\"Logout\";s:7:\"package\";s:6:\"wpforo\";}i:108;a:5:{s:8:\"phraseid\";s:3:\"109\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Lost your password?\";s:12:\"phrase_value\";s:19:\"Lost your password?\";s:7:\"package\";s:6:\"wpforo\";}i:109;a:5:{s:8:\"phraseid\";s:3:\"110\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"MSN\";s:12:\"phrase_value\";s:3:\"MSN\";s:7:\"package\";s:6:\"wpforo\";}i:110;a:5:{s:8:\"phraseid\";s:3:\"111\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Maximum allowed file size is\";s:12:\"phrase_value\";s:28:\"Maximum allowed file size is\";s:7:\"package\";s:6:\"wpforo\";}i:111;a:5:{s:8:\"phraseid\";s:3:\"112\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Member Activity\";s:12:\"phrase_value\";s:15:\"Member Activity\";s:7:\"package\";s:6:\"wpforo\";}i:112;a:5:{s:8:\"phraseid\";s:3:\"113\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Member Information\";s:12:\"phrase_value\";s:18:\"Member Information\";s:7:\"package\";s:6:\"wpforo\";}i:113;a:5:{s:8:\"phraseid\";s:3:\"114\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Member Rating\";s:12:\"phrase_value\";s:13:\"Member Rating\";s:7:\"package\";s:6:\"wpforo\";}i:114;a:5:{s:8:\"phraseid\";s:3:\"115\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Member Rating Badge\";s:12:\"phrase_value\";s:19:\"Member Rating Badge\";s:7:\"package\";s:6:\"wpforo\";}i:115;a:5:{s:8:\"phraseid\";s:3:\"116\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Member options successfully updated\";s:12:\"phrase_value\";s:35:\"Member options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:116;a:5:{s:8:\"phraseid\";s:3:\"117\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:67:\"Member options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:67:\"Member options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:117;a:5:{s:8:\"phraseid\";s:3:\"118\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Members\";s:12:\"phrase_value\";s:7:\"Members\";s:7:\"package\";s:6:\"wpforo\";}i:118;a:5:{s:8:\"phraseid\";s:3:\"119\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Members not found\";s:12:\"phrase_value\";s:17:\"Members not found\";s:7:\"package\";s:6:\"wpforo\";}i:119;a:5:{s:8:\"phraseid\";s:3:\"120\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Message has been sent\";s:12:\"phrase_value\";s:21:\"Message has been sent\";s:7:\"package\";s:6:\"wpforo\";}i:120;a:5:{s:8:\"phraseid\";s:3:\"121\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Messages\";s:12:\"phrase_value\";s:8:\"Messages\";s:7:\"package\";s:6:\"wpforo\";}i:121;a:5:{s:8:\"phraseid\";s:3:\"122\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Missing a temporary folder\";s:12:\"phrase_value\";s:26:\"Missing a temporary folder\";s:7:\"package\";s:6:\"wpforo\";}i:122;a:5:{s:8:\"phraseid\";s:3:\"123\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Move\";s:12:\"phrase_value\";s:4:\"Move\";s:7:\"package\";s:6:\"wpforo\";}i:123;a:5:{s:8:\"phraseid\";s:3:\"124\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Move Topic\";s:12:\"phrase_value\";s:10:\"Move Topic\";s:7:\"package\";s:6:\"wpforo\";}i:124;a:5:{s:8:\"phraseid\";s:3:\"125\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Must be minimum 6 characters.\";s:12:\"phrase_value\";s:29:\"Must be minimum 6 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:125;a:5:{s:8:\"phraseid\";s:3:\"126\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"My Profile\";s:12:\"phrase_value\";s:10:\"My Profile\";s:7:\"package\";s:6:\"wpforo\";}i:126;a:5:{s:8:\"phraseid\";s:3:\"127\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:75:\"New language successfully added and changed wpforo language to new language\";s:12:\"phrase_value\";s:75:\"New language successfully added and changed wpforo language to new language\";s:7:\"package\";s:6:\"wpforo\";}i:127;a:5:{s:8:\"phraseid\";s:3:\"128\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"No Posts found for update\";s:12:\"phrase_value\";s:25:\"No Posts found for update\";s:7:\"package\";s:6:\"wpforo\";}i:128;a:5:{s:8:\"phraseid\";s:3:\"129\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"No activity found for this member.\";s:12:\"phrase_value\";s:34:\"No activity found for this member.\";s:7:\"package\";s:6:\"wpforo\";}i:129;a:5:{s:8:\"phraseid\";s:3:\"130\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"No file was uploaded\";s:12:\"phrase_value\";s:20:\"No file was uploaded\";s:7:\"package\";s:6:\"wpforo\";}i:130;a:5:{s:8:\"phraseid\";s:3:\"131\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"No forums were found here.\";s:12:\"phrase_value\";s:26:\"No forums were found here.\";s:7:\"package\";s:6:\"wpforo\";}i:131;a:5:{s:8:\"phraseid\";s:3:\"132\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"No online members at the moment\";s:12:\"phrase_value\";s:31:\"No online members at the moment\";s:7:\"package\";s:6:\"wpforo\";}i:132;a:5:{s:8:\"phraseid\";s:3:\"133\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"No subscriptions found for this member.\";s:12:\"phrase_value\";s:39:\"No subscriptions found for this member.\";s:7:\"package\";s:6:\"wpforo\";}i:133;a:5:{s:8:\"phraseid\";s:3:\"134\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"No topics were found here\";s:12:\"phrase_value\";s:25:\"No topics were found here\";s:7:\"package\";s:6:\"wpforo\";}i:134;a:5:{s:8:\"phraseid\";s:3:\"135\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Occupation\";s:12:\"phrase_value\";s:10:\"Occupation\";s:7:\"package\";s:6:\"wpforo\";}i:135;a:5:{s:8:\"phraseid\";s:3:\"136\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Offline\";s:12:\"phrase_value\";s:7:\"Offline\";s:7:\"package\";s:6:\"wpforo\";}i:136;a:5:{s:8:\"phraseid\";s:3:\"137\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Online\";s:12:\"phrase_value\";s:6:\"Online\";s:7:\"package\";s:6:\"wpforo\";}i:137;a:5:{s:8:\"phraseid\";s:3:\"138\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"Oops! The page you requested was not found!\";s:12:\"phrase_value\";s:43:\"Oops! The page you requested was not found!\";s:7:\"package\";s:6:\"wpforo\";}i:138;a:5:{s:8:\"phraseid\";s:3:\"139\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Our newest member\";s:12:\"phrase_value\";s:17:\"Our newest member\";s:7:\"package\";s:6:\"wpforo\";}i:139;a:5:{s:8:\"phraseid\";s:3:\"140\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Page\";s:12:\"phrase_value\";s:4:\"Page\";s:7:\"package\";s:6:\"wpforo\";}i:140;a:5:{s:8:\"phraseid\";s:3:\"141\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Password\";s:12:\"phrase_value\";s:8:\"Password\";s:7:\"package\";s:6:\"wpforo\";}i:141;a:5:{s:8:\"phraseid\";s:3:\"142\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"Password length must be between 6 characters and 20 characters.\";s:12:\"phrase_value\";s:63:\"Password length must be between 6 characters and 20 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:142;a:5:{s:8:\"phraseid\";s:3:\"143\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Password mismatch.\";s:12:\"phrase_value\";s:18:\"Password mismatch.\";s:7:\"package\";s:6:\"wpforo\";}i:143;a:5:{s:8:\"phraseid\";s:3:\"144\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Permission denied\";s:12:\"phrase_value\";s:17:\"Permission denied\";s:7:\"package\";s:6:\"wpforo\";}i:144;a:5:{s:8:\"phraseid\";s:3:\"145\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Permission denied for add forum\";s:12:\"phrase_value\";s:31:\"Permission denied for add forum\";s:7:\"package\";s:6:\"wpforo\";}i:145;a:5:{s:8:\"phraseid\";s:3:\"146\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Permission denied for delete forum\";s:12:\"phrase_value\";s:34:\"Permission denied for delete forum\";s:7:\"package\";s:6:\"wpforo\";}i:146;a:5:{s:8:\"phraseid\";s:3:\"147\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"Permission denied for edit forum\";s:12:\"phrase_value\";s:32:\"Permission denied for edit forum\";s:7:\"package\";s:6:\"wpforo\";}i:147;a:5:{s:8:\"phraseid\";s:3:\"148\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"Permission denied for this action\";s:12:\"phrase_value\";s:33:\"Permission denied for this action\";s:7:\"package\";s:6:\"wpforo\";}i:148;a:5:{s:8:\"phraseid\";s:3:\"149\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Phrase add error\";s:12:\"phrase_value\";s:16:\"Phrase add error\";s:7:\"package\";s:6:\"wpforo\";}i:149;a:5:{s:8:\"phraseid\";s:3:\"150\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Phrase adding error\";s:12:\"phrase_value\";s:19:\"Phrase adding error\";s:7:\"package\";s:6:\"wpforo\";}i:150;a:5:{s:8:\"phraseid\";s:3:\"151\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Phrase successfully added\";s:12:\"phrase_value\";s:25:\"Phrase successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:151;a:5:{s:8:\"phraseid\";s:3:\"152\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Phrase successfully updates\";s:12:\"phrase_value\";s:27:\"Phrase successfully updates\";s:7:\"package\";s:6:\"wpforo\";}i:152;a:5:{s:8:\"phraseid\";s:3:\"153\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Phrase update error\";s:12:\"phrase_value\";s:19:\"Phrase update error\";s:7:\"package\";s:6:\"wpforo\";}i:153;a:5:{s:8:\"phraseid\";s:3:\"154\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Please %s or %s\";s:12:\"phrase_value\";s:15:\"Please %s or %s\";s:7:\"package\";s:6:\"wpforo\";}i:154;a:5:{s:8:\"phraseid\";s:3:\"155\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Please insert required fields!\";s:12:\"phrase_value\";s:30:\"Please insert required fields!\";s:7:\"package\";s:6:\"wpforo\";}i:155;a:5:{s:8:\"phraseid\";s:3:\"156\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Post Title\";s:12:\"phrase_value\";s:10:\"Post Title\";s:7:\"package\";s:6:\"wpforo\";}i:156;a:5:{s:8:\"phraseid\";s:3:\"157\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Post delete error\";s:12:\"phrase_value\";s:17:\"Post delete error\";s:7:\"package\";s:6:\"wpforo\";}i:157;a:5:{s:8:\"phraseid\";s:3:\"158\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Post link\";s:12:\"phrase_value\";s:9:\"Post link\";s:7:\"package\";s:6:\"wpforo\";}i:158;a:5:{s:8:\"phraseid\";s:3:\"159\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"Post options successfully updated\";s:12:\"phrase_value\";s:33:\"Post options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:159;a:5:{s:8:\"phraseid\";s:3:\"160\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:65:\"Post options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:65:\"Post options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:160;a:5:{s:8:\"phraseid\";s:3:\"161\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Posted\";s:12:\"phrase_value\";s:6:\"Posted\";s:7:\"package\";s:6:\"wpforo\";}i:161;a:5:{s:8:\"phraseid\";s:3:\"162\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Posted by\";s:12:\"phrase_value\";s:9:\"Posted by\";s:7:\"package\";s:6:\"wpforo\";}i:162;a:5:{s:8:\"phraseid\";s:3:\"163\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Posts\";s:12:\"phrase_value\";s:5:\"Posts\";s:7:\"package\";s:6:\"wpforo\";}i:163;a:5:{s:8:\"phraseid\";s:3:\"164\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Powered by\";s:12:\"phrase_value\";s:10:\"Powered by\";s:7:\"package\";s:6:\"wpforo\";}i:164;a:5:{s:8:\"phraseid\";s:3:\"165\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Question Comments\";s:12:\"phrase_value\";s:17:\"Question Comments\";s:7:\"package\";s:6:\"wpforo\";}i:165;a:5:{s:8:\"phraseid\";s:3:\"166\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Questions\";s:12:\"phrase_value\";s:9:\"Questions\";s:7:\"package\";s:6:\"wpforo\";}i:166;a:5:{s:8:\"phraseid\";s:3:\"167\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Quote\";s:12:\"phrase_value\";s:5:\"Quote\";s:7:\"package\";s:6:\"wpforo\";}i:167;a:5:{s:8:\"phraseid\";s:3:\"168\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:2:\"RE\";s:12:\"phrase_value\";s:2:\"RE\";s:7:\"package\";s:6:\"wpforo\";}i:168;a:5:{s:8:\"phraseid\";s:3:\"169\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"REPLY:\";s:12:\"phrase_value\";s:6:\"REPLY:\";s:7:\"package\";s:6:\"wpforo\";}i:169;a:5:{s:8:\"phraseid\";s:3:\"170\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"RSS\";s:12:\"phrase_value\";s:3:\"RSS\";s:7:\"package\";s:6:\"wpforo\";}i:170;a:5:{s:8:\"phraseid\";s:3:\"171\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Rating\";s:12:\"phrase_value\";s:6:\"Rating\";s:7:\"package\";s:6:\"wpforo\";}i:171;a:5:{s:8:\"phraseid\";s:3:\"172\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Rating Badge\";s:12:\"phrase_value\";s:12:\"Rating Badge\";s:7:\"package\";s:6:\"wpforo\";}i:172;a:5:{s:8:\"phraseid\";s:3:\"173\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Received Likes\";s:12:\"phrase_value\";s:14:\"Received Likes\";s:7:\"package\";s:6:\"wpforo\";}i:173;a:5:{s:8:\"phraseid\";s:3:\"174\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Recent Questions\";s:12:\"phrase_value\";s:16:\"Recent Questions\";s:7:\"package\";s:6:\"wpforo\";}i:174;a:5:{s:8:\"phraseid\";s:3:\"175\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Recent Topics\";s:12:\"phrase_value\";s:13:\"Recent Topics\";s:7:\"package\";s:6:\"wpforo\";}i:175;a:5:{s:8:\"phraseid\";s:3:\"176\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Register\";s:12:\"phrase_value\";s:8:\"Register\";s:7:\"package\";s:6:\"wpforo\";}i:176;a:5:{s:8:\"phraseid\";s:3:\"177\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Registered date\";s:12:\"phrase_value\";s:15:\"Registered date\";s:7:\"package\";s:6:\"wpforo\";}i:177;a:5:{s:8:\"phraseid\";s:3:\"178\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Registration Error\";s:12:\"phrase_value\";s:18:\"Registration Error\";s:7:\"package\";s:6:\"wpforo\";}i:178;a:5:{s:8:\"phraseid\";s:3:\"179\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Relevancy\";s:12:\"phrase_value\";s:9:\"Relevancy\";s:7:\"package\";s:6:\"wpforo\";}i:179;a:5:{s:8:\"phraseid\";s:3:\"180\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Remember Me\";s:12:\"phrase_value\";s:11:\"Remember Me\";s:7:\"package\";s:6:\"wpforo\";}i:180;a:5:{s:8:\"phraseid\";s:3:\"181\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Replies\";s:12:\"phrase_value\";s:7:\"Replies\";s:7:\"package\";s:6:\"wpforo\";}i:181;a:5:{s:8:\"phraseid\";s:3:\"182\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Replies not found\";s:12:\"phrase_value\";s:17:\"Replies not found\";s:7:\"package\";s:6:\"wpforo\";}i:182;a:5:{s:8:\"phraseid\";s:3:\"183\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Reply\";s:12:\"phrase_value\";s:5:\"Reply\";s:7:\"package\";s:6:\"wpforo\";}i:183;a:5:{s:8:\"phraseid\";s:3:\"184\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Reply request error\";s:12:\"phrase_value\";s:19:\"Reply request error\";s:7:\"package\";s:6:\"wpforo\";}i:184;a:5:{s:8:\"phraseid\";s:3:\"185\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Report\";s:12:\"phrase_value\";s:6:\"Report\";s:7:\"package\";s:6:\"wpforo\";}i:185;a:5:{s:8:\"phraseid\";s:3:\"186\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Report to Administration\";s:12:\"phrase_value\";s:24:\"Report to Administration\";s:7:\"package\";s:6:\"wpforo\";}i:186;a:5:{s:8:\"phraseid\";s:3:\"187\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Result Info\";s:12:\"phrase_value\";s:11:\"Result Info\";s:7:\"package\";s:6:\"wpforo\";}i:187;a:5:{s:8:\"phraseid\";s:3:\"188\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Save\";s:12:\"phrase_value\";s:4:\"Save\";s:7:\"package\";s:6:\"wpforo\";}i:188;a:5:{s:8:\"phraseid\";s:3:\"189\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Save Changes\";s:12:\"phrase_value\";s:12:\"Save Changes\";s:7:\"package\";s:6:\"wpforo\";}i:189;a:5:{s:8:\"phraseid\";s:3:\"190\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Search\";s:12:\"phrase_value\";s:6:\"Search\";s:7:\"package\";s:6:\"wpforo\";}i:190;a:5:{s:8:\"phraseid\";s:3:\"191\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Search Entire Posts\";s:12:\"phrase_value\";s:19:\"Search Entire Posts\";s:7:\"package\";s:6:\"wpforo\";}i:191;a:5:{s:8:\"phraseid\";s:3:\"192\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Search Phrase\";s:12:\"phrase_value\";s:13:\"Search Phrase\";s:7:\"package\";s:6:\"wpforo\";}i:192;a:5:{s:8:\"phraseid\";s:3:\"193\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Search Titles Only\";s:12:\"phrase_value\";s:18:\"Search Titles Only\";s:7:\"package\";s:6:\"wpforo\";}i:193;a:5:{s:8:\"phraseid\";s:3:\"194\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Search Type\";s:12:\"phrase_value\";s:11:\"Search Type\";s:7:\"package\";s:6:\"wpforo\";}i:194;a:5:{s:8:\"phraseid\";s:3:\"195\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Search in Forums\";s:12:\"phrase_value\";s:16:\"Search in Forums\";s:7:\"package\";s:6:\"wpforo\";}i:195;a:5:{s:8:\"phraseid\";s:3:\"196\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Search in date period\";s:12:\"phrase_value\";s:21:\"Search in date period\";s:7:\"package\";s:6:\"wpforo\";}i:196;a:5:{s:8:\"phraseid\";s:3:\"197\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Search result for\";s:12:\"phrase_value\";s:17:\"Search result for\";s:7:\"package\";s:6:\"wpforo\";}i:197;a:5:{s:8:\"phraseid\";s:3:\"198\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Search...\";s:12:\"phrase_value\";s:9:\"Search...\";s:7:\"package\";s:6:\"wpforo\";}i:198;a:5:{s:8:\"phraseid\";s:3:\"199\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Select Page\";s:12:\"phrase_value\";s:11:\"Select Page\";s:7:\"package\";s:6:\"wpforo\";}i:199;a:5:{s:8:\"phraseid\";s:3:\"200\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Send Report\";s:12:\"phrase_value\";s:11:\"Send Report\";s:7:\"package\";s:6:\"wpforo\";}i:200;a:5:{s:8:\"phraseid\";s:3:\"201\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Set Topic Sticky\";s:12:\"phrase_value\";s:16:\"Set Topic Sticky\";s:7:\"package\";s:6:\"wpforo\";}i:201;a:5:{s:8:\"phraseid\";s:3:\"202\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Shop Account\";s:12:\"phrase_value\";s:12:\"Shop Account\";s:7:\"package\";s:6:\"wpforo\";}i:202;a:5:{s:8:\"phraseid\";s:3:\"203\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Sign In\";s:12:\"phrase_value\";s:7:\"Sign In\";s:7:\"package\";s:6:\"wpforo\";}i:203;a:5:{s:8:\"phraseid\";s:3:\"204\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Signature\";s:12:\"phrase_value\";s:9:\"Signature\";s:7:\"package\";s:6:\"wpforo\";}i:204;a:5:{s:8:\"phraseid\";s:3:\"205\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Site Profile\";s:12:\"phrase_value\";s:12:\"Site Profile\";s:7:\"package\";s:6:\"wpforo\";}i:205;a:5:{s:8:\"phraseid\";s:3:\"206\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Skype\";s:12:\"phrase_value\";s:5:\"Skype\";s:7:\"package\";s:6:\"wpforo\";}i:206;a:5:{s:8:\"phraseid\";s:3:\"207\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Social Networks\";s:12:\"phrase_value\";s:15:\"Social Networks\";s:7:\"package\";s:6:\"wpforo\";}i:207;a:5:{s:8:\"phraseid\";s:3:\"208\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Something wrong with profile data.\";s:12:\"phrase_value\";s:34:\"Something wrong with profile data.\";s:7:\"package\";s:6:\"wpforo\";}i:208;a:5:{s:8:\"phraseid\";s:3:\"209\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Sorry, something wrong with your data.\";s:12:\"phrase_value\";s:38:\"Sorry, something wrong with your data.\";s:7:\"package\";s:6:\"wpforo\";}i:209;a:5:{s:8:\"phraseid\";s:3:\"210\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Sort Search Results by\";s:12:\"phrase_value\";s:22:\"Sort Search Results by\";s:7:\"package\";s:6:\"wpforo\";}i:210;a:5:{s:8:\"phraseid\";s:3:\"211\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Specify avatar by URL\";s:12:\"phrase_value\";s:21:\"Specify avatar by URL\";s:7:\"package\";s:6:\"wpforo\";}i:211;a:5:{s:8:\"phraseid\";s:3:\"212\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Subforums\";s:12:\"phrase_value\";s:9:\"Subforums\";s:7:\"package\";s:6:\"wpforo\";}i:212;a:5:{s:8:\"phraseid\";s:3:\"213\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Subscribe for new replies\";s:12:\"phrase_value\";s:25:\"Subscribe for new replies\";s:7:\"package\";s:6:\"wpforo\";}i:213;a:5:{s:8:\"phraseid\";s:3:\"214\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Subscribe for new topics\";s:12:\"phrase_value\";s:24:\"Subscribe for new topics\";s:7:\"package\";s:6:\"wpforo\";}i:214;a:5:{s:8:\"phraseid\";s:3:\"215\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Subscribe options successfully updated\";s:12:\"phrase_value\";s:38:\"Subscribe options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:215;a:5:{s:8:\"phraseid\";s:3:\"216\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:70:\"Subscribe options successfully updated, but previous value not changed\";s:12:\"phrase_value\";s:70:\"Subscribe options successfully updated, but previous value not changed\";s:7:\"package\";s:6:\"wpforo\";}i:216;a:5:{s:8:\"phraseid\";s:3:\"217\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Subscriptions\";s:12:\"phrase_value\";s:13:\"Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:217;a:5:{s:8:\"phraseid\";s:3:\"218\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Success!\";s:12:\"phrase_value\";s:8:\"Success!\";s:7:\"package\";s:6:\"wpforo\";}i:218;a:5:{s:8:\"phraseid\";s:3:\"219\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:100:\"Success! Thank you. Please check your email and click confirmation link below to complete this step.\";s:12:\"phrase_value\";s:100:\"Success! Thank you. Please check your email and click confirmation link below to complete this step.\";s:7:\"package\";s:6:\"wpforo\";}i:219;a:5:{s:8:\"phraseid\";s:3:\"220\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Successfully updated\";s:12:\"phrase_value\";s:20:\"Successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:220;a:5:{s:8:\"phraseid\";s:3:\"221\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Successfully voted\";s:12:\"phrase_value\";s:18:\"Successfully voted\";s:7:\"package\";s:6:\"wpforo\";}i:221;a:5:{s:8:\"phraseid\";s:3:\"222\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:89:\"The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form\";s:12:\"phrase_value\";s:89:\"The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form\";s:7:\"package\";s:6:\"wpforo\";}i:222;a:5:{s:8:\"phraseid\";s:3:\"223\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:70:\"The uploaded file exceeds the upload_max_filesize directive in php.ini\";s:12:\"phrase_value\";s:70:\"The uploaded file exceeds the upload_max_filesize directive in php.ini\";s:7:\"package\";s:6:\"wpforo\";}i:223;a:5:{s:8:\"phraseid\";s:3:\"224\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:33:\"The uploaded file size is too big\";s:12:\"phrase_value\";s:33:\"The uploaded file size is too big\";s:7:\"package\";s:6:\"wpforo\";}i:224;a:5:{s:8:\"phraseid\";s:3:\"225\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:45:\"The uploaded file was only partially uploaded\";s:12:\"phrase_value\";s:45:\"The uploaded file was only partially uploaded\";s:7:\"package\";s:6:\"wpforo\";}i:225;a:5:{s:8:\"phraseid\";s:3:\"226\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Theme options successfully updated\";s:12:\"phrase_value\";s:34:\"Theme options successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:226;a:5:{s:8:\"phraseid\";s:3:\"227\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:64:\"This email address is already registered. Please insert another.\";s:12:\"phrase_value\";s:64:\"This email address is already registered. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:227;a:5:{s:8:\"phraseid\";s:3:\"228\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"This post successfully deleted\";s:12:\"phrase_value\";s:30:\"This post successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:228;a:5:{s:8:\"phraseid\";s:3:\"229\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"This post successfully edited\";s:12:\"phrase_value\";s:29:\"This post successfully edited\";s:7:\"package\";s:6:\"wpforo\";}i:229;a:5:{s:8:\"phraseid\";s:3:\"230\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"This topic successfully deleted\";s:12:\"phrase_value\";s:31:\"This topic successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:230;a:5:{s:8:\"phraseid\";s:3:\"231\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Timezone\";s:12:\"phrase_value\";s:8:\"Timezone\";s:7:\"package\";s:6:\"wpforo\";}i:231;a:5:{s:8:\"phraseid\";s:3:\"232\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Title\";s:12:\"phrase_value\";s:5:\"Title\";s:7:\"package\";s:6:\"wpforo\";}i:232;a:5:{s:8:\"phraseid\";s:3:\"233\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic Move Error\";s:12:\"phrase_value\";s:16:\"Topic Move Error\";s:7:\"package\";s:6:\"wpforo\";}i:233;a:5:{s:8:\"phraseid\";s:3:\"234\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Topic RSS Feed\";s:12:\"phrase_value\";s:14:\"Topic RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:234;a:5:{s:8:\"phraseid\";s:3:\"235\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic Title\";s:12:\"phrase_value\";s:11:\"Topic Title\";s:7:\"package\";s:6:\"wpforo\";}i:235;a:5:{s:8:\"phraseid\";s:3:\"236\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Topic add error\";s:12:\"phrase_value\";s:15:\"Topic add error\";s:7:\"package\";s:6:\"wpforo\";}i:236;a:5:{s:8:\"phraseid\";s:3:\"237\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Topic delete error\";s:12:\"phrase_value\";s:18:\"Topic delete error\";s:7:\"package\";s:6:\"wpforo\";}i:237;a:5:{s:8:\"phraseid\";s:3:\"238\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic edit error\";s:12:\"phrase_value\";s:16:\"Topic edit error\";s:7:\"package\";s:6:\"wpforo\";}i:238;a:5:{s:8:\"phraseid\";s:3:\"239\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Topic not found.\";s:12:\"phrase_value\";s:16:\"Topic not found.\";s:7:\"package\";s:6:\"wpforo\";}i:239;a:5:{s:8:\"phraseid\";s:3:\"240\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Topic successfully moved\";s:12:\"phrase_value\";s:24:\"Topic successfully moved\";s:7:\"package\";s:6:\"wpforo\";}i:240;a:5:{s:8:\"phraseid\";s:3:\"241\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Topic successfully updated\";s:12:\"phrase_value\";s:26:\"Topic successfully updated\";s:7:\"package\";s:6:\"wpforo\";}i:241;a:5:{s:8:\"phraseid\";s:3:\"242\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Topics\";s:12:\"phrase_value\";s:6:\"Topics\";s:7:\"package\";s:6:\"wpforo\";}i:242;a:5:{s:8:\"phraseid\";s:3:\"243\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Topics delete error\";s:12:\"phrase_value\";s:19:\"Topics delete error\";s:7:\"package\";s:6:\"wpforo\";}i:243;a:5:{s:8:\"phraseid\";s:3:\"244\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Twitter\";s:12:\"phrase_value\";s:7:\"Twitter\";s:7:\"package\";s:6:\"wpforo\";}i:244;a:5:{s:8:\"phraseid\";s:3:\"245\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Unknown upload error\";s:12:\"phrase_value\";s:20:\"Unknown upload error\";s:7:\"package\";s:6:\"wpforo\";}i:245;a:5:{s:8:\"phraseid\";s:3:\"246\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Unsubscribe\";s:12:\"phrase_value\";s:11:\"Unsubscribe\";s:7:\"package\";s:6:\"wpforo\";}i:246;a:5:{s:8:\"phraseid\";s:3:\"247\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Upload an avatar\";s:12:\"phrase_value\";s:16:\"Upload an avatar\";s:7:\"package\";s:6:\"wpforo\";}i:247;a:5:{s:8:\"phraseid\";s:3:\"248\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:104:\"Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.\";s:12:\"phrase_value\";s:104:\"Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.\";s:7:\"package\";s:6:\"wpforo\";}i:248;a:5:{s:8:\"phraseid\";s:3:\"249\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"User\";s:12:\"phrase_value\";s:4:\"User\";s:7:\"package\";s:6:\"wpforo\";}i:249;a:5:{s:8:\"phraseid\";s:3:\"250\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"User Group\";s:12:\"phrase_value\";s:10:\"User Group\";s:7:\"package\";s:6:\"wpforo\";}i:250;a:5:{s:8:\"phraseid\";s:3:\"251\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"User delete error\";s:12:\"phrase_value\";s:17:\"User delete error\";s:7:\"package\";s:6:\"wpforo\";}i:251;a:5:{s:8:\"phraseid\";s:3:\"252\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"User group add error\";s:12:\"phrase_value\";s:20:\"User group add error\";s:7:\"package\";s:6:\"wpforo\";}i:252;a:5:{s:8:\"phraseid\";s:3:\"253\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"User group edit error\";s:12:\"phrase_value\";s:21:\"User group edit error\";s:7:\"package\";s:6:\"wpforo\";}i:253;a:5:{s:8:\"phraseid\";s:3:\"254\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User group successfully added\";s:12:\"phrase_value\";s:29:\"User group successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:254;a:5:{s:8:\"phraseid\";s:3:\"255\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"User group successfully edited\";s:12:\"phrase_value\";s:30:\"User group successfully edited\";s:7:\"package\";s:6:\"wpforo\";}i:255;a:5:{s:8:\"phraseid\";s:3:\"256\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"User successfully deleted from wpforo\";s:12:\"phrase_value\";s:37:\"User successfully deleted from wpforo\";s:7:\"package\";s:6:\"wpforo\";}i:256;a:5:{s:8:\"phraseid\";s:3:\"257\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Usergroup has been successfully deleted.\";s:12:\"phrase_value\";s:40:\"Usergroup has been successfully deleted.\";s:7:\"package\";s:6:\"wpforo\";}i:257;a:5:{s:8:\"phraseid\";s:3:\"258\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:115:\"Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\'ve chosen\";s:12:\"phrase_value\";s:115:\"Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\'ve chosen\";s:7:\"package\";s:6:\"wpforo\";}i:258;a:5:{s:8:\"phraseid\";s:3:\"259\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Username\";s:12:\"phrase_value\";s:8:\"Username\";s:7:\"package\";s:6:\"wpforo\";}i:259;a:5:{s:8:\"phraseid\";s:3:\"260\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"Username exists. Please insert another.\";s:12:\"phrase_value\";s:39:\"Username exists. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:260;a:5:{s:8:\"phraseid\";s:3:\"261\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Username is missed.\";s:12:\"phrase_value\";s:19:\"Username is missed.\";s:7:\"package\";s:6:\"wpforo\";}i:261;a:5:{s:8:\"phraseid\";s:3:\"262\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"Username length must be between 3 characters and 15 characters.\";s:12:\"phrase_value\";s:63:\"Username length must be between 3 characters and 15 characters.\";s:7:\"package\";s:6:\"wpforo\";}i:262;a:5:{s:8:\"phraseid\";s:3:\"263\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"View entire post\";s:12:\"phrase_value\";s:16:\"View entire post\";s:7:\"package\";s:6:\"wpforo\";}i:263;a:5:{s:8:\"phraseid\";s:3:\"264\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"View the latest post\";s:12:\"phrase_value\";s:20:\"View the latest post\";s:7:\"package\";s:6:\"wpforo\";}i:264;a:5:{s:8:\"phraseid\";s:3:\"265\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Views\";s:12:\"phrase_value\";s:5:\"Views\";s:7:\"package\";s:6:\"wpforo\";}i:265;a:5:{s:8:\"phraseid\";s:3:\"266\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Votes\";s:12:\"phrase_value\";s:5:\"Votes\";s:7:\"package\";s:6:\"wpforo\";}i:266;a:5:{s:8:\"phraseid\";s:3:\"267\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Website\";s:12:\"phrase_value\";s:7:\"Website\";s:7:\"package\";s:6:\"wpforo\";}i:267;a:5:{s:8:\"phraseid\";s:3:\"268\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Welcome to our Community!\";s:12:\"phrase_value\";s:25:\"Welcome to our Community!\";s:7:\"package\";s:6:\"wpforo\";}i:268;a:5:{s:8:\"phraseid\";s:3:\"269\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Wordpress avatar system\";s:12:\"phrase_value\";s:23:\"Wordpress avatar system\";s:7:\"package\";s:6:\"wpforo\";}i:269;a:5:{s:8:\"phraseid\";s:3:\"270\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Working\";s:12:\"phrase_value\";s:7:\"Working\";s:7:\"package\";s:6:\"wpforo\";}i:270;a:5:{s:8:\"phraseid\";s:3:\"271\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Write message\";s:12:\"phrase_value\";s:13:\"Write message\";s:7:\"package\";s:6:\"wpforo\";}i:271;a:5:{s:8:\"phraseid\";s:3:\"272\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Wrong post data\";s:12:\"phrase_value\";s:15:\"Wrong post data\";s:7:\"package\";s:6:\"wpforo\";}i:272;a:5:{s:8:\"phraseid\";s:3:\"273\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Yahoo\";s:12:\"phrase_value\";s:5:\"Yahoo\";s:7:\"package\";s:6:\"wpforo\";}i:273;a:5:{s:8:\"phraseid\";s:3:\"274\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"You\";s:12:\"phrase_value\";s:3:\"You\";s:7:\"package\";s:6:\"wpforo\";}i:274;a:5:{s:8:\"phraseid\";s:3:\"275\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"You are already voted this post\";s:12:\"phrase_value\";s:31:\"You are already voted this post\";s:7:\"package\";s:6:\"wpforo\";}i:275;a:5:{s:8:\"phraseid\";s:3:\"276\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"You can go to %s page or Search here\";s:12:\"phrase_value\";s:36:\"You can go to %s page or Search here\";s:7:\"package\";s:6:\"wpforo\";}i:276;a:5:{s:8:\"phraseid\";s:3:\"277\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"You have been successfully subscribed\";s:12:\"phrase_value\";s:37:\"You have been successfully subscribed\";s:7:\"package\";s:6:\"wpforo\";}i:277;a:5:{s:8:\"phraseid\";s:3:\"278\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You have been successfully unsubscribed\";s:12:\"phrase_value\";s:39:\"You have been successfully unsubscribed\";s:7:\"package\";s:6:\"wpforo\";}i:278;a:5:{s:8:\"phraseid\";s:3:\"279\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"You have no permission to edit this topic\";s:12:\"phrase_value\";s:41:\"You have no permission to edit this topic\";s:7:\"package\";s:6:\"wpforo\";}i:279;a:5:{s:8:\"phraseid\";s:3:\"280\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"You don\'t have permission to create post in this forum\";s:12:\"phrase_value\";s:54:\"You don\'t have permission to create post in this forum\";s:7:\"package\";s:6:\"wpforo\";}i:280;a:5:{s:8:\"phraseid\";s:3:\"281\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"You don\'t have permission to create topic into this forum\";s:12:\"phrase_value\";s:57:\"You don\'t have permission to create topic into this forum\";s:7:\"package\";s:6:\"wpforo\";}i:281;a:5:{s:8:\"phraseid\";s:3:\"282\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:56:\"You don\'t have permission to delete post from this forum\";s:12:\"phrase_value\";s:56:\"You don\'t have permission to delete post from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:282;a:5:{s:8:\"phraseid\";s:3:\"283\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"You don\'t have permission to delete topic from this forum\";s:12:\"phrase_value\";s:57:\"You don\'t have permission to delete topic from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:283;a:5:{s:8:\"phraseid\";s:3:\"284\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"You don\'t have permission to edit post from this forum\";s:12:\"phrase_value\";s:54:\"You don\'t have permission to edit post from this forum\";s:7:\"package\";s:6:\"wpforo\";}i:284;a:5:{s:8:\"phraseid\";s:3:\"285\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"You successfully replied\";s:12:\"phrase_value\";s:24:\"You successfully replied\";s:7:\"package\";s:6:\"wpforo\";}i:285;a:5:{s:8:\"phraseid\";s:3:\"286\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Your Answer\";s:12:\"phrase_value\";s:11:\"Your Answer\";s:7:\"package\";s:6:\"wpforo\";}i:286;a:5:{s:8:\"phraseid\";s:3:\"287\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Your forum successfully added\";s:12:\"phrase_value\";s:29:\"Your forum successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:287;a:5:{s:8:\"phraseid\";s:3:\"288\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Your forum successfully deleted\";s:12:\"phrase_value\";s:31:\"Your forum successfully deleted\";s:7:\"package\";s:6:\"wpforo\";}i:288;a:5:{s:8:\"phraseid\";s:3:\"289\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Your profile data have been successfully updated.\";s:12:\"phrase_value\";s:49:\"Your profile data have been successfully updated.\";s:7:\"package\";s:6:\"wpforo\";}i:289;a:5:{s:8:\"phraseid\";s:3:\"290\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"Your subscription for this item could not be confirmed\";s:12:\"phrase_value\";s:54:\"Your subscription for this item could not be confirmed\";s:7:\"package\";s:6:\"wpforo\";}i:290;a:5:{s:8:\"phraseid\";s:3:\"291\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Your topic successfully added\";s:12:\"phrase_value\";s:29:\"Your topic successfully added\";s:7:\"package\";s:6:\"wpforo\";}i:291;a:5:{s:8:\"phraseid\";s:3:\"292\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"add\";s:12:\"phrase_value\";s:3:\"add\";s:7:\"package\";s:6:\"wpforo\";}i:292;a:5:{s:8:\"phraseid\";s:3:\"293\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"add_new\";s:12:\"phrase_value\";s:7:\"add_new\";s:7:\"package\";s:6:\"wpforo\";}i:293;a:5:{s:8:\"phraseid\";s:3:\"294\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"%s ago\";s:12:\"phrase_value\";s:6:\"%s ago\";s:7:\"package\";s:6:\"wpforo\";}i:294;a:5:{s:8:\"phraseid\";s:3:\"295\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:2:\"by\";s:12:\"phrase_value\";s:2:\"by\";s:7:\"package\";s:6:\"wpforo\";}i:295;a:5:{s:8:\"phraseid\";s:3:\"296\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"by %s\";s:12:\"phrase_value\";s:5:\"by %s\";s:7:\"package\";s:6:\"wpforo\";}i:296;a:5:{s:8:\"phraseid\";s:3:\"297\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"confirm password\";s:12:\"phrase_value\";s:16:\"confirm password\";s:7:\"package\";s:6:\"wpforo\";}i:297;a:5:{s:8:\"phraseid\";s:3:\"298\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"edit profile\";s:12:\"phrase_value\";s:12:\"edit profile\";s:7:\"package\";s:6:\"wpforo\";}i:298;a:5:{s:8:\"phraseid\";s:3:\"299\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"edit user\";s:12:\"phrase_value\";s:9:\"edit user\";s:7:\"package\";s:6:\"wpforo\";}i:299;a:5:{s:8:\"phraseid\";s:3:\"300\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"matches\";s:12:\"phrase_value\";s:7:\"matches\";s:7:\"package\";s:6:\"wpforo\";}i:300;a:5:{s:8:\"phraseid\";s:3:\"301\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"new password\";s:12:\"phrase_value\";s:12:\"new password\";s:7:\"package\";s:6:\"wpforo\";}i:301;a:5:{s:8:\"phraseid\";s:3:\"302\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"new password again\";s:12:\"phrase_value\";s:18:\"new password again\";s:7:\"package\";s:6:\"wpforo\";}i:302;a:5:{s:8:\"phraseid\";s:3:\"303\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"next\";s:12:\"phrase_value\";s:4:\"next\";s:7:\"package\";s:6:\"wpforo\";}i:303;a:5:{s:8:\"phraseid\";s:3:\"304\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"old password\";s:12:\"phrase_value\";s:12:\"old password\";s:7:\"package\";s:6:\"wpforo\";}i:304;a:5:{s:8:\"phraseid\";s:3:\"305\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"phrase_key\";s:12:\"phrase_value\";s:10:\"phrase_key\";s:7:\"package\";s:6:\"wpforo\";}i:305;a:5:{s:8:\"phraseid\";s:3:\"306\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"phrase_value\";s:12:\"phrase_value\";s:12:\"phrase_value\";s:7:\"package\";s:6:\"wpforo\";}i:306;a:5:{s:8:\"phraseid\";s:3:\"307\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"prev\";s:12:\"phrase_value\";s:4:\"prev\";s:7:\"package\";s:6:\"wpforo\";}i:307;a:5:{s:8:\"phraseid\";s:3:\"308\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"update\";s:12:\"phrase_value\";s:6:\"update\";s:7:\"package\";s:6:\"wpforo\";}i:308;a:5:{s:8:\"phraseid\";s:3:\"309\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"view\";s:12:\"phrase_value\";s:4:\"view\";s:7:\"package\";s:6:\"wpforo\";}i:309;a:5:{s:8:\"phraseid\";s:3:\"310\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"view all posts\";s:12:\"phrase_value\";s:14:\"view all posts\";s:7:\"package\";s:6:\"wpforo\";}i:310;a:5:{s:8:\"phraseid\";s:3:\"311\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"view all questions\";s:12:\"phrase_value\";s:18:\"view all questions\";s:7:\"package\";s:6:\"wpforo\";}i:311;a:5:{s:8:\"phraseid\";s:3:\"312\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"view all topics\";s:12:\"phrase_value\";s:15:\"view all topics\";s:7:\"package\";s:6:\"wpforo\";}i:312;a:5:{s:8:\"phraseid\";s:3:\"313\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"wpForo Navigation\";s:12:\"phrase_value\";s:17:\"wpForo Navigation\";s:7:\"package\";s:6:\"wpforo\";}i:313;a:5:{s:8:\"phraseid\";s:3:\"314\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}B\";s:12:\"phrase_value\";s:9:\"{number}B\";s:7:\"package\";s:6:\"wpforo\";}i:314;a:5:{s:8:\"phraseid\";s:3:\"315\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}K\";s:12:\"phrase_value\";s:9:\"{number}K\";s:7:\"package\";s:6:\"wpforo\";}i:315;a:5:{s:8:\"phraseid\";s:3:\"316\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}M\";s:12:\"phrase_value\";s:9:\"{number}M\";s:7:\"package\";s:6:\"wpforo\";}i:316;a:5:{s:8:\"phraseid\";s:3:\"317\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"{number}T\";s:12:\"phrase_value\";s:9:\"{number}T\";s:7:\"package\";s:6:\"wpforo\";}i:317;a:5:{s:8:\"phraseid\";s:3:\"318\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"like\";s:12:\"phrase_value\";s:4:\"Like\";s:7:\"package\";s:6:\"wpforo\";}i:318;a:5:{s:8:\"phraseid\";s:3:\"319\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"unlike\";s:12:\"phrase_value\";s:6:\"Unlike\";s:7:\"package\";s:6:\"wpforo\";}i:319;a:5:{s:8:\"phraseid\";s:3:\"320\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"sticky\";s:12:\"phrase_value\";s:6:\"Sticky\";s:7:\"package\";s:6:\"wpforo\";}i:320;a:5:{s:8:\"phraseid\";s:3:\"321\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"unsticky\";s:12:\"phrase_value\";s:8:\"Unsticky\";s:7:\"package\";s:6:\"wpforo\";}i:321;a:5:{s:8:\"phraseid\";s:3:\"322\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"close\";s:12:\"phrase_value\";s:5:\"Close\";s:7:\"package\";s:6:\"wpforo\";}i:322;a:5:{s:8:\"phraseid\";s:3:\"323\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"open\";s:12:\"phrase_value\";s:4:\"Open\";s:7:\"package\";s:6:\"wpforo\";}i:323;a:5:{s:8:\"phraseid\";s:3:\"324\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic Icons\";s:12:\"phrase_value\";s:11:\"Topic Icons\";s:7:\"package\";s:6:\"wpforo\";}i:324;a:5:{s:8:\"phraseid\";s:3:\"325\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Replied\";s:12:\"phrase_value\";s:7:\"Replied\";s:7:\"package\";s:6:\"wpforo\";}i:325;a:5:{s:8:\"phraseid\";s:3:\"326\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Active\";s:12:\"phrase_value\";s:6:\"Active\";s:7:\"package\";s:6:\"wpforo\";}i:326;a:5:{s:8:\"phraseid\";s:3:\"327\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"Hot\";s:12:\"phrase_value\";s:3:\"Hot\";s:7:\"package\";s:6:\"wpforo\";}i:327;a:5:{s:8:\"phraseid\";s:3:\"328\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Solved\";s:12:\"phrase_value\";s:6:\"Solved\";s:7:\"package\";s:6:\"wpforo\";}i:328;a:5:{s:8:\"phraseid\";s:3:\"329\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Unsolved\";s:12:\"phrase_value\";s:8:\"Unsolved\";s:7:\"package\";s:6:\"wpforo\";}i:329;a:5:{s:8:\"phraseid\";s:3:\"330\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Closed\";s:12:\"phrase_value\";s:6:\"Closed\";s:7:\"package\";s:6:\"wpforo\";}i:330;a:5:{s:8:\"phraseid\";s:3:\"331\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Old password is wrong\";s:12:\"phrase_value\";s:21:\"Old password is wrong\";s:7:\"package\";s:6:\"wpforo\";}i:331;a:5:{s:8:\"phraseid\";s:3:\"332\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"New Passwords do not match\";s:12:\"phrase_value\";s:26:\"New Passwords do not match\";s:7:\"package\";s:6:\"wpforo\";}i:332;a:5:{s:8:\"phraseid\";s:3:\"333\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Forum Members List\";s:12:\"phrase_value\";s:18:\"Forum Members List\";s:7:\"package\";s:6:\"wpforo\";}i:333;a:5:{s:8:\"phraseid\";s:3:\"334\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"are you sure you want to delete?\";s:12:\"phrase_value\";s:32:\"are you sure you want to delete?\";s:7:\"package\";s:6:\"wpforo\";}i:334;a:5:{s:8:\"phraseid\";s:3:\"335\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Admin\";s:12:\"phrase_value\";s:5:\"Admin\";s:7:\"package\";s:6:\"wpforo\";}i:335;a:5:{s:8:\"phraseid\";s:3:\"336\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Moderator\";s:12:\"phrase_value\";s:9:\"Moderator\";s:7:\"package\";s:6:\"wpforo\";}i:336;a:5:{s:8:\"phraseid\";s:3:\"337\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Registered\";s:12:\"phrase_value\";s:10:\"Registered\";s:7:\"package\";s:6:\"wpforo\";}i:337;a:5:{s:8:\"phraseid\";s:3:\"338\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Customer\";s:12:\"phrase_value\";s:8:\"Customer\";s:7:\"package\";s:6:\"wpforo\";}i:338;a:5:{s:8:\"phraseid\";s:3:\"339\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Profile\";s:12:\"phrase_value\";s:7:\"Profile\";s:7:\"package\";s:6:\"wpforo\";}i:339;a:5:{s:8:\"phraseid\";s:3:\"340\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:60:\"Incorrect file format. Allowed formats: jpeg, jpg, png, gif.\";s:12:\"phrase_value\";s:60:\"Incorrect file format. Allowed formats: jpeg, jpg, png, gif.\";s:7:\"package\";s:6:\"wpforo\";}i:340;a:5:{s:8:\"phraseid\";s:3:\"341\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User registration is disabled\";s:12:\"phrase_value\";s:29:\"User registration is disabled\";s:7:\"package\";s:6:\"wpforo\";}i:341;a:5:{s:8:\"phraseid\";s:3:\"342\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Attachment removed\";s:12:\"phrase_value\";s:18:\"Attachment removed\";s:7:\"package\";s:6:\"wpforo\";}i:342;a:5:{s:8:\"phraseid\";s:3:\"343\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum Posts\";s:12:\"phrase_value\";s:11:\"Forum Posts\";s:7:\"package\";s:6:\"wpforo\";}i:343;a:5:{s:8:\"phraseid\";s:3:\"344\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Blog Posts\";s:12:\"phrase_value\";s:10:\"Blog Posts\";s:7:\"package\";s:6:\"wpforo\";}i:344;a:5:{s:8:\"phraseid\";s:3:\"345\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Blog Comments\";s:12:\"phrase_value\";s:13:\"Blog Comments\";s:7:\"package\";s:6:\"wpforo\";}i:345;a:5:{s:8:\"phraseid\";s:3:\"346\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Welcome back %s!\";s:12:\"phrase_value\";s:16:\"Welcome back %s!\";s:7:\"package\";s:6:\"wpforo\";}i:346;a:5:{s:8:\"phraseid\";s:3:\"347\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Member Profile\";s:12:\"phrase_value\";s:14:\"Member Profile\";s:7:\"package\";s:6:\"wpforo\";}i:347;a:5:{s:8:\"phraseid\";s:3:\"348\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Member\";s:12:\"phrase_value\";s:6:\"Member\";s:7:\"package\";s:6:\"wpforo\";}i:348;a:5:{s:8:\"phraseid\";s:3:\"349\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"private\";s:12:\"phrase_value\";s:7:\"Private\";s:7:\"package\";s:6:\"wpforo\";}i:349;a:5:{s:8:\"phraseid\";s:3:\"350\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"public\";s:12:\"phrase_value\";s:6:\"Public\";s:7:\"package\";s:6:\"wpforo\";}i:350;a:5:{s:8:\"phraseid\";s:3:\"351\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Private Topic\";s:12:\"phrase_value\";s:13:\"Private Topic\";s:7:\"package\";s:6:\"wpforo\";}i:351;a:5:{s:8:\"phraseid\";s:3:\"352\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"Only Admins and Moderators can see your private topics.\";s:12:\"phrase_value\";s:55:\"Only Admins and Moderators can see your private topics.\";s:7:\"package\";s:6:\"wpforo\";}i:352;a:5:{s:8:\"phraseid\";s:3:\"353\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Forum ID is not detected\";s:12:\"phrase_value\";s:24:\"Forum ID is not detected\";s:7:\"package\";s:6:\"wpforo\";}i:353;a:5:{s:8:\"phraseid\";s:3:\"354\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You are not permitted to subscribe here\";s:12:\"phrase_value\";s:39:\"You are not permitted to subscribe here\";s:7:\"package\";s:6:\"wpforo\";}i:354;a:5:{s:8:\"phraseid\";s:3:\"355\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Subscribe to this topic\";s:12:\"phrase_value\";s:23:\"Subscribe to this topic\";s:7:\"package\";s:6:\"wpforo\";}i:355;a:5:{s:8:\"phraseid\";s:3:\"356\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Awaiting moderation\";s:12:\"phrase_value\";s:19:\"Awaiting moderation\";s:7:\"package\";s:6:\"wpforo\";}i:356;a:5:{s:8:\"phraseid\";s:3:\"357\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Topic first post not found.\";s:12:\"phrase_value\";s:27:\"Topic first post not found.\";s:7:\"package\";s:6:\"wpforo\";}i:357;a:5:{s:8:\"phraseid\";s:3:\"358\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"Topic first post data not found.\";s:12:\"phrase_value\";s:32:\"Topic first post data not found.\";s:7:\"package\";s:6:\"wpforo\";}i:358;a:5:{s:8:\"phraseid\";s:3:\"359\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Done!\";s:12:\"phrase_value\";s:5:\"Done!\";s:7:\"package\";s:6:\"wpforo\";}i:359;a:5:{s:8:\"phraseid\";s:3:\"360\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"unapproved\";s:12:\"phrase_value\";s:10:\"unapproved\";s:7:\"package\";s:6:\"wpforo\";}i:360;a:5:{s:8:\"phraseid\";s:3:\"361\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"You are not allowed to attach this file type\";s:12:\"phrase_value\";s:44:\"You are not allowed to attach this file type\";s:7:\"package\";s:6:\"wpforo\";}i:361;a:5:{s:8:\"phraseid\";s:3:\"362\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Post is empty\";s:12:\"phrase_value\";s:13:\"Post is empty\";s:7:\"package\";s:6:\"wpforo\";}i:362;a:5:{s:8:\"phraseid\";s:3:\"363\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"removed link\";s:12:\"phrase_value\";s:12:\"removed link\";s:7:\"package\";s:6:\"wpforo\";}i:363;a:5:{s:8:\"phraseid\";s:3:\"364\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Submit\";s:12:\"phrase_value\";s:6:\"Submit\";s:7:\"package\";s:6:\"wpforo\";}i:364;a:5:{s:8:\"phraseid\";s:3:\"365\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Usergroup\";s:12:\"phrase_value\";s:9:\"Usergroup\";s:7:\"package\";s:6:\"wpforo\";}i:365;a:5:{s:8:\"phraseid\";s:3:\"366\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Rating Title\";s:12:\"phrase_value\";s:12:\"Rating Title\";s:7:\"package\";s:6:\"wpforo\";}i:366;a:5:{s:8:\"phraseid\";s:3:\"367\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"User Title\";s:12:\"phrase_value\";s:10:\"User Title\";s:7:\"package\";s:6:\"wpforo\";}i:367;a:5:{s:8:\"phraseid\";s:3:\"368\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"approved\";s:12:\"phrase_value\";s:8:\"Approved\";s:7:\"package\";s:6:\"wpforo\";}i:368;a:5:{s:8:\"phraseid\";s:3:\"369\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"approve\";s:12:\"phrase_value\";s:7:\"Approve\";s:7:\"package\";s:6:\"wpforo\";}i:369;a:5:{s:8:\"phraseid\";s:3:\"370\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"unapprove\";s:12:\"phrase_value\";s:9:\"unapprove\";s:7:\"package\";s:6:\"wpforo\";}i:370;a:5:{s:8:\"phraseid\";s:3:\"371\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"--- Choose ---\";s:12:\"phrase_value\";s:14:\"--- Choose ---\";s:7:\"package\";s:6:\"wpforo\";}i:371;a:5:{s:8:\"phraseid\";s:3:\"372\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"New\";s:12:\"phrase_value\";s:3:\"New\";s:7:\"package\";s:6:\"wpforo\";}i:372;a:5:{s:8:\"phraseid\";s:3:\"373\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Required field\";s:12:\"phrase_value\";s:14:\"Required field\";s:7:\"package\";s:6:\"wpforo\";}i:373;a:5:{s:8:\"phraseid\";s:3:\"374\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Add Reply\";s:12:\"phrase_value\";s:9:\"Add Reply\";s:7:\"package\";s:6:\"wpforo\";}i:374;a:5:{s:8:\"phraseid\";s:3:\"375\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Forums RSS Feed\";s:12:\"phrase_value\";s:15:\"Forums RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:375;a:5:{s:8:\"phraseid\";s:3:\"376\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Topics RSS Feed\";s:12:\"phrase_value\";s:15:\"Topics RSS Feed\";s:7:\"package\";s:6:\"wpforo\";}i:376;a:5:{s:8:\"phraseid\";s:3:\"377\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Find a member\";s:12:\"phrase_value\";s:13:\"Find a member\";s:7:\"package\";s:6:\"wpforo\";}i:377;a:5:{s:8:\"phraseid\";s:3:\"378\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Display Name or Nicename\";s:12:\"phrase_value\";s:24:\"Display Name or Nicename\";s:7:\"package\";s:6:\"wpforo\";}i:378;a:5:{s:8:\"phraseid\";s:3:\"379\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Reset Search\";s:12:\"phrase_value\";s:12:\"Reset Search\";s:7:\"package\";s:6:\"wpforo\";}i:379;a:5:{s:8:\"phraseid\";s:3:\"380\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Reset Result\";s:12:\"phrase_value\";s:12:\"Reset Result\";s:7:\"package\";s:6:\"wpforo\";}i:380;a:5:{s:8:\"phraseid\";s:3:\"381\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Recently Added\";s:12:\"phrase_value\";s:12:\"Recent Posts\";s:7:\"package\";s:6:\"wpforo\";}i:381;a:5:{s:8:\"phraseid\";s:3:\"382\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Recent Posts\";s:12:\"phrase_value\";s:12:\"Recent Posts\";s:7:\"package\";s:6:\"wpforo\";}i:382;a:5:{s:8:\"phraseid\";s:3:\"383\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"No posts were found here\";s:12:\"phrase_value\";s:24:\"No posts were found here\";s:7:\"package\";s:6:\"wpforo\";}i:383;a:5:{s:8:\"phraseid\";s:3:\"384\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"forum link\";s:12:\"phrase_value\";s:10:\"forum link\";s:7:\"package\";s:6:\"wpforo\";}i:384;a:5:{s:8:\"phraseid\";s:3:\"385\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"in forum\";s:12:\"phrase_value\";s:8:\"in forum\";s:7:\"package\";s:6:\"wpforo\";}i:385;a:5:{s:8:\"phraseid\";s:3:\"386\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:91:\"After registration you will receive an email confirmation with a link to set a new password\";s:12:\"phrase_value\";s:91:\"After registration you will receive an email confirmation with a link to set a new password\";s:7:\"package\";s:6:\"wpforo\";}i:386;a:5:{s:8:\"phraseid\";s:3:\"387\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:228:\"You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.\";s:12:\"phrase_value\";s:228:\"You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.\";s:7:\"package\";s:6:\"wpforo\";}i:387;a:5:{s:8:\"phraseid\";s:3:\"388\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"View entire topic\";s:12:\"phrase_value\";s:17:\"View entire topic\";s:7:\"package\";s:6:\"wpforo\";}i:388;a:5:{s:8:\"phraseid\";s:3:\"389\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Author Name\";s:12:\"phrase_value\";s:11:\"Author Name\";s:7:\"package\";s:6:\"wpforo\";}i:389;a:5:{s:8:\"phraseid\";s:3:\"390\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Your name\";s:12:\"phrase_value\";s:9:\"Your name\";s:7:\"package\";s:6:\"wpforo\";}i:390;a:5:{s:8:\"phraseid\";s:3:\"391\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Author Email\";s:12:\"phrase_value\";s:12:\"Author Email\";s:7:\"package\";s:6:\"wpforo\";}i:391;a:5:{s:8:\"phraseid\";s:3:\"392\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Your email\";s:12:\"phrase_value\";s:10:\"Your email\";s:7:\"package\";s:6:\"wpforo\";}i:392;a:5:{s:8:\"phraseid\";s:3:\"393\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:53:\"Your topic successfully added and awaiting moderation\";s:12:\"phrase_value\";s:53:\"Your topic successfully added and awaiting moderation\";s:7:\"package\";s:6:\"wpforo\";}i:393;a:5:{s:8:\"phraseid\";s:3:\"394\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"You are not allowed to edit this post\";s:12:\"phrase_value\";s:37:\"You are not allowed to edit this post\";s:7:\"package\";s:6:\"wpforo\";}i:394;a:5:{s:8:\"phraseid\";s:3:\"395\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Google reCAPTCHA verification failed\";s:12:\"phrase_value\";s:36:\"Google reCAPTCHA verification failed\";s:7:\"package\";s:6:\"wpforo\";}i:395;a:5:{s:8:\"phraseid\";s:3:\"396\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"ERROR: Can\'t connect to Google reCAPTCHA API\";s:12:\"phrase_value\";s:44:\"ERROR: Can\'t connect to Google reCAPTCHA API\";s:7:\"package\";s:6:\"wpforo\";}i:396;a:5:{s:8:\"phraseid\";s:3:\"397\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Welcome!\";s:12:\"phrase_value\";s:8:\"Welcome!\";s:7:\"package\";s:6:\"wpforo\";}i:397;a:5:{s:8:\"phraseid\";s:3:\"398\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Join us today!\";s:12:\"phrase_value\";s:14:\"Join us today!\";s:7:\"package\";s:6:\"wpforo\";}i:398;a:5:{s:8:\"phraseid\";s:3:\"399\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:98:\"Enter your email address or username and we\'ll send you a link you can use to pick a new password.\";s:12:\"phrase_value\";s:98:\"Enter your email address or username and we\'ll send you a link you can use to pick a new password.\";s:7:\"package\";s:6:\"wpforo\";}i:399;a:5:{s:8:\"phraseid\";s:3:\"400\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"Please Insert Your Email or Username\";s:12:\"phrase_value\";s:36:\"Please Insert Your Email or Username\";s:7:\"package\";s:6:\"wpforo\";}i:400;a:5:{s:8:\"phraseid\";s:3:\"401\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Reset Password\";s:12:\"phrase_value\";s:14:\"Reset Password\";s:7:\"package\";s:6:\"wpforo\";}i:401;a:5:{s:8:\"phraseid\";s:3:\"402\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Forgot Your Password?\";s:12:\"phrase_value\";s:21:\"Forgot Your Password?\";s:7:\"package\";s:6:\"wpforo\";}i:402;a:5:{s:8:\"phraseid\";s:3:\"403\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"%s created a new topic %s\";s:12:\"phrase_value\";s:25:\"%s created a new topic %s\";s:7:\"package\";s:6:\"wpforo\";}i:403;a:5:{s:8:\"phraseid\";s:3:\"404\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"%s replied to the topic %s\";s:12:\"phrase_value\";s:26:\"%s replied to the topic %s\";s:7:\"package\";s:6:\"wpforo\";}i:404;a:5:{s:8:\"phraseid\";s:3:\"405\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"%s liked forum post %s\";s:12:\"phrase_value\";s:22:\"%s liked forum post %s\";s:7:\"package\";s:6:\"wpforo\";}i:405;a:5:{s:8:\"phraseid\";s:3:\"406\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Read more\";s:12:\"phrase_value\";s:9:\"Read more\";s:7:\"package\";s:6:\"wpforo\";}i:406;a:5:{s:8:\"phraseid\";s:3:\"407\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum topic\";s:12:\"phrase_value\";s:11:\"Forum topic\";s:7:\"package\";s:6:\"wpforo\";}i:407;a:5:{s:8:\"phraseid\";s:3:\"408\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Forum post\";s:12:\"phrase_value\";s:10:\"Forum post\";s:7:\"package\";s:6:\"wpforo\";}i:408;a:5:{s:8:\"phraseid\";s:3:\"409\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Forum post like\";s:12:\"phrase_value\";s:15:\"Forum post like\";s:7:\"package\";s:6:\"wpforo\";}i:409;a:5:{s:8:\"phraseid\";s:3:\"410\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Tools\";s:12:\"phrase_value\";s:5:\"Tools\";s:7:\"package\";s:6:\"wpforo\";}i:410;a:5:{s:8:\"phraseid\";s:3:\"411\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Target Topic URL\";s:12:\"phrase_value\";s:16:\"Target Topic URL\";s:7:\"package\";s:6:\"wpforo\";}i:411;a:5:{s:8:\"phraseid\";s:3:\"412\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Target Topic not found\";s:12:\"phrase_value\";s:22:\"Target Topic not found\";s:7:\"package\";s:6:\"wpforo\";}i:412;a:5:{s:8:\"phraseid\";s:3:\"413\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Merge Topics\";s:12:\"phrase_value\";s:12:\"Merge Topics\";s:7:\"package\";s:6:\"wpforo\";}i:413;a:5:{s:8:\"phraseid\";s:3:\"414\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Split Topic\";s:12:\"phrase_value\";s:11:\"Split Topic\";s:7:\"package\";s:6:\"wpforo\";}i:414;a:5:{s:8:\"phraseid\";s:3:\"415\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:87:\"Please copy the target topic URL from browser address bar and paste in the field below.\";s:12:\"phrase_value\";s:87:\"Please copy the target topic URL from browser address bar and paste in the field below.\";s:7:\"package\";s:6:\"wpforo\";}i:415;a:5:{s:8:\"phraseid\";s:3:\"416\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:238:\"All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.\";s:12:\"phrase_value\";s:238:\"All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.\";s:7:\"package\";s:6:\"wpforo\";}i:416;a:5:{s:8:\"phraseid\";s:3:\"417\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:86:\"Update post dates (current date) to allow append posts to the end of the target topic.\";s:12:\"phrase_value\";s:86:\"Update post dates (current date) to allow append posts to the end of the target topic.\";s:7:\"package\";s:6:\"wpforo\";}i:417;a:5:{s:8:\"phraseid\";s:3:\"418\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"Update post titles with target topic title.\";s:12:\"phrase_value\";s:43:\"Update post titles with target topic title.\";s:7:\"package\";s:6:\"wpforo\";}i:418;a:5:{s:8:\"phraseid\";s:3:\"419\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:82:\"Topics once merged cannot be unmerged. This topic URL will no longer be available.\";s:12:\"phrase_value\";s:82:\"Topics once merged cannot be unmerged. This topic URL will no longer be available.\";s:7:\"package\";s:6:\"wpforo\";}i:419;a:5:{s:8:\"phraseid\";s:3:\"420\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Create New Topic\";s:12:\"phrase_value\";s:16:\"Create New Topic\";s:7:\"package\";s:6:\"wpforo\";}i:420;a:5:{s:8:\"phraseid\";s:3:\"421\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:90:\"Create new topic with split posts. The first post of new topic becomes the earliest reply.\";s:12:\"phrase_value\";s:90:\"Create new topic with split posts. The first post of new topic becomes the earliest reply.\";s:7:\"package\";s:6:\"wpforo\";}i:421;a:5:{s:8:\"phraseid\";s:3:\"422\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"New Topic Title\";s:12:\"phrase_value\";s:15:\"New Topic Title\";s:7:\"package\";s:6:\"wpforo\";}i:422;a:5:{s:8:\"phraseid\";s:3:\"423\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"New Topic Forum\";s:12:\"phrase_value\";s:15:\"New Topic Forum\";s:7:\"package\";s:6:\"wpforo\";}i:423;a:5:{s:8:\"phraseid\";s:3:\"424\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Select Posts to Split\";s:12:\"phrase_value\";s:21:\"Select Posts to Split\";s:7:\"package\";s:6:\"wpforo\";}i:424;a:5:{s:8:\"phraseid\";s:3:\"425\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:91:\"Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.\";s:12:\"phrase_value\";s:91:\"Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.\";s:7:\"package\";s:6:\"wpforo\";}i:425;a:5:{s:8:\"phraseid\";s:3:\"426\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Merge\";s:12:\"phrase_value\";s:5:\"Merge\";s:7:\"package\";s:6:\"wpforo\";}i:426;a:5:{s:8:\"phraseid\";s:3:\"427\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Split\";s:12:\"phrase_value\";s:5:\"Split\";s:7:\"package\";s:6:\"wpforo\";}i:427;a:5:{s:8:\"phraseid\";s:3:\"428\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Move Reply\";s:12:\"phrase_value\";s:10:\"Move Reply\";s:7:\"package\";s:6:\"wpforo\";}i:428;a:5:{s:8:\"phraseid\";s:3:\"429\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:124:\"This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.\";s:12:\"phrase_value\";s:124:\"This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.\";s:7:\"package\";s:6:\"wpforo\";}i:429;a:5:{s:8:\"phraseid\";s:3:\"430\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"The time to edit this topic is expired\";s:12:\"phrase_value\";s:38:\"The time to edit this topic is expired\";s:7:\"package\";s:6:\"wpforo\";}i:430;a:5:{s:8:\"phraseid\";s:3:\"431\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"The time to delete this topic is expired.\";s:12:\"phrase_value\";s:93:\"The time to delete this topic is expired. Please contact to forum administrator to delete it.\";s:7:\"package\";s:6:\"wpforo\";}i:431;a:5:{s:8:\"phraseid\";s:3:\"432\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"The time to edit this post is expired.\";s:12:\"phrase_value\";s:38:\"The time to edit this post is expired.\";s:7:\"package\";s:6:\"wpforo\";}i:432;a:5:{s:8:\"phraseid\";s:3:\"433\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"The time to delete this post is expired.\";s:12:\"phrase_value\";s:40:\"The time to delete this post is expired.\";s:7:\"package\";s:6:\"wpforo\";}i:433;a:5:{s:8:\"phraseid\";s:3:\"434\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Please contact to forum administrator to delete it.\";s:12:\"phrase_value\";s:51:\"Please contact to forum administrator to delete it.\";s:7:\"package\";s:6:\"wpforo\";}i:434;a:5:{s:8:\"phraseid\";s:3:\"435\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Please contact to forum administrator to edit it.\";s:12:\"phrase_value\";s:49:\"Please contact to forum administrator to edit it.\";s:7:\"package\";s:6:\"wpforo\";}i:435;a:5:{s:8:\"phraseid\";s:3:\"436\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Read more about Facebook public_profile properties.\";s:12:\"phrase_value\";s:51:\"Read more about Facebook public_profile properties.\";s:7:\"package\";s:6:\"wpforo\";}i:436;a:5:{s:8:\"phraseid\";s:3:\"437\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"forum privacy policy\";s:12:\"phrase_value\";s:20:\"forum privacy policy\";s:7:\"package\";s:6:\"wpforo\";}i:437;a:5:{s:8:\"phraseid\";s:3:\"438\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"I have read and agree to the %s.\";s:12:\"phrase_value\";s:32:\"I have read and agree to the %s.\";s:7:\"package\";s:6:\"wpforo\";}i:438;a:5:{s:8:\"phraseid\";s:3:\"439\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Click to open forum privacy policy below\";s:12:\"phrase_value\";s:40:\"Click to open forum privacy policy below\";s:7:\"package\";s:6:\"wpforo\";}i:439;a:5:{s:8:\"phraseid\";s:3:\"440\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"I agree\";s:12:\"phrase_value\";s:7:\"I agree\";s:7:\"package\";s:6:\"wpforo\";}i:440;a:5:{s:8:\"phraseid\";s:3:\"441\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"I do not agree. Take me away from here.\";s:12:\"phrase_value\";s:39:\"I do not agree. Take me away from here.\";s:7:\"package\";s:6:\"wpforo\";}i:441;a:5:{s:8:\"phraseid\";s:3:\"442\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"forum rules\";s:12:\"phrase_value\";s:11:\"forum rules\";s:7:\"package\";s:6:\"wpforo\";}i:442;a:5:{s:8:\"phraseid\";s:3:\"443\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"I have read and agree to abide by the %s.\";s:12:\"phrase_value\";s:41:\"I have read and agree to abide by the %s.\";s:7:\"package\";s:6:\"wpforo\";}i:443;a:5:{s:8:\"phraseid\";s:3:\"444\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Click to open forum rules below\";s:12:\"phrase_value\";s:31:\"Click to open forum rules below\";s:7:\"package\";s:6:\"wpforo\";}i:444;a:5:{s:8:\"phraseid\";s:3:\"445\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"I agree to these rules\";s:12:\"phrase_value\";s:22:\"I agree to these rules\";s:7:\"package\";s:6:\"wpforo\";}i:445;a:5:{s:8:\"phraseid\";s:3:\"446\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:54:\"I do not agree to these rules. Take me away from here.\";s:12:\"phrase_value\";s:54:\"I do not agree to these rules. Take me away from here.\";s:7:\"package\";s:6:\"wpforo\";}i:446;a:5:{s:8:\"phraseid\";s:3:\"447\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"the website\";s:12:\"phrase_value\";s:11:\"the website\";s:7:\"package\";s:6:\"wpforo\";}i:447;a:5:{s:8:\"phraseid\";s:3:\"448\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"I have read and agree to the\";s:12:\"phrase_value\";s:28:\"I have read and agree to the\";s:7:\"package\";s:6:\"wpforo\";}i:448;a:5:{s:8:\"phraseid\";s:3:\"449\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:167:\"I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.\";s:12:\"phrase_value\";s:167:\"I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.\";s:7:\"package\";s:6:\"wpforo\";}i:449;a:5:{s:8:\"phraseid\";s:3:\"450\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Terms\";s:12:\"phrase_value\";s:5:\"Terms\";s:7:\"package\";s:6:\"wpforo\";}i:450;a:5:{s:8:\"phraseid\";s:3:\"451\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Privacy Policy\";s:12:\"phrase_value\";s:14:\"Privacy Policy\";s:7:\"package\";s:6:\"wpforo\";}i:451;a:5:{s:8:\"phraseid\";s:3:\"452\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"and\";s:12:\"phrase_value\";s:3:\"and\";s:7:\"package\";s:6:\"wpforo\";}i:452;a:5:{s:8:\"phraseid\";s:3:\"453\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:71:\"I agree to receive an email confirmation with a link to set a password.\";s:12:\"phrase_value\";s:71:\"I agree to receive an email confirmation with a link to set a password.\";s:7:\"package\";s:6:\"wpforo\";}i:453;a:5:{s:8:\"phraseid\";s:3:\"454\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Contact Us\";s:12:\"phrase_value\";s:10:\"Contact Us\";s:7:\"package\";s:6:\"wpforo\";}i:454;a:5:{s:8:\"phraseid\";s:3:\"455\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"Contact the forum administrator\";s:12:\"phrase_value\";s:31:\"Contact the forum administrator\";s:7:\"package\";s:6:\"wpforo\";}i:455;a:5:{s:8:\"phraseid\";s:3:\"456\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Share:\";s:12:\"phrase_value\";s:6:\"Share:\";s:7:\"package\";s:6:\"wpforo\";}i:456;a:5:{s:8:\"phraseid\";s:3:\"457\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Share\";s:12:\"phrase_value\";s:5:\"Share\";s:7:\"package\";s:6:\"wpforo\";}i:457;a:5:{s:8:\"phraseid\";s:3:\"458\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Share this post\";s:12:\"phrase_value\";s:15:\"Share this post\";s:7:\"package\";s:6:\"wpforo\";}i:458;a:5:{s:8:\"phraseid\";s:3:\"459\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:332:\"When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.\";s:12:\"phrase_value\";s:332:\"When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.\";s:7:\"package\";s:6:\"wpforo\";}i:459;a:5:{s:8:\"phraseid\";s:3:\"460\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:105:\"I allow to create an account based on my Facebook public profile information and send confirmation email.\";s:12:\"phrase_value\";s:105:\"I allow to create an account based on my Facebook public profile information and send confirmation email.\";s:7:\"package\";s:6:\"wpforo\";}i:460;a:5:{s:8:\"phraseid\";s:3:\"461\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Facebook Login Information\";s:12:\"phrase_value\";s:26:\"Facebook Login Information\";s:7:\"package\";s:6:\"wpforo\";}i:461;a:5:{s:8:\"phraseid\";s:3:\"462\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Share to Facebook\";s:12:\"phrase_value\";s:17:\"Share to Facebook\";s:7:\"package\";s:6:\"wpforo\";}i:462;a:5:{s:8:\"phraseid\";s:3:\"463\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Tweet this post\";s:12:\"phrase_value\";s:15:\"Tweet this post\";s:7:\"package\";s:6:\"wpforo\";}i:463;a:5:{s:8:\"phraseid\";s:3:\"464\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Tweet\";s:12:\"phrase_value\";s:5:\"Tweet\";s:7:\"package\";s:6:\"wpforo\";}i:464;a:5:{s:8:\"phraseid\";s:3:\"465\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Share to Google+\";s:12:\"phrase_value\";s:16:\"Share to Google+\";s:7:\"package\";s:6:\"wpforo\";}i:465;a:5:{s:8:\"phraseid\";s:3:\"466\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Share to VK\";s:12:\"phrase_value\";s:11:\"Share to VK\";s:7:\"package\";s:6:\"wpforo\";}i:466;a:5:{s:8:\"phraseid\";s:3:\"467\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Share to OK\";s:12:\"phrase_value\";s:11:\"Share to OK\";s:7:\"package\";s:6:\"wpforo\";}i:467;a:5:{s:8:\"phraseid\";s:3:\"468\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Share to WhatsApp\";s:12:\"phrase_value\";s:17:\"Share to WhatsApp\";s:7:\"package\";s:6:\"wpforo\";}i:468;a:5:{s:8:\"phraseid\";s:3:\"469\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Share to LinkedIn\";s:12:\"phrase_value\";s:17:\"Share to LinkedIn\";s:7:\"package\";s:6:\"wpforo\";}i:469;a:5:{s:8:\"phraseid\";s:3:\"470\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Update Subscriptions\";s:12:\"phrase_value\";s:20:\"Update Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:470;a:5:{s:8:\"phraseid\";s:3:\"471\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"Subscribe to all new topics and posts\";s:12:\"phrase_value\";s:37:\"Subscribe to all new topics and posts\";s:7:\"package\";s:6:\"wpforo\";}i:471;a:5:{s:8:\"phraseid\";s:3:\"472\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Subscribe to all new topics\";s:12:\"phrase_value\";s:27:\"Subscribe to all new topics\";s:7:\"package\";s:6:\"wpforo\";}i:472;a:5:{s:8:\"phraseid\";s:3:\"473\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Subscription Manager\";s:12:\"phrase_value\";s:20:\"Subscription Manager\";s:7:\"package\";s:6:\"wpforo\";}i:473;a:5:{s:8:\"phraseid\";s:3:\"474\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"topics and posts\";s:12:\"phrase_value\";s:16:\"topics and posts\";s:7:\"package\";s:6:\"wpforo\";}i:474;a:5:{s:8:\"phraseid\";s:3:\"475\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"No data submitted\";s:12:\"phrase_value\";s:17:\"No data submitted\";s:7:\"package\";s:6:\"wpforo\";}i:475;a:5:{s:8:\"phraseid\";s:3:\"476\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"User profile fields not found\";s:12:\"phrase_value\";s:29:\"User profile fields not found\";s:7:\"package\";s:6:\"wpforo\";}i:476;a:5:{s:8:\"phraseid\";s:3:\"477\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"field is required\";s:12:\"phrase_value\";s:17:\"field is required\";s:7:\"package\";s:6:\"wpforo\";}i:477;a:5:{s:8:\"phraseid\";s:3:\"478\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"field value must be at least %d\";s:12:\"phrase_value\";s:31:\"field value must be at least %d\";s:7:\"package\";s:6:\"wpforo\";}i:478;a:5:{s:8:\"phraseid\";s:3:\"479\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"field value cannot be greater than %d\";s:12:\"phrase_value\";s:37:\"field value cannot be greater than %d\";s:7:\"package\";s:6:\"wpforo\";}i:479;a:5:{s:8:\"phraseid\";s:3:\"480\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:43:\"field length must be at least %d characters\";s:12:\"phrase_value\";s:43:\"field length must be at least %d characters\";s:7:\"package\";s:6:\"wpforo\";}i:480;a:5:{s:8:\"phraseid\";s:3:\"481\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"field length cannot be greater than %d characters\";s:12:\"phrase_value\";s:50:\"field length can not be greater than %d characters\";s:7:\"package\";s:6:\"wpforo\";}i:481;a:5:{s:8:\"phraseid\";s:3:\"482\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"field value is not a valid URL\";s:12:\"phrase_value\";s:30:\"field value is not a valid URL\";s:7:\"package\";s:6:\"wpforo\";}i:482;a:5:{s:8:\"phraseid\";s:3:\"483\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"file type is not detected\";s:12:\"phrase_value\";s:25:\"file type is not detected\";s:7:\"package\";s:6:\"wpforo\";}i:483;a:5:{s:8:\"phraseid\";s:3:\"484\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"file type %s is not allowed\";s:12:\"phrase_value\";s:27:\"file type %s is not allowed\";s:7:\"package\";s:6:\"wpforo\";}i:484;a:5:{s:8:\"phraseid\";s:3:\"485\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"file is too large\";s:12:\"phrase_value\";s:17:\"file is too large\";s:7:\"package\";s:6:\"wpforo\";}i:485;a:5:{s:8:\"phraseid\";s:3:\"486\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Success! Please check your mail for confirmation.\";s:12:\"phrase_value\";s:49:\"Success! Please check your mail for confirmation.\";s:7:\"package\";s:6:\"wpforo\";}i:486;a:5:{s:8:\"phraseid\";s:3:\"487\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:64:\"Username length must be between %d characters and %d characters.\";s:12:\"phrase_value\";s:64:\"Username length must be between %d characters and %d characters.\";s:7:\"package\";s:6:\"wpforo\";}i:487;a:5:{s:8:\"phraseid\";s:3:\"488\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"User registration is disabled.\";s:12:\"phrase_value\";s:30:\"User registration is disabled.\";s:7:\"package\";s:6:\"wpforo\";}i:488;a:5:{s:8:\"phraseid\";s:3:\"489\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"Avatar image is too big maximum allowed size is 2MB\";s:12:\"phrase_value\";s:51:\"Avatar image is too big maximum allowed size is 2MB\";s:7:\"package\";s:6:\"wpforo\";}i:489;a:5:{s:8:\"phraseid\";s:3:\"490\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"One of the selected Usergroups cannot be set as Secondary\";s:12:\"phrase_value\";s:57:\"One of the selected Usergroups cannot be set as Secondary\";s:7:\"package\";s:6:\"wpforo\";}i:490;a:5:{s:8:\"phraseid\";s:3:\"491\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:51:\"The selected Usergroup is not found in allowed list\";s:12:\"phrase_value\";s:51:\"The selected Usergroup is not found in allowed list\";s:7:\"package\";s:6:\"wpforo\";}i:491;a:5:{s:8:\"phraseid\";s:3:\"492\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"The selected Usergroup cannot be set\";s:12:\"phrase_value\";s:36:\"The selected Usergroup cannot be set\";s:7:\"package\";s:6:\"wpforo\";}i:492;a:5:{s:8:\"phraseid\";s:3:\"493\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:48:\"Admin and Moderator Usergroups are not permitted\";s:12:\"phrase_value\";s:48:\"Admin and Moderator Usergroups are not permitted\";s:7:\"package\";s:6:\"wpforo\";}i:493;a:5:{s:8:\"phraseid\";s:3:\"494\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:46:\"You have no permission to edit Usergroup field\";s:12:\"phrase_value\";s:46:\"You have no permission to edit Usergroup field\";s:7:\"package\";s:6:\"wpforo\";}i:494;a:5:{s:8:\"phraseid\";s:3:\"495\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"This nickname is already in use. Please insert another.\";s:12:\"phrase_value\";s:55:\"This nickname is already in use. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:495;a:5:{s:8:\"phraseid\";s:3:\"496\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"Nickname validation failed\";s:12:\"phrase_value\";s:26:\"Nickname validation failed\";s:7:\"package\";s:6:\"wpforo\";}i:496;a:5:{s:8:\"phraseid\";s:3:\"497\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:59:\"Numerical nicknames are not allowed. Please insert another.\";s:12:\"phrase_value\";s:59:\"Numerical nicknames are not allowed. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:497;a:5:{s:8:\"phraseid\";s:3:\"498\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:34:\"Maximum allowed file size is %s MB\";s:12:\"phrase_value\";s:34:\"Maximum allowed file size is %s MB\";s:7:\"package\";s:6:\"wpforo\";}i:498;a:5:{s:8:\"phraseid\";s:3:\"499\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"This email address is already registered. Please insert another\";s:12:\"phrase_value\";s:63:\"This email address is already registered. Please insert another\";s:7:\"package\";s:6:\"wpforo\";}i:499;a:5:{s:8:\"phraseid\";s:3:\"500\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Allowed file types: %s\";s:12:\"phrase_value\";s:22:\"Allowed file types: %s\";s:7:\"package\";s:6:\"wpforo\";}i:500;a:5:{s:8:\"phraseid\";s:3:\"501\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Form name not found\";s:12:\"phrase_value\";s:19:\"Form name not found\";s:7:\"package\";s:6:\"wpforo\";}i:501;a:5:{s:8:\"phraseid\";s:3:\"502\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Form template not found\";s:12:\"phrase_value\";s:23:\"Form template not found\";s:7:\"package\";s:6:\"wpforo\";}i:502;a:5:{s:8:\"phraseid\";s:3:\"503\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Profile updated successfully\";s:12:\"phrase_value\";s:28:\"Profile updated successfully\";s:7:\"package\";s:6:\"wpforo\";}i:503;a:5:{s:8:\"phraseid\";s:3:\"504\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"User data update failed\";s:12:\"phrase_value\";s:23:\"User data update failed\";s:7:\"package\";s:6:\"wpforo\";}i:504;a:5:{s:8:\"phraseid\";s:3:\"505\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"User profile update failed\";s:12:\"phrase_value\";s:26:\"User profile update failed\";s:7:\"package\";s:6:\"wpforo\";}i:505;a:5:{s:8:\"phraseid\";s:3:\"506\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"User custom field update failed\";s:12:\"phrase_value\";s:31:\"User custom field update failed\";s:7:\"package\";s:6:\"wpforo\";}i:506;a:5:{s:8:\"phraseid\";s:3:\"507\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:49:\"Sorry, there was an error uploading attached file\";s:12:\"phrase_value\";s:49:\"Sorry, there was an error uploading attached file\";s:7:\"package\";s:6:\"wpforo\";}i:507;a:5:{s:8:\"phraseid\";s:3:\"508\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Edit Topic\";s:12:\"phrase_value\";s:10:\"Edit Topic\";s:7:\"package\";s:6:\"wpforo\";}i:508;a:5:{s:8:\"phraseid\";s:3:\"509\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"This topic was modified %s by %s\";s:12:\"phrase_value\";s:32:\"This topic was modified %s by %s\";s:7:\"package\";s:6:\"wpforo\";}i:509;a:5:{s:8:\"phraseid\";s:3:\"510\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Edit Post\";s:12:\"phrase_value\";s:9:\"Edit Post\";s:7:\"package\";s:6:\"wpforo\";}i:510;a:5:{s:8:\"phraseid\";s:3:\"511\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"This post was modified %s by %s\";s:12:\"phrase_value\";s:31:\"This post was modified %s by %s\";s:7:\"package\";s:6:\"wpforo\";}i:511;a:5:{s:8:\"phraseid\";s:3:\"512\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Topics Started\";s:12:\"phrase_value\";s:14:\"Topics Started\";s:7:\"package\";s:6:\"wpforo\";}i:512;a:5:{s:8:\"phraseid\";s:3:\"513\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Replies Created\";s:12:\"phrase_value\";s:15:\"Replies Created\";s:7:\"package\";s:6:\"wpforo\";}i:513;a:5:{s:8:\"phraseid\";s:3:\"514\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Liked Posts\";s:12:\"phrase_value\";s:11:\"Liked Posts\";s:7:\"package\";s:6:\"wpforo\";}i:514;a:5:{s:8:\"phraseid\";s:3:\"515\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Topic link\";s:12:\"phrase_value\";s:10:\"Topic link\";s:7:\"package\";s:6:\"wpforo\";}i:515;a:5:{s:8:\"phraseid\";s:3:\"516\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Forum Topics Started\";s:12:\"phrase_value\";s:20:\"Forum Topics Started\";s:7:\"package\";s:6:\"wpforo\";}i:516;a:5:{s:8:\"phraseid\";s:3:\"517\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Forum Replies Created\";s:12:\"phrase_value\";s:21:\"Forum Replies Created\";s:7:\"package\";s:6:\"wpforo\";}i:517;a:5:{s:8:\"phraseid\";s:3:\"518\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Liked Forum Posts\";s:12:\"phrase_value\";s:17:\"Liked Forum Posts\";s:7:\"package\";s:6:\"wpforo\";}i:518;a:5:{s:8:\"phraseid\";s:3:\"519\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Forum Subscriptions\";s:12:\"phrase_value\";s:19:\"Forum Subscriptions\";s:7:\"package\";s:6:\"wpforo\";}i:519;a:5:{s:8:\"phraseid\";s:3:\"520\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:55:\"Start typing tags here (maximum %d tags are allowed)...\";s:12:\"phrase_value\";s:55:\"Start typing tags here (maximum %d tags are allowed)...\";s:7:\"package\";s:6:\"wpforo\";}i:520;a:5:{s:8:\"phraseid\";s:3:\"521\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Topic Tag\";s:12:\"phrase_value\";s:9:\"Topic Tag\";s:7:\"package\";s:6:\"wpforo\";}i:521;a:5:{s:8:\"phraseid\";s:3:\"522\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Topic Tags\";s:12:\"phrase_value\";s:10:\"Topic Tags\";s:7:\"package\";s:6:\"wpforo\";}i:522;a:5:{s:8:\"phraseid\";s:3:\"523\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Separate tags using a comma\";s:12:\"phrase_value\";s:27:\"Separate tags using a comma\";s:7:\"package\";s:6:\"wpforo\";}i:523;a:5:{s:8:\"phraseid\";s:3:\"524\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Tags\";s:12:\"phrase_value\";s:4:\"Tags\";s:7:\"package\";s:6:\"wpforo\";}i:524;a:5:{s:8:\"phraseid\";s:3:\"525\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Find Topics by Tags\";s:12:\"phrase_value\";s:19:\"Find Topics by Tags\";s:7:\"package\";s:6:\"wpforo\";}i:525;a:5:{s:8:\"phraseid\";s:3:\"526\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Related Topics\";s:12:\"phrase_value\";s:14:\"Related Topics\";s:7:\"package\";s:6:\"wpforo\";}i:526;a:5:{s:8:\"phraseid\";s:3:\"527\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Next Topic\";s:12:\"phrase_value\";s:10:\"Next Topic\";s:7:\"package\";s:6:\"wpforo\";}i:527;a:5:{s:8:\"phraseid\";s:3:\"528\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Previous Topic\";s:12:\"phrase_value\";s:14:\"Previous Topic\";s:7:\"package\";s:6:\"wpforo\";}i:528;a:5:{s:8:\"phraseid\";s:3:\"529\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"All forum topics\";s:12:\"phrase_value\";s:16:\"All forum topics\";s:7:\"package\";s:6:\"wpforo\";}i:529;a:5:{s:8:\"phraseid\";s:3:\"530\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"No tags found\";s:12:\"phrase_value\";s:13:\"No tags found\";s:7:\"package\";s:6:\"wpforo\";}i:530;a:5:{s:8:\"phraseid\";s:3:\"531\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:30:\"Forum contains no unread posts\";s:12:\"phrase_value\";s:30:\"Forum contains no unread posts\";s:7:\"package\";s:6:\"wpforo\";}i:531;a:5:{s:8:\"phraseid\";s:3:\"532\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"Forum contains unread posts\";s:12:\"phrase_value\";s:27:\"Forum contains unread posts\";s:7:\"package\";s:6:\"wpforo\";}i:532;a:5:{s:8:\"phraseid\";s:3:\"533\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Mark all read\";s:12:\"phrase_value\";s:13:\"Mark all read\";s:7:\"package\";s:6:\"wpforo\";}i:533;a:5:{s:8:\"phraseid\";s:3:\"534\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Not Replied\";s:12:\"phrase_value\";s:11:\"Not Replied\";s:7:\"package\";s:6:\"wpforo\";}i:534;a:5:{s:8:\"phraseid\";s:3:\"535\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:17:\"Tags are disabled\";s:12:\"phrase_value\";s:17:\"Tags are disabled\";s:7:\"package\";s:6:\"wpforo\";}i:535;a:5:{s:8:\"phraseid\";s:3:\"536\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Unread Posts\";s:12:\"phrase_value\";s:12:\"Unread Posts\";s:7:\"package\";s:6:\"wpforo\";}i:536;a:5:{s:8:\"phraseid\";s:3:\"537\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"No unread posts were found\";s:12:\"phrase_value\";s:26:\"No unread posts were found\";s:7:\"package\";s:6:\"wpforo\";}i:537;a:5:{s:8:\"phraseid\";s:3:\"538\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Ask a question\";s:12:\"phrase_value\";s:14:\"Ask a question\";s:7:\"package\";s:6:\"wpforo\";}i:538;a:5:{s:8:\"phraseid\";s:3:\"539\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Your question\";s:12:\"phrase_value\";s:13:\"Your question\";s:7:\"package\";s:6:\"wpforo\";}i:539;a:5:{s:8:\"phraseid\";s:3:\"540\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Question Tags\";s:12:\"phrase_value\";s:13:\"Question Tags\";s:7:\"package\";s:6:\"wpforo\";}i:540;a:5:{s:8:\"phraseid\";s:3:\"541\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:67:\"This topic doesn\'t exist or you don\'t have permissions to see that.\";s:12:\"phrase_value\";s:67:\"This topic doesn\'t exist or you don\'t have permissions to see that.\";s:7:\"package\";s:6:\"wpforo\";}i:541;a:5:{s:8:\"phraseid\";s:3:\"542\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"%d user ( %s )\";s:12:\"phrase_value\";s:14:\"%d user ( %s )\";s:7:\"package\";s:6:\"wpforo\";}i:542;a:5:{s:8:\"phraseid\";s:3:\"543\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"%d users ( %s )\";s:12:\"phrase_value\";s:15:\"%d users ( %s )\";s:7:\"package\";s:6:\"wpforo\";}i:543;a:5:{s:8:\"phraseid\";s:3:\"544\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Recently viewed by users: %s.\";s:12:\"phrase_value\";s:29:\"Recently viewed by users: %s.\";s:7:\"package\";s:6:\"wpforo\";}i:544;a:5:{s:8:\"phraseid\";s:3:\"545\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%s guest\";s:12:\"phrase_value\";s:8:\"%s guest\";s:7:\"package\";s:6:\"wpforo\";}i:545;a:5:{s:8:\"phraseid\";s:3:\"546\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"%s guests\";s:12:\"phrase_value\";s:9:\"%s guests\";s:7:\"package\";s:6:\"wpforo\";}i:546;a:5:{s:8:\"phraseid\";s:3:\"547\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%d times\";s:12:\"phrase_value\";s:8:\"%d times\";s:7:\"package\";s:6:\"wpforo\";}i:547;a:5:{s:8:\"phraseid\";s:3:\"548\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"Currently viewing this topic %s %s %s.\";s:12:\"phrase_value\";s:38:\"Currently viewing this topic %s %s %s.\";s:7:\"package\";s:6:\"wpforo\";}i:548;a:5:{s:8:\"phraseid\";s:3:\"549\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Forum Icons\";s:12:\"phrase_value\";s:11:\"Forum Icons\";s:7:\"package\";s:6:\"wpforo\";}i:549;a:5:{s:8:\"phraseid\";s:3:\"550\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"(%d viewing)\";s:12:\"phrase_value\";s:12:\"(%d viewing)\";s:7:\"package\";s:6:\"wpforo\";}i:550;a:5:{s:8:\"phraseid\";s:3:\"551\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"View all tags (%d)\";s:12:\"phrase_value\";s:18:\"View all tags (%d)\";s:7:\"package\";s:6:\"wpforo\";}i:551;a:5:{s:8:\"phraseid\";s:3:\"552\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"Topic reply\";s:12:\"phrase_value\";s:11:\"Topic reply\";s:7:\"package\";s:6:\"wpforo\";}i:552;a:5:{s:8:\"phraseid\";s:3:\"553\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"You have %d new replies\";s:12:\"phrase_value\";s:23:\"You have %d new replies\";s:7:\"package\";s:6:\"wpforo\";}i:553;a:5:{s:8:\"phraseid\";s:3:\"554\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You have %d new reply to %2$s from %3$s\";s:12:\"phrase_value\";s:39:\"You have %d new reply to %2$s from %3$s\";s:7:\"package\";s:6:\"wpforo\";}i:554;a:5:{s:8:\"phraseid\";s:3:\"555\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"You have %d new reply to %s\";s:12:\"phrase_value\";s:27:\"You have %d new reply to %s\";s:7:\"package\";s:6:\"wpforo\";}i:555;a:5:{s:8:\"phraseid\";s:3:\"556\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:35:\"Are you sure you wanted to do that?\";s:12:\"phrase_value\";s:35:\"Are you sure you wanted to do that?\";s:7:\"package\";s:6:\"wpforo\";}i:556;a:5:{s:8:\"phraseid\";s:3:\"557\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:63:\"You do not have permission to mark notifications for that user.\";s:12:\"phrase_value\";s:63:\"You do not have permission to mark notifications for that user.\";s:7:\"package\";s:6:\"wpforo\";}i:557;a:5:{s:8:\"phraseid\";s:3:\"558\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Tools: Move, Split, Merge\";s:12:\"phrase_value\";s:25:\"Tools: Move, Split, Merge\";s:7:\"package\";s:6:\"wpforo\";}i:558;a:5:{s:8:\"phraseid\";s:3:\"559\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Hide Replies\";s:12:\"phrase_value\";s:12:\"Hide replies\";s:7:\"package\";s:6:\"wpforo\";}i:559;a:5:{s:8:\"phraseid\";s:3:\"560\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Show Replies\";s:12:\"phrase_value\";s:12:\"Show replies\";s:7:\"package\";s:6:\"wpforo\";}i:560;a:5:{s:8:\"phraseid\";s:3:\"561\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"No threads found\";s:12:\"phrase_value\";s:16:\"No threads found\";s:7:\"package\";s:6:\"wpforo\";}i:561;a:5:{s:8:\"phraseid\";s:3:\"562\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Most Voted\";s:12:\"phrase_value\";s:10:\"Most Voted\";s:7:\"package\";s:6:\"wpforo\";}i:562;a:5:{s:8:\"phraseid\";s:3:\"563\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Most Commented\";s:12:\"phrase_value\";s:14:\"Most Commented\";s:7:\"package\";s:6:\"wpforo\";}i:563;a:5:{s:8:\"phraseid\";s:3:\"564\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Newest\";s:12:\"phrase_value\";s:6:\"Newest\";s:7:\"package\";s:6:\"wpforo\";}i:564;a:5:{s:8:\"phraseid\";s:3:\"565\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Oldest\";s:12:\"phrase_value\";s:6:\"Oldest\";s:7:\"package\";s:6:\"wpforo\";}i:565;a:5:{s:8:\"phraseid\";s:3:\"566\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"%d Answers\";s:12:\"phrase_value\";s:10:\"%d Answers\";s:7:\"package\";s:6:\"wpforo\";}i:566;a:5:{s:8:\"phraseid\";s:3:\"567\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"%d Answer\";s:12:\"phrase_value\";s:9:\"%d Answer\";s:7:\"package\";s:6:\"wpforo\";}i:567;a:5:{s:8:\"phraseid\";s:3:\"568\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Reply with quote\";s:12:\"phrase_value\";s:16:\"Reply with quote\";s:7:\"package\";s:6:\"wpforo\";}i:568;a:5:{s:8:\"phraseid\";s:3:\"569\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Leave a comment\";s:12:\"phrase_value\";s:15:\"Leave a comment\";s:7:\"package\";s:6:\"wpforo\";}i:569;a:5:{s:8:\"phraseid\";s:3:\"570\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:57:\"I allow to create an account and send confirmation email.\";s:12:\"phrase_value\";s:57:\"I allow to create an account and send confirmation email.\";s:7:\"package\";s:6:\"wpforo\";}i:570;a:5:{s:8:\"phraseid\";s:3:\"571\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"Google reCAPTCHA data are not submitted\";s:12:\"phrase_value\";s:39:\"Google reCAPTCHA data are not submitted\";s:7:\"package\";s:6:\"wpforo\";}i:571;a:5:{s:8:\"phraseid\";s:3:\"572\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Delete this file\";s:12:\"phrase_value\";s:16:\"Delete this file\";s:7:\"package\";s:6:\"wpforo\";}i:572;a:5:{s:8:\"phraseid\";s:3:\"573\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:42:\"Are you sure you want to delete this file?\";s:12:\"phrase_value\";s:42:\"Are you sure you want to delete this file?\";s:7:\"package\";s:6:\"wpforo\";}i:573;a:5:{s:8:\"phraseid\";s:3:\"574\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"Specify avatar by URL:\";s:12:\"phrase_value\";s:22:\"Specify avatar by URL:\";s:7:\"package\";s:6:\"wpforo\";}i:574;a:5:{s:8:\"phraseid\";s:3:\"575\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:84:\"ERROR: invalid_username. Sorry, that username is not allowed. Please insert another.\";s:12:\"phrase_value\";s:84:\"ERROR: invalid_username. Sorry, that username is not allowed. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:575;a:5:{s:8:\"phraseid\";s:3:\"576\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:64:\"Password length must be between %d characters and %d characters.\";s:12:\"phrase_value\";s:64:\"Password length must be between %d characters and %d characters.\";s:7:\"package\";s:6:\"wpforo\";}i:576;a:5:{s:8:\"phraseid\";s:3:\"577\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:59:\"This nickname is already registered. Please insert another.\";s:12:\"phrase_value\";s:59:\"This nickname is already registered. Please insert another.\";s:7:\"package\";s:6:\"wpforo\";}i:577;a:5:{s:8:\"phraseid\";s:3:\"578\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:50:\"Avatar image is too big maximum allowed size is %s\";s:12:\"phrase_value\";s:50:\"Avatar image is too big maximum allowed size is %s\";s:7:\"package\";s:6:\"wpforo\";}i:578;a:5:{s:8:\"phraseid\";s:3:\"579\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Userid is wrong\";s:12:\"phrase_value\";s:15:\"Userid is wrong\";s:7:\"package\";s:6:\"wpforo\";}i:579;a:5:{s:8:\"phraseid\";s:3:\"580\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Password successfully changed\";s:12:\"phrase_value\";s:29:\"Password successfully changed\";s:7:\"package\";s:6:\"wpforo\";}i:580;a:5:{s:8:\"phraseid\";s:3:\"581\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:36:\"User successfully banned from wpforo\";s:12:\"phrase_value\";s:36:\"User successfully banned from wpforo\";s:7:\"package\";s:6:\"wpforo\";}i:581;a:5:{s:8:\"phraseid\";s:3:\"582\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"User ban action error\";s:12:\"phrase_value\";s:21:\"User ban action error\";s:7:\"package\";s:6:\"wpforo\";}i:582;a:5:{s:8:\"phraseid\";s:3:\"583\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:38:\"User successfully unbanned from wpforo\";s:12:\"phrase_value\";s:38:\"User successfully unbanned from wpforo\";s:7:\"package\";s:6:\"wpforo\";}i:583;a:5:{s:8:\"phraseid\";s:3:\"584\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"User unban action error\";s:12:\"phrase_value\";s:23:\"User unban action error\";s:7:\"package\";s:6:\"wpforo\";}i:584;a:5:{s:8:\"phraseid\";s:3:\"585\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Anonymous\";s:12:\"phrase_value\";s:9:\"Anonymous\";s:7:\"package\";s:6:\"wpforo\";}i:585;a:5:{s:8:\"phraseid\";s:3:\"586\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Nickname\";s:12:\"phrase_value\";s:8:\"Nickname\";s:7:\"package\";s:6:\"wpforo\";}i:586;a:5:{s:8:\"phraseid\";s:3:\"587\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:22:\"URL Address Identifier\";s:12:\"phrase_value\";s:22:\"URL Address Identifier\";s:7:\"package\";s:6:\"wpforo\";}i:587;a:5:{s:8:\"phraseid\";s:3:\"588\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"User Groups Secondary\";s:12:\"phrase_value\";s:21:\"User Groups Secondary\";s:7:\"package\";s:6:\"wpforo\";}i:588;a:5:{s:8:\"phraseid\";s:3:\"589\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"Email has been confirmed\";s:12:\"phrase_value\";s:24:\"Email has been confirmed\";s:7:\"package\";s:6:\"wpforo\";}i:589;a:5:{s:8:\"phraseid\";s:3:\"590\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Email confirm error\";s:12:\"phrase_value\";s:19:\"Email confirm error\";s:7:\"package\";s:6:\"wpforo\";}i:590;a:5:{s:8:\"phraseid\";s:3:\"591\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"You are posting too quickly. Slow down.\";s:12:\"phrase_value\";s:39:\"You are posting too quickly. Slow down.\";s:7:\"package\";s:6:\"wpforo\";}i:591;a:5:{s:8:\"phraseid\";s:3:\"592\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:41:\"Function wpforo_thread_reply() not found.\";s:12:\"phrase_value\";s:41:\"Function wpforo_thread_reply() not found.\";s:7:\"package\";s:6:\"wpforo\";}i:592;a:5:{s:8:\"phraseid\";s:3:\"593\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"error: Change Status action\";s:12:\"phrase_value\";s:27:\"error: Change Status action\";s:7:\"package\";s:6:\"wpforo\";}i:593;a:5:{s:8:\"phraseid\";s:3:\"594\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Select Forum\";s:12:\"phrase_value\";s:12:\"Select Forum\";s:7:\"package\";s:6:\"wpforo\";}i:594;a:5:{s:8:\"phraseid\";s:3:\"595\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Write here . . .\";s:12:\"phrase_value\";s:16:\"Write here . . .\";s:7:\"package\";s:6:\"wpforo\";}i:595;a:5:{s:8:\"phraseid\";s:3:\"596\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Cancel\";s:12:\"phrase_value\";s:6:\"Cancel\";s:7:\"package\";s:6:\"wpforo\";}i:596;a:5:{s:8:\"phraseid\";s:3:\"597\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:44:\"You do not have permission to view this page\";s:12:\"phrase_value\";s:44:\"You do not have permission to view this page\";s:7:\"package\";s:6:\"wpforo\";}i:597;a:5:{s:8:\"phraseid\";s:3:\"598\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Data merging error\";s:12:\"phrase_value\";s:18:\"Data merging error\";s:7:\"package\";s:6:\"wpforo\";}i:598;a:5:{s:8:\"phraseid\";s:3:\"599\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"Please select a target forum\";s:12:\"phrase_value\";s:28:\"Please select a target forum\";s:7:\"package\";s:6:\"wpforo\";}i:599;a:5:{s:8:\"phraseid\";s:3:\"600\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"Please insert required fields\";s:12:\"phrase_value\";s:29:\"Please insert required fields\";s:7:\"package\";s:6:\"wpforo\";}i:600;a:5:{s:8:\"phraseid\";s:3:\"601\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"Please select at least one post to split\";s:12:\"phrase_value\";s:40:\"Please select at least one post to split\";s:7:\"package\";s:6:\"wpforo\";}i:601;a:5:{s:8:\"phraseid\";s:3:\"602\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Topic splitting error\";s:12:\"phrase_value\";s:21:\"Topic splitting error\";s:7:\"package\";s:6:\"wpforo\";}i:602;a:5:{s:8:\"phraseid\";s:3:\"603\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"Status changing error\";s:12:\"phrase_value\";s:21:\"Status changing error\";s:7:\"package\";s:6:\"wpforo\";}i:603;a:5:{s:8:\"phraseid\";s:3:\"604\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Repeat new password\";s:12:\"phrase_value\";s:19:\"Repeat new password\";s:7:\"package\";s:6:\"wpforo\";}i:604;a:5:{s:8:\"phraseid\";s:3:\"605\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"%s posted a new topic %s\";s:12:\"phrase_value\";s:24:\"%s posted a new topic %s\";s:7:\"package\";s:6:\"wpforo\";}i:605;a:5:{s:8:\"phraseid\";s:3:\"606\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Created by %s\";s:12:\"phrase_value\";s:13:\"Created by %s\";s:7:\"package\";s:6:\"wpforo\";}i:606;a:5:{s:8:\"phraseid\";s:3:\"607\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Last reply by %s\";s:12:\"phrase_value\";s:16:\"Last reply by %s\";s:7:\"package\";s:6:\"wpforo\";}i:607;a:5:{s:8:\"phraseid\";s:3:\"608\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Reply to\";s:12:\"phrase_value\";s:8:\"Reply to\";s:7:\"package\";s:6:\"wpforo\";}i:608;a:5:{s:8:\"phraseid\";s:3:\"609\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Topic Author\";s:12:\"phrase_value\";s:12:\"Topic Author\";s:7:\"package\";s:6:\"wpforo\";}i:609;a:5:{s:8:\"phraseid\";s:3:\"610\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Reply by\";s:12:\"phrase_value\";s:8:\"Reply by\";s:7:\"package\";s:6:\"wpforo\";}i:610;a:5:{s:8:\"phraseid\";s:3:\"611\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"All \";s:12:\"phrase_value\";s:4:\"All \";s:7:\"package\";s:6:\"wpforo\";}i:611;a:5:{s:8:\"phraseid\";s:3:\"612\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Deleted\";s:12:\"phrase_value\";s:7:\"Deleted\";s:7:\"package\";s:6:\"wpforo\";}i:612;a:5:{s:8:\"phraseid\";s:3:\"613\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"404 - Page not found\";s:12:\"phrase_value\";s:20:\"404 - Page not found\";s:7:\"package\";s:6:\"wpforo\";}i:613;a:5:{s:8:\"phraseid\";s:3:\"614\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"About\";s:12:\"phrase_value\";s:5:\"About\";s:7:\"package\";s:6:\"wpforo\";}i:614;a:5:{s:8:\"phraseid\";s:3:\"615\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"action error\";s:12:\"phrase_value\";s:12:\"action error\";s:7:\"package\";s:6:\"wpforo\";}i:615;a:5:{s:8:\"phraseid\";s:3:\"616\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"post not found\";s:12:\"phrase_value\";s:14:\"post not found\";s:7:\"package\";s:6:\"wpforo\";}i:616;a:5:{s:8:\"phraseid\";s:3:\"617\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"done\";s:12:\"phrase_value\";s:4:\"done\";s:7:\"package\";s:6:\"wpforo\";}i:617;a:5:{s:8:\"phraseid\";s:3:\"618\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"topic not found\";s:12:\"phrase_value\";s:15:\"topic not found\";s:7:\"package\";s:6:\"wpforo\";}i:618;a:5:{s:8:\"phraseid\";s:3:\"619\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"wrong data\";s:12:\"phrase_value\";s:10:\"wrong data\";s:7:\"package\";s:6:\"wpforo\";}i:619;a:5:{s:8:\"phraseid\";s:3:\"620\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:39:\"all topics has been loaded in this list\";s:12:\"phrase_value\";s:39:\"all topics has been loaded in this list\";s:7:\"package\";s:6:\"wpforo\";}i:620;a:5:{s:8:\"phraseid\";s:3:\"621\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Attachment\";s:12:\"phrase_value\";s:10:\"Attachment\";s:7:\"package\";s:6:\"wpforo\";}i:621;a:5:{s:8:\"phraseid\";s:3:\"622\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"The key is expired\";s:12:\"phrase_value\";s:18:\"The key is expired\";s:7:\"package\";s:6:\"wpforo\";}i:622;a:5:{s:8:\"phraseid\";s:3:\"623\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"The key is invalid\";s:12:\"phrase_value\";s:18:\"The key is invalid\";s:7:\"package\";s:6:\"wpforo\";}i:623;a:5:{s:8:\"phraseid\";s:3:\"624\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Email has been sent\";s:12:\"phrase_value\";s:19:\"Email has been sent\";s:7:\"package\";s:6:\"wpforo\";}i:624;a:5:{s:8:\"phraseid\";s:3:\"625\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"The password reset mismatch\";s:12:\"phrase_value\";s:27:\"The password reset mismatch\";s:7:\"package\";s:6:\"wpforo\";}i:625;a:5:{s:8:\"phraseid\";s:3:\"626\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"The password reset empty\";s:12:\"phrase_value\";s:24:\"The password reset empty\";s:7:\"package\";s:6:\"wpforo\";}i:626;a:5:{s:8:\"phraseid\";s:3:\"627\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"The password has been changed\";s:12:\"phrase_value\";s:29:\"The password has been changed\";s:7:\"package\";s:6:\"wpforo\";}i:627;a:5:{s:8:\"phraseid\";s:3:\"628\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Invalid request.\";s:12:\"phrase_value\";s:16:\"Invalid request.\";s:7:\"package\";s:6:\"wpforo\";}i:628;a:5:{s:8:\"phraseid\";s:3:\"629\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:82:\"You have been banned. Please contact to forum administrators for more information.\";s:12:\"phrase_value\";s:82:\"You have been banned. Please contact to forum administrators for more information.\";s:7:\"package\";s:6:\"wpforo\";}i:629;a:5:{s:8:\"phraseid\";s:3:\"630\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:67:\"Topic are private, please register or login for further information\";s:12:\"phrase_value\";s:67:\"Topic are private, please register or login for further information\";s:7:\"package\";s:6:\"wpforo\";}i:630;a:5:{s:8:\"phraseid\";s:3:\"631\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"More\";s:12:\"phrase_value\";s:4:\"More\";s:7:\"package\";s:6:\"wpforo\";}i:631;a:5:{s:8:\"phraseid\";s:3:\"632\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:40:\"expand to show all comments on this post\";s:12:\"phrase_value\";s:40:\"expand to show all comments on this post\";s:7:\"package\";s:6:\"wpforo\";}i:632;a:5:{s:8:\"phraseid\";s:3:\"633\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:21:\"show %d more comments\";s:12:\"phrase_value\";s:21:\"show %d more comments\";s:7:\"package\";s:6:\"wpforo\";}i:633;a:5:{s:8:\"phraseid\";s:3:\"634\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Threads\";s:12:\"phrase_value\";s:7:\"Threads\";s:7:\"package\";s:6:\"wpforo\";}i:634;a:5:{s:8:\"phraseid\";s:3:\"635\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:31:\"No forum found in this category\";s:12:\"phrase_value\";s:31:\"No forum found in this category\";s:7:\"package\";s:6:\"wpforo\";}i:635;a:5:{s:8:\"phraseid\";s:3:\"636\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Popular\";s:12:\"phrase_value\";s:7:\"Popular\";s:7:\"package\";s:6:\"wpforo\";}i:636;a:5:{s:8:\"phraseid\";s:3:\"637\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Resolved\";s:12:\"phrase_value\";s:8:\"Resolved\";s:7:\"package\";s:6:\"wpforo\";}i:637;a:5:{s:8:\"phraseid\";s:3:\"638\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:6:\"Status\";s:12:\"phrase_value\";s:6:\"Status\";s:7:\"package\";s:6:\"wpforo\";}i:638;a:5:{s:8:\"phraseid\";s:3:\"639\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Users\";s:12:\"phrase_value\";s:5:\"Users\";s:7:\"package\";s:6:\"wpforo\";}i:639;a:5:{s:8:\"phraseid\";s:3:\"640\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Load More Topics\";s:12:\"phrase_value\";s:16:\"Load More Topics\";s:7:\"package\";s:6:\"wpforo\";}i:640;a:5:{s:8:\"phraseid\";s:3:\"641\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Reset Fields\";s:12:\"phrase_value\";s:12:\"Reset Fields\";s:7:\"package\";s:6:\"wpforo\";}i:641;a:5:{s:8:\"phraseid\";s:3:\"642\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Not Replied Topics\";s:12:\"phrase_value\";s:18:\"Not Replied Topics\";s:7:\"package\";s:6:\"wpforo\";}i:642;a:5:{s:8:\"phraseid\";s:3:\"643\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Solved Topics\";s:12:\"phrase_value\";s:13:\"Solved Topics\";s:7:\"package\";s:6:\"wpforo\";}i:643;a:5:{s:8:\"phraseid\";s:3:\"644\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Unsolved Topics\";s:12:\"phrase_value\";s:15:\"Unsolved Topics\";s:7:\"package\";s:6:\"wpforo\";}i:644;a:5:{s:8:\"phraseid\";s:3:\"645\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Closed Topics\";s:12:\"phrase_value\";s:13:\"Closed Topics\";s:7:\"package\";s:6:\"wpforo\";}i:645;a:5:{s:8:\"phraseid\";s:3:\"646\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Sticky Topics\";s:12:\"phrase_value\";s:13:\"Sticky Topics\";s:7:\"package\";s:6:\"wpforo\";}i:646;a:5:{s:8:\"phraseid\";s:3:\"647\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Private Topics\";s:12:\"phrase_value\";s:14:\"Private Topics\";s:7:\"package\";s:6:\"wpforo\";}i:647;a:5:{s:8:\"phraseid\";s:3:\"648\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"Unapproved Posts\";s:12:\"phrase_value\";s:16:\"Unapproved Posts\";s:7:\"package\";s:6:\"wpforo\";}i:648;a:5:{s:8:\"phraseid\";s:3:\"649\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:3:\"Tag\";s:12:\"phrase_value\";s:3:\"Tag\";s:7:\"package\";s:6:\"wpforo\";}i:649;a:5:{s:8:\"phraseid\";s:3:\"650\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"%s Replies\";s:12:\"phrase_value\";s:10:\"%s Replies\";s:7:\"package\";s:6:\"wpforo\";}i:650;a:5:{s:8:\"phraseid\";s:3:\"651\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"%s Reply\";s:12:\"phrase_value\";s:8:\"%s Reply\";s:7:\"package\";s:6:\"wpforo\";}i:651;a:5:{s:8:\"phraseid\";s:3:\"652\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Quote this text\";s:12:\"phrase_value\";s:20:\"Quote this text\n    \";s:7:\"package\";s:6:\"wpforo\";}i:652;a:5:{s:8:\"phraseid\";s:3:\"653\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Preview\";s:12:\"phrase_value\";s:12:\"Preview\n    \";s:7:\"package\";s:6:\"wpforo\";}i:653;a:5:{s:8:\"phraseid\";s:3:\"654\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Revision\";s:12:\"phrase_value\";s:13:\"Revision\n    \";s:7:\"package\";s:6:\"wpforo\";}i:654;a:5:{s:8:\"phraseid\";s:3:\"655\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Revisions\";s:12:\"phrase_value\";s:14:\"Revisions\n    \";s:7:\"package\";s:6:\"wpforo\";}i:655;a:5:{s:8:\"phraseid\";s:3:\"656\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"%1$s Revisions\";s:12:\"phrase_value\";s:19:\"%1$s Revisions\n    \";s:7:\"package\";s:6:\"wpforo\";}i:656;a:5:{s:8:\"phraseid\";s:3:\"657\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Saved\";s:12:\"phrase_value\";s:10:\"Saved\n    \";s:7:\"package\";s:6:\"wpforo\";}i:657;a:5:{s:8:\"phraseid\";s:3:\"658\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Restore\";s:12:\"phrase_value\";s:12:\"Restore\n    \";s:7:\"package\";s:6:\"wpforo\";}i:658;a:5:{s:8:\"phraseid\";s:3:\"659\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Save Draft\";s:12:\"phrase_value\";s:15:\"Save Draft\n    \";s:7:\"package\";s:6:\"wpforo\";}i:659;a:5:{s:8:\"phraseid\";s:3:\"660\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:12:\"Saving Draft\";s:12:\"phrase_value\";s:17:\"Saving Draft\n    \";s:7:\"package\";s:6:\"wpforo\";}i:660;a:5:{s:8:\"phraseid\";s:3:\"661\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Loading Topics\";s:12:\"phrase_value\";s:19:\"Loading Topics\n    \";s:7:\"package\";s:6:\"wpforo\";}i:661;a:5:{s:8:\"phraseid\";s:3:\"662\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Topic Tag:\";s:12:\"phrase_value\";s:15:\"Topic Tag:\n    \";s:7:\"package\";s:6:\"wpforo\";}i:662;a:5:{s:8:\"phraseid\";s:3:\"663\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Join Us!\";s:12:\"phrase_value\";s:13:\"Join Us!\n    \";s:7:\"package\";s:6:\"wpforo\";}i:663;a:5:{s:8:\"phraseid\";s:3:\"664\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Notifications\";s:12:\"phrase_value\";s:18:\"Notifications\n    \";s:7:\"package\";s:6:\"wpforo\";}i:664;a:5:{s:8:\"phraseid\";s:3:\"665\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"Clear all\";s:12:\"phrase_value\";s:14:\"Clear all\n    \";s:7:\"package\";s:6:\"wpforo\";}i:665;a:5:{s:8:\"phraseid\";s:3:\"666\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"You have no new notification\";s:12:\"phrase_value\";s:33:\"You have no new notification\n    \";s:7:\"package\";s:6:\"wpforo\";}i:666;a:5:{s:8:\"phraseid\";s:3:\"667\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"You have a new notification\";s:12:\"phrase_value\";s:32:\"You have a new notification\n    \";s:7:\"package\";s:6:\"wpforo\";}i:667;a:5:{s:8:\"phraseid\";s:3:\"668\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:26:\"You have new notifications\";s:12:\"phrase_value\";s:31:\"You have new notifications\n    \";s:7:\"package\";s:6:\"wpforo\";}i:668;a:5:{s:8:\"phraseid\";s:3:\"669\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"New Reply\";s:12:\"phrase_value\";s:14:\"New Reply\n    \";s:7:\"package\";s:6:\"wpforo\";}i:669;a:5:{s:8:\"phraseid\";s:3:\"670\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"New reply from %1$s, %2$s\";s:12:\"phrase_value\";s:30:\"New reply from %1$s, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:670;a:5:{s:8:\"phraseid\";s:3:\"671\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"New Like\";s:12:\"phrase_value\";s:13:\"New Like\n    \";s:7:\"package\";s:6:\"wpforo\";}i:671;a:5:{s:8:\"phraseid\";s:3:\"672\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:24:\"New like from %1$s, %2$s\";s:12:\"phrase_value\";s:29:\"New like from %1$s, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:672;a:5:{s:8:\"phraseid\";s:3:\"673\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:11:\"New Up Vote\";s:12:\"phrase_value\";s:16:\"New Up Vote\n    \";s:7:\"package\";s:6:\"wpforo\";}i:673;a:5:{s:8:\"phraseid\";s:3:\"674\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:27:\"New up vote from %1$s, %2$s\";s:12:\"phrase_value\";s:32:\"New up vote from %1$s, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:674;a:5:{s:8:\"phraseid\";s:3:\"675\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"New Down Vote\";s:12:\"phrase_value\";s:18:\"New Down Vote\n    \";s:7:\"package\";s:6:\"wpforo\";}i:675;a:5:{s:8:\"phraseid\";s:3:\"676\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:29:\"New down vote from %1$s, %2$s\";s:12:\"phrase_value\";s:34:\"New down vote from %1$s, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:676;a:5:{s:8:\"phraseid\";s:3:\"677\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:23:\"Go to first unread post\";s:12:\"phrase_value\";s:28:\"Go to first unread post\n    \";s:7:\"package\";s:6:\"wpforo\";}i:677;a:5:{s:8:\"phraseid\";s:3:\"678\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"New User Mentioning\";s:12:\"phrase_value\";s:24:\"New User Mentioning\n    \";s:7:\"package\";s:6:\"wpforo\";}i:678;a:5:{s:8:\"phraseid\";s:3:\"679\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:28:\"%1$s has mentioned you, %2$s\";s:12:\"phrase_value\";s:33:\"%1$s has mentioned you, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:679;a:5:{s:8:\"phraseid\";s:3:\"680\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"New Notification\";s:12:\"phrase_value\";s:21:\"New Notification\n    \";s:7:\"package\";s:6:\"wpforo\";}i:680;a:5:{s:8:\"phraseid\";s:3:\"681\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:32:\"New notification from %1$s, %2$s\";s:12:\"phrase_value\";s:37:\"New notification from %1$s, %2$s\n    \";s:7:\"package\";s:6:\"wpforo\";}i:681;a:5:{s:8:\"phraseid\";s:3:\"682\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:47:\"Protect your forum from spam user registration!\";s:12:\"phrase_value\";s:52:\"Protect your forum from spam user registration!\n    \";s:7:\"package\";s:6:\"wpforo\";}i:682;a:5:{s:8:\"phraseid\";s:3:\"683\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:237:\"wpForo has not found any protection solution against spam user registration on the forum registration form. Please %1$s and enable the %2$s antibot protection in %3$s or install other alternative %4$s to avoid registration of spam users.\";s:12:\"phrase_value\";s:242:\"wpForo has not found any protection solution against spam user registration on the forum registration form. Please %1$s and enable the %2$s antibot protection in %3$s or install other alternative %4$s to avoid registration of spam users.\n    \";s:7:\"package\";s:6:\"wpforo\";}i:683;a:5:{s:8:\"phraseid\";s:3:\"684\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:20:\"Tools > Antispam Tab\";s:12:\"phrase_value\";s:25:\"Tools > Antispam Tab\n    \";s:7:\"package\";s:6:\"wpforo\";}i:684;a:5:{s:8:\"phraseid\";s:3:\"685\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:16:\"WordPress plugin\";s:12:\"phrase_value\";s:21:\"WordPress plugin\n    \";s:7:\"package\";s:6:\"wpforo\";}i:685;a:5:{s:8:\"phraseid\";s:3:\"686\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:265:\"This notification is only visible for the website administrators. It will be automatically disabled once some antispam solution is enabled. If you don\'t use wpForo registration form or you\'re sure, that you have an antispam solution just click the [dismiss] button.\";s:12:\"phrase_value\";s:270:\"This notification is only visible for the website administrators. It will be automatically disabled once some antispam solution is enabled. If you don\'t use wpForo registration form or you\'re sure, that you have an antispam solution just click the [dismiss] button.\n    \";s:7:\"package\";s:6:\"wpforo\";}i:686;a:5:{s:8:\"phraseid\";s:3:\"687\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:7:\"Dismiss\";s:12:\"phrase_value\";s:12:\"Dismiss\n    \";s:7:\"package\";s:6:\"wpforo\";}i:687;a:5:{s:8:\"phraseid\";s:3:\"688\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:25:\"Add New Category or Forum\";s:12:\"phrase_value\";s:30:\"Add New Category or Forum\n    \";s:7:\"package\";s:6:\"wpforo\";}i:688;a:5:{s:8:\"phraseid\";s:3:\"689\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Change Color Style\";s:12:\"phrase_value\";s:23:\"Change Color Style\n    \";s:7:\"package\";s:6:\"wpforo\";}i:689;a:5:{s:8:\"phraseid\";s:3:\"690\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:15:\"Post Moderation\";s:12:\"phrase_value\";s:20:\"Post Moderation\n    \";s:7:\"package\";s:6:\"wpforo\";}i:690;a:5:{s:8:\"phraseid\";s:3:\"691\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:8:\"Antispam\";s:12:\"phrase_value\";s:13:\"Antispam\n    \";s:7:\"package\";s:6:\"wpforo\";}i:691;a:5:{s:8:\"phraseid\";s:3:\"692\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:10:\"Forum Menu\";s:12:\"phrase_value\";s:15:\"Forum Menu\n    \";s:7:\"package\";s:6:\"wpforo\";}i:692;a:5:{s:8:\"phraseid\";s:3:\"693\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:13:\"Forum Widgets\";s:12:\"phrase_value\";s:18:\"Forum Widgets\n    \";s:7:\"package\";s:6:\"wpforo\";}i:693;a:5:{s:8:\"phraseid\";s:3:\"694\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"Delete Forum Cache\";s:12:\"phrase_value\";s:23:\"Delete Forum Cache\n    \";s:7:\"package\";s:6:\"wpforo\";}i:694;a:5:{s:8:\"phraseid\";s:3:\"695\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"Admin Control Panel\";s:12:\"phrase_value\";s:24:\"Admin Control Panel\n    \";s:7:\"package\";s:6:\"wpforo\";}i:695;a:5:{s:8:\"phraseid\";s:3:\"696\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:19:\"the layout you want\";s:12:\"phrase_value\";s:24:\"the layout you want\n    \";s:7:\"package\";s:6:\"wpforo\";}i:696;a:5:{s:8:\"phraseid\";s:3:\"697\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:183:\"Please note, that forums can be displayed with different layouts %1$s, just edit the top category (blue panel) and set %2$s. Child forums inherit the top category (blue panel) layout.\";s:12:\"phrase_value\";s:188:\"Please note, that forums can be displayed with different layouts %1$s, just edit the top category (blue panel) and set %2$s. Child forums inherit the top category (blue panel) layout.\n    \";s:7:\"package\";s:6:\"wpforo\";}i:697;a:5:{s:8:\"phraseid\";s:3:\"698\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:18:\"No new posts found\";s:12:\"phrase_value\";s:23:\"No new posts found\n    \";s:7:\"package\";s:6:\"wpforo\";}i:698;a:5:{s:8:\"phraseid\";s:3:\"699\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:37:\"I got it, please dismiss this message\";s:12:\"phrase_value\";s:42:\"I got it, please dismiss this message\n    \";s:7:\"package\";s:6:\"wpforo\";}i:699;a:5:{s:8:\"phraseid\";s:3:\"700\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:9:\"configure\";s:12:\"phrase_value\";s:14:\"configure\n    \";s:7:\"package\";s:6:\"wpforo\";}i:700;a:5:{s:8:\"phraseid\";s:3:\"701\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"{new}\";s:12:\"phrase_value\";s:10:\"{new}\n    \";s:7:\"package\";s:6:\"wpforo\";}i:701;a:5:{s:8:\"phraseid\";s:3:\"702\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:14:\"Create Account\";s:12:\"phrase_value\";s:19:\"Create Account\n    \";s:7:\"package\";s:6:\"wpforo\";}i:702;a:5:{s:8:\"phraseid\";s:3:\"703\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:4:\"Full\";s:12:\"phrase_value\";s:9:\"Full\n    \";s:7:\"package\";s:6:\"wpforo\";}i:703;a:5:{s:8:\"phraseid\";s:3:\"704\";s:6:\"langid\";s:1:\"1\";s:10:\"phrase_key\";s:5:\"Short\";s:12:\"phrase_value\";s:6:\"Short\n\";s:7:\"package\";s:6:\"wpforo\";}}','no');
INSERT INTO `wp_options` VALUES (471,'_site_transient_timeout_browser_a1123060a8cc6821e13d16ffa39d5d5a','1605311138','no');
INSERT INTO `wp_options` VALUES (472,'_site_transient_browser_a1123060a8cc6821e13d16ffa39d5d5a','a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"82.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','no');
INSERT INTO `wp_options` VALUES (473,'_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89','1605311139','no');
INSERT INTO `wp_options` VALUES (474,'_site_transient_php_check_472f71d2a071d463a95f84346288dc89','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','no');
INSERT INTO `wp_options` VALUES (475,'_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e','1604828758','no');
INSERT INTO `wp_options` VALUES (476,'_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e','a:4:{s:9:\"sandboxed\";b:0;s:5:\"error\";N;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:10:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:62:\"Discussion Group: Contributing on the WordPress Community Team\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/274417551/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-11-07 12:00:00\";s:8:\"end_date\";s:19:\"2020-11-07 13:00:00\";s:20:\"start_unix_timestamp\";i:1604779200;s:18:\"end_unix_timestamp\";i:1604782800;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297003;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:10:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Finland Online\";s:3:\"url\";s:34:\"https://finland.wordcamp.org/2020/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-11-12 12:00:00\";s:8:\"end_date\";s:19:\"2020-11-12 12:00:00\";s:20:\"start_unix_timestamp\";i:1605175200;s:18:\"end_unix_timestamp\";i:1605175200;s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"FI\";s:8:\"latitude\";d:61.924109999999999;s:9:\"longitude\";d:25.748151100000001;}}}}','no');
INSERT INTO `wp_options` VALUES (499,'_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b','1604793010','no');
INSERT INTO `wp_options` VALUES (500,'_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b','<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: A valid URL was not provided.</p></div>','no');
INSERT INTO `wp_options` VALUES (520,'_transient_doing_cron','1604791257.7609500885009765625000','yes');
INSERT INTO `wp_options` VALUES (521,'_site_transient_timeout_theme_roots','1604793057','no');
INSERT INTO `wp_options` VALUES (522,'_site_transient_theme_roots','a:4:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";s:12:\"wp-own-theme\";s:7:\"/themes\";}','no');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,1,'_edit_lock','1604097099:1');
INSERT INTO `wp_postmeta` VALUES (4,5,'_edit_lock','1604097120:1');
INSERT INTO `wp_postmeta` VALUES (7,7,'_edit_lock','1604228366:1');
INSERT INTO `wp_postmeta` VALUES (8,9,'_edit_lock','1604251536:1');
INSERT INTO `wp_postmeta` VALUES (9,12,'_wp_attached_file','2020/10/kontroll.jpg');
INSERT INTO `wp_postmeta` VALUES (10,12,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:640;s:6:\"height\";i:437;s:4:\"file\";s:20:\"2020/10/kontroll.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"kontroll-300x205.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:205;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"kontroll-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (11,13,'_edit_lock','1604181388:1');
INSERT INTO `wp_postmeta` VALUES (12,15,'_edit_lock','1604181336:1');
INSERT INTO `wp_postmeta` VALUES (13,17,'_edit_lock','1604181867:1');
INSERT INTO `wp_postmeta` VALUES (14,22,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (15,22,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (16,22,'_menu_item_object_id','22');
INSERT INTO `wp_postmeta` VALUES (17,22,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (18,22,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (19,22,'_menu_item_classes','a:1:{i:0;s:16:\"header-link-home\";}');
INSERT INTO `wp_postmeta` VALUES (20,22,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (21,22,'_menu_item_url','http://egettheme.local/');
INSERT INTO `wp_postmeta` VALUES (23,23,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (24,23,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (25,23,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (26,23,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (27,23,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (28,23,'_menu_item_classes','a:1:{i:0;s:19:\"header-link-aboutUs\";}');
INSERT INTO `wp_postmeta` VALUES (29,23,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (30,23,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (50,26,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (51,26,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (52,26,'_menu_item_object_id','9');
INSERT INTO `wp_postmeta` VALUES (53,26,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (54,26,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (55,26,'_menu_item_classes','a:1:{i:0;s:16:\"header-link-blog\";}');
INSERT INTO `wp_postmeta` VALUES (56,26,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (57,26,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (59,27,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (60,27,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (61,27,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (62,27,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (63,27,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (64,27,'_menu_item_classes','a:1:{i:0;s:21:\"header-link-contactUs\";}');
INSERT INTO `wp_postmeta` VALUES (65,27,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (66,27,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (77,29,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (78,29,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (79,29,'_menu_item_object_id','17');
INSERT INTO `wp_postmeta` VALUES (80,29,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (81,29,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (82,29,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (83,29,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (84,29,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (86,30,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (87,30,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (88,30,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (89,30,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (90,30,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (91,30,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (92,30,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (93,30,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (95,31,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (96,31,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (97,31,'_menu_item_object_id','31');
INSERT INTO `wp_postmeta` VALUES (98,31,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (99,31,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (100,31,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (101,31,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (102,31,'_menu_item_url','http://egettheme.local/');
INSERT INTO `wp_postmeta` VALUES (104,32,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (105,32,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (106,32,'_menu_item_object_id','2');
INSERT INTO `wp_postmeta` VALUES (107,32,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (108,32,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (109,32,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (110,32,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (111,32,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (113,33,'_edit_lock','1604184364:1');
INSERT INTO `wp_postmeta` VALUES (114,35,'_menu_item_type','post_type');
INSERT INTO `wp_postmeta` VALUES (115,35,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (116,35,'_menu_item_object_id','33');
INSERT INTO `wp_postmeta` VALUES (117,35,'_menu_item_object','page');
INSERT INTO `wp_postmeta` VALUES (118,35,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (119,35,'_menu_item_classes','a:1:{i:0;s:19:\"header-link-courses\";}');
INSERT INTO `wp_postmeta` VALUES (120,35,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (121,35,'_menu_item_url','');
INSERT INTO `wp_postmeta` VALUES (123,37,'_edit_lock','1604229644:1');
INSERT INTO `wp_postmeta` VALUES (124,38,'_edit_lock','1604229728:1');
INSERT INTO `wp_postmeta` VALUES (125,1,'_wp_trash_meta_status','publish');
INSERT INTO `wp_postmeta` VALUES (126,1,'_wp_trash_meta_time','1604244214');
INSERT INTO `wp_postmeta` VALUES (127,1,'_wp_desired_post_slug','hello-world');
INSERT INTO `wp_postmeta` VALUES (128,1,'_wp_trash_meta_comments_status','a:1:{i:1;s:1:\"1\";}');
INSERT INTO `wp_postmeta` VALUES (129,41,'_edit_lock','1604249828:1');
INSERT INTO `wp_postmeta` VALUES (136,45,'_edit_lock','1604784796:1');
INSERT INTO `wp_postmeta` VALUES (139,47,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (140,47,'_edit_lock','1604707752:1');
INSERT INTO `wp_postmeta` VALUES (141,48,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (142,48,'_edit_lock','1604755698:1');
INSERT INTO `wp_postmeta` VALUES (143,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (144,49,'_edit_lock','1604749836:1');
INSERT INTO `wp_postmeta` VALUES (145,51,'_edit_lock','1604358043:1');
INSERT INTO `wp_postmeta` VALUES (146,53,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (147,53,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (148,53,'_menu_item_object_id','53');
INSERT INTO `wp_postmeta` VALUES (149,53,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (150,53,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (151,53,'_menu_item_classes','a:1:{i:0;s:11:\"wpforo-home\";}');
INSERT INTO `wp_postmeta` VALUES (152,53,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (153,53,'_menu_item_url','/%wpforo-home%/');
INSERT INTO `wp_postmeta` VALUES (154,54,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (155,54,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (156,54,'_menu_item_object_id','54');
INSERT INTO `wp_postmeta` VALUES (157,54,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (158,54,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (159,54,'_menu_item_classes','a:1:{i:0;s:14:\"wpforo-members\";}');
INSERT INTO `wp_postmeta` VALUES (160,54,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (161,54,'_menu_item_url','/%wpforo-members%/');
INSERT INTO `wp_postmeta` VALUES (162,55,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (163,55,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (164,55,'_menu_item_object_id','55');
INSERT INTO `wp_postmeta` VALUES (165,55,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (166,55,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (167,55,'_menu_item_classes','a:1:{i:0;s:13:\"wpforo-recent\";}');
INSERT INTO `wp_postmeta` VALUES (168,55,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (169,55,'_menu_item_url','/%wpforo-recent%/');
INSERT INTO `wp_postmeta` VALUES (170,56,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (171,56,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (172,56,'_menu_item_object_id','56');
INSERT INTO `wp_postmeta` VALUES (173,56,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (174,56,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (175,56,'_menu_item_classes','a:1:{i:0;s:14:\"wpforo-profile\";}');
INSERT INTO `wp_postmeta` VALUES (176,56,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (177,56,'_menu_item_url','/%wpforo-profile-home%/');
INSERT INTO `wp_postmeta` VALUES (178,57,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (179,57,'_menu_item_menu_item_parent','56');
INSERT INTO `wp_postmeta` VALUES (180,57,'_menu_item_object_id','57');
INSERT INTO `wp_postmeta` VALUES (181,57,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (182,57,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (183,57,'_menu_item_classes','a:1:{i:0;s:22:\"wpforo-profile-account\";}');
INSERT INTO `wp_postmeta` VALUES (184,57,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (185,57,'_menu_item_url','/%wpforo-profile-account%/');
INSERT INTO `wp_postmeta` VALUES (186,58,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (187,58,'_menu_item_menu_item_parent','56');
INSERT INTO `wp_postmeta` VALUES (188,58,'_menu_item_object_id','58');
INSERT INTO `wp_postmeta` VALUES (189,58,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (190,58,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (191,58,'_menu_item_classes','a:1:{i:0;s:23:\"wpforo-profile-activity\";}');
INSERT INTO `wp_postmeta` VALUES (192,58,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (193,58,'_menu_item_url','/%wpforo-profile-activity%/');
INSERT INTO `wp_postmeta` VALUES (194,59,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (195,59,'_menu_item_menu_item_parent','56');
INSERT INTO `wp_postmeta` VALUES (196,59,'_menu_item_object_id','59');
INSERT INTO `wp_postmeta` VALUES (197,59,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (198,59,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (199,59,'_menu_item_classes','a:1:{i:0;s:28:\"wpforo-profile-subscriptions\";}');
INSERT INTO `wp_postmeta` VALUES (200,59,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (201,59,'_menu_item_url','/%wpforo-profile-subscriptions%/');
INSERT INTO `wp_postmeta` VALUES (202,60,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (203,60,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (204,60,'_menu_item_object_id','60');
INSERT INTO `wp_postmeta` VALUES (205,60,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (206,60,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (207,60,'_menu_item_classes','a:1:{i:0;s:15:\"wpforo-register\";}');
INSERT INTO `wp_postmeta` VALUES (208,60,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (209,60,'_menu_item_url','/%wpforo-register%/');
INSERT INTO `wp_postmeta` VALUES (210,61,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (211,61,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (212,61,'_menu_item_object_id','61');
INSERT INTO `wp_postmeta` VALUES (213,61,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (214,61,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (215,61,'_menu_item_classes','a:1:{i:0;s:12:\"wpforo-login\";}');
INSERT INTO `wp_postmeta` VALUES (216,61,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (217,61,'_menu_item_url','/%wpforo-login%/');
INSERT INTO `wp_postmeta` VALUES (218,62,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (219,62,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (220,62,'_menu_item_object_id','62');
INSERT INTO `wp_postmeta` VALUES (221,62,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (222,62,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (223,62,'_menu_item_classes','a:1:{i:0;s:13:\"wpforo-logout\";}');
INSERT INTO `wp_postmeta` VALUES (224,62,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (225,62,'_menu_item_url','/%wpforo-logout%/');
INSERT INTO `wp_postmeta` VALUES (226,63,'_wp_attached_file','wpforo/default_attachments/1604399257-lucas-ludwig-WL99c-jPzoU-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (227,63,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1696;s:6:\"height\";i:2560;s:4:\"file\";s:82:\"wpforo/default_attachments/1604399257-lucas-ludwig-WL99c-jPzoU-unsplash-scaled.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"1604399257-lucas-ludwig-WL99c-jPzoU-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:48:\"1604399257-lucas-ludwig-WL99c-jPzoU-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (230,83,'_edit_lock','1604708884:1');
INSERT INTO `wp_postmeta` VALUES (231,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (232,49,'event_date','20201231');
INSERT INTO `wp_postmeta` VALUES (233,49,'_event_date','field_5fa4736e8bf2c');
INSERT INTO `wp_postmeta` VALUES (234,48,'event_date','20200717');
INSERT INTO `wp_postmeta` VALUES (235,48,'_event_date','field_5fa4736e8bf2c');
INSERT INTO `wp_postmeta` VALUES (236,47,'event_date','20201014');
INSERT INTO `wp_postmeta` VALUES (237,47,'_event_date','field_5fa4736e8bf2c');
INSERT INTO `wp_postmeta` VALUES (238,85,'_edit_lock','1604755755:1');
INSERT INTO `wp_postmeta` VALUES (239,85,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (240,85,'event_date','20201125');
INSERT INTO `wp_postmeta` VALUES (241,85,'_event_date','field_5fa4736e8bf2c');
INSERT INTO `wp_postmeta` VALUES (242,87,'_edit_lock','1604753430:1');
INSERT INTO `wp_postmeta` VALUES (243,87,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (244,87,'event_date','20210129');
INSERT INTO `wp_postmeta` VALUES (245,87,'_event_date','field_5fa4736e8bf2c');
INSERT INTO `wp_postmeta` VALUES (246,88,'_edit_lock','1604745660:1');
INSERT INTO `wp_postmeta` VALUES (247,90,'_edit_lock','1604749849:1');
INSERT INTO `wp_postmeta` VALUES (248,90,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (249,91,'_edit_lock','1604749858:1');
INSERT INTO `wp_postmeta` VALUES (250,91,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (251,92,'_edit_lock','1604749867:1');
INSERT INTO `wp_postmeta` VALUES (252,92,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (253,93,'_edit_lock','1604749875:1');
INSERT INTO `wp_postmeta` VALUES (254,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (255,94,'_edit_lock','1604749893:1');
INSERT INTO `wp_postmeta` VALUES (256,94,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (257,95,'_edit_lock','1604776360:1');
INSERT INTO `wp_postmeta` VALUES (258,95,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (259,87,'related_program','a:2:{i:0;s:2:\"92\";i:1;s:2:\"94\";}');
INSERT INTO `wp_postmeta` VALUES (260,87,'_related_program','field_5fa6910cadde1');
INSERT INTO `wp_postmeta` VALUES (261,98,'_edit_lock','1604753169:1');
INSERT INTO `wp_postmeta` VALUES (262,98,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (263,101,'_wp_attached_file','2020/11/nischal-masand-WTeucliaDfQ-unsplash-scaled.jpg');
INSERT INTO `wp_postmeta` VALUES (264,101,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:54:\"2020/11/nischal-masand-WTeucliaDfQ-unsplash-scaled.jpg\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:47:\"nischal-masand-WTeucliaDfQ-unsplash-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:48:\"nischal-masand-WTeucliaDfQ-unsplash-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:47:\"nischal-masand-WTeucliaDfQ-unsplash-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:47:\"nischal-masand-WTeucliaDfQ-unsplash-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:49:\"nischal-masand-WTeucliaDfQ-unsplash-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"2048x2048\";a:4:{s:4:\"file\";s:49:\"nischal-masand-WTeucliaDfQ-unsplash-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:39:\"nischal-masand-WTeucliaDfQ-unsplash.jpg\";}');
INSERT INTO `wp_postmeta` VALUES (265,87,'event_image','101');
INSERT INTO `wp_postmeta` VALUES (266,87,'_event_image','field_5fa697239f690');
INSERT INTO `wp_postmeta` VALUES (267,85,'event_image','');
INSERT INTO `wp_postmeta` VALUES (268,85,'_event_image','field_5fa697239f690');
INSERT INTO `wp_postmeta` VALUES (269,85,'related_program','a:2:{i:0;s:2:\"94\";i:1;s:2:\"93\";}');
INSERT INTO `wp_postmeta` VALUES (270,85,'_related_program','field_5fa6910cadde1');
INSERT INTO `wp_postmeta` VALUES (271,102,'_edit_lock','1604784775:1');
INSERT INTO `wp_postmeta` VALUES (272,102,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,103,'_edit_lock','1604777018:1');
INSERT INTO `wp_postmeta` VALUES (274,103,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (275,104,'_edit_lock','1604791113:1');
INSERT INTO `wp_postmeta` VALUES (276,104,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (277,104,'related_program','a:1:{i:0;s:2:\"92\";}');
INSERT INTO `wp_postmeta` VALUES (278,104,'_related_program','field_5fa6910cadde1');
INSERT INTO `wp_postmeta` VALUES (279,103,'related_program','a:1:{i:0;s:2:\"90\";}');
INSERT INTO `wp_postmeta` VALUES (280,103,'_related_program','field_5fa6910cadde1');
INSERT INTO `wp_postmeta` VALUES (281,102,'related_program','a:1:{i:0;s:2:\"91\";}');
INSERT INTO `wp_postmeta` VALUES (282,102,'_related_program','field_5fa6910cadde1');
INSERT INTO `wp_postmeta` VALUES (283,105,'_edit_lock','1604784677:1');
INSERT INTO `wp_postmeta` VALUES (284,106,'_edit_lock','1604785082:1');
INSERT INTO `wp_postmeta` VALUES (285,107,'_edit_lock','1604785524:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2020-10-30 22:24:17','2020-10-30 22:24:17','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','trash','open','open','','hello-world__trashed','','','2020-11-01 15:23:34','2020-11-01 15:23:34','',0,'http://egettheme.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2020-10-30 22:24:17','2020-10-30 22:24:17','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://egettheme.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2020-10-30 22:24:17','2020-10-30 22:24:17','',0,'http://egettheme.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2020-10-30 22:24:17','2020-10-30 22:24:17','<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://egettheme.local.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->','Privacy Policy','','draft','closed','open','','privacy-policy','','','2020-10-30 22:24:17','2020-10-30 22:24:17','',0,'http://egettheme.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (5,1,'2020-10-30 22:34:18','2020-10-30 22:34:18','<!-- wp:paragraph -->\n<p>testtext</p>\n<!-- /wp:paragraph -->','Test','','publish','open','open','','test','','','2020-10-30 22:34:18','2020-10-30 22:34:18','',0,'http://egettheme.local/?p=5',0,'post','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2020-10-30 22:34:18','2020-10-30 22:34:18','<!-- wp:paragraph -->\n<p>testtext</p>\n<!-- /wp:paragraph -->','Test','','inherit','closed','closed','','5-revision-v1','','','2020-10-30 22:34:18','2020-10-30 22:34:18','',5,'http://egettheme.local/5-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2020-10-30 23:12:03','2020-10-30 23:12:03','<!-- wp:heading {\"level\":3} -->\n<h3>We\'re Goge Africa<br>An E-learning Platform<br>From West Africa</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We are at your call. We serve you always.</p>\n<!-- /wp:paragraph -->','About Us','','publish','closed','closed','','about-us','','','2020-10-30 23:26:45','2020-10-30 23:26:45','',0,'http://egettheme.local/?page_id=7',0,'page','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2020-10-30 23:12:03','2020-10-30 23:12:03','<!-- wp:heading -->\n<h2>We\'re Goge Africa<br>An E-learning Platform<br>From West Africa</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We are at your call. We serve you always.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','7-revision-v1','','','2020-10-30 23:12:03','2020-10-30 23:12:03','',7,'http://egettheme.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (9,1,'2020-10-30 23:13:24','2020-10-30 23:13:24','<!-- wp:heading {\"level\":3} -->\n<h3>Welcome to Our<br>Forever Updated <br>Blog Post</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Be informed! Never miss a single post</p>\n<!-- /wp:paragraph -->','Blog','','publish','closed','closed','','blog','','','2020-11-01 11:20:48','2020-11-01 11:20:48','',0,'http://egettheme.local/?page_id=9',0,'page','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2020-10-30 23:13:24','2020-10-30 23:13:24','<!-- wp:heading -->\n<h2>Welcome to Our<br>Forever Updated <br>Blog Post</h2>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Be informed! Never miss a single post</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','9-revision-v1','','','2020-10-30 23:13:24','2020-10-30 23:13:24','',9,'http://egettheme.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2020-10-30 23:26:45','2020-10-30 23:26:45','<!-- wp:heading {\"level\":3} -->\n<h3>We\'re Goge Africa<br>An E-learning Platform<br>From West Africa</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>We are at your call. We serve you always.</p>\n<!-- /wp:paragraph -->','About Us','','inherit','closed','closed','','7-revision-v1','','','2020-10-30 23:26:45','2020-10-30 23:26:45','',7,'http://egettheme.local/7-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2020-10-31 00:50:03','2020-10-31 00:50:03','','kontroll','','inherit','open','closed','','kontroll','','','2020-10-31 00:50:03','2020-10-31 00:50:03','',0,'http://egettheme.local/wp-content/uploads/2020/10/kontroll.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (13,1,'2020-10-31 19:59:09','2020-10-31 19:59:09','<!-- wp:paragraph -->\n<p>snkadnkjasnjkdasn nhjdfbnvjdf bnjhj bhbcvhgcbhbsd</p>\n<!-- /wp:paragraph -->','Our History','','publish','closed','closed','','our-history','','','2020-10-31 21:58:50','2020-10-31 21:58:50','',7,'http://egettheme.local/?page_id=13',1,'page','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2020-10-31 19:59:09','2020-10-31 19:59:09','<!-- wp:paragraph -->\n<p>snkadnkjasnjkdasn nhjdfbnvjdf bnjhj bhbcvhgcbhbsd</p>\n<!-- /wp:paragraph -->','Our History','','inherit','closed','closed','','13-revision-v1','','','2020-10-31 19:59:09','2020-10-31 19:59:09','',13,'http://egettheme.local/13-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2020-10-31 19:59:48','2020-10-31 19:59:48','<!-- wp:paragraph -->\n<p>vgfbgfv vbcvbcvbc sadas</p>\n<!-- /wp:paragraph -->','Our Goals','','publish','closed','closed','','our-goals','','','2020-10-31 21:57:59','2020-10-31 21:57:59','',7,'http://egettheme.local/?page_id=15',2,'page','',0);
INSERT INTO `wp_posts` VALUES (16,1,'2020-10-31 19:59:48','2020-10-31 19:59:48','<!-- wp:paragraph -->\n<p>vgfbgfv vbcvbcvbc sadas</p>\n<!-- /wp:paragraph -->','Our Goals','','inherit','closed','closed','','15-revision-v1','','','2020-10-31 19:59:48','2020-10-31 19:59:48','',15,'http://egettheme.local/15-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (17,1,'2020-10-31 22:02:25','2020-10-31 22:02:25','<!-- wp:heading {\"level\":3} -->\n<h3>24 hours On Deck Customer Support</h3>\n<!-- /wp:heading -->','Contact Us','','publish','closed','closed','','contact-us','','','2020-10-31 22:06:32','2020-10-31 22:06:32','',0,'http://egettheme.local/?page_id=17',0,'page','',0);
INSERT INTO `wp_posts` VALUES (18,1,'2020-10-31 22:02:19','2020-10-31 22:02:19','<!-- wp:heading -->\n<h2>24 hours On Deck Customer Support</h2>\n<!-- /wp:heading -->','Contact','','inherit','closed','closed','','17-revision-v1','','','2020-10-31 22:02:19','2020-10-31 22:02:19','',17,'http://egettheme.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (19,1,'2020-10-31 22:05:25','2020-10-31 22:05:25','<!-- wp:heading -->\n<h2>24 hours On Deck Customer Support</h2>\n<!-- /wp:heading -->','Contact Us','','inherit','closed','closed','','17-revision-v1','','','2020-10-31 22:05:25','2020-10-31 22:05:25','',17,'http://egettheme.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2020-10-31 22:06:32','2020-10-31 22:06:32','<!-- wp:heading {\"level\":3} -->\n<h3>24 hours On Deck Customer Support</h3>\n<!-- /wp:heading -->','Contact Us','','inherit','closed','closed','','17-revision-v1','','','2020-10-31 22:06:32','2020-10-31 22:06:32','',17,'http://egettheme.local/17-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (21,1,'2020-10-31 22:06:45','2020-10-31 22:06:45','<!-- wp:heading {\"level\":3} -->\n<h3>24 hours On Deck Customer Support</h3>\n<!-- /wp:heading -->','Contact Us','','inherit','closed','closed','','17-autosave-v1','','','2020-10-31 22:06:45','2020-10-31 22:06:45','',17,'http://egettheme.local/17-autosave-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2020-10-31 22:22:24','2020-10-31 22:22:24','','Home','','publish','closed','closed','','home','','','2020-11-01 09:45:15','2020-11-01 09:45:15','',0,'http://egettheme.local/?p=22',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (23,1,'2020-10-31 22:22:24','2020-10-31 22:22:24',' ','','','publish','closed','closed','','23','','','2020-11-01 09:45:15','2020-11-01 09:45:15','',0,'http://egettheme.local/?p=23',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2020-10-31 22:22:25','2020-10-31 22:22:25',' ','','','publish','closed','closed','','26','','','2020-11-01 09:45:15','2020-11-01 09:45:15','',0,'http://egettheme.local/?p=26',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (27,1,'2020-10-31 22:22:25','2020-10-31 22:22:25',' ','','','publish','closed','closed','','27','','','2020-11-01 09:45:15','2020-11-01 09:45:15','',0,'http://egettheme.local/?p=27',5,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (29,1,'2020-10-31 22:35:09','2020-10-31 22:35:09',' ','','','publish','closed','closed','','29','','','2020-10-31 22:35:09','2020-10-31 22:35:09','',0,'http://egettheme.local/?p=29',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2020-10-31 22:35:09','2020-10-31 22:35:09',' ','','','publish','closed','closed','','30','','','2020-10-31 22:35:09','2020-10-31 22:35:09','',0,'http://egettheme.local/?p=30',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (31,1,'2020-10-31 22:35:09','2020-10-31 22:35:09','','Home','','publish','closed','closed','','home-2','','','2020-10-31 22:35:09','2020-10-31 22:35:09','',0,'http://egettheme.local/?p=31',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2020-10-31 22:35:41','2020-10-31 22:35:41',' ','','','publish','closed','closed','','32','','','2020-10-31 22:35:41','2020-10-31 22:35:41','',0,'http://egettheme.local/?p=32',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (33,1,'2020-10-31 22:48:27','2020-10-31 22:48:27','<!-- wp:heading {\"level\":3} -->\n<h3>Courses h3</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Courses','','publish','closed','closed','','courses','','','2020-10-31 22:48:27','2020-10-31 22:48:27','',0,'http://egettheme.local/?page_id=33',0,'page','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2020-10-31 22:48:27','2020-10-31 22:48:27','<!-- wp:heading {\"level\":3} -->\n<h3>Courses h3</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','Courses','','inherit','closed','closed','','33-revision-v1','','','2020-10-31 22:48:27','2020-10-31 22:48:27','',33,'http://egettheme.local/33-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (35,1,'2020-10-31 22:49:06','2020-10-31 22:49:06',' ','','','publish','closed','closed','','35','','','2020-11-01 09:45:15','2020-11-01 09:45:15','',0,'http://egettheme.local/?p=35',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2020-11-01 11:20:48','2020-11-01 11:20:48','<!-- wp:heading {\"level\":3} -->\n<h3>Welcome to Our<br>Forever Updated <br>Blog Post</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Be informed! Never miss a single post</p>\n<!-- /wp:paragraph -->','Blog','','inherit','closed','closed','','9-revision-v1','','','2020-11-01 11:20:48','2020-11-01 11:20:48','',9,'http://egettheme.local/9-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (37,1,'2020-11-01 11:22:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-01 11:22:39','0000-00-00 00:00:00','',0,'http://egettheme.local/?page_id=37',0,'page','',0);
INSERT INTO `wp_posts` VALUES (38,1,'2020-11-01 11:24:30','2020-11-01 11:24:30','','Home','','publish','closed','closed','','home','','','2020-11-01 11:24:30','2020-11-01 11:24:30','',0,'http://egettheme.local/?page_id=38',0,'page','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2020-11-01 11:24:30','2020-11-01 11:24:30','','Home','','inherit','closed','closed','','38-revision-v1','','','2020-11-01 11:24:30','2020-11-01 11:24:30','',38,'http://egettheme.local/38-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2020-11-01 15:23:34','2020-11-01 15:23:34','<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->','Hello world!','','inherit','closed','closed','','1-revision-v1','','','2020-11-01 15:23:34','2020-11-01 15:23:34','',1,'http://egettheme.local/1-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2020-11-01 16:33:11','2020-11-01 16:33:11','<!-- wp:paragraph -->\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Excepturi&nbsp;natus,&nbsp;ducimus&nbsp;vel&nbsp;ullam&nbsp;inventore&nbsp;est,&nbsp;porro,&nbsp;repellat&nbsp;ratione&nbsp;dignissimos&nbsp;eaque&nbsp;ipsa&nbsp;optio&nbsp;quae&nbsp;dolor&nbsp;ab.&nbsp;Libero,&nbsp;id&nbsp;doloremque&nbsp;magnam&nbsp;maxime&nbsp;consequuntur&nbsp;fuga&nbsp;corrupti&nbsp;excepturi&nbsp;ipsum,&nbsp;placeat&nbsp;molestias&nbsp;ipsa&nbsp;aperiam&nbsp;molestiae!</p>\n<!-- /wp:paragraph -->','Ny post med kort','','publish','open','open','','ny-post-med-kort','','','2020-11-01 16:59:36','2020-11-01 16:59:36','',0,'http://egettheme.local/?p=41',0,'post','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2020-11-01 16:33:11','2020-11-01 16:33:11','<!-- wp:paragraph -->\n<p>texttexttext</p>\n<!-- /wp:paragraph -->','Ny post med kort','','inherit','closed','closed','','41-revision-v1','','','2020-11-01 16:33:11','2020-11-01 16:33:11','',41,'http://egettheme.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2020-11-01 16:41:27','2020-11-01 16:41:27','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Excepturi natus, ducimus vel ullam inventore est, porro, repellat ratione dignissimos eaque ipsa optio quae dolor ab. Libero, id doloremque magnam maxime consequuntur fuga corrupti excepturi ipsum, placeat molestias ipsa aperiam molestiae!</p>\n<!-- /wp:paragraph -->','Ny post med kort','','inherit','closed','closed','','41-revision-v1','','','2020-11-01 16:41:27','2020-11-01 16:41:27','',41,'http://egettheme.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2020-11-01 16:59:36','2020-11-01 16:59:36','<!-- wp:paragraph -->\n<p>Lorem&nbsp;ipsum&nbsp;dolor&nbsp;sit,&nbsp;amet&nbsp;consectetur&nbsp;adipisicing&nbsp;elit.&nbsp;Excepturi&nbsp;natus,&nbsp;ducimus&nbsp;vel&nbsp;ullam&nbsp;inventore&nbsp;est,&nbsp;porro,&nbsp;repellat&nbsp;ratione&nbsp;dignissimos&nbsp;eaque&nbsp;ipsa&nbsp;optio&nbsp;quae&nbsp;dolor&nbsp;ab.&nbsp;Libero,&nbsp;id&nbsp;doloremque&nbsp;magnam&nbsp;maxime&nbsp;consequuntur&nbsp;fuga&nbsp;corrupti&nbsp;excepturi&nbsp;ipsum,&nbsp;placeat&nbsp;molestias&nbsp;ipsa&nbsp;aperiam&nbsp;molestiae!</p>\n<!-- /wp:paragraph -->','Ny post med kort','','inherit','closed','closed','','41-revision-v1','','','2020-11-01 16:59:36','2020-11-01 16:59:36','',41,'http://egettheme.local/41-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2020-11-01 17:04:00','2020-11-01 17:04:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia dolorem porro consequatur nemo itaque soluta, fugit officia error iusto provident distinctio fuga similique magni ipsam qui explicabo natus minima facilis obcaecati maiores! Quis, numquam omnis.</p>\n<!-- /wp:paragraph -->','Ny sida för pagination','','publish','open','open','','ny-sida-for-pagination','','','2020-11-01 17:04:00','2020-11-01 17:04:00','',0,'http://egettheme.local/?p=45',0,'post','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2020-11-01 17:04:00','2020-11-01 17:04:00','<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Mollitia dolorem porro consequatur nemo itaque soluta, fugit officia error iusto provident distinctio fuga similique magni ipsam qui explicabo natus minima facilis obcaecati maiores! Quis, numquam omnis.</p>\n<!-- /wp:paragraph -->','Ny sida för pagination','','inherit','closed','closed','','45-revision-v1','','','2020-11-01 17:04:00','2020-11-01 17:04:00','',45,'http://egettheme.local/45-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2020-11-02 22:53:05','2020-11-02 22:53:05','<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!</div>\r\n</div>','Första eventet','Exerpttexten för det här eventet','publish','closed','closed','','forsta-eventet','','','2020-11-05 22:40:03','2020-11-05 22:40:03','',0,'http://egettheme.local/?post_type=event&#038;p=47',0,'event','',0);
INSERT INTO `wp_posts` VALUES (48,1,'2020-11-02 22:53:16','2020-11-02 22:53:16','<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!</div>\r\n</div>','Andra eventet','','publish','closed','closed','','andra-eventet','','','2020-11-05 22:24:26','2020-11-05 22:24:26','',0,'http://egettheme.local/?post_type=event&#038;p=48',0,'event','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2020-11-02 22:53:33','2020-11-02 22:53:33','<div>\r\n<div>Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!</div>\r\n</div>','Tredje eventet','','publish','closed','closed','','tredje-eventet','','','2020-11-05 22:30:17','2020-11-05 22:30:17','',0,'http://egettheme.local/?post_type=event&#038;p=49',0,'event','',0);
INSERT INTO `wp_posts` VALUES (50,1,'2020-11-02 23:02:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-02 23:02:57','0000-00-00 00:00:00','',0,'http://egettheme.local/?post_type=event&p=50',0,'event','',0);
INSERT INTO `wp_posts` VALUES (51,1,'2020-11-02 23:03:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-02 23:03:04','0000-00-00 00:00:00','',0,'http://egettheme.local/?p=51',0,'post','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2020-11-03 10:17:14','2020-11-03 10:17:14','[wpforo]','Forum','','publish','close','close','','community','','','2020-11-03 10:17:14','2020-11-03 10:17:14','',0,'http://egettheme.local/community/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (53,1,'2020-11-03 10:17:14','2020-11-03 10:17:14','','Forums','','publish','closed','closed','','forums','','','2020-11-03 10:17:14','2020-11-03 10:17:14','',0,'http://egettheme.local/forums/',0,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (54,1,'2020-11-03 10:17:14','2020-11-03 10:17:14','','Members','','publish','closed','closed','','members','','','2020-11-03 10:17:14','2020-11-03 10:17:14','',0,'http://egettheme.local/members/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (55,1,'2020-11-03 10:17:14','2020-11-03 10:17:14','','Recent Posts','','publish','closed','closed','','recent-posts','','','2020-11-03 10:17:14','2020-11-03 10:17:14','',0,'http://egettheme.local/recent-posts/',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (56,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','My Profile','','publish','closed','closed','','my-profile','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/my-profile/',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (57,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Account','','publish','closed','closed','','account','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/account/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (58,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Activity','','publish','closed','closed','','activity','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/activity/',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (59,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Subscriptions','','publish','closed','closed','','subscriptions','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/subscriptions/',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (60,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Register','','publish','closed','closed','','register','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/register/',8,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (61,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Login','','publish','closed','closed','','login','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/login/',9,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (62,1,'2020-11-03 10:17:15','2020-11-03 10:17:15','','Logout','','publish','closed','closed','','logout','','','2020-11-03 10:17:15','2020-11-03 10:17:15','',0,'http://egettheme.local/logout/',10,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (63,1,'2020-11-03 10:27:37','2020-11-03 10:27:37','','lucas-ludwig-WL99c-jPzoU-unsplash','','inherit','open','closed','','lucas-ludwig-wl99c-jpzou-unsplash','','','2020-11-03 10:27:37','2020-11-03 10:27:37','',0,'http://egettheme.local/lucas-ludwig-wl99c-jpzou-unsplash/',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (64,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','','Activity','','publish','closed','closed','','activity','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/activity/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','','Members','','publish','closed','closed','','members','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/members/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (66,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','{{poster.name}} replied to one of your updates:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.','[{{{site.name}}}] {{poster.name}} replied to one of your updates','{{poster.name}} replied to one of your updates:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}','publish','closed','closed','','site-name-poster-name-replied-to-one-of-your-updates','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=66',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','{{poster.name}} replied to one of your comments:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{thread.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.','[{{{site.name}}}] {{poster.name}} replied to one of your comments','{{poster.name}} replied to one of your comments:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{thread.url}}}','publish','closed','closed','','site-name-poster-name-replied-to-one-of-your-comments','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=67',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (68,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','{{poster.name}} mentioned you in a status update:\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.','[{{{site.name}}}] {{poster.name}} mentioned you in a status update','{{poster.name}} mentioned you in a status update:\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}','publish','closed','closed','','site-name-poster-name-mentioned-you-in-a-status-update','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=68',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{mentioned.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.','[{{{site.name}}}] {{poster.name}} mentioned you in an update','{{poster.name}} mentioned you in the group \"{{group.name}}\":\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{mentioned.url}}}','publish','closed','closed','','site-name-poster-name-mentioned-you-in-an-update','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=69',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (70,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the <strong>Activate</strong> button:\n<a href=\"{{{activate.url}}}\">{{{activate.url}}}</a>\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}','[{{{site.name}}}] Activate your account','Thanks for registering!\n\nTo complete the activation of your account, go to the following link and click on the \'Activate\' button: {{{activate.url}}}\n\nIf the \'Activation Key\' field is empty, copy and paste the following into the field - {{key}}','publish','closed','closed','','site-name-activate-your-account','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=70',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','<a href=\"{{{initiator.url}}}\">{{initiator.name}}</a> wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: <a href=\"{{{friend-requests.url}}}\">{{{friend-requests.url}}}</a>','[{{{site.name}}}] New friendship request from {{initiator.name}}','{{initiator.name}} wants to add you as a friend.\n\nTo accept this request and manage all of your pending requests, visit: {{{friend-requests.url}}}\n\nTo view {{initiator.name}}\'s profile, visit: {{{initiator.url}}}','publish','closed','closed','','site-name-new-friendship-request-from-initiator-name','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=71',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (72,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','<a href=\"{{{friendship.url}}}\">{{friend.name}}</a> accepted your friend request.','[{{{site.name}}}] {{friend.name}} accepted your friendship request','{{friend.name}} accepted your friend request.\n\nTo learn more about them, visit their profile: {{{friendship.url}}}','publish','closed','closed','','site-name-friend-name-accepted-your-friendship-request','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=72',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','Group details for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; were updated:\n<blockquote>{{changed_text}}</blockquote>','[{{{site.name}}}] Group details updated','Group details for the group \"{{group.name}}\" were updated:\n\n{{changed_text}}\n\nTo view the group, visit: {{{group.url}}}','publish','closed','closed','','site-name-group-details-updated','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=73',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (74,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','<a href=\"{{{inviter.url}}}\">{{inviter.name}}</a> has invited you to join the group: &quot;{{group.name}}&quot;.\n{{invite.message}}\n<a href=\"{{{invites.url}}}\">Go here to accept your invitation</a> or <a href=\"{{{group.url}}}\">visit the group</a> to learn more.','[{{{site.name}}}] You have an invitation to the group: \"{{group.name}}\"','{{inviter.name}} has invited you to join the group: \"{{group.name}}\".\n\nTo accept your invitation, visit: {{{invites.url}}}\n\nTo learn more about the group, visit: {{{group.url}}}.\nTo view {{inviter.name}}\'s profile, visit: {{{inviter.url}}}','publish','closed','closed','','site-name-you-have-an-invitation-to-the-group-group-name','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=74',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','You have been promoted to <b>{{promoted_to}}</b> in the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot;.','[{{{site.name}}}] You have been promoted in the group: \"{{group.name}}\"','You have been promoted to {{promoted_to}} in the group: \"{{group.name}}\".\n\nTo visit the group, go to: {{{group.url}}}','publish','closed','closed','','site-name-you-have-been-promoted-in-the-group-group-name','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=75',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','<a href=\"{{{profile.url}}}\">{{requesting-user.name}}</a> wants to join the group &quot;{{group.name}}&quot;.\n {{request.message}}\n As you are an administrator of this group, you must either accept or reject the membership request.\n\n<a href=\"{{{group-requests.url}}}\">Go here to manage this</a> and all other pending requests.','[{{{site.name}}}] Membership request for group: {{group.name}}','{{requesting-user.name}} wants to join the group \"{{group.name}}\". As you are the administrator of this group, you must either accept or reject the membership request.\n\nTo manage this and all other pending requests, visit: {{{group-requests.url}}}\n\nTo view {{requesting-user.name}}\'s profile, visit: {{{profile.url}}}','publish','closed','closed','','site-name-membership-request-for-group-group-name','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=76',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2020-11-03 11:42:48','2020-11-03 11:42:48','{{sender.name}} sent you a new message: &quot;{{usersubject}}&quot;\n\n<blockquote>&quot;{{usermessage}}&quot;</blockquote>\n\n<a href=\"{{{message.url}}}\">Go to the discussion</a> to reply or catch up on the conversation.','[{{{site.name}}}] New message from {{sender.name}}','{{sender.name}} sent you a new message: \"{{usersubject}}\"\n\n\"{{usermessage}}\"\n\nGo to the discussion to reply or catch up on the conversation: {{{message.url}}}','publish','closed','closed','','site-name-new-message-from-sender-name','','','2020-11-03 11:42:48','2020-11-03 11:42:48','',0,'http://egettheme.local/?post_type=bp-email&p=77',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2020-11-03 11:42:49','2020-11-03 11:42:49','You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, <a href=\"{{{verify.url}}}\">go here to confirm the change</a>.\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.','[{{{site.name}}}] Verify your new email address','You recently changed the email address associated with your account on {{site.name}} to {{user.email}}. If this is correct, go to the following link to confirm the change: {{{verify.url}}}\n\nOtherwise, you can safely ignore and delete this email if you have changed your mind, or if you think you have received this email in error.','publish','closed','closed','','site-name-verify-your-new-email-address','','','2020-11-03 11:42:49','2020-11-03 11:42:49','',0,'http://egettheme.local/?post_type=bp-email&p=78',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2020-11-03 11:42:49','2020-11-03 11:42:49','Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been accepted.','[{{{site.name}}}] Membership request for group \"{{group.name}}\" accepted','Your membership request for the group \"{{group.name}}\" has been accepted.\n\nTo view the group, visit: {{{group.url}}}','publish','closed','closed','','site-name-membership-request-for-group-group-name-accepted','','','2020-11-03 11:42:49','2020-11-03 11:42:49','',0,'http://egettheme.local/?post_type=bp-email&p=79',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2020-11-03 11:42:49','2020-11-03 11:42:49','Your membership request for the group &quot;<a href=\"{{{group.url}}}\">{{group.name}}</a>&quot; has been rejected.','[{{{site.name}}}] Membership request for group \"{{group.name}}\" rejected','Your membership request for the group \"{{group.name}}\" has been rejected.\n\nTo request membership again, visit: {{{group.url}}}','publish','closed','closed','','site-name-membership-request-for-group-group-name-rejected','','','2020-11-03 11:42:49','2020-11-03 11:42:49','',0,'http://egettheme.local/?post_type=bp-email&p=80',0,'bp-email','',0);
INSERT INTO `wp_posts` VALUES (81,1,'2020-11-03 11:44:12','2020-11-03 11:44:12','','Register','','publish','closed','closed','','register','','','2020-11-03 11:44:12','2020-11-03 11:44:12','',0,'http://egettheme.local/register/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2020-11-03 11:44:12','2020-11-03 11:44:12','','Activate','','publish','closed','closed','','activate','','','2020-11-03 11:44:12','2020-11-03 11:44:12','',0,'http://egettheme.local/activate/',0,'page','',0);
INSERT INTO `wp_posts` VALUES (83,1,'2020-11-05 21:53:38','2020-11-05 21:53:38','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Date','event-date','publish','closed','closed','','group_5fa4735810459','','','2020-11-05 22:26:16','2020-11-05 22:26:16','',0,'http://egettheme.local/?post_type=acf-field-group&#038;p=83',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2020-11-05 21:53:38','2020-11-05 21:53:38','a:8:{s:4:\"type\";s:11:\"date_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:14:\"display_format\";s:5:\"m/d/Y\";s:13:\"return_format\";s:5:\"m/d/Y\";s:9:\"first_day\";i:1;}','Event Date','event_date','publish','closed','closed','','field_5fa4736e8bf2c','','','2020-11-05 22:26:16','2020-11-05 22:26:16','',83,'http://egettheme.local/?post_type=acf-field&#038;p=84',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (85,1,'2020-11-05 22:40:46','2020-11-05 22:40:46','Ja jäklar vad det händer grejer....','Fjärde eventet','','publish','closed','closed','','fjarde-eventet','','','2020-11-07 13:31:37','2020-11-07 13:31:37','',0,'http://egettheme.local/?post_type=event&#038;p=85',0,'event','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2020-11-06 23:45:39','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-06 23:45:39','0000-00-00 00:00:00','',0,'http://egettheme.local/?p=86',0,'post','',0);
INSERT INTO `wp_posts` VALUES (87,1,'2020-11-07 00:22:20','2020-11-07 00:22:20','Det här äger rum i januari','Femte eventet','','publish','closed','closed','','femte-eventet','','','2020-11-07 12:52:51','2020-11-07 12:52:51','',0,'http://egettheme.local/?post_type=event&#038;p=87',0,'event','',0);
INSERT INTO `wp_posts` VALUES (88,1,'2020-11-07 10:43:21','2020-11-07 10:43:21','','Past events','','publish','closed','closed','','past-events','','','2020-11-07 10:43:21','2020-11-07 10:43:21','',0,'http://egettheme.local/?page_id=88',0,'page','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2020-11-07 10:43:21','2020-11-07 10:43:21','','Past events','','inherit','closed','closed','','88-revision-v1','','','2020-11-07 10:43:21','2020-11-07 10:43:21','',88,'https://egettheme.local/88-revision-v1/',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2020-11-07 11:52:37','2020-11-07 11:52:37','Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!','Svenska','','publish','closed','closed','','svenska','','','2020-11-07 11:53:08','2020-11-07 11:53:08','',0,'http://egettheme.local/?post_type=program&#038;p=90',0,'program','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2020-11-07 11:53:19','2020-11-07 11:53:19','Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!','Matematik','','publish','closed','closed','','matematik','','','2020-11-07 11:53:19','2020-11-07 11:53:19','',0,'http://egettheme.local/?post_type=program&#038;p=91',0,'program','',0);
INSERT INTO `wp_posts` VALUES (92,1,'2020-11-07 11:53:29','2020-11-07 11:53:29','Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!','Historia','','publish','closed','closed','','historia','','','2020-11-07 11:53:29','2020-11-07 11:53:29','',0,'http://egettheme.local/?post_type=program&#038;p=92',0,'program','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2020-11-07 11:53:37','2020-11-07 11:53:37','Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!','Gymnastik','','publish','closed','closed','','gymnastik','','','2020-11-07 11:53:37','2020-11-07 11:53:37','',0,'http://egettheme.local/?post_type=program&#038;p=93',0,'program','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2020-11-07 11:53:46','2020-11-07 11:53:46','Lorem ipsum dolor sit amet consectetur adipisicing elit. Eum neque deserunt nihil atque fuga temporibus quibusdam deleniti culpa similique tenetur!','Rörlig bild','','publish','closed','closed','','rorlig-bild','','','2020-11-07 11:53:46','2020-11-07 11:53:46','',0,'http://egettheme.local/?post_type=program&#038;p=94',0,'program','',0);
INSERT INTO `wp_posts` VALUES (95,1,'2020-11-07 12:21:15','2020-11-07 12:21:15','a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"professor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Related Program','related-program','publish','closed','closed','','group_5fa690f1c401f','','','2020-11-07 19:14:51','2020-11-07 19:14:51','',0,'http://egettheme.local/?post_type=acf-field-group&#038;p=95',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (96,1,'2020-11-07 12:21:15','2020-11-07 12:21:15','a:12:{s:4:\"type\";s:12:\"relationship\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"program\";}s:8:\"taxonomy\";s:0:\"\";s:7:\"filters\";a:3:{i:0;s:6:\"search\";i:1;s:9:\"post_type\";i:2;s:8:\"taxonomy\";}s:8:\"elements\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";}','Related Program(s)','related_program','publish','closed','closed','','field_5fa6910cadde1','','','2020-11-07 12:26:57','2020-11-07 12:26:57','',95,'http://egettheme.local/?post_type=acf-field&#038;p=96',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (98,1,'2020-11-07 12:47:54','2020-11-07 12:47:54','a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"event\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}','Event Image','event-image','publish','closed','closed','','group_5fa69712a6b84','','','2020-11-07 12:48:29','2020-11-07 12:48:29','',0,'http://egettheme.local/?post_type=acf-field-group&#038;p=98',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (99,1,'2020-11-07 12:47:54','2020-11-07 12:47:54','a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}','Event Image','event_image','publish','closed','closed','','field_5fa697239f690','','','2020-11-07 12:47:54','2020-11-07 12:47:54','',98,'http://egettheme.local/?post_type=acf-field&p=99',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (101,1,'2020-11-07 12:50:50','2020-11-07 12:50:50','','nischal-masand-WTeucliaDfQ-unsplash','','inherit','open','closed','','nischal-masand-wteucliadfq-unsplash','','','2020-11-07 12:50:50','2020-11-07 12:50:50','',87,'http://egettheme.local/wp-content/uploads/2020/11/nischal-masand-WTeucliaDfQ-unsplash.jpg',0,'attachment','image/jpeg',0);
INSERT INTO `wp_posts` VALUES (102,1,'2020-11-07 19:13:30','2020-11-07 19:13:30','<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis nisi adipisci maiores quidem facilis similique reiciendis quibusdam quaerat illo! Laborum consectetur maiores dolor ullam impedit officiis qui aperiam nostrum illo?</div>\r\n</div>','Lasse Matte','','publish','closed','closed','','lasse-matte','','','2020-11-07 19:22:20','2020-11-07 19:22:20','',0,'http://egettheme.local/?post_type=professor&#038;p=102',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2020-11-07 19:13:43','2020-11-07 19:13:43','<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis nisi adipisci maiores quidem facilis similique reiciendis quibusdam quaerat illo! Laborum consectetur maiores dolor ullam impedit officiis qui aperiam nostrum illo?</div>\r\n</div>','Ozze Svenska','','publish','closed','closed','','ozze-svenska','','','2020-11-07 19:16:52','2020-11-07 19:16:52','',0,'http://egettheme.local/?post_type=professor&#038;p=103',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2020-11-07 19:14:25','2020-11-07 19:14:25','<div>\r\n<div>Lorem ipsum dolor, sit amet consectetur adipisicing elit. Omnis nisi adipisci maiores quidem facilis similique reiciendis quibusdam quaerat illo! Laborum consectetur maiores dolor ullam impedit officiis qui aperiam nostrum illo?</div>\r\n</div>','Ozze Historia','','publish','closed','closed','','ozze-historia','','','2020-11-07 19:25:44','2020-11-07 19:25:44','',0,'http://egettheme.local/?post_type=professor&#038;p=104',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2020-11-07 21:33:10','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2020-11-07 21:33:10','0000-00-00 00:00:00','',0,'http://egettheme.local/?p=105',0,'post','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2020-11-07 21:36:01','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-07 21:36:01','0000-00-00 00:00:00','',0,'http://egettheme.local/?post_type=professor&p=106',0,'professor','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2020-11-07 21:39:04','0000-00-00 00:00:00','','Auto Draft','','auto-draft','closed','closed','','','','','2020-11-07 21:39:04','0000-00-00 00:00:00','',0,'http://egettheme.local/?post_type=professor&p=107',0,'professor','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_signups`
--

DROP TABLE IF EXISTS `wp_signups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_signups` (
  `signup_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `domain` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_key` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `meta` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`signup_id`),
  KEY `activation_key` (`activation_key`),
  KEY `user_email` (`user_email`),
  KEY `user_login_email` (`user_login`,`user_email`),
  KEY `domain_path` (`domain`(140),`path`(51))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_signups`
--

LOCK TABLES `wp_signups` WRITE;
/*!40000 ALTER TABLE `wp_signups` DISABLE KEYS */;
INSERT INTO `wp_signups` VALUES (1,'','','','Gymnastik','jakob_gauffin@hotmail.com','2020-11-03 11:48:56','2020-11-03 14:50:08',1,'OU1jnMjNWvXamzHsQqxaxMtTMXEZutbS','a:3:{s:7:\"field_1\";s:1:\"J\";s:17:\"profile_field_ids\";s:1:\"1\";s:8:\"password\";s:34:\"$P$BtgNa4Zg9R6ujnnnjD.H.Z8NxynvYa/\";}');
INSERT INTO `wp_signups` VALUES (2,'','','','Gympa','jakob_gauffin@hotmail.com','2020-11-03 15:58:44','0000-00-00 00:00:00',0,'d82RiT9RNtSNmVjWGUKW78W4ROgxklpI','a:3:{s:7:\"field_1\";s:3:\"Gym\";s:17:\"profile_field_ids\";s:1:\"1\";s:8:\"password\";s:34:\"$P$BM2D2geNG1lBs/Yxx6wjyH6kUmREg9.\";}');
/*!40000 ALTER TABLE `wp_signups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
INSERT INTO `wp_term_relationships` VALUES (1,1,0);
INSERT INTO `wp_term_relationships` VALUES (5,1,0);
INSERT INTO `wp_term_relationships` VALUES (22,2,0);
INSERT INTO `wp_term_relationships` VALUES (23,2,0);
INSERT INTO `wp_term_relationships` VALUES (26,2,0);
INSERT INTO `wp_term_relationships` VALUES (27,2,0);
INSERT INTO `wp_term_relationships` VALUES (29,3,0);
INSERT INTO `wp_term_relationships` VALUES (30,3,0);
INSERT INTO `wp_term_relationships` VALUES (31,3,0);
INSERT INTO `wp_term_relationships` VALUES (32,4,0);
INSERT INTO `wp_term_relationships` VALUES (35,2,0);
INSERT INTO `wp_term_relationships` VALUES (41,1,0);
INSERT INTO `wp_term_relationships` VALUES (41,5,0);
INSERT INTO `wp_term_relationships` VALUES (41,6,0);
INSERT INTO `wp_term_relationships` VALUES (45,1,0);
INSERT INTO `wp_term_relationships` VALUES (53,7,0);
INSERT INTO `wp_term_relationships` VALUES (54,7,0);
INSERT INTO `wp_term_relationships` VALUES (55,7,0);
INSERT INTO `wp_term_relationships` VALUES (56,7,0);
INSERT INTO `wp_term_relationships` VALUES (57,7,0);
INSERT INTO `wp_term_relationships` VALUES (58,7,0);
INSERT INTO `wp_term_relationships` VALUES (59,7,0);
INSERT INTO `wp_term_relationships` VALUES (60,7,0);
INSERT INTO `wp_term_relationships` VALUES (61,7,0);
INSERT INTO `wp_term_relationships` VALUES (62,7,0);
INSERT INTO `wp_term_relationships` VALUES (66,8,0);
INSERT INTO `wp_term_relationships` VALUES (67,9,0);
INSERT INTO `wp_term_relationships` VALUES (68,10,0);
INSERT INTO `wp_term_relationships` VALUES (69,11,0);
INSERT INTO `wp_term_relationships` VALUES (70,12,0);
INSERT INTO `wp_term_relationships` VALUES (71,13,0);
INSERT INTO `wp_term_relationships` VALUES (72,14,0);
INSERT INTO `wp_term_relationships` VALUES (73,15,0);
INSERT INTO `wp_term_relationships` VALUES (74,16,0);
INSERT INTO `wp_term_relationships` VALUES (75,17,0);
INSERT INTO `wp_term_relationships` VALUES (76,18,0);
INSERT INTO `wp_term_relationships` VALUES (77,19,0);
INSERT INTO `wp_term_relationships` VALUES (78,20,0);
INSERT INTO `wp_term_relationships` VALUES (79,21,0);
INSERT INTO `wp_term_relationships` VALUES (80,22,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,5);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'nav_menu','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','Gillar att lära mig om WP',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (7,7,'nav_menu','',0,10);
INSERT INTO `wp_term_taxonomy` VALUES (8,8,'bp-email-type','A member has replied to an activity update that the recipient posted.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'bp-email-type','A member has replied to a comment on an activity update that the recipient posted.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'bp-email-type','Recipient was mentioned in an activity update.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (11,11,'bp-email-type','Recipient was mentioned in a group activity update.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (12,12,'bp-email-type','Recipient has registered for an account.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (13,13,'bp-email-type','A member has sent a friend request to the recipient.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (14,14,'bp-email-type','Recipient has had a friend request accepted by a member.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (15,15,'bp-email-type','A group\'s details were updated.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (16,16,'bp-email-type','A member has sent a group invitation to the recipient.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (17,17,'bp-email-type','Recipient\'s status within a group has changed.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (18,18,'bp-email-type','A member has requested permission to join a group.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (19,19,'bp-email-type','Recipient has received a private message.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (20,20,'bp-email-type','Recipient has changed their email address.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (21,21,'bp-email-type','Recipient had requested to join a group, which was accepted.',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (22,22,'bp-email-type','Recipient had requested to join a group, which was rejected.',0,1);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'Header Menu','header-menu',0);
INSERT INTO `wp_terms` VALUES (3,'Footer Menu 1','footer-menu-1',0);
INSERT INTO `wp_terms` VALUES (4,'Footer Menu 3','footer-menu-3',0);
INSERT INTO `wp_terms` VALUES (5,'Test','test',0);
INSERT INTO `wp_terms` VALUES (6,'WP','wp',0);
INSERT INTO `wp_terms` VALUES (7,'wpForo Navigation','wpforo-navigation',0);
INSERT INTO `wp_terms` VALUES (8,'activity-comment','activity-comment',0);
INSERT INTO `wp_terms` VALUES (9,'activity-comment-author','activity-comment-author',0);
INSERT INTO `wp_terms` VALUES (10,'activity-at-message','activity-at-message',0);
INSERT INTO `wp_terms` VALUES (11,'groups-at-message','groups-at-message',0);
INSERT INTO `wp_terms` VALUES (12,'core-user-registration','core-user-registration',0);
INSERT INTO `wp_terms` VALUES (13,'friends-request','friends-request',0);
INSERT INTO `wp_terms` VALUES (14,'friends-request-accepted','friends-request-accepted',0);
INSERT INTO `wp_terms` VALUES (15,'groups-details-updated','groups-details-updated',0);
INSERT INTO `wp_terms` VALUES (16,'groups-invitation','groups-invitation',0);
INSERT INTO `wp_terms` VALUES (17,'groups-member-promoted','groups-member-promoted',0);
INSERT INTO `wp_terms` VALUES (18,'groups-membership-request','groups-membership-request',0);
INSERT INTO `wp_terms` VALUES (19,'messages-unread','messages-unread',0);
INSERT INTO `wp_terms` VALUES (20,'settings-verify-email-change','settings-verify-email-change',0);
INSERT INTO `wp_terms` VALUES (21,'groups-membership-request-accepted','groups-membership-request-accepted',0);
INSERT INTO `wp_terms` VALUES (22,'groups-membership-request-rejected','groups-membership-request-rejected',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','jakob');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','Text om mig');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','sunrise');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','plugin_editor_notice');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:5:{s:64:\"19afb34d5ccf871935864e3994418f87fadf418274f1c46be3a293f18c2888d2\";a:4:{s:10:\"expiration\";i:1605308966;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.111 Safari/537.36\";s:5:\"login\";i:1604099366;}s:64:\"f00c40cec14e66714f188daabce69c5f8c310d6540014be86c9ffdc2ca1ef8ca\";a:4:{s:10:\"expiration\";i:1604783777;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604610977;}s:64:\"bbf5076aa9b8c5ac27569025967c6b13696d1a819e6e5b776177fb835a697173\";a:4:{s:10:\"expiration\";i:1604879138;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604706338;}s:64:\"a3eed374210d0b2dc8f1e9932bed9cdc5aeae2b06882102f1a7a1539481c990c\";a:4:{s:10:\"expiration\";i:1604924116;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/86.0.4240.183 Safari/537.36\";s:5:\"login\";i:1604751316;}s:64:\"0c28f434a635a0ed7aa3409a78e6a8a9ed85be9499b5bae51713e5c6538e71f0\";a:4:{s:10:\"expiration\";i:1604949143;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:82.0) Gecko/20100101 Firefox/82.0\";s:5:\"login\";i:1604776343;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','86');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','2');
INSERT INTO `wp_usermeta` VALUES (21,1,'community-events-location','a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'wpf_read_topics','a:3:{i:1;s:1:\"2\";i:2;s:1:\"4\";i:3;s:1:\"5\";}');
INSERT INTO `wp_usermeta` VALUES (26,1,'wpf_read_forums','a:4:{i:5;s:1:\"2\";i:4;s:1:\"2\";i:2;s:1:\"4\";i:1;s:1:\"4\";}');
INSERT INTO `wp_usermeta` VALUES (28,1,'last_activity','2020-11-03 15:56:24');
INSERT INTO `wp_usermeta` VALUES (84,4,'nickname','Gympish');
INSERT INTO `wp_usermeta` VALUES (85,4,'first_name','');
INSERT INTO `wp_usermeta` VALUES (86,4,'last_name','');
INSERT INTO `wp_usermeta` VALUES (87,4,'description','');
INSERT INTO `wp_usermeta` VALUES (88,4,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (89,4,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (90,4,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (91,4,'admin_color','fresh');
INSERT INTO `wp_usermeta` VALUES (92,4,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (93,4,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (94,4,'locale','');
INSERT INTO `wp_usermeta` VALUES (95,4,'wp_capabilities','a:1:{s:10:\"subscriber\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (96,4,'wp_user_level','0');
INSERT INTO `wp_usermeta` VALUES (97,4,'default_password_nag','1');
INSERT INTO `wp_usermeta` VALUES (101,1,'meta-box-order_event','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:43:\"acf-group_5fa4735810459,postexcerpt,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (102,1,'screen_layout_event','2');
INSERT INTO `wp_usermeta` VALUES (103,1,'closedpostboxes_event','a:1:{i:0;s:11:\"postexcerpt\";}');
INSERT INTO `wp_usermeta` VALUES (104,1,'metaboxhidden_event','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (108,1,'wp_user-settings','libraryContent=browse&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (109,1,'wp_user-settings-time','1604784830');
INSERT INTO `wp_usermeta` VALUES (110,1,'_wpf_member_obj','a:55:{s:2:\"ID\";s:1:\"1\";s:10:\"user_login\";s:5:\"Jakob\";s:9:\"user_pass\";s:34:\"$P$B/xr7oTY55w4.xM1No6Z.5vLogWmY01\";s:13:\"user_nicename\";s:5:\"jakob\";s:10:\"user_email\";s:24:\"dev-email@flywheel.local\";s:8:\"user_url\";s:22:\"http://egettheme.local\";s:15:\"user_registered\";s:19:\"2020-10-30 22:24:17\";s:19:\"user_activation_key\";s:0:\"\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:5:\"Jakob\";s:6:\"userid\";s:1:\"1\";s:5:\"title\";s:6:\"Member\";s:8:\"username\";s:5:\"Jakob\";s:7:\"groupid\";s:1:\"1\";s:5:\"posts\";s:1:\"4\";s:9:\"questions\";s:1:\"0\";s:7:\"answers\";s:1:\"0\";s:8:\"comments\";s:1:\"0\";s:4:\"site\";s:22:\"http://egettheme.local\";s:3:\"icq\";s:0:\"\";s:3:\"aim\";s:0:\"\";s:5:\"yahoo\";s:0:\"\";s:3:\"msn\";s:0:\"\";s:8:\"facebook\";s:0:\"\";s:7:\"twitter\";s:0:\"\";s:5:\"gtalk\";s:0:\"\";s:5:\"skype\";s:0:\"\";s:6:\"avatar\";s:63:\"//egettheme.local/wp-content/uploads/wpforo/avatars/jakob_1.jpg\";s:9:\"signature\";s:0:\"\";s:5:\"about\";s:11:\"Text om mig\";s:10:\"occupation\";s:0:\"\";s:8:\"location\";s:0:\"\";s:10:\"last_login\";s:19:\"2020-11-07 19:12:23\";s:11:\"online_time\";s:10:\"1604759009\";s:4:\"rank\";s:1:\"0\";s:4:\"like\";s:1:\"0\";s:6:\"status\";s:6:\"active\";s:8:\"timezone\";s:0:\"\";s:18:\"is_email_confirmed\";s:1:\"0\";s:16:\"secondary_groups\";s:0:\"\";s:6:\"fields\";N;s:4:\"name\";s:5:\"Admin\";s:4:\"cans\";s:645:\"a:35:{s:2:\"mf\";s:1:\"1\";s:2:\"ms\";s:1:\"1\";s:2:\"mt\";s:1:\"1\";s:2:\"mp\";s:1:\"1\";s:3:\"mth\";s:1:\"1\";s:2:\"vm\";s:1:\"1\";s:3:\"aum\";s:1:\"1\";s:2:\"em\";s:1:\"1\";s:3:\"vmg\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"1\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}\";s:11:\"description\";s:0:\"\";s:6:\"utitle\";s:5:\"Admin\";s:4:\"role\";s:13:\"administrator\";s:6:\"access\";s:4:\"full\";s:5:\"color\";s:7:\"#FF3333\";s:7:\"visible\";s:1:\"1\";s:9:\"secondary\";s:1:\"0\";s:9:\"groupname\";s:5:\"Admin\";s:11:\"profile_url\";s:47:\"http://egettheme.local/community/profile/jakob/\";s:4:\"stat\";a:14:{s:6:\"points\";i:4;s:6:\"rating\";d:0;s:14:\"rating_procent\";i:0;s:5:\"color\";s:7:\"#d2d2d2\";s:5:\"badge\";s:16:\"far fa-star-half\";s:5:\"posts\";i:4;s:6:\"topics\";i:2;s:9:\"questions\";i:0;s:7:\"answers\";i:0;s:17:\"question_comments\";i:0;s:5:\"likes\";i:0;s:5:\"liked\";i:0;s:5:\"title\";s:10:\"New Member\";s:4:\"rank\";i:0;}s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (111,1,'edit_post_per_page','20');
INSERT INTO `wp_usermeta` VALUES (112,1,'meta-box-order_professor','a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:31:\"acf-group_5fa690f1c401f,slugdiv\";s:8:\"advanced\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (113,1,'screen_layout_professor','2');
INSERT INTO `wp_usermeta` VALUES (114,1,'closedpostboxes_professor','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (115,1,'metaboxhidden_professor','a:1:{i:0;s:7:\"slugdiv\";}');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'Jakob','$P$B/xr7oTY55w4.xM1No6Z.5vLogWmY01','jakob','dev-email@flywheel.local','http://egettheme.local','2020-10-30 22:24:17','',0,'Jakob');
INSERT INTO `wp_users` VALUES (4,'Gympish','$P$BsNqMBzfYJFNsVSYIQQWNu4c4xIMy1/','gympish','jakob_gauffin@hotmail.com','','2020-11-03 16:04:03','1604419443:$P$B6E/LUzUNLOfCkLlJibRaJMqEJBzMF.',0,'Gympish');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_accesses`
--

DROP TABLE IF EXISTS `wp_wpforo_accesses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_accesses` (
  `accessid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `access` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cans` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'forum permissions',
  PRIMARY KEY (`accessid`),
  UNIQUE KEY `access` (`access`(191))
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_accesses`
--

LOCK TABLES `wp_wpforo_accesses` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_accesses` DISABLE KEYS */;
INSERT INTO `wp_wpforo_accesses` VALUES (1,'no_access','No access','a:36:{s:2:\"vf\";i:0;s:2:\"ct\";i:0;s:2:\"vt\";i:0;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:0;s:3:\"ocr\";i:0;s:2:\"vr\";i:0;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:0;s:3:\"eot\";i:0;s:3:\"eor\";i:0;s:3:\"dot\";i:0;s:3:\"dor\";i:0;s:2:\"sb\";i:0;s:1:\"l\";i:0;s:1:\"r\";i:0;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:0;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:0;s:1:\"v\";i:0;s:1:\"a\";i:0;s:2:\"va\";i:0;s:2:\"at\";i:0;s:3:\"oat\";i:0;s:3:\"aot\";i:0;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:0;s:3:\"cvp\";i:0;s:4:\"cvpr\";i:0;}');
INSERT INTO `wp_wpforo_accesses` VALUES (2,'read_only','Read only access','a:36:{s:2:\"vf\";i:1;s:2:\"ct\";i:0;s:2:\"vt\";i:1;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:0;s:3:\"ocr\";i:0;s:2:\"vr\";i:1;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:0;s:3:\"eot\";i:0;s:3:\"eor\";i:0;s:3:\"dot\";i:0;s:3:\"dor\";i:0;s:2:\"sb\";i:1;s:1:\"l\";i:0;s:1:\"r\";i:0;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:0;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:0;s:1:\"v\";i:0;s:1:\"a\";i:0;s:2:\"va\";i:1;s:2:\"at\";i:0;s:3:\"oat\";i:0;s:3:\"aot\";i:0;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:0;s:3:\"cvp\";i:0;s:4:\"cvpr\";i:1;}');
INSERT INTO `wp_wpforo_accesses` VALUES (3,'standard','Standard access','a:36:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:0;s:2:\"dt\";i:0;s:2:\"cr\";i:1;s:3:\"ocr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:0;s:2:\"dr\";i:0;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:0;s:2:\"au\";i:0;s:1:\"p\";i:0;s:2:\"op\";i:1;s:2:\"vp\";i:0;s:2:\"sv\";i:0;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:0;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:0;s:2:\"mt\";i:0;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}');
INSERT INTO `wp_wpforo_accesses` VALUES (4,'moderator','Moderator access','a:36:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:1;s:2:\"dt\";i:1;s:2:\"cr\";i:1;s:3:\"ocr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:1;s:2:\"dr\";i:1;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:1;s:2:\"au\";i:1;s:1:\"p\";i:1;s:2:\"op\";i:1;s:2:\"vp\";i:1;s:2:\"sv\";i:1;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:1;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:1;s:2:\"mt\";i:1;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}');
INSERT INTO `wp_wpforo_accesses` VALUES (5,'full','Full access','a:36:{s:2:\"vf\";i:1;s:2:\"ct\";i:1;s:2:\"vt\";i:1;s:2:\"et\";i:1;s:2:\"dt\";i:1;s:2:\"cr\";i:1;s:3:\"ocr\";i:1;s:2:\"vr\";i:1;s:2:\"er\";i:1;s:2:\"dr\";i:1;s:3:\"tag\";i:1;s:3:\"eot\";i:1;s:3:\"eor\";i:1;s:3:\"dot\";i:1;s:3:\"dor\";i:1;s:2:\"sb\";i:1;s:1:\"l\";i:1;s:1:\"r\";i:1;s:1:\"s\";i:1;s:2:\"au\";i:1;s:1:\"p\";i:1;s:2:\"op\";i:1;s:2:\"vp\";i:1;s:2:\"sv\";i:1;s:3:\"osv\";i:1;s:1:\"v\";i:1;s:1:\"a\";i:1;s:2:\"va\";i:1;s:2:\"at\";i:1;s:3:\"oat\";i:1;s:3:\"aot\";i:1;s:3:\"cot\";i:1;s:2:\"mt\";i:1;s:3:\"ccp\";i:1;s:3:\"cvp\";i:1;s:4:\"cvpr\";i:1;}');
/*!40000 ALTER TABLE `wp_wpforo_accesses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_activity`
--

DROP TABLE IF EXISTS `wp_wpforo_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_activity` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `itemid` bigint(20) unsigned NOT NULL,
  `itemtype` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `itemid_second` bigint(20) unsigned NOT NULL DEFAULT '0',
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(70) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date` int(10) unsigned NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_520_ci,
  `permalink` varchar(1024) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `new` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `type_objid_objtype` (`type`,`itemid`,`itemtype`),
  KEY `type_objid_objtype_userid` (`type`,`itemid`,`itemtype`,`userid`),
  KEY `itemtype_userid_new` (`itemtype`,`userid`,`new`),
  KEY `date` (`date`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_activity`
--

LOCK TABLES `wp_wpforo_activity` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_activity` DISABLE KEYS */;
INSERT INTO `wp_wpforo_activity` VALUES (1,'new_reply',2,'alert',2,1,'','',1604415120,'RE: Betalideer','http://egettheme.local/community/payment-methods/betalideer/#post-2',1);
/*!40000 ALTER TABLE `wp_wpforo_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_forums`
--

DROP TABLE IF EXISTS `wp_wpforo_forums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_forums` (
  `forumid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_520_ci,
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `icon` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_topicid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_postid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_userid` int(10) unsigned NOT NULL DEFAULT '0',
  `last_post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `topics` int(11) NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_520_ci,
  `meta_key` text COLLATE utf8mb4_unicode_520_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_520_ci,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_cat` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `cat_layout` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `order` int(10) unsigned NOT NULL DEFAULT '0',
  `color` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`forumid`),
  UNIQUE KEY `UNIQUE SLUG` (`slug`(191)),
  KEY `order` (`order`),
  KEY `status` (`status`),
  KEY `parentid` (`parentid`),
  KEY `last_postid` (`last_postid`),
  KEY `is_cat` (`is_cat`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_forums`
--

LOCK TABLES `wp_wpforo_forums` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_forums` DISABLE KEYS */;
INSERT INTO `wp_wpforo_forums` VALUES (1,'Wp discussion main category','main-category','This is a simple category / section',0,'fas fa-comments',2,4,2,'2020-11-03 14:58:44',0,0,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,1,4,4,'#666666');
INSERT INTO `wp_wpforo_forums` VALUES (2,'Wp plugins','main-forum','This is a simple parent forum',1,'fas fa-comments',2,4,2,'2020-11-03 14:58:44',1,2,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,0,4,5,'#666666');
INSERT INTO `wp_wpforo_forums` VALUES (3,'Wp themes','wp-themes','Here we talk themes',1,'fas fa-comments',0,0,0,'0000-00-00 00:00:00',0,0,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,0,4,6,'#A9A923');
INSERT INTO `wp_wpforo_forums` VALUES (4,'Woo commerce','woo-commerce','',0,'fas fa-comments',1,2,2,'2020-11-03 14:52:00',0,0,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,1,1,1,'#5252FC');
INSERT INTO `wp_wpforo_forums` VALUES (5,'Payment methods','payment-methods','betalmetoder',4,'fas fa-comments',1,2,2,'2020-11-03 14:52:00',1,2,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,0,1,2,'#0C5406');
INSERT INTO `wp_wpforo_forums` VALUES (6,'Woo commerce themes','woo-commerce-themes','teman',4,'fas fa-comments',0,0,0,'0000-00-00 00:00:00',0,0,'a:5:{i:1;s:4:\"full\";i:2;s:9:\"moderator\";i:3;s:8:\"standard\";i:4;s:9:\"read_only\";i:5;s:8:\"standard\";}','','',1,0,1,3,'#F931FA');
/*!40000 ALTER TABLE `wp_wpforo_forums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_languages`
--

DROP TABLE IF EXISTS `wp_wpforo_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_languages` (
  `langid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`langid`),
  UNIQUE KEY `UNIQUE language name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_languages`
--

LOCK TABLES `wp_wpforo_languages` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_languages` DISABLE KEYS */;
INSERT INTO `wp_wpforo_languages` VALUES (1,'English');
/*!40000 ALTER TABLE `wp_wpforo_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_likes`
--

DROP TABLE IF EXISTS `wp_wpforo_likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_likes` (
  `likeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `postid` int(10) unsigned NOT NULL,
  `post_userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`likeid`),
  UNIQUE KEY `userid` (`userid`,`postid`),
  KEY `post_userid` (`post_userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_likes`
--

LOCK TABLES `wp_wpforo_likes` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_phrases`
--

DROP TABLE IF EXISTS `wp_wpforo_phrases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_phrases` (
  `phraseid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `langid` int(10) unsigned NOT NULL,
  `phrase_key` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `phrase_value` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'wpforo',
  PRIMARY KEY (`phraseid`),
  UNIQUE KEY `lng_and_key_uniq` (`langid`,`phrase_key`(191)),
  KEY `langid` (`langid`),
  KEY `phrase_key` (`phrase_key`(191))
) ENGINE=MyISAM AUTO_INCREMENT=705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_phrases`
--

LOCK TABLES `wp_wpforo_phrases` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_phrases` DISABLE KEYS */;
INSERT INTO `wp_wpforo_phrases` VALUES (1,1,'%s and %s liked','%s and %s liked','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (2,1,'%s liked','%s liked','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (3,1,'%s, %s and %s liked','%s, %s and %s liked','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (4,1,'%s, %s, %s and %d people liked','%s, %s, %s and %d people liked','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (5,1,'AOL IM','AOL IM','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (6,1,'About Me','About Me','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (7,1,'Access add error','Access add error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (8,1,'Access delete error','Access delete error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (9,1,'Access edit error','Access edit error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (10,1,'Access successfully deleted','Access successfully deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (11,1,'Account','Account','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (12,1,'Activity','Activity','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (13,1,'Add Topic error: No forum selected','Add Topic error: No forum selected','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (14,1,'Add a comment','Add a comment','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (15,1,'Add topic','Add topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (16,1,'All Checked topics successfully deleted','All Checked topics successfully deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (17,1,'Answer','Answer','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (18,1,'Answer to','Answer to','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (19,1,'Answers','Answers','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (20,1,'Any Date','Any Date','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (21,1,'Ascending order','Ascending order','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (22,1,'Attach file:','Attach file:','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (23,1,'Avatar','Avatar','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (24,1,'Can\'t add forum','Can\'t add forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (25,1,'Can\'t add new language','Can\'t add new language','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (26,1,'Can\'t delete this Usergroup','Can\'t delete this Usergroup','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (27,1,'Can\'t send confirmation email','Can\'t send confirmation email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (28,1,'Can\'t send report email','Can\'t send report email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (29,1,'Can\'t subscribe to this item','Can\'t subscribe to this item','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (30,1,'Can\'t write a post: This topic is closed','Can\'t write a post: This topic is closed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (31,1,'Can`t upload file','Can`t upload file','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (32,1,'Cannot update forum hierarchy','Cannot update forum hierarchy','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (33,1,'Cannot update post data','Cannot update post data','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (34,1,'Change password','Change password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (35,1,'Choose Target Forum','Choose Target Forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (36,1,'Comments','Comments','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (37,1,'Confirm my subscription','Confirm my subscription','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (38,1,'Could not be unsubscribe from this item','Could not be unsubscribe from this item','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (39,1,'Date','Date','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (40,1,'Delete','Delete','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (41,1,'Descending order','Descending order','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (42,1,'Display Name','Display Name','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (43,1,'Edit','Edit','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (44,1,'Edited: ','Edited: ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (45,1,'Email','Email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (46,1,'Email address exists. Please insert another.','Email address exists. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (47,1,'Enter title here','Enter title here','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (48,1,'Error: Forum is not found','Error: Forum is not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (49,1,'Error: No topic selected','Error: No topic selected','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (50,1,'Error: Topic is not found','Error: Topic is not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (51,1,'Error: please insert some text to report.','Error: please insert some text to report.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (52,1,'Facebook','Facebook','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (53,1,'Failed to write file to disk','Failed to write file to disk','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (54,1,'Features successfully updated','Features successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (55,1,'Features successfully updated, but previous value not changed','Features successfully updated, but previous value not changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (56,1,'File type is not allowed','File type is not allowed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (57,1,'File upload stopped by extension','File upload stopped by extension','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (58,1,'Find Posts by User','Find Posts by User','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (59,1,'Find Topics Started by User','Find Topics Started by User','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (60,1,'First post and replies','First post and replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (61,1,'Forum','Forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (62,1,'Forum - Login','Forum - Login','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (63,1,'Forum - Page Not Found','Forum - Page Not Found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (64,1,'Forum - Registration','Forum - Registration','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (65,1,'Forum Base URL successfully updated','Forum Base URL successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (66,1,'Forum Home','Forum Home','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (67,1,'Forum Members','Forum Members','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (68,1,'Forum Profile','Forum Profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (69,1,'Forum RSS Feed','Forum RSS Feed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (70,1,'Forum Statistics','Forum Statistics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (71,1,'Forum deleting error','Forum deleting error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (72,1,'Forum hierarchy successfully updated','Forum hierarchy successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (73,1,'Forum is empty','Forum is empty','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (74,1,'Forum is successfully merged','Forum is successfully merged','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (75,1,'Forum merging error','Forum merging error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (76,1,'Forum options successfully updated','Forum options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (77,1,'Forum options successfully updated, but previous value not changed','Forum options successfully updated, but previous value not changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (78,1,'Forum successfully updated','Forum successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (79,1,'Forum update error','Forum update error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (80,1,'Forums','Forums','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (81,1,'General options successfully updated','General options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (82,1,'Group','Group','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (83,1,'Google+','Google+','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (84,1,'Guest','Guest','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (85,1,'ICQ','ICQ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (86,1,'Illegal character in username.','Illegal character in username.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (87,1,'Insert member name or email','Insert member name or email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (88,1,'Insert your Email address.','Insert your Email address.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (89,1,'Invalid Email address','Invalid Email address','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (90,1,'Invalid request!','Invalid request!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (91,1,'Joined','Joined','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (92,1,'Last 24 hours','Last 24 hours','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (93,1,'Last 3 Months','Last 3 Months','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (94,1,'Last 6 Months','Last 6 Months','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (95,1,'Last Active','Last Active','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (96,1,'Last Month','Last Month','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (97,1,'Last Post','Last Post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (98,1,'Last Post Info','Last Post Info','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (99,1,'Last Week','Last Week','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (100,1,'Last Year ago','Last Year ago','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (101,1,'Last post by %s','Last post by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (102,1,'Latest Post','Latest Post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (103,1,'Leave a reply','Leave a reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (104,1,'Length must be between 3 characters and 15 characters.','Length must be between 3 characters and 15 characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (105,1,'Liked','Liked','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (106,1,'Location','Location','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (107,1,'Login','Login','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (108,1,'Logout','Logout','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (109,1,'Lost your password?','Lost your password?','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (110,1,'MSN','MSN','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (111,1,'Maximum allowed file size is','Maximum allowed file size is','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (112,1,'Member Activity','Member Activity','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (113,1,'Member Information','Member Information','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (114,1,'Member Rating','Member Rating','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (115,1,'Member Rating Badge','Member Rating Badge','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (116,1,'Member options successfully updated','Member options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (117,1,'Member options successfully updated, but previous value not changed','Member options successfully updated, but previous value not changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (118,1,'Members','Members','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (119,1,'Members not found','Members not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (120,1,'Message has been sent','Message has been sent','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (121,1,'Messages','Messages','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (122,1,'Missing a temporary folder','Missing a temporary folder','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (123,1,'Move','Move','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (124,1,'Move Topic','Move Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (125,1,'Must be minimum 6 characters.','Must be minimum 6 characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (126,1,'My Profile','My Profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (127,1,'New language successfully added and changed wpforo language to new language','New language successfully added and changed wpforo language to new language','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (128,1,'No Posts found for update','No Posts found for update','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (129,1,'No activity found for this member.','No activity found for this member.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (130,1,'No file was uploaded','No file was uploaded','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (131,1,'No forums were found here.','No forums were found here.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (132,1,'No online members at the moment','No online members at the moment','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (133,1,'No subscriptions found for this member.','No subscriptions found for this member.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (134,1,'No topics were found here','No topics were found here','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (135,1,'Occupation','Occupation','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (136,1,'Offline','Offline','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (137,1,'Online','Online','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (138,1,'Oops! The page you requested was not found!','Oops! The page you requested was not found!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (139,1,'Our newest member','Our newest member','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (140,1,'Page','Page','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (141,1,'Password','Password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (142,1,'Password length must be between 6 characters and 20 characters.','Password length must be between 6 characters and 20 characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (143,1,'Password mismatch.','Password mismatch.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (144,1,'Permission denied','Permission denied','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (145,1,'Permission denied for add forum','Permission denied for add forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (146,1,'Permission denied for delete forum','Permission denied for delete forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (147,1,'Permission denied for edit forum','Permission denied for edit forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (148,1,'Permission denied for this action','Permission denied for this action','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (149,1,'Phrase add error','Phrase add error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (150,1,'Phrase adding error','Phrase adding error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (151,1,'Phrase successfully added','Phrase successfully added','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (152,1,'Phrase successfully updates','Phrase successfully updates','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (153,1,'Phrase update error','Phrase update error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (154,1,'Please %s or %s','Please %s or %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (155,1,'Please insert required fields!','Please insert required fields!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (156,1,'Post Title','Post Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (157,1,'Post delete error','Post delete error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (158,1,'Post link','Post link','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (159,1,'Post options successfully updated','Post options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (160,1,'Post options successfully updated, but previous value not changed','Post options successfully updated, but previous value not changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (161,1,'Posted','Posted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (162,1,'Posted by','Posted by','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (163,1,'Posts','Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (164,1,'Powered by','Powered by','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (165,1,'Question Comments','Question Comments','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (166,1,'Questions','Questions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (167,1,'Quote','Quote','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (168,1,'RE','RE','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (169,1,'REPLY:','REPLY:','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (170,1,'RSS','RSS','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (171,1,'Rating','Rating','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (172,1,'Rating Badge','Rating Badge','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (173,1,'Received Likes','Received Likes','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (174,1,'Recent Questions','Recent Questions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (175,1,'Recent Topics','Recent Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (176,1,'Register','Register','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (177,1,'Registered date','Registered date','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (178,1,'Registration Error','Registration Error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (179,1,'Relevancy','Relevancy','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (180,1,'Remember Me','Remember Me','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (181,1,'Replies','Replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (182,1,'Replies not found','Replies not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (183,1,'Reply','Reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (184,1,'Reply request error','Reply request error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (185,1,'Report','Report','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (186,1,'Report to Administration','Report to Administration','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (187,1,'Result Info','Result Info','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (188,1,'Save','Save','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (189,1,'Save Changes','Save Changes','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (190,1,'Search','Search','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (191,1,'Search Entire Posts','Search Entire Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (192,1,'Search Phrase','Search Phrase','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (193,1,'Search Titles Only','Search Titles Only','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (194,1,'Search Type','Search Type','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (195,1,'Search in Forums','Search in Forums','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (196,1,'Search in date period','Search in date period','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (197,1,'Search result for','Search result for','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (198,1,'Search...','Search...','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (199,1,'Select Page','Select Page','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (200,1,'Send Report','Send Report','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (201,1,'Set Topic Sticky','Set Topic Sticky','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (202,1,'Shop Account','Shop Account','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (203,1,'Sign In','Sign In','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (204,1,'Signature','Signature','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (205,1,'Site Profile','Site Profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (206,1,'Skype','Skype','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (207,1,'Social Networks','Social Networks','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (208,1,'Something wrong with profile data.','Something wrong with profile data.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (209,1,'Sorry, something wrong with your data.','Sorry, something wrong with your data.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (210,1,'Sort Search Results by','Sort Search Results by','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (211,1,'Specify avatar by URL','Specify avatar by URL','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (212,1,'Subforums','Subforums','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (213,1,'Subscribe for new replies','Subscribe for new replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (214,1,'Subscribe for new topics','Subscribe for new topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (215,1,'Subscribe options successfully updated','Subscribe options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (216,1,'Subscribe options successfully updated, but previous value not changed','Subscribe options successfully updated, but previous value not changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (217,1,'Subscriptions','Subscriptions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (218,1,'Success!','Success!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (219,1,'Success! Thank you. Please check your email and click confirmation link below to complete this step.','Success! Thank you. Please check your email and click confirmation link below to complete this step.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (220,1,'Successfully updated','Successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (221,1,'Successfully voted','Successfully voted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (222,1,'The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form','The uploaded file exceeds the MAX_FILE_SIZE directive that was specified in the HTML form','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (223,1,'The uploaded file exceeds the upload_max_filesize directive in php.ini','The uploaded file exceeds the upload_max_filesize directive in php.ini','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (224,1,'The uploaded file size is too big','The uploaded file size is too big','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (225,1,'The uploaded file was only partially uploaded','The uploaded file was only partially uploaded','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (226,1,'Theme options successfully updated','Theme options successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (227,1,'This email address is already registered. Please insert another.','This email address is already registered. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (228,1,'This post successfully deleted','This post successfully deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (229,1,'This post successfully edited','This post successfully edited','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (230,1,'This topic successfully deleted','This topic successfully deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (231,1,'Timezone','Timezone','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (232,1,'Title','Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (233,1,'Topic Move Error','Topic Move Error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (234,1,'Topic RSS Feed','Topic RSS Feed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (235,1,'Topic Title','Topic Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (236,1,'Topic add error','Topic add error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (237,1,'Topic delete error','Topic delete error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (238,1,'Topic edit error','Topic edit error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (239,1,'Topic not found.','Topic not found.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (240,1,'Topic successfully moved','Topic successfully moved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (241,1,'Topic successfully updated','Topic successfully updated','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (242,1,'Topics','Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (243,1,'Topics delete error','Topics delete error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (244,1,'Twitter','Twitter','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (245,1,'Unknown upload error','Unknown upload error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (246,1,'Unsubscribe','Unsubscribe','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (247,1,'Upload an avatar','Upload an avatar','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (248,1,'Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.','Use comments to ask for more information or suggest improvements. Avoid answering questions in comments.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (249,1,'User','User','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (250,1,'User Group','User Group','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (251,1,'User delete error','User delete error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (252,1,'User group add error','User group add error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (253,1,'User group edit error','User group edit error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (254,1,'User group successfully added','User group successfully added','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (255,1,'User group successfully edited','User group successfully edited','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (256,1,'User successfully deleted from wpforo','User successfully deleted from wpforo','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (257,1,'Usergroup has been successfully deleted.','Usergroup has been successfully deleted.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (258,1,'Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\'ve chosen','Usergroup has been successfully deleted. All users of this usergroup have been moved to the usergroup you\'ve chosen','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (259,1,'Username','Username','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (260,1,'Username exists. Please insert another.','Username exists. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (261,1,'Username is missed.','Username is missed.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (262,1,'Username length must be between 3 characters and 15 characters.','Username length must be between 3 characters and 15 characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (263,1,'View entire post','View entire post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (264,1,'View the latest post','View the latest post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (265,1,'Views','Views','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (266,1,'Votes','Votes','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (267,1,'Website','Website','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (268,1,'Welcome to our Community!','Welcome to our Community!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (269,1,'Wordpress avatar system','Wordpress avatar system','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (270,1,'Working','Working','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (271,1,'Write message','Write message','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (272,1,'Wrong post data','Wrong post data','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (273,1,'Yahoo','Yahoo','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (274,1,'You','You','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (275,1,'You are already voted this post','You are already voted this post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (276,1,'You can go to %s page or Search here','You can go to %s page or Search here','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (277,1,'You have been successfully subscribed','You have been successfully subscribed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (278,1,'You have been successfully unsubscribed','You have been successfully unsubscribed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (279,1,'You have no permission to edit this topic','You have no permission to edit this topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (280,1,'You don\'t have permission to create post in this forum','You don\'t have permission to create post in this forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (281,1,'You don\'t have permission to create topic into this forum','You don\'t have permission to create topic into this forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (282,1,'You don\'t have permission to delete post from this forum','You don\'t have permission to delete post from this forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (283,1,'You don\'t have permission to delete topic from this forum','You don\'t have permission to delete topic from this forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (284,1,'You don\'t have permission to edit post from this forum','You don\'t have permission to edit post from this forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (285,1,'You successfully replied','You successfully replied','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (286,1,'Your Answer','Your Answer','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (287,1,'Your forum successfully added','Your forum successfully added','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (288,1,'Your forum successfully deleted','Your forum successfully deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (289,1,'Your profile data have been successfully updated.','Your profile data have been successfully updated.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (290,1,'Your subscription for this item could not be confirmed','Your subscription for this item could not be confirmed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (291,1,'Your topic successfully added','Your topic successfully added','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (292,1,'add','add','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (293,1,'add_new','add_new','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (294,1,'%s ago','%s ago','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (295,1,'by','by','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (296,1,'by %s','by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (297,1,'confirm password','confirm password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (298,1,'edit profile','edit profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (299,1,'edit user','edit user','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (300,1,'matches','matches','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (301,1,'new password','new password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (302,1,'new password again','new password again','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (303,1,'next','next','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (304,1,'old password','old password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (305,1,'phrase_key','phrase_key','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (306,1,'phrase_value','phrase_value','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (307,1,'prev','prev','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (308,1,'update','update','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (309,1,'view','view','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (310,1,'view all posts','view all posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (311,1,'view all questions','view all questions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (312,1,'view all topics','view all topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (313,1,'wpForo Navigation','wpForo Navigation','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (314,1,'{number}B','{number}B','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (315,1,'{number}K','{number}K','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (316,1,'{number}M','{number}M','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (317,1,'{number}T','{number}T','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (318,1,'like','Like','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (319,1,'unlike','Unlike','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (320,1,'sticky','Sticky','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (321,1,'unsticky','Unsticky','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (322,1,'close','Close','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (323,1,'open','Open','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (324,1,'Topic Icons','Topic Icons','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (325,1,'Replied','Replied','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (326,1,'Active','Active','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (327,1,'Hot','Hot','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (328,1,'Solved','Solved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (329,1,'Unsolved','Unsolved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (330,1,'Closed','Closed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (331,1,'Old password is wrong','Old password is wrong','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (332,1,'New Passwords do not match','New Passwords do not match','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (333,1,'Forum Members List','Forum Members List','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (334,1,'are you sure you want to delete?','are you sure you want to delete?','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (335,1,'Admin','Admin','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (336,1,'Moderator','Moderator','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (337,1,'Registered','Registered','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (338,1,'Customer','Customer','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (339,1,'Profile','Profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (340,1,'Incorrect file format. Allowed formats: jpeg, jpg, png, gif.','Incorrect file format. Allowed formats: jpeg, jpg, png, gif.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (341,1,'User registration is disabled','User registration is disabled','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (342,1,'Attachment removed','Attachment removed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (343,1,'Forum Posts','Forum Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (344,1,'Blog Posts','Blog Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (345,1,'Blog Comments','Blog Comments','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (346,1,'Welcome back %s!','Welcome back %s!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (347,1,'Member Profile','Member Profile','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (348,1,'Member','Member','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (349,1,'private','Private','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (350,1,'public','Public','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (351,1,'Private Topic','Private Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (352,1,'Only Admins and Moderators can see your private topics.','Only Admins and Moderators can see your private topics.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (353,1,'Forum ID is not detected','Forum ID is not detected','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (354,1,'You are not permitted to subscribe here','You are not permitted to subscribe here','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (355,1,'Subscribe to this topic','Subscribe to this topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (356,1,'Awaiting moderation','Awaiting moderation','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (357,1,'Topic first post not found.','Topic first post not found.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (358,1,'Topic first post data not found.','Topic first post data not found.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (359,1,'Done!','Done!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (360,1,'unapproved','unapproved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (361,1,'You are not allowed to attach this file type','You are not allowed to attach this file type','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (362,1,'Post is empty','Post is empty','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (363,1,'removed link','removed link','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (364,1,'Submit','Submit','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (365,1,'Usergroup','Usergroup','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (366,1,'Rating Title','Rating Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (367,1,'User Title','User Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (368,1,'approved','Approved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (369,1,'approve','Approve','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (370,1,'unapprove','unapprove','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (371,1,'--- Choose ---','--- Choose ---','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (372,1,'New','New','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (373,1,'Required field','Required field','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (374,1,'Add Reply','Add Reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (375,1,'Forums RSS Feed','Forums RSS Feed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (376,1,'Topics RSS Feed','Topics RSS Feed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (377,1,'Find a member','Find a member','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (378,1,'Display Name or Nicename','Display Name or Nicename','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (379,1,'Reset Search','Reset Search','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (380,1,'Reset Result','Reset Result','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (381,1,'Recently Added','Recent Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (382,1,'Recent Posts','Recent Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (383,1,'No posts were found here','No posts were found here','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (384,1,'forum link','forum link','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (385,1,'in forum','in forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (386,1,'After registration you will receive an email confirmation with a link to set a new password','After registration you will receive an email confirmation with a link to set a new password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (387,1,'You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.','You can mention a person using @nicename in post content to send that person an email message. When you post a topic or reply, forum sends an email message to the user letting them know that they have been mentioned on the post.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (388,1,'View entire topic','View entire topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (389,1,'Author Name','Author Name','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (390,1,'Your name','Your name','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (391,1,'Author Email','Author Email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (392,1,'Your email','Your email','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (393,1,'Your topic successfully added and awaiting moderation','Your topic successfully added and awaiting moderation','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (394,1,'You are not allowed to edit this post','You are not allowed to edit this post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (395,1,'Google reCAPTCHA verification failed','Google reCAPTCHA verification failed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (396,1,'ERROR: Can\'t connect to Google reCAPTCHA API','ERROR: Can\'t connect to Google reCAPTCHA API','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (397,1,'Welcome!','Welcome!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (398,1,'Join us today!','Join us today!','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (399,1,'Enter your email address or username and we\'ll send you a link you can use to pick a new password.','Enter your email address or username and we\'ll send you a link you can use to pick a new password.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (400,1,'Please Insert Your Email or Username','Please Insert Your Email or Username','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (401,1,'Reset Password','Reset Password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (402,1,'Forgot Your Password?','Forgot Your Password?','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (403,1,'%s created a new topic %s','%s created a new topic %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (404,1,'%s replied to the topic %s','%s replied to the topic %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (405,1,'%s liked forum post %s','%s liked forum post %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (406,1,'Read more','Read more','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (407,1,'Forum topic','Forum topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (408,1,'Forum post','Forum post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (409,1,'Forum post like','Forum post like','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (410,1,'Tools','Tools','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (411,1,'Target Topic URL','Target Topic URL','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (412,1,'Target Topic not found','Target Topic not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (413,1,'Merge Topics','Merge Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (414,1,'Split Topic','Split Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (415,1,'Please copy the target topic URL from browser address bar and paste in the field below.','Please copy the target topic URL from browser address bar and paste in the field below.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (416,1,'All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.','All posts will be merged and displayed (ordered) in target topic according to posts dates. If you want to append merged posts to the end of the target topic you should allow to update posts dates to current date by check the option below.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (417,1,'Update post dates (current date) to allow append posts to the end of the target topic.','Update post dates (current date) to allow append posts to the end of the target topic.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (418,1,'Update post titles with target topic title.','Update post titles with target topic title.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (419,1,'Topics once merged cannot be unmerged. This topic URL will no longer be available.','Topics once merged cannot be unmerged. This topic URL will no longer be available.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (420,1,'Create New Topic','Create New Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (421,1,'Create new topic with split posts. The first post of new topic becomes the earliest reply.','Create new topic with split posts. The first post of new topic becomes the earliest reply.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (422,1,'New Topic Title','New Topic Title','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (423,1,'New Topic Forum','New Topic Forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (424,1,'Select Posts to Split','Select Posts to Split','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (425,1,'Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.','Topic once split cannot be unsplit. The first post of new topic becomes the earliest reply.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (426,1,'Merge','Merge','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (427,1,'Split','Split','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (428,1,'Move Reply','Move Reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (429,1,'This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.','This action changes topic URL. Once the topic is moved to other forum the old URL of this topic will no longer be available.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (430,1,'The time to edit this topic is expired','The time to edit this topic is expired','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (431,1,'The time to delete this topic is expired.','The time to delete this topic is expired. Please contact to forum administrator to delete it.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (432,1,'The time to edit this post is expired.','The time to edit this post is expired.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (433,1,'The time to delete this post is expired.','The time to delete this post is expired.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (434,1,'Please contact to forum administrator to delete it.','Please contact to forum administrator to delete it.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (435,1,'Please contact to forum administrator to edit it.','Please contact to forum administrator to edit it.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (436,1,'Read more about Facebook public_profile properties.','Read more about Facebook public_profile properties.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (437,1,'forum privacy policy','forum privacy policy','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (438,1,'I have read and agree to the %s.','I have read and agree to the %s.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (439,1,'Click to open forum privacy policy below','Click to open forum privacy policy below','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (440,1,'I agree','I agree','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (441,1,'I do not agree. Take me away from here.','I do not agree. Take me away from here.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (442,1,'forum rules','forum rules','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (443,1,'I have read and agree to abide by the %s.','I have read and agree to abide by the %s.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (444,1,'Click to open forum rules below','Click to open forum rules below','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (445,1,'I agree to these rules','I agree to these rules','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (446,1,'I do not agree to these rules. Take me away from here.','I do not agree to these rules. Take me away from here.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (447,1,'the website','the website','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (448,1,'I have read and agree to the','I have read and agree to the','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (449,1,'I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.','I have read and agree to %s privacy policy. For more information, please check our privacy policy, where you\'ll get more info on where, how and why we store your data.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (450,1,'Terms','Terms','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (451,1,'Privacy Policy','Privacy Policy','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (452,1,'and','and','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (453,1,'I agree to receive an email confirmation with a link to set a password.','I agree to receive an email confirmation with a link to set a password.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (454,1,'Contact Us','Contact Us','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (455,1,'Contact the forum administrator','Contact the forum administrator','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (456,1,'Share:','Share:','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (457,1,'Share','Share','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (458,1,'Share this post','Share this post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (459,1,'When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.','When you login first time using Facebook Login button, we collect your account %s information shared by Facebook, based on your privacy settings. We also get your email address to automatically create a forum account for you. Once your account is created, you\'ll be logged-in to this account and you\'ll receive a confirmation email.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (460,1,'I allow to create an account based on my Facebook public profile information and send confirmation email.','I allow to create an account based on my Facebook public profile information and send confirmation email.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (461,1,'Facebook Login Information','Facebook Login Information','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (462,1,'Share to Facebook','Share to Facebook','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (463,1,'Tweet this post','Tweet this post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (464,1,'Tweet','Tweet','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (465,1,'Share to Google+','Share to Google+','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (466,1,'Share to VK','Share to VK','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (467,1,'Share to OK','Share to OK','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (468,1,'Share to WhatsApp','Share to WhatsApp','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (469,1,'Share to LinkedIn','Share to LinkedIn','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (470,1,'Update Subscriptions','Update Subscriptions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (471,1,'Subscribe to all new topics and posts','Subscribe to all new topics and posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (472,1,'Subscribe to all new topics','Subscribe to all new topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (473,1,'Subscription Manager','Subscription Manager','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (474,1,'topics and posts','topics and posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (475,1,'No data submitted','No data submitted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (476,1,'User profile fields not found','User profile fields not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (477,1,'field is required','field is required','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (478,1,'field value must be at least %d','field value must be at least %d','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (479,1,'field value cannot be greater than %d','field value cannot be greater than %d','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (480,1,'field length must be at least %d characters','field length must be at least %d characters','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (481,1,'field length cannot be greater than %d characters','field length can not be greater than %d characters','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (482,1,'field value is not a valid URL','field value is not a valid URL','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (483,1,'file type is not detected','file type is not detected','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (484,1,'file type %s is not allowed','file type %s is not allowed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (485,1,'file is too large','file is too large','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (486,1,'Success! Please check your mail for confirmation.','Success! Please check your mail for confirmation.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (487,1,'Username length must be between %d characters and %d characters.','Username length must be between %d characters and %d characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (488,1,'User registration is disabled.','User registration is disabled.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (489,1,'Avatar image is too big maximum allowed size is 2MB','Avatar image is too big maximum allowed size is 2MB','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (490,1,'One of the selected Usergroups cannot be set as Secondary','One of the selected Usergroups cannot be set as Secondary','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (491,1,'The selected Usergroup is not found in allowed list','The selected Usergroup is not found in allowed list','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (492,1,'The selected Usergroup cannot be set','The selected Usergroup cannot be set','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (493,1,'Admin and Moderator Usergroups are not permitted','Admin and Moderator Usergroups are not permitted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (494,1,'You have no permission to edit Usergroup field','You have no permission to edit Usergroup field','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (495,1,'This nickname is already in use. Please insert another.','This nickname is already in use. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (496,1,'Nickname validation failed','Nickname validation failed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (497,1,'Numerical nicknames are not allowed. Please insert another.','Numerical nicknames are not allowed. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (498,1,'Maximum allowed file size is %s MB','Maximum allowed file size is %s MB','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (499,1,'This email address is already registered. Please insert another','This email address is already registered. Please insert another','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (500,1,'Allowed file types: %s','Allowed file types: %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (501,1,'Form name not found','Form name not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (502,1,'Form template not found','Form template not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (503,1,'Profile updated successfully','Profile updated successfully','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (504,1,'User data update failed','User data update failed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (505,1,'User profile update failed','User profile update failed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (506,1,'User custom field update failed','User custom field update failed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (507,1,'Sorry, there was an error uploading attached file','Sorry, there was an error uploading attached file','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (508,1,'Edit Topic','Edit Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (509,1,'This topic was modified %s by %s','This topic was modified %s by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (510,1,'Edit Post','Edit Post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (511,1,'This post was modified %s by %s','This post was modified %s by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (512,1,'Topics Started','Topics Started','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (513,1,'Replies Created','Replies Created','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (514,1,'Liked Posts','Liked Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (515,1,'Topic link','Topic link','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (516,1,'Forum Topics Started','Forum Topics Started','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (517,1,'Forum Replies Created','Forum Replies Created','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (518,1,'Liked Forum Posts','Liked Forum Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (519,1,'Forum Subscriptions','Forum Subscriptions','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (520,1,'Start typing tags here (maximum %d tags are allowed)...','Start typing tags here (maximum %d tags are allowed)...','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (521,1,'Topic Tag','Topic Tag','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (522,1,'Topic Tags','Topic Tags','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (523,1,'Separate tags using a comma','Separate tags using a comma','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (524,1,'Tags','Tags','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (525,1,'Find Topics by Tags','Find Topics by Tags','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (526,1,'Related Topics','Related Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (527,1,'Next Topic','Next Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (528,1,'Previous Topic','Previous Topic','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (529,1,'All forum topics','All forum topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (530,1,'No tags found','No tags found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (531,1,'Forum contains no unread posts','Forum contains no unread posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (532,1,'Forum contains unread posts','Forum contains unread posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (533,1,'Mark all read','Mark all read','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (534,1,'Not Replied','Not Replied','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (535,1,'Tags are disabled','Tags are disabled','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (536,1,'Unread Posts','Unread Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (537,1,'No unread posts were found','No unread posts were found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (538,1,'Ask a question','Ask a question','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (539,1,'Your question','Your question','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (540,1,'Question Tags','Question Tags','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (541,1,'This topic doesn\'t exist or you don\'t have permissions to see that.','This topic doesn\'t exist or you don\'t have permissions to see that.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (542,1,'%d user ( %s )','%d user ( %s )','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (543,1,'%d users ( %s )','%d users ( %s )','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (544,1,'Recently viewed by users: %s.','Recently viewed by users: %s.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (545,1,'%s guest','%s guest','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (546,1,'%s guests','%s guests','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (547,1,'%d times','%d times','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (548,1,'Currently viewing this topic %s %s %s.','Currently viewing this topic %s %s %s.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (549,1,'Forum Icons','Forum Icons','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (550,1,'(%d viewing)','(%d viewing)','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (551,1,'View all tags (%d)','View all tags (%d)','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (552,1,'Topic reply','Topic reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (553,1,'You have %d new replies','You have %d new replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (554,1,'You have %d new reply to %2$s from %3$s','You have %d new reply to %2$s from %3$s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (555,1,'You have %d new reply to %s','You have %d new reply to %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (556,1,'Are you sure you wanted to do that?','Are you sure you wanted to do that?','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (557,1,'You do not have permission to mark notifications for that user.','You do not have permission to mark notifications for that user.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (558,1,'Tools: Move, Split, Merge','Tools: Move, Split, Merge','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (559,1,'Hide Replies','Hide replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (560,1,'Show Replies','Show replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (561,1,'No threads found','No threads found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (562,1,'Most Voted','Most Voted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (563,1,'Most Commented','Most Commented','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (564,1,'Newest','Newest','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (565,1,'Oldest','Oldest','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (566,1,'%d Answers','%d Answers','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (567,1,'%d Answer','%d Answer','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (568,1,'Reply with quote','Reply with quote','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (569,1,'Leave a comment','Leave a comment','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (570,1,'I allow to create an account and send confirmation email.','I allow to create an account and send confirmation email.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (571,1,'Google reCAPTCHA data are not submitted','Google reCAPTCHA data are not submitted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (572,1,'Delete this file','Delete this file','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (573,1,'Are you sure you want to delete this file?','Are you sure you want to delete this file?','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (574,1,'Specify avatar by URL:','Specify avatar by URL:','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (575,1,'ERROR: invalid_username. Sorry, that username is not allowed. Please insert another.','ERROR: invalid_username. Sorry, that username is not allowed. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (576,1,'Password length must be between %d characters and %d characters.','Password length must be between %d characters and %d characters.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (577,1,'This nickname is already registered. Please insert another.','This nickname is already registered. Please insert another.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (578,1,'Avatar image is too big maximum allowed size is %s','Avatar image is too big maximum allowed size is %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (579,1,'Userid is wrong','Userid is wrong','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (580,1,'Password successfully changed','Password successfully changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (581,1,'User successfully banned from wpforo','User successfully banned from wpforo','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (582,1,'User ban action error','User ban action error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (583,1,'User successfully unbanned from wpforo','User successfully unbanned from wpforo','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (584,1,'User unban action error','User unban action error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (585,1,'Anonymous','Anonymous','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (586,1,'Nickname','Nickname','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (587,1,'URL Address Identifier','URL Address Identifier','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (588,1,'User Groups Secondary','User Groups Secondary','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (589,1,'Email has been confirmed','Email has been confirmed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (590,1,'Email confirm error','Email confirm error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (591,1,'You are posting too quickly. Slow down.','You are posting too quickly. Slow down.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (592,1,'Function wpforo_thread_reply() not found.','Function wpforo_thread_reply() not found.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (593,1,'error: Change Status action','error: Change Status action','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (594,1,'Select Forum','Select Forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (595,1,'Write here . . .','Write here . . .','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (596,1,'Cancel','Cancel','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (597,1,'You do not have permission to view this page','You do not have permission to view this page','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (598,1,'Data merging error','Data merging error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (599,1,'Please select a target forum','Please select a target forum','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (600,1,'Please insert required fields','Please insert required fields','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (601,1,'Please select at least one post to split','Please select at least one post to split','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (602,1,'Topic splitting error','Topic splitting error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (603,1,'Status changing error','Status changing error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (604,1,'Repeat new password','Repeat new password','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (605,1,'%s posted a new topic %s','%s posted a new topic %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (606,1,'Created by %s','Created by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (607,1,'Last reply by %s','Last reply by %s','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (608,1,'Reply to','Reply to','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (609,1,'Topic Author','Topic Author','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (610,1,'Reply by','Reply by','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (611,1,'All ','All ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (612,1,'Deleted','Deleted','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (613,1,'404 - Page not found','404 - Page not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (614,1,'About','About','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (615,1,'action error','action error','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (616,1,'post not found','post not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (617,1,'done','done','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (618,1,'topic not found','topic not found','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (619,1,'wrong data','wrong data','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (620,1,'all topics has been loaded in this list','all topics has been loaded in this list','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (621,1,'Attachment','Attachment','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (622,1,'The key is expired','The key is expired','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (623,1,'The key is invalid','The key is invalid','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (624,1,'Email has been sent','Email has been sent','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (625,1,'The password reset mismatch','The password reset mismatch','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (626,1,'The password reset empty','The password reset empty','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (627,1,'The password has been changed','The password has been changed','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (628,1,'Invalid request.','Invalid request.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (629,1,'You have been banned. Please contact to forum administrators for more information.','You have been banned. Please contact to forum administrators for more information.','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (630,1,'Topic are private, please register or login for further information','Topic are private, please register or login for further information','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (631,1,'More','More','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (632,1,'expand to show all comments on this post','expand to show all comments on this post','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (633,1,'show %d more comments','show %d more comments','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (634,1,'Threads','Threads','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (635,1,'No forum found in this category','No forum found in this category','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (636,1,'Popular','Popular','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (637,1,'Resolved','Resolved','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (638,1,'Status','Status','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (639,1,'Users','Users','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (640,1,'Load More Topics','Load More Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (641,1,'Reset Fields','Reset Fields','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (642,1,'Not Replied Topics','Not Replied Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (643,1,'Solved Topics','Solved Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (644,1,'Unsolved Topics','Unsolved Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (645,1,'Closed Topics','Closed Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (646,1,'Sticky Topics','Sticky Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (647,1,'Private Topics','Private Topics','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (648,1,'Unapproved Posts','Unapproved Posts','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (649,1,'Tag','Tag','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (650,1,'%s Replies','%s Replies','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (651,1,'%s Reply','%s Reply','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (652,1,'Quote this text','Quote this text\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (653,1,'Preview','Preview\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (654,1,'Revision','Revision\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (655,1,'Revisions','Revisions\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (656,1,'%1$s Revisions','%1$s Revisions\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (657,1,'Saved','Saved\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (658,1,'Restore','Restore\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (659,1,'Save Draft','Save Draft\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (660,1,'Saving Draft','Saving Draft\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (661,1,'Loading Topics','Loading Topics\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (662,1,'Topic Tag:','Topic Tag:\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (663,1,'Join Us!','Join Us!\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (664,1,'Notifications','Notifications\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (665,1,'Clear all','Clear all\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (666,1,'You have no new notification','You have no new notification\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (667,1,'You have a new notification','You have a new notification\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (668,1,'You have new notifications','You have new notifications\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (669,1,'New Reply','New Reply\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (670,1,'New reply from %1$s, %2$s','New reply from %1$s, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (671,1,'New Like','New Like\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (672,1,'New like from %1$s, %2$s','New like from %1$s, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (673,1,'New Up Vote','New Up Vote\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (674,1,'New up vote from %1$s, %2$s','New up vote from %1$s, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (675,1,'New Down Vote','New Down Vote\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (676,1,'New down vote from %1$s, %2$s','New down vote from %1$s, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (677,1,'Go to first unread post','Go to first unread post\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (678,1,'New User Mentioning','New User Mentioning\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (679,1,'%1$s has mentioned you, %2$s','%1$s has mentioned you, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (680,1,'New Notification','New Notification\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (681,1,'New notification from %1$s, %2$s','New notification from %1$s, %2$s\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (682,1,'Protect your forum from spam user registration!','Protect your forum from spam user registration!\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (683,1,'wpForo has not found any protection solution against spam user registration on the forum registration form. Please %1$s and enable the %2$s antibot protection in %3$s or install other alternative %4$s to avoid registration of spam users.','wpForo has not found any protection solution against spam user registration on the forum registration form. Please %1$s and enable the %2$s antibot protection in %3$s or install other alternative %4$s to avoid registration of spam users.\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (684,1,'Tools > Antispam Tab','Tools > Antispam Tab\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (685,1,'WordPress plugin','WordPress plugin\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (686,1,'This notification is only visible for the website administrators. It will be automatically disabled once some antispam solution is enabled. If you don\'t use wpForo registration form or you\'re sure, that you have an antispam solution just click the [dismiss] button.','This notification is only visible for the website administrators. It will be automatically disabled once some antispam solution is enabled. If you don\'t use wpForo registration form or you\'re sure, that you have an antispam solution just click the [dismiss] button.\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (687,1,'Dismiss','Dismiss\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (688,1,'Add New Category or Forum','Add New Category or Forum\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (689,1,'Change Color Style','Change Color Style\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (690,1,'Post Moderation','Post Moderation\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (691,1,'Antispam','Antispam\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (692,1,'Forum Menu','Forum Menu\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (693,1,'Forum Widgets','Forum Widgets\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (694,1,'Delete Forum Cache','Delete Forum Cache\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (695,1,'Admin Control Panel','Admin Control Panel\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (696,1,'the layout you want','the layout you want\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (697,1,'Please note, that forums can be displayed with different layouts %1$s, just edit the top category (blue panel) and set %2$s. Child forums inherit the top category (blue panel) layout.','Please note, that forums can be displayed with different layouts %1$s, just edit the top category (blue panel) and set %2$s. Child forums inherit the top category (blue panel) layout.\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (698,1,'No new posts found','No new posts found\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (699,1,'I got it, please dismiss this message','I got it, please dismiss this message\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (700,1,'configure','configure\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (701,1,'{new}','{new}\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (702,1,'Create Account','Create Account\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (703,1,'Full','Full\n    ','wpforo');
INSERT INTO `wp_wpforo_phrases` VALUES (704,1,'Short','Short\n','wpforo');
/*!40000 ALTER TABLE `wp_wpforo_phrases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_post_revisions`
--

DROP TABLE IF EXISTS `wp_wpforo_post_revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_post_revisions` (
  `revisionid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `textareaid` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `postid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` int(10) unsigned NOT NULL DEFAULT '0',
  `version` smallint(6) NOT NULL DEFAULT '0',
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `url` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`revisionid`),
  KEY `userid_textareaid_postid_email` (`userid`,`textareaid`,`postid`,`email`,`url`(70))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_post_revisions`
--

LOCK TABLES `wp_wpforo_post_revisions` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_post_revisions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_post_revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_postmeta`
--

DROP TABLE IF EXISTS `wp_wpforo_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_postmeta` (
  `metaid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `postid` bigint(20) unsigned NOT NULL,
  `metakey` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `metavalue` mediumtext COLLATE utf8mb4_unicode_520_ci,
  `forumid` int(10) unsigned NOT NULL DEFAULT '0',
  `topicid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `is_first_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`metaid`),
  KEY `postid_metakey` (`postid`,`metakey`(191)),
  KEY `forumid` (`forumid`),
  KEY `topicid` (`topicid`),
  KEY `is_first_post` (`is_first_post`),
  KEY `status` (`status`),
  KEY `private` (`private`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_postmeta`
--

LOCK TABLES `wp_wpforo_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_postmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_posts`
--

DROP TABLE IF EXISTS `wp_wpforo_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_posts` (
  `postid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `parentid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `forumid` int(10) unsigned NOT NULL,
  `topicid` bigint(20) unsigned NOT NULL,
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `body` longtext COLLATE utf8mb4_unicode_520_ci,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `likes` int(10) unsigned NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `is_answer` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_first_post` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `root` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`postid`),
  KEY `topicid` (`topicid`),
  KEY `forumid` (`forumid`),
  KEY `userid` (`userid`),
  KEY `created` (`created`),
  KEY `parentid` (`parentid`),
  KEY `is_answer` (`is_answer`),
  KEY `is_first_post` (`is_first_post`),
  KEY `status` (`status`),
  KEY `email` (`email`),
  KEY `is_private` (`private`),
  KEY `root` (`root`),
  KEY `forumid_status` (`forumid`,`status`),
  KEY `topicid_status` (`topicid`,`status`),
  KEY `topicid_solved` (`topicid`,`is_answer`),
  KEY `topicid_parentid` (`topicid`,`parentid`),
  KEY `forumid_status_private` (`forumid`,`status`,`private`),
  KEY `forumid_answer_first` (`forumid`,`is_answer`,`is_first_post`),
  FULLTEXT KEY `title` (`title`),
  FULLTEXT KEY `body` (`body`),
  FULLTEXT KEY `title_plus_body` (`title`,`body`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_posts`
--

LOCK TABLES `wp_wpforo_posts` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_posts` DISABLE KEYS */;
INSERT INTO `wp_wpforo_posts` VALUES (1,0,5,1,1,'Betalideer','<p>Man kan betala med kort</p>\r\n<div id=\"wpfa-63\" class=\"wpforo-attached-file\"><a class=\"wpforo-default-attachment\" href=\"//egettheme.local/wp-content/uploads/wpforo/default_attachments/1604399257-lucas-ludwig-WL99c-jPzoU-unsplash.jpg\" target=\"_blank\"><i class=\"fas fa-paperclip\"></i>&nbsp;lucas-ludwig-WL99c-jPzoU-unsplash.jpg</a></div>','2020-11-03 10:27:37','2020-11-03 10:27:37',0,0,0,1,0,'','',0,-1);
INSERT INTO `wp_wpforo_posts` VALUES (2,0,5,1,1,'RE: Betalideer','<p>Ja eller så kan man betala <strong>kontant </strong> 😀</p>','2020-11-03 14:52:00','2020-11-03 14:52:00',0,0,0,0,0,'','',0,-1);
INSERT INTO `wp_wpforo_posts` VALUES (3,0,2,2,1,'Hundar','<p>Här skriver jag ett inlägg om hundar.</p>','2020-11-03 14:56:54','2020-11-03 14:56:54',0,0,0,1,0,'','',0,-1);
INSERT INTO `wp_wpforo_posts` VALUES (4,0,2,2,1,'RE: Hundar','<p>Jag gillar också hundar</p>','2020-11-03 14:58:44','2020-11-03 14:58:44',0,0,0,0,0,'','',0,-1);
/*!40000 ALTER TABLE `wp_wpforo_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_profiles`
--

DROP TABLE IF EXISTS `wp_wpforo_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_profiles` (
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'member',
  `username` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `groupid` int(10) unsigned NOT NULL,
  `posts` int(11) NOT NULL DEFAULT '0',
  `questions` int(11) NOT NULL DEFAULT '0',
  `answers` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `site` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `icq` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `aim` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `yahoo` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `msn` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `gtalk` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `skype` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `signature` text COLLATE utf8mb4_unicode_520_ci,
  `about` text COLLATE utf8mb4_unicode_520_ci,
  `occupation` text COLLATE utf8mb4_unicode_520_ci,
  `location` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `online_time` int(10) unsigned DEFAULT NULL,
  `rank` int(10) unsigned NOT NULL DEFAULT '0',
  `like` int(10) unsigned NOT NULL DEFAULT '0',
  `status` varchar(8) COLLATE utf8mb4_unicode_520_ci DEFAULT 'active' COMMENT 'active, blocked, trashed, spamer',
  `timezone` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `is_email_confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `secondary_groups` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fields` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`userid`),
  KEY `groupid` (`groupid`),
  KEY `online_time` (`online_time`),
  KEY `posts` (`posts`),
  KEY `status` (`status`),
  KEY `is_email_confirmed` (`is_email_confirmed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_profiles`
--

LOCK TABLES `wp_wpforo_profiles` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_profiles` DISABLE KEYS */;
INSERT INTO `wp_wpforo_profiles` VALUES (1,'Member','Jakob',1,4,0,0,0,'http://egettheme.local','','','','','','','','','//egettheme.local/wp-content/uploads/wpforo/avatars/jakob_1.jpg','','Text om mig','','','2020-11-07 19:12:23',1604791257,0,0,'active','',0,'',NULL);
INSERT INTO `wp_wpforo_profiles` VALUES (4,'Member','Gympish',3,0,0,0,0,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'2020-11-03 16:04:03',NULL,0,0,'inactive','',0,NULL,NULL);
/*!40000 ALTER TABLE `wp_wpforo_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_subscribes`
--

DROP TABLE IF EXISTS `wp_wpforo_subscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_subscribes` (
  `subid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `itemid` bigint(20) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `confirmkey` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `userid` bigint(20) unsigned NOT NULL,
  `active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`subid`),
  UNIQUE KEY `fld_group_unq` (`itemid`,`type`,`userid`,`user_email`),
  UNIQUE KEY `confirmkey` (`confirmkey`),
  KEY `itemid_2` (`itemid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_subscribes`
--

LOCK TABLES `wp_wpforo_subscribes` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_subscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_subscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_tags`
--

DROP TABLE IF EXISTS `wp_wpforo_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_tags` (
  `tagid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `prefix` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`tagid`),
  UNIQUE KEY `tag` (`tag`(190)),
  KEY `prefix` (`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_tags`
--

LOCK TABLES `wp_wpforo_tags` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_tags` DISABLE KEYS */;
INSERT INTO `wp_wpforo_tags` VALUES (1,'Hundar',0,1);
/*!40000 ALTER TABLE `wp_wpforo_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_topics`
--

DROP TABLE IF EXISTS `wp_wpforo_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_topics` (
  `topicid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `forumid` int(10) unsigned NOT NULL,
  `first_postid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `userid` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_post` bigint(20) unsigned NOT NULL DEFAULT '0',
  `posts` int(11) NOT NULL DEFAULT '0',
  `votes` int(11) NOT NULL DEFAULT '0',
  `answers` int(11) NOT NULL DEFAULT '0',
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `meta_key` text COLLATE utf8mb4_unicode_520_ci,
  `meta_desc` text COLLATE utf8mb4_unicode_520_ci,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `solved` tinyint(1) NOT NULL DEFAULT '0',
  `closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `has_attach` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `private` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `email` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `prefix` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tags` text COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`topicid`),
  KEY `slug` (`slug`(191)),
  KEY `forumid` (`forumid`),
  KEY `first_postid` (`first_postid`),
  KEY `created` (`created`),
  KEY `modified` (`modified`),
  KEY `last_post` (`last_post`),
  KEY `type` (`type`),
  KEY `status` (`status`),
  KEY `email` (`email`),
  KEY `solved` (`solved`),
  KEY `is_private` (`private`),
  KEY `own_private` (`userid`,`private`),
  KEY `forumid_status` (`forumid`,`status`),
  KEY `forumid_status_private` (`forumid`,`status`,`private`),
  KEY `prefix` (`prefix`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_topics`
--

LOCK TABLES `wp_wpforo_topics` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_topics` DISABLE KEYS */;
INSERT INTO `wp_wpforo_topics` VALUES (1,5,1,1,'Betalideer','betalideer','2020-11-03 10:27:37','2020-11-03 14:52:00',2,2,0,0,1,'','',0,0,0,1,0,0,'','','','');
INSERT INTO `wp_wpforo_topics` VALUES (2,2,3,1,'Hundar','hundar','2020-11-03 14:56:54','2020-11-03 14:58:44',4,2,0,0,1,'','',0,0,0,0,0,0,'','','','Hundar');
/*!40000 ALTER TABLE `wp_wpforo_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_usergroups`
--

DROP TABLE IF EXISTS `wp_wpforo_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_usergroups` (
  `groupid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cans` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL COMMENT 'board permissions',
  `description` text COLLATE utf8mb4_unicode_520_ci,
  `utitle` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `role` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `access` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `color` varchar(7) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `secondary` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `UNIQUE_GROUP_NAME` (`name`(191)),
  KEY `visible` (`visible`),
  KEY `secondary` (`secondary`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_usergroups`
--

LOCK TABLES `wp_wpforo_usergroups` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_usergroups` DISABLE KEYS */;
INSERT INTO `wp_wpforo_usergroups` VALUES (1,'Admin','a:35:{s:2:\"mf\";s:1:\"1\";s:2:\"ms\";s:1:\"1\";s:2:\"mt\";s:1:\"1\";s:2:\"mp\";s:1:\"1\";s:3:\"mth\";s:1:\"1\";s:2:\"vm\";s:1:\"1\";s:3:\"aum\";s:1:\"1\";s:2:\"em\";s:1:\"1\";s:3:\"vmg\";s:1:\"1\";s:3:\"aup\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"1\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}','','Admin','administrator','full','#FF3333',1,0);
INSERT INTO `wp_wpforo_usergroups` VALUES (2,'Moderator','a:35:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"1\";s:2:\"em\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"1\";s:2:\"bm\";s:1:\"1\";s:2:\"dm\";s:1:\"1\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"1\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}','','Moderator','editor','moderator','#0066FF',1,0);
INSERT INTO `wp_wpforo_usergroups` VALUES (3,'Registered','a:35:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:3:\"aup\";s:1:\"1\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}','','Registered','subscriber','standard','',1,1);
INSERT INTO `wp_wpforo_usergroups` VALUES (4,'Guest','a:35:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:3:\"aup\";s:1:\"0\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"upa\";s:1:\"0\";s:3:\"ups\";s:1:\"0\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"0\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"0\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:0;}','','Guest','','read_only','#222222',0,0);
INSERT INTO `wp_wpforo_usergroups` VALUES (5,'Customer','a:35:{s:2:\"mf\";s:1:\"0\";s:2:\"ms\";s:1:\"0\";s:2:\"mt\";s:1:\"0\";s:2:\"mp\";s:1:\"0\";s:3:\"mth\";s:1:\"0\";s:2:\"vm\";s:1:\"0\";s:3:\"aum\";s:1:\"0\";s:2:\"em\";s:1:\"0\";s:3:\"vmg\";s:1:\"0\";s:3:\"aup\";s:1:\"0\";s:4:\"vmem\";s:1:\"1\";s:9:\"view_stat\";s:1:\"1\";s:4:\"vprf\";s:1:\"1\";s:4:\"vpra\";s:1:\"1\";s:4:\"vprs\";s:1:\"0\";s:2:\"bm\";s:1:\"0\";s:2:\"dm\";s:1:\"0\";s:3:\"upa\";s:1:\"1\";s:3:\"ups\";s:1:\"1\";s:2:\"va\";s:1:\"1\";s:3:\"vmu\";s:1:\"0\";s:3:\"vmm\";s:1:\"0\";s:3:\"vmt\";s:1:\"1\";s:4:\"vmct\";s:1:\"1\";s:3:\"vmr\";s:1:\"1\";s:3:\"vmw\";s:1:\"1\";s:4:\"vmsn\";s:1:\"1\";s:4:\"vmrd\";s:1:\"1\";s:3:\"vml\";s:1:\"1\";s:3:\"vmo\";s:1:\"1\";s:3:\"vms\";s:1:\"1\";s:4:\"vmam\";s:1:\"1\";s:4:\"vwpm\";s:1:\"1\";s:3:\"caa\";i:1;s:12:\"vt_add_topic\";i:1;}','','Customer','customer','standard','#993366',1,1);
/*!40000 ALTER TABLE `wp_wpforo_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_views`
--

DROP TABLE IF EXISTS `wp_wpforo_views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_views` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `topicid` int(10) unsigned NOT NULL,
  `created` int(10) unsigned NOT NULL,
  PRIMARY KEY (`vid`),
  UNIQUE KEY `user_topic` (`userid`,`topicid`),
  KEY `userid` (`userid`),
  KEY `topicid` (`topicid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_views`
--

LOCK TABLES `wp_wpforo_views` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_views` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_views` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_visits`
--

DROP TABLE IF EXISTS `wp_wpforo_visits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `time` int(10) unsigned NOT NULL,
  `forumid` int(10) unsigned NOT NULL,
  `topicid` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_tracking` (`userid`,`ip`,`forumid`,`topicid`),
  KEY `userid` (`userid`),
  KEY `forumid` (`forumid`),
  KEY `topicid` (`topicid`),
  KEY `time` (`time`),
  KEY `ip` (`ip`),
  KEY `time_forumid` (`time`,`forumid`),
  KEY `time_topicid` (`time`,`topicid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_visits`
--

LOCK TABLES `wp_wpforo_visits` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_visits` DISABLE KEYS */;
INSERT INTO `wp_wpforo_visits` VALUES (1,1,'Jakob','',1604610963,0,0);
INSERT INTO `wp_wpforo_visits` VALUES (2,1,'Jakob','',1604610918,5,0);
INSERT INTO `wp_wpforo_visits` VALUES (3,1,'Jakob','',1604610924,5,1);
/*!40000 ALTER TABLE `wp_wpforo_visits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_wpforo_votes`
--

DROP TABLE IF EXISTS `wp_wpforo_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_wpforo_votes` (
  `voteid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `postid` int(10) unsigned NOT NULL,
  `reaction` tinyint(4) NOT NULL DEFAULT '1',
  `post_userid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`voteid`),
  UNIQUE KEY `unique_vote` (`userid`,`postid`,`reaction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_wpforo_votes`
--

LOCK TABLES `wp_wpforo_votes` WRITE;
/*!40000 ALTER TABLE `wp_wpforo_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_wpforo_votes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-08  0:21:07
