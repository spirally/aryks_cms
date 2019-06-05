-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: 
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Current Database: `arykscms`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `arykscms` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;

USE `arykscms`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=276 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can use Structure mode',1,'use_structure'),(2,'Can change page',2,'change_page'),(3,'Can add permission',3,'add_permission'),(4,'Can change permission',3,'change_permission'),(5,'Can delete permission',3,'delete_permission'),(6,'Can add group',4,'add_group'),(7,'Can change group',4,'change_group'),(8,'Can delete group',4,'delete_group'),(9,'Can add user',5,'add_user'),(10,'Can change user',5,'change_user'),(11,'Can delete user',5,'delete_user'),(12,'Can add content type',6,'add_contenttype'),(13,'Can change content type',6,'change_contenttype'),(14,'Can delete content type',6,'delete_contenttype'),(15,'Can add session',7,'add_session'),(16,'Can change session',7,'change_session'),(17,'Can delete session',7,'delete_session'),(18,'Can add log entry',8,'add_logentry'),(19,'Can change log entry',8,'change_logentry'),(20,'Can delete log entry',8,'delete_logentry'),(21,'Can add site',9,'add_site'),(22,'Can change site',9,'change_site'),(23,'Can delete site',9,'delete_site'),(24,'Can add cms plugin',10,'add_cmsplugin'),(25,'Can change cms plugin',10,'change_cmsplugin'),(26,'Can delete cms plugin',10,'delete_cmsplugin'),(27,'Can add alias plugin model',11,'add_aliaspluginmodel'),(28,'Can change alias plugin model',11,'change_aliaspluginmodel'),(29,'Can delete alias plugin model',11,'delete_aliaspluginmodel'),(30,'Can add Page global permission',12,'add_globalpagepermission'),(31,'Can change Page global permission',12,'change_globalpagepermission'),(32,'Can delete Page global permission',12,'delete_globalpagepermission'),(33,'Can add page',2,'add_page'),(34,'Can delete page',2,'delete_page'),(35,'Can view page',2,'view_page'),(36,'Can publish page',2,'publish_page'),(37,'Can edit static placeholders',2,'edit_static_placeholder'),(38,'Can add Page permission',13,'add_pagepermission'),(39,'Can change Page permission',13,'change_pagepermission'),(40,'Can delete Page permission',13,'delete_pagepermission'),(41,'Can add User (page)',14,'add_pageuser'),(42,'Can change User (page)',14,'change_pageuser'),(43,'Can delete User (page)',14,'delete_pageuser'),(44,'Can add User group (page)',15,'add_pageusergroup'),(45,'Can change User group (page)',15,'change_pageusergroup'),(46,'Can delete User group (page)',15,'delete_pageusergroup'),(47,'Can add placeholder',1,'add_placeholder'),(48,'Can change placeholder',1,'change_placeholder'),(49,'Can delete placeholder',1,'delete_placeholder'),(50,'Can add placeholder reference',16,'add_placeholderreference'),(51,'Can change placeholder reference',16,'change_placeholderreference'),(52,'Can delete placeholder reference',16,'delete_placeholderreference'),(53,'Can add static placeholder',17,'add_staticplaceholder'),(54,'Can change static placeholder',17,'change_staticplaceholder'),(55,'Can delete static placeholder',17,'delete_staticplaceholder'),(56,'Can add title',18,'add_title'),(57,'Can change title',18,'change_title'),(58,'Can delete title',18,'delete_title'),(59,'Can add user setting',19,'add_usersettings'),(60,'Can change user setting',19,'change_usersettings'),(61,'Can delete user setting',19,'delete_usersettings'),(62,'Can add urlconf revision',20,'add_urlconfrevision'),(63,'Can change urlconf revision',20,'change_urlconfrevision'),(64,'Can delete urlconf revision',20,'delete_urlconfrevision'),(65,'Can add cache key',23,'add_cachekey'),(66,'Can change cache key',23,'change_cachekey'),(67,'Can delete cache key',23,'delete_cachekey'),(68,'Can add text',24,'add_text'),(69,'Can change text',24,'change_text'),(70,'Can delete text',24,'delete_text'),(71,'Can add clipboard',25,'add_clipboard'),(72,'Can change clipboard',25,'change_clipboard'),(73,'Can delete clipboard',25,'delete_clipboard'),(74,'Can add clipboard item',26,'add_clipboarditem'),(75,'Can change clipboard item',26,'change_clipboarditem'),(76,'Can delete clipboard item',26,'delete_clipboarditem'),(77,'Can add file',27,'add_file'),(78,'Can change file',27,'change_file'),(79,'Can delete file',27,'delete_file'),(80,'Can add Folder',28,'add_folder'),(81,'Can change Folder',28,'change_folder'),(82,'Can delete Folder',28,'delete_folder'),(83,'Can use directory listing',28,'can_use_directory_listing'),(84,'Can add folder permission',29,'add_folderpermission'),(85,'Can change folder permission',29,'change_folderpermission'),(86,'Can delete folder permission',29,'delete_folderpermission'),(87,'Can add image',30,'add_image'),(88,'Can change image',30,'change_image'),(89,'Can delete image',30,'delete_image'),(90,'Can add thumbnail option',31,'add_thumbnailoption'),(91,'Can change thumbnail option',31,'change_thumbnailoption'),(92,'Can delete thumbnail option',31,'delete_thumbnailoption'),(93,'Can add source',32,'add_source'),(94,'Can change source',32,'change_source'),(95,'Can delete source',32,'delete_source'),(96,'Can add thumbnail',33,'add_thumbnail'),(97,'Can change thumbnail',33,'change_thumbnail'),(98,'Can delete thumbnail',33,'delete_thumbnail'),(99,'Can add thumbnail dimensions',34,'add_thumbnaildimensions'),(100,'Can change thumbnail dimensions',34,'change_thumbnaildimensions'),(101,'Can delete thumbnail dimensions',34,'delete_thumbnaildimensions'),(102,'Can add column',35,'add_column'),(103,'Can change column',35,'change_column'),(104,'Can delete column',35,'delete_column'),(105,'Can add multi columns',36,'add_multicolumns'),(106,'Can change multi columns',36,'change_multicolumns'),(107,'Can delete multi columns',36,'delete_multicolumns'),(108,'Can add file',37,'add_file'),(109,'Can change file',37,'change_file'),(110,'Can delete file',37,'delete_file'),(111,'Can add folder',38,'add_folder'),(112,'Can change folder',38,'change_folder'),(113,'Can delete folder',38,'delete_folder'),(114,'Can add link',39,'add_link'),(115,'Can change link',39,'change_link'),(116,'Can delete link',39,'delete_link'),(117,'Can add picture',40,'add_picture'),(118,'Can change picture',40,'change_picture'),(119,'Can delete picture',40,'delete_picture'),(120,'Can add style',41,'add_style'),(121,'Can change style',41,'change_style'),(122,'Can delete style',41,'delete_style'),(123,'Can add Snippet',42,'add_snippet'),(124,'Can change Snippet',42,'change_snippet'),(125,'Can delete Snippet',42,'delete_snippet'),(126,'Can add Snippet',43,'add_snippetptr'),(127,'Can change Snippet',43,'change_snippetptr'),(128,'Can delete Snippet',43,'delete_snippetptr'),(129,'Can add google map',44,'add_googlemap'),(130,'Can change google map',44,'change_googlemap'),(131,'Can delete google map',44,'delete_googlemap'),(132,'Can add google map marker',45,'add_googlemapmarker'),(133,'Can change google map marker',45,'change_googlemapmarker'),(134,'Can delete google map marker',45,'delete_googlemapmarker'),(135,'Can add google map route',46,'add_googlemaproute'),(136,'Can change google map route',46,'change_googlemaproute'),(137,'Can delete google map route',46,'delete_googlemaproute'),(138,'Can add video player',47,'add_videoplayer'),(139,'Can change video player',47,'change_videoplayer'),(140,'Can delete video player',47,'delete_videoplayer'),(141,'Can add video source',48,'add_videosource'),(142,'Can change video source',48,'change_videosource'),(143,'Can delete video source',48,'delete_videosource'),(144,'Can add video track',49,'add_videotrack'),(145,'Can change video track',49,'change_videotrack'),(146,'Can delete video track',49,'delete_videotrack'),(147,'Can add icon',50,'add_icon'),(148,'Can change icon',50,'change_icon'),(149,'Can delete icon',50,'delete_icon'),(150,'Can add bootstrap4 alerts',51,'add_bootstrap4alerts'),(151,'Can change bootstrap4 alerts',51,'change_bootstrap4alerts'),(152,'Can delete bootstrap4 alerts',51,'delete_bootstrap4alerts'),(153,'Can add bootstrap4 badge',52,'add_bootstrap4badge'),(154,'Can change bootstrap4 badge',52,'change_bootstrap4badge'),(155,'Can delete bootstrap4 badge',52,'delete_bootstrap4badge'),(156,'Can add bootstrap4 card',53,'add_bootstrap4card'),(157,'Can change bootstrap4 card',53,'change_bootstrap4card'),(158,'Can delete bootstrap4 card',53,'delete_bootstrap4card'),(159,'Can add bootstrap4 card inner',54,'add_bootstrap4cardinner'),(160,'Can change bootstrap4 card inner',54,'change_bootstrap4cardinner'),(161,'Can delete bootstrap4 card inner',54,'delete_bootstrap4cardinner'),(162,'Can add bootstrap4 carousel',55,'add_bootstrap4carousel'),(163,'Can change bootstrap4 carousel',55,'change_bootstrap4carousel'),(164,'Can delete bootstrap4 carousel',55,'delete_bootstrap4carousel'),(165,'Can add bootstrap4 carousel slide',56,'add_bootstrap4carouselslide'),(166,'Can change bootstrap4 carousel slide',56,'change_bootstrap4carouselslide'),(167,'Can delete bootstrap4 carousel slide',56,'delete_bootstrap4carouselslide'),(168,'Can add bootstrap4 collapse',57,'add_bootstrap4collapse'),(169,'Can change bootstrap4 collapse',57,'change_bootstrap4collapse'),(170,'Can delete bootstrap4 collapse',57,'delete_bootstrap4collapse'),(171,'Can add bootstrap4 collapse container',58,'add_bootstrap4collapsecontainer'),(172,'Can change bootstrap4 collapse container',58,'change_bootstrap4collapsecontainer'),(173,'Can delete bootstrap4 collapse container',58,'delete_bootstrap4collapsecontainer'),(174,'Can add bootstrap4 collapse trigger',59,'add_bootstrap4collapsetrigger'),(175,'Can change bootstrap4 collapse trigger',59,'change_bootstrap4collapsetrigger'),(176,'Can delete bootstrap4 collapse trigger',59,'delete_bootstrap4collapsetrigger'),(177,'Can add bootstrap4 blockquote',60,'add_bootstrap4blockquote'),(178,'Can change bootstrap4 blockquote',60,'change_bootstrap4blockquote'),(179,'Can delete bootstrap4 blockquote',60,'delete_bootstrap4blockquote'),(180,'Can add bootstrap4 code',61,'add_bootstrap4code'),(181,'Can change bootstrap4 code',61,'change_bootstrap4code'),(182,'Can delete bootstrap4 code',61,'delete_bootstrap4code'),(183,'Can add bootstrap4 figure',62,'add_bootstrap4figure'),(184,'Can change bootstrap4 figure',62,'change_bootstrap4figure'),(185,'Can delete bootstrap4 figure',62,'delete_bootstrap4figure'),(186,'Can add bootstrap4 grid column',63,'add_bootstrap4gridcolumn'),(187,'Can change bootstrap4 grid column',63,'change_bootstrap4gridcolumn'),(188,'Can delete bootstrap4 grid column',63,'delete_bootstrap4gridcolumn'),(189,'Can add bootstrap4 grid container',64,'add_bootstrap4gridcontainer'),(190,'Can change bootstrap4 grid container',64,'change_bootstrap4gridcontainer'),(191,'Can delete bootstrap4 grid container',64,'delete_bootstrap4gridcontainer'),(192,'Can add bootstrap4 grid row',65,'add_bootstrap4gridrow'),(193,'Can change bootstrap4 grid row',65,'change_bootstrap4gridrow'),(194,'Can delete bootstrap4 grid row',65,'delete_bootstrap4gridrow'),(195,'Can add bootstrap4 jumbotron',66,'add_bootstrap4jumbotron'),(196,'Can change bootstrap4 jumbotron',66,'change_bootstrap4jumbotron'),(197,'Can delete bootstrap4 jumbotron',66,'delete_bootstrap4jumbotron'),(198,'Can add bootstrap4 link',67,'add_bootstrap4link'),(199,'Can change bootstrap4 link',67,'change_bootstrap4link'),(200,'Can delete bootstrap4 link',67,'delete_bootstrap4link'),(201,'Can add bootstrap4 list group',68,'add_bootstrap4listgroup'),(202,'Can change bootstrap4 list group',68,'change_bootstrap4listgroup'),(203,'Can delete bootstrap4 list group',68,'delete_bootstrap4listgroup'),(204,'Can add bootstrap4 list group item',69,'add_bootstrap4listgroupitem'),(205,'Can change bootstrap4 list group item',69,'change_bootstrap4listgroupitem'),(206,'Can delete bootstrap4 list group item',69,'delete_bootstrap4listgroupitem'),(207,'Can add bootstrap4 media',70,'add_bootstrap4media'),(208,'Can change bootstrap4 media',70,'change_bootstrap4media'),(209,'Can delete bootstrap4 media',70,'delete_bootstrap4media'),(210,'Can add bootstrap4 media body',71,'add_bootstrap4mediabody'),(211,'Can change bootstrap4 media body',71,'change_bootstrap4mediabody'),(212,'Can delete bootstrap4 media body',71,'delete_bootstrap4mediabody'),(213,'Can add bootstrap4 picture',72,'add_bootstrap4picture'),(214,'Can change bootstrap4 picture',72,'change_bootstrap4picture'),(215,'Can delete bootstrap4 picture',72,'delete_bootstrap4picture'),(216,'Can add bootstrap4 tab',73,'add_bootstrap4tab'),(217,'Can change bootstrap4 tab',73,'change_bootstrap4tab'),(218,'Can delete bootstrap4 tab',73,'delete_bootstrap4tab'),(219,'Can add bootstrap4 tab item',74,'add_bootstrap4tabitem'),(220,'Can change bootstrap4 tab item',74,'change_bootstrap4tabitem'),(221,'Can delete bootstrap4 tab item',74,'delete_bootstrap4tabitem'),(222,'Can add bootstrap4 spacing',75,'add_bootstrap4spacing'),(223,'Can change bootstrap4 spacing',75,'change_bootstrap4spacing'),(224,'Can delete bootstrap4 spacing',75,'delete_bootstrap4spacing'),(225,'Can add Тематика',76,'add_category'),(226,'Can change Тематика',76,'change_category'),(227,'Can delete Тематика',76,'delete_category'),(228,'Can add Изображение',77,'add_images'),(229,'Can change Изображение',77,'change_images'),(230,'Can delete Изображение',77,'delete_images'),(231,'Can add Вариант',78,'add_offer'),(232,'Can change Вариант',78,'change_offer'),(233,'Can delete Вариант',78,'delete_offer'),(234,'Can add Инфопродукт',79,'add_product'),(235,'Can change Инфопродукт',79,'change_product'),(236,'Can delete Инфопродукт',79,'delete_product'),(237,'Can add Характеристика инфопродукта',80,'add_productproperty'),(238,'Can change Характеристика инфопродукта',80,'change_productproperty'),(239,'Can delete Характеристика инфопродукта',80,'delete_productproperty'),(240,'Can add Характеристика категории',81,'add_typeproperty'),(241,'Can change Характеристика категории',81,'change_typeproperty'),(242,'Can delete Характеристика категории',81,'delete_typeproperty'),(243,'Can add Filter Category',82,'add_filtercategory'),(244,'Can change Filter Category',82,'change_filtercategory'),(245,'Can delete Filter Category',82,'delete_filtercategory'),(246,'Can add Filter Select',83,'add_filterselect'),(247,'Can change Filter Select',83,'change_filterselect'),(248,'Can delete Filter Select',83,'delete_filterselect'),(249,'Can add Product Filter',84,'add_productfilter'),(250,'Can change Product Filter',84,'change_productfilter'),(251,'Can delete Product Filter',84,'delete_productfilter'),(252,'Can add Тематика',86,'add_category'),(253,'Can change Тематика',86,'change_category'),(254,'Can delete Тематика',86,'delete_category'),(255,'Can add Изображение',87,'add_images'),(256,'Can change Изображение',87,'change_images'),(257,'Can delete Изображение',87,'delete_images'),(258,'Can add Вариант',88,'add_offer'),(259,'Can change Вариант',88,'change_offer'),(260,'Can delete Вариант',88,'delete_offer'),(261,'Can add Инфопродукт',85,'add_product'),(262,'Can change Инфопродукт',85,'change_product'),(263,'Can delete Инфопродукт',85,'delete_product'),(264,'Can add Тип инфопродукта',89,'add_producttype'),(265,'Can change Тип инфопродукта',89,'change_producttype'),(266,'Can delete Тип инфопродукта',89,'delete_producttype'),(267,'Can add owner',90,'add_owner'),(268,'Can change owner',90,'change_owner'),(269,'Can delete owner',90,'delete_owner'),(270,'Can add author',91,'add_author'),(271,'Can change author',91,'change_author'),(272,'Can delete author',91,'delete_author'),(273,'Can add school',92,'add_school'),(274,'Can change school',92,'change_school'),(275,'Can delete school',92,'delete_school');
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
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$36000$3dSQDkSjc0XI$uYwxNd48oxzW4XA4ocZZUQb4e31RT5bX4bUwH8FCu8A=','2019-05-18 08:42:54.895461',1,'admin','','','admin@admin.com',1,1,'2019-04-27 15:18:02.013340');
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
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_author`
--

DROP TABLE IF EXISTS `authors_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_author` (
  `owner_ptr_id` int(11) NOT NULL,
  `name_nominative` varchar(250) DEFAULT NULL,
  `name_genitive` varchar(250) DEFAULT NULL,
  `name_dative` varchar(250) DEFAULT NULL,
  `name_accusative` varchar(250) DEFAULT NULL,
  `name_ablative` varchar(250) DEFAULT NULL,
  `name_prepositional` varchar(250) DEFAULT NULL,
  `education` varchar(500) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`owner_ptr_id`),
  KEY `authors_author_parent_id_d73e8b82_fk_authors_school_owner_ptr_id` (`parent_id`),
  CONSTRAINT `authors_author_owner_ptr_id_60b995a8_fk_authors_owner_id` FOREIGN KEY (`owner_ptr_id`) REFERENCES `authors_owner` (`id`),
  CONSTRAINT `authors_author_parent_id_d73e8b82_fk_authors_school_owner_ptr_id` FOREIGN KEY (`parent_id`) REFERENCES `authors_school` (`owner_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_author`
--

LOCK TABLES `authors_author` WRITE;
/*!40000 ALTER TABLE `authors_author` DISABLE KEYS */;
INSERT INTO `authors_author` VALUES (2,'Наталья Закхайм','Натальи Закхайм','Наталье Закхайм','Наталью Закхайм','Натальей Закхайм','Наталье Закхайм','Психфак, МГУ им. Ломоносова | 04\'',NULL),(3,'Элла Ананьева','Эллы Ананьевой','Элле Ананьевой','Эллу Ананьеву','Эллой Ананьевой','Элле Ананьевой',NULL,1);
/*!40000 ALTER TABLE `authors_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_owner`
--

DROP TABLE IF EXISTS `authors_owner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_owner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deleted` datetime(6) DEFAULT NULL,
  `published` tinyint(1) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `title_menu` varchar(512) DEFAULT NULL,
  `slug` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `seo_keywords` varchar(512) DEFAULT NULL,
  `seo_description` longtext,
  `content` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `contact_website` varchar(250) DEFAULT NULL,
  `contact_partner_site` varchar(250) DEFAULT NULL,
  `contact_email` varchar(250) DEFAULT NULL,
  `contact_post_address` varchar(250) DEFAULT NULL,
  `contact_phone` varchar(250) DEFAULT NULL,
  `contact_skype` varchar(250) DEFAULT NULL,
  `contact_whatsapp` varchar(250) DEFAULT NULL,
  `contact_viber` varchar(250) DEFAULT NULL,
  `contact_telegram` varchar(250) DEFAULT NULL,
  `social_youtube` varchar(250) DEFAULT NULL,
  `social_vk` varchar(250) DEFAULT NULL,
  `social_fb` varchar(250) DEFAULT NULL,
  `social_instagram` varchar(250) DEFAULT NULL,
  `social_telegram` varchar(250) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `city` varchar(250) DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `type` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authors_owner_published_00390f91` (`published`),
  KEY `authors_owner_slug_ced2d346` (`slug`),
  KEY `authors_owner_name_ae89ba18` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_owner`
--

LOCK TABLES `authors_owner` WRITE;
/*!40000 ALTER TABLE `authors_owner` DISABLE KEYS */;
INSERT INTO `authors_owner` VALUES (1,NULL,1,NULL,'Scuola Stile','','',NULL,'','<h2>Подробнее о школе</h2>\r\n\r\n<p>Итальянская школа моды и стиля Scuola Stile &ndash; это 2 тыс. студентов по всему миру, 40 курсов и онлайн-тренингов, 15 квалифицированных преподавателей из Италии. Все педагоги имеют высшее образование и работают как стилисты, дизайнеры, имиджмейкеры и персональные шопперы в Милане.</p>\r\n\r\n<h2>Стиль и мода: онлайн обучение от Scuola Stile</h2>\r\n\r\n<p>Во время подготовки вы виртуально присутствуете в итальянском классе. Сами выбираете время на изучение материалов. Преимущество дистанционного формата в том, что все оплаченные программы остаются в вашем распоряжении и просматривать их можно бесчисленное количество раз.</p>\r\n\r\n<hr />\r\n<p>Перед вами открывается мир высокой моды онлайн. Не имея возможности лично посещать показы топовых модельеров, вы увидите их работы в школе моды и стиля. Будете изучать секреты создания одежды, разработки имиджа и др.&nbsp;</p>\r\n\r\n<p>Пройдя обучение моде, студенты получают шанс попасть на стажировку по выбранной программе в Милан. Если вы давно мечтали прикоснуться к миру высокой моды, получить специальность в этой сфере, то добро пожаловать в первую европейскую онлайн-школу моды и стиля Scuola Stile.</p>','2019-05-19 08:00:05.780744','2019-05-19 08:42:14.419912',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Итальянская школа моды и стиля Scuola Stile','Школа, студенты которой проходят обучение созданию стильного образа по итальянским технологиям и методикам, современному европейскому имиджу, моде у Миланских стилистов и дизайнеров, делая это не выходя из дома.','Москва','authors/school/image/1d193618-7a0c-11e9-b48c-a402b970bc8c.png',2),(2,NULL,1,NULL,NULL,'','',NULL,'','<h2>Подробнее о&nbsp;Наталье Закхайм</h2>\r\n\r\n<p>Имея за плечами свыше 10 лет работы фотомоделью и более 2 лет стилистом, Элла Ананьева знает о мире моды все. Для нее стиль &mdash; возможность показать всем, кто вы есть на самом деле без помощи слов. Каждая женщина по-своему уникальна и Элла помогает подчеркнуть эту индивидуальность, чтобы вы могли превратиться в королеву.</p>\r\n\r\n<hr />\r\n<p>В своих образовательных программах&nbsp;Элла Ананьева обучает тому, как найти свой стиль в одежде. Рассказывает о современных цветовых решениях, приводит массу модных примеров от ведущих модных домов. Стиль человека, это его психология, скрытые тайные желания. И Элла помогает преодолеть эти комплексы, избавиться от стереотипов, выбрать свой образ и измениться раз и навсегда.</p>\r\n\r\n<p>Ее советы о том, как одеваться стильно, уже используют десятки учениц и с каждым днем их число растет. Стоит только прочесть отзывы о ее программах, как сразу становится понятно, что это настоящий эксперт своего дела. Элла уделяет много внимания практике, задает интересные домашние задания, деликатно отвечает на все вопросы и в тоже время беспощадна в отношении плохого вкуса.</p>\r\n\r\n<p>Проходя подготовку у Эллы Ананьевой, вы сформируете хороший вкус, научитесь выбирать одежду и красиво одеваться.</p>','2019-05-19 08:05:31.212263','2019-05-19 08:42:05.836066',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Наталья Закхайм','Эксперт в сфере модельного бизнеса, фотомодель, стилист и профессиональный имидж-консультант. Основатель и идейный вдохновитель онлайн-школы стиля «Раскрой себя». Автор курсов, в которых рассказывает, как раскрыть истинную красоту и создать свой стиль.','Санкт-Петербург','authors/author/image/df10c43e-7a0c-11e9-b48c-a402b970bc8c.jpg',1),(3,NULL,1,NULL,NULL,'','',NULL,'','<h2>Подробнее об Элле Ананьевой</h2>\r\n\r\n<p>Имея за плечами свыше 10 лет работы фотомоделью и более 2 лет стилистом, Элла Ананьева знает о мире моды все. Для нее стиль &mdash; возможность показать всем, кто вы есть на самом деле без помощи слов. Каждая женщина по-своему уникальна и Элла помогает подчеркнуть эту индивидуальность, чтобы вы могли превратиться в королеву.</p>\r\n\r\n<p>В своих образовательных программах&nbsp;Элла Ананьева обучает тому, как найти свой стиль в одежде. Рассказывает о современных цветовых решениях, приводит массу модных примеров от ведущих модных домов. Стиль человека, это его психология, скрытые тайные желания. И Элла помогает преодолеть эти комплексы, избавиться от стереотипов, выбрать свой образ и измениться раз и навсегда.</p>\r\n\r\n<p>Ее советы о том, как одеваться стильно, уже используют десятки учениц и с каждым днем их число растет. Стоит только прочесть отзывы о ее программах, как сразу становится понятно, что это настоящий эксперт своего дела. Элла уделяет много внимания практике, задает интересные домашние задания, деликатно отвечает на все вопросы и в тоже время беспощадна в отношении плохого вкуса.</p>\r\n\r\n<p>Проходя подготовку у Эллы Ананьевой, вы сформируете хороший вкус, научитесь выбирать одежду и красиво одеваться.</p>','2019-05-19 08:52:01.967733','2019-05-19 08:52:01.967772',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Элла Ананьева','Эксперт в сфере модельного бизнеса, фотомодель, стилист и профессиональный имидж-консультант. Основатель и идейный вдохновитель онлайн-школы стиля «Раскрой себя». Автор курсов, в которых рассказывает, как раскрыть истинную красоту и создать свой стиль.','Москва','authors/author/image/5e7c41c0-7a13-11e9-b48c-a402b970bc8c.jpg',1);
/*!40000 ALTER TABLE `authors_owner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors_school`
--

DROP TABLE IF EXISTS `authors_school`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors_school` (
  `owner_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`owner_ptr_id`),
  CONSTRAINT `authors_school_owner_ptr_id_317c09e8_fk_authors_owner_id` FOREIGN KEY (`owner_ptr_id`) REFERENCES `authors_owner` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors_school`
--

LOCK TABLES `authors_school` WRITE;
/*!40000 ALTER TABLE `authors_school` DISABLE KEYS */;
INSERT INTO `authors_school` VALUES (1);
/*!40000 ALTER TABLE `authors_school` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_alerts_bootstrap4alerts`
--

DROP TABLE IF EXISTS `bootstrap4_alerts_bootstrap4alerts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_alerts_bootstrap4alerts` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `alert_context` varchar(255) NOT NULL,
  `alert_dismissable` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_alerts_bo_cmsplugin_ptr_id_16c9e6e1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_alerts_bootstrap4alerts`
--

LOCK TABLES `bootstrap4_alerts_bootstrap4alerts` WRITE;
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_alerts_bootstrap4alerts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_badge_bootstrap4badge`
--

DROP TABLE IF EXISTS `bootstrap4_badge_bootstrap4badge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_badge_bootstrap4badge` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `badge_text` varchar(255) NOT NULL,
  `badge_context` varchar(255) NOT NULL,
  `badge_pills` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_badge_boo_cmsplugin_ptr_id_1cfc1292_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_badge_bootstrap4badge`
--

LOCK TABLES `bootstrap4_badge_bootstrap4badge` WRITE;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_badge_bootstrap4badge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4card`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_card_bootstrap4card` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `card_context` varchar(255) NOT NULL,
  `card_alignment` varchar(255) NOT NULL,
  `card_outline` tinyint(1) NOT NULL,
  `card_text_color` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_c6cf1064_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4card`
--

LOCK TABLES `bootstrap4_card_bootstrap4card` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_card_bootstrap4cardinner`
--

DROP TABLE IF EXISTS `bootstrap4_card_bootstrap4cardinner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_card_bootstrap4cardinner` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `inner_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_card_boot_cmsplugin_ptr_id_8c0b627d_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_card_bootstrap4cardinner`
--

LOCK TABLES `bootstrap4_card_bootstrap4cardinner` WRITE;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_card_bootstrap4cardinner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carousel`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carousel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carousel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `carousel_interval` int(11) NOT NULL,
  `carousel_controls` tinyint(1) NOT NULL,
  `carousel_indicators` tinyint(1) NOT NULL,
  `carousel_keyboard` tinyint(1) NOT NULL,
  `carousel_pause` varchar(255) NOT NULL,
  `carousel_ride` varchar(255) NOT NULL,
  `carousel_wrap` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `carousel_aspect_ratio` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_d97c4671_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carousel`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carousel` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carousel` VALUES (26,'default',5000,1,1,1,'hover','carousel',1,'div','{}','21x9');
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carousel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_carousel_bootstrap4carouselslide`
--

DROP TABLE IF EXISTS `bootstrap4_carousel_bootstrap4carouselslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_carousel_bootstrap4carouselslide` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `carousel_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `carousel_image_id` int(11) DEFAULT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` (`internal_link_id`),
  KEY `bootstrap4_carousel_bootstr_carousel_image_id_c7547e1f` (`carousel_image_id`),
  CONSTRAINT `bootstrap4_carousel__carousel_image_id_c7547e1f_fk_filer_ima` FOREIGN KEY (`carousel_image_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_carousel__cmsplugin_ptr_id_50bebcc8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_carousel__internal_link_id_9040d8b6_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_carousel_bootstrap4carouselslide`
--

LOCK TABLES `bootstrap4_carousel_bootstrap4carouselslide` WRITE;
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` DISABLE KEYS */;
INSERT INTO `bootstrap4_carousel_bootstrap4carouselslide` VALUES ('default','','','','','','','{}',27,'<p>Тест</p>','div',4,NULL),('default','','','','','','','{}',28,'<p>123</p>','div',5,NULL);
/*!40000 ALTER TABLE `bootstrap4_carousel_bootstrap4carouselslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapse`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapse` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `siblings` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_c9f9a375_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapse`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapse` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsecontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_ed2446e8` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_1d125930_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsecontainer`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsecontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsecontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

DROP TABLE IF EXISTS `bootstrap4_collapse_bootstrap4collapsetrigger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `identifier` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_collapse_bootstr_identifier_70258b88` (`identifier`),
  CONSTRAINT `bootstrap4_collapse__cmsplugin_ptr_id_f71d6f15_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_collapse_bootstrap4collapsetrigger`
--

LOCK TABLES `bootstrap4_collapse_bootstrap4collapsetrigger` WRITE;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_collapse_bootstrap4collapsetrigger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4blockquote`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4blockquote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4blockquote` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `quote_content` longtext NOT NULL,
  `quote_origin` longtext NOT NULL,
  `quote_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_8b0021f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4blockquote`
--

LOCK TABLES `bootstrap4_content_bootstrap4blockquote` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4blockquote` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4code`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4code` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `code_content` longtext NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_c1953358_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4code`
--

LOCK TABLES `bootstrap4_content_bootstrap4code` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4code` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_content_bootstrap4figure`
--

DROP TABLE IF EXISTS `bootstrap4_content_bootstrap4figure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_content_bootstrap4figure` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `figure_caption` varchar(255) NOT NULL,
  `figure_alignment` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_content_b_cmsplugin_ptr_id_4ec12771_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_content_bootstrap4figure`
--

LOCK TABLES `bootstrap4_content_bootstrap4figure` WRITE;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_content_bootstrap4figure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcolumn`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcolumn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcolumn` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `column_type` varchar(255) NOT NULL,
  `column_alignment` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `xs_col` int(11) DEFAULT NULL,
  `xs_order` int(11) DEFAULT NULL,
  `xs_ml` tinyint(1) NOT NULL,
  `xs_mr` tinyint(1) NOT NULL,
  `sm_col` int(11) DEFAULT NULL,
  `sm_order` int(11) DEFAULT NULL,
  `sm_ml` tinyint(1) NOT NULL,
  `sm_mr` tinyint(1) NOT NULL,
  `md_col` int(11) DEFAULT NULL,
  `md_order` int(11) DEFAULT NULL,
  `md_ml` tinyint(1) NOT NULL,
  `md_mr` tinyint(1) NOT NULL,
  `lg_col` int(11) DEFAULT NULL,
  `lg_order` int(11) DEFAULT NULL,
  `lg_ml` tinyint(1) NOT NULL,
  `lg_mr` tinyint(1) NOT NULL,
  `xl_col` int(11) DEFAULT NULL,
  `xl_order` int(11) DEFAULT NULL,
  `xl_ml` tinyint(1) NOT NULL,
  `xl_mr` tinyint(1) NOT NULL,
  `lg_offset` int(11) DEFAULT NULL,
  `md_offset` int(11) DEFAULT NULL,
  `sm_offset` int(11) DEFAULT NULL,
  `xl_offset` int(11) DEFAULT NULL,
  `xs_offset` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_e1f10b7c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcolumn`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcolumn` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcolumn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridcontainer`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridcontainer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridcontainer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `container_type` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_ff053e0f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridcontainer`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridcontainer` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` DISABLE KEYS */;
INSERT INTO `bootstrap4_grid_bootstrap4gridcontainer` VALUES (25,'container','div','{\"class\": \"mt-6\"}'),(29,'container','div','{}');
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridcontainer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_grid_bootstrap4gridrow`
--

DROP TABLE IF EXISTS `bootstrap4_grid_bootstrap4gridrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_grid_bootstrap4gridrow` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `vertical_alignment` varchar(255) NOT NULL,
  `horizontal_alignment` varchar(255) NOT NULL,
  `gutters` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_grid_boot_cmsplugin_ptr_id_02c25f67_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_grid_bootstrap4gridrow`
--

LOCK TABLES `bootstrap4_grid_bootstrap4gridrow` WRITE;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_grid_bootstrap4gridrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

DROP TABLE IF EXISTS `bootstrap4_jumbotron_bootstrap4jumbotron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `fluid` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_jumbotron_cmsplugin_ptr_id_1429c898_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_jumbotron_bootstrap4jumbotron`
--

LOCK TABLES `bootstrap4_jumbotron_bootstrap4jumbotron` WRITE;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_jumbotron_bootstrap4jumbotron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_link_bootstrap4link`
--

DROP TABLE IF EXISTS `bootstrap4_link_bootstrap4link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_link_bootstrap4link` (
  `template` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_type` varchar(255) NOT NULL,
  `link_context` varchar(255) NOT NULL,
  `link_size` varchar(255) NOT NULL,
  `link_outline` tinyint(1) NOT NULL,
  `link_block` tinyint(1) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `icon_left` varchar(255) NOT NULL,
  `icon_right` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` (`internal_link_id`),
  CONSTRAINT `bootstrap4_link_boot_cmsplugin_ptr_id_49f69e60_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_link_boot_internal_link_id_bc4ec61e_fk_cms_page_` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_link_bootstrap4link`
--

LOCK TABLES `bootstrap4_link_bootstrap4link` WRITE;
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_link_bootstrap4link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroup`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroup` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_group_flush` tinyint(1) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_c0811351_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroup`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroup` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

DROP TABLE IF EXISTS `bootstrap4_listgroup_bootstrap4listgroupitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `list_context` varchar(255) NOT NULL,
  `list_state` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_listgroup_cmsplugin_ptr_id_df52f490_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_listgroup_bootstrap4listgroupitem`
--

LOCK TABLES `bootstrap4_listgroup_bootstrap4listgroupitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_listgroup_bootstrap4listgroupitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4media`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_media_bootstrap4media` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_9eb94f74_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4media`
--

LOCK TABLES `bootstrap4_media_bootstrap4media` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_media_bootstrap4mediabody`
--

DROP TABLE IF EXISTS `bootstrap4_media_bootstrap4mediabody`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_media_bootstrap4mediabody` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_media_boo_cmsplugin_ptr_id_574b3dd8_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_media_bootstrap4mediabody`
--

LOCK TABLES `bootstrap4_media_bootstrap4mediabody` WRITE;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_media_bootstrap4mediabody` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_picture_bootstrap4picture`
--

DROP TABLE IF EXISTS `bootstrap4_picture_bootstrap4picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_picture_bootstrap4picture` (
  `template` varchar(255) NOT NULL,
  `external_picture` varchar(255) NOT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `alignment` varchar(255) NOT NULL,
  `caption_text` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `link_url` varchar(2040) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_attributes` longtext NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `picture_fluid` tinyint(1) NOT NULL,
  `picture_rounded` tinyint(1) NOT NULL,
  `picture_thumbnail` tinyint(1) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` (`thumbnail_options_id`),
  KEY `bootstrap4_picture_bootstrap4picture_link_page_id_f01c1a21` (`link_page_id`),
  KEY `bootstrap4_picture_bootstrap4picture_picture_id_f26d968d` (`picture_id`),
  CONSTRAINT `bootstrap4_picture_b_cmsplugin_ptr_id_3d3bfb59_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `bootstrap4_picture_b_link_page_id_f01c1a21_fk_cms_page_` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `bootstrap4_picture_b_picture_id_f26d968d_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `bootstrap4_picture_b_thumbnail_options_id_15520a42_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_picture_bootstrap4picture`
--

LOCK TABLES `bootstrap4_picture_bootstrap4picture` WRITE;
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_picture_bootstrap4picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tab`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tab` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `template` varchar(255) NOT NULL,
  `tab_type` varchar(255) NOT NULL,
  `tab_alignment` varchar(255) NOT NULL,
  `tab_index` int(10) unsigned DEFAULT NULL,
  `tab_effect` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e655c7b6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tab`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tab` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_tabs_bootstrap4tabitem`
--

DROP TABLE IF EXISTS `bootstrap4_tabs_bootstrap4tabitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_tabs_bootstrap4tabitem` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `tab_title` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_tabs_boot_cmsplugin_ptr_id_e017af58_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_tabs_bootstrap4tabitem`
--

LOCK TABLES `bootstrap4_tabs_bootstrap4tabitem` WRITE;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_tabs_bootstrap4tabitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bootstrap4_utilities_bootstrap4spacing`
--

DROP TABLE IF EXISTS `bootstrap4_utilities_bootstrap4spacing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bootstrap4_utilities_bootstrap4spacing` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `space_property` varchar(255) NOT NULL,
  `space_sides` varchar(255) NOT NULL,
  `space_size` varchar(255) NOT NULL,
  `space_device` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `bootstrap4_utilities_cmsplugin_ptr_id_c15ec8d1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bootstrap4_utilities_bootstrap4spacing`
--

LOCK TABLES `bootstrap4_utilities_bootstrap4spacing` WRITE;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` DISABLE KEYS */;
/*!40000 ALTER TABLE `bootstrap4_utilities_bootstrap4spacing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_aliaspluginmodel`
--

DROP TABLE IF EXISTS `cms_aliaspluginmodel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_aliaspluginmodel` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `alias_placeholder_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` (`alias_placeholder_id`),
  KEY `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` (`plugin_id`),
  CONSTRAINT `cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place` FOREIGN KEY (`alias_placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id` FOREIGN KEY (`plugin_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_aliaspluginmodel`
--

LOCK TABLES `cms_aliaspluginmodel` WRITE;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_aliaspluginmodel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_cmsplugin`
--

DROP TABLE IF EXISTS `cms_cmsplugin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_cmsplugin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position` smallint(5) unsigned NOT NULL,
  `language` varchar(15) NOT NULL,
  `plugin_type` varchar(50) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `placeholder_id` int(11) DEFAULT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `path` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_cmsplugin_path_4917bb44_uniq` (`path`),
  KEY `cms_cmsplugin_language_bbea8a48` (`language`),
  KEY `cms_cmsplugin_plugin_type_94e96ebf` (`plugin_type`),
  KEY `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` (`placeholder_id`),
  KEY `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` (`parent_id`),
  CONSTRAINT `cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_cmsplugin`
--

LOCK TABLES `cms_cmsplugin` WRITE;
/*!40000 ALTER TABLE `cms_cmsplugin` DISABLE KEYS */;
INSERT INTO `cms_cmsplugin` VALUES (1,0,'ru','TextPlugin','2019-04-27 15:19:02.458375','2019-05-19 09:44:58.678451',25,2,2,0,'00080001'),(25,0,'ru','Bootstrap4GridContainerPlugin','2019-05-05 08:33:49.112809','2019-05-19 10:19:34.402665',NULL,2,1,1,'0008'),(26,0,'ru','Bootstrap4CarouselPlugin','2019-04-27 15:20:15.096277','2019-05-09 03:26:39.664291',NULL,3,1,2,'0009'),(27,0,'ru','Bootstrap4CarouselSlidePlugin','2019-04-27 15:23:50.275848','2019-05-09 03:26:39.667024',26,3,2,0,'00090001'),(28,1,'ru','Bootstrap4CarouselSlidePlugin','2019-04-27 15:26:29.786322','2019-05-09 03:26:39.671967',26,3,2,0,'00090002'),(29,2,'ru','Bootstrap4GridContainerPlugin','2019-05-05 08:33:49.112809','2019-05-09 03:26:39.676271',NULL,3,1,1,'000A'),(30,0,'ru','TextPlugin','2019-04-27 15:19:02.458375','2019-05-09 03:26:39.689660',29,3,2,0,'000A0001');
/*!40000 ALTER TABLE `cms_cmsplugin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission`
--

DROP TABLE IF EXISTS `cms_globalpagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `can_recover_page` tinyint(1) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` (`group_id`),
  KEY `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_globalpagepermission_group_id_991b4733_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission`
--

LOCK TABLES `cms_globalpagepermission` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_globalpagepermission_sites`
--

DROP TABLE IF EXISTS `cms_globalpagepermission_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_globalpagepermission_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `globalpagepermission_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_globalpagepermission_globalpagepermission_id__db684f41_uniq` (`globalpagepermission_id`,`site_id`),
  KEY `cms_globalpagepermis_site_id_00460b53_fk_django_si` (`site_id`),
  CONSTRAINT `cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa` FOREIGN KEY (`globalpagepermission_id`) REFERENCES `cms_globalpagepermission` (`id`),
  CONSTRAINT `cms_globalpagepermis_site_id_00460b53_fk_django_si` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_globalpagepermission_sites`
--

LOCK TABLES `cms_globalpagepermission_sites` WRITE;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_globalpagepermission_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page`
--

DROP TABLE IF EXISTS `cms_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_by` varchar(255) NOT NULL,
  `changed_by` varchar(255) NOT NULL,
  `creation_date` datetime(6) NOT NULL,
  `changed_date` datetime(6) NOT NULL,
  `publication_date` datetime(6) DEFAULT NULL,
  `publication_end_date` datetime(6) DEFAULT NULL,
  `in_navigation` tinyint(1) NOT NULL,
  `soft_root` tinyint(1) NOT NULL,
  `reverse_id` varchar(40) DEFAULT NULL,
  `navigation_extenders` varchar(80) DEFAULT NULL,
  `template` varchar(100) NOT NULL,
  `login_required` tinyint(1) NOT NULL,
  `limit_visibility_in_menu` smallint(6) DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL,
  `application_urls` varchar(200) DEFAULT NULL,
  `application_namespace` varchar(200) DEFAULT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `languages` varchar(255) DEFAULT NULL,
  `xframe_options` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  `is_page_type` tinyint(1) NOT NULL,
  `node_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_node_id_publisher_is_draft_c1293d6a_uniq` (`node_id`,`publisher_is_draft`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_page_publication_date_684fabf7` (`publication_date`),
  KEY `cms_page_publication_end_date_12a0c46a` (`publication_end_date`),
  KEY `cms_page_in_navigation_01c24279` (`in_navigation`),
  KEY `cms_page_soft_root_51efccbe` (`soft_root`),
  KEY `cms_page_reverse_id_ffc9ede2` (`reverse_id`),
  KEY `cms_page_navigation_extenders_c24af8dd` (`navigation_extenders`),
  KEY `cms_page_limit_visibility_in_menu_30db6aa6` (`limit_visibility_in_menu`),
  KEY `cms_page_is_home_edadca07` (`is_home`),
  KEY `cms_page_application_urls_9ef47497` (`application_urls`),
  KEY `cms_page_publisher_is_draft_141cba60` (`publisher_is_draft`),
  CONSTRAINT `cms_page_node_id_c87b85a9_fk_cms_treenode_id` FOREIGN KEY (`node_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_page_publisher_public_id_d619fca0_fk_cms_page_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page`
--

LOCK TABLES `cms_page` WRITE;
/*!40000 ALTER TABLE `cms_page` DISABLE KEYS */;
INSERT INTO `cms_page` VALUES (1,'admin','admin','2019-04-27 15:19:02.408204','2019-05-19 10:14:44.347461','2019-04-27 15:19:02.421049',NULL,1,0,NULL,NULL,'register.html',0,NULL,1,'',NULL,1,'ru',0,2,0,1),(2,'admin','admin','2019-04-27 15:19:02.421229','2019-05-09 03:26:39.541816','2019-04-27 15:19:02.421049',NULL,1,0,NULL,NULL,'fullwidth.html',0,NULL,1,'',NULL,0,'ru',0,1,0,1),(3,'admin','admin','2019-05-09 16:35:21.572654','2019-05-16 16:02:20.273963','2019-05-10 07:20:57.283133',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,'InfoShopApphook','infoshop',1,'ru',0,4,0,2),(4,'admin','admin','2019-05-10 07:20:57.283409','2019-05-16 16:02:28.117284','2019-05-10 07:20:57.283133',NULL,1,0,NULL,NULL,'INHERIT',0,NULL,0,'InfoShopApphook','infoshop',0,'ru',0,3,0,2);
/*!40000 ALTER TABLE `cms_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_page_placeholders`
--

DROP TABLE IF EXISTS `cms_page_placeholders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_page_placeholders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `placeholder_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq` (`page_id`,`placeholder_id`),
  KEY `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` (`placeholder_id`),
  CONSTRAINT `cms_page_placeholder_placeholder_id_6b120886_fk_cms_place` FOREIGN KEY (`placeholder_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_page_placeholders`
--

LOCK TABLES `cms_page_placeholders` WRITE;
/*!40000 ALTER TABLE `cms_page_placeholders` DISABLE KEYS */;
INSERT INTO `cms_page_placeholders` VALUES (1,1,2),(3,1,4),(2,2,3),(4,2,5),(5,3,6),(6,4,7);
/*!40000 ALTER TABLE `cms_page_placeholders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pagepermission`
--

DROP TABLE IF EXISTS `cms_pagepermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pagepermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `can_change` tinyint(1) NOT NULL,
  `can_add` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `can_change_advanced_settings` tinyint(1) NOT NULL,
  `can_publish` tinyint(1) NOT NULL,
  `can_change_permissions` tinyint(1) NOT NULL,
  `can_move_page` tinyint(1) NOT NULL,
  `can_view` tinyint(1) NOT NULL,
  `grant_on` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_pagepermission_group_id_af5af193_fk_auth_group_id` (`group_id`),
  KEY `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` (`page_id`),
  KEY `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` (`user_id`),
  CONSTRAINT `cms_pagepermission_group_id_af5af193_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `cms_pagepermission_page_id_0ae9a163_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pagepermission`
--

LOCK TABLES `cms_pagepermission` WRITE;
/*!40000 ALTER TABLE `cms_pagepermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pagepermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageuser`
--

DROP TABLE IF EXISTS `cms_pageuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageuser` (
  `user_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`user_ptr_id`),
  KEY `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id` FOREIGN KEY (`user_ptr_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageuser`
--

LOCK TABLES `cms_pageuser` WRITE;
/*!40000 ALTER TABLE `cms_pageuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_pageusergroup`
--

DROP TABLE IF EXISTS `cms_pageusergroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_pageusergroup` (
  `group_ptr_id` int(11) NOT NULL,
  `created_by_id` int(11) NOT NULL,
  PRIMARY KEY (`group_ptr_id`),
  KEY `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` (`created_by_id`),
  CONSTRAINT `cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id` FOREIGN KEY (`created_by_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id` FOREIGN KEY (`group_ptr_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_pageusergroup`
--

LOCK TABLES `cms_pageusergroup` WRITE;
/*!40000 ALTER TABLE `cms_pageusergroup` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_pageusergroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholder`
--

DROP TABLE IF EXISTS `cms_placeholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slot` varchar(255) NOT NULL,
  `default_width` smallint(5) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_placeholder_slot_0bc04d21` (`slot`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholder`
--

LOCK TABLES `cms_placeholder` WRITE;
/*!40000 ALTER TABLE `cms_placeholder` DISABLE KEYS */;
INSERT INTO `cms_placeholder` VALUES (1,'clipboard',NULL),(2,'content',NULL),(3,'content',NULL),(4,'sidebar',NULL),(5,'sidebar',NULL),(6,'content',NULL),(7,'content',NULL);
/*!40000 ALTER TABLE `cms_placeholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_placeholderreference`
--

DROP TABLE IF EXISTS `cms_placeholderreference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_placeholderreference` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `placeholder_ref_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `cms_placeholderreference_placeholder_ref_id_244759b1` (`placeholder_ref_id`),
  CONSTRAINT `cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place` FOREIGN KEY (`placeholder_ref_id`) REFERENCES `cms_placeholder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_placeholderreference`
--

LOCK TABLES `cms_placeholderreference` WRITE;
/*!40000 ALTER TABLE `cms_placeholderreference` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_placeholderreference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_staticplaceholder`
--

DROP TABLE IF EXISTS `cms_staticplaceholder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_staticplaceholder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dirty` tinyint(1) NOT NULL,
  `creation_method` varchar(20) NOT NULL,
  `draft_id` int(11) DEFAULT NULL,
  `public_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_staticplaceholder_code_site_id_21ba079c_uniq` (`code`,`site_id`),
  KEY `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` (`site_id`),
  KEY `cms_staticplaceholder_draft_id_5aee407b` (`draft_id`),
  KEY `cms_staticplaceholder_public_id_876aaa66` (`public_id`),
  CONSTRAINT `cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id` FOREIGN KEY (`draft_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id` FOREIGN KEY (`public_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_staticplaceholder`
--

LOCK TABLES `cms_staticplaceholder` WRITE;
/*!40000 ALTER TABLE `cms_staticplaceholder` DISABLE KEYS */;
/*!40000 ALTER TABLE `cms_staticplaceholder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_title`
--

DROP TABLE IF EXISTS `cms_title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_title` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(15) NOT NULL,
  `title` varchar(255) NOT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `menu_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext,
  `slug` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `has_url_overwrite` tinyint(1) NOT NULL,
  `redirect` varchar(2048) DEFAULT NULL,
  `creation_date` datetime(6) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `publisher_is_draft` tinyint(1) NOT NULL,
  `publisher_state` smallint(6) NOT NULL,
  `page_id` int(11) NOT NULL,
  `publisher_public_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cms_title_language_page_id_61aaf084_uniq` (`language`,`page_id`),
  UNIQUE KEY `publisher_public_id` (`publisher_public_id`),
  KEY `cms_title_page_id_5fade2a3_fk_cms_page_id` (`page_id`),
  KEY `cms_title_language_50a0dfa1` (`language`),
  KEY `cms_title_slug_4947d146` (`slug`),
  KEY `cms_title_path_c484314c` (`path`),
  KEY `cms_title_has_url_overwrite_ecf27bb9` (`has_url_overwrite`),
  KEY `cms_title_publisher_is_draft_95874c88` (`publisher_is_draft`),
  KEY `cms_title_publisher_state_9a952b0f` (`publisher_state`),
  CONSTRAINT `cms_title_page_id_5fade2a3_fk_cms_page_id` FOREIGN KEY (`page_id`) REFERENCES `cms_page` (`id`),
  CONSTRAINT `cms_title_publisher_public_id_003a2702_fk_cms_title_id` FOREIGN KEY (`publisher_public_id`) REFERENCES `cms_title` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_title`
--

LOCK TABLES `cms_title` WRITE;
/*!40000 ALTER TABLE `cms_title` DISABLE KEYS */;
INSERT INTO `cms_title` VALUES (1,'ru','Партнерам и авторам','','','','partneram-i-avtoram','',0,NULL,'2019-04-27 15:19:02.409461',1,1,1,1,2),(2,'ru','Оплата',NULL,NULL,NULL,'oplata','',0,NULL,'2019-04-27 15:19:02.409461',1,0,0,2,1),(3,'ru','Каталог курсов','','Каталог курсов','','katalog-kursov','katalog-kursov',0,NULL,'2019-05-09 16:35:21.574512',1,1,0,3,4),(4,'ru','Каталог курсов','','Каталог курсов','','katalog-kursov','katalog-kursov',0,NULL,'2019-05-09 16:35:21.574512',1,0,0,4,3);
/*!40000 ALTER TABLE `cms_title` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_treenode`
--

DROP TABLE IF EXISTS `cms_treenode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_treenode` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `depth` int(10) unsigned NOT NULL,
  `numchild` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `site_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` (`parent_id`),
  KEY `cms_treenode_site_id_d3f46985_fk_django_site_id` (`site_id`),
  CONSTRAINT `cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id` FOREIGN KEY (`parent_id`) REFERENCES `cms_treenode` (`id`),
  CONSTRAINT `cms_treenode_site_id_d3f46985_fk_django_site_id` FOREIGN KEY (`site_id`) REFERENCES `django_site` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_treenode`
--

LOCK TABLES `cms_treenode` WRITE;
/*!40000 ALTER TABLE `cms_treenode` DISABLE KEYS */;
INSERT INTO `cms_treenode` VALUES (1,'0003',1,0,NULL,1),(2,'0002',1,0,NULL,1);
/*!40000 ALTER TABLE `cms_treenode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_urlconfrevision`
--

DROP TABLE IF EXISTS `cms_urlconfrevision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_urlconfrevision` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `revision` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_urlconfrevision`
--

LOCK TABLES `cms_urlconfrevision` WRITE;
/*!40000 ALTER TABLE `cms_urlconfrevision` DISABLE KEYS */;
INSERT INTO `cms_urlconfrevision` VALUES (1,'640ad6a0-8da8-4bc2-9884-b4c5b44f6788');
/*!40000 ALTER TABLE `cms_urlconfrevision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cms_usersettings`
--

DROP TABLE IF EXISTS `cms_usersettings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cms_usersettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `clipboard_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` (`clipboard_id`),
  CONSTRAINT `cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id` FOREIGN KEY (`clipboard_id`) REFERENCES `cms_placeholder` (`id`),
  CONSTRAINT `cms_usersettings_user_id_09633b2d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cms_usersettings`
--

LOCK TABLES `cms_usersettings` WRITE;
/*!40000 ALTER TABLE `cms_usersettings` DISABLE KEYS */;
INSERT INTO `cms_usersettings` VALUES (1,'ru',1,1);
/*!40000 ALTER TABLE `cms_usersettings` ENABLE KEYS */;
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
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-04-27 15:24:52.189076','1','bl2018.jpeg',2,'[{\"changed\": {\"fields\": [\"subject_location\"]}}]',30,1),(2,'2019-04-27 15:26:35.368774','1','Оплата',2,'',2,1),(3,'2019-04-27 15:27:09.084066','1','Оплата',2,'[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]',2,1),(4,'2019-04-27 15:27:15.685327','1','Оплата',2,'',2,1),(5,'2019-05-04 09:08:35.967536','1','Оплата',2,'',2,1),(6,'2019-05-04 09:20:23.608304','1','Оплата',2,'[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]',2,1),(7,'2019-05-04 09:59:39.881500','1','Оплата',2,'',2,1),(8,'2019-05-05 08:32:41.372086','1','Оплата',2,'',2,1),(9,'2019-05-09 03:26:39.700364','1','Оплата',2,'',2,1),(10,'2019-05-09 16:11:52.293059','1','Курсы для женщин',1,'[{\"added\": {}}]',76,1),(11,'2019-05-09 16:13:26.695383','2','Мать и дитя',1,'[{\"added\": {}}]',76,1),(12,'2019-05-09 16:14:34.615746','3','Красота и здоровье',1,'[{\"added\": {}}]',76,1),(13,'2019-05-09 16:14:44.335740','4','Бизнес',1,'[{\"added\": {}}]',76,1),(14,'2019-05-09 16:15:18.585898','5','Налоги и отчетность',1,'[{\"added\": {}}]',76,1),(15,'2019-05-09 16:17:17.523917','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"name\", \"title\", \"menutitle\"]}}]',76,1),(16,'2019-05-09 16:25:01.558441','1','Курс \"Худей за 100 дней\"',1,'[{\"added\": {}}]',79,1),(17,'2019-05-09 16:35:21.596553','3','Каталог',1,'[{\"added\": {}}]',2,1),(18,'2019-05-10 07:04:48.201535','3','Каталог',2,'[{\"changed\": {\"fields\": [\"application_urls\", \"application_namespace\", \"xframe_options\"]}}]',2,1),(19,'2019-05-10 07:20:57.304883','3','Каталог курсов',2,'',2,1),(20,'2019-05-11 08:01:19.145070','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',86,1),(21,'2019-05-11 08:02:01.796238','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',86,1),(22,'2019-05-11 08:02:15.510081','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',86,1),(23,'2019-05-11 08:09:24.345503','2','Курс \"Деловая мама\"',1,'[{\"added\": {}}]',85,1),(24,'2019-05-12 05:13:06.473174','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',86,1),(25,'2019-05-12 05:14:13.004452','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',86,1),(26,'2019-05-12 05:15:33.256581','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(27,'2019-05-12 05:16:18.369890','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(28,'2019-05-12 05:16:27.179692','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(29,'2019-05-12 08:12:43.067705','2','Мать и дитя',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(30,'2019-05-12 08:18:07.840549','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(31,'2019-05-12 08:20:03.775229','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(32,'2019-05-12 08:22:52.230595','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(33,'2019-05-12 08:48:02.357402','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',86,1),(34,'2019-05-12 09:00:19.000423','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',86,1),(35,'2019-05-12 09:11:31.154548','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',86,1),(36,'2019-05-12 14:58:18.688006','2','Курс \"Деловая мама\"',2,'[]',85,1),(37,'2019-05-12 15:11:53.220685','1','Курс \"Худей за 100 дней\"',2,'[]',85,1),(38,'2019-05-12 15:16:32.392474','1','Курс \"Худей за 100 дней\"',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',85,1),(39,'2019-05-12 15:18:44.879972','1','Курс \"Худей за 100 дней\"',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',85,1),(40,'2019-05-12 15:19:01.458581','1','Курс \"Худей за 100 дней\"',2,'[]',85,1),(41,'2019-05-12 15:30:02.556722','1','Курс \"Худей за 100 дней\"',2,'[{\"changed\": {\"fields\": [\"color2\"]}}]',85,1),(42,'2019-05-12 15:37:55.032560','3','Курс \"Как стать ленивой мамой\"',1,'[{\"added\": {}}]',85,1),(43,'2019-05-12 15:38:00.090773','3','Курс \"Как стать ленивой мамой\"',2,'[]',85,1),(44,'2019-05-12 15:43:07.497453','4','Мастер-класс \"10 безотказных приемов макияжа\"',1,'[{\"added\": {}}]',85,1),(45,'2019-05-12 15:43:14.098391','4','Мастер-класс \"10 безотказных приемов макияжа\"',2,'[]',85,1),(46,'2019-05-12 15:51:37.823703','5','Тренинг \"Готовимся к пляжному сезону\"',1,'[{\"added\": {}}]',85,1),(47,'2019-05-12 15:51:40.418435','5','Тренинг \"Готовимся к пляжному сезону\"',2,'[]',85,1),(48,'2019-05-12 15:56:58.447714','6','Мода и стиль',1,'[{\"added\": {}}]',86,1),(49,'2019-05-12 15:58:45.232463','6','Мастер-класс \"4 основных женских походки на каждый день\"',1,'[{\"added\": {}}]',85,1),(50,'2019-05-12 15:58:48.462411','6','Мастер-класс \"4 основных женских походки на каждый день\"',2,'[]',85,1),(51,'2019-05-12 16:00:59.474234','7','Курс \"Базовый гардероб деловой женщины\"',1,'[{\"added\": {}}]',85,1),(52,'2019-05-12 16:01:02.454123','7','Курс \"Базовый гардероб деловой женщины\"',2,'[]',85,1),(53,'2019-05-13 15:50:58.912069','8','Курс \"Как избежать послеродовой депрессии\"',1,'[{\"added\": {}}]',85,1),(54,'2019-05-13 15:51:20.982518','8','Курс \"Как избежать послеродовой депрессии\"',2,'[]',85,1),(55,'2019-05-13 15:59:39.761299','9','Курс \"С чего начинается женское здоровье\"',1,'[{\"added\": {}}]',85,1),(56,'2019-05-13 15:59:44.148094','9','Курс \"С чего начинается женское здоровье\"',2,'[]',85,1),(57,'2019-05-13 16:00:17.821965','9','Курс \"С чего начинается женское здоровье\"',2,'[]',85,1),(58,'2019-05-13 16:01:59.651112','10','Курс \"12 продуктов для женского здоровья\"',1,'[{\"added\": {}}]',85,1),(59,'2019-05-13 16:02:29.566268','10','Курс \"12 продуктов для женского здоровья\"',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',85,1),(60,'2019-05-13 16:18:08.669845','10','Курс \"12 продуктов для женского здоровья\"',2,'[{\"changed\": {\"fields\": [\"image\"]}}]',85,1),(61,'2019-05-13 16:18:12.054019','10','Курс \"12 продуктов для женского здоровья\"',2,'[]',85,1),(62,'2019-05-13 16:21:09.848179','11','Видеокурс \"6 упражнений для укрепления мышц живота\"',1,'[{\"added\": {}}]',85,1),(63,'2019-05-13 16:21:16.038987','11','Видеокурс \"6 упражнений для укрепления мышц живота\"',2,'[]',85,1),(64,'2019-05-13 16:32:41.119315','12','Аудиокурс \"Медитация для мам\"',1,'[{\"added\": {}}]',85,1),(65,'2019-05-13 16:32:47.150302','12','Аудиокурс \"Медитация для мам\"',2,'[]',85,1),(66,'2019-05-16 11:36:07.850499','1','Курсы для женщин',2,'[]',86,1),(67,'2019-05-16 11:39:35.971615','1','Курсы для женщин',2,'[]',86,1),(68,'2019-05-16 11:54:51.171144','3','Женская красота и здоровье',2,'[]',86,1),(69,'2019-05-16 11:54:55.709580','2','Мать и дитя',2,'[]',86,1),(70,'2019-05-16 11:58:34.222633','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(71,'2019-05-16 11:58:44.023519','3','Женская красота и здоровье',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(72,'2019-05-16 11:58:50.032373','3','Женская красота и здоровье',2,'[]',86,1),(73,'2019-05-16 12:00:09.251461','6','Мода и стиль',2,'[{\"changed\": {\"fields\": [\"wall\"]}}]',86,1),(74,'2019-05-16 12:00:11.327015','6','Мода и стиль',2,'[]',86,1),(75,'2019-05-16 14:58:25.745322','6','Мода и стиль',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',86,1),(76,'2019-05-16 15:43:29.565358','7','Онлайн-курсы, тренинги, видеокурсы и книги',1,'[{\"added\": {}}]',86,1),(77,'2019-05-16 15:43:31.755051','7','Онлайн-курсы, тренинги, видеокурсы и книги',2,'[]',86,1),(78,'2019-05-16 15:43:55.218871','1','Курсы для женщин',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',86,1),(79,'2019-05-16 15:44:12.616299','4','Бизнес',2,'[{\"changed\": {\"fields\": [\"parent\"]}}]',86,1),(80,'2019-05-16 16:02:20.276583','3','Каталог курсов',2,'[{\"changed\": {\"fields\": [\"menu_title\"]}}]',2,1),(81,'2019-05-16 16:02:28.134423','3','Каталог курсов',2,'',2,1),(82,'2019-05-18 08:46:46.486732','1','ProductType object',1,'[{\"added\": {}}]',89,1),(83,'2019-05-18 08:47:46.433797','2','ProductType object',1,'[{\"added\": {}}]',89,1),(84,'2019-05-18 08:49:05.492672','3','ProductType object',1,'[{\"added\": {}}]',89,1),(85,'2019-05-18 08:49:34.088375','4','ProductType object',1,'[{\"added\": {}}]',89,1),(86,'2019-05-18 08:50:06.058726','5','ProductType object',1,'[{\"added\": {}}]',89,1),(87,'2019-05-18 08:52:04.588002','6','ProductType object',1,'[{\"added\": {}}]',89,1),(88,'2019-05-18 08:53:33.977835','7','ProductType object',1,'[{\"added\": {}}]',89,1),(89,'2019-05-18 08:56:18.375705','12','Медитация для мам',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_audio\"]}}]',85,1),(90,'2019-05-18 08:57:19.589429','11','6 упражнений для укрепления мышц живота',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_video\"]}}]',85,1),(91,'2019-05-18 08:57:46.741539','10','12 продуктов для женского здоровья',2,'[{\"changed\": {\"fields\": [\"type\", \"name\"]}}]',85,1),(92,'2019-05-18 08:58:08.300570','9','С чего начинается женское здоровье',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_book\"]}}]',85,1),(93,'2019-05-18 09:11:14.730187','8','Как избежать послеродовой депрессии',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_flow\"]}}]',85,1),(94,'2019-05-18 09:11:43.964169','7','Базовый гардероб деловой женщины',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_book\"]}}]',85,1),(95,'2019-05-18 09:12:06.526816','6','4 основных женских походки на каждый день',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_video\"]}}]',85,1),(96,'2019-05-18 09:12:26.470947','5','Готовимся к пляжному сезону',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_flow\"]}}]',85,1),(97,'2019-05-18 09:12:47.594377','4','10 безотказных приемов макияжа',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_flow\"]}}]',85,1),(98,'2019-05-18 09:13:07.295114','3','Как стать ленивой мамой',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"media_type_book\"]}}]',85,1),(99,'2019-05-18 09:13:44.650744','2','Деловая мама',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"title\", \"media_type_video\"]}}]',85,1),(100,'2019-05-18 09:14:15.311216','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"type\", \"name\", \"title\", \"media_type_video\"]}}]',85,1),(101,'2019-05-18 14:17:03.766228','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"title\"]}}]',85,1),(102,'2019-05-18 14:20:16.500914','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"media_type_flow\"]}}, {\"added\": {\"name\": \"\\u0412\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\", \"object\": \"\\u0412\\u0438\\u0434\\u0435\\u043e\\u043a\\u0443\\u0440\\u0441\"}}, {\"added\": {\"name\": \"\\u0412\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\", \"object\": \"\\u0418\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0437\\u0430\\u043d\\u044f\\u0442\\u0438\\u044f\"}}]',85,1),(103,'2019-05-18 14:22:28.158291','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"description\"]}}]',85,1),(104,'2019-05-18 15:20:51.197705','1','Худей за 100 дней',2,'[{\"changed\": {\"name\": \"\\u0412\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\", \"object\": \"\\u0421\\u0431\\u043e\\u0440\\u043d\\u0438\\u043a \\u0443\\u0440\\u043e\\u043a\\u043e\\u0432\", \"fields\": [\"ordering\", \"name\"]}}]',85,1),(105,'2019-05-18 15:21:10.018850','1','Худей за 100 дней',2,'[{\"changed\": {\"name\": \"\\u0412\\u0430\\u0440\\u0438\\u0430\\u043d\\u0442\", \"object\": \"\\u0418\\u043d\\u0434\\u0438\\u0432\\u0438\\u0434\\u0443\\u0430\\u043b\\u044c\\u043d\\u044b\\u0435 \\u0437\\u0430\\u043d\\u044f\\u0442\\u0438\\u044f\", \"fields\": [\"ordering\"]}}]',85,1),(106,'2019-05-18 15:30:01.610827','1','Худей за 100 дней',2,'[]',85,1),(107,'2019-05-18 15:31:15.937963','1','Худей за 100 дней',2,'[]',85,1),(108,'2019-05-18 15:33:46.792413','1','Худей за 100 дней',2,'[]',85,1),(109,'2019-05-18 16:58:51.154368','12','Медитация для мам',2,'[{\"changed\": {\"fields\": [\"forfree\"]}}]',85,1),(110,'2019-05-19 02:24:30.378999','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',85,1),(111,'2019-05-19 03:08:07.065060','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"content_program\"]}}]',85,1),(112,'2019-05-19 04:09:36.543859','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"hit\"]}}]',85,1),(113,'2019-05-19 04:09:53.588278','10','12 продуктов для женского здоровья',2,'[{\"changed\": {\"fields\": [\"media_type_book\", \"forfree\"]}}]',85,1),(114,'2019-05-19 04:10:20.721111','4','10 безотказных приемов макияжа',2,'[{\"changed\": {\"fields\": [\"forfree\", \"hit\"]}}]',85,1),(115,'2019-05-19 04:13:28.169837','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"bonus\"]}}]',85,1),(116,'2019-05-19 04:17:40.575391','2','Деловая мама',2,'[{\"changed\": {\"fields\": [\"new\"]}}]',85,1),(117,'2019-05-19 04:17:51.544130','4','10 безотказных приемов макияжа',2,'[{\"changed\": {\"fields\": [\"new\", \"hit\"]}}]',85,1),(118,'2019-05-19 06:21:15.795035','5','Готовимся к пляжному сезону',2,'[{\"changed\": {\"fields\": [\"bonus\"]}}]',85,1),(119,'2019-05-19 08:00:05.794395','1','School object',1,'[{\"added\": {}}]',92,1),(120,'2019-05-19 08:05:31.216836','2','Наталья Закхайм',1,'[{\"added\": {}}]',91,1),(121,'2019-05-19 08:06:12.268375','1','Худей за 100 дней',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(122,'2019-05-19 08:06:27.630614','4','10 безотказных приемов макияжа',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(123,'2019-05-19 08:42:01.858139','2','Наталья Закхайм',2,'[]',91,1),(124,'2019-05-19 08:42:05.838812','2','Наталья Закхайм',2,'[]',91,1),(125,'2019-05-19 08:42:14.422872','1','Итальянская школа моды и стиля Scuola Stile',2,'[{\"changed\": {\"fields\": [\"published\"]}}]',92,1),(126,'2019-05-19 08:52:01.971154','3','Элла Ананьева',1,'[{\"added\": {}}]',91,1),(127,'2019-05-19 08:52:19.531601','8','Как избежать послеродовой депрессии',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(128,'2019-05-19 08:52:29.691668','9','С чего начинается женское здоровье',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(129,'2019-05-19 08:52:43.260291','5','Готовимся к пляжному сезону',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(130,'2019-05-19 08:52:54.821644','6','4 основных женских походки на каждый день',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(131,'2019-05-19 08:53:05.219303','10','12 продуктов для женского здоровья',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(132,'2019-05-19 08:53:12.464124','11','6 упражнений для укрепления мышц живота',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(133,'2019-05-19 08:53:20.155575','7','Базовый гардероб деловой женщины',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(134,'2019-05-19 08:54:44.606906','2','Деловая мама',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(135,'2019-05-19 08:55:12.460072','12','Медитация для мам',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(136,'2019-05-19 08:55:23.071480','3','Как стать ленивой мамой',2,'[{\"changed\": {\"fields\": [\"owner\"]}}]',85,1),(137,'2019-05-19 10:00:11.294428','1','wikioko.com',2,'[{\"changed\": {\"fields\": [\"domain\", \"name\"]}}]',9,1),(138,'2019-05-19 10:13:42.191781','1','Партнерам и авторам',2,'[{\"changed\": {\"fields\": [\"title\", \"slug\"]}}]',2,1),(139,'2019-05-19 10:14:44.348855','1','Партнерам и авторам',2,'[{\"changed\": {\"fields\": [\"template\", \"xframe_options\"]}}]',2,1),(140,'2019-05-19 10:18:55.047373','2','2',3,'',55,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
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
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (8,'admin','logentry'),(4,'auth','group'),(3,'auth','permission'),(5,'auth','user'),(91,'authors','author'),(90,'authors','owner'),(92,'authors','school'),(51,'bootstrap4_alerts','bootstrap4alerts'),(52,'bootstrap4_badge','bootstrap4badge'),(53,'bootstrap4_card','bootstrap4card'),(54,'bootstrap4_card','bootstrap4cardinner'),(55,'bootstrap4_carousel','bootstrap4carousel'),(56,'bootstrap4_carousel','bootstrap4carouselslide'),(57,'bootstrap4_collapse','bootstrap4collapse'),(58,'bootstrap4_collapse','bootstrap4collapsecontainer'),(59,'bootstrap4_collapse','bootstrap4collapsetrigger'),(60,'bootstrap4_content','bootstrap4blockquote'),(61,'bootstrap4_content','bootstrap4code'),(62,'bootstrap4_content','bootstrap4figure'),(63,'bootstrap4_grid','bootstrap4gridcolumn'),(64,'bootstrap4_grid','bootstrap4gridcontainer'),(65,'bootstrap4_grid','bootstrap4gridrow'),(66,'bootstrap4_jumbotron','bootstrap4jumbotron'),(67,'bootstrap4_link','bootstrap4link'),(68,'bootstrap4_listgroup','bootstrap4listgroup'),(69,'bootstrap4_listgroup','bootstrap4listgroupitem'),(70,'bootstrap4_media','bootstrap4media'),(71,'bootstrap4_media','bootstrap4mediabody'),(72,'bootstrap4_picture','bootstrap4picture'),(73,'bootstrap4_tabs','bootstrap4tab'),(74,'bootstrap4_tabs','bootstrap4tabitem'),(75,'bootstrap4_utilities','bootstrap4spacing'),(11,'cms','aliaspluginmodel'),(10,'cms','cmsplugin'),(12,'cms','globalpagepermission'),(2,'cms','page'),(13,'cms','pagepermission'),(22,'cms','pagetype'),(14,'cms','pageuser'),(15,'cms','pageusergroup'),(1,'cms','placeholder'),(16,'cms','placeholderreference'),(17,'cms','staticplaceholder'),(18,'cms','title'),(21,'cms','treenode'),(20,'cms','urlconfrevision'),(19,'cms','usersettings'),(6,'contenttypes','contenttype'),(35,'djangocms_column','column'),(36,'djangocms_column','multicolumns'),(37,'djangocms_file','file'),(38,'djangocms_file','folder'),(44,'djangocms_googlemap','googlemap'),(45,'djangocms_googlemap','googlemapmarker'),(46,'djangocms_googlemap','googlemaproute'),(50,'djangocms_icon','icon'),(39,'djangocms_link','link'),(40,'djangocms_picture','picture'),(42,'djangocms_snippet','snippet'),(43,'djangocms_snippet','snippetptr'),(41,'djangocms_style','style'),(24,'djangocms_text_ckeditor','text'),(47,'djangocms_video','videoplayer'),(48,'djangocms_video','videosource'),(49,'djangocms_video','videotrack'),(32,'easy_thumbnails','source'),(33,'easy_thumbnails','thumbnail'),(34,'easy_thumbnails','thumbnaildimensions'),(25,'filer','clipboard'),(26,'filer','clipboarditem'),(27,'filer','file'),(28,'filer','folder'),(29,'filer','folderpermission'),(30,'filer','image'),(31,'filer','thumbnailoption'),(82,'filters','filtercategory'),(83,'filters','filterselect'),(84,'filters','productfilter'),(86,'infoshop','category'),(87,'infoshop','images'),(88,'infoshop','offer'),(85,'infoshop','product'),(89,'infoshop','producttype'),(23,'menus','cachekey'),(80,'properties','productproperty'),(81,'properties','typeproperty'),(7,'sessions','session'),(76,'shop','category'),(77,'shop','images'),(78,'shop','offer'),(79,'shop','product'),(9,'sites','site');
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
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-04-27 15:10:11.055325'),(2,'auth','0001_initial','2019-04-27 15:10:14.161929'),(3,'admin','0001_initial','2019-04-27 15:10:14.871568'),(4,'admin','0002_logentry_remove_auto_add','2019-04-27 15:10:14.997643'),(5,'contenttypes','0002_remove_content_type_name','2019-04-27 15:10:15.518626'),(6,'auth','0002_alter_permission_name_max_length','2019-04-27 15:10:15.822612'),(7,'auth','0003_alter_user_email_max_length','2019-04-27 15:10:15.932367'),(8,'auth','0004_alter_user_username_opts','2019-04-27 15:10:15.976945'),(9,'auth','0005_alter_user_last_login_null','2019-04-27 15:10:16.238263'),(10,'auth','0006_require_contenttypes_0002','2019-04-27 15:10:16.263311'),(11,'auth','0007_alter_validators_add_error_messages','2019-04-27 15:10:16.311107'),(12,'auth','0008_alter_user_username_max_length','2019-04-27 15:10:16.609264'),(13,'sites','0001_initial','2019-04-27 15:10:16.767812'),(14,'cms','0001_initial','2019-04-27 15:10:23.728047'),(15,'cms','0002_auto_20140816_1918','2019-04-27 15:10:33.548238'),(16,'cms','0003_auto_20140926_2347','2019-04-27 15:10:33.858193'),(17,'cms','0004_auto_20140924_1038','2019-04-27 15:10:35.158879'),(18,'cms','0005_auto_20140924_1039','2019-04-27 15:10:35.228906'),(19,'cms','0006_auto_20140924_1110','2019-04-27 15:10:39.378733'),(20,'cms','0007_auto_20141028_1559','2019-04-27 15:10:39.596258'),(21,'cms','0008_auto_20150208_2149','2019-04-27 15:10:39.705872'),(22,'cms','0008_auto_20150121_0059','2019-04-27 15:10:40.158907'),(23,'cms','0009_merge','2019-04-27 15:10:40.176319'),(24,'cms','0010_migrate_use_structure','2019-04-27 15:10:40.275955'),(25,'cms','0011_auto_20150419_1006','2019-04-27 15:10:40.441722'),(26,'cms','0012_auto_20150607_2207','2019-04-27 15:10:41.870361'),(27,'cms','0013_urlconfrevision','2019-04-27 15:10:42.002713'),(28,'cms','0014_auto_20160404_1908','2019-04-27 15:10:42.070135'),(29,'cms','0015_auto_20160421_0000','2019-04-27 15:10:42.504710'),(30,'cms','0016_auto_20160608_1535','2019-04-27 15:10:43.491287'),(31,'bootstrap4_alerts','0001_initial','2019-04-27 15:10:43.894862'),(32,'bootstrap4_badge','0001_initial','2019-04-27 15:10:44.304964'),(33,'bootstrap4_card','0001_initial','2019-04-27 15:10:45.245603'),(34,'filer','0001_initial','2019-04-27 15:10:50.942398'),(35,'filer','0002_auto_20150606_2003','2019-04-27 15:10:51.464729'),(36,'filer','0003_thumbnailoption','2019-04-27 15:10:51.621035'),(37,'filer','0004_auto_20160328_1434','2019-04-27 15:10:51.972651'),(38,'filer','0005_auto_20160623_1425','2019-04-27 15:10:53.545818'),(39,'filer','0006_auto_20160623_1627','2019-04-27 15:10:53.921367'),(40,'filer','0007_auto_20161016_1055','2019-04-27 15:10:53.973088'),(41,'bootstrap4_carousel','0001_initial','2019-04-27 15:10:55.611975'),(42,'bootstrap4_carousel','0002_bootstrap4carousel_carousel_aspect_ratio','2019-04-27 15:10:55.794271'),(43,'bootstrap4_carousel','0003_auto_20180610_1102','2019-04-27 15:10:55.887545'),(44,'bootstrap4_collapse','0001_initial','2019-04-27 15:10:57.470520'),(45,'bootstrap4_content','0001_initial','2019-04-27 15:10:58.252924'),(46,'bootstrap4_content','0002_added_figure','2019-04-27 15:10:58.673313'),(47,'bootstrap4_grid','0001_initial','2019-04-27 15:11:00.094987'),(48,'bootstrap4_grid','0002_auto_20180709_0808','2019-04-27 15:11:00.783031'),(49,'bootstrap4_grid','0003_migrate_column_size','2019-04-27 15:11:00.867087'),(50,'bootstrap4_grid','0004_remove_bootstrap4gridcolumn_column_size','2019-04-27 15:11:01.118684'),(51,'bootstrap4_jumbotron','0001_initial','2019-04-27 15:11:01.552633'),(52,'bootstrap4_link','0001_initial','2019-04-27 15:11:02.307616'),(53,'bootstrap4_link','0002_add_icons','2019-04-27 15:11:02.710249'),(54,'bootstrap4_listgroup','0001_initial','2019-04-27 15:11:03.676848'),(55,'bootstrap4_media','0001_initial','2019-04-27 15:11:04.616708'),(56,'djangocms_picture','0001_initial','2019-04-27 15:11:05.306220'),(57,'djangocms_picture','0002_auto_20151018_1927','2019-04-27 15:11:05.581523'),(58,'djangocms_picture','0003_migrate_to_filer','2019-04-27 15:11:07.327698'),(59,'djangocms_picture','0004_adapt_fields','2019-04-27 15:11:12.624107'),(60,'djangocms_picture','0005_reset_null_values','2019-04-27 15:11:12.708829'),(61,'djangocms_picture','0006_remove_null_values','2019-04-27 15:11:13.972044'),(62,'djangocms_picture','0007_fix_alignment','2019-04-27 15:11:14.066783'),(63,'djangocms_picture','0008_picture_use_responsive_image','2019-04-27 15:11:14.254449'),(64,'bootstrap4_picture','0001_initial','2019-04-27 15:11:16.047870'),(65,'bootstrap4_picture','0002_bootstrap4picture_use_responsive_image','2019-04-27 15:11:16.286364'),(66,'bootstrap4_picture','0003_auto_20181212_1055','2019-04-27 15:11:16.538894'),(67,'bootstrap4_tabs','0001_initial','2019-04-27 15:11:17.683599'),(68,'bootstrap4_tabs','0002_auto_20180610_1106','2019-04-27 15:11:17.794820'),(69,'bootstrap4_utilities','0001_initial','2019-04-27 15:11:18.334990'),(70,'cms','0017_pagetype','2019-04-27 15:11:18.690272'),(71,'cms','0018_pagenode','2019-04-27 15:11:21.378900'),(72,'cms','0019_set_pagenode','2019-04-27 15:11:21.539224'),(73,'cms','0020_old_tree_cleanup','2019-04-27 15:11:27.359046'),(74,'cms','0021_auto_20180507_1432','2019-04-27 15:11:27.422927'),(75,'cms','0022_auto_20180620_1551','2019-04-27 15:11:27.457827'),(76,'djangocms_column','0001_initial','2019-04-27 15:11:28.302985'),(77,'djangocms_column','0002_auto_20160915_0818','2019-04-27 15:11:29.060125'),(78,'djangocms_file','0001_initial','2019-04-27 15:11:29.566683'),(79,'djangocms_file','0002_auto_20151202_1551','2019-04-27 15:11:29.790075'),(80,'djangocms_file','0003_remove_related_name_for_cmsplugin_ptr','2019-04-27 15:11:30.139945'),(81,'djangocms_file','0004_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:30.496018'),(82,'djangocms_file','0005_auto_20160119_1534','2019-04-27 15:11:30.544468'),(83,'djangocms_file','0006_migrate_to_filer','2019-04-27 15:11:31.488097'),(84,'djangocms_file','0007_adapted_fields','2019-04-27 15:11:32.685955'),(85,'djangocms_file','0008_add_folder','2019-04-27 15:11:33.767443'),(86,'djangocms_file','0009_fixed_null_fields','2019-04-27 15:11:33.862814'),(87,'djangocms_file','0010_removed_null_fields','2019-04-27 15:11:34.184690'),(88,'djangocms_file','0011_auto_20181211_0357','2019-04-27 15:11:34.272447'),(89,'djangocms_googlemap','0001_initial','2019-04-27 15:11:34.815079'),(90,'djangocms_googlemap','0002_auto_20160622_1031','2019-04-27 15:11:35.407073'),(91,'djangocms_googlemap','0003_auto_20160825_1829','2019-04-27 15:11:35.440813'),(92,'djangocms_googlemap','0004_adapted_fields','2019-04-27 15:11:39.202122'),(93,'djangocms_googlemap','0005_create_nested_plugins','2019-04-27 15:11:39.304776'),(94,'djangocms_googlemap','0006_remove_fields','2019-04-27 15:11:41.039000'),(95,'djangocms_googlemap','0007_reset_null_values','2019-04-27 15:11:41.142168'),(96,'djangocms_googlemap','0008_removed_null_fields','2019-04-27 15:11:41.480716'),(97,'djangocms_googlemap','0009_googlemapmarker_icon','2019-04-27 15:11:41.962219'),(98,'djangocms_icon','0001_initial','2019-04-27 15:11:42.542660'),(99,'djangocms_icon','0002_auto_20190218_2017','2019-04-27 15:11:42.653187'),(100,'djangocms_link','0001_initial','2019-04-27 15:11:43.345822'),(101,'djangocms_link','0002_auto_20140929_1705','2019-04-27 15:11:43.403821'),(102,'djangocms_link','0003_auto_20150212_1310','2019-04-27 15:11:43.443742'),(103,'djangocms_link','0004_auto_20150708_1133','2019-04-27 15:11:43.535538'),(104,'djangocms_link','0005_auto_20151003_1710','2019-04-27 15:11:43.605242'),(105,'djangocms_link','0006_remove_related_name_for_cmsplugin_ptr','2019-04-27 15:11:44.018038'),(106,'djangocms_link','0007_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:44.597179'),(107,'djangocms_link','0008_link_attributes','2019-04-27 15:11:44.758753'),(108,'djangocms_link','0009_auto_20160705_1344','2019-04-27 15:11:44.833526'),(109,'djangocms_link','0010_adapted_fields','2019-04-27 15:11:46.515234'),(110,'djangocms_link','0011_fixed_null_values','2019-04-27 15:11:46.618174'),(111,'djangocms_link','0012_removed_null','2019-04-27 15:11:48.169930'),(112,'djangocms_link','0013_fix_hostname','2019-04-27 15:11:48.244707'),(113,'djangocms_picture','0009_auto_20181212_1003','2019-04-27 15:11:48.505708'),(114,'djangocms_snippet','0001_initial','2019-04-27 15:11:49.262926'),(115,'djangocms_snippet','0002_snippet_slug','2019-04-27 15:11:49.538679'),(116,'djangocms_snippet','0003_auto_data_fill_slug','2019-04-27 15:11:49.644754'),(117,'djangocms_snippet','0004_auto_alter_slug_unique','2019-04-27 15:11:49.857503'),(118,'djangocms_snippet','0005_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:50.309437'),(119,'djangocms_snippet','0006_auto_20160831_0729','2019-04-27 15:11:50.708217'),(120,'djangocms_snippet','0007_auto_alter_template_helptext','2019-04-27 15:11:50.750152'),(121,'djangocms_style','0001_initial','2019-04-27 15:11:51.188974'),(122,'djangocms_style','0002_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:51.613547'),(123,'djangocms_style','0003_adapted_fields','2019-04-27 15:11:52.786230'),(124,'djangocms_style','0004_use_positive_small_integer_field','2019-04-27 15:11:55.116386'),(125,'djangocms_style','0005_reset_null_values','2019-04-27 15:11:55.221929'),(126,'djangocms_style','0006_removed_null_fields','2019-04-27 15:11:55.825307'),(127,'djangocms_style','0007_style_template','2019-04-27 15:11:56.020728'),(128,'djangocms_text_ckeditor','0001_initial','2019-04-27 15:11:56.451693'),(129,'djangocms_text_ckeditor','0002_remove_related_name_for_cmsplugin_ptr','2019-04-27 15:11:56.901155'),(130,'djangocms_text_ckeditor','0003_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:57.346805'),(131,'djangocms_text_ckeditor','0004_auto_20160706_1339','2019-04-27 15:11:57.464626'),(132,'djangocms_video','0001_initial','2019-04-27 15:11:57.952526'),(133,'djangocms_video','0002_set_related_name_for_cmsplugin_ptr','2019-04-27 15:11:58.403657'),(134,'djangocms_video','0003_field_adaptions','2019-04-27 15:12:00.817670'),(135,'djangocms_video','0004_move_to_attributes','2019-04-27 15:12:04.790639'),(136,'djangocms_video','0005_migrate_to_filer','2019-04-27 15:12:04.969478'),(137,'djangocms_video','0006_field_adaptions','2019-04-27 15:12:07.237641'),(138,'djangocms_video','0007_create_nested_plugin','2019-04-27 15:12:07.622244'),(139,'djangocms_video','0008_reset_null_values','2019-04-27 15:12:07.728906'),(140,'djangocms_video','0009_removed_null_values','2019-04-27 15:12:08.054088'),(141,'djangocms_video','0010_videoplayer_parameters','2019-04-27 15:12:08.205860'),(142,'easy_thumbnails','0001_initial','2019-04-27 15:12:09.449407'),(143,'easy_thumbnails','0002_thumbnaildimensions','2019-04-27 15:12:09.856254'),(144,'filer','0008_auto_20171117_1313','2019-04-27 15:12:09.919582'),(145,'filer','0009_auto_20171220_1635','2019-04-27 15:12:10.321869'),(146,'filer','0010_auto_20180414_2058','2019-04-27 15:12:10.779139'),(147,'menus','0001_initial','2019-04-27 15:12:10.947956'),(148,'sessions','0001_initial','2019-04-27 15:12:11.170662'),(149,'sites','0002_alter_domain_unique','2019-04-27 15:12:11.331500'),(150,'cms','0018_create_pagenode','2019-04-27 15:12:11.373417'),(151,'filer','0011_auto_20190509_2252','2019-05-09 15:53:41.357762'),(152,'infoshop','0001_initial','2019-05-09 15:53:44.272607'),(153,'filters','0001_initial','2019-05-09 15:53:47.100728'),(154,'properties','0001_initial','2019-05-09 15:53:48.594191'),(155,'filters','0002_auto_20190512_0832','2019-05-12 01:33:13.323214'),(156,'infoshop','0002_auto_20190512_0832','2019-05-12 01:33:13.545340'),(157,'infoshop','0003_auto_20190512_1211','2019-05-12 05:11:55.698774'),(158,'infoshop','0004_auto_20190512_1448','2019-05-12 07:49:20.044326'),(159,'filters','0003_auto_20190512_1546','2019-05-12 08:46:49.520296'),(160,'infoshop','0005_auto_20190512_1546','2019-05-12 08:46:50.893091'),(161,'infoshop','0006_auto_20190512_1937','2019-05-12 12:37:21.133484'),(162,'infoshop','0007_auto_20190516_1834','2019-05-16 11:35:29.401691'),(163,'infoshop','0008_auto_20190518_1538','2019-05-18 08:39:07.931397'),(164,'infoshop','0009_auto_20190518_2212','2019-05-18 15:12:54.205175'),(165,'infoshop','0010_auto_20190518_2233','2019-05-18 15:33:36.388722'),(166,'filters','0004_auto_20190519_0952','2019-05-19 02:53:01.146917'),(167,'infoshop','0011_auto_20190519_0952','2019-05-19 02:53:01.394546'),(168,'infoshop','0012_auto_20190519_1108','2019-05-19 04:08:37.135541'),(169,'infoshop','0013_auto_20190519_1112','2019-05-19 04:12:49.904916'),(170,'authors','0001_initial','2019-05-19 07:32:48.613155'),(171,'infoshop','0014_auto_20190519_1432','2019-05-19 07:32:49.949766'),(172,'authors','0002_auto_20190519_1439','2019-05-19 07:39:05.996733'),(173,'infoshop','0015_auto_20190519_1439','2019-05-19 07:39:06.075037'),(174,'authors','0003_owner_image','2019-05-19 07:50:37.990855'),(175,'infoshop','0016_auto_20190519_1450','2019-05-19 07:50:38.067369'),(176,'authors','0004_auto_20190519_1539','2019-05-19 08:39:20.335111'),(177,'infoshop','0017_auto_20190519_1539','2019-05-19 08:39:20.412563');
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
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('7okypeeta52itqfq3eqxhbfs1oxytblz','MGFiMGU0YWI1YjA0ZGQ0Y2E3YWY1NGJiOGY3YzRjZGYwNTg4MTFhNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjQ1MzczOTM3YzczNWVmMTgzNjFiNDA5OGU4MmY1MzJlNzQ2MGI1IiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlfQ==','2019-05-30 16:02:42.327664'),('7wkmesofpwmbahzo267971zve753f3ck','MGFiMGU0YWI1YjA0ZGQ0Y2E3YWY1NGJiOGY3YzRjZGYwNTg4MTFhNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjQ1MzczOTM3YzczNWVmMTgzNjFiNDA5OGU4MmY1MzJlNzQ2MGI1IiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlfQ==','2019-05-27 16:37:57.217760'),('8q0y3tmo1cckbbtkd50oc0nxwg0ym820','ZGU0OTc2ZjZhNjVjMzZhMWE5OWZjNWRhNDhiN2RlNDAzOWUwZTRmNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjQ1MzczOTM3YzczNWVmMTgzNjFiNDA5OGU4MmY1MzJlNzQ2MGI1IiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlLCJ3aXphcmRfd2l6YXJkX2NyZWF0ZV92aWV3Ijp7InN0ZXAiOm51bGwsInN0ZXBfZGF0YSI6e30sInN0ZXBfZmlsZXMiOnt9LCJleHRyYV9kYXRhIjp7fX0sImZpbGVyX2xhc3RfZm9sZGVyX2lkIjpudWxsfQ==','2019-05-18 01:46:31.060497'),('flcy4bxs1suptkfqkvpkrk1zkhgiqgbe','ZWViZmU2ZDU3NTdlY2RkMjRlYjkyNGNjYThhOWNmOGNjZmYyNzQyMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjQ1MzczOTM3YzczNWVmMTgzNjFiNDA5OGU4MmY1MzJlNzQ2MGI1IiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlLCJmaWxlcl9sYXN0X2ZvbGRlcl9pZCI6bnVsbH0=','2019-05-19 08:42:53.580218'),('hi03s6mcv7jg5oqwzslealm2zxo8lib4','MGFiMGU0YWI1YjA0ZGQ0Y2E3YWY1NGJiOGY3YzRjZGYwNTg4MTFhNDp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3MjQ1MzczOTM3YzczNWVmMTgzNjFiNDA5OGU4MmY1MzJlNzQ2MGI1IiwiY21zX3Rvb2xiYXJfZGlzYWJsZWQiOmZhbHNlLCJjbXNfZWRpdCI6dHJ1ZSwiY21zX3ByZXZpZXciOmZhbHNlfQ==','2019-06-02 10:19:34.780349');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_site`
--

LOCK TABLES `django_site` WRITE;
/*!40000 ALTER TABLE `django_site` DISABLE KEYS */;
INSERT INTO `django_site` VALUES (1,'wikioko.com','wikioko.com');
/*!40000 ALTER TABLE `django_site` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_column`
--

DROP TABLE IF EXISTS `djangocms_column_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_column` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `width` varchar(50) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_column`
--

LOCK TABLES `djangocms_column_column` WRITE;
/*!40000 ALTER TABLE `djangocms_column_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_column_multicolumns`
--

DROP TABLE IF EXISTS `djangocms_column_multicolumns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_column_multicolumns` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_column_multicolumns`
--

LOCK TABLES `djangocms_column_multicolumns` WRITE;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_column_multicolumns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_file`
--

DROP TABLE IF EXISTS `djangocms_file_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_file` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `link_title` varchar(255) NOT NULL,
  `file_src_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_file_file_src_id_74ac14a5` (`file_src_id`),
  CONSTRAINT `djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id` FOREIGN KEY (`file_src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_file`
--

LOCK TABLES `djangocms_file_file` WRITE;
/*!40000 ALTER TABLE `djangocms_file_file` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_file_folder`
--

DROP TABLE IF EXISTS `djangocms_file_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_file_folder` (
  `template` varchar(255) NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `show_file_size` tinyint(1) NOT NULL,
  `attributes` longtext NOT NULL,
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `folder_src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_file_folder_folder_src_id_9558406a` (`folder_src_id`),
  CONSTRAINT `djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id` FOREIGN KEY (`folder_src_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_file_folder`
--

LOCK TABLES `djangocms_file_folder` WRITE;
/*!40000 ALTER TABLE `djangocms_file_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_file_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemap`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemap` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `zoom` smallint(5) unsigned NOT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `width` varchar(6) NOT NULL,
  `height` varchar(6) NOT NULL,
  `scrollwheel` tinyint(1) NOT NULL,
  `double_click_zoom` tinyint(1) NOT NULL,
  `draggable` tinyint(1) NOT NULL,
  `keyboard_shortcuts` tinyint(1) NOT NULL,
  `pan_control` tinyint(1) NOT NULL,
  `zoom_control` tinyint(1) NOT NULL,
  `street_view_control` tinyint(1) NOT NULL,
  `style` longtext NOT NULL,
  `fullscreen_control` tinyint(1) NOT NULL,
  `map_type_control` varchar(255) NOT NULL,
  `rotate_control` tinyint(1) NOT NULL,
  `scale_control` tinyint(1) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemap`
--

LOCK TABLES `djangocms_googlemap_googlemap` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemapmarker`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemapmarker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemapmarker` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `lat` decimal(10,6) DEFAULT NULL,
  `lng` decimal(10,6) DEFAULT NULL,
  `show_content` tinyint(1) NOT NULL,
  `info_content` longtext NOT NULL,
  `icon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_googlemap_googlemapmarker_icon_id_3b103213` (`icon_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_googlemap__icon_id_3b103213_fk_filer_ima` FOREIGN KEY (`icon_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemapmarker`
--

LOCK TABLES `djangocms_googlemap_googlemapmarker` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemapmarker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_googlemap_googlemaproute`
--

DROP TABLE IF EXISTS `djangocms_googlemap_googlemaproute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_googlemap_googlemaproute` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `origin` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `travel_mode` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_googlemap_googlemaproute`
--

LOCK TABLES `djangocms_googlemap_googlemaproute` WRITE;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_googlemap_googlemaproute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_icon_icon`
--

DROP TABLE IF EXISTS `djangocms_icon_icon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_icon_icon` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_icon_icon_cmsplugin_ptr_id_e04b5be4_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_icon_icon`
--

LOCK TABLES `djangocms_icon_icon` WRITE;
/*!40000 ALTER TABLE `djangocms_icon_icon` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_icon_icon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_link_link`
--

DROP TABLE IF EXISTS `djangocms_link_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_link_link` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `external_link` varchar(2040) NOT NULL,
  `anchor` varchar(255) NOT NULL,
  `mailto` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `internal_link_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` (`internal_link_id`),
  CONSTRAINT `djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id` FOREIGN KEY (`internal_link_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_link_link`
--

LOCK TABLES `djangocms_link_link` WRITE;
/*!40000 ALTER TABLE `djangocms_link_link` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_link_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_picture_picture`
--

DROP TABLE IF EXISTS `djangocms_picture_picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_picture_picture` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `link_url` varchar(2040) NOT NULL,
  `alignment` varchar(255) NOT NULL,
  `link_page_id` int(11) DEFAULT NULL,
  `height` int(10) unsigned DEFAULT NULL,
  `width` int(10) unsigned DEFAULT NULL,
  `picture_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `caption_text` longtext NOT NULL,
  `link_attributes` longtext NOT NULL,
  `link_target` varchar(255) NOT NULL,
  `use_automatic_scaling` tinyint(1) NOT NULL,
  `use_crop` tinyint(1) NOT NULL,
  `use_no_cropping` tinyint(1) NOT NULL,
  `use_upscale` tinyint(1) NOT NULL,
  `thumbnail_options_id` int(11) DEFAULT NULL,
  `external_picture` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `use_responsive_image` varchar(7) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_picture_picture_picture_id_f7d6711b` (`picture_id`),
  KEY `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` (`link_page_id`),
  KEY `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` (`thumbnail_options_id`),
  CONSTRAINT `djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima` FOREIGN KEY (`picture_id`) REFERENCES `filer_image` (`file_ptr_id`),
  CONSTRAINT `djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu` FOREIGN KEY (`thumbnail_options_id`) REFERENCES `filer_thumbnailoption` (`id`),
  CONSTRAINT `djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id` FOREIGN KEY (`link_page_id`) REFERENCES `cms_page` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_picture_picture`
--

LOCK TABLES `djangocms_picture_picture` WRITE;
/*!40000 ALTER TABLE `djangocms_picture_picture` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_picture_picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippet`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippet` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `html` longtext NOT NULL,
  `template` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `djangocms_snippet_snippet_slug_bd43cd96_uniq` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippet`
--

LOCK TABLES `djangocms_snippet_snippet` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_snippet_snippetptr`
--

DROP TABLE IF EXISTS `djangocms_snippet_snippetptr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_snippet_snippetptr` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `snippet_id` int(11) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` (`snippet_id`),
  CONSTRAINT `djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_snippet_sn_snippet_id_56b99614_fk_djangocms` FOREIGN KEY (`snippet_id`) REFERENCES `djangocms_snippet_snippet` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_snippet_snippetptr`
--

LOCK TABLES `djangocms_snippet_snippetptr` WRITE;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_snippet_snippetptr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_style_style`
--

DROP TABLE IF EXISTS `djangocms_style_style`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_style_style` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `tag_type` varchar(255) NOT NULL,
  `padding_left` smallint(5) unsigned DEFAULT NULL,
  `padding_right` smallint(5) unsigned DEFAULT NULL,
  `padding_top` smallint(5) unsigned DEFAULT NULL,
  `padding_bottom` smallint(5) unsigned DEFAULT NULL,
  `margin_left` smallint(5) unsigned DEFAULT NULL,
  `margin_right` smallint(5) unsigned DEFAULT NULL,
  `margin_top` smallint(5) unsigned DEFAULT NULL,
  `margin_bottom` smallint(5) unsigned DEFAULT NULL,
  `additional_classes` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `id_name` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_style_style`
--

LOCK TABLES `djangocms_style_style` WRITE;
/*!40000 ALTER TABLE `djangocms_style_style` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_style_style` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_text_ckeditor_text`
--

DROP TABLE IF EXISTS `djangocms_text_ckeditor_text`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_text_ckeditor_text` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `body` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  CONSTRAINT `djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_text_ckeditor_text`
--

LOCK TABLES `djangocms_text_ckeditor_text` WRITE;
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` DISABLE KEYS */;
INSERT INTO `djangocms_text_ckeditor_text` VALUES (1,'<h1>Сотрудничество</h1>\n\n<p>Размещением курсов будет заниматься ваш персональный менеджер. Вам необходимо только назначить стоимость и предоставить материалы в форматах видео- или аудиофайлов, pdf и т.д. Курс может состоять из файлов в разных форматах, например, это могут быть видеоуроки с pdf-пособиями.</p>\n\n<p>Менеджер разместит курсы на сайте, следуя вашим пожеланиям. Вам же останется только одобрить получившийся результат.</p>\n\n<p>Отметим, что размещая курсы на нашем сайте вы сохраняете авторские права.</p>\n\n<p>Обычно наша комиссия составляет 40% с каждой продажи, она включает в себя стоимость процессинга – операционные сборы и налоговые вычеты. Следовательно, вы получаете 60% от стоимости курса.</p>\n\n<p>Отметим, что мы готовы обсуждать комиссию в индивидуальном порядке.</p>\n\n<p>Начнем с того, что для начала мы заключаем с вами договор комиссии. Только в этом случае мы сможем принимать платежи за курсы и выводить для вас прибыль.</p>\n\n<p>Если за отчетный месяц происходят продажи и накапливается прибыль, мы просим вас подписать акт в электронном виде и до 15 числа следующего месяца выводим средства на реквизиты, указанные в договоре.</p>\n\n<p>Оформление профиля и публикация материалов может занять до 5 - 7 дней. Сроки зависят от объемов работы и загруженности персонального менеджера.</p>\n\n<p> </p>\n\n<p>В плане сотрудничества все просто. Для начала вам необходимо заполнить заявку на модерацию, после чего с вами свяжется персональный менеджер. Именно он будет заниматься публикацией профиля и материалов, обновлением всей информации.</p>\n\n<p>У каждого автора или школы на Aryks есть страница с отзывами, которые выдаются в ТОПе поисковых систем. Комментарии, которые оставляют пользователи на этих страницах, являются мощным инструментом для формирования мнений и управления репутации в сети.</p>\n\n<p> </p>\n\n<p>Мы размещаем информацию о тренингах и курсах, которую берем из открытых источников.</p>\n\n<p>Если информация о вашем тренинге, центре или о вас, как тренере, уже есть на нашем сайте, значит, она показалась нам интересной и попадающей под тематику нашего сайта.</p>\n\n<p>Также в любой момент вы можете обратиться к нашей службе поддержки <a data-orig-href=\"https://e.mail.ru/compose/?mailto=mailto%3aaryks@mail.ru\" data-vdir-href=\"https://mail.yandex.ru/re.jsx?uid=79334381&amp;c=LIZA&amp;cv=17.1.2001&amp;mid=168322036073047882&amp;h=a,QQYa_ZdaSRKg_rgjxpoO-Q&amp;l=aHR0cHM6Ly9lLm1haWwucnUvY29tcG9zZS8_bWFpbHRvPW1haWx0byUzYWFyeWtzQG1haWwucnU\" href=\"https://e.mail.ru/compose/?mailto=mailto%3aaryks@mail.ru\" rel=\"noopener noreferrer\" target=\"_blank\">aryks@mail.ru</a> с запросом на изменение или удаление информации.</p>'),(30,'<p>Здесь про оплату</p>');
/*!40000 ALTER TABLE `djangocms_text_ckeditor_text` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videoplayer`
--

DROP TABLE IF EXISTS `djangocms_video_videoplayer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videoplayer` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `embed_link` varchar(255) NOT NULL,
  `poster_id` int(11) DEFAULT NULL,
  `attributes` longtext NOT NULL,
  `label` varchar(255) NOT NULL,
  `template` varchar(255) NOT NULL,
  `parameters` longtext NOT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videoplayer_poster_id_07790e24` (`poster_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_poster_id_07790e24_fk_filer_ima` FOREIGN KEY (`poster_id`) REFERENCES `filer_image` (`file_ptr_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videoplayer`
--

LOCK TABLES `djangocms_video_videoplayer` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videoplayer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videosource`
--

DROP TABLE IF EXISTS `djangocms_video_videosource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videosource` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `text_title` varchar(255) NOT NULL,
  `text_description` longtext NOT NULL,
  `attributes` longtext NOT NULL,
  `source_file_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videosource_source_file_id_16f11167` (`source_file_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_vide_source_file_id_16f11167_fk_filer_fil` FOREIGN KEY (`source_file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videosource`
--

LOCK TABLES `djangocms_video_videosource` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videosource` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videosource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `djangocms_video_videotrack`
--

DROP TABLE IF EXISTS `djangocms_video_videotrack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `djangocms_video_videotrack` (
  `cmsplugin_ptr_id` int(11) NOT NULL,
  `kind` varchar(255) NOT NULL,
  `srclang` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `attributes` longtext NOT NULL,
  `src_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmsplugin_ptr_id`),
  KEY `djangocms_video_videotrack_src_id_e5a015d8` (`src_id`),
  CONSTRAINT `djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl` FOREIGN KEY (`cmsplugin_ptr_id`) REFERENCES `cms_cmsplugin` (`id`),
  CONSTRAINT `djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id` FOREIGN KEY (`src_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `djangocms_video_videotrack`
--

LOCK TABLES `djangocms_video_videotrack` WRITE;
/*!40000 ALTER TABLE `djangocms_video_videotrack` DISABLE KEYS */;
/*!40000 ALTER TABLE `djangocms_video_videotrack` ENABLE KEYS */;
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
  UNIQUE KEY `easy_thumbnails_source_storage_hash_name_481ce32d_uniq` (`storage_hash`,`name`),
  KEY `easy_thumbnails_source_storage_hash_946cbcc9` (`storage_hash`),
  KEY `easy_thumbnails_source_name_5fe0edc6` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_source`
--

LOCK TABLES `easy_thumbnails_source` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_source` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_source` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg','2019-04-27 15:25:51.305472'),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg','2019-04-27 15:26:07.176173'),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg','2019-04-27 15:26:30.498007'),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg','2019-05-04 09:06:33.166908'),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg','2019-05-04 09:07:15.942761'),(6,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/b79295ba-748d-11e9-b665-a402b970bc8c.jpg','2019-05-16 16:14:51.513762'),(7,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/79279108-748e-11e9-b665-a402b970bc8c.jpg','2019-05-12 08:18:07.833889'),(8,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/22aa6610-748f-11e9-b665-a402b970bc8c.jpg','2019-05-12 08:22:52.225854'),(9,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/fea65086-7276-11e9-b665-a402b970bc8c.jpg','2019-05-12 08:33:49.298648'),(10,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/16b76568-73c4-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:24:09.030061'),(11,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/3b9a2f36-74c9-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:14:04.833013'),(12,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/e925bff6-74cb-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:24:13.018420'),(13,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/a3644748-74cc-11e9-b665-a402b970bc8c.jpeg','2019-05-17 14:23:56.048064'),(14,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/d391e7da-74cd-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:20:31.892020'),(15,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/d25321b2-74ce-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:24:33.432996'),(16,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/2256f436-74cf-11e9-b665-a402b970bc8c.jpg','2019-05-17 14:26:35.357583'),(17,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/e6c8a89c-7596-11e9-8681-a402b970bc8c.jpg','2019-05-17 14:24:03.353471'),(18,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/1d3d54ee-7598-11e9-8681-a402b970bc8c.jpg','2019-05-17 14:23:29.068774'),(19,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/709ee940-7598-11e9-8681-a402b970bc8c.webp','2019-05-13 16:01:59.645548'),(20,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/product/image/10/b2332dc4-759a-11e9-8681-a402b970bc8c.webp','2019-05-17 14:23:50.870758'),(21,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/product/image/None/1e307fa4-759b-11e9-8681-a402b970bc8c.jpg','2019-05-17 14:23:43.752413'),(22,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/product/image/ba3898f4-759c-11e9-8681-a402b970bc8c.jpg','2019-05-17 14:24:43.084455'),(23,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/category/wall/f42eadd2-77d1-11e9-9387-a402b970bc8c.jpg','2019-05-17 14:23:27.489754'),(24,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/category/wall/26fcc802-77d2-11e9-9387-a402b970bc8c.jpg','2019-05-16 15:22:08.915463'),(25,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/17db5542-7475-11e9-b665-a402b970bc8c.jpg','2019-05-16 15:21:36.419580'),(26,'f9bde26a1556cd667f742bd34ec7c55e','infoshop/category/wall/5a325128-77f1-11e9-9387-a402b970bc8c.jpg','2019-05-16 15:56:14.010343'),(27,'f9bde26a1556cd667f742bd34ec7c55e','authors/author/image/df10c43e-7a0c-11e9-b48c-a402b970bc8c.jpg','2019-05-19 09:04:22.696931'),(28,'f9bde26a1556cd667f742bd34ec7c55e','authors/author/image/5e7c41c0-7a13-11e9-b48c-a402b970bc8c.jpg','2019-05-19 09:04:24.606732'),(29,'f9bde26a1556cd667f742bd34ec7c55e','authors/school/image/1d193618-7a0c-11e9-b48c-a402b970bc8c.png','2019-05-19 09:04:16.571030');
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
  UNIQUE KEY `easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq` (`storage_hash`,`name`,`source_id`),
  KEY `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` (`source_id`),
  KEY `easy_thumbnails_thumbnail_storage_hash_f1435f49` (`storage_hash`),
  KEY `easy_thumbnails_thumbnail_name_b5882c31` (`name`),
  CONSTRAINT `easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum` FOREIGN KEY (`source_id`) REFERENCES `easy_thumbnails_source` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnail`
--

LOCK TABLES `easy_thumbnails_thumbnail` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnail` DISABLE KEYS */;
INSERT INTO `easy_thumbnails_thumbnail` VALUES (1,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__16x16_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:23:33.885990',1),(2,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__32x32_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:23:33.931047',1),(3,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__48x48_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:23:34.010321',1),(4,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__64x64_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:23:34.046877',1),(5,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__180x180_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:23:34.090645',1),(6,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2019-04-27 15:23:50.951079',1),(8,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__210x0_q85_subsampling-2_upscale.jpg','2019-04-27 15:24:16.516906',1),(9,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__16x16_q85_crop_subject_location-270,375_subsampling-2_upscale.jpg','2019-04-27 15:24:52.372648',1),(10,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__32x32_q85_crop_subject_location-270,375_subsampling-2_upscale.jpg','2019-04-27 15:24:52.446882',1),(11,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__48x48_q85_crop_subject_location-270,375_subsampling-2_upscale.jpg','2019-04-27 15:24:52.527741',1),(12,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__64x64_q85_crop_subject_location-270,375_subsampling-2_upscale.jpg','2019-04-27 15:24:52.565040',1),(13,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg__1024.0x438.85714285714283_q85_crop-10_subject_location-270,375_subsampling-2_upscale.jpg','2019-04-27 15:25:51.350704',1),(15,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:07.194538',2),(16,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:07.310062',2),(17,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:07.407241',2),(18,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:07.538334',2),(19,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:07.661454',2),(20,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:19.344768',3),(21,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:19.462080',3),(22,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:19.576541',3),(23,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:19.682548',3),(24,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2019-04-27 15:26:19.797650',3),(25,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2019-04-27 15:26:30.534006',3),(27,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:06:27.053472',4),(28,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:06:27.259862',4),(29,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:06:27.419446',4),(30,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:06:27.599153',4),(31,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:06:27.781033',4),(32,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2019-05-04 09:06:33.188609',4),(33,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__16x16_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:07:11.052753',5),(34,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__32x32_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:07:11.181829',5),(35,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__48x48_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:07:11.325144',5),(36,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__64x64_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:07:11.456584',5),(37,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__180x180_q85_crop_subsampling-2_upscale.jpg','2019-05-04 09:07:11.603495',5),(38,'f9bde26a1556cd667f742bd34ec7c55e','filer_public_thumbnails/filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg__1024.0x438.85714285714283_q85_crop-10_subsampling-2_upscale.jpg','2019-05-04 09:07:15.968957',5),(39,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/fea65086-7276-11e9-b665-a402b970bc8c.jpg.320x320_q85_crop-scale.jpg','2019-05-12 08:32:26.596538',9),(40,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/fea65086-7276-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 08:33:49.318780',9),(41,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/16b76568-73c4-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 08:33:49.517598',10),(42,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/3b9a2f36-74c9-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 15:19:11.947893',11),(43,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/e925bff6-74cb-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 15:38:04.139013',12),(44,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/a3644748-74cc-11e9-b665-a402b970bc8c.jpeg.400x400_q85_crop-scale.jpg','2019-05-12 15:43:30.147337',13),(45,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/d391e7da-74cd-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 15:51:45.730580',14),(46,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/d25321b2-74ce-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 15:58:52.048372',15),(47,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/2256f436-74cf-11e9-b665-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-12 16:01:04.938732',16),(48,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/e6c8a89c-7596-11e9-8681-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-13 16:37:56.397492',17),(49,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/ba3898f4-759c-11e9-8681-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-13 16:37:56.593161',22),(50,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/1d3d54ee-7598-11e9-8681-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-13 16:37:56.707134',18),(51,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/10/b2332dc4-759a-11e9-8681-a402b970bc8c.webp.400x400_q85_crop-scale.jpg','2019-05-13 16:37:56.866844',20),(52,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/None/1e307fa4-759b-11e9-8681-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-13 16:37:57.136869',21),(53,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/17db5542-7475-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-16 15:21:37.154885',25),(54,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/category/wall/26fcc802-77d2-11e9-9387-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-16 15:22:08.935125',24),(55,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/category/wall/5a325128-77f1-11e9-9387-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-16 15:56:14.031140',26),(56,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/b79295ba-748d-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-16 16:14:51.534186',6),(57,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/3b9a2f36-74c9-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:14:04.858805',11),(58,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/d391e7da-74cd-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:20:31.921571',14),(59,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/category/wall/f42eadd2-77d1-11e9-9387-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:23:27.509364',23),(60,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/1d3d54ee-7598-11e9-8681-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:23:29.088381',18),(61,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/None/1e307fa4-759b-11e9-8681-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:23:43.771717',21),(62,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/10/b2332dc4-759a-11e9-8681-a402b970bc8c.webp.1920x0_q85_crop-scale.jpg','2019-05-17 14:23:50.889648',20),(63,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/a3644748-74cc-11e9-b665-a402b970bc8c.jpeg.1920x0_q85_crop-scale.jpg','2019-05-17 14:23:56.066962',13),(64,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/e6c8a89c-7596-11e9-8681-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:24:03.373661',17),(65,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/16b76568-73c4-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:24:09.049297',10),(66,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/e925bff6-74cb-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:24:13.039333',12),(67,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/d25321b2-74ce-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:24:33.453327',15),(68,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/product/image/ba3898f4-759c-11e9-8681-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:24:43.116390',22),(69,'d26becbf46ac48eda79c7a39a13a02dd','infoshop/2256f436-74cf-11e9-b665-a402b970bc8c.jpg.1920x0_q85_crop-scale.jpg','2019-05-17 14:26:35.376933',16),(70,'d26becbf46ac48eda79c7a39a13a02dd','authors/author/image/df10c43e-7a0c-11e9-b48c-a402b970bc8c.jpg.100x100_q85_crop-smart.jpg','2019-05-19 08:48:15.559862',27),(71,'d26becbf46ac48eda79c7a39a13a02dd','authors/author/image/5e7c41c0-7a13-11e9-b48c-a402b970bc8c.jpg.100x100_q85_crop-smart.jpg','2019-05-19 08:53:44.347432',28),(72,'d26becbf46ac48eda79c7a39a13a02dd','authors/school/image/1d193618-7a0c-11e9-b48c-a402b970bc8c.png.100x100_q85_crop-smart.png','2019-05-19 08:58:29.734192',29),(73,'d26becbf46ac48eda79c7a39a13a02dd','authors/school/image/1d193618-7a0c-11e9-b48c-a402b970bc8c.png.200x120_q85_crop-scale.png','2019-05-19 09:04:16.589581',29),(74,'d26becbf46ac48eda79c7a39a13a02dd','authors/author/image/df10c43e-7a0c-11e9-b48c-a402b970bc8c.jpg.120x120_q85_crop-smart.jpg','2019-05-19 09:04:22.728562',27),(75,'d26becbf46ac48eda79c7a39a13a02dd','authors/author/image/5e7c41c0-7a13-11e9-b48c-a402b970bc8c.jpg.120x120_q85_crop-smart.jpg','2019-05-19 09:04:22.913218',28),(76,'d26becbf46ac48eda79c7a39a13a02dd','authors/author/image/5e7c41c0-7a13-11e9-b48c-a402b970bc8c.jpg.400x400_q85_crop-scale.jpg','2019-05-19 09:04:24.634648',28);
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
  CONSTRAINT `easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum` FOREIGN KEY (`thumbnail_id`) REFERENCES `easy_thumbnails_thumbnail` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `easy_thumbnails_thumbnaildimensions`
--

LOCK TABLES `easy_thumbnails_thumbnaildimensions` WRITE;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` DISABLE KEYS */;
/*!40000 ALTER TABLE `easy_thumbnails_thumbnaildimensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboard`
--

DROP TABLE IF EXISTS `filer_clipboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboard` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_clipboard_user_id_b52ff0bc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboard`
--

LOCK TABLES `filer_clipboard` WRITE;
/*!40000 ALTER TABLE `filer_clipboard` DISABLE KEYS */;
INSERT INTO `filer_clipboard` VALUES (1,1);
/*!40000 ALTER TABLE `filer_clipboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_clipboarditem`
--

DROP TABLE IF EXISTS `filer_clipboarditem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_clipboarditem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `clipboard_id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` (`clipboard_id`),
  KEY `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` (`file_id`),
  CONSTRAINT `filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id` FOREIGN KEY (`clipboard_id`) REFERENCES `filer_clipboard` (`id`),
  CONSTRAINT `filer_clipboarditem_file_id_06196f80_fk_filer_file_id` FOREIGN KEY (`file_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_clipboarditem`
--

LOCK TABLES `filer_clipboarditem` WRITE;
/*!40000 ALTER TABLE `filer_clipboarditem` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_clipboarditem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_file`
--

DROP TABLE IF EXISTS `filer_file`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(255) DEFAULT NULL,
  `_file_size` bigint(20) DEFAULT NULL,
  `sha1` varchar(40) NOT NULL,
  `has_all_mandatory_data` tinyint(1) NOT NULL,
  `original_filename` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext,
  `uploaded_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `polymorphic_ctype_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_file_folder_id_af803bbb_fk_filer_folder_id` (`folder_id`),
  KEY `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` (`polymorphic_ctype_id`),
  KEY `filer_file_owner_id_b9e32671_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_file_folder_id_af803bbb_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_file_owner_id_b9e32671_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_file_polymorphic_ctype_id_f44903c1_fk_django_co` FOREIGN KEY (`polymorphic_ctype_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_file`
--

LOCK TABLES `filer_file` WRITE;
/*!40000 ALTER TABLE `filer_file` DISABLE KEYS */;
INSERT INTO `filer_file` VALUES (1,'filer_public/4b/d1/4bd10bdd-7fbd-4fc8-86e5-c94ef0bae2ce/bl2018.jpeg',82308,'3e14c5ee5e46a3ccc15211852619e1a9dfe4e3cc',0,'bl2018.jpeg','','','2019-04-27 15:23:33.828453','2019-04-27 15:24:52.186796',1,NULL,1,30),(2,'filer_public/28/d9/28d95cd3-7bc4-4353-b722-ca1b13f962b5/bg11.jpg',252542,'c52ed5752eb0feb0f481b384d77fa8d1b28e1e3a',0,'bg11.jpg','',NULL,'2019-04-27 15:26:07.056493','2019-04-27 15:26:07.056530',1,NULL,1,30),(3,'filer_public/9e/a0/9ea0067f-e2af-489c-a1a6-53e4a6d404ad/bg11.jpg',252542,'c52ed5752eb0feb0f481b384d77fa8d1b28e1e3a',0,'bg11.jpg','',NULL,'2019-04-27 15:26:19.198009','2019-04-27 15:26:19.198036',1,NULL,1,30),(4,'filer_public/e9/ed/e9ed83bd-cbd7-4864-b427-78c329f1a5a9/1.jpg',156756,'cd32e58678774d654c2fbf30a939a38f971b9e91',0,'1.jpg','',NULL,'2019-05-04 09:06:26.870658','2019-05-04 09:06:26.870688',1,NULL,1,30),(5,'filer_public/be/35/be35e4f3-47bb-4ddc-b1b9-c629f6888dd5/0.jpg',314409,'bdcacffe1f42c5aff1fdf8f24ddf1937052a078d',0,'0.jpg','',NULL,'2019-05-04 09:07:10.900381','2019-05-04 09:07:10.900410',1,NULL,1,30);
/*!40000 ALTER TABLE `filer_file` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folder`
--

DROP TABLE IF EXISTS `filer_folder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `uploaded_at` datetime(6) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `modified_at` datetime(6) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filer_folder_parent_id_name_bc773258_uniq` (`parent_id`,`name`),
  KEY `filer_folder_tree_id_b016223c` (`tree_id`),
  KEY `filer_folder_owner_id_be530fb4_fk_auth_user_id` (`owner_id`),
  CONSTRAINT `filer_folder_owner_id_be530fb4_fk_auth_user_id` FOREIGN KEY (`owner_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `filer_folder_parent_id_308aecda_fk_filer_folder_id` FOREIGN KEY (`parent_id`) REFERENCES `filer_folder` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folder`
--

LOCK TABLES `filer_folder` WRITE;
/*!40000 ALTER TABLE `filer_folder` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_folderpermission`
--

DROP TABLE IF EXISTS `filer_folderpermission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_folderpermission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` smallint(6) NOT NULL,
  `everybody` tinyint(1) NOT NULL,
  `can_edit` smallint(6) DEFAULT NULL,
  `can_read` smallint(6) DEFAULT NULL,
  `can_add_children` smallint(6) DEFAULT NULL,
  `folder_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` (`folder_id`),
  KEY `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` (`group_id`),
  KEY `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id` FOREIGN KEY (`folder_id`) REFERENCES `filer_folder` (`id`),
  CONSTRAINT `filer_folderpermission_group_id_8901bafa_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `filer_folderpermission_user_id_7673d4b6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_folderpermission`
--

LOCK TABLES `filer_folderpermission` WRITE;
/*!40000 ALTER TABLE `filer_folderpermission` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_folderpermission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_image`
--

DROP TABLE IF EXISTS `filer_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_image` (
  `file_ptr_id` int(11) NOT NULL,
  `_height` int(11) DEFAULT NULL,
  `_width` int(11) DEFAULT NULL,
  `date_taken` datetime(6) DEFAULT NULL,
  `default_alt_text` varchar(255) DEFAULT NULL,
  `default_caption` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `must_always_publish_author_credit` tinyint(1) NOT NULL,
  `must_always_publish_copyright` tinyint(1) NOT NULL,
  `subject_location` varchar(64) NOT NULL,
  PRIMARY KEY (`file_ptr_id`),
  CONSTRAINT `filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id` FOREIGN KEY (`file_ptr_id`) REFERENCES `filer_file` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_image`
--

LOCK TABLES `filer_image` WRITE;
/*!40000 ALTER TABLE `filer_image` DISABLE KEYS */;
INSERT INTO `filer_image` VALUES (1,800,566,'2019-04-27 15:23:33.823389',NULL,NULL,NULL,0,0,'270,375'),(2,1280,1920,'2019-04-27 15:26:07.052797',NULL,NULL,NULL,0,0,''),(3,1280,1920,'2019-04-27 15:26:19.194491',NULL,NULL,NULL,0,0,''),(4,1860,1860,'2019-05-04 09:06:26.863906',NULL,NULL,NULL,0,0,''),(5,1920,1920,'2019-05-04 09:07:10.896739',NULL,NULL,NULL,0,0,'');
/*!40000 ALTER TABLE `filer_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filer_thumbnailoption`
--

DROP TABLE IF EXISTS `filer_thumbnailoption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filer_thumbnailoption` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `width` int(11) NOT NULL,
  `height` int(11) NOT NULL,
  `crop` tinyint(1) NOT NULL,
  `upscale` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filer_thumbnailoption`
--

LOCK TABLES `filer_thumbnailoption` WRITE;
/*!40000 ALTER TABLE `filer_thumbnailoption` DISABLE KEYS */;
/*!40000 ALTER TABLE `filer_thumbnailoption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_filtercategory`
--

DROP TABLE IF EXISTS `filters_filtercategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters_filtercategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `title_menu` varchar(512) DEFAULT NULL,
  `url` varchar(300) NOT NULL,
  `seo_keywords` varchar(512) DEFAULT NULL,
  `seo_description` longtext,
  `content` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ordering` int(10) unsigned DEFAULT NULL,
  `slug` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filters_filtercategory_category_id_f9349275_fk_shop_category_id` (`category_id`),
  KEY `filters_filtercategory_published_688496e7` (`published`),
  CONSTRAINT `filters_filtercategory_category_id_f9349275_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `infoshop_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_filtercategory`
--

LOCK TABLES `filters_filtercategory` WRITE;
/*!40000 ALTER TABLE `filters_filtercategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters_filtercategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_filterselect`
--

DROP TABLE IF EXISTS `filters_filterselect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters_filterselect` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `slug` varchar(250) NOT NULL,
  `url` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `filter_category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filters_filterselect_filter_category_id_487499ce_fk_filters_f` (`filter_category_id`),
  CONSTRAINT `filters_filterselect_filter_category_id_487499ce_fk_filters_f` FOREIGN KEY (`filter_category_id`) REFERENCES `filters_filtercategory` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_filterselect`
--

LOCK TABLES `filters_filterselect` WRITE;
/*!40000 ALTER TABLE `filters_filterselect` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters_filterselect` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_productfilter`
--

DROP TABLE IF EXISTS `filters_productfilter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters_productfilter` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `filter_category_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filters_productfilte_filter_category_id_1784d7b2_fk_filters_f` (`filter_category_id`),
  KEY `filters_productfilter_product_id_f2ac6f63_fk_shop_product_id` (`product_id`),
  CONSTRAINT `filters_productfilte_filter_category_id_1784d7b2_fk_filters_f` FOREIGN KEY (`filter_category_id`) REFERENCES `filters_filtercategory` (`id`),
  CONSTRAINT `filters_productfilter_product_id_f2ac6f63_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `infoshop_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_productfilter`
--

LOCK TABLES `filters_productfilter` WRITE;
/*!40000 ALTER TABLE `filters_productfilter` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters_productfilter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filters_productfilter_values`
--

DROP TABLE IF EXISTS `filters_productfilter_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `filters_productfilter_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productfilter_id` int(11) NOT NULL,
  `filterselect_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filters_productfilter_va_productfilter_id_filters_6c4f8eb6_uniq` (`productfilter_id`,`filterselect_id`),
  KEY `filters_productfilte_filterselect_id_8e3d5f33_fk_filters_f` (`filterselect_id`),
  CONSTRAINT `filters_productfilte_filterselect_id_8e3d5f33_fk_filters_f` FOREIGN KEY (`filterselect_id`) REFERENCES `filters_filterselect` (`id`),
  CONSTRAINT `filters_productfilte_productfilter_id_54a5cd99_fk_filters_p` FOREIGN KEY (`productfilter_id`) REFERENCES `filters_productfilter` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filters_productfilter_values`
--

LOCK TABLES `filters_productfilter_values` WRITE;
/*!40000 ALTER TABLE `filters_productfilter_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `filters_productfilter_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoshop_category`
--

DROP TABLE IF EXISTS `infoshop_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoshop_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `title_menu` varchar(512) DEFAULT NULL,
  `slug` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `seo_keywords` varchar(512) DEFAULT NULL,
  `seo_description` longtext,
  `content` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ordering` int(10) unsigned DEFAULT NULL,
  `deleted` datetime(6) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `lft` int(10) unsigned NOT NULL,
  `rght` int(10) unsigned NOT NULL,
  `tree_id` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `wall` varchar(100) NOT NULL,
  `color0` varchar(18) NOT NULL,
  `color1` varchar(18) NOT NULL,
  `color2` varchar(18) NOT NULL,
  `color3` varchar(18) NOT NULL,
  `color4` varchar(18) NOT NULL,
  `color5` varchar(18) NOT NULL,
  `color6` varchar(18) NOT NULL,
  `color7` varchar(18) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_category_published_5500450b` (`published`),
  KEY `shop_category_slug_4508178e` (`slug`),
  KEY `shop_category_tree_id_c48d9e64` (`tree_id`),
  KEY `shop_category_parent_id_901626c9` (`parent_id`),
  CONSTRAINT `shop_category_parent_id_901626c9_fk_shop_category_id` FOREIGN KEY (`parent_id`) REFERENCES `infoshop_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoshop_category`
--

LOCK TABLES `infoshop_category` WRITE;
/*!40000 ALTER TABLE `infoshop_category` DISABLE KEYS */;
INSERT INTO `infoshop_category` VALUES (1,0,NULL,NULL,'kursy-dlya-zhenshin','',NULL,'',NULL,'2019-05-09 16:11:52.292225','2019-05-16 15:43:55.217157',0,NULL,'Курсы для женщин','Обучающие программы для женщин помогают справиться со стрессом, мотивируют к саморазвитию и позитивным изменениям жизни. В каталоге oko.online собраны только лучшие женские тренинги.','infoshop/c7e21a08-7474-11e9-b665-a402b970bc8c.jpg',6,13,3,1,7,'infoshop/17db5542-7475-11e9-b665-a402b970bc8c.jpg','#EDDFC5','#ECC67D','#C28435','#753E13','#34190B','#CC9864','#966428','#7F7C7E'),(2,0,'Курсы для мам и их детей',NULL,'mat-i-ditya','',NULL,'',NULL,'2019-05-09 16:13:26.694443','2019-05-16 11:54:55.707880',0,NULL,'Мать и дитя','','',9,10,3,2,1,'infoshop/b79295ba-748d-11e9-b665-a402b970bc8c.jpg','#CFD383','#78822C','#E9DBCC','#BA913D','#C89973','#BCBC44','#764623','#929863'),(3,0,'Курсы о женской красоте и здоровье','Красота и здоровье','krasota-i-zdorove','',NULL,'',NULL,'2019-05-09 16:14:34.614711','2019-05-16 11:58:50.030723',0,NULL,'Женская красота и здоровье','','',7,8,3,2,1,'infoshop/category/wall/f42eadd2-77d1-11e9-9387-a402b970bc8c.jpg','#C0C02D','#7F9307','#DAC474','#97B20A','#C3996D','#D7D2CF','#B5933F','#221708'),(4,0,NULL,NULL,'biznes','',NULL,'',NULL,'2019-05-09 16:14:44.334960','2019-05-16 15:44:12.614940',0,NULL,'Бизнес','','',2,5,3,1,7,'','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF'),(5,0,NULL,NULL,'nalogi-i-otchetnost','',NULL,'',NULL,'2019-05-09 16:15:18.585136','2019-05-09 16:15:18.585167',0,NULL,'Налоги и отчетность','','',3,4,3,2,4,'','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF','#FFFFFF'),(6,0,NULL,NULL,'moda-i-stil','',NULL,'',NULL,'2019-05-12 15:56:58.446830','2019-05-16 14:58:25.743580',0,NULL,'Мода и стиль','Сегодня мода достаточно актуальное явление. Человеку необходимо соответствовать определенному социальному статусу, и именно мода помогает правильно ориентироваться в создании своего стиля. В наше время мода бывает разная: на одежду, макияж, книги, прически, интерьер. Так же существует понятия как модная работа, модная архитектура, в общем, мода есть на все.','',11,12,3,2,1,'infoshop/category/wall/26fcc802-77d2-11e9-9387-a402b970bc8c.jpg','#E71527','#82080B','#2A2425','#E3E0E2','#716E75','#FC4458','#D38F70','#EEBB99'),(7,0,NULL,'Все курсы','onlajn-kursy-treningi-videokursy-i-knigi','',NULL,'',NULL,'2019-05-16 15:43:29.181544','2019-05-16 15:43:31.753257',0,NULL,'Онлайн-курсы, тренинги, видеокурсы и книги','На страницах каталога собраны актуальные обучающие продукты от известных тренеров и истинных профессионалов. Все курсы и тренинги распределены по разделам в соответствии с тематикой, при помощи простой панели навигации вы можете выбрать интересующую тему.','',1,14,3,0,NULL,'infoshop/category/wall/5a325128-77f1-11e9-9387-a402b970bc8c.jpg','#2C2D38','#C3C4BC','#86817D','#BF9B84','#CBB69F','#BA7A52','#67514E','#866A59');
/*!40000 ALTER TABLE `infoshop_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoshop_images`
--

DROP TABLE IF EXISTS `infoshop_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoshop_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `image` varchar(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_images_product_id_3d79a3d3_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_images_product_id_3d79a3d3_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `infoshop_product` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoshop_images`
--

LOCK TABLES `infoshop_images` WRITE;
/*!40000 ALTER TABLE `infoshop_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `infoshop_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoshop_offer`
--

DROP TABLE IF EXISTS `infoshop_offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoshop_offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `deleted` datetime(6) DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `description` longtext NOT NULL,
  `price` int(10) unsigned,
  `product_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_offer_product_id_357c9ca5_fk_shop_product_id` (`product_id`),
  CONSTRAINT `shop_offer_product_id_357c9ca5_fk_shop_product_id` FOREIGN KEY (`product_id`) REFERENCES `infoshop_product` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoshop_offer`
--

LOCK TABLES `infoshop_offer` WRITE;
/*!40000 ALTER TABLE `infoshop_offer` DISABLE KEYS */;
INSERT INTO `infoshop_offer` VALUES (1,1,NULL,'Сборник уроков','Доступ к видеоурокам для самостоятельного изучения',4900,1),(2,0,NULL,'Индивидуальные занятия','Доступ к видеоурокам и индивидуальные занятия через Skype',22700,1);
/*!40000 ALTER TABLE `infoshop_offer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoshop_product`
--

DROP TABLE IF EXISTS `infoshop_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoshop_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `published` tinyint(1) NOT NULL,
  `title` varchar(512) DEFAULT NULL,
  `title_menu` varchar(512) DEFAULT NULL,
  `slug` varchar(300) NOT NULL,
  `url` varchar(300) NOT NULL,
  `seo_keywords` varchar(512) DEFAULT NULL,
  `seo_description` longtext,
  `content` longtext,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `ordering` int(10) unsigned DEFAULT NULL,
  `deleted` datetime(6) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `price` int(10) unsigned,
  `promo` tinyint(1) NOT NULL,
  `media_type_video` tinyint(1) NOT NULL,
  `media_type_audio` tinyint(1) NOT NULL,
  `media_type_book` tinyint(1) NOT NULL,
  `media_type_flow` tinyint(1) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `wall` varchar(100) NOT NULL,
  `color0` varchar(18) NOT NULL,
  `color1` varchar(18) NOT NULL,
  `color2` varchar(18) NOT NULL,
  `color3` varchar(18) NOT NULL,
  `color4` varchar(18) NOT NULL,
  `color5` varchar(18) NOT NULL,
  `color6` varchar(18) NOT NULL,
  `color7` varchar(18) NOT NULL,
  `type_id` int(11) DEFAULT NULL,
  `forfree` tinyint(1) NOT NULL,
  `content_program` longtext,
  `hit` tinyint(1) NOT NULL,
  `new` tinyint(1) NOT NULL,
  `bonus` int(10) unsigned,
  `owner_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shop_product_published_c6c1a1a0` (`published`),
  KEY `shop_product_slug_30bd2d5d` (`slug`),
  KEY `infoshop_product_category_id_0b316504_fk_infoshop_category_id` (`category_id`),
  KEY `infoshop_product_type_id_ed86bb05_fk_infoshop_producttype_id` (`type_id`),
  KEY `infoshop_product_owner_id_17170b22_fk_authors_owner_id` (`owner_id`),
  CONSTRAINT `infoshop_product_category_id_0b316504_fk_infoshop_category_id` FOREIGN KEY (`category_id`) REFERENCES `infoshop_category` (`id`),
  CONSTRAINT `infoshop_product_owner_id_17170b22_fk_authors_owner_id` FOREIGN KEY (`owner_id`) REFERENCES `authors_owner` (`id`),
  CONSTRAINT `infoshop_product_type_id_ed86bb05_fk_infoshop_producttype_id` FOREIGN KEY (`type_id`) REFERENCES `infoshop_producttype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoshop_product`
--

LOCK TABLES `infoshop_product` WRITE;
/*!40000 ALTER TABLE `infoshop_product` DISABLE KEYS */;
INSERT INTO `infoshop_product` VALUES (1,0,NULL,'Худей за 100 дней','kurs-hudej-za-100-dnej','',NULL,'','<p>Для женщин, которые мечтают обрести гармонию с собой, стать стройной и подтянутой, научится радоваться каждому дню &mdash; подготовлен этот уникальный курс. Автор программы эксперт по личностному росту и созданию красивой фигуры &mdash; Екатерина Латинская.</p>\r\n\r\n<p>Здесь вы не найдете рекомендаций по правильному питанию, строгих диет и физических упражнений. Этот курс направлен на решение внутренних проблем, принятия своего тела и понимание&nbsp;себя. В совокупности эти знания помогут любой женщине полюбить себя, избавится от лишних килограммов и сохранить вес после похудения.</p>\r\n\r\n<p><strong>В курсе Екатерины Латинской &laquo;Я стройная, красивая и счастливая&raquo;:</strong></p>\r\n\r\n<ul>\r\n	<li>Как обрести гармонию с собой, стать красивой и привлекательной;</li>\r\n	<li>Понимание и принятие своей ценности;</li>\r\n	<li>Приобретение чувства легкости и свободы;</li>\r\n	<li>Освобождение от сценариев набора лишнего веса, навсегда;</li>\r\n	<li>Осознание своей уникальности.</li>\r\n</ul>\r\n\r\n<p>Завершив обучение, вы заметите ощутимые результаты. Фигура станет более подтянутой, появится грациозная осанка. Вы перестанете думать о лишних килограммах и тем самым настроите себя на похудение.</p>','2019-05-09 16:25:01.552847','2019-05-19 08:06:12.263903',0,NULL,'Худей за 100 дней','Я поделюсь с Вами секретными способами похудения, а также реальными методами эффективного похудения без диет. Придерживаясь советов, описанных в данной статье, вы улучшите свою внешность и, благодаря этому, у вас безусловно будет приподнятое настроение.','infoshop/3b9a2f36-74c9-11e9-b665-a402b970bc8c.jpg',12000,0,1,0,0,1,3,'','#292C33','#753828','#DB0516','#8E613C','#7E7475','#38485B','#BE896F','#C3C6CB',4,0,'<ul>\r\n	<li>Тема 1. Анатомия и физиология строения лица;</li>\r\n	<li>Тема 2. Влияние питания на красоту;</li>\r\n	<li>Тема 3. Подбор уходовых средств;</li>\r\n	<li>Тема 4. Фейсбилдинг - гимнастика для лица;</li>\r\n	<li>Тема 5. Массаж для лица: кобидо и шиацу;</li>\r\n	<li>Тема 6. Ваши первые шаги тренера по фейсбилдинг;</li>\r\n	<li>Тема 7. Маркетинг и продажа услуг бьюти-коучинга.</li>\r\n</ul>',1,0,10,2),(2,0,'Видеокурс для женщин \"Деловая мама\"','Деловая мама','kurs-delovaya-mama','',NULL,'','','2019-05-11 08:09:24.341033','2019-05-19 08:54:44.602332',0,NULL,'Деловая мама','','infoshop/16b76568-73c4-11e9-b665-a402b970bc8c.jpg',0,0,1,0,0,0,2,'','#223353','#E8E3E5','#8C736A','#BF9E90','#CDB7A9','#704A58','#BA876E','#9A918B',4,0,'',0,1,0,2),(3,0,NULL,'Как стать ленивой мамой','kurs-kak-stat-lenivoj-mamoj','',NULL,'','','2019-05-12 15:37:55.025678','2019-05-19 08:55:23.067818',0,NULL,'Как стать ленивой мамой','','infoshop/e925bff6-74cb-11e9-b665-a402b970bc8c.jpg',0,0,0,0,1,0,2,'','#A8F4E7','#F7F4F0','#E98F6D','#877D7E','#755152','#40393B','#8A615D','#EDB190',6,0,'',0,0,0,3),(4,0,NULL,'10 безотказных приемов макияжа','master-klass-10-bezotkaznyh-priemov-makiyazha','',NULL,'','','2019-05-12 15:43:07.491762','2019-05-19 08:06:27.626862',0,NULL,'10 безотказных приемов макияжа','','infoshop/a3644748-74cc-11e9-b665-a402b970bc8c.jpeg',0,0,0,0,0,1,3,'','#101012','#DBCBC3','#8C756B','#B39990','#C3ADA2','#5C4B44','#6B594F','#87397A',2,1,'',0,1,0,1),(5,0,NULL,'Готовимся к пляжному сезону','trening-gotovimsya-k-plyazhnomu-sezonu','',NULL,'','','2019-05-12 15:51:37.818100','2019-05-19 08:52:43.255960',0,NULL,'Готовимся к пляжному сезону','','infoshop/d391e7da-74cd-11e9-b665-a402b970bc8c.jpg',0,0,0,0,0,1,3,'','#F3E4CF','#E7C492','#814232','#D09272','#DA7C31','#8E756E','#352B2D','#DA3D2F',3,0,'',0,0,5,1),(6,0,NULL,'4 основных женских походки на каждый день','master-klass-4-osnovnyh-zhenskih-pohodki-na-kazhdyj-den','',NULL,'','','2019-05-12 15:58:45.225730','2019-05-19 08:52:54.817340',0,NULL,'4 основных женских походки на каждый день','','infoshop/d25321b2-74ce-11e9-b665-a402b970bc8c.jpg',0,0,1,0,0,0,6,'','#DCD5C9','#888476','#BB977F','#C7B19A','#484139','#86624B','#A4AFA6','#654E42',2,0,'',0,0,0,1),(7,0,NULL,'Базовый гардероб деловой женщины','kurs-bazovyj-garderob-delovoj-zhenshiny','',NULL,'','','2019-05-12 16:00:59.468545','2019-05-19 08:53:20.151189',0,NULL,'Базовый гардероб деловой женщины','','infoshop/2256f436-74cf-11e9-b665-a402b970bc8c.jpg',0,0,0,0,1,0,6,'','#D2D8DB','#173346','#798C8E','#98B4C0','#496F79','#C1B3A7','#BA9B8D','#776962',6,0,'',0,0,0,1),(8,0,NULL,'Как избежать послеродовой депрессии','kurs-kak-izbezhat-poslerodovoj-depressii','',NULL,'','','2019-05-13 15:50:58.896152','2019-05-19 08:52:19.527494',0,NULL,'Как избежать послеродовой депрессии','','infoshop/e6c8a89c-7596-11e9-8681-a402b970bc8c.jpg',0,0,0,0,0,1,2,'','#C5D477','#80886D','#D1CBBC','#9CBB72','#C9D93E','#203E68','#92C546','#2A2A32',1,0,'',0,0,0,3),(9,0,NULL,'С чего начинается женское здоровье','kurs-s-chego-nachinaetsya-zhenskoe-zdorove','',NULL,'','','2019-05-13 15:59:39.754579','2019-05-19 08:52:29.687294',0,NULL,'С чего начинается женское здоровье','','infoshop/1d3d54ee-7598-11e9-8681-a402b970bc8c.jpg',0,0,0,0,1,0,3,'','#39781E','#728A2C','#7ABD2C','#D0D8DB','#BDDA8B','#94C669','#1C3E11','#B6703F',1,0,'',0,0,0,3),(10,0,NULL,'12 продуктов для женского здоровья','kurs-12-produktov-dlya-zhenskogo-zdorovya','',NULL,'','','2019-05-13 16:01:59.644995','2019-05-19 08:53:05.214931',0,NULL,'12 продуктов для женского здоровья','','infoshop/product/image/10/b2332dc4-759a-11e9-8681-a402b970bc8c.webp',0,0,0,0,1,0,3,'','#321D16','#6F706C','#772B21','#E8CCC0','#DFB794','#CF9577','#826E30','#D1BD2F',1,1,'',0,0,0,3),(11,0,NULL,'6 упражнений для укрепления мышц живота','videokurs-6-uprazhnenij-dlya-ukrepleniya-myshc-zhivota','',NULL,'','','2019-05-13 16:21:09.838397','2019-05-19 08:53:12.460043',0,NULL,'6 упражнений для укрепления мышц живота','','infoshop/product/image/None/1e307fa4-759b-11e9-8681-a402b970bc8c.jpg',0,0,1,0,0,0,3,'','#3A2510','#837C2D','#813B17','#4D762C','#E6CD81','#C6793B','#837E7C','#EADBC5',4,0,'',0,0,0,2),(12,0,NULL,'Медитация для мам','audiokurs-meditaciya-dlya-mam','',NULL,'','','2019-05-13 16:32:41.112789','2019-05-19 08:55:12.454563',0,NULL,'Медитация для мам','','infoshop/product/image/ba3898f4-759c-11e9-8681-a402b970bc8c.jpg',0,0,0,1,0,0,2,'','#F8F0E4','#463836','#85675C','#6C4C43','#7B5D4F','#BD8866','#E6C092','#BD7744',5,1,'',0,0,0,2);
/*!40000 ALTER TABLE `infoshop_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `infoshop_producttype`
--

DROP TABLE IF EXISTS `infoshop_producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `infoshop_producttype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `name_accusative` varchar(250) DEFAULT NULL,
  `name_dative` varchar(250) DEFAULT NULL,
  `name_genitive` varchar(250) DEFAULT NULL,
  `name_ablative` varchar(250) DEFAULT NULL,
  `name_prepositional` varchar(250) DEFAULT NULL,
  `name_nominative` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `infoshop_producttype`
--

LOCK TABLES `infoshop_producttype` WRITE;
/*!40000 ALTER TABLE `infoshop_producttype` DISABLE KEYS */;
INSERT INTO `infoshop_producttype` VALUES (1,'Курс','курс','курсу','курса','курсом','курсе',NULL),(2,'Мастер-класс','мастер-класс','мастер-классу','мастер-класса','мастер-классом','мастер-классе',NULL),(3,'Тренинг','тренинг','тренингу','тренинга','тренингом','тренинге',NULL),(4,'Видеокурс','видеокурс','видеокурсу','видеокурса','видеокурсом','видеокурсе',NULL),(5,'Аудиокурс','аудиокурс','аудиокурсу','аудиокурса','аудиокурсом','аудиокурсе',NULL),(6,'Книга','книгу','книге','книги','книгой','книге',NULL),(7,'Вебинар','вебинар','вебинару','вебинара','вебинаром','вебинаре',NULL);
/*!40000 ALTER TABLE `infoshop_producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus_cachekey`
--

DROP TABLE IF EXISTS `menus_cachekey`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus_cachekey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(255) NOT NULL,
  `site` int(10) unsigned NOT NULL,
  `key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus_cachekey`
--

LOCK TABLES `menus_cachekey` WRITE;
/*!40000 ALTER TABLE `menus_cachekey` DISABLE KEYS */;
INSERT INTO `menus_cachekey` VALUES (23,'ru',1,'cms_3.6.0_menu_nodes_ru_1_1_user:draft');
/*!40000 ALTER TABLE `menus_cachekey` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_productproperty`
--

DROP TABLE IF EXISTS `properties_productproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties_productproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `value` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL,
  `type_property_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `properties_productpr_product_id_eb0b1cc6_fk_shop_prod` (`product_id`),
  KEY `properties_productpr_type_property_id_41d3509d_fk_propertie` (`type_property_id`),
  CONSTRAINT `properties_productpr_product_id_eb0b1cc6_fk_shop_prod` FOREIGN KEY (`product_id`) REFERENCES `infoshop_product` (`id`),
  CONSTRAINT `properties_productpr_type_property_id_41d3509d_fk_propertie` FOREIGN KEY (`type_property_id`) REFERENCES `properties_typeproperty` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_productproperty`
--

LOCK TABLES `properties_productproperty` WRITE;
/*!40000 ALTER TABLE `properties_productproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties_productproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `properties_typeproperty`
--

DROP TABLE IF EXISTS `properties_typeproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `properties_typeproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ordering` int(10) unsigned DEFAULT NULL,
  `name` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `properties_typeproperty_category_id_68e88fbf_fk_shop_category_id` (`category_id`),
  CONSTRAINT `properties_typeproperty_category_id_68e88fbf_fk_shop_category_id` FOREIGN KEY (`category_id`) REFERENCES `infoshop_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `properties_typeproperty`
--

LOCK TABLES `properties_typeproperty` WRITE;
/*!40000 ALTER TABLE `properties_typeproperty` DISABLE KEYS */;
/*!40000 ALTER TABLE `properties_typeproperty` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-02 22:54:55
