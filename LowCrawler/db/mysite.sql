-- MySQL dump 10.13  Distrib 5.7.12, for Linux (x86_64)
--
-- Host: localhost    Database: mysite
-- ------------------------------------------------------
-- Server version	5.7.12-0ubuntu1.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can add permission',2,'add_permission'),(5,'Can change permission',2,'change_permission'),(6,'Can delete permission',2,'delete_permission'),(7,'Can add group',3,'add_group'),(8,'Can change group',3,'change_group'),(9,'Can delete group',3,'delete_group'),(10,'Can add user',4,'add_user'),(11,'Can change user',4,'change_user'),(12,'Can delete user',4,'delete_user'),(13,'Can add content type',5,'add_contenttype'),(14,'Can change content type',5,'change_contenttype'),(15,'Can delete content type',5,'delete_contenttype'),(16,'Can add session',6,'add_session'),(17,'Can change session',6,'change_session'),(18,'Can delete session',6,'delete_session'),(19,'Can add detial',7,'add_detial'),(20,'Can change detial',7,'change_detial'),(21,'Can delete detial',7,'delete_detial'),(22,'Can add main_demoinfo',8,'add_main_demoinfo'),(23,'Can change main_demoinfo',8,'change_main_demoinfo'),(24,'Can delete main_demoinfo',8,'delete_main_demoinfo'),(25,'Can add main_demo_pic',9,'add_main_demo_pic'),(26,'Can change main_demo_pic',9,'change_main_demo_pic'),(27,'Can delete main_demo_pic',9,'delete_main_demo_pic'),(28,'Can add site',10,'add_site'),(29,'Can change site',10,'change_site'),(30,'Can delete site',10,'delete_site'),(31,'Can add userena registration',11,'add_userenasignup'),(32,'Can change userena registration',11,'change_userenasignup'),(33,'Can delete userena registration',11,'delete_userenasignup'),(34,'Can add source',12,'add_source'),(35,'Can change source',12,'change_source'),(36,'Can delete source',12,'delete_source'),(37,'Can add thumbnail',13,'add_thumbnail'),(38,'Can change thumbnail',13,'change_thumbnail'),(39,'Can delete thumbnail',13,'delete_thumbnail'),(40,'Can add thumbnail dimensions',14,'add_thumbnaildimensions'),(41,'Can change thumbnail dimensions',14,'change_thumbnaildimensions'),(42,'Can delete thumbnail dimensions',14,'delete_thumbnaildimensions'),(43,'Can add user object permission',15,'add_userobjectpermission'),(44,'Can change user object permission',15,'change_userobjectpermission'),(45,'Can delete user object permission',15,'delete_userobjectpermission'),(46,'Can add group object permission',16,'add_groupobjectpermission'),(47,'Can change group object permission',16,'change_groupobjectpermission'),(48,'Can delete group object permission',16,'delete_groupobjectpermission'),(49,'Can add profile',17,'add_profile'),(50,'Can change profile',17,'change_profile'),(51,'Can delete profile',17,'delete_profile'),(52,'Can view profile',17,'view_profile'),(53,'Can add comment',18,'add_comment'),(54,'Can change comment',18,'change_comment'),(55,'Can delete comment',18,'delete_comment'),(56,'Can moderate comments',18,'can_moderate'),(57,'Can add comment flag',19,'add_commentflag'),(58,'Can change comment flag',19,'change_commentflag'),(59,'Can delete comment flag',19,'delete_commentflag'),(60,'Can add tag',20,'add_tag'),(61,'Can change tag',20,'change_tag'),(62,'Can delete tag',20,'delete_tag'),(63,'Can add tagged item',21,'add_taggeditem'),(64,'Can change tagged item',21,'change_taggeditem'),(65,'Can delete tagged item',21,'delete_taggeditem'),(66,'Can add entry',22,'add_entry'),(67,'Can change entry',22,'change_entry'),(68,'Can delete entry',22,'delete_entry'),(69,'Can view all entries',22,'can_view_all'),(70,'Can change status',22,'can_change_status'),(71,'Can change author(s)',22,'can_change_author'),(72,'Can add category',23,'add_category'),(73,'Can change category',23,'change_category'),(74,'Can delete category',23,'delete_category'),(75,'Can add author',4,'add_author'),(76,'Can change author',4,'change_author'),(77,'Can delete author',4,'delete_author'),(78,'Can add tools_site',25,'add_tools_site'),(79,'Can change tools_site',25,'change_tools_site'),(80,'Can delete tools_site',25,'delete_tools_site');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (5,'pbkdf2_sha256$24000$lhT4AO16gNN9$c7+AEPj9XWAkTxZiEVd8OwBZMlaBQ4EZZXcSOC4yVLU=','2016-07-14 23:55:36.993922',1,'admin','','','',1,1,'2016-07-02 16:06:44.515801'),(6,'!jkqcer5poRnDFJcWf4qHmfignTh6C3bloc796aYE',NULL,0,'AnonymousUser','','','',0,1,'2016-07-05 17:10:45.592903');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (6,'2016-07-05 03:35:56.890258','3','123',3,'',4,5),(7,'2016-07-05 03:35:56.918131','2','AnonymousUser',3,'',4,5),(8,'2016-07-05 03:35:56.976566','1','hanbox',3,'',4,5),(9,'2016-07-05 03:35:57.026891','4','liuxin',3,'',4,5),(10,'2016-07-05 17:13:51.603786','1','1: draft',1,'Added.',22,5),(11,'2016-07-05 17:16:09.314776','1','123',1,'Added.',23,5),(12,'2016-07-05 18:05:07.634661','1','1: draft',3,'',22,5),(13,'2016-07-05 18:06:05.841673','2','123: draft',1,'Added.',22,5),(14,'2016-07-05 18:06:20.477486','2','123: draft',3,'',22,5),(15,'2016-07-05 18:17:57.631053','3','asd: published',1,'Added.',22,5),(16,'2016-07-05 18:21:43.489929','3','asd: published',2,'No fields changed.',22,5),(17,'2016-07-05 18:25:50.482194','3','asd: published',3,'',22,5),(18,'2016-07-05 18:26:24.657598','4','asd: draft',1,'Added.',22,5),(19,'2016-07-05 18:26:52.656265','4','asd: published',3,'',22,5),(20,'2016-07-05 18:27:15.432812','5','asd: published',1,'Added.',22,5),(21,'2016-07-06 02:29:26.958812','5','asd: published',2,'Changed image.',22,5),(22,'2016-07-06 03:03:34.644335','6','qwe: published',1,'Added.',22,5),(23,'2016-07-06 03:15:38.101121','5','asd: published',3,'',22,5),(24,'2016-07-06 03:34:18.358775','7','qqq: published',1,'Added.',22,5),(25,'2016-07-14 15:06:38.791051','1','tools_site object',1,'Added.',25,5),(26,'2016-07-14 15:08:46.403738','2','tools_site object',1,'Added.',25,5),(27,'2016-07-14 15:10:52.354356','3','tools_site object',1,'Added.',25,5),(28,'2016-07-14 15:18:41.974141','3','tools_site object',2,'Changed image_paths.',25,5),(29,'2016-07-14 15:19:36.354306','2','tools_site object',2,'Changed image_paths.',25,5),(30,'2016-07-14 15:20:23.099105','1','tools_site object',2,'Changed image_paths.',25,5);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comment_flags`
--

DROP TABLE IF EXISTS `django_comment_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comment_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `flag` varchar(30) NOT NULL,
  `flag_date` datetime(6) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_comment_flags_user_id_537f77a7_uniq` (`user_id`,`comment_id`,`flag`),
  KEY `django_comment_flags_comment_id_d8054933_fk_django_comments_id` (`comment_id`),
  KEY `django_comment_flags_327a6c43` (`flag`),
  CONSTRAINT `django_comment_flags_comment_id_d8054933_fk_django_comments_id` FOREIGN KEY (`comment_id`) REFERENCES `django_comments` (`id`),
  CONSTRAINT `django_comment_flags_user_id_f3f81f0a_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comment_flags`
--

LOCK TABLES `django_comment_flags` WRITE;
/*!40000 ALTER TABLE `django_comment_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comment_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_comments`
--

DROP TABLE IF EXISTS `django_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` longtext NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_email` varchar(254) NOT NULL,
  `user_url` varchar(200) NOT NULL,
  `comment` longtext NOT NULL,
  `submit_date` datetime(6) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `is_removed` tinyint(1) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `django_commen_content_type_id_c4afe962_fk_django_content_type_id` (`content_type_id`),
  KEY `django_comments_site_id_9dcf666e_fk_django_site_id` (`site_id`),
  KEY `django_comments_user_id_a0a440a1_fk_auth_user_id` (`user_id`),
  KEY `django_comments_submit_date_514ed2d9_uniq` (`submit_date`),
  CONSTRAINT `django_commen_content_type_id_c4afe962_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_comments_site_id_9dcf666e_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`),
  CONSTRAINT `django_comments_user_id_a0a440a1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_comments`
--

LOCK TABLES `django_comments` WRITE;
/*!40000 ALTER TABLE `django_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(18,'django_comments','comment'),(19,'django_comments','commentflag'),(12,'easy_thumbnails','source'),(13,'easy_thumbnails','thumbnail'),(14,'easy_thumbnails','thumbnaildimensions'),(16,'guardian','groupobjectpermission'),(15,'guardian','userobjectpermission'),(7,'list_movie','detial'),(8,'main','main_demoinfo'),(9,'main','main_demo_pic'),(25,'mytools','tools_site'),(17,'profiles','profile'),(6,'sessions','session'),(10,'sites','site'),(20,'tagging','tag'),(21,'tagging','taggeditem'),(11,'userena','userenasignup'),(24,'zinnia','author'),(23,'zinnia','category'),(22,'zinnia','entry');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2016-06-24 04:59:49.888158'),(2,'auth','0001_initial','2016-06-24 04:59:56.436626'),(3,'admin','0001_initial','2016-06-24 04:59:58.137754'),(4,'admin','0002_logentry_remove_auto_add','2016-06-24 04:59:58.368440'),(5,'contenttypes','0002_remove_content_type_name','2016-06-24 04:59:59.553049'),(6,'auth','0002_alter_permission_name_max_length','2016-06-24 05:00:00.281600'),(7,'auth','0003_alter_user_email_max_length','2016-06-24 05:00:01.219082'),(8,'auth','0004_alter_user_username_opts','2016-06-24 05:00:01.319784'),(9,'auth','0005_alter_user_last_login_null','2016-06-24 05:00:01.971487'),(10,'auth','0006_require_contenttypes_0002','2016-06-24 05:00:02.027674'),(11,'auth','0007_alter_validators_add_error_messages','2016-06-24 05:00:02.112441'),(12,'list_movie','0001_initial','2016-06-24 05:00:02.481976'),(13,'sessions','0001_initial','2016-06-24 05:00:03.300417'),(14,'main','0001_initial','2016-06-30 08:57:15.007939'),(15,'main','0002_main_demo_pic','2016-06-30 10:06:55.599074'),(16,'easy_thumbnails','0001_initial','2016-06-30 18:13:48.584956'),(17,'easy_thumbnails','0002_thumbnaildimensions','2016-06-30 18:13:49.622826'),(18,'guardian','0001_initial','2016-06-30 18:13:54.257898'),(19,'sites','0001_initial','2016-06-30 18:13:54.517990'),(20,'sites','0002_alter_domain_unique','2016-06-30 18:13:54.743460'),(21,'userena','0001_initial','2016-06-30 18:13:55.649393'),(22,'userena','0002_auto_20160630_1813','2016-06-30 18:13:56.277820'),(23,'profiles','0001_initial','2016-06-30 18:18:18.334533'),(24,'django_comments','0001_initial','2016-07-05 17:10:26.387462'),(25,'django_comments','0002_update_user_email_field_length','2016-07-05 17:10:27.057808'),(26,'django_comments','0003_add_submit_date_index','2016-07-05 17:10:27.284069'),(27,'profiles','0002_auto_20160705_1710','2016-07-05 17:10:27.523446'),(28,'tagging','0001_initial','2016-07-05 17:10:29.574230'),(29,'tagging','0002_on_delete','2016-07-05 17:10:30.925093'),(30,'zinnia','0001_initial','2016-07-05 17:10:39.649651'),(31,'zinnia','0002_lead_paragraph_and_image_caption','2016-07-05 17:10:40.817259'),(32,'zinnia','0003_publication_date','2016-07-05 17:10:43.502088'),(33,'zinnia','0004_on_delete_arg','2016-07-05 17:10:45.415497'),(34,'mytools','0001_initial','2016-07-14 15:03:22.571045');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_de54fa62` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7ow8ex7xnkm8dvp4p2jgahmgan1spj18','MzE2YmFiMjE2YmY5MjBkOGMyOGVkYTc4NGRhMzU1ODdhMmI2ODQ0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYzUwYjljNzgwNDlhZTk0ZTcwMTVhNjZhZTc1NmM0YzU4NGIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-19 17:34:36.213743'),('a2c94m2klfhazc2kws09oq8ca6yot89o','MzE2YmFiMjE2YmY5MjBkOGMyOGVkYTc4NGRhMzU1ODdhMmI2ODQ0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYzUwYjljNzgwNDlhZTk0ZTcwMTVhNjZhZTc1NmM0YzU4NGIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-20 03:15:15.525924'),('gln7p70bucbsjybkn2lufnefqqb1xufe','OWZlNTkzMDJiZmZiZjVmMTYzNmZjYjAzMDA5MzdkMjA5NWY4YjNhOTp7Il9zZXNzaW9uX2V4cGlyeSI6MCwiX2F1dGhfdXNlcl9oYXNoIjoiMzRhNzIwNjk2MGVlYjU3MDc1OWMyZjZiOTllMDY1MWM1ZDZhNzY3MCIsIl9hdXRoX3VzZXJfaWQiOiI1IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoidXNlcmVuYS5iYWNrZW5kcy5Vc2VyZW5hQXV0aGVudGljYXRpb25CYWNrZW5kIn0=','2016-07-19 05:47:08.646043'),('n3fiz848oqn578gs2044dlt9fh6aa7ds','NDk3NjFkOWMwNTZmOTAyYjZmMmRjNDlkOThhOTliNzdmYTAzM2NlYTp7Il9hdXRoX3VzZXJfaGFzaCI6IjM0YTcyMDY5NjBlZWI1NzA3NTljMmY2Yjk5ZTA2NTFjNWQ2YTc2NzAiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-16 16:06:53.364896'),('u7s3fir1alxk59yqhui8n7h9bvfb130a','MzE2YmFiMjE2YmY5MjBkOGMyOGVkYTc4NGRhMzU1ODdhMmI2ODQ0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYzUwYjljNzgwNDlhZTk0ZTcwMTVhNjZhZTc1NmM0YzU4NGIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-19 18:04:00.355787'),('v5pxy9rwz38allrfs5bd7bybbq756fp7','MzE2YmFiMjE2YmY5MjBkOGMyOGVkYTc4NGRhMzU1ODdhMmI2ODQ0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYzUwYjljNzgwNDlhZTk0ZTcwMTVhNjZhZTc1NmM0YzU4NGIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-19 17:11:46.838515'),('w28kcp8xuq8e9nq9tf4okgn6kmtuhlkw','MzE2YmFiMjE2YmY5MjBkOGMyOGVkYTc4NGRhMzU1ODdhMmI2ODQ0OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjJkYzUwYjljNzgwNDlhZTk0ZTcwMTVhNjZhZTc1NmM0YzU4NGIwNjUiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiI1In0=','2016-07-20 02:50:00.750464');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_site`
--

DROP TABLE IF EXISTS `django_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_site_domain_a2e37b91_uniq` (`domain`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'example.com','example.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_source`
--

DROP TABLE IF EXISTS `easy_thumbnails_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_source` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_source_storage_hash_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_source_b068931c` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnail`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `storage_hash` varchar(40) NOT NULL,
  `name` varchar(255) NOT NULL,
  `modified` datetime(6) NOT NULL,
  `source_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `easy_thumbnails_thumbnail_storage_hash_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` (`source_id`),
  KEY `easy_thumbnails_thumbnail_b454e115` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_b068931c` (`name`),
  CONSTRAINT `easy_thumbnails__source_id_5b57bc77_fk_easy_thumbnails_source_id` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `easy_thumbnails_thumbnaildimensions`
--

DROP TABLE IF EXISTS `easy_thumbnails_thumbnaildimensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `easy_thumbnails_thumbnaildimensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `thumbnail_id` int(11) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thumbnail_id` (`thumbnail_id`),
  CONSTRAINT `easy_thumb_thumbnail_id_c3a0c549_fk_easy_thumbnails_thumbnail_id` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_groupobjectpermission`
--

DROP TABLE IF EXISTS `guardian_groupobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_groupobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_groupobjectpermission_group_id_3f189f7c_uniq` (`group_id`,`permission_id`,`object_pk`),
  KEY `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_grou_content_type_id_7ade36b8_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `guardian_groupobjec_permission_id_36572738_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_groupobjectpermissio_group_id_4bbbfb62_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_groupobjectpermission`
--

LOCK TABLES `guardian_groupobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_groupobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guardian_userobjectpermission`
--

DROP TABLE IF EXISTS `guardian_userobjectpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guardian_userobjectpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_pk` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guardian_userobjectpermission_user_id_b0b3d2fc_uniq` (`user_id`,`permission_id`,`object_pk`),
  KEY `guardian_user_content_type_id_2e892405_fk_django_content_type_id` (`content_type_id`),
  KEY `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` (`permission_id`),
  CONSTRAINT `guardian_user_content_type_id_2e892405_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `guardian_userobject_permission_id_71807bfc_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `guardian_userobjectpermission_user_id_d5c1e964_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guardian_userobjectpermission`
--

LOCK TABLES `guardian_userobjectpermission` WRITE;
/*!40000 ALTER TABLE `guardian_userobjectpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `guardian_userobjectpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list_movie_detial`
--

DROP TABLE IF EXISTS `list_movie_detial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `list_movie_detial` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_url` varchar(200) NOT NULL,
  `movie_name` varchar(200) NOT NULL,
  `movie_date` varchar(200) NOT NULL,
  `movie_url` varchar(2560) NOT NULL,
  `image_paths` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_movie_detial`
--

LOCK TABLES `list_movie_detial` WRITE;
/*!40000 ALTER TABLE `list_movie_detial` DISABLE KEYS */;
INSERT INTO `list_movie_detial` VALUES (1,'http://www.dygang.com/720P/20160706/35085.htm','蝙蝠侠大战超人：正义黎明[720p]','2016-07-06','<br>http://xz.66vod.net:889/2015/Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.720p.BluRay.x264-SPARKS.torrent','full/4f9c2d53127edae88b6c290f01473c922e08e77d.jpg'),(2,'http://www.dygang.com/1080p/20160706/35086.htm','蝙蝠侠大战超人：正义黎明[1080p]','2016-07-06','<br>http://xz.66vod.net:889/2015/Batman.v.Superman.Dawn.of.Justice.2016.EXTENDED.1080p.BluRay.x264-SPARKS.torrent','full/4f9c2d53127edae88b6c290f01473c922e08e77d.jpg'),(3,'http://www.dygang.com/3d/20160708/35096.htm','蝙蝠侠大战超人：正义黎明[左右3D版]','2016-07-08','<br>http://xz.66vod.net:889/2015/Batman.v.Superman.Dawn.of.Justice.2016.3D.1080p.BluRay.x264-SPRiNTER.torrent','full/4f9c2d53127edae88b6c290f01473c922e08e77d.jpg'),(4,'http://www.dygang.com/720P/20160710/35106.htm','喜马拉雅[720p中字]','2016-07-10','<br>http://xz.66vod.net:889/2015/The.Himalayas.2015.720p.BluRay.x264-WiKi.torrent','full/a31449b5246a3b3ffd7ab641dee0b9b51539fb6b.jpg'),(5,'http://www.dygang.com/1080p/20160710/35107.htm','喜马拉雅[1080p中字]','2016-07-10','<br>http://xz.66vod.net:889/2015/The.Himalayas.2015.1080p.BluRay.x264-WiKi.torrent','full/a31449b5246a3b3ffd7ab641dee0b9b51539fb6b.jpg'),(6,'http://www.dygang.com/720P/20160713/35121.htm','硬核亨利[720p]','2016-07-13','<br>http://xz.66vod.net:889/2015/Hardcore.Henry.2015.720p.BluRay.x264-DRONES.torrent','full/814ad847285f1be73268202691835810da8b9fa2.jpg'),(7,'http://www.dygang.com/1080p/20160713/35122.htm','硬核亨利[1080p]','2016-07-13','<br>http://xz.66vod.net:889/2015/Hardcore.Henry.2015.1080p.BluRay.x264-DRONES.torrent','full/814ad847285f1be73268202691835810da8b9fa2.jpg'),(8,'http://www.dygang.com/720P/20160715/35130.htm','我的特工爷爷[720p]','2016-07-15','<br>http://xz.66vod.net:889/2015/My.Beloved.Bodyguard.2016.720p.BluRay.x264-ROVERS.torrent','full/1d0f8a17ee7b705b7020b5309f719c43c4acf656.jpg'),(9,'http://www.dygang.com/1080p/20160715/35131.htm','我的特工爷爷[1080p]','2016-07-15','<br>http://xz.66vod.net:889/2015/My.Beloved.Bodyguard.2016.1080p.BluRay.x264-ROVERS.torrent','full/1d0f8a17ee7b705b7020b5309f719c43c4acf656.jpg'),(10,'http://www.dygang.com/dsj1/20160623/34969.htm','Wanted','2016-07-14','<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDo0MzkwL1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTAxLnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDoxMzkxL1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTAyLnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDozMzkyL1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTAzLnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDo0MzkyL1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTA0LnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDoyMzk0L1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTA1LnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDozMzk0L1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTA2LnJtdmJaWg==<br>thunder://QUFmdHA6Ly9keWdvZDM6ZHlnb2QzQHlnNjkuZHlkeXR0Lm5ldDoxMzk2L1dhbnRlZC9bJUU5JTk4JUIzJUU1JTg1JTg5JUU3JTk0JUI1JUU1JUJEJUIxLXd3dy55Z2R5OC5jb21dV2FudGVkLTA3LnJtdmJaWg==','full/4a0e00766da71eecbfe07593185f1d3884f33a0c.jpg'),(11,'http://www.dygang.com/dsj/20160712/35116.htm','电视剧版致青春','2016-07-15','<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a501.mp4|558203157|6F4E59D7E4C051434CBE452FC5145F1F|h=OISWLJHKNGXECHTYBQ7TVISSLBMF5XED|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a502.mp4|440609674|0AF065D727D1A2019648C2A5425C51F6|h=WCUDVB7TULLUCYQOKJWQDRAHJAVPVTS5|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a503..mp4|534628431|AD8D380B01C0332599182C3990710C25|h=5F7OHFSLYXXWPE3JKOFMKOJC2AG2DHUF|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a504.mp4|430567022|500CEB40E55C75BFF9D0A81F47A7AA88|h=WJ23YDS26H4KVF6UU4I5K5V64YA5PVTH|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a505.mp4|490540222|7C263DBF54CE675ADCC3BDB2DBEB7985|h=3AJIDV3UOJIU2JBH4TNB4P3IDFXDFDHV|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a506.mp4|549819558|8E292510DBE6C5720EE7D4B8A0FA98DB|h=CCZXRHTKQPLZ2U7LD3WLC5TXC4ZYDDVI|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a507.mp4|460607624|08136DD5478B8966075F89B7AA452E3E|h=UTUWOR25LAYKHZZ2YZSC3UUW2RXBGQ6E|/<br>ed2k://|file|%e8%87%b4%e9%9d%92%e6%98%a508.mp4|450658139|351BE0FECA198A4C7C89C84217623B8A|h=JAX7LUCOEZQOO57HAHPTITA7UFD3XE3Z|/','full/3acd7b9f1b83fad32f597854b0c040fd4dd4ee97.jpg'),(12,'http://www.dygang.com/dsj1/20160715/35128.htm','卖房子的女人','2016-07-15','<br>ed2k://|file|%E5%8D%96%E6%88%BF%E5%AD%90%E7%9A%84%E5%A5%B3%E4%BA%BA.Ieuru.Onna.Ep01.Chi_Jap.HDTVrip.852X480-ZhuixinFan.mp4|287599731|becf52355cc48db5ce185ac2bb4243c8|h=tzf2tnedutnosj4xmph3chcws53u3ydo|/<br>ed2k://|file|%E5%8D%96%E6%88%BF%E5%AD%90%E7%9A%84%E5%A5%B3%E4%BA%BA.Ieuru.Onna.Ep01.Chi_Jap.HDTVrip.1280X720-ZhuixinFan.mp4|733774146|70baa2929a685d695c92e0d0a2fe1ab3|h=kq3atafnpl5ycp3aecgvt6xk6cdcwp6t|/','full/cfd81fbd0b74f6b34a1898f0e8a7967523ec79b8.jpg'),(13,'http://www.dygang.com/bd/20111118/f86de0d15e49cee36ba065a24dfaa175.htm','星际迷航[高清]','2016-07-13','<br>ed2k://|file|星际迷航11.2009.BD1280超清国英双语中英双字.mp4|3274839640|C3687D540BFB05293BDE125B5B5A44EB|h=2ZRDQPCJWRZIMKGLWMBPK3WDCZOV52LF|/<br>ed2k://|file|星际迷航11.2009.BD1280高清国英双语中英双字.mp4|1819473072|A3622E50000D161330AD0D8416FFC27F|h=VV3SROCHFFXGK4LA66V63JGDL256K4NY|/<br>http://pan.baidu.com/s/1ckLXO6<br>ftp://dy131.com:6vdy.com@ftp2.66e.cc:6527/【6v电影www.dy131.com】星际迷航11.720p.国英双语.BD中英双字.mkv<br>ftp://6v:6v@ftp1.kan66.com:1508/【6v电影www.dy131.com】星际迷航11.BD中英双字1024高清.mkv<br>ftp://6:6@ftp.kan66.com:4126/【6v电影www.dy131.com】星际迷航BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4126/【6v电影www.dy131.com】星际迷航BD中英双字1024高清.rmvb','full/b9d00a97b354f5fa5b7c1c9eadf8fb8c7aef7519.jpg'),(14,'http://www.dygang.com/bd/20130821/26326.htm','星际迷航:暗黑无界[高清]','2016-07-13','<br>ed2k://|file|星际迷航12：暗黑无界.2013.BD1280超清国英双语中英双字.mp4|3366650678|3D85ECB49B355ACEC8226B48954B766A|h=LY2GCRBO5XACWHRRGPLZP5UZY2SVAH52|/<br>ed2k://|file|星际迷航12：暗黑无界.2013.BD1280高清国英双语中英双字.mp4|1862754226|1CD1ADB3EA1195E2D2EF06D7660DA122|h=KIKGFMESWPHYXK6JM475TPX3FD2XLVKX|/<br>http://pan.baidu.com/s/1o7JZiNC<br>ftp://dy131.com:6vdy.com@ftp2.66e.cc:6527/【6v电影www.dy131.com】星际迷航12：暗黑无界.720p.国英双语.BD中英双字.mkv<br>ftp://dy131.com:6vdy.com@ftp2.66e.cc:6527/【6v电影www.dy131.com】星际迷航.暗黑无界.BD中英双字1024高清.mkv<br>ftp://dy131.com:6vdy.com@ftp2.66e.cc:6527/【6v电影www.dy131.com】星际迷航.暗黑无界.BD中英双字1280高清.rmvb<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:2141/【6v电影www.6vdy.com】星际迷航2：暗黑无界.HD中英双字1280高清.rmvb<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:2141/【6v电影www.6vdy.com】星际迷航2：暗黑无界.HD中英双字1024高清.rmvb','full/2d7c951310294e9f217bf887c5c673a2f65f2a30.jpg'),(15,'http://www.dygang.com/bd/20160630/35019.htm','护工故事[高清]','2016-07-13','<br>ed2k://|file|%E6%8A%A4%E5%B7%A5%E6%95%85%E4%BA%8B.HD1280%E8%B6%85%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|2046242365|4CFB595594D82CFB08E2FE07DF74CE2B|h=CNRSBJRMHXYAZXRQD5MUPZ5FMXKES4L6|/<br>ed2k://|file|%E6%8A%A4%E5%B7%A5%E6%95%85%E4%BA%8B.HD1280%E9%AB%98%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|1167066085|736B98FC5F04E69E767B2CCF2ABE0E05|h=2ZEYF2QKHD5QDEL66LXIQOZNLSYZ3ONT|/<br>http://pan.baidu.com/s/1i5PPn2P','full/bf3c01204c295458e9180efbe4f99b93fa114641.jpg'),(16,'http://www.dygang.com/bd/20160711/35112.htm','爵士灵魂[高清]','2016-07-13','<br>ed2k://|file|%E7%88%B5%E5%A3%AB%E7%81%B5%E9%AD%82.BD1280%E8%B6%85%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|2231054537|89723F1C055A2E019B330AF7A482CC48|h=ZQI4GG2JVAFADXUNQUEV2AYFEDHPG4Z7|/<br>ed2k://|file|%E7%88%B5%E5%A3%AB%E7%81%B5%E9%AD%82.BD1280%E9%AB%98%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|1267033406|1DA62E5E507D6408AD363985BC8D1607|h=EIHXZK5V3DT6VCJ36LLBUTRQ3CPFD2U5|/<br>http://pan.baidu.com/s/1eRJ953W','full/8f81791bc07ac319a576e4af6ead41d48aaca9b7.jpg'),(17,'http://www.dygang.com/bd/20160713/35123.htm','狙击手：特别行动','2016-07-13','<br>ed2k://|file|%E7%8B%99%E5%87%BB%E6%89%8B%EF%BC%9A%E7%89%B9%E5%88%AB%E8%A1%8C%E5%8A%A8.720p.BD%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97[www.66ys.tv].mp4|1418384181|8A3D74AA3D2FADE2F8CB367F01646D32|h=VYS6WLM2H3URCWN7UMSU6HAI2R5WT6CL|/','full/53c3153d4ebd7ed6d059f4e7ebb514b24e85b136.jpg'),(18,'http://www.dygang.com/ys/20160714/35124.htm','恐怖禁忌之红旗袍','2016-07-14','<br>ed2k://|file|%E6%81%90%E6%80%96%E7%A6%81%E5%BF%8C%E4%B9%8B%E7%BA%A2%E6%97%97%E8%A2%8D.HD1280%E8%B6%85%E6%B8%85%E5%9B%BD%E8%AF%AD%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|1633106672|BE682F48CD83C4F7540F3D8AFE39A559|h=BOYBROY5B6PC44V7UPPNI5MVRE5SEVFX|/<br>http://pan.baidu.com/s/1jIGtMku','full/6b559b4da6bc585ea2548ea103ef56d4522a8ba5.jpg'),(19,'http://www.dygang.com/bd/20110922/29b5cb4b0c99b518bb2fffe4b1e023a8.htm','夺宝奇兵1[高清]','2016-07-14','<br>ed2k://|file|夺宝奇兵1：法柜奇兵.1981.BD1280超清国粤英四语中英双字.mp4|3217757174|E1C3BF402A5311EB10CBAA35364B3C9E|h=CYAOQ2TIC736BMWDH6IZ352MPEVNN45O|/<br>ed2k://|file|夺宝奇兵1：法柜奇兵.1981.BD1280高清国粤英四语中英双字.mp4|1776379702|518D7189894248515FCDE27C1D99920D|h=A5I6ACVDHEXC4E7ELSDTNMQM2E4LL2TP|/<br>http://pan.baidu.com/s/1minj95A<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳·琼斯与法柜.720p.国英双语.BD中英双字.mkv<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳琼斯之法柜奇兵BD中英双字1024高清.mkv<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵1BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵1BD中英双字1024高清.rmvb','full/065db6872ef9434f5fa067387d2cdd396b997556.jpg'),(20,'http://www.dygang.com/bd/20110922/7337cac0acde2644185ffb8d75c88b89.htm','夺宝奇兵2[高清]','2016-07-14','<br>ed2k://|file|夺宝奇兵2：魔域奇兵.1984.BD1280超清国粤英四语中英双字.mp4|3285495578|D41118A45E18AFA83A27DD3D4B78CB34|h=F5WR5KJCE5XFTBIL6YXSVKROFYXTNFD5|/<br>ed2k://|file|夺宝奇兵2：魔域奇兵.1984.BD1280高清国粤英四语中英双字.mp4|1815975452|6D9C61A7DC5E9DA71E3DE347758C306E|h=JXB5N6CJS6PQDVBSZAH2FCAFZYECUPMS|/<br>http://pan.baidu.com/s/1o7PyR26<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳·琼斯与魔宫.720p.国英双语.BD中英双字.mkv<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳琼斯之魔域奇兵BD中英双字1024高清.mkv<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵2BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵2BD中英双字1024高清.rmvb','full/d8619c204a25381d1031eb70120da3b53a424692.jpg'),(21,'http://www.dygang.com/bd/20110922/956b8a7595842ef7253508eb8e73a08c.htm','夺宝奇兵3[高清]','2016-07-14','<br>ed2k://|file|夺宝奇兵3：圣战奇兵.1989.BD1280超清国粤英四语中英双字.mp4|3533553606|FF730D2FBA94E874CA025A08693EC312|h=4ICTPTSS42LOIHUAXFQSET6VCRVKJEDG|/<br>ed2k://|file|夺宝奇兵3：圣战奇兵.1989.BD1280高清国粤英四语中英双字.mp4|1952812052|BF319F8C264E04538986E653D3A393AE|h=ZRRD4GQPHFWPZSYMUQVBO3NW4H7ISPAH|/<br>http://pan.baidu.com/s/1c1D8auW<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳·琼斯与圣杯.720p.国英双语.BD中英双字.mkv<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】印第安纳琼斯之圣战奇兵BD中英双字1024高清.mkv<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵3BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵3BD中英双字1024高清.rmvb','full/f4cdacc0bac2b13283562ab6e1e722d7ba296d30.jpg'),(22,'http://www.dygang.com/bd/20110922/92471a17030db36e49b997d47891afc7.htm','夺宝奇兵4[高清]','2016-07-14','<br>ed2k://|file|夺宝奇兵4：水晶骷髅王国.2008.BD1280超清国粤英三语中英双字.mp4|3297841868|C37B942380FA861D3C4DE49BC0E7B8EF|h=AFZ44PDVVOPIKSPR3URLG3DU2S7DF77O|/<br>ed2k://|file|夺宝奇兵4：水晶骷髅王国.2008.BD1280高清国粤英三语中英双字.mp4|1883467461|14BCBCA8B827CD924F4195065A2ABC19|h=KW3W6DHDQDNQTKUROYY6KETJ5CIBON7O|/<br>http://pan.baidu.com/s/1mifHYA0<br>ftp://dy131.com:6vdy.com@ftp2.66e.cc:6527/【6v电影www.dy131.com】夺宝奇兵4.720p.国英双语.BD中英双字.mkv<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【最新电影www.66e.cc】印第安纳琼斯之水晶骷髅王国BD中英双字1024高清.mkv<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵4BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4536/【6v电影www.dy131.com】夺宝奇兵4BD中英双字1024高清.rmvb','full/c09687734ab13528acd19658f878cf42c17585df.jpg'),(23,'http://www.dygang.com/bd/20101113/81604062b7d8a24f1f70e784558fbb27.htm','音乐之声[高清]','2016-07-14','<br>ed2k://|file|音乐之声.BD1280超清国英三语中英双字.mp4|4758496802|D21F67D9BD6ED2112579599577B04B3F|h=LDMDZDCWMOYJZM6INQFIELWBWRJA4AHY|/<br>ed2k://|file|音乐之声.BD1280高清国英三语中英双字.mp4|2618490678|8439F62B3CFFAF8EEB9C2F519CF1F5F5|h=YJRRB7GBL6CIZGNB5FUTBB6DF2ZQP22H|/<br>http://pan.baidu.com/s/1cA46SI','full/24e31d5fc3336ac9cd58f68740e65ca1aa37efaa.jpg'),(24,'http://www.dygang.com/bd/20110929/ef24a791104a65591ecf667c22e02fa3.htm','无间道风云[高清]','2016-07-14','<br>ed2k://|file|无间行者.BD1280超清国英双语中英双字.mp4|3791633294|23C268F597C35F058D136BDDD4986CCC|h=EANB4QZUZMKTZ3XXWUD5XZT3EN5MQG7Q|/<br>ed2k://|file|无间行者.BD1280高清国英双语中英双字.mp4|2111749016|6C6C40DEE0979E7663EA45076D560AF2|h=5J3Q5NHDM64VVDKH4EQVZKBDC6W3YT2A|/<br>http://pan.baidu.com/s/1pKQIOiv<br>ftp://dy131.com:6vdy.com@ftp1.66e.cc:1524/【6v电影www.dy131.com】无间行者.720p.国英双语.BD中英双字.mkv<br>ftp://6:6@ftp.kan66.com:4538/【6v电影www.dy131.com】无间道风云BD中英双字1280高清.rmvb<br>ftp://6:6@ftp.kan66.com:4538/【6v电影www.dy131.com】无间道风云BD中英双字1024高清.rmvb','full/207ea7494b951951f228fc982feadf2b621af91c.jpg'),(25,'http://www.dygang.com/bd/20160622/34954.htm','硬核亨利[高清]','2016-07-14','<br>ed2k://|file|%E7%A1%AC%E6%A0%B8%E4%BA%A8%E5%88%A9.BD1280%E8%B6%85%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|2112849717|91E41521EC363339B74263BFA8BBA118|h=T3E7WHJWLJGFB7XFQKPF2CTPHSAHET6R|/<br>ed2k://|file|%E7%A1%AC%E6%A0%B8%E4%BA%A8%E5%88%A9.BD1280%E9%AB%98%E6%B8%85%E4%B8%AD%E8%8B%B1%E5%8F%8C%E5%AD%97.mp4|1191393249|C69192BFE0CDA278DD3DFAB90CE66CF3|h=3BSKJCDAIESMCKQFO2H3ZDTKW2G5QQLA|/<br>http://pan.baidu.com/s/1eROtplg','full/814ad847285f1be73268202691835810da8b9fa2.jpg'),(26,'http://www.dygang.com/bd/20160715/35126.htm','该隐之子[高清]','2016-07-15','<br>ed2k://|file|Hijo.de.Ca%C3%ADn.2013.%E8%AF%A5%E9%9A%90%E4%B9%8B%E5%AD%90.720p.Chi_Spa.ZMZ-BD-MP4.mp4|1361274838|0bf0044cf76fba3697a2625f02458eb4|h=fvee4meo7r56m7m5y45fsprjpjp5emfy|/','full/9b3d10ba03e6914a8aab18cf5ab8d2168540b49f.jpg'),(27,'http://www.dygang.com/bd/20160715/35127.htm','特别搜查：死囚来信','2016-07-15','<br>ed2k://|file|%E7%89%B9%E5%88%AB%E8%B0%83%E6%9F%A5.720P.HD%E4%B8%AD%E5%AD%97[www.66ys.tv].mkv|1695304130|A70B140355A7B99A78C86CC077C613CC|h=YHDU6REDRJ34AZ76EKFNJD3E6VMSF746|/','full/574dced24ee785b06c96d950ab930bab88903085.jpg'),(28,'http://www.dygang.com/ys/20160424/34568.htm','我的特工爷爷','2016-07-15','','full/1d0f8a17ee7b705b7020b5309f719c43c4acf656.jpg'),(29,'http://www.dygang.com/720P/20160703/35061.htm','新尸骨无存[720p]','2016-07-03','<br>http://xz.66vod.net:889/2015/Cabin.Fever.2016.720p.BluRay.x264-ROVERS.torrent','full/e62ec1559a22104faefa0d3d672231b5d2a38bee.jpg'),(30,'http://www.dygang.com/1080p/20160703/35062.htm','新尸骨无存[1080p]','2016-07-03','<br>http://xz.66vod.net:889/2015/Cabin.Fever.2016.1080p.BluRay.x264-ROVERS.torrent','full/e62ec1559a22104faefa0d3d672231b5d2a38bee.jpg'),(31,'http://www.dygang.com/720P/20160706/35080.htm','一千零一夜第1部：不安之人[720p中字]','2016-07-06','<br>http://xz.66vod.net:889/2015/Arabian.Nights.Volume.1.The.Restless.One.2015.720p.BluRay.x264-WiKi.torrent<br>http://xz.66vod.net:889/2015/Arabian.Nights.Volume.1.The.Restless.One.2015.720p.BluRay.x264-WiKi.chs.zip','full/7b0a8f2a33e55e74fe5049e8c303e7e7592e752a.jpg'),(32,'http://www.dygang.com/720P/20160706/35081.htm','一千零一夜第2部：凄凉之人[720p中字]','2016-07-06','<br>http://xz.66vod.net:889/2015/Arabian.Nights.Volume.2.The.Desolate.One.2015.720p.BluRay.x264-WiKi.torrent<br>http://xz.66vod.net:889/2015/Arabian.Nights.Volume.2.The.Desolate.One.2015.720p.BluRay.x264-WiKi.chs.zip','full/2c6eda1cc385936d84de062dbb1ddff9e81752bd.jpg'),(33,'http://www.dygang.com/720P/20160706/35082.htm','一千零一夜第3部：迷醉之人[720p中字]','2016-07-06','','full/80dc7370fbed3fccac7ed4c450e0897abba0d38d.jpg'),(34,'http://www.dygang.com/720P/20160706/35083.htm','进击的巨人真人版：前篇[720p]','2016-07-06','<br>http://xz.66vod.net:889/2015/Attack.on.Titan.Part.1.2015.LIMITED.720p.BluRay.x264-USURY.torrent','full/cf2fc0db38c54362257e10752e433479a74920a4.jpg'),(35,'http://www.dygang.com/1080p/20160706/35084.htm','进击的巨人真人版：前篇[1080p]','2016-07-06','<br>http://xz.66vod.net:889/2015/Attack.on.Titan.Part.1.2015.LIMITED.1080p.BluRay.x264-USURY.torrent','full/cf2fc0db38c54362257e10752e433479a74920a4.jpg');
/*!40000 ALTER TABLE `list_movie_detial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_main_demo_pic`
--

DROP TABLE IF EXISTS `main_main_demo_pic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_main_demo_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `pic_num` varchar(1) NOT NULL,
  `pic_A_title` varchar(10) NOT NULL,
  `pic_A_imgpath` varchar(100) NOT NULL,
  `pic_B_title` varchar(10) NOT NULL,
  `pic_B_imgpath` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_main_demo_pic`
--

LOCK TABLES `main_main_demo_pic` WRITE;
/*!40000 ALTER TABLE `main_main_demo_pic` DISABLE KEYS */;
INSERT INTO `main_main_demo_pic` VALUES (1,'蓝莓截图','2','1','blueberry/blog-img-01.jpg','2','blueberry/blog-img-02.jpg');
/*!40000 ALTER TABLE `main_main_demo_pic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_main_demoinfo`
--

DROP TABLE IF EXISTS `main_main_demoinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `main_main_demoinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `Feature_A_title` varchar(20) NOT NULL,
  `Feature_A_data` varchar(100) NOT NULL,
  `Feature_B_title` varchar(20) NOT NULL,
  `Feature_B_data` varchar(100) NOT NULL,
  `Feature_C_title` varchar(20) NOT NULL,
  `Feature_C_data` varchar(100) NOT NULL,
  `image_paths` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_main_demoinfo`
--

LOCK TABLES `main_main_demoinfo` WRITE;
/*!40000 ALTER TABLE `main_main_demoinfo` DISABLE KEYS */;
INSERT INTO `main_main_demoinfo` VALUES (1,'蓝莓百科','蓝莓百科','a1','a2','b1','b2','c1','c2','blueberry.png'),(2,'车牌识别推广','车牌识别推广','a1','a2','b1','b2','c1','c2','recplate.png');
/*!40000 ALTER TABLE `main_main_demoinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mytools_tools_site`
--

DROP TABLE IF EXISTS `mytools_tools_site`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mytools_tools_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_url` varchar(200) NOT NULL,
  `site_info` varchar(200) NOT NULL,
  `site_title` varchar(200) NOT NULL,
  `site_type` varchar(2560) NOT NULL,
  `image_paths` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mytools_tools_site`
--

LOCK TABLES `mytools_tools_site` WRITE;
/*!40000 ALTER TABLE `mytools_tools_site` DISABLE KEYS */;
INSERT INTO `mytools_tools_site` VALUES (1,'http://fontawesome.io/icons/','提供可缩放的矢量图标','Font Awesome','设计开发','fa fa-font-awesome'),(2,'http://www.bootcss.com/p/layoutit/','bootstrap可视化布局','可视化布局','设计开发','fa fa-bold'),(3,'http://sc.chinaz.com/moban/','站长素材-网页模板','网页模板','设计开发','fa fa-motorcycle');
/*!40000 ALTER TABLE `mytools_tools_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_profile`
--

DROP TABLE IF EXISTS `profiles_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles_profile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mugshot` varchar(100) NOT NULL,
  `privacy` varchar(15) NOT NULL,
  `language` varchar(5) NOT NULL,
  `gender` smallint(5) unsigned DEFAULT NULL,
  `website` varchar(200) NOT NULL,
  `location` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `about_me` longtext NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `profiles_profile_user_id_a3e81f91_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_profile`
--

LOCK TABLES `profiles_profile` WRITE;
/*!40000 ALTER TABLE `profiles_profile` DISABLE KEYS */;
INSERT INTO `profiles_profile` VALUES (3,'','registered','en',NULL,'','',NULL,'',5);
/*!40000 ALTER TABLE `profiles_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_tag`
--

DROP TABLE IF EXISTS `tagging_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_tag`
--

LOCK TABLES `tagging_tag` WRITE;
/*!40000 ALTER TABLE `tagging_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tagging_taggeditem`
--

DROP TABLE IF EXISTS `tagging_taggeditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tagging_taggeditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(10) unsigned NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tagging_taggeditem_tag_id_3d53f09d_uniq` (`tag_id`,`content_type_id`,`object_id`),
  KEY `tagging_taggeditem_af31437c` (`object_id`),
  KEY `tagging_tagge_content_type_id_ede1c265_fk_django_content_type_id` (`content_type_id`),
  CONSTRAINT `tagging_tagge_content_type_id_ede1c265_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `tagging_taggeditem_tag_id_f008ca79_fk_tagging_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tagging_tag` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tagging_taggeditem`
--

LOCK TABLES `tagging_taggeditem` WRITE;
/*!40000 ALTER TABLE `tagging_taggeditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `tagging_taggeditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userena_userenasignup`
--

DROP TABLE IF EXISTS `userena_userenasignup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userena_userenasignup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_active` datetime(6) DEFAULT NULL,
  `activation_key` varchar(40) NOT NULL,
  `activation_notification_send` tinyint(1) NOT NULL,
  `email_unconfirmed` varchar(254) NOT NULL,
  `email_confirmation_key` varchar(40) NOT NULL,
  `email_confirmation_key_created` datetime(6) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `userena_userenasignup_user_id_2c4ec74f_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userena_userenasignup`
--

LOCK TABLES `userena_userenasignup` WRITE;
/*!40000 ALTER TABLE `userena_userenasignup` DISABLE KEYS */;
/*!40000 ALTER TABLE `userena_userenasignup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_category`
--

DROP TABLE IF EXISTS `zinnia_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`),
  KEY `zinnia_category_caf7cc51` (`lft`),
  KEY `zinnia_category_3cfbd988` (`rght`),
  KEY `zinnia_category_656442a0` (`tree_id`),
  KEY `zinnia_category_c9e9a848` (`level`),
  KEY `zinnia_category_6be37982` (`parent_id`),
  CONSTRAINT `zinnia_category_parent_id_9957d607_fk_zinnia_category_id` FOREIGN KEY (`parent_id`) REFERENCES `zinnia_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_category`
--

LOCK TABLES `zinnia_category` WRITE;
/*!40000 ALTER TABLE `zinnia_category` DISABLE KEYS */;
INSERT INTO `zinnia_category` VALUES (1,'123','123','123',1,2,1,0,NULL);
/*!40000 ALTER TABLE `zinnia_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_entry`
--

DROP TABLE IF EXISTS `zinnia_entry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_entry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `start_publication` datetime(6) DEFAULT NULL,
  `end_publication` datetime(6) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `last_update` datetime(6) NOT NULL,
  `content` longtext NOT NULL,
  `comment_enabled` tinyint(1) NOT NULL,
  `pingback_enabled` tinyint(1) NOT NULL,
  `trackback_enabled` tinyint(1) NOT NULL,
  `comment_count` int(11) NOT NULL,
  `pingback_count` int(11) NOT NULL,
  `trackback_count` int(11) NOT NULL,
  `excerpt` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `password` varchar(50) NOT NULL,
  `content_template` varchar(250) NOT NULL,
  `detail_template` varchar(250) NOT NULL,
  `image_caption` longtext NOT NULL,
  `lead` longtext NOT NULL,
  `publication_date` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `zinnia_entry_2dbcba41` (`slug`),
  KEY `zinnia_entry_9acb4454` (`status`),
  KEY `zinnia_entry_6dc6f11d` (`start_publication`),
  KEY `zinnia_entry_b803a79a` (`end_publication`),
  KEY `zinnia_entry_slug_8de07f28_idx` (`slug`,`publication_date`),
  KEY `zinnia_entry_status_b9d97cbc_idx` (`status`,`publication_date`,`start_publication`,`end_publication`),
  KEY `zinnia_entry_93b83098` (`publication_date`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_entry`
--

LOCK TABLES `zinnia_entry` WRITE;
/*!40000 ALTER TABLE `zinnia_entry` DISABLE KEYS */;
INSERT INTO `zinnia_entry` VALUES (6,'qwe','qwe',2,NULL,NULL,'2016-07-06 03:03:34.510164','2016-07-06 03:03:34.526378','qwe',1,1,1,0,0,0,'qwe','static/uploads/2016/07/06/recplate.png',0,'',0,'','zinnia/_entry_detail.html','entry_detail.html','qwe','qwe','2016-07-06 03:03:17.000000'),(7,'qqq','qqq',2,NULL,NULL,'2016-07-06 03:34:18.175246','2016-07-06 03:34:18.185123','qqq',1,1,1,0,0,0,'qqq','static/uploads/2016/07/06/blog-img-01.jpg',0,'',0,'','zinnia/_entry_detail.html','entry_detail.html','','qqq','2016-07-06 03:33:58.000000');
/*!40000 ALTER TABLE `zinnia_entry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_entry_authors`
--

DROP TABLE IF EXISTS `zinnia_entry_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_entry_authors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_authors_entry_id_15a74736_uniq` (`entry_id`,`author_id`),
  KEY `zinnia_entry_authors_author_id_c95ec445_fk_auth_user_id` (`author_id`),
  CONSTRAINT `zinnia_entry_authors_author_id_c95ec445_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `zinnia_entry_authors_entry_id_7e8cdb2d_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_entry_authors`
--

LOCK TABLES `zinnia_entry_authors` WRITE;
/*!40000 ALTER TABLE `zinnia_entry_authors` DISABLE KEYS */;
INSERT INTO `zinnia_entry_authors` VALUES (5,6,5),(6,7,5);
/*!40000 ALTER TABLE `zinnia_entry_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_entry_categories`
--

DROP TABLE IF EXISTS `zinnia_entry_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_entry_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_categories_entry_id_06e8a1ea_uniq` (`entry_id`,`category_id`),
  KEY `zinnia_entry_categori_category_id_1af4a3b8_fk_zinnia_category_id` (`category_id`),
  CONSTRAINT `zinnia_entry_categori_category_id_1af4a3b8_fk_zinnia_category_id` FOREIGN KEY (`category_id`) REFERENCES `zinnia_category` (`id`),
  CONSTRAINT `zinnia_entry_categories_entry_id_2245c94e_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_entry_categories`
--

LOCK TABLES `zinnia_entry_categories` WRITE;
/*!40000 ALTER TABLE `zinnia_entry_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `zinnia_entry_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_entry_related`
--

DROP TABLE IF EXISTS `zinnia_entry_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_entry_related` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_entry_id` int(11) NOT NULL,
  `to_entry_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_related_from_entry_id_f5c132fc_uniq` (`from_entry_id`,`to_entry_id`),
  KEY `zinnia_entry_related_to_entry_id_f3ace6a2_fk_zinnia_entry_id` (`to_entry_id`),
  CONSTRAINT `zinnia_entry_related_from_entry_id_ef0e020e_fk_zinnia_entry_id` FOREIGN KEY (`from_entry_id`) REFERENCES `zinnia_entry` (`id`),
  CONSTRAINT `zinnia_entry_related_to_entry_id_f3ace6a2_fk_zinnia_entry_id` FOREIGN KEY (`to_entry_id`) REFERENCES `zinnia_entry` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_entry_related`
--

LOCK TABLES `zinnia_entry_related` WRITE;
/*!40000 ALTER TABLE `zinnia_entry_related` DISABLE KEYS */;
/*!40000 ALTER TABLE `zinnia_entry_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zinnia_entry_sites`
--

DROP TABLE IF EXISTS `zinnia_entry_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zinnia_entry_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zinnia_entry_sites_entry_id_f65c3bb6_uniq` (`entry_id`,`site_id`),
  KEY `zinnia_entry_sites_site_id_3b37fedc_fk_django_site_id` (`site_id`),
  CONSTRAINT `zinnia_entry_sites_entry_id_b62220dc_fk_zinnia_entry_id` FOREIGN KEY (`entry_id`) REFERENCES `zinnia_entry` (`id`),
  CONSTRAINT `zinnia_entry_sites_site_id_3b37fedc_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zinnia_entry_sites`
--

LOCK TABLES `zinnia_entry_sites` WRITE;
/*!40000 ALTER TABLE `zinnia_entry_sites` DISABLE KEYS */;
INSERT INTO `zinnia_entry_sites` VALUES (6,6,1),(7,7,1);
/*!40000 ALTER TABLE `zinnia_entry_sites` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-15 11:16:16
