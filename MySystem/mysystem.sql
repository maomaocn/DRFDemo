-- MySQL dump 10.13  Distrib 5.7.23, for macos10.13 (x86_64)
--
-- Host: localhost    Database: mysystem
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(128) DEFAULT NULL,
  `content` longtext,
  `is_delete` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (7,'猜测122','heiheihei',1),(8,'莽荒记',NULL,0),(9,'猜测118',NULL,0),(10,'猜测119','hahaha',0),(11,'猜测120','hahaha',0),(12,'猜测188','heiheihei',0);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
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
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
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
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add permission',1,'add_permission'),(2,'Can change permission',1,'change_permission'),(3,'Can delete permission',1,'delete_permission'),(4,'Can view permission',1,'view_permission'),(5,'Can add group',2,'add_group'),(6,'Can change group',2,'change_group'),(7,'Can delete group',2,'delete_group'),(8,'Can view group',2,'view_group'),(9,'Can add content type',3,'add_contenttype'),(10,'Can change content type',3,'change_contenttype'),(11,'Can delete content type',3,'delete_contenttype'),(12,'Can view content type',3,'view_contenttype'),(13,'Can add 用户管理',4,'add_jhuser'),(14,'Can change 用户管理',4,'change_jhuser'),(15,'Can delete 用户管理',4,'delete_jhuser'),(16,'Can view 用户管理',4,'view_jhuser'),(17,'Can add log entry',5,'add_logentry'),(18,'Can change log entry',5,'change_logentry'),(19,'Can delete log entry',5,'delete_logentry'),(20,'Can view log entry',5,'view_logentry'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add 角色管理',7,'add_role'),(26,'Can change 角色管理',7,'change_role'),(27,'Can delete 角色管理',7,'delete_role'),(28,'Can view 角色管理',7,'view_role'),(29,'Can add 权限管理',8,'add_permisstion'),(30,'Can change 权限管理',8,'change_permisstion'),(31,'Can delete 权限管理',8,'delete_permisstion'),(32,'Can view 权限管理',8,'view_permisstion'),(33,'Can add 文章管理',9,'add_article'),(34,'Can change 文章管理',9,'change_article'),(35,'Can delete 文章管理',9,'delete_article'),(36,'Can view 文章管理',9,'view_article'),(37,'Can add Token',10,'add_token'),(38,'Can change Token',10,'change_token'),(39,'Can delete Token',10,'delete_token'),(40,'Can view Token',10,'view_token'),(41,'Can add token',11,'add_tokenproxy'),(42,'Can change token',11,'change_tokenproxy'),(43,'Can delete token',11,'delete_tokenproxy'),(44,'Can view token',11,'view_tokenproxy');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_jh_user_id` FOREIGN KEY (`user_id`) REFERENCES `jh_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
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
  KEY `django_admin_log_user_id_c564eba6_fk_jh_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_jh_user_id` FOREIGN KEY (`user_id`) REFERENCES `jh_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-12-10 15:47:49.588682','1','admin',2,'[{\"changed\": {\"fields\": [\"Last login\", \"\\u771f\\u5b9e\\u59d3\\u540d\", \"\\u6027\\u522b\", \"\\u5e74\\u9f84\", \"\\u8eab\\u4efd\\u8bc1\\u53f7\\u7801\", \"\\u624b\\u673a\\u53f7\\u7801\", \"Role\"]}}]',4,1),(2,'2020-12-10 16:34:50.532491','1','PermissTion object (1)',1,'[{\"added\": {}}]',8,1),(3,'2020-12-10 16:35:08.056180','1','PermissTion object (1)',2,'[{\"changed\": {\"fields\": [\"\\u6743\\u9650\\u540d\\u79f0\"]}}]',8,1),(4,'2020-12-10 16:35:23.309428','2','PermissTion object (2)',1,'[{\"added\": {}}]',8,1),(5,'2020-12-10 16:35:37.835989','3','PermissTion object (3)',1,'[{\"added\": {}}]',8,1),(6,'2020-12-10 16:35:54.684998','4','PermissTion object (4)',1,'[{\"added\": {}}]',8,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (5,'admin','logentry'),(9,'Article','article'),(2,'auth','group'),(1,'auth','permission'),(10,'authtoken','token'),(11,'authtoken','tokenproxy'),(3,'contenttypes','contenttype'),(8,'Role','permisstion'),(7,'Role','role'),(6,'sessions','session'),(4,'users','jhuser');
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-12-10 15:17:26.222494'),(2,'contenttypes','0002_remove_content_type_name','2020-12-10 15:17:26.275983'),(3,'auth','0001_initial','2020-12-10 15:17:26.363144'),(4,'auth','0002_alter_permission_name_max_length','2020-12-10 15:17:26.482797'),(5,'auth','0003_alter_user_email_max_length','2020-12-10 15:17:26.489500'),(6,'auth','0004_alter_user_username_opts','2020-12-10 15:17:26.495253'),(7,'auth','0005_alter_user_last_login_null','2020-12-10 15:17:26.500909'),(8,'auth','0006_require_contenttypes_0002','2020-12-10 15:17:26.502418'),(9,'auth','0007_alter_validators_add_error_messages','2020-12-10 15:17:26.508084'),(10,'auth','0008_alter_user_username_max_length','2020-12-10 15:17:26.513756'),(11,'auth','0009_alter_user_last_name_max_length','2020-12-10 15:17:26.519244'),(12,'auth','0010_alter_group_name_max_length','2020-12-10 15:17:26.542923'),(13,'auth','0011_update_proxy_permissions','2020-12-10 15:17:26.550719'),(14,'auth','0012_alter_user_first_name_max_length','2020-12-10 15:17:26.556595'),(15,'users','0001_initial','2020-12-10 15:17:26.633942'),(16,'admin','0001_initial','2020-12-10 15:18:56.811236'),(17,'admin','0002_logentry_remove_auto_add','2020-12-10 15:18:56.867208'),(18,'admin','0003_logentry_add_action_flag_choices','2020-12-10 15:18:56.877336'),(19,'sessions','0001_initial','2020-12-10 15:18:56.904486'),(20,'Role','0001_initial','2020-12-10 15:27:04.463055'),(21,'users','0002_jhuser_role','2020-12-10 15:33:38.945394'),(22,'users','0003_auto_20201210_1550','2020-12-10 15:50:29.562787'),(23,'users','0004_auto_20201210_1552','2020-12-10 15:52:49.306584'),(24,'users','0005_remove_jhuser_role','2020-12-10 16:06:50.358309'),(25,'users','0006_jhuser_role','2020-12-10 16:07:25.910934'),(26,'users','0007_auto_20201210_1609','2020-12-10 16:09:27.022921'),(27,'users','0008_auto_20201210_1611','2020-12-10 16:11:21.414532'),(28,'users','0009_auto_20201210_1612','2020-12-10 16:12:50.286943'),(29,'users','0010_auto_20201210_1613','2020-12-10 16:13:35.926595'),(30,'Role','0002_auto_20201210_1631','2020-12-10 16:31:28.103835'),(31,'Role','0003_auto_20201210_1653','2020-12-10 16:53:03.269859'),(32,'Role','0004_auto_20201210_1656','2020-12-10 16:56:32.224766'),(33,'Role','0005_auto_20201210_1805','2020-12-10 18:05:19.907066'),(34,'users','0011_auto_20201211_0942','2020-12-11 09:42:10.922319'),(35,'Article','0001_initial','2020-12-11 13:48:41.859520'),(36,'authtoken','0001_initial','2020-12-11 14:58:10.869058'),(37,'authtoken','0002_auto_20160226_1747','2020-12-11 14:58:10.962184'),(38,'authtoken','0003_tokenproxy','2020-12-11 14:58:10.966166'),(39,'Role','0006_permisstion_path_mode','2020-12-11 16:59:22.666550'),(40,'Role','0007_permisstion_flag','2020-12-14 10:14:24.829284'),(41,'Article','0002_auto_20201215_1131','2020-12-15 11:31:21.927747'),(42,'Article','0003_article_is_delete','2020-12-16 09:20:21.008958');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('g22b0izxiqso4hw6dncfm0rpogp36i8g','.eJxVy7sOwjAMQNF_8Ywqh7waRna-IbJjV0E8KpF2qFD_vSB1gPUe3Tdkmqea56avfBU4gYHDb2MqN31-QThP43hv3WPZY3dZzjv_PZVa_QzWFV-GiC4l1MKsyRYUjWjQsTsaT6hKqSfpB_aBg0ZBsh6JRCQIrBvjAjQH:1kncNn:Wdj6aK4SIrw2IF078IwLhRr6vKTR37FlTTPv_mbR5rw','2020-12-25 14:58:27.340441');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jh_user`
--

DROP TABLE IF EXISTS `jh_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jh_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `creator_name` varchar(128) DEFAULT NULL,
  `creator_date` datetime(6) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `del_user` varchar(128) DEFAULT NULL,
  `del_date` datetime(6) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `real_username` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `gender` varchar(4) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `custr_nbr` varchar(18) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `jh_user_role_id_c65547d6_fk_role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jh_user`
--

LOCK TABLES `jh_user` WRITE;
/*!40000 ALTER TABLE `jh_user` DISABLE KEYS */;
INSERT INTO `jh_user` VALUES (1,'2020-12-11 14:58:27.338600',1,'','','123@163.com',1,1,'2020-12-11 10:17:00.000000','未知','2020-12-10 10:17:00.000000',0,'','2020-12-11 10:17:00.000000','admin','张三丰','46181e122ab05a316186c7edb75ba1a3','男',88,'322123344567890981','18337032897',1),(2,'2020-12-10 15:41:00.000000',1,'','','123@163.com',1,1,'2020-12-10 15:40:00.000000',NULL,'2020-12-10 15:40:00.000000',NULL,NULL,'2020-12-10 15:40:00.000000','a','吴明祖','46181e122ab05a316186c7edb75ba1a3','男',88,'322123344567890982','18337032897',2),(3,'2020-12-10 15:41:00.000000',1,'','','123@163.com',1,1,'2020-12-10 15:40:00.000000',NULL,'2020-12-10 15:40:00.000000',NULL,NULL,'2020-12-10 15:40:00.000000','b','刘德华','46181e122ab05a316186c7edb75ba1a3','男',88,'322123344567890983','18337032897',3),(4,'2020-12-10 15:41:00.000000',1,'','','123@163.com',1,1,'2020-12-10 15:40:00.000000',NULL,'2020-12-10 15:40:00.000000',NULL,NULL,'2020-12-10 15:40:00.000000','c','房事龙','46181e122ab05a316186c7edb75ba1a3','男',88,'322123344567890984','18337032897',4),(5,NULL,0,'','','',0,1,'2020-12-16 14:15:19.414503',NULL,'2020-12-16 14:15:19.414513',NULL,NULL,NULL,'张霞',NULL,'ll123456','女',32,NULL,NULL,5);
/*!40000 ALTER TABLE `jh_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jh_user_groups`
--

DROP TABLE IF EXISTS `jh_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jh_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jhuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jh_user_groups_jhuser_id_group_id_475278ac_uniq` (`jhuser_id`,`group_id`),
  KEY `jh_user_groups_group_id_47b83592_fk_auth_group_id` (`group_id`),
  CONSTRAINT `jh_user_groups_group_id_47b83592_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `jh_user_groups_jhuser_id_d50f07c9_fk_jh_user_id` FOREIGN KEY (`jhuser_id`) REFERENCES `jh_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jh_user_groups`
--

LOCK TABLES `jh_user_groups` WRITE;
/*!40000 ALTER TABLE `jh_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `jh_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jh_user_user_permissions`
--

DROP TABLE IF EXISTS `jh_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jh_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jhuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `jh_user_user_permissions_jhuser_id_permission_id_839198f8_uniq` (`jhuser_id`,`permission_id`),
  KEY `jh_user_user_permiss_permission_id_6e0e2a5f_fk_auth_perm` (`permission_id`),
  CONSTRAINT `jh_user_user_permiss_permission_id_6e0e2a5f_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `jh_user_user_permissions_jhuser_id_b8ade5a0_fk_jh_user_id` FOREIGN KEY (`jhuser_id`) REFERENCES `jh_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jh_user_user_permissions`
--

LOCK TABLES `jh_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `jh_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `jh_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permiss`
--

DROP TABLE IF EXISTS `permiss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permiss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `per_name` varchar(128) DEFAULT NULL,
  `per_desc` varchar(128) DEFAULT NULL,
  `is_per` tinyint(1) NOT NULL DEFAULT '0',
  `path_mode` varchar(128) DEFAULT NULL,
  `flag` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permiss`
--

LOCK TABLES `permiss` WRITE;
/*!40000 ALTER TABLE `permiss` DISABLE KEYS */;
INSERT INTO `permiss` VALUES (1,'删除文章权限',NULL,0,'article','article_del'),(2,'添加文章权限',NULL,0,'article','article_add'),(3,'查看文章权限',NULL,0,'article','rarticle_read'),(4,'修改文章权限',NULL,0,'article','article_update'),(5,'删除文章权限',NULL,1,'article','article_del'),(6,'添加文章权限',NULL,1,'article','article_add'),(7,'查看文章权限',NULL,1,'article','article_read'),(8,'修改文章权限',NULL,1,'article','article_update'),(9,'查看用户权限',NULL,1,'user','user_read'),(10,'修改用户权限',NULL,1,'user','user_update'),(11,'添加用户权限',NULL,1,'user','user_add'),(12,'删除用户权限',NULL,1,'user','del_user'),(13,'查看用户权限',NULL,0,'user','user_read'),(14,'修改用户权限',NULL,0,'user','user_update'),(15,'添加用户权限',NULL,0,'user','user_add'),(16,'删除用户权限',NULL,0,'user','del_user');
/*!40000 ALTER TABLE `permiss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(128) DEFAULT NULL,
  `role_desc` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'一级管理员',NULL),(2,'二级管理员',NULL),(3,'三级管理员',NULL),(4,'四级管理员',NULL),(5,'五级管理员',NULL);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_permiss`
--

DROP TABLE IF EXISTS `role_permiss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_permiss` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permisstion_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_permiss_role_id_permisstion_id_c02cde22_uniq` (`role_id`,`permisstion_id`),
  KEY `role_permiss_role_id_9cc2536d` (`role_id`),
  KEY `role_permiss_permisstion_id_c86c3511` (`permisstion_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_permiss`
--

LOCK TABLES `role_permiss` WRITE;
/*!40000 ALTER TABLE `role_permiss` DISABLE KEYS */;
INSERT INTO `role_permiss` VALUES (9,1,5),(10,1,6),(11,1,7),(12,1,8),(13,1,9),(16,1,10),(8,1,11),(17,1,12),(34,2,5),(28,2,6),(29,2,7),(30,2,8),(31,2,9),(32,2,10),(33,2,11),(23,3,6),(24,3,7),(25,3,8),(5,3,9),(26,3,10),(27,3,11),(21,4,6),(22,4,7),(7,4,9),(20,4,11),(19,5,7),(18,5,9);
/*!40000 ALTER TABLE `role_permiss` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-16 14:47:18
