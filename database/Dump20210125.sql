-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 192.168.0.104    Database: modx
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `modx_access_actiondom`
--

DROP TABLE IF EXISTS `modx_access_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_actiondom` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actiondom`
--

LOCK TABLES `modx_access_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_access_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_actions`
--

DROP TABLE IF EXISTS `modx_access_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_actions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_actions`
--

LOCK TABLES `modx_access_actions` WRITE;
/*!40000 ALTER TABLE `modx_access_actions` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_category`
--

DROP TABLE IF EXISTS `modx_access_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_category` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_category`
--

LOCK TABLES `modx_access_category` WRITE;
/*!40000 ALTER TABLE `modx_access_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_context`
--

DROP TABLE IF EXISTS `modx_access_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_context` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_context`
--

LOCK TABLES `modx_access_context` WRITE;
/*!40000 ALTER TABLE `modx_access_context` DISABLE KEYS */;
INSERT INTO `modx_access_context` VALUES (1,'web','modUserGroup',0,9999,3),(2,'mgr','modUserGroup',1,0,2),(3,'web','modUserGroup',1,0,2);
/*!40000 ALTER TABLE `modx_access_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_elements`
--

DROP TABLE IF EXISTS `modx_access_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_elements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_elements`
--

LOCK TABLES `modx_access_elements` WRITE;
/*!40000 ALTER TABLE `modx_access_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_media_source`
--

DROP TABLE IF EXISTS `modx_access_media_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_media_source` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_media_source`
--

LOCK TABLES `modx_access_media_source` WRITE;
/*!40000 ALTER TABLE `modx_access_media_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_media_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_menus`
--

DROP TABLE IF EXISTS `modx_access_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_menus`
--

LOCK TABLES `modx_access_menus` WRITE;
/*!40000 ALTER TABLE `modx_access_menus` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_namespace`
--

DROP TABLE IF EXISTS `modx_access_namespace`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_namespace` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_namespace`
--

LOCK TABLES `modx_access_namespace` WRITE;
/*!40000 ALTER TABLE `modx_access_namespace` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_namespace` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_permissions`
--

DROP TABLE IF EXISTS `modx_access_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_permissions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `value` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `template` (`template`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_permissions`
--

LOCK TABLES `modx_access_permissions` WRITE;
/*!40000 ALTER TABLE `modx_access_permissions` DISABLE KEYS */;
INSERT INTO `modx_access_permissions` VALUES (1,1,'about','perm.about_desc',1),(2,1,'access_permissions','perm.access_permissions_desc',1),(3,1,'actions','perm.actions_desc',1),(4,1,'change_password','perm.change_password_desc',1),(5,1,'change_profile','perm.change_profile_desc',1),(6,1,'charsets','perm.charsets_desc',1),(7,1,'class_map','perm.class_map_desc',1),(8,1,'components','perm.components_desc',1),(9,1,'content_types','perm.content_types_desc',1),(10,1,'countries','perm.countries_desc',1),(11,1,'create','perm.create_desc',1),(12,1,'credits','perm.credits_desc',1),(13,1,'customize_forms','perm.customize_forms_desc',1),(14,1,'dashboards','perm.dashboards_desc',1),(15,1,'database','perm.database_desc',1),(16,1,'database_truncate','perm.database_truncate_desc',1),(17,1,'delete_category','perm.delete_category_desc',1),(18,1,'delete_chunk','perm.delete_chunk_desc',1),(19,1,'delete_context','perm.delete_context_desc',1),(20,1,'delete_document','perm.delete_document_desc',1),(21,1,'delete_eventlog','perm.delete_eventlog_desc',1),(22,1,'delete_plugin','perm.delete_plugin_desc',1),(23,1,'delete_propertyset','perm.delete_propertyset_desc',1),(24,1,'delete_snippet','perm.delete_snippet_desc',1),(25,1,'delete_template','perm.delete_template_desc',1),(26,1,'delete_tv','perm.delete_tv_desc',1),(27,1,'delete_role','perm.delete_role_desc',1),(28,1,'delete_user','perm.delete_user_desc',1),(29,1,'directory_chmod','perm.directory_chmod_desc',1),(30,1,'directory_create','perm.directory_create_desc',1),(31,1,'directory_list','perm.directory_list_desc',1),(32,1,'directory_remove','perm.directory_remove_desc',1),(33,1,'directory_update','perm.directory_update_desc',1),(34,1,'edit_category','perm.edit_category_desc',1),(35,1,'edit_chunk','perm.edit_chunk_desc',1),(36,1,'edit_context','perm.edit_context_desc',1),(37,1,'edit_document','perm.edit_document_desc',1),(38,1,'edit_locked','perm.edit_locked_desc',1),(39,1,'edit_plugin','perm.edit_plugin_desc',1),(40,1,'edit_propertyset','perm.edit_propertyset_desc',1),(41,1,'edit_role','perm.edit_role_desc',1),(42,1,'edit_snippet','perm.edit_snippet_desc',1),(43,1,'edit_template','perm.edit_template_desc',1),(44,1,'edit_tv','perm.edit_tv_desc',1),(45,1,'edit_user','perm.edit_user_desc',1),(46,1,'element_tree','perm.element_tree_desc',1),(47,1,'empty_cache','perm.empty_cache_desc',1),(48,1,'error_log_erase','perm.error_log_erase_desc',1),(49,1,'error_log_view','perm.error_log_view_desc',1),(50,1,'export_static','perm.export_static_desc',1),(51,1,'file_create','perm.file_create_desc',1),(52,1,'file_list','perm.file_list_desc',1),(53,1,'file_manager','perm.file_manager_desc',1),(54,1,'file_remove','perm.file_remove_desc',1),(55,1,'file_tree','perm.file_tree_desc',1),(56,1,'file_update','perm.file_update_desc',1),(57,1,'file_upload','perm.file_upload_desc',1),(58,1,'file_unpack','perm.file_unpack_desc',1),(59,1,'file_view','perm.file_view_desc',1),(60,1,'flush_sessions','perm.flush_sessions_desc',1),(61,1,'frames','perm.frames_desc',1),(62,1,'help','perm.help_desc',1),(63,1,'home','perm.home_desc',1),(64,1,'import_static','perm.import_static_desc',1),(65,1,'languages','perm.languages_desc',1),(66,1,'lexicons','perm.lexicons_desc',1),(67,1,'list','perm.list_desc',1),(68,1,'load','perm.load_desc',1),(69,1,'logout','perm.logout_desc',1),(70,1,'logs','perm.logs_desc',1),(71,1,'menu_reports','perm.menu_reports_desc',1),(72,1,'menu_security','perm.menu_security_desc',1),(73,1,'menu_site','perm.menu_site_desc',1),(74,1,'menu_support','perm.menu_support_desc',1),(75,1,'menu_system','perm.menu_system_desc',1),(76,1,'menu_tools','perm.menu_tools_desc',1),(77,1,'menu_trash','perm.menu_trash_desc',1),(78,1,'menu_user','perm.menu_user_desc',1),(79,1,'menus','perm.menus_desc',1),(80,1,'messages','perm.messages_desc',1),(81,1,'namespaces','perm.namespaces_desc',1),(82,1,'new_category','perm.new_category_desc',1),(83,1,'new_chunk','perm.new_chunk_desc',1),(84,1,'new_context','perm.new_context_desc',1),(85,1,'new_document','perm.new_document_desc',1),(86,1,'new_static_resource','perm.new_static_resource_desc',1),(87,1,'new_symlink','perm.new_symlink_desc',1),(88,1,'new_weblink','perm.new_weblink_desc',1),(89,1,'new_document_in_root','perm.new_document_in_root_desc',1),(90,1,'new_plugin','perm.new_plugin_desc',1),(91,1,'new_propertyset','perm.new_propertyset_desc',1),(92,1,'new_role','perm.new_role_desc',1),(93,1,'new_snippet','perm.new_snippet_desc',1),(94,1,'new_template','perm.new_template_desc',1),(95,1,'new_tv','perm.new_tv_desc',1),(96,1,'new_user','perm.new_user_desc',1),(97,1,'packages','perm.packages_desc',1),(98,1,'policy_delete','perm.policy_delete_desc',1),(99,1,'policy_edit','perm.policy_edit_desc',1),(100,1,'policy_new','perm.policy_new_desc',1),(101,1,'policy_save','perm.policy_save_desc',1),(102,1,'policy_view','perm.policy_view_desc',1),(103,1,'policy_template_delete','perm.policy_template_delete_desc',1),(104,1,'policy_template_edit','perm.policy_template_edit_desc',1),(105,1,'policy_template_new','perm.policy_template_new_desc',1),(106,1,'policy_template_save','perm.policy_template_save_desc',1),(107,1,'policy_template_view','perm.policy_template_view_desc',1),(108,1,'property_sets','perm.property_sets_desc',1),(109,1,'providers','perm.providers_desc',1),(110,1,'publish_document','perm.publish_document_desc',1),(111,1,'purge_deleted','perm.purge_deleted_desc',1),(112,1,'remove','perm.remove_desc',1),(113,1,'remove_locks','perm.remove_locks_desc',1),(114,1,'resource_duplicate','perm.resource_duplicate_desc',1),(115,1,'resourcegroup_delete','perm.resourcegroup_delete_desc',1),(116,1,'resourcegroup_edit','perm.resourcegroup_edit_desc',1),(117,1,'resourcegroup_new','perm.resourcegroup_new_desc',1),(118,1,'resourcegroup_resource_edit','perm.resourcegroup_resource_edit_desc',1),(119,1,'resourcegroup_resource_list','perm.resourcegroup_resource_list_desc',1),(120,1,'resourcegroup_save','perm.resourcegroup_save_desc',1),(121,1,'resourcegroup_view','perm.resourcegroup_view_desc',1),(122,1,'resource_quick_create','perm.resource_quick_create_desc',1),(123,1,'resource_quick_update','perm.resource_quick_update_desc',1),(124,1,'resource_tree','perm.resource_tree_desc',1),(125,1,'save','perm.save_desc',1),(126,1,'save_category','perm.save_category_desc',1),(127,1,'save_chunk','perm.save_chunk_desc',1),(128,1,'save_context','perm.save_context_desc',1),(129,1,'save_document','perm.save_document_desc',1),(130,1,'save_plugin','perm.save_plugin_desc',1),(131,1,'save_propertyset','perm.save_propertyset_desc',1),(132,1,'save_role','perm.save_role_desc',1),(133,1,'save_snippet','perm.save_snippet_desc',1),(134,1,'save_template','perm.save_template_desc',1),(135,1,'save_tv','perm.save_tv_desc',1),(136,1,'save_user','perm.save_user_desc',1),(137,1,'search','perm.search_desc',1),(138,1,'set_sudo','perm.set_sudo_desc',1),(139,1,'settings','perm.settings_desc',1),(140,1,'events','perm.events_desc',1),(141,1,'source_save','perm.source_save_desc',1),(142,1,'source_delete','perm.source_delete_desc',1),(143,1,'source_edit','perm.source_edit_desc',1),(144,1,'source_view','perm.source_view_desc',1),(145,1,'sources','perm.sources_desc',1),(146,1,'steal_locks','perm.steal_locks_desc',1),(147,1,'tree_show_element_ids','perm.tree_show_element_ids_desc',1),(148,1,'tree_show_resource_ids','perm.tree_show_resource_ids_desc',1),(149,1,'undelete_document','perm.undelete_document_desc',1),(150,1,'unpublish_document','perm.unpublish_document_desc',1),(151,1,'unlock_element_properties','perm.unlock_element_properties_desc',1),(152,1,'usergroup_delete','perm.usergroup_delete_desc',1),(153,1,'usergroup_edit','perm.usergroup_edit_desc',1),(154,1,'usergroup_new','perm.usergroup_new_desc',1),(155,1,'usergroup_save','perm.usergroup_save_desc',1),(156,1,'usergroup_user_edit','perm.usergroup_user_edit_desc',1),(157,1,'usergroup_user_list','perm.usergroup_user_list_desc',1),(158,1,'usergroup_view','perm.usergroup_view_desc',1),(159,1,'view','perm.view_desc',1),(160,1,'view_category','perm.view_category_desc',1),(161,1,'view_chunk','perm.view_chunk_desc',1),(162,1,'view_context','perm.view_context_desc',1),(163,1,'view_document','perm.view_document_desc',1),(164,1,'view_element','perm.view_element_desc',1),(165,1,'view_eventlog','perm.view_eventlog_desc',1),(166,1,'view_offline','perm.view_offline_desc',1),(167,1,'view_plugin','perm.view_plugin_desc',1),(168,1,'view_propertyset','perm.view_propertyset_desc',1),(169,1,'view_role','perm.view_role_desc',1),(170,1,'view_snippet','perm.view_snippet_desc',1),(171,1,'view_sysinfo','perm.view_sysinfo_desc',1),(172,1,'view_template','perm.view_template_desc',1),(173,1,'view_tv','perm.view_tv_desc',1),(174,1,'view_user','perm.view_user_desc',1),(175,1,'view_unpublished','perm.view_unpublished_desc',1),(176,1,'workspaces','perm.workspaces_desc',1),(177,2,'add_children','perm.add_children_desc',1),(178,2,'copy','perm.copy_desc',1),(179,2,'create','perm.create_desc',1),(180,2,'delete','perm.delete_desc',1),(181,2,'list','perm.list_desc',1),(182,2,'load','perm.load_desc',1),(183,2,'move','perm.move_desc',1),(184,2,'publish','perm.publish_desc',1),(185,2,'remove','perm.remove_desc',1),(186,2,'save','perm.save_desc',1),(187,2,'steal_lock','perm.steal_lock_desc',1),(188,2,'undelete','perm.undelete_desc',1),(189,2,'unpublish','perm.unpublish_desc',1),(190,2,'view','perm.view_desc',1),(191,3,'load','perm.load_desc',1),(192,3,'list','perm.list_desc',1),(193,3,'view','perm.view_desc',1),(194,3,'save','perm.save_desc',1),(195,3,'remove','perm.remove_desc',1),(196,4,'add_children','perm.add_children_desc',1),(197,4,'create','perm.create_desc',1),(198,4,'copy','perm.copy_desc',1),(199,4,'delete','perm.delete_desc',1),(200,4,'list','perm.list_desc',1),(201,4,'load','perm.load_desc',1),(202,4,'remove','perm.remove_desc',1),(203,4,'save','perm.save_desc',1),(204,4,'view','perm.view_desc',1),(205,5,'create','perm.create_desc',1),(206,5,'copy','perm.copy_desc',1),(207,5,'list','perm.list_desc',1),(208,5,'load','perm.load_desc',1),(209,5,'remove','perm.remove_desc',1),(210,5,'save','perm.save_desc',1),(211,5,'view','perm.view_desc',1),(212,6,'load','perm.load_desc',1),(213,6,'list','perm.list_desc',1),(214,6,'view','perm.view_desc',1),(215,6,'save','perm.save_desc',1),(216,6,'remove','perm.remove_desc',1),(217,6,'view_unpublished','perm.view_unpublished_desc',1),(218,6,'copy','perm.copy_desc',1),(219,7,'list','perm.list_desc',1),(220,7,'load','perm.load_desc',1),(221,7,'view','perm.view_desc',1);
/*!40000 ALTER TABLE `modx_access_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policies`
--

DROP TABLE IF EXISTS `modx_access_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `parent` int unsigned NOT NULL DEFAULT '0',
  `template` int unsigned NOT NULL DEFAULT '0',
  `class` varchar(191) NOT NULL DEFAULT '',
  `data` text,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `class` (`class`),
  KEY `template` (`template`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policies`
--

LOCK TABLES `modx_access_policies` WRITE;
/*!40000 ALTER TABLE `modx_access_policies` DISABLE KEYS */;
INSERT INTO `modx_access_policies` VALUES (1,'Resource','MODX Resource Policy with all attributes.',0,2,'','{\"add_children\":true,\"create\":true,\"copy\":true,\"delete\":true,\"list\":true,\"load\":true,\"move\":true,\"publish\":true,\"remove\":true,\"save\":true,\"steal_lock\":true,\"undelete\":true,\"unpublish\":true,\"view\":true}','permissions'),(2,'Administrator','Context administration policy with all permissions.',0,1,'','{\"about\":true,\"access_permissions\":true,\"actions\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"database_truncate\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_role\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"events\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"flush_sessions\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menus\":true,\"menu_reports\":true,\"menu_security\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"new_weblink\":true,\"packages\":true,\"policy_delete\":true,\"policy_edit\":true,\"policy_new\":true,\"policy_save\":true,\"policy_template_delete\":true,\"policy_template_edit\":true,\"policy_template_new\":true,\"policy_template_save\":true,\"policy_template_view\":true,\"policy_view\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"remove_locks\":true,\"resource_duplicate\":true,\"resourcegroup_delete\":true,\"resourcegroup_edit\":true,\"resourcegroup_new\":true,\"resourcegroup_resource_edit\":true,\"resourcegroup_resource_list\":true,\"resourcegroup_save\":true,\"resourcegroup_view\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_role\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"set_sudo\":true,\"settings\":true,\"sources\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"steal_locks\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unlock_element_properties\":true,\"unpublish_document\":true,\"usergroup_delete\":true,\"usergroup_edit\":true,\"usergroup_new\":true,\"usergroup_save\":true,\"usergroup_user_edit\":true,\"usergroup_user_list\":true,\"usergroup_view\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_unpublished\":true,\"view_user\":true,\"workspaces\":true}','permissions'),(3,'Load Only','A minimal policy with permission to load an object.',0,3,'','{\"load\":true}','permissions'),(4,'Load, List and View','Provides load, list and view permissions only.',0,3,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(5,'Object','An Object policy with all permissions.',0,3,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true}','permissions'),(6,'Element','MODX Element policy with all attributes.',0,4,'','{\"add_children\":true,\"create\":true,\"delete\":true,\"list\":true,\"load\":true,\"remove\":true,\"save\":true,\"view\":true,\"copy\":true}','permissions'),(7,'Content Editor','Context administration policy with limited, content-editing related Permissions, but no publishing.',0,1,'','{\"change_profile\":true,\"class_map\":true,\"countries\":true,\"edit_document\":true,\"frames\":true,\"help\":true,\"home\":true,\"load\":true,\"list\":true,\"logout\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_tools\":true,\"menu_user\":true,\"resource_duplicate\":true,\"resource_tree\":true,\"save_document\":true,\"source_view\":true,\"tree_show_resource_ids\":true,\"view\":true,\"view_document\":true,\"view_template\":true,\"new_document\":true,\"delete_document\":true}','permissions'),(8,'Media Source Admin','Media Source administration policy.',0,5,'','{\"create\":true,\"copy\":true,\"load\":true,\"list\":true,\"save\":true,\"remove\":true,\"view\":true}','permissions'),(9,'Media Source User','Media Source user policy, with basic viewing and using - but no editing - of Media Sources.',0,5,'','{\"load\":true,\"list\":true,\"view\":true}','permissions'),(10,'Developer','Context administration policy with most Permissions except Administrator and Security functions.',0,0,'','{\"about\":true,\"change_password\":true,\"change_profile\":true,\"charsets\":true,\"class_map\":true,\"components\":true,\"content_types\":true,\"countries\":true,\"create\":true,\"credits\":true,\"customize_forms\":true,\"dashboards\":true,\"database\":true,\"delete_category\":true,\"delete_chunk\":true,\"delete_context\":true,\"delete_document\":true,\"delete_eventlog\":true,\"delete_plugin\":true,\"delete_propertyset\":true,\"delete_snippet\":true,\"delete_template\":true,\"delete_tv\":true,\"delete_role\":true,\"delete_user\":true,\"directory_chmod\":true,\"directory_create\":true,\"directory_list\":true,\"directory_remove\":true,\"directory_update\":true,\"edit_category\":true,\"edit_chunk\":true,\"edit_context\":true,\"edit_document\":true,\"edit_locked\":true,\"edit_plugin\":true,\"edit_propertyset\":true,\"edit_role\":true,\"edit_snippet\":true,\"edit_template\":true,\"edit_tv\":true,\"edit_user\":true,\"element_tree\":true,\"empty_cache\":true,\"error_log_erase\":true,\"error_log_view\":true,\"export_static\":true,\"file_create\":true,\"file_list\":true,\"file_manager\":true,\"file_remove\":true,\"file_tree\":true,\"file_update\":true,\"file_upload\":true,\"file_unpack\":true,\"file_view\":true,\"frames\":true,\"help\":true,\"home\":true,\"import_static\":true,\"languages\":true,\"lexicons\":true,\"list\":true,\"load\":true,\"logout\":true,\"logs\":true,\"menu_reports\":true,\"menu_site\":true,\"menu_support\":true,\"menu_system\":true,\"menu_tools\":true,\"menu_user\":true,\"menus\":true,\"messages\":true,\"namespaces\":true,\"new_category\":true,\"new_chunk\":true,\"new_context\":true,\"new_document\":true,\"new_static_resource\":true,\"new_symlink\":true,\"new_weblink\":true,\"new_document_in_root\":true,\"new_plugin\":true,\"new_propertyset\":true,\"new_role\":true,\"new_snippet\":true,\"new_template\":true,\"new_tv\":true,\"new_user\":true,\"packages\":true,\"property_sets\":true,\"providers\":true,\"publish_document\":true,\"purge_deleted\":true,\"remove\":true,\"resource_duplicate\":true,\"resource_quick_create\":true,\"resource_quick_update\":true,\"resource_tree\":true,\"save\":true,\"save_category\":true,\"save_chunk\":true,\"save_context\":true,\"save_document\":true,\"save_plugin\":true,\"save_propertyset\":true,\"save_snippet\":true,\"save_template\":true,\"save_tv\":true,\"save_user\":true,\"search\":true,\"settings\":true,\"source_delete\":true,\"source_edit\":true,\"source_save\":true,\"source_view\":true,\"sources\":true,\"tree_show_element_ids\":true,\"tree_show_resource_ids\":true,\"undelete_document\":true,\"unpublish_document\":true,\"unlock_element_properties\":true,\"view\":true,\"view_category\":true,\"view_chunk\":true,\"view_context\":true,\"view_document\":true,\"view_element\":true,\"view_eventlog\":true,\"view_offline\":true,\"view_plugin\":true,\"view_propertyset\":true,\"view_role\":true,\"view_snippet\":true,\"view_sysinfo\":true,\"view_template\":true,\"view_tv\":true,\"view_user\":true,\"view_unpublished\":true,\"workspaces\":true}','permissions'),(11,'Context','A standard Context policy that you can apply when creating Context ACLs for basic read/write and view_unpublished access within a Context.',0,6,'','{\"load\":true,\"list\":true,\"view\":true,\"save\":true,\"remove\":true,\"copy\":true,\"view_unpublished\":true}','permissions'),(12,'Hidden Namespace','Hidden Namespace policy, will not show Namespace in lists.',0,7,'','{\"load\":false,\"list\":false,\"view\":true}','permissions');
/*!40000 ALTER TABLE `modx_access_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_template_groups`
--

DROP TABLE IF EXISTS `modx_access_policy_template_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policy_template_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_template_groups`
--

LOCK TABLES `modx_access_policy_template_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_template_groups` DISABLE KEYS */;
INSERT INTO `modx_access_policy_template_groups` VALUES (1,'Admin','All admin policy templates.'),(2,'Object','All Object-based policy templates.'),(3,'Resource','All Resource-based policy templates.'),(4,'Element','All Element-based policy templates.'),(5,'MediaSource','All Media Source-based policy templates.'),(6,'Namespace','All Namespace based policy templates.');
/*!40000 ALTER TABLE `modx_access_policy_template_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_policy_templates`
--

DROP TABLE IF EXISTS `modx_access_policy_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_policy_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `template_group` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` mediumtext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'permissions',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_policy_templates`
--

LOCK TABLES `modx_access_policy_templates` WRITE;
/*!40000 ALTER TABLE `modx_access_policy_templates` DISABLE KEYS */;
INSERT INTO `modx_access_policy_templates` VALUES (1,1,'AdministratorTemplate','Context administration policy template with all permissions.','permissions'),(2,3,'ResourceTemplate','Resource Policy Template with all attributes.','permissions'),(3,2,'ObjectTemplate','Object Policy Template with all attributes.','permissions'),(4,4,'ElementTemplate','Element Policy Template with all attributes.','permissions'),(5,5,'MediaSourceTemplate','Media Source Policy Template with all attributes.','permissions'),(6,2,'ContextTemplate','Context Policy Template with all attributes.','permissions'),(7,6,'NamespaceTemplate','Namespace Policy Template with all attributes.','permissions');
/*!40000 ALTER TABLE `modx_access_policy_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resource_groups`
--

DROP TABLE IF EXISTS `modx_access_resource_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_resource_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`,`target`,`principal`,`authority`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resource_groups`
--

LOCK TABLES `modx_access_resource_groups` WRITE;
/*!40000 ALTER TABLE `modx_access_resource_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resource_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_resources`
--

DROP TABLE IF EXISTS `modx_access_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_resources` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_resources`
--

LOCK TABLES `modx_access_resources` WRITE;
/*!40000 ALTER TABLE `modx_access_resources` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_access_templatevars`
--

DROP TABLE IF EXISTS `modx_access_templatevars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_access_templatevars` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `target` varchar(100) NOT NULL DEFAULT '',
  `principal_class` varchar(100) NOT NULL DEFAULT 'modPrincipal',
  `principal` int unsigned NOT NULL DEFAULT '0',
  `authority` int unsigned NOT NULL DEFAULT '9999',
  `policy` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `target` (`target`),
  KEY `principal_class` (`principal_class`),
  KEY `principal` (`principal`),
  KEY `authority` (`authority`),
  KEY `policy` (`policy`),
  KEY `context_key` (`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_access_templatevars`
--

LOCK TABLES `modx_access_templatevars` WRITE;
/*!40000 ALTER TABLE `modx_access_templatevars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_access_templatevars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actiondom`
--

DROP TABLE IF EXISTS `modx_actiondom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_actiondom` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `set` int NOT NULL DEFAULT '0',
  `action` varchar(191) NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `xtype` varchar(100) NOT NULL DEFAULT '',
  `container` varchar(191) NOT NULL DEFAULT '',
  `rule` varchar(100) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `for_parent` tinyint unsigned NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `set` (`set`),
  KEY `action` (`action`),
  KEY `name` (`name`),
  KEY `active` (`active`),
  KEY `for_parent` (`for_parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actiondom`
--

LOCK TABLES `modx_actiondom` WRITE;
/*!40000 ALTER TABLE `modx_actiondom` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_actiondom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions`
--

DROP TABLE IF EXISTS `modx_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_actions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  `controller` varchar(191) NOT NULL,
  `haslayout` tinyint unsigned NOT NULL DEFAULT '1',
  `lang_topics` text NOT NULL,
  `assets` text NOT NULL,
  `help_url` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `controller` (`controller`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions`
--

LOCK TABLES `modx_actions` WRITE;
/*!40000 ALTER TABLE `modx_actions` DISABLE KEYS */;
INSERT INTO `modx_actions` VALUES (1,'migx','index',0,'example:default','','');
/*!40000 ALTER TABLE `modx_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_actions_fields`
--

DROP TABLE IF EXISTS `modx_actions_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_actions_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `name` varchar(191) NOT NULL DEFAULT '',
  `type` varchar(100) NOT NULL DEFAULT 'field',
  `tab` varchar(191) NOT NULL DEFAULT '',
  `form` varchar(191) NOT NULL DEFAULT '',
  `other` varchar(191) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `action` (`action`),
  KEY `type` (`type`),
  KEY `tab` (`tab`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_actions_fields`
--

LOCK TABLES `modx_actions_fields` WRITE;
/*!40000 ALTER TABLE `modx_actions_fields` DISABLE KEYS */;
INSERT INTO `modx_actions_fields` VALUES (1,'resource/update','modx-resource-settings','tab','','modx-panel-resource','',0),(2,'resource/update','modx-resource-main-left','tab','','modx-panel-resource','',1),(3,'resource/update','id','field','modx-resource-main-left','modx-panel-resource','',0),(4,'resource/update','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(5,'resource/update','longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(6,'resource/update','description','field','modx-resource-main-left','modx-panel-resource','',3),(7,'resource/update','introtext','field','modx-resource-main-left','modx-panel-resource','',4),(8,'resource/update','modx-resource-main-right','tab','','modx-panel-resource','',2),(9,'resource/update','template','field','modx-resource-main-right','modx-panel-resource','',0),(10,'resource/update','alias','field','modx-resource-main-right','modx-panel-resource','',1),(11,'resource/update','menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(12,'resource/update','link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(13,'resource/update','hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(14,'resource/update','published','field','modx-resource-main-right','modx-panel-resource','',5),(15,'resource/update','modx-page-settings','tab','','modx-panel-resource','',3),(16,'resource/update','modx-page-settings-left','tab','','modx-panel-resource','',4),(17,'resource/update','parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(18,'resource/update','class_key','field','modx-page-settings-left','modx-panel-resource','',1),(19,'resource/update','content_type','field','modx-page-settings-left','modx-panel-resource','',2),(20,'resource/update','content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(21,'resource/update','menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(22,'resource/update','modx-page-settings-right','tab','','modx-panel-resource','',5),(23,'resource/update','publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(24,'resource/update','pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(25,'resource/update','unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(26,'resource/update','modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(27,'resource/update','isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(28,'resource/update','searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(29,'resource/update','alias_visible','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(30,'resource/update','richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(31,'resource/update','uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(32,'resource/update','uri','field','modx-page-settings-right-box-left','modx-panel-resource','',5),(33,'resource/update','modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(34,'resource/update','cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(35,'resource/update','syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(36,'resource/update','deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(37,'resource/update','modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(38,'resource/update','modx-resource-access-permissions','tab','','modx-panel-resource','',9),(39,'resource/update','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0),(40,'resource/update','modx-symlink-content','field','modx-resource-content','modx-panel-resource','',1),(41,'resource/update','modx-weblink-content','field','modx-resource-content','modx-panel-resource','',2),(42,'resource/create','modx-resource-settings','tab','','modx-panel-resource','',0),(43,'resource/create','modx-resource-main-left','tab','','modx-panel-resource','',1),(44,'resource/create','id','field','modx-resource-main-left','modx-panel-resource','',0),(45,'resource/create','pagetitle','field','modx-resource-main-left','modx-panel-resource','',1),(46,'resource/create','longtitle','field','modx-resource-main-left','modx-panel-resource','',2),(47,'resource/create','description','field','modx-resource-main-left','modx-panel-resource','',3),(48,'resource/create','introtext','field','modx-resource-main-left','modx-panel-resource','',4),(49,'resource/create','modx-resource-main-right','tab','','modx-panel-resource','',2),(50,'resource/create','template','field','modx-resource-main-right','modx-panel-resource','',0),(51,'resource/create','alias','field','modx-resource-main-right','modx-panel-resource','',1),(52,'resource/create','menutitle','field','modx-resource-main-right','modx-panel-resource','',2),(53,'resource/create','link_attributes','field','modx-resource-main-right','modx-panel-resource','',3),(54,'resource/create','hidemenu','field','modx-resource-main-right','modx-panel-resource','',4),(55,'resource/create','published','field','modx-resource-main-right','modx-panel-resource','',5),(56,'resource/create','modx-page-settings','tab','','modx-panel-resource','',3),(57,'resource/create','modx-page-settings-left','tab','','modx-panel-resource','',4),(58,'resource/create','parent-cmb','field','modx-page-settings-left','modx-panel-resource','',0),(59,'resource/create','class_key','field','modx-page-settings-left','modx-panel-resource','',1),(60,'resource/create','content_type','field','modx-page-settings-left','modx-panel-resource','',2),(61,'resource/create','content_dispo','field','modx-page-settings-left','modx-panel-resource','',3),(62,'resource/create','menuindex','field','modx-page-settings-left','modx-panel-resource','',4),(63,'resource/create','modx-page-settings-right','tab','','modx-panel-resource','',5),(64,'resource/create','publishedon','field','modx-page-settings-right','modx-panel-resource','',0),(65,'resource/create','pub_date','field','modx-page-settings-right','modx-panel-resource','',1),(66,'resource/create','unpub_date','field','modx-page-settings-right','modx-panel-resource','',2),(67,'resource/create','modx-page-settings-right-box-left','tab','','modx-panel-resource','',6),(68,'resource/create','isfolder','field','modx-page-settings-right-box-left','modx-panel-resource','',0),(69,'resource/create','searchable','field','modx-page-settings-right-box-left','modx-panel-resource','',1),(70,'resource/create','alias_visible','field','modx-page-settings-right-box-left','modx-panel-resource','',2),(71,'resource/create','richtext','field','modx-page-settings-right-box-left','modx-panel-resource','',3),(72,'resource/create','uri_override','field','modx-page-settings-right-box-left','modx-panel-resource','',4),(73,'resource/create','uri','field','modx-page-settings-right-box-left','modx-panel-resource','',5),(74,'resource/create','modx-page-settings-right-box-right','tab','','modx-panel-resource','',7),(75,'resource/create','cacheable','field','modx-page-settings-right-box-right','modx-panel-resource','',0),(76,'resource/create','syncsite','field','modx-page-settings-right-box-right','modx-panel-resource','',1),(77,'resource/create','deleted','field','modx-page-settings-right-box-right','modx-panel-resource','',2),(78,'resource/create','modx-panel-resource-tv','tab','','modx-panel-resource','tv',8),(79,'resource/create','modx-resource-access-permissions','tab','','modx-panel-resource','',9),(80,'resource/create','modx-resource-content','field','modx-resource-content','modx-panel-resource','',0);
/*!40000 ALTER TABLE `modx_actions_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_active_users`
--

DROP TABLE IF EXISTS `modx_active_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_active_users` (
  `internalKey` int NOT NULL DEFAULT '0',
  `username` varchar(50) NOT NULL DEFAULT '',
  `lasthit` int NOT NULL DEFAULT '0',
  `id` int DEFAULT NULL,
  `action` varchar(191) NOT NULL DEFAULT '',
  `ip` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`internalKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_active_users`
--

LOCK TABLES `modx_active_users` WRITE;
/*!40000 ALTER TABLE `modx_active_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_active_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories`
--

DROP TABLE IF EXISTS `modx_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent` int unsigned DEFAULT '0',
  `category` varchar(45) NOT NULL DEFAULT '',
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`parent`,`category`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories`
--

LOCK TABLES `modx_categories` WRITE;
/*!40000 ALTER TABLE `modx_categories` DISABLE KEYS */;
INSERT INTO `modx_categories` VALUES (1,0,'Login',0),(2,0,'MIGX',0),(3,0,'cssSweet',0);
/*!40000 ALTER TABLE `modx_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_categories_closure`
--

DROP TABLE IF EXISTS `modx_categories_closure`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_categories_closure` (
  `ancestor` int unsigned NOT NULL DEFAULT '0',
  `descendant` int unsigned NOT NULL DEFAULT '0',
  `depth` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ancestor`,`descendant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_categories_closure`
--

LOCK TABLES `modx_categories_closure` WRITE;
/*!40000 ALTER TABLE `modx_categories_closure` DISABLE KEYS */;
INSERT INTO `modx_categories_closure` VALUES (0,1,0),(0,2,0),(0,3,0),(1,1,0),(2,2,0),(3,3,0);
/*!40000 ALTER TABLE `modx_categories_closure` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_class_map`
--

DROP TABLE IF EXISTS `modx_class_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_class_map` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `class` varchar(120) NOT NULL DEFAULT '',
  `parent_class` varchar(120) NOT NULL DEFAULT '',
  `name_field` varchar(191) NOT NULL DEFAULT 'name',
  `path` tinytext,
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:resource',
  PRIMARY KEY (`id`),
  UNIQUE KEY `class` (`class`),
  KEY `parent_class` (`parent_class`),
  KEY `name_field` (`name_field`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_class_map`
--

LOCK TABLES `modx_class_map` WRITE;
/*!40000 ALTER TABLE `modx_class_map` DISABLE KEYS */;
INSERT INTO `modx_class_map` VALUES (1,'modDocument','modResource','pagetitle','','core:resource'),(2,'modWebLink','modResource','pagetitle','','core:resource'),(3,'modSymLink','modResource','pagetitle','','core:resource'),(4,'modStaticResource','modResource','pagetitle','','core:resource'),(5,'modTemplate','modElement','templatename','','core:resource'),(6,'modTemplateVar','modElement','name','','core:resource'),(7,'modChunk','modElement','name','','core:resource'),(8,'modSnippet','modElement','name','','core:resource'),(9,'modPlugin','modElement','name','','core:resource');
/*!40000 ALTER TABLE `modx_class_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_content_type`
--

DROP TABLE IF EXISTS `modx_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_content_type` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` tinytext,
  `mime_type` tinytext,
  `file_extensions` tinytext,
  `headers` mediumtext,
  `binary` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_content_type`
--

LOCK TABLES `modx_content_type` WRITE;
/*!40000 ALTER TABLE `modx_content_type` DISABLE KEYS */;
INSERT INTO `modx_content_type` VALUES (1,'HTML','HTML content','text/html','.html',NULL,0),(2,'XML','XML content','text/xml','.xml',NULL,0),(3,'text','plain text content','text/plain','.txt',NULL,0),(4,'CSS','CSS content','text/css','.css',NULL,0),(5,'javascript','javascript content','text/javascript','.js',NULL,0),(6,'RSS','For RSS feeds','application/rss+xml','.rss',NULL,0),(7,'JSON','JSON','application/json','.json',NULL,0),(8,'PDF','PDF Files','application/pdf','.pdf',NULL,1);
/*!40000 ALTER TABLE `modx_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context`
--

DROP TABLE IF EXISTS `modx_context`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context` (
  `key` varchar(100) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `description` tinytext,
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`key`),
  KEY `name` (`name`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context`
--

LOCK TABLES `modx_context` WRITE;
/*!40000 ALTER TABLE `modx_context` DISABLE KEYS */;
INSERT INTO `modx_context` VALUES ('mgr','Manager','The default manager or administration context for content management activity.',0),('web','Website','The default front-end context for your web site.',0);
/*!40000 ALTER TABLE `modx_context` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_resource`
--

DROP TABLE IF EXISTS `modx_context_resource`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context_resource` (
  `context_key` varchar(191) NOT NULL,
  `resource` int unsigned NOT NULL,
  PRIMARY KEY (`context_key`,`resource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_resource`
--

LOCK TABLES `modx_context_resource` WRITE;
/*!40000 ALTER TABLE `modx_context_resource` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_context_resource` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_context_setting`
--

DROP TABLE IF EXISTS `modx_context_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_context_setting` (
  `context_key` varchar(191) NOT NULL,
  `key` varchar(50) NOT NULL,
  `value` mediumtext,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`context_key`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_context_setting`
--

LOCK TABLES `modx_context_setting` WRITE;
/*!40000 ALTER TABLE `modx_context_setting` DISABLE KEYS */;
INSERT INTO `modx_context_setting` VALUES ('mgr','allow_tags_in_post','1','combo-boolean','core','system',NULL),('mgr','modRequest.class','modManagerRequest','textfield','core','system',NULL);
/*!40000 ALTER TABLE `modx_context_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard`
--

DROP TABLE IF EXISTS `modx_dashboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `hide_trees` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `hide_trees` (`hide_trees`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard`
--

LOCK TABLES `modx_dashboard` WRITE;
/*!40000 ALTER TABLE `modx_dashboard` DISABLE KEYS */;
INSERT INTO `modx_dashboard` VALUES (1,'Default','',0);
/*!40000 ALTER TABLE `modx_dashboard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget`
--

DROP TABLE IF EXISTS `modx_dashboard_widget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard_widget` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `type` varchar(100) NOT NULL,
  `content` mediumtext,
  `namespace` varchar(191) NOT NULL DEFAULT '',
  `lexicon` varchar(191) NOT NULL DEFAULT 'core:dashboards',
  `size` varchar(191) NOT NULL DEFAULT 'half',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `namespace` (`namespace`),
  KEY `lexicon` (`lexicon`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget`
--

LOCK TABLES `modx_dashboard_widget` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget` VALUES (1,'w_newsfeed','w_newsfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-news.php','core','core:dashboards','half'),(2,'w_securityfeed','w_securityfeed_desc','file','[[++manager_path]]controllers/default/dashboard/widget.modx-security.php','core','core:dashboards','half'),(3,'w_whosonline','w_whosonline_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-online.php','core','core:dashboards','half'),(4,'w_recentlyeditedresources','w_recentlyeditedresources_desc','file','[[++manager_path]]controllers/default/dashboard/widget.grid-rer.php','core','core:dashboards','half'),(5,'w_configcheck','w_configcheck_desc','file','[[++manager_path]]controllers/default/dashboard/widget.configcheck.php','core','core:dashboards','full');
/*!40000 ALTER TABLE `modx_dashboard_widget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_dashboard_widget_placement`
--

DROP TABLE IF EXISTS `modx_dashboard_widget_placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_dashboard_widget_placement` (
  `dashboard` int unsigned NOT NULL DEFAULT '0',
  `widget` int unsigned NOT NULL DEFAULT '0',
  `rank` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dashboard`,`widget`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_dashboard_widget_placement`
--

LOCK TABLES `modx_dashboard_widget_placement` WRITE;
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` DISABLE KEYS */;
INSERT INTO `modx_dashboard_widget_placement` VALUES (1,5,0),(1,1,1),(1,2,2),(1,3,3),(1,4,4);
/*!40000 ALTER TABLE `modx_dashboard_widget_placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_document_groups`
--

DROP TABLE IF EXISTS `modx_document_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_document_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `document_group` int NOT NULL DEFAULT '0',
  `document` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `document_group` (`document_group`),
  KEY `document` (`document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_document_groups`
--

LOCK TABLES `modx_document_groups` WRITE;
/*!40000 ALTER TABLE `modx_document_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_document_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_documentgroup_names`
--

DROP TABLE IF EXISTS `modx_documentgroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_documentgroup_names` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `private_memgroup` tinyint unsigned NOT NULL DEFAULT '0',
  `private_webgroup` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_documentgroup_names`
--

LOCK TABLES `modx_documentgroup_names` WRITE;
/*!40000 ALTER TABLE `modx_documentgroup_names` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_documentgroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_doodles_table`
--

DROP TABLE IF EXISTS `modx_doodles_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_doodles_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `createdon` datetime DEFAULT NULL,
  `createdby` int unsigned NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `editedby` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_doodles_table`
--

LOCK TABLES `modx_doodles_table` WRITE;
/*!40000 ALTER TABLE `modx_doodles_table` DISABLE KEYS */;
INSERT INTO `modx_doodles_table` VALUES (2,'asdfasfd','y aca tambien!sdfsaf',NULL,0,NULL,0),(3,'2342','cambaimos el varlo',NULL,0,NULL,0),(4,'sdfsdf','sadfdasf',NULL,0,NULL,0);
/*!40000 ALTER TABLE `modx_doodles_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_el_papa`
--

DROP TABLE IF EXISTS `modx_el_papa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_el_papa` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `llaveria` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_el_papa`
--

LOCK TABLES `modx_el_papa` WRITE;
/*!40000 ALTER TABLE `modx_el_papa` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_el_papa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_element_property_sets`
--

DROP TABLE IF EXISTS `modx_element_property_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_element_property_sets` (
  `element` int unsigned NOT NULL DEFAULT '0',
  `element_class` varchar(100) NOT NULL DEFAULT '',
  `property_set` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`element`,`element_class`,`property_set`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_element_property_sets`
--

LOCK TABLES `modx_element_property_sets` WRITE;
/*!40000 ALTER TABLE `modx_element_property_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_element_property_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_extension_packages`
--

DROP TABLE IF EXISTS `modx_extension_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_extension_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `name` varchar(100) NOT NULL DEFAULT 'core',
  `path` text,
  `table_prefix` varchar(191) NOT NULL DEFAULT '',
  `service_class` varchar(191) NOT NULL DEFAULT '',
  `service_name` varchar(191) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `namespace` (`namespace`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_extension_packages`
--

LOCK TABLES `modx_extension_packages` WRITE;
/*!40000 ALTER TABLE `modx_extension_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_extension_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles`
--

DROP TABLE IF EXISTS `modx_fc_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_profiles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `rank` (`rank`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles`
--

LOCK TABLES `modx_fc_profiles` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_profiles_usergroups`
--

DROP TABLE IF EXISTS `modx_fc_profiles_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_profiles_usergroups` (
  `usergroup` int NOT NULL DEFAULT '0',
  `profile` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`usergroup`,`profile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_profiles_usergroups`
--

LOCK TABLES `modx_fc_profiles_usergroups` WRITE;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_profiles_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_fc_sets`
--

DROP TABLE IF EXISTS `modx_fc_sets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_fc_sets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `profile` int NOT NULL DEFAULT '0',
  `action` varchar(191) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `template` int NOT NULL DEFAULT '0',
  `constraint` varchar(191) NOT NULL DEFAULT '',
  `constraint_field` varchar(100) NOT NULL DEFAULT '',
  `constraint_class` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `profile` (`profile`),
  KEY `action` (`action`),
  KEY `active` (`active`),
  KEY `template` (`template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_fc_sets`
--

LOCK TABLES `modx_fc_sets` WRITE;
/*!40000 ALTER TABLE `modx_fc_sets` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_fc_sets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_la_tabluda`
--

DROP TABLE IF EXISTS `modx_la_tabluda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_la_tabluda` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `asdf` int NOT NULL DEFAULT '0',
  `otra cosa` varchar(191) DEFAULT '',
  `llaveria2` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_la_tabluda`
--

LOCK TABLES `modx_la_tabluda` WRITE;
/*!40000 ALTER TABLE `modx_la_tabluda` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_la_tabluda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_lexicon_entries`
--

DROP TABLE IF EXISTS `modx_lexicon_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_lexicon_entries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `topic` varchar(191) NOT NULL DEFAULT 'default',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `language` varchar(20) NOT NULL DEFAULT 'en',
  `createdon` datetime DEFAULT NULL,
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `topic` (`topic`),
  KEY `namespace` (`namespace`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_lexicon_entries`
--

LOCK TABLES `modx_lexicon_entries` WRITE;
/*!40000 ALTER TABLE `modx_lexicon_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_lexicon_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_manager_log`
--

DROP TABLE IF EXISTS `modx_manager_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_manager_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user` int unsigned NOT NULL DEFAULT '0',
  `occurred` datetime DEFAULT NULL,
  `action` varchar(100) NOT NULL DEFAULT '',
  `classKey` varchar(100) NOT NULL DEFAULT '',
  `item` varchar(191) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `user_occurred` (`user`,`occurred`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_manager_log`
--

LOCK TABLES `modx_manager_log` WRITE;
/*!40000 ALTER TABLE `modx_manager_log` DISABLE KEYS */;
INSERT INTO `modx_manager_log` VALUES (1,1,'2021-01-19 22:40:39','login','modContext','mgr'),(2,1,'2021-01-19 22:55:52','setting_update','modSystemSetting','session_cookie_path'),(3,1,'2021-01-19 23:23:46','setting_create','modSystemSetting','doodles.core_path'),(4,1,'2021-01-19 23:24:02','setting_create','modSystemSetting','doodles.assets_url'),(5,1,'2021-01-19 23:36:52','snippet_create','modSnippet','37'),(6,1,'2021-01-19 23:37:10','resource_create','modDocument','2'),(7,1,'2021-01-19 23:37:14','resource_update','modResource','2'),(8,1,'2021-01-20 00:06:37','resource_update','modResource','2'),(9,1,'2021-01-20 00:07:01','clear_cache','','mgr'),(10,1,'2021-01-20 00:10:50','resource_update','modResource','2'),(11,1,'2021-01-20 00:17:57','clear_cache','','mgr'),(12,1,'2021-01-20 00:20:56','snippet_update','modSnippet','37'),(13,1,'2021-01-20 00:20:56','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(14,1,'2021-01-20 00:21:08','snippet_update','modSnippet','37'),(15,1,'2021-01-20 00:21:08','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(16,1,'2021-01-20 00:21:26','snippet_update','modSnippet','37'),(17,1,'2021-01-20 00:21:26','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(18,1,'2021-01-20 00:23:57','snippet_update','modSnippet','37'),(19,1,'2021-01-20 00:23:57','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(20,1,'2021-01-20 00:24:01','clear_cache','','mgr'),(21,1,'2021-01-20 00:53:21','snippet_update','modSnippet','37'),(22,1,'2021-01-20 00:53:21','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(23,1,'2021-01-20 00:53:26','clear_cache','','mgr'),(24,1,'2021-01-20 00:59:51','snippet_update','modSnippet','37'),(25,1,'2021-01-20 00:59:51','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(26,1,'2021-01-20 01:00:07','snippet_update','modSnippet','37'),(27,1,'2021-01-20 01:00:07','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(28,1,'2021-01-20 01:00:11','clear_cache','','mgr'),(29,1,'2021-01-20 01:01:43','clear_cache','','mgr'),(30,1,'2021-01-20 01:01:46','snippet_update','modSnippet','37'),(31,1,'2021-01-20 01:01:46','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(32,1,'2021-01-20 01:02:40','snippet_update','modSnippet','37'),(33,1,'2021-01-20 01:02:41','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(34,1,'2021-01-20 01:02:45','snippet_update','modSnippet','37'),(35,1,'2021-01-20 01:02:45','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(36,1,'2021-01-20 01:02:48','clear_cache','','mgr'),(37,1,'2021-01-20 01:25:11','clear_cache','','mgr'),(38,1,'2021-01-20 01:25:15','snippet_update','modSnippet','37'),(39,1,'2021-01-20 01:25:15','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(40,1,'2021-01-20 01:29:20','snippet_update','modSnippet','37'),(41,1,'2021-01-20 01:29:20','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(42,1,'2021-01-20 01:29:23','clear_cache','','mgr'),(43,1,'2021-01-20 14:37:06','user_create','modUser','2'),(44,1,'2021-01-20 14:37:10','user_update','modUser','2'),(45,1,'2021-01-20 20:14:55','resource_update','modResource','2'),(46,1,'2021-01-20 20:17:38','namespace_create','modNamespace','doodles'),(47,1,'2021-01-20 20:19:25','menu_create','modMenu','Doodles'),(48,1,'2021-01-20 20:53:42','menu_update','modMenu','Doodles'),(49,1,'2021-01-21 20:11:09','setting_update','modSystemSetting','doodles.assets_url'),(50,1,'2021-01-21 20:11:15','setting_update','modSystemSetting','doodles.core_path'),(51,1,'2021-01-21 20:12:46','menu_update','modMenu','Doodles'),(52,1,'2021-01-21 21:48:57','menu_update','modMenu','Doodles'),(53,1,'2021-01-21 21:49:12','clear_cache','','mgr'),(54,1,'2021-01-21 22:17:54','namespace_update','modNamespace','doodles'),(55,1,'2021-01-21 22:18:12','namespace_update','modNamespace','doodles'),(56,1,'2021-01-21 22:25:40','namespace_create','modNamespace','mycmp'),(57,1,'2021-01-21 22:26:11','namespace_update','modNamespace','doodles'),(58,1,'2021-01-21 22:29:00','menu_create','modMenu','My CMP'),(59,1,'2021-01-21 22:42:03','namespace_update','modNamespace','doodles'),(60,1,'2021-01-21 22:42:06','clear_cache','','mgr'),(61,1,'2021-01-21 22:42:48','namespace_update','modNamespace','doodles'),(62,1,'2021-01-21 22:43:00','namespace_update','modNamespace','doodles'),(63,1,'2021-01-21 22:57:06','namespace_update','modNamespace','mycmp'),(64,1,'2021-01-21 22:59:21','namespace_update','modNamespace','mycmp'),(65,1,'2021-01-21 23:00:34','namespace_update','modNamespace','mycmp'),(66,1,'2021-01-21 23:04:47','namespace_update','modNamespace','doodles'),(67,1,'2021-01-21 23:05:18','menu_update','modMenu','Doodles'),(68,1,'2021-01-21 23:08:40','clear_cache','','mgr'),(69,1,'2021-01-21 23:10:57','clear_cache','','mgr'),(70,1,'2021-01-21 23:12:25','namespace_update','modNamespace','doodles'),(71,1,'2021-01-21 23:14:50','menu_update','modMenu','Doodles'),(72,1,'2021-01-22 00:01:27','menu_update','modMenu','Doodles'),(73,1,'2021-01-22 00:08:53','menu_create','modMenu','OriginalDoodle'),(74,1,'2021-01-22 00:09:15','menu_update','modMenu','OriginalDoodle'),(75,1,'2021-01-22 00:15:16','menu_update','modMenu','OriginalDoodle'),(76,1,'2021-01-22 01:33:19','namespace_update','modNamespace','doodles'),(77,1,'2021-01-22 01:33:50','menu_create','modMenu','HOme'),(78,1,'2021-01-22 01:39:22','setting_update','modSystemSetting','doodles.assets_url'),(79,1,'2021-01-22 01:39:29','setting_update','modSystemSetting','doodles.core_path'),(80,1,'2021-01-22 01:42:16','setting_update','modSystemSetting','doodles.assets_url'),(81,1,'2021-01-22 01:42:30','setting_update','modSystemSetting','doodles.core_path'),(82,1,'2021-01-22 14:45:49','extrabuilder.package_create','ebPackage','1'),(83,1,'2021-01-22 14:46:49','extrabuilder.package_update','ebPackage','1'),(84,1,'2021-01-22 14:47:43','extrabuilder.object_create','ebObject','1'),(85,1,'2021-01-22 14:47:57','extrabuilder.field_create','ebField','1'),(86,1,'2021-01-22 14:48:35','extrabuilder.field_update','ebField','1'),(87,1,'2021-01-22 14:49:01','extrabuilder.field_create','ebField','2'),(88,1,'2021-01-22 14:53:38','extrabuilder.object_create','ebObject','2'),(89,1,'2021-01-22 14:53:58','extrabuilder.field_create','ebField','3'),(90,1,'2021-01-22 14:54:16','extrabuilder.field_create','ebField','4'),(91,1,'2021-01-22 15:47:18','namespace_create','modNamespace','myDoodles'),(92,1,'2021-01-22 15:51:32','menu_delete','modMenu','OriginalDoodle'),(93,1,'2021-01-22 15:51:36','menu_delete','modMenu','Doodles'),(94,1,'2021-01-22 15:51:58','menu_update','modMenu','HOme'),(95,1,'2021-01-22 16:34:31','snippet_update','modSnippet','37'),(96,1,'2021-01-22 16:34:32','propertyset_update_from_element','modPropertySet','modSnippet 37 Default'),(97,1,'2021-01-22 18:11:03','setting_update','modSystemSetting','doodles.assets_url'),(98,1,'2021-01-22 18:11:38','setting_update','modSystemSetting','doodles.core_path'),(99,1,'2021-01-22 18:12:44','setting_update','modSystemSetting','doodles.core_path'),(100,1,'2021-01-22 18:24:06','setting_update','modSystemSetting','doodles.assets_url'),(101,1,'2021-01-22 18:24:40','setting_update','modSystemSetting','doodles.assets_url'),(102,1,'2021-01-22 20:22:10','doodles.doodle_create','Doodle','1'),(103,1,'2021-01-22 20:23:35','doodles.doodle_delete','Doodle','1'),(104,1,'2021-01-22 20:25:55','doodles.doodle_create','Doodle','2'),(105,1,'2021-01-22 20:25:59','doodles.doodle_create','Doodle','3'),(106,1,'2021-01-22 20:26:07','doodles.doodle_update','Doodle','3'),(107,1,'2021-01-22 20:26:15','doodles.doodle_update','Doodle','2'),(108,1,'2021-01-22 20:59:34','package_uninstall','transport.modTransportPackage','unknown'),(109,1,'2021-01-22 21:00:09','menu_delete','modMenu','My CMP'),(110,1,'2021-01-22 21:09:28','doodles.doodle_create','Doodle','4'),(111,1,'2021-01-22 21:09:33','doodles.doodle_update','Doodle','2'),(112,1,'2021-01-22 21:37:26','template_create','modTemplate','2'),(113,1,'2021-01-23 13:59:29','login','modContext','mgr');
/*!40000 ALTER TABLE `modx_manager_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources`
--

DROP TABLE IF EXISTS `modx_media_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `class_key` varchar(100) NOT NULL DEFAULT 'sources.modFileMediaSource',
  `properties` mediumtext,
  `is_stream` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `class_key` (`class_key`),
  KEY `is_stream` (`is_stream`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources`
--

LOCK TABLES `modx_media_sources` WRITE;
/*!40000 ALTER TABLE `modx_media_sources` DISABLE KEYS */;
INSERT INTO `modx_media_sources` VALUES (1,'Filesystem','','sources.modFileMediaSource','a:0:{}',1);
/*!40000 ALTER TABLE `modx_media_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_contexts`
--

DROP TABLE IF EXISTS `modx_media_sources_contexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources_contexts` (
  `source` int NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_contexts`
--

LOCK TABLES `modx_media_sources_contexts` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_contexts` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_contexts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_media_sources_elements`
--

DROP TABLE IF EXISTS `modx_media_sources_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_media_sources_elements` (
  `source` int unsigned NOT NULL DEFAULT '0',
  `object_class` varchar(100) NOT NULL DEFAULT 'modTemplateVar',
  `object` int unsigned NOT NULL DEFAULT '0',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  PRIMARY KEY (`source`,`object`,`object_class`,`context_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_media_sources_elements`
--

LOCK TABLES `modx_media_sources_elements` WRITE;
/*!40000 ALTER TABLE `modx_media_sources_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_media_sources_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_member_groups`
--

DROP TABLE IF EXISTS `modx_member_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_member_groups` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_group` int unsigned NOT NULL DEFAULT '0',
  `member` int unsigned NOT NULL DEFAULT '0',
  `role` int unsigned NOT NULL DEFAULT '1',
  `rank` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `role` (`role`),
  KEY `rank` (`rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_member_groups`
--

LOCK TABLES `modx_member_groups` WRITE;
/*!40000 ALTER TABLE `modx_member_groups` DISABLE KEYS */;
INSERT INTO `modx_member_groups` VALUES (1,1,1,2,0);
/*!40000 ALTER TABLE `modx_member_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_membergroup_names`
--

DROP TABLE IF EXISTS `modx_membergroup_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_membergroup_names` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `description` text,
  `parent` int unsigned NOT NULL DEFAULT '0',
  `rank` int unsigned NOT NULL DEFAULT '0',
  `dashboard` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `parent` (`parent`),
  KEY `rank` (`rank`),
  KEY `dashboard` (`dashboard`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_membergroup_names`
--

LOCK TABLES `modx_membergroup_names` WRITE;
/*!40000 ALTER TABLE `modx_membergroup_names` DISABLE KEYS */;
INSERT INTO `modx_membergroup_names` VALUES (1,'Administrator',NULL,0,0,1);
/*!40000 ALTER TABLE `modx_membergroup_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_menus`
--

DROP TABLE IF EXISTS `modx_menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_menus` (
  `text` varchar(191) NOT NULL DEFAULT '',
  `parent` varchar(191) NOT NULL DEFAULT '',
  `action` varchar(191) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `menuindex` int unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `handler` text NOT NULL,
  `permissions` text NOT NULL,
  `namespace` varchar(100) NOT NULL DEFAULT 'core',
  PRIMARY KEY (`text`),
  KEY `parent` (`parent`),
  KEY `action` (`action`),
  KEY `namespace` (`namespace`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_menus`
--

LOCK TABLES `modx_menus` WRITE;
/*!40000 ALTER TABLE `modx_menus` DISABLE KEYS */;
INSERT INTO `modx_menus` VALUES ('about','usernav','help','','<i class=\"icon-question-circle icon icon-large\"></i>',7,'','','help','core'),('acls','admin','security/permission','acls_desc','',5,'','','access_permissions','core'),('admin','usernav','','','<i class=\"icon-gear icon icon-large\"></i>',6,'','','settings','core'),('bespoke_manager','admin','security/forms','bespoke_manager_desc','',1,'','','customize_forms','core'),('components','topnav','','','',2,'','','components','core'),('content_types','site','system/contenttype','content_types_desc','',8,'','','content_types','core'),('contexts','admin','context','contexts_desc','',3,'','','view_context','core'),('dashboards','admin','system/dashboards','dashboards_desc','',2,'','','dashboards','core'),('edit_menu','admin','system/action','edit_menu_desc','',4,'','','actions','core'),('eventlog_viewer','reports','system/event','eventlog_viewer_desc','',2,'','','view_eventlog','core'),('file_browser','media','media/browser','file_browser_desc','',0,'','','file_manager','core'),('flush_access','manage','','flush_access_desc','',3,'','MODx.msg.confirm({\n    title: _(\'flush_access\')\n    ,text: _(\'flush_access_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/access/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this},\n        \'failure\': {fn:function(response) { Ext.MessageBox.alert(\'failure\', response.responseText); },scope:this},\n    }\n});','access_permissions','core'),('flush_sessions','manage','','flush_sessions_desc','',4,'','MODx.msg.confirm({\n    title: _(\'flush_sessions\')\n    ,text: _(\'flush_sessions_confirm\')\n    ,url: MODx.config.connector_url\n    ,params: {\n        action: \'security/flush\'\n    }\n    ,listeners: {\n        \'success\': {fn:function() { location.href = \'./\'; },scope:this}\n    }\n});','flush_sessions','core'),('import_resources','site','system/import','import_resources_desc','',6,'','','import_static','core'),('import_site','site','system/import/html','import_site_desc','',5,'','','import_static','core'),('installer','components','workspaces','installer_desc','',0,'','','packages','core'),('lexicon_management','admin','workspaces/lexicon','lexicon_management_desc','',7,'','','lexicons','core'),('logout','user','security/logout','logout_desc','',2,'','MODx.logout(); return false;','logout','core'),('manage','topnav','','','',3,'','','menu_tools','core'),('media','topnav','','media_desc','',1,'','','file_manager','core'),('messages','user','security/message','messages_desc','',1,'','','messages','core'),('migx','components','index','','',0,'&configs=packagemanager||migxconfigs||setup','','','migx'),('MyDoodles','components','init','','',5,'','','','myDoodles'),('namespaces','admin','workspaces/namespace','namespaces_desc','',8,'','','namespaces','core'),('new_resource','site','resource/create','new_resource_desc','',0,'','','new_document','core'),('preview','site','','preview_desc','',4,'','MODx.preview(); return false;','','core'),('profile','user','security/profile','profile_desc','',0,'','','change_profile','core'),('propertysets','admin','element/propertyset','propertysets_desc','',6,'','','property_sets','core'),('refresh_site','manage','','refresh_site_desc','',1,'','MODx.clearCache(); return false;','empty_cache','core'),('refreshuris','refresh_site','','refreshuris_desc','',0,'','MODx.refreshURIs(); return false;','empty_cache','core'),('remove_locks','manage','','remove_locks_desc','',2,'','MODx.removeLocks();return false;','remove_locks','core'),('reports','manage','','reports_desc','',5,'','','menu_reports','core'),('resource_groups','site','security/resourcegroup','resource_groups_desc','',7,'','','access_permissions','core'),('site','topnav','','','',0,'','','menu_site','core'),('site_schedule','reports','resource/site_schedule','site_schedule_desc','',0,'','','view_document','core'),('sources','media','source','sources_desc','',1,'','','sources','core'),('system_settings','admin','system/settings','system_settings_desc','',0,'','','settings','core'),('topnav','','','topnav_desc','',0,'','','','core'),('user','usernav','','','<span id=\"user-avatar\">{$userImage}</span> <span id=\"user-username\">{$username}</span>',5,'','','menu_user','core'),('usernav','','','usernav_desc','',0,'','','','core'),('users','manage','security/user','user_management_desc','',0,'','','view_user','core'),('view_logging','reports','system/logs','view_logging_desc','',1,'','','logs','core'),('view_sysinfo','reports','system/info','view_sysinfo_desc','',3,'','','view_sysinfo','core');
/*!40000 ALTER TABLE `modx_menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_config_elements`
--

DROP TABLE IF EXISTS `modx_migx_config_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_config_elements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int NOT NULL DEFAULT '0',
  `element_id` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_config_elements`
--

LOCK TABLES `modx_migx_config_elements` WRITE;
/*!40000 ALTER TABLE `modx_migx_config_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_config_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_configs`
--

DROP TABLE IF EXISTS `modx_migx_configs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_configs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `formtabs` text NOT NULL,
  `contextmenus` text NOT NULL,
  `actionbuttons` text NOT NULL,
  `columnbuttons` text NOT NULL,
  `filters` text NOT NULL,
  `extended` text NOT NULL,
  `columns` text NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime DEFAULT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime DEFAULT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime DEFAULT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime DEFAULT NULL,
  `publishedby` int NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_configs`
--

LOCK TABLES `modx_migx_configs` WRITE;
/*!40000 ALTER TABLE `modx_migx_configs` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_configs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_elements`
--

DROP TABLE IF EXISTS `modx_migx_elements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_elements` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` datetime NOT NULL,
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` datetime NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `deletedon` datetime NOT NULL,
  `deletedby` int NOT NULL DEFAULT '0',
  `published` tinyint unsigned NOT NULL DEFAULT '0',
  `publishedon` datetime NOT NULL,
  `publishedby` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_elements`
--

LOCK TABLES `modx_migx_elements` WRITE;
/*!40000 ALTER TABLE `modx_migx_elements` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_elements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_formtab_fields`
--

DROP TABLE IF EXISTS `modx_migx_formtab_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_formtab_fields` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int NOT NULL DEFAULT '0',
  `formtab_id` int NOT NULL DEFAULT '0',
  `field` varchar(255) NOT NULL DEFAULT '',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `pos` int NOT NULL DEFAULT '0',
  `description_is_code` tinyint unsigned NOT NULL DEFAULT '0',
  `inputTV` varchar(255) NOT NULL DEFAULT '',
  `inputTVtype` varchar(255) NOT NULL DEFAULT '',
  `validation` text NOT NULL,
  `configs` varchar(255) NOT NULL DEFAULT '',
  `restrictive_condition` text NOT NULL,
  `display` varchar(255) NOT NULL DEFAULT '',
  `sourceFrom` varchar(255) NOT NULL DEFAULT '',
  `sources` varchar(255) NOT NULL DEFAULT '',
  `inputOptionValues` text NOT NULL,
  `default` text NOT NULL,
  `extended` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`),
  KEY `formtab_id` (`formtab_id`),
  KEY `pos` (`pos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_formtab_fields`
--

LOCK TABLES `modx_migx_formtab_fields` WRITE;
/*!40000 ALTER TABLE `modx_migx_formtab_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_formtab_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_migx_formtabs`
--

DROP TABLE IF EXISTS `modx_migx_formtabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_migx_formtabs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `config_id` int NOT NULL DEFAULT '0',
  `caption` varchar(255) NOT NULL DEFAULT '',
  `pos` int NOT NULL DEFAULT '0',
  `print_before_tabs` tinyint unsigned NOT NULL DEFAULT '0',
  `extended` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `config_id` (`config_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_migx_formtabs`
--

LOCK TABLES `modx_migx_formtabs` WRITE;
/*!40000 ALTER TABLE `modx_migx_formtabs` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_migx_formtabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_namespaces`
--

DROP TABLE IF EXISTS `modx_namespaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_namespaces` (
  `name` varchar(40) NOT NULL DEFAULT '',
  `path` text,
  `assets_path` text,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_namespaces`
--

LOCK TABLES `modx_namespaces` WRITE;
/*!40000 ALTER TABLE `modx_namespaces` DISABLE KEYS */;
INSERT INTO `modx_namespaces` VALUES ('core','{core_path}','{assets_path}'),('csssweet','{core_path}components/csssweet/','{assets_path}components/csssweet/'),('doodles','{base_path}Doodles/core/components/doodles/','{base_path}Doodles/assets/components/doodles/'),('login','{core_path}components/login/','{assets_path}components/login/'),('migx','{core_path}components/migx/','{assets_path}components/migx/'),('mycmp','{base_path}doodles/core/components/mycmp/','{base_path}doodles/assets/components/mycmp/'),('myDoodles','{base_path}doodlesMine/core/components/doodles/','{base_path}doodlesMine/assets/components/doodles/'),('pruebas','{core_path}components/pruebas/','{assets_path}components/pruebas/');
/*!40000 ALTER TABLE `modx_namespaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_property_set`
--

DROP TABLE IF EXISTS `modx_property_set`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_property_set` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `category` int NOT NULL DEFAULT '0',
  `description` varchar(191) NOT NULL DEFAULT '',
  `properties` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_property_set`
--

LOCK TABLES `modx_property_set` WRITE;
/*!40000 ALTER TABLE `modx_property_set` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_property_set` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_messages`
--

DROP TABLE IF EXISTS `modx_register_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_messages` (
  `topic` int unsigned NOT NULL,
  `id` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `valid` datetime NOT NULL,
  `accessed` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `accesses` int unsigned NOT NULL DEFAULT '0',
  `expires` int NOT NULL DEFAULT '0',
  `payload` mediumtext NOT NULL,
  `kill` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic`,`id`),
  KEY `created` (`created`),
  KEY `valid` (`valid`),
  KEY `accessed` (`accessed`),
  KEY `accesses` (`accesses`),
  KEY `expires` (`expires`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_messages`
--

LOCK TABLES `modx_register_messages` WRITE;
/*!40000 ALTER TABLE `modx_register_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_register_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_queues`
--

DROP TABLE IF EXISTS `modx_register_queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_queues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_queues`
--

LOCK TABLES `modx_register_queues` WRITE;
/*!40000 ALTER TABLE `modx_register_queues` DISABLE KEYS */;
INSERT INTO `modx_register_queues` VALUES (1,'locks','a:1:{s:9:\"directory\";s:5:\"locks\";}');
/*!40000 ALTER TABLE `modx_register_queues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_register_topics`
--

DROP TABLE IF EXISTS `modx_register_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_register_topics` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `queue` int unsigned NOT NULL,
  `name` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `options` mediumtext,
  PRIMARY KEY (`id`),
  KEY `queue` (`queue`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_register_topics`
--

LOCK TABLES `modx_register_topics` WRITE;
/*!40000 ALTER TABLE `modx_register_topics` DISABLE KEYS */;
INSERT INTO `modx_register_topics` VALUES (1,1,'/resource/','2021-01-19 22:40:39',NULL,NULL);
/*!40000 ALTER TABLE `modx_register_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_session`
--

DROP TABLE IF EXISTS `modx_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_session` (
  `id` varchar(191) NOT NULL DEFAULT '',
  `access` int unsigned NOT NULL,
  `data` mediumtext,
  PRIMARY KEY (`id`),
  KEY `access` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_session`
--

LOCK TABLES `modx_session` WRITE;
/*!40000 ALTER TABLE `modx_session` DISABLE KEYS */;
INSERT INTO `modx_session` VALUES ('n4v4221e3cbojspc48bc8blbbg',1611410369,'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:1:{s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60075fb107b304.14108971_1600c2bc18618e5.68453606\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}'),('q4ahff0s29rdj59n011m07pop8',1611349673,'modx.user.0.resourceGroups|a:1:{s:3:\"web\";a:0:{}}modx.user.0.attributes|a:2:{s:3:\"mgr\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}s:3:\"web\";a:5:{s:16:\"modAccessContext\";a:1:{s:3:\"web\";a:1:{i:0;a:3:{s:9:\"principal\";i:0;s:9:\"authority\";s:1:\"0\";s:6:\"policy\";a:1:{s:4:\"load\";b:1;}}}}s:22:\"modAccessResourceGroup\";a:0:{}s:17:\"modAccessCategory\";a:0:{}s:28:\"sources.modAccessMediaSource\";a:0:{}s:18:\"modAccessNamespace\";a:0:{}}}modx.user.contextTokens|a:1:{s:3:\"mgr\";i:1;}modx.mgr.user.token|s:52:\"modx60075fb107b304.14108971_160075fe7716ae8.42690179\";modx.mgr.session.cookie.lifetime|i:0;modx.mgr.user.config|a:0:{}newResourceTokens|a:9:{i:0;s:23:\"60075fe7891a32.06586535\";i:1;s:23:\"60075fef976d88.20080862\";i:2;s:23:\"60076d1aa0e356.50373452\";i:3;s:23:\"60076d27c00fc1.32465185\";i:4;s:23:\"60084bb743b106.54413836\";i:5;s:23:\"60088f354b0ea9.18735534\";i:6;s:23:\"600afe9b456355.51030701\";i:7;s:23:\"600b3d2c5837d8.46946891\";i:8;s:23:\"600b3ea98cbcb0.36317303\";}modx.user.1.userGroups|a:1:{i:0;i:1;}');
/*!40000 ALTER TABLE `modx_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_content`
--

DROP TABLE IF EXISTS `modx_site_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(20) NOT NULL DEFAULT 'document',
  `contentType` varchar(50) NOT NULL DEFAULT 'text/html',
  `pagetitle` varchar(191) NOT NULL DEFAULT '',
  `longtitle` varchar(191) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `alias` varchar(191) DEFAULT '',
  `alias_visible` tinyint unsigned NOT NULL DEFAULT '1',
  `link_attributes` varchar(191) NOT NULL DEFAULT '',
  `published` tinyint unsigned NOT NULL DEFAULT '0',
  `pub_date` int NOT NULL DEFAULT '0',
  `unpub_date` int NOT NULL DEFAULT '0',
  `parent` int NOT NULL DEFAULT '0',
  `isfolder` tinyint unsigned NOT NULL DEFAULT '0',
  `introtext` text,
  `content` mediumtext,
  `richtext` tinyint unsigned NOT NULL DEFAULT '1',
  `template` int NOT NULL DEFAULT '0',
  `menuindex` int NOT NULL DEFAULT '0',
  `searchable` tinyint unsigned NOT NULL DEFAULT '1',
  `cacheable` tinyint unsigned NOT NULL DEFAULT '1',
  `createdby` int NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  `editedby` int NOT NULL DEFAULT '0',
  `editedon` int NOT NULL DEFAULT '0',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `deletedon` int NOT NULL DEFAULT '0',
  `deletedby` int NOT NULL DEFAULT '0',
  `publishedon` int NOT NULL DEFAULT '0',
  `publishedby` int NOT NULL DEFAULT '0',
  `menutitle` varchar(191) NOT NULL DEFAULT '',
  `donthit` tinyint unsigned NOT NULL DEFAULT '0',
  `privateweb` tinyint unsigned NOT NULL DEFAULT '0',
  `privatemgr` tinyint unsigned NOT NULL DEFAULT '0',
  `content_dispo` tinyint(1) NOT NULL DEFAULT '0',
  `hidemenu` tinyint unsigned NOT NULL DEFAULT '0',
  `class_key` varchar(100) NOT NULL DEFAULT 'modDocument',
  `context_key` varchar(100) NOT NULL DEFAULT 'web',
  `content_type` int unsigned NOT NULL DEFAULT '1',
  `uri` text,
  `uri_override` tinyint(1) NOT NULL DEFAULT '0',
  `hide_children_in_tree` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_tree` tinyint(1) NOT NULL DEFAULT '1',
  `properties` mediumtext,
  PRIMARY KEY (`id`),
  KEY `alias` (`alias`),
  KEY `published` (`published`),
  KEY `pub_date` (`pub_date`),
  KEY `unpub_date` (`unpub_date`),
  KEY `parent` (`parent`),
  KEY `isfolder` (`isfolder`),
  KEY `template` (`template`),
  KEY `menuindex` (`menuindex`),
  KEY `searchable` (`searchable`),
  KEY `cacheable` (`cacheable`),
  KEY `hidemenu` (`hidemenu`),
  KEY `class_key` (`class_key`),
  KEY `context_key` (`context_key`),
  KEY `uri` (`uri`(191)),
  KEY `uri_override` (`uri_override`),
  KEY `hide_children_in_tree` (`hide_children_in_tree`),
  KEY `show_in_tree` (`show_in_tree`),
  KEY `cache_refresh_idx` (`parent`,`menuindex`,`id`),
  FULLTEXT KEY `content_ft_idx` (`pagetitle`,`longtitle`,`description`,`introtext`,`content`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_content`
--

LOCK TABLES `modx_site_content` WRITE;
/*!40000 ALTER TABLE `modx_site_content` DISABLE KEYS */;
INSERT INTO `modx_site_content` VALUES (1,'document','text/html','Home','Congratulations!','','index',1,'',1,0,0,0,0,NULL,'<p>You have successfully installed MODX Revolution&nbsp;[[++settings_version]]!</p>\n<p>Now that MODX is installed you can login to the manager to create your templates, manage content and install third party extras to add functionality to your&nbsp;website. </p>\n\n<h2>New to&nbsp;MODX?</h2>\n\n<p>Pages on a MODX site are called <a href=\"https://docs.modx.com/current/en/building-sites/resources\">Resources</a>, and are visible on the left-hand side of the manager in the Resources tab. Resources can be nested under other resources, making it easy to create a tree of resources. There are different types of resources for different use&nbsp;cases.</p>\n\n<p>Building your website is done through a combination of <b>Templates</b>, <b>Template Variables</b>, <b>Chunks</b>, <b>Snippets</b> and <b>Plugins</b>. Collectively these are known as <b>Elements</b>, and can also be found in the left-hand side of the manager, in the Elements&nbsp;tab.</p>\n\n<p><a href=\"https://docs.modx.com/current/en/building-sites/elements/templates\">Templates</a> contain the outer markup of any page. Each resource can only be assigned to a single template at a time. By adding <a href=\"https://docs.modx.com/current/en/building-sites/elements/template-variables\">Template Variables</a> to a template, you can add custom fields for any resource using that particular&nbsp;template.</p>\n\n<p>With <a href=\"https://docs.modx.com/current/en/building-sites/elements/chunks\">Chunks</a> you can share parts of the markup, such as a header, across different templates. <a href=\"https://docs.modx.com/current/en/building-sites/elements/snippets\">Snippets</a> are pieces of PHP that return dynamic content, such as summaries of other resources or the current date. With snippets, you will often use Chunks to mark up the pieces of content it returns, instead of mixing the PHP and&nbsp;HTML.</p>\n\n<p>Finally, <a href=\"https://docs.modx.com/current/en/extending-modx/plugins\">Plugins</a> enable more advanced features by hooking into the extensive events system provided by&nbsp;MODX.</p>\n\n<p>To learn more about MODX, be sure to check out the <a href=\"https://docs.modx.com/current/en/getting-started\">Getting Started</a> section in the official&nbsp;documentation.</p>\n',1,1,0,1,1,1,1611095993,0,0,0,0,0,0,0,'',0,0,0,0,0,'modDocument','web',1,NULL,0,0,1,NULL),(2,'document','text/html','buildSchema','','','loadschema',1,'',1,0,0,0,0,'','[[!buildSchema]]',1,1,1,1,1,1,1611099430,1,1611173695,0,0,0,1611099420,1,'',0,0,0,0,0,'modDocument','web',1,'',0,0,1,NULL);
/*!40000 ALTER TABLE `modx_site_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_htmlsnippets`
--

DROP TABLE IF EXISTS `modx_site_htmlsnippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_htmlsnippets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source` int unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Chunk',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_htmlsnippets`
--

LOCK TABLES `modx_site_htmlsnippets` WRITE;
/*!40000 ALTER TABLE `modx_site_htmlsnippets` DISABLE KEYS */;
INSERT INTO `modx_site_htmlsnippets` VALUES (1,0,0,'lgnLoginTpl','',0,1,0,'<div class=\"loginForm\">\n    <div class=\"loginMessage\">[[+errors]]</div>\n    <div class=\"loginLogin\">\n        <form class=\"loginLoginForm\" action=\"[[~[[*id]]]]\" method=\"post\">\n            <fieldset class=\"loginLoginFieldset\">\n                <legend class=\"loginLegend\">[[+actionMsg]]</legend>\n                <label class=\"loginUsernameLabel\">[[%login.username]]\n                    <input class=\"loginUsername\" type=\"text\" name=\"username\" />\n                </label>\n                \n                <label class=\"loginPasswordLabel\">[[%login.password]]\n                    <input class=\"loginPassword\" type=\"password\" name=\"password\" />\n                </label>\n                <input class=\"returnUrl\" type=\"hidden\" name=\"returnUrl\" value=\"[[+request_uri]]\" />\n\n                [[+login.recaptcha_html]]\n                \n                <input class=\"loginLoginValue\" type=\"hidden\" name=\"service\" value=\"login\" />\n                <span class=\"loginLoginButton\"><input type=\"submit\" name=\"Login\" value=\"[[+actionMsg]]\" /></span>\n            </fieldset>\n        </form>\n    </div>\n</div>',0,'a:0:{}',0,''),(2,0,0,'lgnLogoutTpl','',0,1,0,'<div class=\"loginMessage\">[[+errors]]</div>\n<br />\n<div class=\"loginLogin\">\n    <div class=\"loginRegister\">\n        <a href=\"[[+logoutUrl]]\" title=\"[[+actionMsg]]\">[[+actionMsg]]</a>\n    </div>\n</div>',0,'a:0:{}',0,''),(3,0,0,'lgnErrTpl','',0,1,0,'<p class=\"error\">[[+msg]]</p>',0,'a:0:{}',0,''),(4,0,0,'lgnForgotPassEmail','',0,1,0,'[[%login.forgot_password_email_text? &username=`[[+username]]` &confirmUrl=`[[+confirmUrl]]` &password=`[[+password]]`]]\n',0,'a:0:{}',0,''),(5,0,0,'lgnForgotPassSentTpl','',0,1,0,'<h2>Your Login Information Has Been Sent</h2>\n\n<p>Your login information has been sent to the email address [[+email]].</p>',0,'a:0:{}',0,''),(6,0,0,'lgnForgotPassTpl','',0,1,0,'<div class=\"loginFPErrors\">[[+loginfp.errors]]</div>\n<div class=\"loginFP\">\n    <form class=\"loginFPForm\" action=\"[[~[[*id]]]]\" method=\"post\">\n        <fieldset class=\"loginFPFieldset\">\n            <legend class=\"loginFPLegend\">[[%login.forgot_password]]</legend>\n            <label class=\"loginFPUsernameLabel\">[[%login.username]]\n                <input class=\"loginFPUsername\" type=\"text\" name=\"username\" value=\"[[+loginfp.post.username]]\" />\n            </label>\n            \n            <p>[[%login.or_forgot_username]]</p>\n            \n            <label class=\"loginFPEmailLabel\">[[%login.email]]\n                <input class=\"loginFPEmail\" type=\"text\" name=\"email\" value=\"[[+loginfp.post.email]]\" />\n            </label>\n            \n            <input class=\"returnUrl\" type=\"hidden\" name=\"returnUrl\" value=\"[[+loginfp.request_uri]]\" />\n            \n            <input class=\"loginFPService\" type=\"hidden\" name=\"login_fp_service\" value=\"forgotpassword\" />\n            <span class=\"loginFPButton\"><input type=\"submit\" name=\"login_fp\" value=\"[[%login.reset_password]]\" /></span>\n        </fieldset>\n    </form>\n</div>',0,'a:0:{}',0,''),(7,0,0,'lgnResetPassTpl','',0,1,0,'<div class=\"loginResetPass\">\n<p class=\"loginResetPassHeader\">[[+username]],</p>\n\n<p class=\"loginResetPassText\">Your password has been reset. Please return <a href=\"[[+loginUrl]]\">here</a> to log in.</p>  \n</div>',0,'a:0:{}',0,''),(8,0,0,'lgnRegisterFormTpl','',0,1,0,'<div class=\"register\">\n    <div class=\"registerMessage\">[[+error.message]]</div>\n    \n    <form class=\"form\" action=\"[[~[[*id]]]]\" method=\"post\">\n        <input type=\"hidden\" name=\"nospam:blank\" value=\"\" />\n        \n        <label for=\"username\">[[%register.username? &namespace=`login` &topic=`register`]]\n            <span class=\"error\">[[+error.username]]</span>\n        </label>\n        <input type=\"text\" name=\"username:required:minLength=6\" id=\"username\" value=\"[[+username]]\" />\n        \n        <label for=\"password\">[[%register.password]]\n            <span class=\"error\">[[+error.password]]</span>\n        </label>\n        <input type=\"password\" name=\"password:required:minLength=6\" id=\"password\" value=\"[[+password]]\" />\n        \n        <label for=\"password_confirm\">[[%register.password_confirm]]\n            <span class=\"error\">[[+error.password_confirm]]</span>\n        </label>\n        <input type=\"password\" name=\"password_confirm:password_confirm=`password`\" id=\"password_confirm\" value=\"[[+password_confirm]]\" />\n        \n        <label for=\"fullname\">[[%register.fullname]]\n            <span class=\"error\">[[+error.fullname]]</span>\n        </label>\n        <input type=\"text\" name=\"fullname:required\" id=\"fullname\" value=\"[[+fullname]]\" />\n        \n        <label for=\"email\">[[%register.email]]\n            <span class=\"error\">[[+error.email]]</span>\n        </label>\n        <input type=\"text\" name=\"email:email\" id=\"email\" value=\"[[+email]]\" />\n        \n        <br class=\"clear\" />\n\n        [[+register.recaptcha_html]]\n        [[+error.recaptcha]]\n        \n        <div class=\"form-buttons\">\n            <input type=\"submit\" name=\"login-register-btn\" value=\"Register\" />\n        </div>\n    </form>\n</div>',0,'a:0:{}',0,''),(9,0,0,'lgnActivateEmailTpl','',0,1,0,'<p>[[+username]],</p>\n\n<p>Thanks for registering! To activate your new account, please click on the following link:</p>\n\n<p><a href=\"[[+confirmUrl]]\">[[+confirmUrl]]</a></p>\n\n<p>If you did not request this message, please ignore it.</p>\n\n<p>Thanks,<br />\n<em>Site Administrator</em></p>\n',0,'a:0:{}',0,''),(10,0,0,'lgnActiveUser','',0,1,0,'<li>[[+username]]</li>',0,'a:0:{}',0,''),(11,0,0,'lgnResetPassChangePassTpl','',0,1,0,'[[!+logcp.error_message:notempty=`<p style=\"color: red;\">[[+logcp.error_message]]</p>`]]\n\n<form class=\"form inline\" action=\"[[~[[*id]]]]\" method=\"post\">\n    <input type=\"hidden\" name=\"nospam:blank\" value=\"\" />\n    <input type=\"hidden\" name=\"lp\" value=\"[[!+logcp.lp]]\"/>\n    <input type=\"hidden\" name=\"lu\" value=\"[[!+logcp.lu]]\"/>\n\n    <div class=\"ff\">\n        <label for=\"password_new\">[[!%login.password_new]]\n            <span class=\"error\">[[+logcp.error.password_new]]</span>\n        </label>\n        <input type=\"password\" name=\"password_new:required\" id=\"password_new\" value=\"[[+logcp.password_new]]\" />\n    </div>\n\n    <div class=\"ff\">\n        <label for=\"password_new_confirm\">[[!%login.password_new_confirm]]\n            <span class=\"error\">[[+logcp.error.password_new_confirm]]</span>\n        </label>\n        <input type=\"password\" name=\"password_new_confirm:required\" id=\"password_new_confirm\" value=\"[[+logcp.password_new_confirm]]\" />\n    </div>\n\n    <br class=\"clear\" />\n\n    <div class=\"form-buttons\">\n        <input type=\"submit\" name=\"logcp-submit\" value=\"[[!%login.change_password]]\" />\n    </div>\n</form>\n',0,'a:0:{}',0,''),(12,0,0,'lgnExpiredTpl','',0,1,0,'<p><strong>Password Reset Information</strong></p>\n<p>Your password has already been reset or the link expired. If you need to reset your password again, click <a href=\"#\">here</a>.</p>',0,'a:0:{}',0,''),(13,0,0,'csss.custom_css.scss','Sample chunk only. It\'s recommended to create your own chunk(s) with a unique name(s) and set them in the saveCustomCss plugin properties.',0,3,0,'/* @import \'test.scss\'; */\n\n#logo {\n  display: block;\n}',0,'a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_htmlsnippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugin_events`
--

DROP TABLE IF EXISTS `modx_site_plugin_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_plugin_events` (
  `pluginid` int NOT NULL DEFAULT '0',
  `event` varchar(191) NOT NULL DEFAULT '',
  `priority` int NOT NULL DEFAULT '0',
  `propertyset` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pluginid`,`event`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugin_events`
--

LOCK TABLES `modx_site_plugin_events` WRITE;
/*!40000 ALTER TABLE `modx_site_plugin_events` DISABLE KEYS */;
INSERT INTO `modx_site_plugin_events` VALUES (1,'OnDocFormPrerender',0,0),(1,'OnTVInputPropertiesList',0,0),(1,'OnTVInputRenderList',1,0),(2,'OnDocFormPrerender',0,0),(3,'OnFileManagerUpload',0,0),(4,'OnChunkFormSave',0,0),(4,'OnSiteRefresh',0,0),(5,'OnChunkFormSave',0,0),(5,'OnSiteRefresh',0,0);
/*!40000 ALTER TABLE `modx_site_plugin_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_plugins`
--

DROP TABLE IF EXISTS `modx_site_plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_plugins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source` int unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `plugincode` mediumtext NOT NULL,
  `locked` tinyint unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `disabled` (`disabled`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_plugins`
--

LOCK TABLES `modx_site_plugins` WRITE;
/*!40000 ALTER TABLE `modx_site_plugins` DISABLE KEYS */;
INSERT INTO `modx_site_plugins` VALUES (1,0,0,'MIGX','',0,2,0,'$corePath = $modx->getOption(\'migx.core_path\',null,$modx->getOption(\'core_path\').\'components/migx/\');\n$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name) {\n    case \'OnTVInputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/input/\');\n        break;\n    case \'OnTVInputPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/inputoptions/\');\n        break;\n\n        case \'OnDocFormPrerender\':\n        $modx->controller->addCss($assetsUrl.\'css/mgr.css\');\n        break; \n \n    /*          \n    case \'OnTVOutputRenderList\':\n        $modx->event->output($corePath.\'elements/tv/output/\');\n        break;\n    case \'OnTVOutputRenderPropertiesList\':\n        $modx->event->output($corePath.\'elements/tv/properties/\');\n        break;\n    \n    case \'OnDocFormPrerender\':\n        $assetsUrl = $modx->getOption(\'colorpicker.assets_url\',null,$modx->getOption(\'assets_url\').\'components/colorpicker/\'); \n        $modx->regClientStartupHTMLBlock(\'<script type=\"text/javascript\">\n        Ext.onReady(function() {\n            \n        });\n        </script>\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPicker.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorMenu.js\');\n        $modx->regClientStartupScript($assetsUrl.\'sources/ColorPickerField.js\');		\n        $modx->regClientCSS($assetsUrl.\'resources/css/colorpicker.css\');\n        break;\n     */\n}\nreturn;',0,'a:0:{}',0,'',0,''),(2,0,0,'MIGXquip','',0,2,0,'$quipCorePath = $modx->getOption(\'quip.core_path\', null, $modx->getOption(\'core_path\') . \'components/quip/\');\n//$assetsUrl = $modx->getOption(\'migx.assets_url\', null, $modx->getOption(\'assets_url\') . \'components/migx/\');\nswitch ($modx->event->name)\n{\n\n    case \'OnDocFormPrerender\':\n\n        \n        require_once $quipCorePath . \'model/quip/quip.class.php\';\n        $modx->quip = new Quip($modx);\n\n        $modx->lexicon->load(\'quip:default\');\n        $quipconfig = $modx->toJson($modx->quip->config);\n        \n        $js = \"\n        Quip.config = Ext.util.JSON.decode(\'{$quipconfig}\');\n        console.log(Quip);\";\n\n        //$modx->controller->addCss($assetsUrl . \'css/mgr.css\');\n        $modx->controller->addJavascript($modx->quip->config[\'jsUrl\'].\'quip.js\');\n        $modx->controller->addHtml(\'<script type=\"text/javascript\">\' . $js . \'</script>\');\n        break;\n\n}\nreturn;',0,'a:0:{}',1,'',0,''),(3,0,0,'migxResizeOnUpload','',0,2,0,'/**\n * migxResizeOnUpload Plugin\n *\n * Events: OnFileManagerUpload\n * Author: Bruno Perner <b.perner@gmx.de>\n * Modified to read multiple configs from mediasource-property\n * \n * First Author: Vasiliy Naumkin <bezumkin@yandex.ru>\n * Required: PhpThumbOf snippet for resizing images\n * \n * Example: mediasource - property \'resizeConfig\':\n * [{\"alias\":\"origin\",\"w\":\"500\",\"h\":\"500\",\"far\":1},{\"alias\":\"thumb\",\"w\":\"150\",\"h\":\"150\",\"far\":1}]\n */\n\nif ($modx->event->name != \'OnFileManagerUpload\') {\n    return;\n}\n\n\n$file = $modx->event->params[\'files\'][\'file\'];\n$directory = $modx->event->params[\'directory\'];\n\nif ($file[\'error\'] != 0) {\n    return;\n}\n\n$name = $file[\'name\'];\n//$extensions = explode(\',\', $modx->getOption(\'upload_images\'));\n\n$source = $modx->event->params[\'source\'];\n\nif ($source instanceof modMediaSource) {\n    //$dirTree = $modx->getOption(\'dirtree\', $_REQUEST, \'\');\n    //$modx->setPlaceholder(\'docid\', $resource_id);\n    $source->initialize();\n    $basePath = str_replace(\'/./\', \'/\', $source->getBasePath());\n    //$cachepath = $cachepath . $dirTree;\n    $baseUrl = $modx->getOption(\'site_url\') . $source->getBaseUrl();\n    //$baseUrl = $baseUrl . $dirTree;\n    $sourceProperties = $source->getPropertyList();\n\n    //echo \'<pre>\' . print_r($sourceProperties, 1) . \'</pre>\';\n    //$allowedExtensions = $modx->getOption(\'allowedFileTypes\', $sourceProperties, \'\');\n    //$allowedExtensions = empty($allowedExtensions) ? \'jpg,jpeg,png,gif\' : $allowedExtensions;\n    //$maxFilesizeMb = $modx->getOption(\'maxFilesizeMb\', $sourceProperties, \'8\');\n    //$maxFiles = $modx->getOption(\'maxFiles\', $sourceProperties, \'0\');\n    //$thumbX = $modx->getOption(\'thumbX\', $sourceProperties, \'100\');\n    //$thumbY = $modx->getOption(\'thumbY\', $sourceProperties, \'100\');\n    $resizeConfigs = $modx->getOption(\'resizeConfigs\', $sourceProperties, \'\');\n    $resizeConfigs = $modx->fromJson($resizeConfigs);\n    $thumbscontainer = $modx->getOption(\'thumbscontainer\', $sourceProperties, \'thumbs/\');\n    $imageExtensions = $modx->getOption(\'imageExtensions\', $sourceProperties, \'jpg,jpeg,png,gif,JPG\');\n    $imageExtensions = explode(\',\', $imageExtensions);\n    //$uniqueFilenames = $modx->getOption(\'uniqueFilenames\', $sourceProperties, false);\n    //$onImageUpload = $modx->getOption(\'onImageUpload\', $sourceProperties, \'\');\n    //$onImageRemove = $modx->getOption(\'onImageRemove\', $sourceProperties, \'\');\n    $cleanalias = $modx->getOption(\'cleanFilename\', $sourceProperties, false);\n\n}\n\nif (is_array($resizeConfigs) && count($resizeConfigs) > 0) {\n    foreach ($resizeConfigs as $rc) {\n        if (isset($rc[\'alias\'])) {\n            $filePath = $basePath . $directory;\n            $filePath = str_replace(\'//\',\'/\',$filePath);\n            if ($rc[\'alias\'] == \'origin\') {\n                $thumbPath = $filePath;\n            } else {\n                $thumbPath = $filePath . $rc[\'alias\'] . \'/\';\n                $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n                if (!@mkdir($thumbPath, $permissions, true)) {\n                    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $thumbPath));\n                } else {\n                    chmod($thumbPath, $permissions);\n                }\n\n            }\n\n\n            $filename = $filePath . $name;\n            $thumbname = $thumbPath . $name;\n            $ext = substr(strrchr($name, \'.\'), 1);\n            if (in_array($ext, $imageExtensions)) {\n                $sizes = getimagesize($filename);\n                echo $sizes[0]; \n                //$format = substr($sizes[\'mime\'], 6);\n                if ($sizes[0] > $rc[\'w\'] || $sizes[1] > $rc[\'h\']) {\n                    if ($sizes[0] < $rc[\'w\']) {\n                        $rc[\'w\'] = $sizes[0];\n                    }\n                    if ($sizes[1] < $rc[\'h\']) {\n                        $rc[\'h\'] = $sizes[1];\n                    }\n                    $type = $sizes[0] > $sizes[1] ? \'landscape\' : \'portrait\';\n                    if (isset($rc[\'far\']) && $rc[\'far\'] == \'1\' && isset($rc[\'w\']) && isset($rc[\'h\'])) {\n                        if ($type = \'landscape\') {\n                            unset($rc[\'h\']);\n                        }else {\n                            unset($rc[\'w\']);\n                        }\n                    }\n\n                    $options = \'\';\n                    foreach ($rc as $k => $v) {\n                        if ($k != \'alias\') {\n                            $options .= \'&\' . $k . \'=\' . $v;\n                        }\n                    }\n                    $resized = $modx->runSnippet(\'phpthumbof\', array(\'input\' => $filePath . $name, \'options\' => $options));\n                    rename(MODX_BASE_PATH . substr($resized, 1), $thumbname);\n                }\n            }\n\n\n        }\n    }\n}',0,'a:0:{}',0,'',0,''),(4,0,0,'saveCustomCss','',0,3,0,'/**\n * saveCustomCss\n * @author @sepiariver\n * Copyright 2013 - 2015 by YJ Tso <yj@modx.com> <info@sepiariver.com>\n *\n * saveCustomCss and cssSweet is free software;\n * you can redistribute it and/or modify it under the terms of the GNU General\n * Public License as published by the Free Software Foundation;\n * either version 2 of the License, or (at your option) any later version.\n *\n * saveCustomCss and cssSweet is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or\n * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * saveCustomCss and cssSweet; if not, write to the Free Software Foundation, Inc.,\n * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package cssSweet\n *\n */\n\n// Never fire on the front end\nif ($modx->context->get(\'key\') !== \'mgr\') return;\n\n// In case the wrong event is enabled in plugin properties\n$allowedEvents = [\'OnSiteRefresh\', \'OnChunkFormSave\', \'ClientConfig_ConfigChange\', \'OnDocFormSave\'];\nif (!in_array($modx->event->name, $allowedEvents)) return;\n\n// Support @sottwell\'s approach\nif ($modx->event->name === \'OnDocFormSave\') {\n    if (!($resource instanceof modResource)) return;\n    if ($resource->get(\'contentType\') !== \'text/css\') return;\n}\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[SaveCustomCss] could not load the required csssweet class!\');\n    return;\n}\n\n// Dev mode option\n$mode = $modx->getOption(\'dev_mode\', $scriptProperties, \'custom\', true);\n// Letting folks know what\'s going on\n$modx->log(modX::LOG_LEVEL_INFO, \'saveCustomCss plugin is running in mode: \' . $mode);\n\n// Override properties with mode props\n$properties = $csssweet->getProperties($scriptProperties, $mode);\n\n// Specify a comma-separated list of chunk names in plugin properties\n$chunks = $csssweet->explodeAndClean($modx->getOption(\'scss_chunks\', $properties, \'\'));\n// If no chunk names specified, there\'s nothing to do.\nif (empty($chunks)) {\n    $modx->log(modX::LOG_LEVEL_WARN, \'No chunks were set in the saveCustomCss plugin property scss_chunks. No action performed.\');\n    return;\n}\n\n// Don\'t run this for every ChunkSave event\nif ($modx->event->name === \'OnChunkFormSave\' && !in_array($chunk->get(\'name\'), $chunks)) return;\n\n// Specify an output file name in plugin properties\n$filename = $modx->getOption(\'css_filename\', $properties, \'\');\nif (empty($filename)) return;\n\n// Optionally choose an output format if not minified\n$css_output_format = $modx->getOption(\'css_output_format\', $properties, \'Expanded\');\n$css_output_format_options = array(\'Expanded\', \'Nested\', \'Compact\');\nif (!in_array($css_output_format, $css_output_format_options)) $css_output_format = \'Expanded\';\n\n// Optionally minify the output, defaults to \'true\'\n$minify_custom_css = (bool) $modx->getOption(\'minify_custom_css\', $properties, true);\n$css_output_format = ($minify_custom_css) ? \'Compressed\' : $css_output_format;\n\n// Strip CSS comment blocks; defaults to \'false\'\n$strip_comments = (bool) $modx->getOption(\'strip_css_comment_blocks\', $properties, false);\n$css_output_format = ($minify_custom_css && $strip_comments) ? \'Crunched\' : $css_output_format;\n\n// Optionally set base_path for scss imports\n$scss_import_paths = $modx->getOption(\'scss_import_paths\', $properties, \'\');\n$scss_import_paths = (empty($scss_import_paths)) ? array() : $csssweet->explodeAndClean($scss_import_paths);\n\n// Get the output path; construct fallback; log for debugging\n$csssCustomCssPath = $modx->getOption(\'css_path\', $properties, \'\');\nif (empty($csssCustomCssPath)) $csssCustomCssPath = $modx->getOption(\'assets_path\') . \'components/csssweet/\' . $mode . \'/\';\n$csssCustomCssPath = rtrim($csssCustomCssPath, \'/\') . \'/\';\n\n$checkDir = $csssweet->checkDir($csssCustomCssPath, \'csssweet.saveCustomCss\');\nif ($checkDir[\'success\']) {\n    $modx->log(modX::LOG_LEVEL_WARN, $checkDir[\'message\']);\n} else {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'$csssCustomJsPath error: \' . $checkDir[\'message\']);\n    return;\n}\n\n// Initialize settings array\n$settings = array();\n\n// Get context settings\n$settings_ctx = $modx->getOption(\'context_settings_context\', $properties, \'\');\nif (!empty($settings_ctx)) {\n    $settings_ctx = $modx->getContext($settings_ctx);\n    if ($settings_ctx && is_array($settings_ctx->config)) $settings = array_merge($settings, $settings_ctx->config);\n}\n\n// Attempt to get Client Config settigs\n$settings = $csssweet->getClientConfigSettings($settings);\n\n/* Make settings available as [[++tags]] */\n$modx->setPlaceholders($settings, \'+\');\n\n// Parse chunk with $settings array\n$contents = $csssweet->processChunks($chunks, $settings);\n// If there\'s no result, what\'s the point?\nif (empty($contents)) return;\n\n// CSS comments\n$contents = \'/* Contents generated by MODX - this file will be overwritten. */\' . PHP_EOL . $contents;\n// The scssphp parser keeps comments with !\nif (!$strip_comments) $contents = str_replace(\'/*\', \'/*!\', $contents);\n\n// Define target file\n$file = $csssCustomCssPath . $filename;\n\n// Init scssphp\n$scssMin = $csssweet->scssphpInit($scss_import_paths, $css_output_format);\nif ($scssMin) {\n    try {\n        $contents = $scssMin->compile($contents);\n    } catch (Exception $e) {\n        $modx->log(modX::LOG_LEVEL_ERROR, $e->getMessage() . \' scss not compiled. minification not performed.\', \'\', \'saveCustomCss\');\n    }\n} else {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'Failed to load scss class. scss not compiled. minification not performed.\', \'\', \'saveCustomCss\');\n}\n\n// If we failed scss and minification at least output what we have\nfile_put_contents($file, $contents);\nif (file_exists($file) && is_readable($file)) $modx->log(modX::LOG_LEVEL_INFO, \'Success! Custom CSS saved to file \"\' . $file . \'\"\', \'\', \'saveCustomCss\');',0,'a:9:{s:11:\"scss_chunks\";a:7:{s:4:\"name\";s:11:\"scss_chunks\";s:4:\"desc\";s:77:\"Name of chunk, or comma-separated list of chunks, from which to parse (S)CSS.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\"csss.custom_css.scss\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:12:\"css_filename\";a:7:{s:4:\"name\";s:12:\"css_filename\";s:4:\"desc\";s:43:\"Name of file to output custom compiled CSS.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"custom_css.min.css\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:8:\"dev_mode\";a:7:{s:4:\"name\";s:8:\"dev_mode\";s:4:\"desc\";s:16:\"Enable DEV mode.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"custom\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:4:\"Mode\";}s:8:\"css_path\";a:7:{s:4:\"name\";s:8:\"css_path\";s:4:\"desc\";s:62:\"Full path for directory to which to OUTPUT the final CSS file.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:24:\"context_settings_context\";a:7:{s:4:\"name\";s:24:\"context_settings_context\";s:4:\"desc\";s:79:\"The key of a single context from which to pull context settings for CSS values.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:17:\"minify_custom_css\";a:7:{s:4:\"name\";s:17:\"minify_custom_css\";s:4:\"desc\";s:58:\"Minify CSS on output. MUST be enabled for SCSS processing.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:21:\"SCSS and Minification\";}s:17:\"scss_import_paths\";a:7:{s:4:\"name\";s:17:\"scss_import_paths\";s:4:\"desc\";s:99:\"Optionally set import paths to check for SCSS imports. All @import paths must be relative to these.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:21:\"SCSS and Minification\";}s:24:\"strip_css_comment_blocks\";a:7:{s:4:\"name\";s:24:\"strip_css_comment_blocks\";s:4:\"desc\";s:69:\"Strips CSS comment blocks on output, only IF minification is ENABLED.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:21:\"SCSS and Minification\";}s:17:\"css_output_format\";a:7:{s:4:\"name\";s:17:\"css_output_format\";s:4:\"desc\";s:98:\"Choose either \'Expanded\' (default), \'Nested\' or \'Compact\' CSS output, IF minification is DISABLED.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"Expanded\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:21:\"SCSS and Minification\";}}',0,'',0,''),(5,0,0,'saveCustomJs','',0,3,0,'/**\n * saveCustomJs\n * @author @sepiariver\n * Copyright 2013 - 2015 by YJ Tso <yj@modx.com> <info@sepiariver.com>\n *\n * saveCustomJs and cssSweet is free software;\n * you can redistribute it and/or modify it under the terms of the GNU General\n * Public License as published by the Free Software Foundation;\n * either version 2 of the License, or (at your option) any later version.\n *\n * saveCustomJs and cssSweet is distributed in the hope that it will be useful,\n * but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or\n * FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * saveCustomJs and cssSweet; if not, write to the Free Software Foundation, Inc.,\n * 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package cssSweet\n *\n */\n\n// Never fire on the front end\nif ($modx->context->get(\'key\') !== \'mgr\') return;\n\n// In case the wrong event is enabled in plugin properties\n$allowedEvents = [\'OnSiteRefresh\', \'OnChunkFormSave\', \'ClientConfig_ConfigChange\', \'OnDocFormSave\'];\nif (!in_array($modx->event->name, $allowedEvents)) return;\n\n// Support @sottwell\'s approach\nif ($modx->event->name === \'OnDocFormSave\') {\n    if (!($resource instanceof modResource)) return;\n    if ($resource->get(\'contentType\') !== \'text/css\') return;\n}\n\n// Grab the cssSweet clas\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\n\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[SaveCustomCss] could not load the required csssweet class!\');\n    return;\n}\n\n// Dev mode option\n$mode = $modx->getOption(\'dev_mode\', $scriptProperties, \'custom\', true);\n// Letting folks know what\'s going on\n$modx->log(modX::LOG_LEVEL_INFO, \'saveCustomJs plugin is running in mode: \' . $mode);\n\n// Override properties with mode props\n$properties = $csssweet->getProperties($scriptProperties, $mode);\n\n// Specify a comma-separated list of chunk names in plugin properties\n$chunks = $csssweet->explodeAndClean($modx->getOption(\'js_chunks\', $properties, \'\'));\n// If no chunk names specified, there\'s nothing to do.\nif (empty($chunks)) {\n    $modx->log(modX::LOG_LEVEL_WARN, \'No chunks were set in the saveCustomJs plugin property js_chunks. No action performed.\');\n    return;\n}\n\n// Don\'t run this for every ChunkSave event\nif ($modx->event->name === \'OnChunkFormSave\' && !in_array($chunk->get(\'name\'), $chunks)) return;\n\n// Specify an output file name in plugin properties\n$filename = $modx->getOption(\'js_filename\', $properties, \'\');\nif (empty($filename)) return;\n\n// Optionally minify the output, defaults to \'true\'\n$minify_custom_js = (bool) $modx->getOption(\'minify_custom_js\', $properties, true);\n\n// Strip comment blocks; defaults to \'false\'\n$strip_comments = (bool) $modx->getOption(\'strip_js_comment_blocks\', $properties, false);\n$preserve_comments = ($strip_comments) ? false : true;\n\n// Get the output path; construct fallback; log for info/debugging\n$csssCustomJsPath = $modx->getOption(\'js_path\', $properties, \'\');\nif (empty($csssCustomJsPath)) $csssCustomJsPath = $modx->getOption(\'assets_path\') . \'components/csssweet/\' . $mode . \'/js/\';\n$csssCustomJsPath = rtrim($csssCustomJsPath, \'/\') . \'/\';\n\n$checkDir = $csssweet->checkDir($csssCustomJsPath, \'csssweet.saveCustomJs\');\nif ($checkDir[\'success\']) {\n    $modx->log(modX::LOG_LEVEL_WARN, $checkDir[\'message\']);\n} else {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'$csssCustomJsPath error: \' . $checkDir[\'message\']);\n    return;\n}\n\n// Initialize settings array\n$settings = array();\n\n// Get context settings\n$settings_ctx = $modx->getOption(\'context_settings_context\', $properties, \'\');\nif (!empty($settings_ctx)) {\n    $settings_ctx = $modx->getContext($settings_ctx);\n    if ($settings_ctx && is_array($settings_ctx->config)) $settings = array_merge($settings, $settings_ctx->config);\n}\n\n// Attempt to get Client Config settigs\n$settings = $csssweet->getClientConfigSettings($settings);\n\n/* Make settings available as [[++tags]] */\n$modx->setPlaceholders($settings, \'+\');\n\n// Parse chunk with $settings array\n$contents = $csssweet->processChunks($chunks, $settings);\n\n// If there\'s no result, what\'s the point?\nif (empty($contents)) return;\n\n// Comments\n$contents = \'/* Contents generated by MODX - this file will be overwritten. */\' . PHP_EOL . $contents;\nif ($preserve_comments) {\n    // Add \'!\' token to preserve all comments\n    $contents = str_replace(array(\'/*\', \'/*!\'), \'/*!\', $contents);\n} else {\n    // We discard flagged comments if the strip_js_comment_blocks property is true. Good idea or no?\n    $contents = str_replace(\'/*!\', \'/*\', $contents);\n}\n\n// Define target file\n$file = $csssCustomJsPath . $filename;\n\n// Status report\n$status = \'not\';\nif ($minify_custom_js) {\n    $jshrink = $csssweet->jshrinkInit();\n    // If we got the class, try minification. Log failures.\n    if ($jshrink) {\n        try {\n            $contents = $jshrink::minify($contents, array(\'flaggedComments\' => $preserve_comments));\n            $status = \'\';\n        } catch (Exception $e) {\n            $modx->log(modX::LOG_LEVEL_ERROR, $e->getMessage() . \'— js not compiled. Minification not performed.\');\n        }\n    } else {\n        $modx->log(modX::LOG_LEVEL_ERROR, \'Failed to load js Minifier class — js not compiled. Minification not performed.\');\n    }\n}\n\n// None of the minifiers seem to handle this correctly?\n$contents = str_replace(\'!function\', PHP_EOL . \'!function\', $contents);\n\n// If we didnt\' minify, output what we have\nfile_put_contents($file, $contents);\nif (file_exists($file) && is_readable($file)) $modx->log(modX::LOG_LEVEL_INFO, \'Minification was \' . $status . \' performed. Custom JS saved to file: \' . $file);',0,'a:7:{s:9:\"js_chunks\";a:7:{s:4:\"name\";s:9:\"js_chunks\";s:4:\"desc\";s:73:\"Name of chunk, or comma-separated list of chunks, from which to parse JS.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:11:\"js_filename\";a:7:{s:4:\"name\";s:11:\"js_filename\";s:4:\"desc\";s:42:\"Name of file to output custom compiled JS.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"custom_js.min.js\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:8:\"dev_mode\";a:7:{s:4:\"name\";s:8:\"dev_mode\";s:4:\"desc\";s:16:\"Enable DEV mode.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"custom\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:4:\"Mode\";}s:7:\"js_path\";a:7:{s:4:\"name\";s:7:\"js_path\";s:4:\"desc\";s:61:\"Full path for directory to which to OUTPUT the final JS file.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:24:\"context_settings_context\";a:7:{s:4:\"name\";s:24:\"context_settings_context\";s:4:\"desc\";s:79:\"The key of a single context from which to pull context settings for CSS values.\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:0:\"\";}s:16:\"minify_custom_js\";a:7:{s:4:\"name\";s:16:\"minify_custom_js\";s:4:\"desc\";s:20:\"Minify JS on output.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:12:\"Minification\";}s:23:\"strip_js_comment_blocks\";a:7:{s:4:\"name\";s:23:\"strip_js_comment_blocks\";s:4:\"desc\";s:35:\"Strips JS comment blocks on output.\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:19:\"csssweet:properties\";s:4:\"area\";s:12:\"Minification\";}}',0,'',0,'');
/*!40000 ALTER TABLE `modx_site_plugins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_snippets`
--

DROP TABLE IF EXISTS `modx_site_snippets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_snippets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source` int unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `cache_type` tinyint(1) NOT NULL DEFAULT '0',
  `snippet` mediumtext,
  `locked` tinyint unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `moduleguid` varchar(32) NOT NULL DEFAULT '',
  `static` tinyint unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `moduleguid` (`moduleguid`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_snippets`
--

LOCK TABLES `modx_site_snippets` WRITE;
/*!40000 ALTER TABLE `modx_site_snippets` DISABLE KEYS */;
INSERT INTO `modx_site_snippets` VALUES (1,0,0,'ActiveUsers','Shows a list of active, logged-in users.',0,1,0,'/**\n * Login\n *\n * Copyright 2010 by Shaun McCormick <shaun+login@modx.com>\n *\n * Login is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Login is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Login; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * Shows a list of active, signed-on users\n *\n * @var modX $modx\n * @var Login $login\n * @var array $scriptProperties\n *\n * @package login\n **/\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'ActiveUsers\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:9:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:20:\"prop_activeusers.tpl\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:13:\"lgnActiveUser\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplType\";a:7:{s:4:\"name\";s:7:\"tplType\";s:4:\"desc\";s:24:\"prop_activeusers.tplType\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:6:\"sortBy\";a:7:{s:4:\"name\";s:6:\"sortBy\";s:4:\"desc\";s:23:\"prop_activeusers.sortBy\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"username\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sortDir\";a:7:{s:4:\"name\";s:7:\"sortDir\";s:4:\"desc\";s:24:\"prop_activeusers.sortDir\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:2:{i:0;a:2:{s:5:\"value\";s:3:\"ASC\";s:4:\"text\";s:16:\"opt_register.asc\";}i:1;a:2:{s:5:\"value\";s:4:\"DESC\";s:4:\"text\";s:17:\"opt_register.desc\";}}s:5:\"value\";s:4:\"DESC\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:5:\"limit\";a:7:{s:4:\"name\";s:5:\"limit\";s:4:\"desc\";s:22:\"prop_activeusers.limit\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:6:\"offset\";a:7:{s:4:\"name\";s:6:\"offset\";s:4:\"desc\";s:23:\"prop_activeusers.offset\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"classKey\";a:7:{s:4:\"name\";s:8:\"classKey\";s:4:\"desc\";s:25:\"prop_activeusers.classKey\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:7:\"modUser\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:39:\"prop_activeusers.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"au.\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:35:\"prop_activeusers.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(2,0,0,'ChangePassword','Processes a form for changing the password for a User.',0,1,0,'/**\n * Login\n *\n * Copyright 2010 by Shaun McCormick <shaun+login@modx.com>\n *\n * Login is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Login is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Login; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * ChangePassword snippet\n *\n * @var modX $modx\n * @var Login $login\n * @var array $scriptProperties\n * \n * @package login\n **/\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'ChangePassword\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:9:{s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:34:\"prop_changepassword.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:12:\"logcp-submit\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:16:\"fieldOldPassword\";a:7:{s:4:\"name\";s:16:\"fieldOldPassword\";s:4:\"desc\";s:41:\"prop_changepassword.fieldoldpassword_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:12:\"password_old\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:16:\"fieldNewPassword\";a:7:{s:4:\"name\";s:16:\"fieldNewPassword\";s:4:\"desc\";s:41:\"prop_changepassword.fieldnewpassword_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:12:\"password_new\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:23:\"fieldConfirmNewPassword\";a:7:{s:4:\"name\";s:23:\"fieldConfirmNewPassword\";s:4:\"desc\";s:48:\"prop_changepassword.fieldconfirmnewpassword_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\"password_new_confirm\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:33:\"prop_changepassword.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"postHooks\";a:7:{s:4:\"name\";s:9:\"postHooks\";s:4:\"desc\";s:34:\"prop_changepassword.posthooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"redirectToLogin\";a:7:{s:4:\"name\";s:15:\"redirectToLogin\";s:4:\"desc\";s:40:\"prop_changepassword.redirecttologin_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"reloadOnSuccess\";a:7:{s:4:\"name\";s:15:\"reloadOnSuccess\";s:4:\"desc\";s:40:\"prop_changepassword.reloadonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:42:\"prop_changepassword.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"logcp.\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(3,0,0,'ConfirmRegister','Handles activation of registered user.',0,1,0,'/**\n * Register\n *\n * Copyright 2010 by Shaun McCormick <shaun@modx.com>\n *\n * Register is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Register is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Register; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx Confirm Register Activation Snippet. Snippet to place on an activation\n * page that the user using the Register snippet would be sent to via the\n * activation email.\n *\n * @var modX $modx\n * @var Login $login\n * @var array $scriptProperties\n *\n * @package login\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'ConfirmRegister\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:7:{s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:36:\"prop_confirmregister.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:40:\"prop_confirmregister.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:26:\"redirectUnsetDefaultParams\";a:7:{s:4:\"name\";s:26:\"redirectUnsetDefaultParams\";s:4:\"desc\";s:51:\"prop_confirmregister.redirectUnsetDefaultParam_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"authenticate\";a:7:{s:4:\"name\";s:12:\"authenticate\";s:4:\"desc\";s:38:\"prop_confirmregister.authenticate_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:20:\"authenticateContexts\";a:7:{s:4:\"name\";s:20:\"authenticateContexts\";s:4:\"desc\";s:46:\"prop_confirmregister.authenticatecontexts_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"errorPage\";a:7:{s:4:\"name\";s:9:\"errorPage\";s:4:\"desc\";s:35:\"prop_confirmregister.errorpage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"activePage\";a:7:{s:4:\"name\";s:10:\"activePage\";s:4:\"desc\";s:36:\"prop_confirmregister.activepage_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(4,0,0,'ForgotPassword','Displays a forgot password form.',0,1,0,'/**\n * ForgotPassword\n *\n * Copyright 2010 by Jason Coward <jason@modx.com> and Shaun McCormick\n * <shaun@modx.com>\n *\n * ForgotPassword is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * ForgotPassword is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * ForgotPassword; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx ForgotPassword Snippet. Displays a form for users who have forgotten\n * their password and gives them the ability to retrieve it.\n *\n * @package login\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'ForgotPassword\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:13:{s:8:\"emailTpl\";a:7:{s:4:\"name\";s:8:\"emailTpl\";s:4:\"desc\";s:33:\"prop_forgotpassword.emailtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:18:\"lgnForgotPassEmail\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:11:\"emailTplAlt\";a:7:{s:4:\"name\";s:11:\"emailTplAlt\";s:4:\"desc\";s:36:\"prop_forgotpassword.emailtplalt_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailTplType\";a:7:{s:4:\"name\";s:12:\"emailTplType\";s:4:\"desc\";s:37:\"prop_forgotpassword.emailtpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"sentTpl\";a:7:{s:4:\"name\";s:7:\"sentTpl\";s:4:\"desc\";s:32:\"prop_forgotpassword.senttpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:20:\"lgnForgotPassSentTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:11:\"sentTplType\";a:7:{s:4:\"name\";s:11:\"sentTplType\";s:4:\"desc\";s:36:\"prop_forgotpassword.senttpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:28:\"prop_forgotpassword.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:16:\"lgnForgotPassTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplType\";a:7:{s:4:\"name\";s:7:\"tplType\";s:4:\"desc\";s:32:\"prop_forgotpassword.tpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:31:\"prop_forgotpassword.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"lgnErrTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"errTplType\";a:7:{s:4:\"name\";s:10:\"errTplType\";s:4:\"desc\";s:35:\"prop_forgotpassword.errtpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"emailSubject\";a:7:{s:4:\"name\";s:12:\"emailSubject\";s:4:\"desc\";s:37:\"prop_forgotpassword.emailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"resetResourceId\";a:7:{s:4:\"name\";s:15:\"resetResourceId\";s:4:\"desc\";s:40:\"prop_forgotpassword.resetresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:36:\"prop_confirmregister.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:40:\"prop_confirmregister.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(5,0,0,'isLoggedIn','Checks to see if the user is logged in. If not, redirects to Unauthorized Page.',0,1,0,'/**\n * isLoggedIn\n *\n * Copyright 2009-2011 by Shaun McCormick <shaun@modx.com>\n *\n * isLoggedIn is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * isLoggedIn is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * isLoggedIn; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx isLoggedIn Snippet. Will check to see if user is logged into the current\n * or specific context. If not, redirects to unauthorized page.\n *\n * @package login\n */\n/* setup default properties */\n$ctxs = !empty($ctxs) ? $ctxs : $modx->context->get(\'key\');\nif (!is_array($ctxs)) $ctxs = explode(\',\',$ctxs);\n\nif (!$modx->user->hasSessionContext($ctxs)) {\n    if (!empty($redirectTo)) {\n        $redirectParams = !empty($redirectParams) ? $modx->fromJSON($redirectParams) : \'\';\n        $url = $modx->makeUrl($redirectTo,\'\',$redirectParams,\'full\');\n        $modx->sendRedirect($url);\n    } else {\n        $modx->sendUnauthorizedPage();\n    }\n}\nreturn \'\';',0,'a:3:{s:8:\"contexts\";a:7:{s:4:\"name\";s:8:\"contexts\";s:4:\"desc\";s:29:\"prop_isloggedin.contexts_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"redirectTo\";a:7:{s:4:\"name\";s:10:\"redirectTo\";s:4:\"desc\";s:31:\"prop_isloggedin.redirectto_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:14:\"redirectParams\";a:7:{s:4:\"name\";s:14:\"redirectParams\";s:4:\"desc\";s:35:\"prop_isloggedin.redirectparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(6,0,0,'Login','Displays a login and logout form.',0,1,0,'/**\n * Login\n *\n * Copyright 2010 by Jason Coward <jason@modx.com> and Shaun McCormick\n * <shaun@modx.com>\n *\n * Login is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * Login is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Login; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx Login Snippet\n *\n * This snippet handles login POSTs, sending the user back to where they came from or to a specific\n * location if specified in the POST.\n *\n * @package login\n *\n * @property textfield actionKey The REQUEST variable containing the action to take.\n * @property textfield loginKey The actionKey for login.\n * @property textfield logoutKey The actionKey for logout.\n * @property boolean loginViaEmail Enable login via username or email address (either one!) [default: false]\n * @property list tplType The type of template to expect for the views:\n *  modChunk - name of chunk to use\n *  file - full path to file to use as tpl\n *  embedded - the tpl is embedded in the page content\n *  inline - the tpl is inline content provided directly\n * @property textfield loginTpl The template for the login view (content based on tplType)\n * @property textfield logoutTpl The template for the logout view (content based on tplType)\n * @property textfield errTpl The template for any errors that occur when processing an view\n * @property list errTplType The type of template to expect for the error messages:\n *  modChunk - name of chunk to use\n *  file - full path to file to use as tpl\n *  inline - the tpl is inline content provided directly\n * @property integer logoutResourceId An explicit resource id to redirect users to on logout\n * @property string loginMsg The string to use for the login action. Defaults to\n * the lexicon string \"login\".\n * @property string logoutMsg The string to use for the logout action. Defaults\n * to the lexicon string \"login.logout\"\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\nif (!is_object($login) || !($login instanceof Login)) return \'\';\n\n$controller = $login->loadController(\'Login\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:23:{s:9:\"actionKey\";a:7:{s:4:\"name\";s:9:\"actionKey\";s:4:\"desc\";s:25:\"prop_login.actionkey_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:7:\"service\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"loginKey\";a:7:{s:4:\"name\";s:8:\"loginKey\";s:4:\"desc\";s:24:\"prop_login.loginkey_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"login\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"logoutKey\";a:7:{s:4:\"name\";s:9:\"logoutKey\";s:4:\"desc\";s:25:\"prop_login.logoutkey_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:6:\"logout\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"loginViaEmail\";a:7:{s:4:\"name\";s:13:\"loginViaEmail\";s:4:\"desc\";s:29:\"prop_login.loginviaemail_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplType\";a:7:{s:4:\"name\";s:7:\"tplType\";s:4:\"desc\";s:23:\"prop_login.tpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"loginTpl\";a:7:{s:4:\"name\";s:8:\"loginTpl\";s:4:\"desc\";s:24:\"prop_login.logintpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:11:\"lgnLoginTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"logoutTpl\";a:7:{s:4:\"name\";s:9:\"logoutTpl\";s:4:\"desc\";s:25:\"prop_login.logouttpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:12:\"lgnLogoutTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:24:\"prop_login.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"postHooks\";a:7:{s:4:\"name\";s:9:\"postHooks\";s:4:\"desc\";s:25:\"prop_login.posthooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:6:\"errTpl\";a:7:{s:4:\"name\";s:6:\"errTpl\";s:4:\"desc\";s:22:\"prop_login.errtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:9:\"lgnErrTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"errTplType\";a:7:{s:4:\"name\";s:10:\"errTplType\";s:4:\"desc\";s:26:\"prop_login.errtpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"loginResourceId\";a:7:{s:4:\"name\";s:15:\"loginResourceId\";s:4:\"desc\";s:31:\"prop_login.loginresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:19:\"loginResourceParams\";a:7:{s:4:\"name\";s:19:\"loginResourceParams\";s:4:\"desc\";s:35:\"prop_login.loginresourceparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:16:\"logoutResourceId\";a:7:{s:4:\"name\";s:16:\"logoutResourceId\";s:4:\"desc\";s:32:\"prop_login.logoutresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"0\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:20:\"logoutResourceParams\";a:7:{s:4:\"name\";s:20:\"logoutResourceParams\";s:4:\"desc\";s:36:\"prop_login.logoutresourceparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"loginMsg\";a:7:{s:4:\"name\";s:8:\"loginMsg\";s:4:\"desc\";s:24:\"prop_login.loginmsg_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"logoutMsg\";a:7:{s:4:\"name\";s:9:\"logoutMsg\";s:4:\"desc\";s:25:\"prop_login.logoutmsg_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"redirectToPrior\";a:7:{s:4:\"name\";s:15:\"redirectToPrior\";s:4:\"desc\";s:31:\"prop_login.redirecttoprior_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:22:\"redirectToOnFailedAuth\";a:7:{s:4:\"name\";s:22:\"redirectToOnFailedAuth\";s:4:\"desc\";s:38:\"prop_login.redirecttoonfailedauth_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"rememberMeKey\";a:7:{s:4:\"name\";s:13:\"rememberMeKey\";s:4:\"desc\";s:29:\"prop_login.remembermekey_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:10:\"rememberme\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"contexts\";a:7:{s:4:\"name\";s:8:\"contexts\";s:4:\"desc\";s:24:\"prop_login.contexts_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"toPlaceholder\";a:7:{s:4:\"name\";s:13:\"toPlaceholder\";s:4:\"desc\";s:29:\"prop_login.toplaceholder_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:33:\"prop_register.recaptchaTheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:3:\"red\";s:4:\"text\";s:16:\"opt_register.red\";}i:1;a:2:{s:5:\"value\";s:5:\"white\";s:4:\"text\";s:18:\"opt_register.white\";}i:2;a:2:{s:5:\"value\";s:5:\"clean\";s:4:\"text\";s:18:\"opt_register.clean\";}i:3;a:2:{s:5:\"value\";s:10:\"blackglass\";s:4:\"text\";s:23:\"opt_register.blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(7,0,0,'Profile','Displays Profile data for a User.',0,1,0,'/**\n * Profile\n *\n * Copyright 2010 by Shaun McCormick <shaun@modx.com>\n *\n * Register is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Register is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Register; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx Profile Snippet. Sets Profile data for a user to placeholders\n *\n * @package login\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'Profile\');\nreturn $controller->run($scriptProperties);',0,'a:3:{s:6:\"prefix\";a:7:{s:4:\"name\";s:6:\"prefix\";s:4:\"desc\";s:24:\"prop_profile.prefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:4:\"user\";a:7:{s:4:\"name\";s:4:\"user\";s:4:\"desc\";s:22:\"prop_profile.user_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:11:\"useExtended\";a:7:{s:4:\"name\";s:11:\"useExtended\";s:4:\"desc\";s:29:\"prop_profile.useextended_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(8,0,0,'Register','Handles forms for registering users on the front-end.',0,1,0,'/**\n * Register\n *\n * Copyright 2010 by Shaun McCormick <shaun@modx.com>\n *\n * Register is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Register is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Register; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx Register Snippet. Handles User registrations.\n * \n * @package login\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'Register\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:41:{s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:28:\"prop_register.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"usergroups\";a:7:{s:4:\"name\";s:10:\"usergroups\";s:4:\"desc\";s:29:\"prop_register.usergroups_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"usergroupsField\";a:7:{s:4:\"name\";s:15:\"usergroupsField\";s:4:\"desc\";s:34:\"prop_register.usergroupsfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:19:\"submittedResourceId\";a:7:{s:4:\"name\";s:19:\"submittedResourceId\";s:4:\"desc\";s:38:\"prop_register.submittedresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"usernameField\";a:7:{s:4:\"name\";s:13:\"usernameField\";s:4:\"desc\";s:32:\"prop_register.usernamefield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"username\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"passwordField\";a:7:{s:4:\"name\";s:13:\"passwordField\";s:4:\"desc\";s:32:\"prop_register.passwordfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"password\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:16:\"validatePassword\";a:7:{s:4:\"name\";s:16:\"validatePassword\";s:4:\"desc\";s:35:\"prop_register.validatepassword_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:16:\"generatePassword\";a:7:{s:4:\"name\";s:16:\"generatePassword\";s:4:\"desc\";s:35:\"prop_register.generatepassword_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"trimPassword\";a:7:{s:4:\"name\";s:12:\"trimPassword\";s:4:\"desc\";s:31:\"prop_register.trimpassword_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:22:\"ensurePasswordStrength\";a:7:{s:4:\"name\";s:22:\"ensurePasswordStrength\";s:4:\"desc\";s:41:\"prop_register.ensurePasswordStrength_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:21:\"passwordWordSeparator\";a:7:{s:4:\"name\";s:21:\"passwordWordSeparator\";s:4:\"desc\";s:40:\"prop_register.passwordWordSeparator_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\" \";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:30:\"minimumStrongPasswordWordCount\";a:7:{s:4:\"name\";s:30:\"minimumStrongPasswordWordCount\";s:4:\"desc\";s:49:\"prop_register.minimumStrongPasswordWordCount_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"3\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:32:\"maximumPossibleStrongerPasswords\";a:7:{s:4:\"name\";s:32:\"maximumPossibleStrongerPasswords\";s:4:\"desc\";s:51:\"prop_register.maximumPossibleStrongerPasswords_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"25\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:33:\"ensurePasswordStrengthSuggestions\";a:7:{s:4:\"name\";s:33:\"ensurePasswordStrengthSuggestions\";s:4:\"desc\";s:52:\"prop_register.ensurePasswordStrengthSuggestions_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"5\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"allowedFields\";a:7:{s:4:\"name\";s:13:\"allowedFields\";s:4:\"desc\";s:32:\"prop_register.allowedfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"emailField\";a:7:{s:4:\"name\";s:10:\"emailField\";s:4:\"desc\";s:29:\"prop_register.emailfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"persistParams\";a:7:{s:4:\"name\";s:13:\"persistParams\";s:4:\"desc\";s:32:\"prop_register.persistparams_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:27:\"prop_register.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"postHooks\";a:7:{s:4:\"name\";s:9:\"postHooks\";s:4:\"desc\";s:28:\"prop_register.posthooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:11:\"useExtended\";a:7:{s:4:\"name\";s:11:\"useExtended\";s:4:\"desc\";s:30:\"prop_register.useextended_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"excludeExtended\";a:7:{s:4:\"name\";s:15:\"excludeExtended\";s:4:\"desc\";s:34:\"prop_register.excludeextended_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"activation\";a:7:{s:4:\"name\";s:10:\"activation\";s:4:\"desc\";s:29:\"prop_register.activation_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"activationttl\";a:7:{s:4:\"name\";s:13:\"activationttl\";s:4:\"desc\";s:32:\"prop_register.activationttl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"180\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:20:\"activationResourceId\";a:7:{s:4:\"name\";s:20:\"activationResourceId\";s:4:\"desc\";s:39:\"prop_register.activationresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"activationEmail\";a:7:{s:4:\"name\";s:15:\"activationEmail\";s:4:\"desc\";s:34:\"prop_register.activationemail_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:22:\"activationEmailSubject\";a:7:{s:4:\"name\";s:22:\"activationEmailSubject\";s:4:\"desc\";s:41:\"prop_register.activationemailsubject_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:22:\"activationEmailTplType\";a:7:{s:4:\"name\";s:22:\"activationEmailTplType\";s:4:\"desc\";s:41:\"prop_register.activationemailtpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:18:\"activationEmailTpl\";a:7:{s:4:\"name\";s:18:\"activationEmailTpl\";s:4:\"desc\";s:37:\"prop_register.activationemailtpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:19:\"lgnActivateEmailTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:21:\"activationEmailTplAlt\";a:7:{s:4:\"name\";s:21:\"activationEmailTplAlt\";s:4:\"desc\";s:40:\"prop_register.activationemailtplalt_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:19:\"moderatedResourceId\";a:7:{s:4:\"name\";s:19:\"moderatedResourceId\";s:4:\"desc\";s:38:\"prop_register.moderatedresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:26:\"removeExpiredRegistrations\";a:7:{s:4:\"name\";s:26:\"removeExpiredRegistrations\";s:4:\"desc\";s:45:\"prop_register.removeexpiredregistrations_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:36:\"prop_register.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:14:\"recaptchaTheme\";a:7:{s:4:\"name\";s:14:\"recaptchaTheme\";s:4:\"desc\";s:33:\"prop_register.recaptchaTheme_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:3:\"red\";s:4:\"text\";s:16:\"opt_register.red\";}i:1;a:2:{s:5:\"value\";s:5:\"white\";s:4:\"text\";s:18:\"opt_register.white\";}i:2;a:2:{s:5:\"value\";s:5:\"clean\";s:4:\"text\";s:18:\"opt_register.clean\";}i:3;a:2:{s:5:\"value\";s:10:\"blackglass\";s:4:\"text\";s:23:\"opt_register.blackglass\";}}s:5:\"value\";s:5:\"clean\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMinRange\";a:7:{s:4:\"name\";s:12:\"mathMinRange\";s:4:\"desc\";s:31:\"prop_register.mathminrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:2:\"10\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathMaxRange\";a:7:{s:4:\"name\";s:12:\"mathMaxRange\";s:4:\"desc\";s:31:\"prop_register.mathmaxrange_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"100\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"mathField\";a:7:{s:4:\"name\";s:9:\"mathField\";s:4:\"desc\";s:28:\"prop_register.mathfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:4:\"math\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp1Field\";a:7:{s:4:\"name\";s:12:\"mathOp1Field\";s:4:\"desc\";s:31:\"prop_register.mathop1field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op1\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"mathOp2Field\";a:7:{s:4:\"name\";s:12:\"mathOp2Field\";s:4:\"desc\";s:31:\"prop_register.mathop2field_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:3:\"op2\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:17:\"mathOperatorField\";a:7:{s:4:\"name\";s:17:\"mathOperatorField\";s:4:\"desc\";s:36:\"prop_register.mathoperatorfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:8:\"operator\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:27:\"preserveFieldsAfterRegister\";a:7:{s:4:\"name\";s:27:\"preserveFieldsAfterRegister\";s:4:\"desc\";s:46:\"prop_register.preservefieldsafterregister_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:26:\"redirectUnsetDefaultParams\";a:7:{s:4:\"name\";s:26:\"redirectUnsetDefaultParams\";s:4:\"desc\";s:44:\"prop_register.redirectUnsetDefaultParam_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:0;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(9,0,0,'ResetPassword','Resets a password from a confirmation email.',0,1,0,'/**\n * ResetPassword\n *\n * Copyright 2010 by Shaun McCormick <shaun@modx.com>\n *\n * ResetPassword is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * ResetPassword is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * ResetPassword; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx ResetPassword Snippet. Snippet to place on an activation\n * page that the user using the ForgotPassword snippet would be sent to via the\n * reset email.\n *\n * @package login\n */\nif (empty($_REQUEST[\'lp\']) || empty($_REQUEST[\'lu\'])) {\n    return \'\';\n}\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'ResetPassword\');\n$output = $controller->run($scriptProperties);\nreturn $output;',0,'a:3:{s:3:\"tpl\";a:7:{s:4:\"name\";s:3:\"tpl\";s:4:\"desc\";s:27:\"prop_resetpassword.tpl_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:15:\"lgnResetPassTpl\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:7:\"tplType\";a:7:{s:4:\"name\";s:7:\"tplType\";s:4:\"desc\";s:31:\"prop_resetpassword.tpltype_desc\";s:4:\"type\";s:4:\"list\";s:7:\"options\";a:4:{i:0;a:2:{s:5:\"value\";s:8:\"modChunk\";s:4:\"text\";s:18:\"opt_register.chunk\";}i:1;a:2:{s:5:\"value\";s:4:\"file\";s:4:\"text\";s:17:\"opt_register.file\";}i:2;a:2:{s:5:\"value\";s:6:\"inline\";s:4:\"text\";s:19:\"opt_register.inline\";}i:3;a:2:{s:5:\"value\";s:8:\"embedded\";s:4:\"text\";s:21:\"opt_register.embedded\";}}s:5:\"value\";s:8:\"modChunk\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"loginResourceId\";a:7:{s:4:\"name\";s:15:\"loginResourceId\";s:4:\"desc\";s:39:\"prop_resetpassword.loginresourceid_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:1:\"1\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(10,0,0,'UpdateProfile','Allows front-end updating of a users own profile.',0,1,0,'/**\n * Login\n *\n * Copyright 2010-2012 by Shaun McCormick <shaun+login@modx.com>\n *\n * Login is free software; you can redistribute it and/or modify it under the\n * terms of the GNU General Public License as published by the Free Software\n * Foundation; either version 2 of the License, or (at your option) any later\n * version.\n *\n * Login is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * Login; if not, write to the Free Software Foundation, Inc., 59 Temple\n * Place, Suite 330, Boston, MA 02111-1307 USA\n *\n * @package login\n */\n/**\n * MODx UpdateProfile Snippet. Handles updating of User Profiles.\n *\n * @var modX $modx\n * @var Login $login\n * @var array $scriptProperties\n * \n * @package login\n */\nrequire_once $modx->getOption(\'login.core_path\',null,$modx->getOption(\'core_path\').\'components/login/\').\'model/login/login.class.php\';\n$login = new Login($modx,$scriptProperties);\n\n$controller = $login->loadController(\'UpdateProfile\');\nreturn $controller->run($scriptProperties);',0,'a:13:{s:9:\"submitVar\";a:7:{s:4:\"name\";s:9:\"submitVar\";s:4:\"desc\";s:33:\"prop_updateprofile.submitvar_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:4:\"user\";a:7:{s:4:\"name\";s:4:\"user\";s:4:\"desc\";s:28:\"prop_updateprofile.user_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"redirectToLogin\";a:7:{s:4:\"name\";s:15:\"redirectToLogin\";s:4:\"desc\";s:39:\"prop_updateprofile.redirecttologin_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"reloadOnSuccess\";a:7:{s:4:\"name\";s:15:\"reloadOnSuccess\";s:4:\"desc\";s:39:\"prop_updateprofile.reloadonsuccess_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:12:\"syncUsername\";a:7:{s:4:\"name\";s:12:\"syncUsername\";s:4:\"desc\";s:36:\"prop_updateprofile.syncusername_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:10:\"emailField\";a:7:{s:4:\"name\";s:10:\"emailField\";s:4:\"desc\";s:34:\"prop_updateprofile.emailfield_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:5:\"email\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:11:\"useExtended\";a:7:{s:4:\"name\";s:11:\"useExtended\";s:4:\"desc\";s:35:\"prop_updateprofile.useextended_desc\";s:4:\"type\";s:13:\"combo-boolean\";s:7:\"options\";s:0:\"\";s:5:\"value\";b:1;s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:15:\"excludeExtended\";a:7:{s:4:\"name\";s:15:\"excludeExtended\";s:4:\"desc\";s:39:\"prop_updateprofile.excludeextended_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:13:\"allowedFields\";a:7:{s:4:\"name\";s:13:\"allowedFields\";s:4:\"desc\";s:37:\"prop_updateprofile.allowedfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:21:\"allowedExtendedFields\";a:7:{s:4:\"name\";s:21:\"allowedExtendedFields\";s:4:\"desc\";s:45:\"prop_updateprofile.allowedextendedfields_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:8:\"preHooks\";a:7:{s:4:\"name\";s:8:\"preHooks\";s:4:\"desc\";s:32:\"prop_updateprofile.prehooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:9:\"postHooks\";a:7:{s:4:\"name\";s:9:\"postHooks\";s:4:\"desc\";s:33:\"prop_updateprofile.posthooks_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}s:17:\"placeholderPrefix\";a:7:{s:4:\"name\";s:17:\"placeholderPrefix\";s:4:\"desc\";s:41:\"prop_updateprofile.placeholderprefix_desc\";s:4:\"type\";s:9:\"textfield\";s:7:\"options\";s:0:\"\";s:5:\"value\";s:0:\"\";s:7:\"lexicon\";s:16:\"login:properties\";s:4:\"area\";s:0:\"\";}}','',0,''),(11,0,0,'getImageList','',0,2,0,'/**\n * getImageList\n *\n * Copyright 2009-2014 by Bruno Perner <b.perner@gmx.de>\n *\n * getImageList is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getImageList is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getImageList; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getImageList\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.4\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2009-2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: <ul>[[!getImageList? &tvname=`myTV`&tpl=`@CODE:<li>[[+idx]]<img src=\"[[+imageURL]]\"/><p>[[+imageAlt]]</p></li>`]]</ul>*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$inherit_children_tvname = $modx->getOption(\'inherit_children_tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$wrapperTpl = $modx->getOption(\'wrapperTpl\', $scriptProperties, \'\');\n$emptyTpl = $modx->getOption(\'emptyTpl\', $scriptProperties, \'\'); \n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n$reverse = $modx->getOption(\'reverse\', $scriptProperties, \'0\');\n$sumFields = $modx->getOption(\'sumFields\', $scriptProperties, \'\');\n$sumPrefix = $modx->getOption(\'sumPrefix\', $scriptProperties, \'summary_\');\n$addfields = $modx->getOption(\'addfields\', $scriptProperties, \'\');\n$addfields = !empty($addfields) ? explode(\',\', $addfields) : null;\n//split json into parts\n$splits = $modx->fromJson($modx->getOption(\'splits\', $scriptProperties, 0));\n$splitTpl = $modx->getOption(\'splitTpl\', $scriptProperties, \'\');\n$splitSeparator = $modx->getOption(\'splitSeparator\', $scriptProperties, \'\');\n$inheritFrom = $modx->getOption(\'inheritFrom\', $scriptProperties, \'\'); //commaseparated list of resource-ids or/and the keyword \'parents\' where to inherit from\n$inheritFrom = !empty($inheritFrom) ? explode(\',\', $inheritFrom) : \'\';\n\n$modx->setPlaceholder(\'docid\', $docid);\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : \'web\';\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $modx->getOption(\'configs\', $properties, \'\');\n        if (!empty($migx->config[\'configs\'])) {\n            $migx->loadConfigs();\n            // get tabs from file or migx-config-table\n            $formtabs = $migx->getTabs();\n        }\n        if (empty($formtabs) && isset($properties[\'formtabs\'])) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        if (!empty($properties[\'basePath\'])) {\n            if ($properties[\'autoResourceFolders\'] == \'true\') {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'basePath\'] . $docid . \'/\';\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'] . $docid . \'/\';\n            } else {\n                $scriptProperties[\'base_path\'] = $base_path . $properties[\'base_path\'];\n                $scriptProperties[\'base_url\'] = $base_url . $properties[\'basePath\'];\n            }\n        }\n        if ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\'])) {\n            $jsonVarKey = $properties[\'jsonvarkey\'];\n            $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n        }\n\n        if (empty($outputvalue)) {\n            $outputvalue = $tv->renderOutput($docid);\n            if (empty($outputvalue) && !empty($inheritFrom)) {\n                foreach ($inheritFrom as $from) {\n                    if ($from == \'parents\') {\n                        if (!empty($inherit_children_tvname)){\n                            //try to get items from optional MIGX-TV for children\n                            if ($inh_tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inherit_children_tvname))) {\n                                $outputvalue = $inh_tv->processInheritBinding(\'\', $docid);    \n                            }\n                        }\n                        $outputvalue = empty($outputvalue) ? $tv->processInheritBinding(\'\', $docid) : $outputvalue;\n                    } else {\n                        $outputvalue = $tv->renderOutput($from);\n                    }\n                    if (!empty($outputvalue)) {\n                        break;\n                    }\n                }\n            }\n        }\n\n\n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        if ($migx->source = $tv->getSource($migx->working_context, false)) {\n            $migx->source->initialize();\n        }\n\n    }\n\n\n}\n\nif (empty($outputvalue)) {\n    $modx->setPlaceholder($totalVar, 0);\n    return \'\';\n}\n\n//echo $outputvalue.\'<br/><br/>\';\n\n$items = $modx->fromJSON($outputvalue);\n\n// where filter\nif (is_array($where) && count($where) > 0) {\n    $items = $migx->filterItems($where, $items);\n}\n$modx->setPlaceholder($totalVar, count($items));\n\nif (!empty($reverse)) {\n    $items = array_reverse($items);\n}\n\n// sort items\nif (is_array($sort) && count($sort) > 0) {\n    $items = $migx->sortDbResult($items, $sort);\n}\n\n$summaries = array();\n$output = \'\';\n$items = $offset > 0 ? array_slice($items, $offset) : $items;\n$count = count($items);\n\nif ($count > 0) {\n    $limit = $limit == 0 || $limit > $count ? $count : $limit;\n    $preselectLimit = $preselectLimit > $count ? $count : $preselectLimit;\n    //preselect important items\n    $preitems = array();\n    if ($randomize && $preselectLimit > 0) {\n        for ($i = 0; $i < $preselectLimit; $i++) {\n            $preitems[] = $items[$i];\n            unset($items[$i]);\n        }\n        $limit = $limit - count($preitems);\n    }\n\n    //shuffle items\n    if ($randomize) {\n        shuffle($items);\n    }\n\n    //limit items\n    $count = count($items);\n    $tempitems = array();\n\n    for ($i = 0; $i < $limit; $i++) {\n        if ($i >= $count) {\n            break;\n        }\n        $tempitems[] = $items[$i];\n    }\n    $items = $tempitems;\n\n    //add preselected items and schuffle again\n    if ($randomize && $preselectLimit > 0) {\n        $items = array_merge($preitems, $items);\n        shuffle($items);\n    }\n\n    $properties = array();\n    foreach ($scriptProperties as $property => $value) {\n        $properties[\'property.\' . $property] = $value;\n    }\n\n    $idx = 0;\n    $output = array();\n    $template = array();\n    $count = count($items);\n\n    foreach ($items as $key => $item) {\n        $formname = isset($item[\'MIGX_formname\']) ? $item[\'MIGX_formname\'] . \'_\' : \'\';\n        $fields = array();\n        foreach ($item as $field => $value) {\n            if (is_array($value)) {\n                if (is_array($value[0])) {\n                    //nested array - convert to json\n                    $value = $modx->toJson($value);\n                } else {\n                    $value = implode(\'||\', $value); //handle arrays (checkboxes, multiselects)\n                }\n            }\n\n\n            $inputTVkey = $formname . $field;\n\n            if ($processTVs && isset($inputTvs[$inputTVkey])) {\n                if (isset($inputTvs[$inputTVkey][\'inputTV\']) && $tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$inputTVkey][\'inputTV\']))) {\n\n                } else {\n                    $tv = $modx->newObject(\'modTemplateVar\');\n                    $tv->set(\'type\', $inputTvs[$inputTVkey][\'inputTVtype\']);\n                }\n                $inputTV = $inputTvs[$inputTVkey];\n\n                $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n                //don\'t manipulate any urls here\n                $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n                $tv->set(\'default_text\', $value);\n                $value = $tv->renderOutput($docid);\n                //set option back\n                $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n                //now manipulate urls\n                if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                    $mTypes = explode(\',\', $mTypes);\n                    if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                        //$value = $mediasource->prepareOutputUrl($value);\n                        $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                    }\n                }\n\n            }\n            $fields[$field] = $value;\n\n        }\n\n        if (!empty($addfields)) {\n            foreach ($addfields as $addfield) {\n                $addfield = explode(\':\', $addfield);\n                $addname = $addfield[0];\n                $adddefault = isset($addfield[1]) ? $addfield[1] : \'\';\n                $fields[$addname] = $adddefault;\n            }\n        }\n\n        if (!empty($sumFields)) {\n            $sumFields = is_array($sumFields) ? $sumFields : explode(\',\', $sumFields);\n            foreach ($sumFields as $sumField) {\n                if (isset($fields[$sumField])) {\n                    $summaries[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField] + $fields[$sumField];\n                    $fields[$sumPrefix . $sumField] = $summaries[$sumPrefix . $sumField];\n                }\n            }\n        }\n\n\n        if ($toJsonPlaceholder) {\n            $output[] = $fields;\n        } else {\n            $fields[\'_alt\'] = $idx % 2;\n            $idx++;\n            $fields[\'_first\'] = $idx == 1 ? true : \'\';\n            $fields[\'_last\'] = $idx == $limit ? true : \'\';\n            $fields[\'idx\'] = $idx;\n            $rowtpl = \'\';\n            //get changing tpls from field\n            if (substr($tpl, 0, 7) == \"@FIELD:\") {\n                $tplField = substr($tpl, 7);\n                $rowtpl = $fields[$tplField];\n            }\n\n            if ($fields[\'_first\'] && !empty($tplFirst)) {\n                $rowtpl = $tplFirst;\n            }\n            if ($fields[\'_last\'] && empty($rowtpl) && !empty($tplLast)) {\n                $rowtpl = $tplLast;\n            }\n            $tplidx = \'tpl_\' . $idx;\n            if (empty($rowtpl) && !empty($$tplidx)) {\n                $rowtpl = $$tplidx;\n            }\n            if ($idx > 1 && empty($rowtpl)) {\n                $divisors = $migx->getDivisors($idx);\n                if (!empty($divisors)) {\n                    foreach ($divisors as $divisor) {\n                        $tplnth = \'tpl_n\' . $divisor;\n                        if (!empty($$tplnth)) {\n                            $rowtpl = $$tplnth;\n                            if (!empty($rowtpl)) {\n                                break;\n                            }\n                        }\n                    }\n                }\n            }\n\n            if ($count == 1 && isset($tpl_oneresult)) {\n                $rowtpl = $tpl_oneresult;\n            }\n\n            $fields = array_merge($fields, $properties);\n\n            if (!empty($rowtpl)) {\n                $template = $migx->getTemplate($tpl, $template);\n                $fields[\'_tpl\'] = $template[$tpl];\n            } else {\n                $rowtpl = $tpl;\n\n            }\n            $template = $migx->getTemplate($rowtpl, $template);\n\n\n            if ($template[$rowtpl]) {\n                $chunk = $modx->newObject(\'modChunk\');\n                $chunk->setCacheable(false);\n                $chunk->setContent($template[$rowtpl]);\n\n\n                if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField])) {\n                    $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n                } else {\n                    $output[] = $chunk->process($fields);\n                }\n            } else {\n                if (!empty($placeholdersKeyField)) {\n                    $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                } else {\n                    $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n                }\n            }\n        }\n\n\n    }\n}\n\nif (count($summaries) > 0) {\n    $modx->toPlaceholders($summaries);\n}\n\n\nif ($toJsonPlaceholder) {\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders)) {\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\n\nif ($count > 0 && $splits > 0) {\n    $size = ceil($count / $splits);\n    $chunks = array_chunk($output, $size);\n    $output = array();\n    foreach ($chunks as $chunk) {\n        $o = implode($outputSeparator, $chunk);\n        $output[] = $modx->getChunk($splitTpl, array(\'output\' => $o));\n    }\n    $outputSeparator = $splitSeparator;\n}\n\nif (is_array($output)) {\n    $o = implode($outputSeparator, $output);\n} else {\n    $o = $output;\n}\n\nif (!empty($o) && !empty($wrapperTpl)) {\n    $template = $migx->getTemplate($wrapperTpl);\n    if ($template[$wrapperTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$wrapperTpl]);\n        $properties[\'output\'] = $o;\n        $o = $chunk->process($properties);\n    }\n}\n\nif (empty($o) && !empty($emptyTpl)) {\n    $template = $migx->getTemplate($emptyTpl);\n    if ($template[$emptyTpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$emptyTpl]);\n        $o = $chunk->process($properties);\n    }\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;',0,'a:0:{}','',0,''),(12,0,0,'migxGetRelations','',0,2,0,'$id = $modx->getOption(\'id\', $scriptProperties, $modx->resource->get(\'id\'));\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, \'\');\n$element = $modx->getOption(\'element\', $scriptProperties, \'getResources\');\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \',\');\n$sourceWhere = $modx->getOption(\'sourceWhere\', $scriptProperties, \'\');\n$ignoreRelationIfEmpty = $modx->getOption(\'ignoreRelationIfEmpty\', $scriptProperties, false);\n$inheritFromParents = $modx->getOption(\'inheritFromParents\', $scriptProperties, false);\n$parentIDs = $inheritFromParents ? array_merge(array($id), $modx->getParentIds($id)) : array($id);\n\n$packageName = \'resourcerelations\';\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$classname = \'rrResourceRelation\';\n$output = \'\';\n\nforeach ($parentIDs as $id) {\n    if (!empty($id)) {\n        $output = \'\';\n                \n        $c = $modx->newQuery($classname, array(\'target_id\' => $id, \'published\' => \'1\'));\n        $c->select($modx->getSelectColumns($classname, $classname));\n\n        if (!empty($sourceWhere)) {\n            $sourceWhere_ar = $modx->fromJson($sourceWhere);\n            if (is_array($sourceWhere_ar)) {\n                $where = array();\n                foreach ($sourceWhere_ar as $key => $value) {\n                    $where[\'Source.\' . $key] = $value;\n                }\n                $joinclass = \'modResource\';\n                $joinalias = \'Source\';\n                $selectfields = \'id\';\n                $selectfields = !empty($selectfields) ? explode(\',\', $selectfields) : null;\n                $c->leftjoin($joinclass, $joinalias);\n                $c->select($modx->getSelectColumns($joinclass, $joinalias, $joinalias . \'_\', $selectfields));\n                $c->where($where);\n            }\n        }\n\n        //$c->prepare(); echo $c->toSql();\n        if ($c->prepare() && $c->stmt->execute()) {\n            $collection = $c->stmt->fetchAll(PDO::FETCH_ASSOC);\n        }\n        \n        foreach ($collection as $row) {\n            $ids[] = $row[\'source_id\'];\n        }\n        $output = implode($outputSeparator, $ids);\n    }\n    if (!empty($output)){\n        break;\n    }\n}\n\n\nif (!empty($element)) {\n    if (empty($output) && $ignoreRelationIfEmpty) {\n        return $modx->runSnippet($element, $scriptProperties);\n    } else {\n        $scriptProperties[\'resources\'] = $output;\n        $scriptProperties[\'parents\'] = \'9999999\';\n        return $modx->runSnippet($element, $scriptProperties);\n    }\n\n\n}\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;',0,'','',0,''),(13,0,0,'migx','',0,2,0,'$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$limit = $modx->getOption(\'limit\', $scriptProperties, \'0\');\n$offset = $modx->getOption(\'offset\', $scriptProperties, 0);\n$totalVar = $modx->getOption(\'totalVar\', $scriptProperties, \'total\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$preselectLimit = $modx->getOption(\'preselectLimit\', $scriptProperties, 0); // when random preselect important images\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sortConfig = $modx->getOption(\'sortConfig\', $scriptProperties, \'\');\n$sortConfig = !empty($sortConfig) ? $modx->fromJSON($sortConfig) : array();\n$configs = $modx->getOption(\'configs\', $scriptProperties, \'\');\n$configs = !empty($configs) ? explode(\',\',$configs):array();\n$toSeparatePlaceholders = $modx->getOption(\'toSeparatePlaceholders\', $scriptProperties, false);\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$outputSeparator = $modx->getOption(\'outputSeparator\', $scriptProperties, \'\');\n//$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'MIGX_id\');\n$placeholdersKeyField = $modx->getOption(\'placeholdersKeyField\', $scriptProperties, \'id\');\n$toJsonPlaceholder = $modx->getOption(\'toJsonPlaceholder\', $scriptProperties, false);\n$jsonVarKey = $modx->getOption(\'jsonVarKey\', $scriptProperties, \'migx_outputvalue\');\n$outputvalue = $modx->getOption(\'value\', $scriptProperties, \'\');\n$outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n$docidVarKey = $modx->getOption(\'docidVarKey\', $scriptProperties, \'migx_docid\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$docid = isset($_REQUEST[$docidVarKey]) ? $_REQUEST[$docidVarKey] : $docid;\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$base_path = $modx->getOption(\'base_path\', null, MODX_BASE_PATH);\n$base_url = $modx->getOption(\'base_url\', null, MODX_BASE_URL);\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\nif (!empty($tvname))\n{\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname)))\n    {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'configs\']) ? $properties : $tv->getProperties();\n        $cfgs = $modx->getOption(\'configs\',$properties,\'\');\n        if (!empty($cfgs)){\n            $cfgs = explode(\',\',$cfgs);\n            $configs = array_merge($configs,$cfgs);\n           \n        }\n        \n    }\n}\n\n\n\n//$migx->config[\'configs\'] = implode(\',\',$configs);\n$migx->loadConfigs(false,true,array(\'configs\'=>implode(\',\',$configs)));\n$migx->customconfigs = array_merge($migx->customconfigs,$scriptProperties);\n\n\n\n// get tabs from file or migx-config-table\n$formtabs = $migx->getTabs();\nif (empty($formtabs))\n{\n    //try to get formtabs and its fields from properties\n    $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n}\n\nif ($jsonVarKey == \'migx_outputvalue\' && !empty($properties[\'jsonvarkey\']))\n{\n    $jsonVarKey = $properties[\'jsonvarkey\'];\n    $outputvalue = isset($_REQUEST[$jsonVarKey]) ? $_REQUEST[$jsonVarKey] : $outputvalue;\n}\n\n$outputvalue = $tv && empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n/*\n*   get inputTvs \n*/\n$inputTvs = array();\nif (is_array($formtabs))\n{\n\n    //multiple different Forms\n    // Note: use same field-names and inputTVs in all forms\n    $inputTvs = $migx->extractInputTvs($formtabs);\n}\n\nif ($tv)\n{\n    $migx->source = $tv->getSource($migx->working_context, false);\n}\n\n//$task = $modx->migx->getTask();\n$filename = \'getlist.php\';\n$processorspath = $migx->config[\'processorsPath\'] . \'mgr/\';\n$filenames = array();\n$scriptProperties[\'start\'] = $modx->getOption(\'offset\', $scriptProperties, 0);\nif ($processor_file = $migx->findProcessor($processorspath, $filename, $filenames))\n{\n    include ($processor_file);\n    //todo: add getlist-processor for default-MIGX-TV\n}\n\n$items = isset($rows) && is_array($rows) ? $rows : array();\n$modx->setPlaceholder($totalVar, isset($count) ? $count : 0);\n\n$properties = array();\nforeach ($scriptProperties as $property => $value)\n{\n    $properties[\'property.\' . $property] = $value;\n}\n\n$idx = 0;\n$output = array();\nforeach ($items as $key => $item)\n{\n\n    $fields = array();\n    foreach ($item as $field => $value)\n    {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field]))\n        {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\'])))\n            {\n\n            } else\n            {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv))\n            {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes))\n                {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n    if ($toJsonPlaceholder)\n    {\n        $output[] = $fields;\n    } else\n    {\n        $fields[\'_alt\'] = $idx % 2;\n        $idx++;\n        $fields[\'_first\'] = $idx == 1 ? true : \'\';\n        $fields[\'_last\'] = $idx == $limit ? true : \'\';\n        $fields[\'idx\'] = $idx;\n        $rowtpl = $tpl;\n        //get changing tpls from field\n        if (substr($tpl, 0, 7) == \"@FIELD:\")\n        {\n            $tplField = substr($tpl, 7);\n            $rowtpl = $fields[$tplField];\n        }\n\n        if (!isset($template[$rowtpl]))\n        {\n            if (substr($rowtpl, 0, 6) == \"@FILE:\")\n            {\n                $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n            } elseif (substr($rowtpl, 0, 6) == \"@CODE:\")\n            {\n                $template[$rowtpl] = substr($tpl, 6);\n            } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true))\n            {\n                $template[$rowtpl] = $chunk->getContent();\n            } else\n            {\n                $template[$rowtpl] = false;\n            }\n        }\n\n        $fields = array_merge($fields, $properties);\n\n        if ($template[$rowtpl])\n        {\n            $chunk = $modx->newObject(\'modChunk\');\n            $chunk->setCacheable(false);\n            $chunk->setContent($template[$rowtpl]);\n            if (!empty($placeholdersKeyField) && isset($fields[$placeholdersKeyField]))\n            {\n                $output[$fields[$placeholdersKeyField]] = $chunk->process($fields);\n            } else\n            {\n                $output[] = $chunk->process($fields);\n            }\n        } else\n        {\n            if (!empty($placeholdersKeyField))\n            {\n                $output[$fields[$placeholdersKeyField]] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            } else\n            {\n                $output[] = \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n            }\n        }\n    }\n\n\n}\n\n\nif ($toJsonPlaceholder)\n{\n    $modx->setPlaceholder($toJsonPlaceholder, $modx->toJson($output));\n    return \'\';\n}\n\nif (!empty($toSeparatePlaceholders))\n{\n    $modx->toPlaceholders($output, $toSeparatePlaceholders);\n    return \'\';\n}\n/*\nif (!empty($outerTpl))\n$o = parseTpl($outerTpl, array(\'output\'=>implode($outputSeparator, $output)));\nelse \n*/\nif (is_array($output))\n{\n    $o = implode($outputSeparator, $output);\n} else\n{\n    $o = $output;\n}\n\nif (!empty($toPlaceholder))\n{\n    $modx->setPlaceholder($toPlaceholder, $o);\n    return \'\';\n}\n\nreturn $o;',0,'','',0,''),(14,0,0,'migxLoopCollection','',0,2,0,'/*\ngetXpdoInstanceAndAddPackage - properties\n\n$prefix\n$usecustomprefix\n$packageName\n\n\nprepareQuery - properties:\n\n$limit\n$offset\n$totalVar\n$where\n$queries\n$sortConfig\n$groupby\n$joins\n$selectfields\n$classname\n$debug\n\nrenderOutput - properties:\n\n$tpl\n$wrapperTpl\n$toSeparatePlaceholders\n$toPlaceholder\n$outputSeparator\n$placeholdersKeyField\n$toJsonPlaceholder\n$jsonVarKey\n$addfields\n\n*/\n\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n//$modx->migx = &$migx;\n\n$xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n\n$defaultcontext = \'web\';\n$migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n\n$c = $migx->prepareQuery($xpdo,$scriptProperties);\n$rows = $migx->getCollection($c);\n\n$output = $migx->renderOutput($rows,$scriptProperties);\n\nreturn $output;',0,'','',0,''),(15,0,0,'migxResourceMediaPath','',0,2,0,'/**\n * @name migxResourceMediaPath\n * @description Dynamically calculates the upload path for a given resource\n * \n * This Snippet is meant to dynamically calculate your baseBath attribute\n * for custom Media Sources.  This is useful if you wish to shepard uploaded\n * images to a folder dedicated to a given resource.  E.g. page 123 would \n * have its own images that page 456 could not reference.\n *\n * USAGE:\n * [[migxResourceMediaPath? &pathTpl=`assets/businesses/{id}/`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}`]]\n * [[migxResourceMediaPath? &pathTpl=`assets/test/{breadcrumb}` &breadcrumbdepth=`2`]]\n *\n * PARAMETERS\n * &pathTpl string formatting string specifying the file path. \n *		Relative to MODX base_path\n *		Available placeholders: {id}, {pagetitle}, {parent}\n * &docid (optional) integer page id\n * &createFolder (optional) boolean whether or not to create\n */\n$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$docid = $modx->getOption(\'docid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, false);\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n\n$path = \'\';\n$createpath = false;\n\nif (empty($pathTpl)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: pathTpl not specified.\');\n    return;\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'mediasource_docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'mediasource_docid\');\n}\n\nif (empty($docid) && $modx->getPlaceholder(\'docid\')) {\n    // placeholder was set by some script\n    // warning: the parser may not render placeholders, e.g. &docid=`[[*parent]]` may fail\n    $docid = $modx->getPlaceholder(\'docid\');\n}\nif (empty($docid)) {\n\n    //on frontend\n    if (is_object($modx->resource)) {\n        $docid = $modx->resource->get(\'id\');\n    }\n    //on backend\n    else {\n        $createpath = $createfolder;\n        // We do this to read the &id param from an Ajax request\n        $parsedUrl = parse_url($_SERVER[\'HTTP_REFERER\']);\n        parse_str($parsedUrl[\'query\'], $parsedQuery);\n\n        if (isset($parsedQuery[\'amp;id\'])) {\n            $docid = (int)$parsedQuery[\'amp;id\'];\n        } elseif (isset($parsedQuery[\'id\'])) {\n            $docid = (int)$parsedQuery[\'id\'];\n        }\n    }\n}\n\nif (empty($docid)) {\n    $modx->log(MODX_LOG_LEVEL_ERROR, \'[migxResourceMediaPath]: docid could not be determined.\');\n    return;\n}\n\nif ($resource = $modx->getObject(\'modResource\', $docid)) {\n    $path = $pathTpl;\n    $ultimateParent = \'\';\n    if (strstr($path, \'{breadcrumb}\') || strstr($path, \'{ultimateparent}\')) {\n        $depth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, 10);\n        $ctx = $resource->get(\'context_key\');\n        $parentids = $modx->getParentIds($docid, $depth, array(\'context\' => $ctx));\n        $breadcrumbdepth = $modx->getOption(\'breadcrumbdepth\', $scriptProperties, count($parentids));\n        $breadcrumbdepth = $breadcrumbdepth > count($parentids) ? count($parentids) : $breadcrumbdepth;\n        if (count($parentids) > 1) {\n            $parentids = array_reverse($parentids);\n            $parentids[] = $docid;\n            $ultimateParent = $parentids[1];\n        } else {\n            $ultimateParent = $docid;\n            $parentids = array();\n            $parentids[] = $docid;\n        }\n    }\n\n    if (strstr($path, \'{breadcrumb}\')) {\n        $breadcrumbpath = \'\';\n        for ($i = 1; $i <= $breadcrumbdepth; $i++) {\n            $breadcrumbpath .= $parentids[$i] . \'/\';\n        }\n        $path = str_replace(\'{breadcrumb}\', $breadcrumbpath, $path);\n    }\n    \n    if (!empty($tvname)){\n        $path = str_replace(\'{tv_value}\', $resource->getTVValue($tvname), $path);    \n    }\n    $path = str_replace(\'{id}\', $docid, $path);\n    $path = str_replace(\'{pagetitle}\', $resource->get(\'pagetitle\'), $path);\n    $path = str_replace(\'{alias}\', $resource->get(\'alias\'), $path);\n    $path = str_replace(\'{parent}\', $resource->get(\'parent\'), $path);\n    $path = str_replace(\'{context_key}\', $resource->get(\'context_key\'), $path);\n    $path = str_replace(\'{ultimateparent}\', $ultimateParent, $path);\n    if ($template = $resource->getOne(\'Template\')) {\n        $path = str_replace(\'{templatename}\', $template->get(\'templatename\'), $path);\n    }\n    if ($user = $modx->user) {\n        $path = str_replace(\'{username}\', $modx->user->get(\'username\'), $path);\n    }\n\n    $fullpath = $modx->getOption(\'base_path\') . $path;\n\n    if ($createpath && !file_exists($fullpath)) {\n\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        } else {\n            chmod($fullpath, $permissions);\n        }\n    }\n\n    return $path;\n} else {\n    $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: resource not found (page id %s).\', $docid));\n    return;\n}',0,'a:0:{}','',0,''),(16,0,0,'migxImageUpload','',0,2,0,'return include $modx->getOption(\'core_path\').\'components/migx/model/imageupload/imageupload.php\';',0,'','',0,''),(17,0,0,'migxChunklistToJson','',0,2,0,'$category = $modx->getOption(\'category\', $scriptProperties, \'\');\n$format = $modx->getOption(\'format\', $scriptProperties, \'json\');\n\n$classname = \'modChunk\';\n$rows = array();\n$output = \'\';\n\n$c = $modx->newQuery($classname);\n$c->select($modx->getSelectColumns($classname, $classname, \'\', array(\'id\', \'name\')));\n$c->sortby(\'name\');\n\nif (!empty($category)) {\n    $c->where(array(\'category\' => $category));\n}\n//$c->prepare();echo $c->toSql();\nif ($collection = $modx->getCollection($classname, $c)) {\n    $i = 0;\n\n    switch ($format) {\n        case \'json\':\n            foreach ($collection as $object) {\n                $row[\'MIGX_id\'] = (string )$i;\n                $row[\'name\'] = $object->get(\'name\');\n                $row[\'selected\'] = \'0\';\n                $rows[] = $row;\n                $i++;\n            }\n            $output = $modx->toJson($rows);\n            break;\n        \n        case \'optionlist\':\n            foreach ($collection as $object) {\n                $rows[] = $object->get(\'name\');\n                $i++;\n            }\n            $output = implode(\'||\',$rows);      \n        break;\n            \n    }\n\n\n}\n\nreturn $output;',0,'','',0,''),(18,0,0,'migxSwitchDetailChunk','',0,2,0,'//[[migxSwitchDetailChunk? &detailChunk=`detailChunk` &listingChunk=`listingChunk`]]\n\n\n$properties[\'migx_id\'] = $modx->getOption(\'migx_id\',$_GET,\'\');\n\nif (!empty($properties[\'migx_id\'])){\n    $output = $modx->getChunk($detailChunk,$properties);\n}\nelse{\n    $output = $modx->getChunk($listingChunk);\n}\n\nreturn $output;',0,'','',0,''),(19,0,0,'getSwitchColumnCol','',0,2,0,'$scriptProperties = $_REQUEST;\n$col = \'\';\n// special actions, for example the showSelector - action\n$tempParams = $modx->getOption(\'tempParams\', $scriptProperties, \'\');\n\nif (!empty($tempParams)) {\n    $tempParams = $modx->fromJson($tempParams);\n    $col = $modx->getOption(\'col\', $tempParams, \'\');\n}\n\nreturn $col;',0,'','',0,''),(20,0,0,'getDayliMIGXrecord','',0,2,0,'/**\n * getDayliMIGXrecord\n *\n * Copyright 2009-2011 by Bruno Perner <b.perner@gmx.de>\n *\n * getDayliMIGXrecord is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * getDayliMIGXrecord is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * getDayliMIGXrecord; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * getDayliMIGXrecord\n *\n * display Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string for MODx Revolution \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2012\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*example: [[!getDayliMIGXrecord? &tvname=`myTV`&tpl=`@CODE:<img src=\"[[+image]]\"/>` &randomize=`1`]]*/\n/* get default properties */\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$tpl = $modx->getOption(\'tpl\', $scriptProperties, \'\');\n$randomize = $modx->getOption(\'randomize\', $scriptProperties, false);\n$where = $modx->getOption(\'where\', $scriptProperties, \'\');\n$where = !empty($where) ? $modx->fromJSON($where) : array();\n$sort = $modx->getOption(\'sort\', $scriptProperties, \'\');\n$sort = !empty($sort) ? $modx->fromJSON($sort) : array();\n$toPlaceholder = $modx->getOption(\'toPlaceholder\', $scriptProperties, false);\n$docid = $modx->getOption(\'docid\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : 1));\n$processTVs = $modx->getOption(\'processTVs\', $scriptProperties, \'1\');\n\n$migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\nif (!($migx instanceof Migx))\n    return \'\';\n$migx->working_context = $modx->resource->get(\'context_key\');\n\nif (!empty($tvname)) {\n    if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n        /*\n        *   get inputProperties\n        */\n\n\n        $properties = $tv->get(\'input_properties\');\n        $properties = isset($properties[\'formtabs\']) ? $properties : $tv->getProperties();\n\n        $migx->config[\'configs\'] = $properties[\'configs\'];\n        $migx->loadConfigs();\n        // get tabs from file or migx-config-table\n        $formtabs = $migx->getTabs();\n        if (empty($formtabs)) {\n            //try to get formtabs and its fields from properties\n            $formtabs = $modx->fromJSON($properties[\'formtabs\']);\n        }\n\n        //$tv->setCacheable(false);\n        //$outputvalue = $tv->renderOutput($docid);\n        \n        $tvresource = $modx->getObject(\'modTemplateVarResource\', array(\n            \'tmplvarid\' => $tv->get(\'id\'),\n            \'contentid\' => $docid,\n            ));\n\n\n        $outputvalue = $tvresource->get(\'value\');\n        \n        /*\n        *   get inputTvs \n        */\n        $inputTvs = array();\n        if (is_array($formtabs)) {\n\n            //multiple different Forms\n            // Note: use same field-names and inputTVs in all forms\n            $inputTvs = $migx->extractInputTvs($formtabs);\n        }\n        $migx->source = $tv->getSource($migx->working_context, false);\n\n        if (empty($outputvalue)) {\n            return \'\';\n        }\n\n        $items = $modx->fromJSON($outputvalue);\n\n\n        //is there an active item for the current date?\n        $activedate = $modx->getOption(\'activedate\', $scriptProperties, strftime(\'%Y/%m/%d\'));\n        //$activedate = $modx->getOption(\'activedate\', $_GET, strftime(\'%Y/%m/%d\'));\n        $activewhere = array();\n        $activewhere[\'activedate\'] = $activedate;\n        $activewhere[\'activated\'] = \'1\';\n        $activeitems = $migx->filterItems($activewhere, $items);\n\n        if (count($activeitems) == 0) {\n\n            $activeitems = array();\n            // where filter\n            if (is_array($where) && count($where) > 0) {\n                $items = $migx->filterItems($where, $items);\n            }\n\n            $tempitems = array();\n            $count = count($items);\n            $emptycount = 0;\n            $latestdate = $activedate;\n            $nextdate = strtotime($latestdate);\n            foreach ($items as $item) {\n                //empty all dates and active-states which are older than today\n                if (!empty($item[\'activedate\']) && $item[\'activedate\'] < $activedate) {\n                    $item[\'activated\'] = \'0\';\n                    $item[\'activedate\'] = \'\';\n                }\n                if (empty($item[\'activedate\'])) {\n                    $emptycount++;\n                }\n                if ($item[\'activedate\'] > $latestdate) {\n                    $latestdate = $item[\'activedate\'];\n                    $nextdate = strtotime($latestdate) + (24 * 60 * 60);\n                }\n                if ($item[\'activedate\'] == $activedate) {\n                    $item[\'activated\'] = \'1\';\n                    $activeitems[] = $item;\n                }\n                $tempitems[] = $item;\n            }\n\n            //echo \'<pre>\' . print_r($tempitems, 1) . \'</pre>\';\n\n            $items = $tempitems;\n\n\n            //are there more than half of all items with empty activedates\n\n            if ($emptycount >= $count / 2) {\n\n                // sort items\n                if (is_array($sort) && count($sort) > 0) {\n                    $items = $migx->sortDbResult($items, $sort);\n                }\n                if (count($items) > 0) {\n                    //shuffle items\n                    if ($randomize) {\n                        shuffle($items);\n                    }\n                }\n\n                $tempitems = array();\n                foreach ($items as $item) {\n                    if (empty($item[\'activedate\'])) {\n                        $item[\'activedate\'] = strftime(\'%Y/%m/%d\', $nextdate);\n                        $nextdate = $nextdate + (24 * 60 * 60);\n                        if ($item[\'activedate\'] == $activedate) {\n                            $item[\'activated\'] = \'1\';\n                            $activeitems[] = $item;\n                        }\n                    }\n\n                    $tempitems[] = $item;\n                }\n\n                $items = $tempitems;\n            }\n\n            //$resource = $modx->getObject(\'modResource\', $docid);\n            //echo $modx->toJson($items);\n            $sort = \'[{\"sortby\":\"activedate\"}]\';\n            $items = $migx->sortDbResult($items, $modx->fromJson($sort));\n\n            //echo \'<pre>\' . print_r($items, 1) . \'</pre>\';\n\n            $tv->setValue($docid, $modx->toJson($items));\n            $tv->save();\n\n        }\n    }\n\n}\n\n\n$properties = array();\nforeach ($scriptProperties as $property => $value) {\n    $properties[\'property.\' . $property] = $value;\n}\n\n$output = \'\';\n\nforeach ($activeitems as $key => $item) {\n\n    $fields = array();\n    foreach ($item as $field => $value) {\n        $value = is_array($value) ? implode(\'||\', $value) : $value; //handle arrays (checkboxes, multiselects)\n        if ($processTVs && isset($inputTvs[$field])) {\n            if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $inputTvs[$field][\'inputTV\']))) {\n\n            } else {\n                $tv = $modx->newObject(\'modTemplateVar\');\n                $tv->set(\'type\', $inputTvs[$field][\'inputTVtype\']);\n            }\n            $inputTV = $inputTvs[$field];\n\n            $mTypes = $modx->getOption(\'manipulatable_url_tv_output_types\', null, \'image,file\');\n            //don\'t manipulate any urls here\n            $modx->setOption(\'manipulatable_url_tv_output_types\', \'\');\n            $tv->set(\'default_text\', $value);\n            $value = $tv->renderOutput($docid);\n            //set option back\n            $modx->setOption(\'manipulatable_url_tv_output_types\', $mTypes);\n            //now manipulate urls\n            if ($mediasource = $migx->getFieldSource($inputTV, $tv)) {\n                $mTypes = explode(\',\', $mTypes);\n                if (!empty($value) && in_array($tv->get(\'type\'), $mTypes)) {\n                    //$value = $mediasource->prepareOutputUrl($value);\n                    $value = str_replace(\'/./\', \'/\', $mediasource->prepareOutputUrl($value));\n                }\n            }\n\n        }\n        $fields[$field] = $value;\n\n    }\n\n    $rowtpl = $tpl;\n    //get changing tpls from field\n    if (substr($tpl, 0, 7) == \"@FIELD:\") {\n        $tplField = substr($tpl, 7);\n        $rowtpl = $fields[$tplField];\n    }\n\n    if (!isset($template[$rowtpl])) {\n        if (substr($rowtpl, 0, 6) == \"@FILE:\") {\n            $template[$rowtpl] = file_get_contents($modx->config[\'base_path\'] . substr($rowtpl, 6));\n        } elseif (substr($rowtpl, 0, 6) == \"@CODE:\") {\n            $template[$rowtpl] = substr($tpl, 6);\n        } elseif ($chunk = $modx->getObject(\'modChunk\', array(\'name\' => $rowtpl), true)) {\n            $template[$rowtpl] = $chunk->getContent();\n        } else {\n            $template[$rowtpl] = false;\n        }\n    }\n\n    $fields = array_merge($fields, $properties);\n\n    if ($template[$rowtpl]) {\n        $chunk = $modx->newObject(\'modChunk\');\n        $chunk->setCacheable(false);\n        $chunk->setContent($template[$rowtpl]);\n        $output .= $chunk->process($fields);\n\n    } else {\n        $output .= \'<pre>\' . print_r($fields, 1) . \'</pre>\';\n\n    }\n\n\n}\n\n\nif (!empty($toPlaceholder)) {\n    $modx->setPlaceholder($toPlaceholder, $output);\n    return \'\';\n}\n\nreturn $output;',0,'','',0,''),(21,0,0,'filterbytag','',0,2,0,'if (!is_array($subject)) {\n    $subject = explode(\',\',str_replace(array(\'||\',\' \'),array(\',\',\'\'),$subject));\n}\n\nreturn (in_array($operand,$subject));',0,'','',0,''),(22,0,0,'migxObjectMediaPath','',0,2,0,'$pathTpl = $modx->getOption(\'pathTpl\', $scriptProperties, \'\');\n$objectid = $modx->getOption(\'objectid\', $scriptProperties, \'\');\n$createfolder = $modx->getOption(\'createFolder\', $scriptProperties, \'1\');\n$path = \'\';\n$createpath = false;\nif (empty($objectid) && $modx->getPlaceholder(\'objectid\')) {\n    // placeholder was set by some script on frontend for example\n    $objectid = $modx->getPlaceholder(\'objectid\');\n}\nif (empty($objectid) && isset($_REQUEST[\'object_id\'])) {\n    $objectid = $_REQUEST[\'object_id\'];\n}\n\n\n\nif (empty($objectid)) {\n\n    //set Session - var in fields.php - processor\n    if (isset($_SESSION[\'migxWorkingObjectid\'])) {\n        $objectid = $_SESSION[\'migxWorkingObjectid\'];\n        $createpath = !empty($createfolder);\n    }\n\n}\n\n\n$path = str_replace(\'{id}\', $objectid, $pathTpl);\n\n$fullpath = $modx->getOption(\'base_path\') . $path;\n\nif ($createpath && !file_exists($fullpath)) {\n        $permissions = octdec(\'0\' . (int)($modx->getOption(\'new_folder_permissions\', null, \'755\', true)));\n        if (!@mkdir($fullpath, $permissions, true)) {\n            $modx->log(MODX_LOG_LEVEL_ERROR, sprintf(\'[migxResourceMediaPath]: could not create directory %s).\', $fullpath));\n        }\n        else{\n            chmod($fullpath, $permissions); \n        }\n}\n\nreturn $path;',0,'','',0,''),(23,0,0,'exportMIGX2db','',0,2,0,'/**\n * exportMIGX2db\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n * \n * Sponsored by Simon Wurster <info@wurster-medien.de>\n *\n * exportMIGX2db is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * exportMIGX2db is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * exportMIGX2db; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * exportMIGX2db\n *\n * export Items from outputvalue of TV with custom-TV-input-type MIGX or from other JSON-string to db-table \n *\n * @version 1.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n/*\n[[!exportMIGX2db? \n&tvname=`references` \n&resources=`25` \n&packageName=`projekte`\n&classname=`Projekt` \n&migx_id_field=`migx_id` \n&renamed_fields=`{\"Firmen-URL\":\"Firmen_url\",\"Projekt-URL\":\"Projekt_URL\",\"main-image\":\"main_image\"}`\n]]\n*/\n\n\n$tvname = $modx->getOption(\'tvname\', $scriptProperties, \'\');\n$resources = $modx->getOption(\'resources\', $scriptProperties, (isset($modx->resource) ? $modx->resource->get(\'id\') : \'\'));\n$resources = explode(\',\', $resources);\n$prefix = isset($scriptProperties[\'prefix\']) ? $scriptProperties[\'prefix\'] : null;\n$packageName = $modx->getOption(\'packageName\', $scriptProperties, \'\');\n$classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$migx_id_field = $modx->getOption(\'migx_id_field\', $scriptProperties, \'\');\n$pos_field = $modx->getOption(\'pos_field\', $scriptProperties, \'\');\n$renamed_fields = $modx->getOption(\'renamed_fields\', $scriptProperties, \'\');\n\n$packagepath = $modx->getOption(\'core_path\') . \'components/\' . $packageName .\n    \'/\';\n$modelpath = $packagepath . \'model/\';\n\n$modx->addPackage($packageName, $modelpath, $prefix);\n$added = 0;\n$modified = 0;\n\nforeach ($resources as $docid) {\n    \n    $outputvalue = \'\';\n    if (count($resources)==1){\n        $outputvalue = $value;    \n    }\n    \n    if (!empty($tvname)) {\n        if ($tv = $modx->getObject(\'modTemplateVar\', array(\'name\' => $tvname))) {\n\n            $outputvalue = empty($outputvalue) ? $tv->renderOutput($docid) : $outputvalue;\n        }\n    }\n\n    if (!empty($outputvalue)) {\n        $renamed = !empty($renamed_fields) ? $modx->fromJson($renamed_fields) : array();\n\n        $items = $modx->fromJSON($outputvalue);\n        $pos = 1;\n        $searchfields = array();\n        if (is_array($items)) {\n            foreach ($items as $fields) {\n                $search = array();\n                if (!empty($migx_id_field)) {\n                    $search[$migx_id_field] = $fields[\'MIGX_id\'];\n                }\n                if (!empty($resource_id_field)) {\n                    $search[$resource_id_field] = $docid;\n                }\n                if (!empty($migx_id_field) && $object = $modx->getObject($classname, $search)) {\n                    $mode = \'mod\';\n                } else {\n                    $object = $modx->newObject($classname);\n                    $object->fromArray($search);\n                    $mode = \'add\';\n                }\n                foreach ($fields as $field => $value) {\n                    $fieldname = array_key_exists($field, $renamed) ? $renamed[$field] : $field;\n                    $object->set($fieldname, $value);\n                }\n                if (!empty($pos_field)) {\n                    $object->set($pos_field,$pos) ;\n                }                \n                if ($object->save()) {\n                    if ($mode == \'add\') {\n                        $added++;\n                    } else {\n                        $modified++;\n                    }\n                }\n                $pos++;\n            }\n            \n        }\n    }\n}\n\n\nreturn $added . \' rows added to db, \' . $modified . \' existing rows actualized\';',0,'','',0,''),(24,0,0,'preparedatewhere','',0,2,0,'$name = $modx->getOption(\'name\', $scriptProperties, \'\');\n$date = $modx->getOption($name . \'_date\', $_REQUEST, \'\');\n$dir = str_replace(\'T\', \' \', $modx->getOption($name . \'_dir\', $_REQUEST, \'\'));\n\nif (!empty($date) && !empty($dir) && $dir != \'all\') {\n    switch ($dir) {\n        case \'=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date)),\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );\n            break;\n        case \'>=\':\n            $where = array(\n            \'enddate:>=\' => strftime(\'%Y-%m-%d 00:00:00\',strtotime($date))\n            );\n            break;\n        case \'<=\':\n            $where = array(\n            \'startdate:<=\' => strftime(\'%Y-%m-%d 23:59:59\',strtotime($date))\n            );            \n            break;\n\n    }\n\n    return $modx->toJson($where);\n}',0,'','',0,''),(25,0,0,'migxJsonToPlaceholders','',0,2,0,'$value = $modx->getOption(\'value\',$scriptProperties,\'\');\n$prefix = $modx->getOption(\'prefix\',$scriptProperties,\'\');\n\n//$modx->setPlaceholders($modx->fromJson($value),$prefix,\'\',true);\n\n$values = $modx->fromJson($value);\nif (is_array($values)){\n    foreach ($values as $key => $value){\n        $value = $value == null ? \'\' : $value;\n        $modx->setPlaceholder($prefix . $key, $value);\n    }\n}',0,'','',0,''),(26,0,0,'migxGetCollectionTree','',0,2,0,'/**\n * migxGetCollectionTree\n *\n * Copyright 2014 by Bruno Perner <b.perner@gmx.de>\n *\n * migxGetCollectionTree is free software; you can redistribute it and/or modify it\n * under the terms of the GNU General Public License as published by the Free\n * Software Foundation; either version 2 of the License, or (at your option) any\n * later version.\n *\n * migxGetCollectionTree is distributed in the hope that it will be useful, but WITHOUT ANY\n * WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR\n * A PARTICULAR PURPOSE. See the GNU General Public License for more details.\n *\n * You should have received a copy of the GNU General Public License along with\n * migxGetCollectionTree; if not, write to the Free Software Foundation, Inc., 59 Temple Place,\n * Suite 330, Boston, MA 02111-1307 USA\n *\n * @package migx\n */\n/**\n * migxGetCollectionTree\n *\n *          display nested items from different objects. The tree-schema is defined by a json-property. \n *\n * @version 1.0.0\n * @author Bruno Perner <b.perner@gmx.de>\n * @copyright Copyright &copy; 2014\n * @license http://www.gnu.org/licenses/old-licenses/gpl-2.0.html GNU General Public License\n * version 2 or (at your option) any later version.\n * @package migx\n */\n\n$treeSchema = $modx->getOption(\'treeSchema\', $scriptProperties, \'\');\n$treeSchema = $modx->fromJson($treeSchema);\n\n$scriptProperties[\'current\'] = $modx->getOption(\'current\', $scriptProperties, \'\');\n$scriptProperties[\'currentClassname\'] = $modx->getOption(\'currentClassname\', $scriptProperties, \'\');\n$scriptProperties[\'currentKeyField\'] = $modx->getOption(\'currentKeyField\', $scriptProperties, \'id\');\n$return = $modx->getOption(\'return\', $scriptProperties, \'parsed\'); //parsed,json,arrayprint\n\n/*\nExamples:\n\nGet Resource-Tree, 4 levels deep\n\n[[!migxGetCollectionTree?\n&current=`57`\n&currentClassname=`modResource`\n&treeSchema=`\n{\n\"classname\": \"modResource\",\n\"debug\": \"1\",\n\"tpl\": \"mgctResourceTree\",\n\"wrapperTpl\": \"@CODE:<ul>[[+output]]</ul>\",\n\"selectfields\": \"id,pagetitle\",\n\"where\": {\n\"parent\": \"0\",\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n},\n\"_branches\": [{\n\"alias\": \"children\",\n\"classname\": \"modResource\",\n\"local\": \"parent\",\n\"foreign\": \"id\",\n\"tpl\": \"mgctResourceTree\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,parent\",\n\"where\": {\n\"published\": \"1\",\n\"deleted\": \"0\"\n}\n}]\n}]\n}]\n}\n`]]\n\nthe chunk mgctResourceTree:\n<li class=\"[[+_activelabel]] [[+_currentlabel]]\" ><a href=\"[[~[[+id]]]]\">[[+pagetitle]]([[+id]])</a></li>\n[[+innercounts.children:gt=`0`:then=`\n<ul>[[+innerrows.children]]</ul>\n`:else=``]]\n\nget all Templates and its Resources:\n\n[[!migxGetCollectionTree?\n&treeSchema=`\n{\n\"classname\": \"modTemplate\",\n\"debug\": \"1\",\n\"tpl\": \"@CODE:<h3>[[+templatename]]</h3><ul>[[+innerrows.resource]]</ul>\",\n\"selectfields\": \"id,templatename\",\n\"_branches\": [{\n\"alias\": \"resource\",\n\"classname\": \"modResource\",\n\"local\": \"template\",\n\"foreign\": \"id\",\n\"tpl\": \"@CODE:<li>[[+pagetitle]]([[+id]])</li>\",\n\"debug\": \"1\",\n\"selectfields\": \"id,pagetitle,template\"\n}]\n}\n`]]\n*/\n\nif (!class_exists(\'MigxGetCollectionTree\')) {\n    class MigxGetCollectionTree\n    {\n        function __construct(modX & $modx, array $config = array())\n        {\n            $this->modx = &$modx;\n            $this->config = $config;\n        }\n\n        function getBranch($branch, $foreigns = array(), $level = 1)\n        {\n\n            $rows = array();\n\n            if (count($foreigns) > 0) {\n                $modx = &$this->modx;\n\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $where = $modx->getOption(\'where\', $branch, array());\n                $where = !empty($where) && !is_array($where) ? $modx->fromJSON($where) : $where;\n                $where[] = array($local . \':IN\' => $foreigns);\n\n                $branch[\'where\'] = $modx->toJson($where);\n\n                $level++;\n                /*\n                if ($levelFromCurrent > 0){\n                $levelFromCurrent++;    \n                }\n                */\n\n                $rows = $this->getRows($branch, $level);\n            }\n\n            return $rows;\n        }\n\n        function getRows($scriptProperties, $level)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n\n            $current = $modx->getOption(\'current\', $this->config, \'\');\n            $currentKeyField = $modx->getOption(\'currentKeyField\', $this->config, \'id\');\n            $currentlabel = $modx->getOption(\'currentlabel\', $this->config, \'current\');\n            $classname = $modx->getOption(\'classname\', $scriptProperties, \'\');\n            $currentClassname = !empty($this->config[\'currentClassname\']) ? $this->config[\'currentClassname\'] : $classname;\n\n            $activelabel = $modx->getOption(\'activelabel\', $this->config, \'active\');\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n\n            $xpdo = $migx->getXpdoInstanceAndAddPackage($scriptProperties);\n            $c = $migx->prepareQuery($xpdo, $scriptProperties);\n            $rows = $migx->getCollection($c);\n\n            $branches = $modx->getOption(\'_branches\', $scriptProperties, array());\n\n            $collectedSubrows = array();\n            foreach ($branches as $branch) {\n                $foreign = $modx->getOption(\'foreign\', $branch, \'\');\n                $local = $modx->getOption(\'local\', $branch, \'\');\n                $alias = $modx->getOption(\'alias\', $branch, \'\');\n                //$activeonly = $modx->getOption(\'activeonly\', $branch, \'\');\n                $foreigns = array();\n                foreach ($rows as $row) {\n                    $foreigns[] = $row[$foreign];\n                }\n\n                $subrows = $this->getBranch($branch, $foreigns, $level);\n                foreach ($subrows as $subrow) {\n\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    $subrow[\'_active\'] = $modx->getOption(\'_active\', $subrow, \'0\');\n                    /*\n                    if (!empty($activeonly) && $subrow[\'_active\'] != \'1\') {\n                    $output = \'\';\n                    } else {\n                    $collectedSubrows[$subrow[$local]][] = $subrow;\n                    }\n                    */\n                    if ($subrow[\'_active\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $activesubrow[$subrow[$local]] = true;\n                    }\n                    if ($subrow[\'_current\'] == \'1\') {\n                        //echo \'active subrow:<pre>\' . print_r($subrow,1) . \'</pre>\';\n                        $currentsubrow[$subrow[$local]] = true;\n                    }\n\n\n                }\n                //insert subrows\n                $temprows = $rows;\n                $rows = array();\n                foreach ($temprows as $row) {\n                    if (isset($collectedSubrows[$row[$foreign]])) {\n                        $row[\'_active\'] = \'0\';\n                        $row[\'_currentparent\'] = \'0\';\n                        if (isset($activesubrow[$row[$foreign]]) && $activesubrow[$row[$foreign]]) {\n                            $row[\'_active\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n                        if (isset($currentsubrow[$row[$foreign]]) && $currentsubrow[$row[$foreign]]) {\n                            $row[\'_currentparent\'] = \'1\';\n                            //echo \'active row:<pre>\' . print_r($row,1) . \'</pre>\';\n                        }\n\n                        //render innerrows\n                        //$output = $migx->renderOutput($collectedSubrows[$row[$foreign]],$scriptProperties);\n                        //$output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innercounts.\' . $alias] = count($collectedSubrows[$row[$foreign]]);\n                        $row[\'_scriptProperties\'][$alias] = $branch;\n                        /*\n                        switch ($return) {\n                        case \'parsed\':\n                        $output = $migx->renderOutput($collectedSubrows[$row[$foreign]], $branch);\n                        //$subbranches = $modx->getOption(\'_branches\', $branch, array());\n                        //if there are any placeholders left with the same alias from subbranch, remove them\n                        $output = str_replace(\'[[+innerrows.\' . $alias . \']]\', \'\', $output);\n                        break;\n                        case \'json\':\n                        case \'arrayprint\':\n                        $output = $collectedSubrows[$row[$foreign]];\n                        break;\n                        }\n                        */\n                        $output = $collectedSubrows[$row[$foreign]];\n\n                        $row[\'innerrows.\' . $alias] = $output;\n\n                    }\n                    $rows[] = $row;\n                }\n\n            }\n\n            $temprows = $rows;\n            $rows = array();\n            foreach ($temprows as $row) {\n                //add additional placeholders\n                $row[\'_level\'] = $level;\n                $row[\'_active\'] = $modx->getOption(\'_active\', $row, \'0\');\n                if ($currentClassname == $classname && $row[$currentKeyField] == $current) {\n                    $row[\'_current\'] = \'1\';\n                    $row[\'_currentlabel\'] = $currentlabel;\n                    $row[\'_active\'] = \'1\';\n                } else {\n                    $row[\'_current\'] = \'0\';\n                    $row[\'_currentlabel\'] = \'\';\n                }\n                if ($row[\'_active\'] == \'1\') {\n                    $row[\'_activelabel\'] = $activelabel;\n                } else {\n                    $row[\'_activelabel\'] = \'\';\n                }\n                $rows[] = $row;\n            }\n\n            return $rows;\n        }\n\n        function renderRow($row, $levelFromCurrent = 0)\n        {\n            $migx = &$this->migx;\n            $modx = &$this->modx;\n            $return = $modx->getOption(\'return\', $this->config, \'parsed\');\n            $branchProperties = $modx->getOption(\'_scriptProperties\', $row, array());\n            $current = $modx->getOption(\'_current\', $row, \'0\');\n            $currentparent = $modx->getOption(\'_currentparent\', $row, \'0\');\n            $levelFromCurrent = $current == \'1\' ? 1 : $levelFromCurrent;\n            $row[\'_levelFromCurrent\'] = $levelFromCurrent;\n            foreach ($branchProperties as $alias => $properties) {\n                $innerrows = $modx->getOption(\'innerrows.\' . $alias, $row, array());\n                $subrows = $this->renderRows($innerrows, $properties, $levelFromCurrent, $currentparent);\n                if ($return == \'parsed\') {\n                    $subrows = $migx->renderOutput($subrows, $properties);\n                }\n                $row[\'innerrows.\' . $alias] = $subrows;\n            }\n\n            return $row;\n        }\n\n        function renderRows($rows, $scriptProperties, $levelFromCurrent = 0, $siblingOfCurrent = \'0\')\n        {\n\n            $modx = &$this->modx;\n            $temprows = $rows;\n            $rows = array();\n            if ($levelFromCurrent > 0) {\n                $levelFromCurrent++;\n            }\n            foreach ($temprows as $row) {\n                $row[\'_siblingOfCurrent\'] = $siblingOfCurrent;\n                $row = $this->renderRow($row, $levelFromCurrent);\n                $rows[] = $row;\n            }\n            return $rows;\n        }\n    }\n}\n\n$instance = new MigxGetCollectionTree($modx, $scriptProperties);\n\nif (is_array($treeSchema)) {\n    $scriptProperties = $treeSchema;\n\n    $migx = $modx->getService(\'migx\', \'Migx\', $modx->getOption(\'migx.core_path\', null, $modx->getOption(\'core_path\') . \'components/migx/\') . \'model/migx/\', $scriptProperties);\n    if (!($migx instanceof Migx))\n        return \'\';\n\n    $defaultcontext = \'web\';\n    $migx->working_context = isset($modx->resource) ? $modx->resource->get(\'context_key\') : $defaultcontext;\n    $instance->migx = &$migx;\n\n    $level = 1;\n    $scriptProperties[\'alias\'] = \'row\';\n    $rows = $instance->getRows($scriptProperties, $level);\n    $row = array();\n    $row[\'innercounts.row\'] = count($rows);\n    $row[\'innerrows.row\'] = $rows;\n    $row[\'_scriptProperties\'][\'row\'] = $scriptProperties;\n\n    $rows = $instance->renderRow($row);\n\n    $output = \'\';\n    switch ($return) {\n        case \'parsed\':\n            $output = $modx->getOption(\'innerrows.row\', $rows, \'\');\n            break;\n        case \'json\':\n            $output = $modx->toJson($rows);\n            break;\n        case \'arrayprint\':\n            $output = \'<pre>\' . print_r($rows, 1) . \'</pre>\';\n            break;\n    }\n\n    return $output;\n\n}',0,'','',0,''),(27,0,0,'migxIsNewObject','',0,2,0,'if (isset($_REQUEST[\'object_id\']) && $_REQUEST[\'object_id\']==\'new\'){\n    return 1;\n}',0,'','',0,''),(28,0,0,'migx_example_validate','',0,2,0,'$properties = &$modx->getOption(\'scriptProperties\', $scriptProperties, array());\n$object = &$modx->getOption(\'object\', $scriptProperties, null);\n$postvalues = &$modx->getOption(\'postvalues\', $scriptProperties, array());\n$form_field = $modx->getOption(\'form_field\', $scriptProperties, array());\n$value = $modx->getOption(\'value\', $scriptProperties, \'\');\n$validation_type = $modx->getOption(\'validation_type\', $scriptProperties, \'\');\n$result = \'\';\nswitch ($validation_type) {\n    case \'gt25\':\n        if ((int) $value > 25) {\n        } else {\n            $error_message = $validation_type; // may be custom validation message\n            $error[\'caption\'] = $form_field;\n            $error[\'validation_type\'] = $error_message;\n            $result[\'error\'] = $error;\n            $result = $modx->toJson($result);\n        }\n        break;\n}\nreturn $result;',0,'','',0,''),(29,0,0,'migxHookAftercollectmigxitems','',0,2,0,'$configs = $modx->getOption(\'configs\', $_REQUEST, \'\');\n\n$rows = $modx->getOption(\'rows\', $scriptProperties, array());\n$newrows = array();\n\n\nif (is_array($rows)) {\n    $max_id = 0;\n    $dbfields = array();\n    $existing_dbfields = array();\n    foreach ($rows as $key => $row) {\n        if (isset($row[\'MIGX_id\']) && $row[\'MIGX_id\'] > $max_id) {\n            $max_id = $row[\'MIGX_id\'];\n        }\n        if (isset($row[\'selected_dbfields\']) && isset($row[\'existing_dbfields\'])) {\n            $dbfields = is_array($row[\'selected_dbfields\']) ? $row[\'selected_dbfields\'] : array($row[\'selected_dbfields\']);\n            \n            $existing_dbfields = explode(\'||\', $row[\'existing_dbfields\']);\n            //echo \'<pre>\' . print_r($existing_dbfields,1) . \'</pre>\';die();\n\n        } else {\n            $newrows[] = $row;\n        }\n\n    }\n\n    foreach ($dbfields as $dbfield) {\n        if (!empty($dbfield) && !in_array($dbfield, $existing_dbfields)) {\n            $max_id++;\n            $newrow = array();\n            $newrow[\'MIGX_id\'] = $max_id;\n\n            switch ($configs) {\n                case \'migxformtabfields\':\n                    $newrow[\'field\'] = $dbfield;\n                    $newrow[\'caption\'] = $dbfield;\n                    break;\n                case \'migxcolumns\':\n                    $newrow[\'dataIndex\'] = $dbfield;\n                    $newrow[\'header\'] = $dbfield;\n                    break;                    \n            }\n\n\n            $newrows[] = $newrow;\n        }\n    }\n\n\n}\n\n\nreturn json_encode($newrows);',0,'','',0,''),(30,0,0,'migxAutoPublish','',0,2,0,'$classnames = explode(\',\', $modx->getOption(\'classnames\',$scriptProperties,\'\'));\n$packageName = $modx->getOption(\'packageName\',$scriptProperties,\'\');\n\nswitch ($mode) {\n    case \'datetime\' :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n    case \'unixtime\' :\n        $timeNow = time();\n        break;\n    default :\n        $timeNow = strftime(\'%Y-%m-%d %H:%M:%S\');\n        break;\n}\n\n$modx->addPackage($packageName, $modx->getOption(\'core_path\') . \'components/\' . $packageName . \'/model/\');\n\nforeach ($classnames as $classname) {\n    if (!empty($classname)) {\n        $tblResource = $modx->getTableName($classname);\n        if (!$result = $modx->exec(\"UPDATE {$tblResource} SET published=1,publishedon=pub_date,pub_date=null WHERE pub_date < \'{$timeNow}\' AND pub_date > 0 AND published=0\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource publishing data: \' . print_r($modx->errorInfo(), true));\n        }\n        if (!$result = $modx->exec(\"UPDATE $tblResource SET published=0,unpub_date=null WHERE unpub_date < \'{$timeNow}\' AND unpub_date IS NOT NULL AND unpub_date > 0 AND published=1\")) {\n            $modx->log(modX::LOG_LEVEL_ERROR, \'Error while refreshing resource unpublishing data: \' . print_r($modx->errorInfo(), true));\n        }\n    }\n\n}\n$modx->cacheManager->refresh();',0,'','',0,''),(31,0,0,'csssweet.convert','',0,3,0,'/* \n * convert\n *\n * Output modifier that accepts a color value and converts it to \n * another format. \n *\n * Examples:\n * [[convert? &input=`#333` &options=`rgba`]]\n * \'rgba(51,51,51,1)\'\n *\n * [[+color:convert]]\n * Where the value of the placeholder is \'rgba(51,51,51,1)\'\n * \'#333333\'\n */\n\n// Get values\nif (empty($input)) return \'\';\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[cssSweet.convert] could not load the required csssweet class!\');\n    return \'\';\n}\n\nreturn $csssweet->converting($input, $options);',0,'a:0:{}','',0,''),(32,0,0,'csssweet.extract','',0,3,0,'/* \n * extract\n *\n * Output modifier that accepts a color value and extracts\n * a channel. \n *\n * Examples:\n * [[extract? &input=`#80e61a` &options=`red`]]\n * \'80\'\n *\n * [[+color:extract=`a`]]\n * Where the value of the placeholder is \'rgba(51,51,51,0.5)\'\n * \'0.5\'\n */\n\n// Get values\nif (empty($input)) return \'\';\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[cssSweet.extract] could not load the required csssweet class!\');\n    return \'\';\n}\n\nreturn $csssweet->extracting($input, $options);',0,'a:0:{}','',0,''),(33,0,0,'csssweet.lighten','',0,3,0,'/* \n * lighten\n *\n * Output modifier that accepts a color value in any supported format and \n * percentage (+ or -) option. \n * Additionally, \'max\' or \'rev\' can be set, with or without a percentage,\n * translating into a tint or shade. \n *\n * Examples:\n * [[+color:lighten=`20`]]\n * Lightens the $input color by 20%\n *\n * [[+color:lighten=`-30`]]\n * Darkens the $input color by 30%\n *\n * [[+color:lighten=`max`]]\n * If the $input value is dark, \'ffffff\' will be returned,\n * else \'000000\' will be returned. Accepts \'#\' prefix or without.\n *\n * [[+color:lighten=`rev60`]]\n * This would tint or shade the $input color by 60%\n * (so the result would be more of a medium gray)\n *\n * Variables other than $options must be set in snippet properties tab if \n * used as output modifier.\n *\n */\n\n// Get values\nif (empty($input)) return \'\';\n$input = trim($input);\n$options = isset($options) ? $options : \'0\';\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[cssSweet.lighten] could not load the required csssweet class!\');\n    return \'\';\n}\n\nreturn $csssweet->lightening($input, $options);',0,'a:0:{}','',0,''),(34,0,0,'csssweet.modval','',0,3,0,'/* \n * modval\n *\n * Output modifier that accepts a numeric value and modifies it. \n * Identifies strings as units and separates them. \n *\n * Examples:\n * [[modval?input=`4px`&options=`*3`]]\n * \'12px\'\n *\n * [[+color:modval=`/2`]]\n * Where the value of the placeholder is \'18 inches\'\n * \'9inches\'\n */\n\n// Get values\nif (empty($input)) return \'\';\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[cssSweet.modval] could not load the required csssweet class!\');\n    return \'\';\n}\n\nreturn $csssweet->modifying($input, $options);',0,'a:0:{}','',0,''),(35,0,0,'csssweet.prefix','',0,3,0,'/* \n * prefix\n *\n * Output modifier that adds basic browser prefixes to $input strings \n *\n * Examples:\n * [[+my_radius_css:prefix]]\n * Where the value of the placeholder is \'border-radius: 3px;\'\n * -webkit-border-radius: 3px;\n * -moz-border-radius: 3px;\n * border-radius: 3px;\n * \n * [[prefix?to=`transition: all 300ms ease;` &options=`all`]]\n * -webkit-transition: all 300ms ease;\n * -moz-transition: all 300ms ease;\n * -ms-transition: all 300ms ease;\n * -o-transition: all 300ms ease;\n * transition: all 300ms ease;\n */\n\n// Get input\n$input = isset($input) ? $input : \'\';\n\n// If $to property is set, use that instead\n$input = (isset($to)) ? $to : $input;\n\n// Check it\nif (empty($input)) return;\n\n// Get options and defaults\n$options = isset($options) ? $options : \'webkit,moz\';\nif ($options === \'all\') $options = \'webkit,moz,ms,o\';\n\n// Which prefix?\n$prefixes = [\'webkit\', \'moz\', \'ms\', \'o\'];\n$output = \'\';\n$selects = explode(\',\', $options);\nforeach ($selects as $select) {\n    if (in_array($select, $prefixes)) $output .= \"-$select-$input\" . PHP_EOL;\n}\n$output .= $input;\n\nreturn $output;',0,'a:0:{}','',0,''),(36,0,0,'csssweet.saturate','',0,3,0,'/* \n * saturate\n *\n * Output modifier that accepts a color value and changes saturation. \n *\n * Examples:\n * [[saturate? &input=`#80e61a` &options=`20`]]\n * \'#80ff00\'\n *\n * [[+color:saturate=`-20`]]\n * Where the value of the placeholder is \'rgb(128,230,26)\'\n * \'rgb(128,204,51)\'\n */\n\n// Get values\nif (empty($input)) return \'\';\n\n// Grab the cssSweet class\n$csssweet = null;\n$cssSweetPath = $modx->getOption(\'csssweet.core_path\', null, $modx->getOption(\'core_path\') . \'components/csssweet/\');\n$cssSweetPath .= \'model/csssweet/\';\nif (file_exists($cssSweetPath . \'csssweet.class.php\')) $csssweet = $modx->getService(\'csssweet\', \'CssSweet\', $cssSweetPath);\nif (!$csssweet || !($csssweet instanceof CssSweet)) {\n    $modx->log(modX::LOG_LEVEL_ERROR, \'[cssSweet.convert] could not load the required csssweet class!\');\n    return \'\';\n}\n\nreturn $csssweet->saturating($input, $options);',0,'a:0:{}','',0,''),(37,1,0,'buildSchema','',0,0,0,'$base_path = dirname(dirname(MODX_BASE_PATH)).\'/www/html/doodlesMine/_build/\';\n/* change above line to your path */\n$o = \'\';\n$f = $base_path.\'build.schema.php\';\nif (file_exists($f)) {\n   $o = include $f;\n} else {\n   $modx->setLogTarget(\'ECHO\');\n   $modx->log(modX::LOG_LEVEL_ERROR, \'Not found at: \'.$f);\n}\nreturn $o;',0,'a:0:{}','',0,'doodles/_build/build.schema.php');
/*!40000 ALTER TABLE `modx_site_snippets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_templates`
--

DROP TABLE IF EXISTS `modx_site_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_templates` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source` int unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint unsigned NOT NULL DEFAULT '0',
  `templatename` varchar(50) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT 'Template',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `icon` varchar(191) NOT NULL DEFAULT '',
  `template_type` int NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `locked` tinyint unsigned NOT NULL DEFAULT '0',
  `properties` text,
  `static` tinyint unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `templatename` (`templatename`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `static` (`static`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_templates`
--

LOCK TABLES `modx_site_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_templates` DISABLE KEYS */;
INSERT INTO `modx_site_templates` VALUES (1,0,0,'BaseTemplate','Template',0,0,'',0,'<!doctype html>\n<html lang=\"en\">\n<head>\n    <title>[[*pagetitle]] - [[++site_name]]</title>\n    <base href=\"[[!++site_url]]\" />\n    <meta charset=\"[[++modx_charset]]\" />\n    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\" />\n\n    <style type=\"text/css\">\n        body {\n            background-color: #eee;\n            font-family: sans-serif;\n            font-size: 20px;\n            line-height: 1.4em;\n            padding: 0;\n            margin: 0;\n        }\n        body.loaded {\n            font-family: \'Open Sans\', sans-serif;\n        }\n        .container {\n            display: block;\n            max-width: 960px;\n            margin: 2em auto 2em;\n            padding: 2em;\n            background: #fff;\n            border: 1px solid #ddd;\n            border-radius: 3px;\n        }\n        .container > section {\n            height: 100%;\n            width: 60%;\n            display: inline-block;\n            float: left;\n            margin-bottom: 2em;\n        }\n        .container > aside {\n            height: 100%;\n            display: inline-block;\n            width: 30%;\n            border-left: 2px dashed #eee;\n            float: right;\n            padding-left: 1.5em;\n        }\n        .logo {\n            background: url(\'[[++manager_url]]templates/default/images/modx-logo-color.svg\') no-repeat center transparent;\n            width: 220px;\n            height: 85px;\n            background-size: contain;\n            display: block;\n            position: relative;\n            text-indent: -9999px;\n            margin: 2em auto;\n        }\n        h1, h2, h3, h4, h5 {\n            color: #494949;\n            font-family: \'Open Sans\', sans-serif;\n            font-weight: 700;\n        }\n        h1 {\n            font-size: 36px;\n            color: #137899;\n        }\n        h2 {\n            font-size: 29px;\n        }\n        h3 {\n            font-size: 24px;\n        }\n\n        a {\n            color: #0f7096;\n        }\n\n        ul {\n            padding-left: 2em;\n        }\n\n        img {\n            max-width: 100%;\n        }\n\n        .cta-button {\n            display: block;\n            text-align: center;\n            vertical-align: middle;\n            -webkit-transform: translateZ(0);\n            transform: translateZ(0);\n            box-shadow: 0 0 1px rgba(0, 0, 0, 0);\n            -webkit-backface-visibility: hidden;\n            backface-visibility: hidden;\n            -moz-osx-font-smoothing: grayscale;\n            position: relative;\n            overflow: hidden;\n            margin: .2em 0;\n            padding: 1em;\n            cursor: pointer;\n            background: #67a749;\n            text-decoration: none;\n            border-radius: 3px;\n            color: #fff;\n            -webkit-tap-highlight-color: rgba(0,0,0,0);\n        }\n        .cta-button:before {\n            content: \"\";\n            position: absolute;\n            z-index: -1;\n            left: 50%;\n            right: 50%;\n            bottom: 0;\n            background: #137899;\n            height: 5px;\n            -webkit-transition-property: left, right;\n            transition-property: left, right;\n            -webkit-transition-duration: 0.3s;\n            transition-duration: 0.3s;\n            -webkit-transition-timing-function: ease-out;\n            transition-timing-function: ease-out;\n        }\n        .cta-button:hover:before, .cta-button:focus:before, .cta-button:active:before {\n            left: 0;\n            right: 0;\n        }\n\n        .companies {\n            clear: both;\n            display: block;\n            width: 100%;\n            padding: 1em 0 0;\n            border-top: 2px dashed #eee;\n        }\n\n        .companies h3 {\n            text-align: center;\n            margin: 0;\n        }\n\n        .companies ul {\n            margin: 0;\n            padding: 0;\n            list-style: none;\n            text-align: center;\n        }\n\n        .companies ul li {\n            display: inline-block;\n            padding: 0 1em;\n        }\n\n        .companies ul li:first-child {\n            padding-left: 0;\n        }\n\n        .companies ul li:last-child {\n            padding-right: 0;\n        }\n\n        .companies ul li a {\n            display: block;\n            position: relative;\n            text-indent: -99999px;\n            width: 200px;\n            height: 75px;\n            background-repeat: no-repeat;\n            background-size: 200px;\n            background-position: center;\n        }\n\n        .companies ul li.modmore a {\n            background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAfQAAABxCAMAAAAUAqFnAAADAFBMVEUgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToAgToB8YRCjAAAA/3RSTlMAAQIDBAUGBwgJCgsMDQ4PEBESExQVFhcYGRobHB0eHyAhIiMkJSYnKCkqKywtLi8wMTIzNDU2Nzg5Ojs8PT4/QEFCQ0RFRkdISUpLTE1O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);\n        }\n\n        .companies ul li.extrasio a {\n            background-image: url(data:image/png;base64,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);\n        }\n        .companies ul li.modstore a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RURBQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RURCQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RjlCOUZEN0ZCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RjlCOUZEODBCM0IwMTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n\n        .companies ul li.modxextras a {\n            background-image: url(data:image/jpeg;base64,/9j/4QAYRXhpZgAASUkqAAgAAAAAAAAAAAAAAP/sABFEdWNreQABAAQAAABQAAD/4QMxaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLwA8P3hwYWNrZXQgYmVnaW49Iu+7vyIgaWQ9Ilc1TTBNcENlaGlIenJlU3pOVGN6a2M5ZCI/PiA8eDp4bXBtZXRhIHhtbG5zOng9ImFkb2JlOm5zOm1ldGEvIiB4OnhtcHRrPSJBZG9iZSBYTVAgQ29yZSA1LjYtYzA2NyA3OS4xNTc3NDcsIDIwMTUvMDMvMzAtMjM6NDA6NDIgICAgICAgICI+IDxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+IDxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiIHhtbG5zOnhtcD0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wLyIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bXA6Q3JlYXRvclRvb2w9IkFkb2JlIFBob3Rvc2hvcCBDQyAyMDE1IChNYWNpbnRvc2gpIiB4bXBNTTpJbnN0YW5jZUlEPSJ4bXAuaWlkOkM1OTk4RUUyQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIiB4bXBNTTpEb2N1bWVudElEPSJ4bXAuZGlkOkM1OTk4RUUzQjNCNTExRTVBNzdGRjlFOTdFNjM1MzEwIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6QzU5OThFRTBCM0I1MTFFNUE3N0ZGOUU5N0U2MzUzMTAiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6QzU5OThFRTFCM0I1MTFFNUE3N0ZGOUU5N0U2MzUzMTAiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz7/7gAOQWRvYmUAZMAAAAAB/9sAhAACAgICAgICAgICAwIC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);\n        }\n\n        .disclaimer {\n            max-width: 960px;\n            display: block;\n            margin: 0 auto;\n            text-align: center;\n            color: #333;\n            font-size: .6em;\n        }\n\n        @media (min-width: 768px) and (max-width: 991px)  {\n            .container {\n                padding: 1em;\n                border: 0;\n                border-radius: 0;\n            }\n        }\n\n        @media (max-width: 767px)  {\n            body {\n                font-size: 16px;\n            }\n            .container {\n                padding: 1em;\n                margin: 0 0 1em;\n                border: 0;\n                border-radius: 0;\n            }\n            .container > section, .container > aside {\n                float: none;\n                width: 100%;\n            }\n            .container aside {\n                border: 0;\n                padding: 0;\n            }\n            .logo {\n                width: 100%;\n                height: 48px;\n            }\n            h1 {\n                font-size: 24px;\n            }\n            h2 {\n                font-size: 19px;\n            }\n            h3 {\n                font-size: 16px;\n            }\n            .companys ul li {\n                display: block;\n            }\n        }\n\n    </style>\n</head>\n<body>\n\n<a href=\"http://www.modx.com\" title=\"Modx\" class=\"logo\" target=\"_blank\">MODX</a>\n\n<div class=\"container\">\n    <section>\n        <h1>[[*longtitle:default=`[[*pagetitle]]`]]</h1>\n        [[*content]]\n    </section>\n    <aside>\n        <a href=\"[[++manager_url]]\" title=\"Your MODX manager\" class=\"cta-button\">Go to the&nbsp;manager</a>\n        <h3>Learn more about&nbsp;MODX</h3>\n        <ul>\n            <li><a href=\"https://docs.modx.com/current/en/index\">Official&nbsp;Documentation</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/getting-started/friendly-urls\">Using Friendly&nbsp;URLs</a></li>\n            <li><a href=\"https://docs.modx.com/current/en/building-sites/extras\">Package&nbsp;Management</a></li>\n            <li><a href=\"http://modx.com/blog/\">Official MODX&nbsp;Blog</a></li>\n            <li><a href=\"http://www.discovermodx.com/\">Discover&nbsp;MODX</a></li>\n            <li><a href=\"https://modx.today\">MODX.today</a></li>\n        </ul>\n\n        <h3>Get help!</h3>\n        <ul>\n            <li><a href=\"http://forums.modx.com/\">Official MODX&nbsp;Forums</a></li>\n            <li><a href=\"https://modx.org/\">MODX on&nbsp;Slack</a></li>\n            <li><a href=\"https://twitter.com/modx\">MODX on&nbsp;Twitter</a></li>\n            <li><a href=\"https://www.facebook.com/modxcms\">MODX on&nbsp;Facebook</a></li>\n            <li><a href=\"http://modx.com/professionals/\">Find a MODX&nbsp;Professional</a></li>\n        </ul>\n    </aside>\n    <div class=\"companies\">\n        <h3>Extend MODX with&nbsp;Extras</h3>\n        <ul>\n            <li class=\"modxextras\"><a href=\"http://modx.com/extras/\" title=\"MODX extras\" target=\"_blank\">MODX&nbsp;extras</a></li>\n            <li class=\"modmore\"><a href=\"https://www.modmore.com/extras/\" title=\"modmore.com\" target=\"_blank\">modmore.com</a></li>\n            <li class=\"modstore\"><a href=\"https://modstore.pro/\" title=\"modstore.pro\" target=\"_blank\">modstore.pro</a></li>\n            <li class=\"extrasio\"><a href=\"https://extras.io/extras/\" title=\"Extras.io\" target=\"_blank\">Extras.io</a></li>\n        </ul>\n    </div>\n</div>\n<footer class=\"disclaimer\">\n    <p>&copy; 2005-present the <a href=\"http://www.modx.com/\" target=\"_blank\">MODX</a> Content Management Framework (CMF) project. All rights reserved. MODX is licensed under the GNU&nbsp;GPL.</p>\n</footer>\n\n<script>\n    // Load the Open Sans font\n    try {\n        document.addEventListener(\"DOMContentLoaded\", function() { // prevent a Flash Of Unstyled Text (FOUT)\n            document.querySelector(\'head\').innerHTML += \"<link href=\'https://fonts.googleapis.com/css?family=Open+Sans:400,700&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\";\n            document.body.classList.add(\'loaded\');\n        });\n    } catch (e) { }\n\n    // Shuffle the vendors to prevent favoritism of one vendor over the other\n    // with thanks to http://james.padolsey.com/javascript/shuffling-the-dom/\n    function shuffle(elems) {\n        var allElems = (function(){\n            var ret = [], l = elems.length;\n            while (l--) {\n                if (elems[l].className !== \'modxextras\') {\n                    ret[ret.length] = elems[l];\n                }\n            }\n            return ret;\n        })();\n\n        var shuffled = (function(){\n            var l = allElems.length, ret = [];\n            while (l--) {\n                var random = Math.floor(Math.random() * allElems.length),\n                        randEl = allElems[random].cloneNode(true);\n                allElems.splice(random, 1);\n                ret[ret.length] = randEl;\n            }\n            return ret;\n        })(), l = elems.length;\n\n        // To make sure the MODX logo stays #1, we lower the count by one here (shuffling 3 instead of 4 items)\n        // and refer to elems[l+1] in the loop below. This matches because allElems was also filtered to not include\n        // the official MODX logo.\n        l--;\n        while (l--) {\n            elems[l+1].parentNode.insertBefore(shuffled[l], elems[l+1].nextSibling);\n            elems[l+1].parentNode.removeChild(elems[l+1]);\n        }\n    }\n    shuffle(document.querySelectorAll(\'.companies li\'));\n</script>\n\n</body>\n</html>\n',0,NULL,0,''),(2,1,0,'dsfasdfsaf','asdfasfsad',0,0,'',0,'',0,'a:0:{}',0,'');
/*!40000 ALTER TABLE `modx_site_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_access`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_access` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `documentgroup` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `tmplvar_template` (`tmplvarid`,`documentgroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_access`
--

LOCK TABLES `modx_site_tmplvar_access` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_contentvalues`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_contentvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_contentvalues` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tmplvarid` int NOT NULL DEFAULT '0',
  `contentid` int NOT NULL DEFAULT '0',
  `value` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tv_cnt` (`tmplvarid`,`contentid`),
  KEY `tmplvarid` (`tmplvarid`),
  KEY `contentid` (`contentid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_contentvalues`
--

LOCK TABLES `modx_site_tmplvar_contentvalues` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_contentvalues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvar_templates`
--

DROP TABLE IF EXISTS `modx_site_tmplvar_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvar_templates` (
  `tmplvarid` int NOT NULL DEFAULT '0',
  `templateid` int NOT NULL DEFAULT '0',
  `rank` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`tmplvarid`,`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvar_templates`
--

LOCK TABLES `modx_site_tmplvar_templates` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvar_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_site_tmplvars`
--

DROP TABLE IF EXISTS `modx_site_tmplvars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_site_tmplvars` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source` int unsigned NOT NULL DEFAULT '0',
  `property_preprocess` tinyint unsigned NOT NULL DEFAULT '0',
  `type` varchar(20) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL DEFAULT '',
  `caption` varchar(80) NOT NULL DEFAULT '',
  `description` varchar(191) NOT NULL DEFAULT '',
  `editor_type` int NOT NULL DEFAULT '0',
  `category` int NOT NULL DEFAULT '0',
  `locked` tinyint unsigned NOT NULL DEFAULT '0',
  `elements` text,
  `rank` int NOT NULL DEFAULT '0',
  `display` varchar(20) NOT NULL DEFAULT '',
  `default_text` mediumtext,
  `properties` text,
  `input_properties` text,
  `output_properties` text,
  `static` tinyint unsigned NOT NULL DEFAULT '0',
  `static_file` varchar(191) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category` (`category`),
  KEY `locked` (`locked`),
  KEY `rank` (`rank`),
  KEY `static` (`static`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_site_tmplvars`
--

LOCK TABLES `modx_site_tmplvars` WRITE;
/*!40000 ALTER TABLE `modx_site_tmplvars` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_site_tmplvars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_eventnames`
--

DROP TABLE IF EXISTS `modx_system_eventnames`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_system_eventnames` (
  `name` varchar(50) NOT NULL,
  `service` tinyint unsigned NOT NULL DEFAULT '0',
  `groupname` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_eventnames`
--

LOCK TABLES `modx_system_eventnames` WRITE;
/*!40000 ALTER TABLE `modx_system_eventnames` DISABLE KEYS */;
INSERT INTO `modx_system_eventnames` VALUES ('OnBeforeCacheUpdate',4,'System'),('OnBeforeChunkFormDelete',1,'Chunks'),('OnBeforeChunkFormSave',1,'Chunks'),('OnBeforeDocFormDelete',1,'Resources'),('OnBeforeDocFormSave',1,'Resources'),('OnBeforeEmptyTrash',1,'Resources'),('OnBeforeManagerLogin',2,'Security'),('OnBeforeManagerLogout',2,'Security'),('OnBeforeManagerPageInit',2,'System'),('OnBeforePluginFormDelete',1,'Plugins'),('OnBeforePluginFormSave',1,'Plugins'),('OnBeforeRegisterClientScripts',5,'System'),('OnBeforeSaveWebPageCache',4,'System'),('OnBeforeSnipFormDelete',1,'Snippets'),('OnBeforeSnipFormSave',1,'Snippets'),('OnBeforeTempFormDelete',1,'Templates'),('OnBeforeTempFormSave',1,'Templates'),('OnBeforeTVFormDelete',1,'Template Variables'),('OnBeforeTVFormSave',1,'Template Variables'),('OnBeforeUserActivate',1,'Users'),('OnBeforeUserDeactivate',1,'Users'),('OnBeforeUserDuplicate',1,'Users'),('OnBeforeUserFormDelete',1,'Users'),('OnBeforeUserFormSave',1,'Users'),('OnBeforeUserGroupFormRemove',1,'User Groups'),('OnBeforeUserGroupFormSave',1,'User Groups'),('OnBeforeWebLogin',3,'Security'),('OnBeforeWebLogout',3,'Security'),('OnCacheUpdate',4,'System'),('OnCategoryBeforeRemove',1,'Categories'),('OnCategoryBeforeSave',1,'Categories'),('OnCategoryRemove',1,'Categories'),('OnCategorySave',1,'Categories'),('OnChunkBeforeRemove',1,'Chunks'),('OnChunkBeforeSave',1,'Chunks'),('OnChunkFormDelete',1,'Chunks'),('OnChunkFormPrerender',1,'Chunks'),('OnChunkFormRender',1,'Chunks'),('OnChunkFormSave',1,'Chunks'),('OnChunkRemove',1,'Chunks'),('OnChunkSave',1,'Chunks'),('OnContextBeforeRemove',1,'Contexts'),('OnContextBeforeSave',1,'Contexts'),('OnContextFormPrerender',2,'Contexts'),('OnContextFormRender',2,'Contexts'),('OnContextRemove',1,'Contexts'),('OnContextSave',1,'Contexts'),('OnDocFormDelete',1,'Resources'),('OnDocFormPrerender',1,'Resources'),('OnDocFormRender',1,'Resources'),('OnDocFormSave',1,'Resources'),('OnDocPublished',5,'Resources'),('OnDocUnPublished',5,'Resources'),('OnElementNotFound',1,'System'),('OnEmptyTrash',1,'Resources'),('OnFileCreateFormPrerender',1,'System'),('OnFileEditFormPrerender',1,'System'),('OnFileManagerBeforeUpload',1,'System'),('OnFileManagerDirCreate',1,'System'),('OnFileManagerDirRemove',1,'System'),('OnFileManagerDirRename',1,'System'),('OnFileManagerFileCreate',1,'System'),('OnFileManagerFileRemove',1,'System'),('OnFileManagerFileRename',1,'System'),('OnFileManagerFileUpdate',1,'System'),('OnFileManagerMoveObject',1,'System'),('OnFileManagerUpload',1,'System'),('OnHandleRequest',5,'System'),('OnInitCulture',1,'Internationalization'),('OnLoadWebDocument',5,'System'),('OnLoadWebPageCache',4,'System'),('OnManagerAuthentication',2,'Security'),('OnManagerLogin',2,'Security'),('OnManagerLoginFormPrerender',2,'Security'),('OnManagerLoginFormRender',2,'Security'),('OnManagerLogout',2,'Security'),('OnManagerPageAfterRender',2,'System'),('OnManagerPageBeforeRender',2,'System'),('OnManagerPageInit',2,'System'),('OnMediaSourceBeforeFormDelete',1,'Media Sources'),('OnMediaSourceBeforeFormSave',1,'Media Sources'),('OnMediaSourceDuplicate',1,'Media Sources'),('OnMediaSourceFormDelete',1,'Media Sources'),('OnMediaSourceFormSave',1,'Media Sources'),('OnMediaSourceGetProperties',1,'Media Sources'),('OnMODXInit',5,'System'),('OnPackageInstall',2,'Package Manager'),('OnPackageRemove',2,'Package Manager'),('OnPackageUninstall',2,'Package Manager'),('OnPageNotFound',1,'System'),('OnPageUnauthorized',1,'Security'),('OnParseDocument',5,'System'),('OnPluginBeforeRemove',1,'Plugins'),('OnPluginBeforeSave',1,'Plugins'),('OnPluginEventBeforeRemove',1,'Plugin Events'),('OnPluginEventBeforeSave',1,'Plugin Events'),('OnPluginEventRemove',1,'Plugin Events'),('OnPluginEventSave',1,'Plugin Events'),('OnPluginFormDelete',1,'Plugins'),('OnPluginFormPrerender',1,'Plugins'),('OnPluginFormRender',1,'Plugins'),('OnPluginFormSave',1,'Plugins'),('OnPluginRemove',1,'Plugins'),('OnPluginSave',1,'Plugins'),('OnPropertySetBeforeRemove',1,'Property Sets'),('OnPropertySetBeforeSave',1,'Property Sets'),('OnPropertySetRemove',1,'Property Sets'),('OnPropertySetSave',1,'Property Sets'),('OnResourceAddToResourceGroup',1,'Resources'),('OnResourceAutoPublish',1,'Resources'),('OnResourceBeforeSort',1,'Resources'),('OnResourceCacheUpdate',1,'Resources'),('OnResourceDelete',1,'Resources'),('OnResourceDuplicate',1,'Resources'),('OnResourceGroupBeforeRemove',1,'Security'),('OnResourceGroupBeforeSave',1,'Security'),('OnResourceGroupRemove',1,'Security'),('OnResourceGroupSave',1,'Security'),('OnResourceRemoveFromResourceGroup',1,'Resources'),('OnResourceSort',1,'Resources'),('OnResourceToolbarLoad',1,'Resources'),('OnResourceTVFormPrerender',1,'Resources'),('OnResourceTVFormRender',1,'Resources'),('OnResourceUndelete',1,'Resources'),('OnRichTextBrowserInit',1,'RichText Editor'),('OnRichTextEditorInit',1,'RichText Editor'),('OnRichTextEditorRegister',1,'RichText Editor'),('OnSiteRefresh',1,'System'),('OnSiteSettingsRender',1,'Settings'),('OnSnipFormDelete',1,'Snippets'),('OnSnipFormPrerender',1,'Snippets'),('OnSnipFormRender',1,'Snippets'),('OnSnipFormSave',1,'Snippets'),('OnSnippetBeforeRemove',1,'Snippets'),('OnSnippetBeforeSave',1,'Snippets'),('OnSnippetRemove',1,'Snippets'),('OnSnippetSave',1,'Snippets'),('OnTempFormDelete',1,'Templates'),('OnTempFormPrerender',1,'Templates'),('OnTempFormRender',1,'Templates'),('OnTempFormSave',1,'Templates'),('OnTemplateBeforeRemove',1,'Templates'),('OnTemplateBeforeSave',1,'Templates'),('OnTemplateRemove',1,'Templates'),('OnTemplateSave',1,'Templates'),('OnTemplateVarBeforeRemove',1,'Template Variables'),('OnTemplateVarBeforeSave',1,'Template Variables'),('OnTemplateVarRemove',1,'Template Variables'),('OnTemplateVarSave',1,'Template Variables'),('OnTVFormDelete',1,'Template Variables'),('OnTVFormPrerender',1,'Template Variables'),('OnTVFormRender',1,'Template Variables'),('OnTVFormSave',1,'Template Variables'),('OnTVInputPropertiesList',1,'Template Variables'),('OnTVInputRenderList',1,'Template Variables'),('OnTVOutputRenderList',1,'Template Variables'),('OnTVOutputRenderPropertiesList',1,'Template Variables'),('OnUserActivate',1,'Users'),('OnUserAddToGroup',1,'User Groups'),('OnUserBeforeAddToGroup',1,'User Groups'),('OnUserBeforeRemove',1,'Users'),('OnUserBeforeRemoveFromGroup',1,'User Groups'),('OnUserBeforeSave',1,'Users'),('OnUserChangePassword',1,'Users'),('OnUserDeactivate',1,'Users'),('OnUserDuplicate',1,'Users'),('OnUserFormDelete',1,'Users'),('OnUserFormPrerender',1,'Users'),('OnUserFormRender',1,'Users'),('OnUserFormSave',1,'Users'),('OnUserGroupBeforeRemove',1,'User Groups'),('OnUserGroupBeforeSave',1,'User Groups'),('OnUserGroupFormSave',1,'User Groups'),('OnUserGroupRemove',1,'User Groups'),('OnUserGroupSave',1,'User Groups'),('OnUserNotFound',1,'Users'),('OnUserProfileBeforeRemove',1,'User Profiles'),('OnUserProfileBeforeSave',1,'User Profiles'),('OnUserProfileRemove',1,'User Profiles'),('OnUserProfileSave',1,'User Profiles'),('OnUserRemove',1,'Users'),('OnUserRemoveFromGroup',1,'User Groups'),('OnUserSave',1,'Users'),('OnWebAuthentication',3,'Security'),('OnWebLogin',3,'Security'),('OnWebLogout',3,'Security'),('OnWebPageComplete',5,'System'),('OnWebPageInit',5,'System'),('OnWebPagePrerender',5,'System');
/*!40000 ALTER TABLE `modx_system_eventnames` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_system_settings`
--

DROP TABLE IF EXISTS `modx_system_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_system_settings` (
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text NOT NULL,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_system_settings`
--

LOCK TABLES `modx_system_settings` WRITE;
/*!40000 ALTER TABLE `modx_system_settings` DISABLE KEYS */;
INSERT INTO `modx_system_settings` VALUES ('access_category_enabled','1','combo-boolean','core','authentication',NULL),('access_context_enabled','1','combo-boolean','core','authentication',NULL),('access_resource_group_enabled','1','combo-boolean','core','authentication',NULL),('allow_forward_across_contexts','','combo-boolean','core','system',NULL),('allow_manager_login_forgot_password','1','combo-boolean','core','authentication',NULL),('allow_multiple_emails','1','combo-boolean','core','authentication',NULL),('allow_tags_in_post','','combo-boolean','core','system',NULL),('allow_tv_eval','1','combo-boolean','core','system',NULL),('anonymous_sessions','1','combo-boolean','core','session',NULL),('archive_with','','combo-boolean','core','system',NULL),('auto_check_pkg_updates','1','combo-boolean','core','system',NULL),('auto_check_pkg_updates_cache_expire','15','textfield','core','system',NULL),('auto_isfolder','1','combo-boolean','core','site',NULL),('auto_menuindex','1','combo-boolean','core','site',NULL),('automatic_alias','1','combo-boolean','core','furls',NULL),('automatic_template_assignment','parent','textfield','core','site',NULL),('base_help_url','//docs.modx.com/display/revolution20/','textfield','core','manager',NULL),('blocked_minutes','60','textfield','core','authentication',NULL),('cache_action_map','1','combo-boolean','core','caching',NULL),('cache_alias_map','1','combo-boolean','core','caching',NULL),('cache_context_settings','1','combo-boolean','core','caching',NULL),('cache_db','0','combo-boolean','core','caching',NULL),('cache_db_expires','0','textfield','core','caching',NULL),('cache_db_session','0','combo-boolean','core','caching',NULL),('cache_db_session_lifetime','','textfield','core','caching',NULL),('cache_default','1','combo-boolean','core','caching',NULL),('cache_expires','0','textfield','core','caching',NULL),('cache_format','0','textfield','core','caching',NULL),('cache_handler','xPDOFileCache','textfield','core','caching',NULL),('cache_lang_js','1','combo-boolean','core','caching',NULL),('cache_lexicon_topics','1','combo-boolean','core','caching',NULL),('cache_noncore_lexicon_topics','1','combo-boolean','core','caching',NULL),('cache_resource','1','combo-boolean','core','caching',NULL),('cache_resource_clear_partial','0','combo-boolean','core','caching',NULL),('cache_resource_expires','0','textfield','core','caching',NULL),('cache_scripts','1','combo-boolean','core','caching',NULL),('clear_cache_refresh_trees','0','combo-boolean','core','caching',NULL),('compress_css','0','combo-boolean','core','manager','2021-01-19 22:39:54'),('compress_js','0','combo-boolean','core','manager','2021-01-19 22:39:54'),('compress_js_max_files','10','textfield','core','manager',NULL),('confirm_navigation','1','combo-boolean','core','manager',NULL),('container_suffix','/','textfield','core','furls',NULL),('context_tree_sort','1','combo-boolean','core','manager',NULL),('context_tree_sortby','rank','textfield','core','manager',NULL),('context_tree_sortdir','ASC','textfield','core','manager',NULL),('cultureKey','en','modx-combo-language','core','language',NULL),('date_timezone','','textfield','core','system',NULL),('debug','','textfield','core','system',NULL),('default_content_type','1','modx-combo-content-type','core','site',NULL),('default_context','web','modx-combo-context','core','site',NULL),('default_duplicate_publish_option','preserve','textfield','core','manager',NULL),('default_media_source','1','modx-combo-source','core','manager',NULL),('default_media_source_type','sources.modFileMediaSource','modx-combo-source-type','core','manager',NULL),('default_per_page','20','textfield','core','manager',NULL),('default_template','1','modx-combo-template','core','site',NULL),('default_username','(anonymous)','textfield','core','session',NULL),('doodles.assets_url','https://192.168.0.104/doodlesMine/assets/components/doodles/','textfield','doodles','','2021-01-22 18:24:40'),('doodles.core_path','{base_path}doodlesMine/core/components/doodles/','textfield','doodles','','2021-01-22 18:12:44'),('editor_css_path','','textfield','core','editor',NULL),('editor_css_selectors','','textfield','core','editor',NULL),('emailsender','admin@admin.com','textfield','core','authentication','2021-01-19 22:39:53'),('emailsubject','Your login details','textfield','core','authentication',NULL),('enable_dragdrop','1','combo-boolean','core','manager',NULL),('enable_gravatar','1','combo-boolean','core','manager',NULL),('error_log_filename','error.log','textfield','core','system',NULL),('error_log_filepath','','textfield','core','system',NULL),('error_page','1','textfield','core','site',NULL),('failed_login_attempts','5','textfield','core','authentication',NULL),('fe_editor_lang','en','modx-combo-language','core','language',NULL),('feed_modx_news','https://feeds.feedburner.com/modx-announce','textfield','core','system',NULL),('feed_modx_news_enabled','1','combo-boolean','core','system',NULL),('feed_modx_security','https://forums.modx.com/board.xml?board=294','textfield','core','system',NULL),('feed_modx_security_enabled','1','combo-boolean','core','system',NULL),('filemanager_path','','textfield','core','file',NULL),('filemanager_path_relative','1','combo-boolean','core','file',NULL),('filemanager_url','','textfield','core','file',NULL),('filemanager_url_relative','1','combo-boolean','core','file',NULL),('forgot_login_email','<p>Hello [[+username]],</p>\n<p>A request for a password reset has been issued for your MODX user. If you sent this, you may follow this link and use this password to login. If you did not send this request, please ignore this email.</p>\n\n<p>\n    <strong>Activation Link:</strong> [[+url_scheme]][[+http_host]][[+manager_url]]?modahsh=[[+hash]]<br />\n    <strong>Username:</strong> [[+username]]<br />\n    <strong>Password:</strong> [[+password]]<br />\n</p>\n\n<p>After you log into the MODX Manager, you can change your password again, if you wish.</p>\n\n<p>Regards,<br />Site Administrator</p>','textarea','core','authentication',NULL),('form_customization_use_all_groups','','combo-boolean','core','manager',NULL),('forward_merge_excludes','type,published,class_key','textfield','core','system',NULL),('friendly_alias_lowercase_only','1','combo-boolean','core','furls',NULL),('friendly_alias_max_length','0','textfield','core','furls',NULL),('friendly_alias_realtime','0','combo-boolean','core','furls',NULL),('friendly_alias_restrict_chars','pattern','textfield','core','furls',NULL),('friendly_alias_restrict_chars_pattern','/[\\0\\x0B\\t\\n\\r\\f\\a&=+%#<>\"~:`@\\?\\[\\]\\{\\}\\|\\^\'\\\\]/','textfield','core','furls',NULL),('friendly_alias_strip_element_tags','1','combo-boolean','core','furls',NULL),('friendly_alias_translit','none','textfield','core','furls',NULL),('friendly_alias_translit_class','translit.modTransliterate','textfield','core','furls',NULL),('friendly_alias_translit_class_path','{core_path}components/','textfield','core','furls',NULL),('friendly_alias_trim_chars','/.-_','textfield','core','furls',NULL),('friendly_alias_word_delimiter','-','textfield','core','furls',NULL),('friendly_alias_word_delimiters','-_','textfield','core','furls',NULL),('friendly_urls','0','combo-boolean','core','furls',NULL),('friendly_urls_strict','0','combo-boolean','core','furls',NULL),('global_duplicate_uri_check','0','combo-boolean','core','furls',NULL),('hidemenu_default','0','combo-boolean','core','site',NULL),('inline_help','1','combo-boolean','core','manager',NULL),('link_tag_scheme','-1','textfield','core','site',NULL),('locale','','textfield','core','language',NULL),('lock_ttl','360','textfield','core','system',NULL),('log_deprecated','1','combo-boolean','core','system',NULL),('log_level','1','textfield','core','system',NULL),('log_snippet_not_found','1','combo-boolean','core','site',NULL),('log_target','FILE','textfield','core','system',NULL),('login.forgot_password_email_subject','Password Retrieval Email','textfield','login','authentication',NULL),('mail_charset','UTF-8','modx-combo-charset','core','mail',NULL),('mail_encoding','8bit','textfield','core','mail',NULL),('mail_smtp_auth','','combo-boolean','core','mail',NULL),('mail_smtp_helo','','textfield','core','mail',NULL),('mail_smtp_hosts','localhost','textfield','core','mail',NULL),('mail_smtp_keepalive','','combo-boolean','core','mail',NULL),('mail_smtp_pass','','text-password','core','mail',NULL),('mail_smtp_port','587','textfield','core','mail',NULL),('mail_smtp_prefix','','textfield','core','mail',NULL),('mail_smtp_single_to','','combo-boolean','core','mail',NULL),('mail_smtp_timeout','10','textfield','core','mail',NULL),('mail_smtp_user','','textfield','core','mail',NULL),('mail_use_smtp','','combo-boolean','core','mail',NULL),('main_nav_parent','topnav','textfield','core','manager',NULL),('manager_date_format','Y-m-d','textfield','core','manager',NULL),('manager_direction','ltr','textfield','core','language',NULL),('manager_favicon_url','','textfield','core','manager',NULL),('manager_js_cache_file_locking','1','combo-boolean','core','manager',NULL),('manager_js_cache_max_age','3600','textfield','core','manager',NULL),('manager_js_document_root','','textfield','core','manager',NULL),('manager_js_zlib_output_compression','0','combo-boolean','core','manager',NULL),('manager_lang_attribute','en','textfield','core','language',NULL),('manager_language','en','modx-combo-language','core','language',NULL),('manager_login_url_alternate','','textfield','core','authentication',NULL),('manager_theme','default','modx-combo-manager-theme','core','manager',NULL),('manager_time_format','g:i a','textfield','core','manager',NULL),('manager_use_fullname','','combo-boolean','core','manager',NULL),('manager_week_start','0','textfield','core','manager',NULL),('mgr_source_icon','icon-folder-open-o','textfield','core','manager',NULL),('mgr_tree_icon_context','tree-context','textfield','core','manager',NULL),('modx_browser_default_sort','name','textfield','core','manager',NULL),('modx_browser_default_viewmode','grid','textfield','core','manager',NULL),('modx_browser_tree_hide_files','1','combo-boolean','core','manager',NULL),('modx_browser_tree_hide_tooltips','1','combo-boolean','core','manager',NULL),('modx_charset','UTF-8','modx-combo-charset','core','language',NULL),('parser_recurse_uncacheable','1','combo-boolean','core','system',NULL),('password_generated_length','10','textfield','core','authentication',NULL),('password_min_length','8','textfield','core','authentication',NULL),('phpthumb_allow_src_above_docroot','','combo-boolean','core','phpthumb',NULL),('phpthumb_cache_maxage','30','textfield','core','phpthumb',NULL),('phpthumb_cache_maxfiles','10000','textfield','core','phpthumb',NULL),('phpthumb_cache_maxsize','100','textfield','core','phpthumb',NULL),('phpthumb_cache_source_enabled','','combo-boolean','core','phpthumb',NULL),('phpthumb_document_root','','textfield','core','phpthumb',NULL),('phpthumb_error_bgcolor','CCCCFF','textfield','core','phpthumb',NULL),('phpthumb_error_fontsize','1','textfield','core','phpthumb',NULL),('phpthumb_error_textcolor','FF0000','textfield','core','phpthumb',NULL),('phpthumb_far','C','textfield','core','phpthumb',NULL),('phpthumb_imagemagick_path','','textfield','core','phpthumb',NULL),('phpthumb_nohotlink_enabled','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nohotlink_erase_image','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nohotlink_text_message','Off-server thumbnailing is not allowed','textfield','core','phpthumb',NULL),('phpthumb_nohotlink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_enabled','','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_erase_image','1','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_require_refer','','combo-boolean','core','phpthumb',NULL),('phpthumb_nooffsitelink_text_message','Off-server linking is not allowed','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_valid_domains','{http_host}','textfield','core','phpthumb',NULL),('phpthumb_nooffsitelink_watermark_src','','textfield','core','phpthumb',NULL),('phpthumb_zoomcrop','0','textfield','core','phpthumb',NULL),('preserve_menuindex','1','combo-boolean','core','manager',NULL),('principal_targets','modAccessContext,modAccessResourceGroup,modAccessCategory,sources.modAccessMediaSource,modAccessNamespace','textfield','core','authentication',NULL),('proxy_auth_type','BASIC','textfield','core','proxy',NULL),('proxy_host','','textfield','core','proxy',NULL),('proxy_password','','text-password','core','proxy',NULL),('proxy_port','','textfield','core','proxy',NULL),('proxy_username','','textfield','core','proxy',NULL),('publish_default','','combo-boolean','core','site',NULL),('rb_base_dir','','textfield','core','file',NULL),('rb_base_url','','textfield','core','file',NULL),('recaptcha.private_key','','textfield','login','recaptcha',NULL),('recaptcha.public_key','','textfield','login','recaptcha',NULL),('recaptcha.use_ssl','false','combo-boolean','login','recaptcha',NULL),('request_controller','index.php','textfield','core','gateway',NULL),('request_method_strict','0','combo-boolean','core','gateway',NULL),('request_param_alias','q','textfield','core','gateway',NULL),('request_param_id','id','textfield','core','gateway',NULL),('resolve_hostnames','0','combo-boolean','core','system',NULL),('resource_tree_node_name','pagetitle','textfield','core','manager',NULL),('resource_tree_node_name_fallback','pagetitle','textfield','core','manager',NULL),('resource_tree_node_tooltip','','textfield','core','manager',NULL),('richtext_default','1','combo-boolean','core','manager',NULL),('search_default','1','combo-boolean','core','site',NULL),('send_poweredby_header','0','combo-boolean','core','system',NULL),('server_offset_time','0','textfield','core','system',NULL),('server_protocol','http','textfield','core','system',NULL),('session_cookie_domain','','textfield','core','session',NULL),('session_cookie_httponly','1','combo-boolean','core','session',NULL),('session_cookie_lifetime','604800','textfield','core','session',NULL),('session_cookie_path','/','textfield','core','session','2021-01-19 22:55:52'),('session_cookie_secure','','combo-boolean','core','session',NULL),('session_gc_maxlifetime','604800','textfield','core','session',NULL),('session_handler_class','modSessionHandler','textfield','core','session',NULL),('session_name','','textfield','core','session',NULL),('set_header','1','combo-boolean','core','system',NULL),('settings_distro','traditional','textfield','core','system',NULL),('settings_version','2.8.1-pl','textfield','core','system',NULL),('show_tv_categories_header','1','combo-boolean','core','manager',NULL),('signupemail_message','<p>Hello [[+uid]],</p>\n    <p>Here are your login details for the [[+sname]] MODX Manager:</p>\n\n    <p>\n        <strong>Username:</strong> [[+uid]]<br />\n        <strong>Password:</strong> [[+pwd]]<br />\n    </p>\n\n    <p>Once you log into the MODX Manager at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />Site Administrator</p>','textarea','core','authentication',NULL),('site_name','MODX Revolution','textfield','core','site',NULL),('site_start','1','textfield','core','site',NULL),('site_status','1','combo-boolean','core','site',NULL),('site_unavailable_message','The site is currently unavailable','textfield','core','site',NULL),('site_unavailable_page','0','textfield','core','site',NULL),('static_elements_automate_chunks','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_plugins','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_snippets','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_templates','0','combo-boolean','core','static_elements',NULL),('static_elements_automate_tvs','0','combo-boolean','core','static_elements',NULL),('static_elements_basepath','','textfield','core','static_elements',NULL),('static_elements_default_category','0','modx-combo-category','core','static_elements',NULL),('static_elements_default_mediasource','0','modx-combo-source','core','static_elements',NULL),('strip_image_paths','1','combo-boolean','core','file',NULL),('symlink_merge_fields','1','combo-boolean','core','site',NULL),('syncsite_default','1','combo-boolean','core','caching',NULL),('topmenu_show_descriptions','1','combo-boolean','core','manager',NULL),('tree_default_sort','menuindex','textfield','core','manager',NULL),('tree_root_id','0','numberfield','core','manager',NULL),('tvs_below_content','0','combo-boolean','core','manager',NULL),('udperms_allowroot','','combo-boolean','core','authentication',NULL),('unauthorized_page','1','textfield','core','site',NULL),('upload_check_exists','1','combo-boolean','core','file',NULL),('upload_files','txt,html,htm,xml,js,js.map,css,scss,less,css.map,zip,gz,rar,z,tgz,tar,mp3,mp4,aac,wav,au,wmv,avi,mpg,mpeg,pdf,doc,docx,xls,xlsx,ppt,pptx,jpg,jpeg,png,tiff,svg,svgz,gif,psd,ico,bmp,webp,odt,ods,odp,odb,odg,odf,md,ttf,woff,woff2,eot','textfield','core','file',NULL),('upload_flash','swf,fla','textfield','core','file',NULL),('upload_images','jpg,jpeg,png,gif,psd,ico,bmp,tiff,svg,svgz,webp','textfield','core','file',NULL),('upload_maxsize','2097152','textfield','core','file','2021-01-19 22:39:54'),('upload_media','mp3,wav,au,wmv,avi,mpg,mpeg','textfield','core','file',NULL),('use_alias_path','0','combo-boolean','core','furls',NULL),('use_browser','1','combo-boolean','core','file',NULL),('use_context_resource_table','1','combo-boolean','core','caching',NULL),('use_editor','1','combo-boolean','core','editor',NULL),('use_frozen_parent_uris','0','combo-boolean','core','furls',NULL),('use_multibyte','1','combo-boolean','core','language','2021-01-19 22:39:54'),('use_weblink_target','','combo-boolean','core','site',NULL),('user_nav_parent','usernav','textfield','core','manager',NULL),('webpwdreminder_message','<p>Hello [[+uid]],</p>\n\n    <p>To activate your new password click the following link:</p>\n\n    <p>[[+surl]]</p>\n\n    <p>If successful you can use the following password to login:</p>\n\n    <p><strong>Password:</strong> [[+pwd]]</p>\n\n    <p>If you did not request this email then please ignore it.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication',NULL),('websignupemail_message','<p>Hello [[+uid]],</p>\n\n    <p>Here are your login details for [[+sname]]:</p>\n\n    <p><strong>Username:</strong> [[+uid]]<br />\n    <strong>Password:</strong> [[+pwd]]</p>\n\n    <p>Once you log into [[+sname]] at [[+surl]], you can change your password.</p>\n\n    <p>Regards,<br />\n    Site Administrator</p>','textarea','core','authentication',NULL),('welcome_action','welcome','textfield','core','manager',NULL),('welcome_namespace','core','textfield','core','manager',NULL),('welcome_screen','','combo-boolean','core','manager','2021-01-20 16:18:41'),('welcome_screen_url','//misc.modx.com/revolution/welcome.28.html','textfield','core','manager',NULL),('which_editor','','modx-combo-rte','core','editor',NULL),('which_element_editor','','modx-combo-rte','core','editor',NULL),('xhtml_urls','1','combo-boolean','core','site',NULL);
/*!40000 ALTER TABLE `modx_system_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_packages`
--

DROP TABLE IF EXISTS `modx_transport_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_transport_packages` (
  `signature` varchar(191) NOT NULL,
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `installed` datetime DEFAULT NULL,
  `state` tinyint unsigned NOT NULL DEFAULT '1',
  `workspace` int unsigned NOT NULL DEFAULT '0',
  `provider` int unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `source` tinytext,
  `manifest` text,
  `attributes` mediumtext,
  `package_name` varchar(191) NOT NULL,
  `metadata` text,
  `version_major` smallint unsigned NOT NULL DEFAULT '0',
  `version_minor` smallint unsigned NOT NULL DEFAULT '0',
  `version_patch` smallint unsigned NOT NULL DEFAULT '0',
  `release` varchar(100) NOT NULL DEFAULT '',
  `release_index` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`signature`),
  KEY `workspace` (`workspace`),
  KEY `provider` (`provider`),
  KEY `disabled` (`disabled`),
  KEY `package_name` (`package_name`),
  KEY `version_major` (`version_major`),
  KEY `version_minor` (`version_minor`),
  KEY `version_patch` (`version_patch`),
  KEY `release` (`release`),
  KEY `release_index` (`release_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_packages`
--

LOCK TABLES `modx_transport_packages` WRITE;
/*!40000 ALTER TABLE `modx_transport_packages` DISABLE KEYS */;
INSERT INTO `modx_transport_packages` VALUES ('csssweet-5.2.0-beta1','2021-01-19 22:40:22','2021-01-19 22:40:26','2021-01-19 22:40:26',0,1,1,0,'csssweet-5.2.0-beta1.transport.zip',NULL,'a:5:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:9400:\"cssSweet\n=========================================\nVersion: 5.2.0-beta1\n\nAuthor: YJ Tso [@sepiariver](https://sepiariver.com/modx/)\n\ncssSweet is a suite of tools for processing (S)CSS. It comes with several output modifiers to manipulate CSS values, and a plugin that concatenates and processes (S)CSS from specified Chunks and outputs to a minified CSS file. version 2+ also concatenates and minifies JS with a 2nd plugin.\n\nFind out more about cssSweet [here](https://sepiariver.com/modx/csssweet)\n\nas well as on the documentation site:\n\n[https://docs.modx.org/current/en/extras/csssweet](https://docs.modx.org/current/en/extras/csssweet) **(this one needs updating)**\n\n\n## Example Use Cases\n- Use system or context settings to store primary colors in a site\'s color scheme, then process all other color values relative to these, so you can shift the entire color theme by modifying a few settings.\n- Use in conjunction with ClientConfig to give site owners a nice UI to manage CSS styles--but only the ones you expose, and only in the manner you choose!\n- Author MODX \"themes\" that are customizable by the end user.\n- Use other MODX tags & placeholders in your CSS. Utilize \"dynamic CSS\" without the performance penalty, because the plugin writes the static CSS file on the Manager Clear Cache and Chunk Save actions, not per request.\n- Manage your Sass, CSS, and JS development workflow right from inside the MODX Manager.\n- Add a code editor like Ace, and you can use MODX as your IDE for front-end development.\n\n_NOTE: please see section below on potentially breaking changes when upgrading from cssSweet version 1.x._\n\n## Usage\n\n### Installation\nYou can install cssSweet via the MODX Extras Installer. Or you can download it from the [MODX Extras Repo](http://modx.com/extras/package/cssSweet) or from the [_packages directory](https://github.com/sepiariver/cssSweet/tree/master/_packages). Upload the package to the packages subdirectory of your MODX install\'s core directory, and use the \"Search Locally for Packages\" feature in the Extras Installer to find and install the package.\n\n### CSS Sweetness\nOnce installed, you\'ll have a default Chunk in the \"cssSweet\" category. If you edit that Chunk and click the \"Manage\" » \"Clear Cache\" main menu item, a CSS file will be generated for you at\n`[[++assets_path]]components/csssweet/custom_css.min.css`\n\n**Note: it\'s highly recommended to create new Chunks with unique names. As of version 2.x, the cssSweet package has been configured to _not_ update an existing Chunk with the same name, but I haven\'t tested that thoroughly yet. I\'d hate for it to fail in your production environment.**\n\nReference the generated CSS file in your template, like this\n`<link rel=\"stylesheet\" href=\"[[++assets_path]]components/csssweet/custom_css.min.css\">`\nand you\'ll be good to go.\n\n### Customization\nIn the Plugin properties, you can set the names of Chunks that you wish to process and include, in a comma-separated list. (As of version 2, this is required for the plugin to do anything.)\n\n**IMPORTANT NOTES:**\n\n1. **Put your customized properties into a new property set**, so that they won\'t be overwritten on upgrade. In this case, ensure the Events are triggered using your custom property sets. Check the \"System Events\" tab in the Plugin Edit View.\n2. Make sure to enable the checkbox at the bottom of the \"Properties\" tab, that says \"Pre-process tags in Property Values\" if you are using MODX placeholders like `[[++assets_path]]`.\n\nYou can include static Chunks that reference files--even minified files. You can also customize the filesystem location to which to write the output file. Chunks will be included in the order which they appear in the comma-separated list. As of version 2, cssSweet will parse any SCSS syntax in your Chunks, and log error messages generated by the scssphp processor class.\n\n### Events\nYou can optionally enable the `OnChunkFormSave` Event in the Plugin events tab. (As of version 2, this event is enabled by default.)\n\nDoing so will speed up your process immensely, as a new output file will be generated each time you save a Chunk that is in the list of Chunks you\'ve set.\n\nAs of version 4.1, you can also enable the custom `ClientConfig_ConfigChange` event, if you have the ClientConfig Extra installed.\n\nAs of version 5.1, an un-tested—and at this time unsupported—feature exists whereby you can enable the `OnDocFormSave` event, at which point saving a Resource with `contentType = text/css` will trigger the Plugin to execute. You still need to configure a Chunk where you include the content of the css Resources via a Snippet of some kind.\n\n### \"Dev\" Mode\nAs of version 4, the dedicated \"dev mode\" properties have been removed, and the `dev_mode` Plugin property is a textfield rather than boolean. By entering a (string) namespace, the plugin will use the properties prefixed with `{$namespace}_`, allowing you to process a different set of Chunks, output to a different file, or override any Plugin property.\n\nThis allows for multiple workflows and output files. You can use it to build [moderately-sized bundles of assets for performance](https://medium.com/@asyncmax/the-right-way-to-bundle-your-assets-for-faster-sites-over-http-2-437c37efe3ff) or build a different output file for different Contexts.\n\n### Snippets\n\ncssSweet installs with a suite of utility Snippets to manipulate style declarations. See the files in the [Snippets folder](https://github.com/sepiariver/cssSweet/tree/master/core/components/csssweet/elements/snippets) for more detailed usage examples. As of version 5.x, the Snippets use `ozdemirburak/iris` for color manipulation.\n\n- csssweet.convert: Convert color values to any other supported format.\n- csssweet.extract: Extract channel values, from any supported format.\n- csssweet.lighten: Lighten or darken a color value, in any supported format.\n- csssweet.modval: Modifies the numeric value in a string.\n- csssweet.prefix: Naively adds vendor prefixes to a string.\n- csssweet.saturate: Saturate or desaturate a color value, in any supported format.\n\n## Potentially Breaking Changes (especially when upgrading from version 1.x or to 5.x)\nThe utmost care has been taken to ensure that upgrades of cssSweet are as safe as possible. However, there are a few scenarios that could potentially break an existing site.\n\nVersion 5.x changes the behaviour of the included Snippets significantly. The new Snippets install with new names, so your existing implementation should continue to work, but it\'s worth experimenting with the new Snippets to see how the output compares. There _should_ be no drastic, breaking effects.\n\nIf you have a legacy installation, upgrading from **version 1** to a later version, the following points should help you avoid any major issues:\n\n1. **The default property set.** It\'s an established pattern that updating an Element in MODX also updates its default property set. If you\'ve customized the default property set of the cssSweet Plugins, you must move your custom properties to a custom property set, in order to preserve them.\n2. **Some property keys have changed.** Most notably, `custom_css_chunk` is now `custom_scss_chunks` to more accurately describe the plugin\'s actions. Ensure that after upgrading, your CSS Chunk names are listed in the new property, rather than the old one.\n3. **The sample Chunk has a different name.** This served 2 purposes: to demonstrate the scss syntax compatibility, and prevent overwriting the default Chunk on upgrade, because some users (including myself) erroneously customized the default Chunk without changing its name. As with any MODX Extra that installs Chunks, it\'s highly recommended that you create new Chunks or rename the sample Chunk. That said, the cssSweet 2.x packages have been authored to *not* overwrite existing Chunks (with the help of @TheBoxer \'s GitPackageManagement component), but this remains minimally tested.\n4. **The default output filename has changed.** In an effort to prevent overwriting your existing compiled CSS before you\'ve had a chance to set the properties correctly, I\'ve changed the default CSS output filename. However, if by sheer chance, you had previously customized your output filename to `custom_css.min.css`, then the saveCustomCss plugin will overwrite it by default! In this (probably rare) case, _*make sure*_ to setup the plugin properties correctly before executing the plugin.\n5. **\"Pre-process tags in Property Values.\"** This checkbox gets disabled on upgrades. If you\'re using MODX placeholder tags in your properties, then be sure to enable this again. In version 5.x this _should_ be preserved on upgrade.\n6. **In version 4, the \"dev_mode\" property keys have been removed from the default property set.** They\'re no longer relevant, unless you set the `dev_mode` property to the namespace \"dev\", but you can set the namespace to whatever you want.\n\n## Thanks\nA lot of time, research and consideration was put into which libraries should be included in this package, for the minification functions. I whole-heartedly support these fine developers and their open-source projects. Please extend your thanks to these folks, if you find cssSsweet useful (or even if you don\'t :P)\n\n[@scssphp/scssphp](https://github.com/scssphp/scssphp)\n\n[@tedious/Jshrink](https://github.com/tedious/JShrink)\n\n[@ozdemirburak/iris](https://github.com/ozdemirburak/iris)\";s:9:\"changelog\";s:2678:\"++++++++++++++++++++++++++++++++\n++   cssSweet 5.2.0-beta1     ++\n++   Released on 2019-10-01   ++\n++++++++++++++++++++++++++++++++\nUpdate scssphp to 1.0.4\nUpdate jShrink to 1.3.3\nComposer, phpunit\nUse ozdemirburak/iris for color manipulation\nUpgrade and add new Snippets\nCode organization and cleanup\nBetter upgrade experience\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 4.2.0-rc3       ++\n++   Released on 2018-01-28   ++\n++++++++++++++++++++++++++++++++\nUpdate scssphp to 0.7.4\nHotfix parser config that slowed down processing\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 4.1.0-pl1       ++\n++   Released on 2017-06-21   ++\n++++++++++++++++++++++++++++++++\nSupport ClientConfig custom event\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 4.0.1-rc1       ++\n++   Released on 2017-03-15   ++\n++++++++++++++++++++++++++++++++\nBunch of fixits and cleanups for RC\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 4.0.0-dev1      ++\n++   Released on 2016-07-21   ++\n++++++++++++++++++++++++++++++++\nUpdated scssphp library to 0.6.5\nAdded ability to override all scriptProperties with \"dev_mode\"\nArbitrary modes as property namespaces\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 3.0.0-beta3     ++\n++   Released on 2015-11-28   ++\n++++++++++++++++++++++++++++++++\nUpdated scssphp library to 0.5.1\nAdded ability to specify context settings to parse\nMoved some functions to class file\nUpdated documentation\nLowercase directories\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 2.0.0-rc1       ++\n++   Released on 2015-05-04   ++\n++++++++++++++++++++++++++++++++\nAdded scssphp library to process SCSS and minify\nAdded jShrink library and plugin to process JS and minify\nRemoved system settings. All settings are managed in plugin properties now.\nAdded \"dev mode\"\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 1.2.1-pl        ++\n++   Released on 2015-03-28   ++\n++++++++++++++++++++++++++++++++\nFixed atrocious path bug\nAdded config.json for GPM\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 1.2.0-pl        ++\n++   Released on 2015-01-02   ++\n++++++++++++++++++++++++++++++++\nAbility to process multiple Chunks\nAdded OnChunkFormSave event\nBetter path and directory checking\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 1.1.0-rc1       ++\n++   Released on 2014-04-05   ++\n++++++++++++++++++++++++++++++++\nImproved minification\nImproved error checking for ClientConfig class\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 1.0.1-beta1     ++\n++   Released on 2013-10-05   ++\n++++++++++++++++++++++++++++++++\nBugfix\n\n++++++++++++++++++++++++++++++++\n++   cssSweet 1.0.0-beta1     ++\n++   Released on 2013-10-05   ++\n++++++++++++++++++++++++++++++++\nInitial beta release\n\";s:13:\"setup-options\";s:38:\"csssweet-5.2.0-beta1/setup-options.php\";s:14:\"package_action\";i:0;}','cssSweet','a:38:{s:2:\"id\";s:24:\"5d92b1813425f913d0569c62\";s:7:\"package\";s:24:\"5255dfb162cf240474000f8d\";s:12:\"display_name\";s:20:\"csssweet-5.2.0-beta1\";s:4:\"name\";s:8:\"cssSweet\";s:7:\"version\";s:5:\"5.2.0\";s:13:\"version_major\";s:1:\"5\";s:13:\"version_minor\";s:1:\"2\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:5:\"beta1\";s:8:\"vrelease\";s:4:\"beta\";s:14:\"vrelease_index\";s:1:\"1\";s:6:\"author\";s:10:\"sepiariver\";s:11:\"description\";s:1471:\"cssSweet is a suite of tools for processing (S)CSS. It comes with several output modifiers to modify CSS values, and a plugin that concatenates and processes (S)CSS from specified Chunks and outputs to a minified CSS file. version 2+ also concatenates and minifies JS with a 2nd plugin.\n\nSee &#91;https://sepiariver.com/modx/tags/csssweet/&#93;(https://sepiariver.com/modx/tags/csssweet/) for more info.\n\nExample Use Cases\n<ul><li>- Use system or context settings to store primary colors in a site\'s color scheme, then process all other color values relative to these, so you can shift the entire color theme by modifying a few settings.</li><li>- Use in conjunction with ClientConfig to give site owners a nice UI to manage CSS styles--but only the ones you expose, and only in the manner you choose!</li><li>- Author MODX \"themes\" that are customizable by the end user.</li><li>- Use other MODX tags & placeholders in your CSS--limitless possibilities! Utilize \"dynamic CSS\" without the performance penalty, because the plugin writes the static CSS file on the Manager Clear Cache and Chunk Save actions, not per request.</li><li>- Manage your Sass, CSS, and JS development workflow right from inside the MODX Manager.</li><li>- Add a code editor like Ace, and you can use MODX as your IDE for front-end development.</li></ul>\n\nNew utility Snippets support manipulation of style declarations. For example, extracting color channels and converting between color formats.\";s:12:\"instructions\";s:613:\"Install via Package Management. \n\nGithub repo: <a href=\"https://github.com/sepiariver/cssSweet\" title=\"cssSweet github repo\" target=\"\">https://github.com/sepiariver/cssSweet</a>\n\nInfo/Docs: <a href=\"&#91;https://sepiariver.com/modx/tags/csssweet/&#93;(https://sepiariver.com/modx/tags/csssweet/)\" title=\"cssSweet info\" target=\"\">&#91;https://sepiariver.com/modx/tags/csssweet/&#93;(https://sepiariver.com/modx/tags/csssweet/)</a>\n\nRTFM: <a href=\"http://docs.modx.org/current/en/extras/csssweet\" title=\"cssSweet Documentation\" target=\"\" style=\"line-height: 1.5;\">http://docs.modx.org/current/en/extras/csssweet</a>\";s:9:\"changelog\";s:351:\"++++++++++++++++++++++++++++++++\n++   cssSweet 5.2.0-beta1     ++\n++   Released on 2019-10-01   ++\n++++++++++++++++++++++++++++++++\n\n - Update scssphp to 1.0.4 \n - Update jShrink to 1.3.3 \n - Composer, phpunit \n - Use ozdemirburak/iris for color manipulation \n - Upgrade and add new Snippets\n - Code organization and cleanup Better upgrade experience\n\";s:9:\"createdon\";s:24:\"2019-10-01T01:53:05+0000\";s:9:\"createdby\";s:10:\"sepiariver\";s:8:\"editedon\";s:24:\"2021-01-19T22:04:07+0000\";s:10:\"releasedon\";s:24:\"2019-10-01T01:53:05+0000\";s:9:\"downloads\";s:4:\"6211\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.6\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5d92b1813425f913d0569c63\";s:9:\"signature\";s:20:\"csssweet-5.2.0-beta1\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.6\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:61:\"http://modx.s3.amazonaws.com/extras/5255dfb162cf240474000f8d/\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5d92b1813425f913d0569c63\";s:7:\"version\";s:24:\"5d92b1813425f913d0569c62\";s:8:\"filename\";s:34:\"csssweet-5.2.0-beta1.transport.zip\";s:9:\"downloads\";s:3:\"460\";s:6:\"lastip\";s:14:\"190.145.35.250\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5d92b1813425f913d0569c63\";}s:17:\"package-signature\";s:20:\"csssweet-5.2.0-beta1\";s:10:\"categories\";s:5:\"style\";s:4:\"tags\";s:9:\"style,css\";}',5,2,0,'beta',1),('login-1.9.9-pl','2021-01-19 22:40:03','2021-01-19 22:40:08','2021-01-19 22:40:08',0,1,1,0,'login-1.9.9-pl.transport.zip',NULL,'a:4:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:2998:\"--------------------\nSnippet: Login\n--------------------\n- Version: 1.9.8\n- Since: June 21, 2010\n- Author: Jason Coward <jason@modx.com>,\n        Shaun McCormick <shaun+login@modx.com>\n\nThis component loads a simple login and logout form. It also comes packaged\nwith ForgotPassword and ResetPassword snippets, which allow the user to put\nin their username or email to receive a confirmation email which will reset\ntheir password.\n\nExample for Login:\n```\n[[!Login]]\n```\n\nYou can also specify the template:\n\n```\n[[!Login? &tpl=`myLoginChunk`]]\n```\n\nSee the snippet properties for more options.\n\n--------------\nForgotPassword\n--------------\n\nTo use the password retrieval functionality, first create the Resource the\nuser will log in to should they click on the confirmation email, and put\nthe Reset Password snippet in. Tell it what Resource the Login snippet is\nin - or where you\'d like it to provide a link back to:\n\n```\n[[ResetPassword? &loginResourceId=`72`]]\n```\n\nThen create another resource with the Forgot Password snippet, and tell it\nwhat Resource the Reset snippet is in:\n\n```\n[[!ForgotPassword? &resetResourceId=`123`]]\n```\n\n--------\nRegister\n--------\n\nTo use the Register snippet, simply place the Snippet in the Resource where\nyour HTML register form is. (A default one called lgnRegisterFormTpl has\nbeen provided.). This snippet also requires Activation by the User, so they\nwill get an email in their inbox regarding their signup.\n\nIn your form field names, you can use validation filters to validate your\nfields. They are separated with the colon : symbol. Example:\n\n```\n<input type=\"password\" name=\"password:required:minLength=6\" id=\"password\" value=\"[[+password]]\" />\n```\n\nwill require that the password field not be empty, and have a minimum\nlength of 6 chars. You can encapsulate validator params (6 here) with ` if\nthe param has spaces in the name. The default validators provided are:\n\n```\nrequired\nblank\nemail\npassword_confirm=`nameOfPasswordField`\nminLength=`123`\nmaxLength=`123`\nminValue=`123`\nmaxValue=`123`\n```\n\nYou can also do custom validators by creating a Snippet and using that as\nthe validator name. Example: We create a Snippet called \'equalTo\' and\non our field, we set:\n\n```\n<input type=\"text\" name=\"field:equalTo=`123`\" id=\"field\" />\n```\n\nNow, in our snippet, our code would look like so:\n\n```\n<?php\nif ($scriptProperties[\'value\'] !== $scriptProperties[\'param\']) {\n    return \'Value not equal to: \'.$scriptProperties[\'param\'];\n}\nreturn true;\n?>\n```\n\nReturning true will make the field valid. Any other return value will\nbe the error message. Snippets get passed the following parameters:\n\n- key: The name of the field.\n- value: The value of the field.\n- param: The parameter, if applicable, passed to the validator.\n- type: The name of the validator.\n- validator: A reference to the lgnValidator instance.\n\nSee the Snippet Properties and the [MODX Docs](https://docs.modx.com/extras/revo/login) for more options.\n\nThanks,\nJason Coward & Shaun McCormick\nMODX, LLC\n\";s:9:\"changelog\";s:13091:\"Changelog for Login\n===================\n\nLogin 1.9.9\n------------------------------------\n- Fix validate email addresses in Register [#143]\n\nLogin 1.9.8\n------------------------------------\n- Allow persistParams when redirectUnsetDefaultParams is true [#157]\n- Parse file based chunks [#167]\n- Prevent directory traversal in the username when register a new user\n- Fix logging \'Could not load package metadata for package login.\' during install\n- Update Translations\n\nLogin 1.9.7\n------------------------------------\n- Generate the password directly with modx->user->generatePassword()\n- Make it possible to set the usergroup rank when register a new user [#135]\n- Set an action in the default password reset form [#134]\n- Update Translations\n\nLogin 1.9.6\n------------------------------------\n- Register snippet PII improvements [#130]\n- JSON responses for the Login controller/snippet [#121]\n- Use Crowdin for translations: https://crowdin.com/project/modx-login\n- Update Translations [#132]\n- Use $modx->user->generatePassword for generating passwords [#131]\n- Escape MODX tags after htmlspecialchars because of the ampersand sign\n\nLogin 1.9.5\n------------------------------------\n- Fix ResetPassword passing null instead of an array to getChunk\n- Remove hash_class, salt and sessionid from placeholders\n- Prevent potential XSS in placeholders\n- Added two missing default template chunks\n- Fixing a charset issue in some language files\n- Fixing email validation [#110]\n- Disable User/E-mail Enumeration in ForgotPassword snippet by an empty sentTpl property (default)\n- New jsonResponse property for returning a JSON by the Register snippet (for an AJAX call response)\n- Possibility to reset the registration fields after successful registration\n\nLogin 1.9.4\n------------------------------------\n- Disable User/E-mail Enumeration\n- Enable login via email\n- Convert deprecated ereg functions to preg_* [#86]\n- Fixing error placeholders with empty placeholderPrefix\n- Fixing recoverable error, Argument 2 to getChunk() must be of the type array, null given [#87]\n\nLogin 1.9.3\n------------------------------------\n- Added activePage property to ConfirmRegister controller\n- Added danish language files\n- Normalize placeholder prefix usage\n- Improved PHP7 compatibility\n- Added loggedinResourceId and loggedoutResourceId to the Login controller\n- Fix errors with square brackets in changed password\n- Add confirm password and password length validation messages to the field error placeholders too\n- Fill lu/lp placeholders in the change password form\n- Added hidden lu/lp fields to the lgnResetPassChangePassTpl chunk\n- Fix for array fields in Register/Profile/UpdateProfile snippet\n\nLogin 1.9.2\n------------------------------------\n- Fix sending register activation email\n- Fix ConfirmRegister processor\n\nLogin 1.9.1\n------------------------------------\n- [[!+error.message]] returns detailed error\n- [#42] Fixed URL encoding/decoding\n- Sanitise Login placeholders\n- Fixed namespace paths\n\nLogin 1.9.0\n------------------------------------\n- Expired/used password reset link notification\n- Added autoLogin and forceChangePassword to ResetPassword snippet\n- Added autoLogin param to Register snippet\n- Improved password reset functionality\n- Update form fields with new values when reloadOnSuccess=0\n- Replace parseChunk with getChunk\n- Added Arabic lexicons\n- Fixed invalid properties in logindictionary and updateprofile\n- Added czech lexicons\n\nLogin 1.8.1\n------------------------------------\n- Add password strength algorithm and checking properties to Register, via &ensurePasswordStrength property\n\nLogin 1.8.0\n------------------------------------\n- [#5946] Add ability to set User Group for a new user via the &usergroupsField property\n- [#7520] Fix bug with ConfirmRegister logging the user in as anonymous\n\nLogin 1.7.3\n------------------------------------\n- [#7035] Fix regression error with email field in Register snippet\n\nLogin 1.7.2\n------------------------------------\n- [#6194] Fix issue with UpdateProfile when specifying the non-active user to update\n- [#6538] Add removeExpiredRegistrations property to Register snippet for handling expired, unactivated registrations\n- [#6256] Ensure Register respects passwordField and emailField properties\n- [#6288] Fix error message display in ChangePassword\n\nLogin 1.7.1\n------------------------------------\n- [#5947] Fix issue with Profile with unauthenticated users\n- [#5979] Fix issue with ConfirmRegister and non-FURL sites\n- [#5734] Add &allowedFields to Register to allow restricting of submitted fields to a specific set\n- [#6010] Fix typo in UpdateProfile mismatching ID of profile to internalKey\n- [#5961] Add &trimPassword to automatically trim whitespace from submitted passwords\n- Add &generatePassword to automatically generate a password instead of having to provide one manually\n- [#6146] Add &validatePassword to Register to allow for manual password generation\n- [#5969] Add &user property to UpdateProfile to allow specifying user to update\n\nLogin 1.7.0\n------------------------------------\n- [#49] Update reCaptcha URLs\n- [#5793] Add errTpl and errTplType properties to ForgotPassword\n- [#5823] Fix issue where postHooks did not have fields available\n- [#5797] Fix issue where &authenticate was not respected in ConfirmRegister snippet\n- [#5796] Fix issue where errors could appear twice if user used validators on username/email/password fields\n- Add ActiveUsers snippet that shows a list of active, logged-in users\n- Add file-based hooks to Login hook calls\n- Complete OOP refactoring to provide more stable development and better code isolation\n- Add unit test framework and over 30 tests\n- Add alternative plaintext email option for ability to send both html and plaintext in emails\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.5\n------------------------------------\n- [#5176] Fix issue with Registration in Revo 2.0 installations\n- Fix issue with some error messages not being wrapped with errTpl\n- Email validator now only checks for email validation, not required status\n- [#5166] Add additional sanity decoding to ConfirmRegister processing\n\nLogin 1.6.4\n------------------------------------\n- [#3588] Add &allowedFields and &allowedExtendedFields to UpdateProfile to restrict fields that are updated\n- [#4744] Add &redirectToOnFailedAuth parameter for redirecting to a separate page on failed logins\n- [#3263] Remove duplicate error spans in validator output\n\nLogin 1.6.3\n------------------------------------\n- Better support for checkboxes/radios/bracketed fields in login validator\n- [#5088] Fix issue with ChangePassword &validateOldPassword and Revo 2.1.1\n\nLogin 1.6.2\n------------------------------------\n- [#4844] Automatically trim trailing whitespace/newlines in validator calls\n- [#4843] Fix issue with sentTplType not being respected in ForgotPassword\n- [#4936] Fix issue in ForgotPassword that occurred if no user was found with that username\n- [#5019] Add backwards compatibility for Revo 2.0.x users in ResetPassword\n- Fix reference to $this->modx->lexicon in Login Snippet\n\nLogin 1.6.0/1\n------------------------------------\n- [#4886] Fix issue with variable variable in main login class when loading hooks\n- [#4487] Prevent usage of mb_ereg if not installed\n- [#3500] Fix issues with inline tplType params in Login snippets\n- [#4545] Fix issue with OnBeforeUserActivate event\n- Revolution 2.1 support, specifically with the password changes\n\nLogin 1.5.3\n------------------------------------\n- Add preHooks to ForgotPassword snippet\n- Fix issue that occurs when Login and Register forms are on same page with math register hook\n\nLogin 1.5.2\n------------------------------------\n- [#3330] Add sanity checks to prevent possible submitVar data adding in UpdateProfile\n- Add support for moderation of users when done in a prehook\n- Add support for redirectBackParams that can send encoded data through a login/registration process\n- Add a generic validation error in Register to allow for general messages\n- Ensure preHooks run before password validation in ChangePassword snippet\n- Fix issue with placeholderPrefix in UpdateProfile snippet\n\nLogin 1.5.1\n------------------------------------\n- [#44] Fix bug with login validator, &validate parameter\n- [#40] Fix issue with syncUsername in UpdateProfile\n- [#42] Respect allow_multiple_emails setting that prevents users with same email addresses\n- [#43] Add workaround for xPDO bug with NULL fields in modUserProfile\n- Trim each hook specification in hooks calls\n- [#28] Fixed validator issue in UpdateProfile\n- Added redirectTo and redirectParams on ForgotPassword snippet\n- Updated events in ResetPassword snippet to pass user object\n- Fixed UpdateProfile to properly update user obj so derivative User classes can manage profile updates\n\nLogin 1.5.0\n------------------------------------\n- Fixed security vulnerability\n- Added authenticate and authenticateContexts to ConfirmRegister to allow for authentication after confirming registration\n- Fixed persisting request alias params issue in ConfirmRegister\n- [#15] Added ability to assign roles when using &usergroups in Register, ie: &usergroups=`my-group-name:Member`\n- Added math hook to Register, allowing anti-spam math field measure\n- Added fix to allow overriding of class_key for new users in Register\n\nLogin 1.4.0\n------------------------------------\n- Added redirectBack to Register, Login and ConfirmRegister that allows dynamic redirection handling for other forms needing login/registration\n- Added redirectTo, redirectParams to ConfirmRegister that will redirect after successful confirmation\n- Added persistParams to Register snippet, useful for shopping cart implementations to persist parameters across the registration process\n- [#27] Fixed issue with activationEmail always overriding normal email\n- [#29] Added loginResourceParams, logoutResourceParams, which allows attaching REQUEST parameters to login/logout redirection URLs\n- Added changelog to build\n- [#26],[#14] Added activationEmail property for better handling of middle men in activation steps\n\nLogin 1.3.2-pl\n------------------------------------\n- [#25] Added isLoggedIn snippet for checking auth status\n- [#24] Fixed issue where inactive user could re-register\n- Fixed issue with embedded chunk type display\n- Fixed issue with redirects and non-FURLs on Register snippet\n\nLogin 1.3.1-pl (October 15, 2010)\n------------------------------------\n- Fixed issue with Login snippet on invalid logins\n\nLogin 1.3.0-pl (October 14, 2010)\n------------------------------------\n- Modified experimental multi-context support to use new login processor add_contexts parameter\n- Added ChangePassword snippet for changing passwords in the front-end\n- Fixed bugs with usernameField property, now works as expected\n- Added Dutch translation\n\nLogin 1.2.0\n------------------------------------\n- Fixed issues with placement of prehooks and such\n- Added excludeExtended property to Register, UpdateProfile snippets to allow for excluding fields from extended fields\n- Added new hook API methods for easier setting/retrieving of fields\n- Added experimental multiple-context login support\n- Fixed bug in login snippet with hard-coded action keys\n- Added support to set subject in ForgotPassword email\n- Added reCaptcha support to login form via a preHook\n- Added preHooks and postHooks ability to Login snippet\n- i18n of snippet properties\n\nLogin 1.1.0\n------------------------------------\n- Added Profile snippet, which outputs Profile data of a User in placeholders\n- Added &useExtended to UpdateProfile/Register, which allows users to set additional fields passed to be set in extended column\n- Fixed bug in UpdateProfile where validators were broken\n\nLogin 1.0.3\n------------------------------------\n- Fixed bug where logout link generation was ignorant of xhtml_urls setting\n- Fixed bug where ForgotPassword was sending invalid confirmUrl\n- Added preHooks and postHooks properties for doing pre and post register scripting to UpdateProfile snippet\n- Added preHooks and postHooks properties for doing pre and post register scripting to Register snippet\n- Added syncUsername property to UpdateProfile snippet\n- Fixed bug with embedded output in Login snippet\n- Added Russian translation\n\nLogin 1.0.2\n------------------------------------\n- Updated copyright information\n- Ensure username,password and email are always passed to register snippet to prevent blank logins\n\nLogin 1.0.1\n------------------------------------\n- Consolidated elements into own dir\n- Added extra checks and fixes to lgnValidator class\n- Added UpdateProfile snippet to enable updating of profile from front-end\n\nLogin 1.0.0\n------------------------------------\n- [#ADDON-129] Added name to default Register form\n- [#ADDON-106] Fixed incorrect plugin event invoking\n- [#ADDON-107] Added missing lexicon entry register.password_confirm\n- [#ADDON-103] Fixed context-specific issue with register email\n- [#ADDON-118] Force lexicon topic to load on lgnRegisterForm\n- Fixed alias issue in ForgotPassword snippet\n- Added changelog.txt\n\";s:14:\"package_action\";i:0;}','Login','a:38:{s:2:\"id\";s:24:\"5f64ce197e32e07b9f3248f2\";s:7:\"package\";s:24:\"4d556c31b2b083396d000a75\";s:12:\"display_name\";s:14:\"login-1.9.9-pl\";s:4:\"name\";s:5:\"Login\";s:7:\"version\";s:5:\"1.9.9\";s:13:\"version_major\";s:1:\"1\";s:13:\"version_minor\";s:1:\"9\";s:13:\"version_patch\";s:1:\"9\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:4:\"jako\";s:11:\"description\";s:100:\"Loads a simple login/logout form, with password retrieval functionality and a register form snippet.\";s:12:\"instructions\";s:31:\"Install via Package Management.\";s:9:\"changelog\";s:42:\"- Fix validate email addresses in Register\";s:9:\"createdon\";s:24:\"2020-09-18T15:11:21+0000\";s:9:\"createdby\";s:4:\"jako\";s:8:\"editedon\";s:24:\"2021-01-19T22:03:50+0000\";s:10:\"releasedon\";s:24:\"2020-09-18T15:11:21+0000\";s:9:\"downloads\";s:6:\"123153\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:4:\"true\";s:8:\"featured\";s:4:\"true\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.5\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5f64ce197e32e07b9f3248f3\";s:9:\"signature\";s:14:\"login-1.9.9-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.5\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:0:\"\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5f64ce197e32e07b9f3248f3\";s:7:\"version\";s:24:\"5f64ce197e32e07b9f3248f2\";s:8:\"filename\";s:28:\"login-1.9.9-pl.transport.zip\";s:9:\"downloads\";s:4:\"1881\";s:6:\"lastip\";s:14:\"190.145.35.250\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5f64ce197e32e07b9f3248f3\";}s:17:\"package-signature\";s:14:\"login-1.9.9-pl\";s:10:\"categories\";s:8:\"security\";s:4:\"tags\";s:84:\"security,login,profile,user,access,restrict,community,password,forgot password,reset\";}',1,9,9,'pl',0),('migx-2.12.0-pl','2021-01-19 22:40:11','2021-01-19 22:40:19','2021-01-19 22:40:19',0,1,1,0,'migx-2.12.0-pl.transport.zip',NULL,'a:5:{s:7:\"license\";s:15218:\"GNU GENERAL PUBLIC LICENSE\n   Version 2, June 1991\n--------------------------\n\nCopyright (C) 1989, 1991 Free Software Foundation, Inc.\n59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\n\nEveryone is permitted to copy and distribute verbatim copies\nof this license document, but changing it is not allowed.\n\nPreamble\n--------\n\n  The licenses for most software are designed to take away your\nfreedom to share and change it.  By contrast, the GNU General Public\nLicense is intended to guarantee your freedom to share and change free\nsoftware--to make sure the software is free for all its users.  This\nGeneral Public License applies to most of the Free Software\nFoundation\'s software and to any other program whose authors commit to\nusing it.  (Some other Free Software Foundation software is covered by\nthe GNU Library General Public License instead.)  You can apply it to\nyour programs, too.\n\n  When we speak of free software, we are referring to freedom, not\nprice.  Our General Public Licenses are designed to make sure that you\nhave the freedom to distribute copies of free software (and charge for\nthis service if you wish), that you receive source code or can get it\nif you want it, that you can change the software or use pieces of it\nin new free programs; and that you know you can do these things.\n\n  To protect your rights, we need to make restrictions that forbid\nanyone to deny you these rights or to ask you to surrender the rights.\nThese restrictions translate to certain responsibilities for you if you\ndistribute copies of the software, or if you modify it.\n\n  For example, if you distribute copies of such a program, whether\ngratis or for a fee, you must give the recipients all the rights that\nyou have.  You must make sure that they, too, receive or can get the\nsource code.  And you must show them these terms so they know their\nrights.\n\n  We protect your rights with two steps: (1) copyright the software, and\n(2) offer you this license which gives you legal permission to copy,\ndistribute and/or modify the software.\n\n  Also, for each author\'s protection and ours, we want to make certain\nthat everyone understands that there is no warranty for this free\nsoftware.  If the software is modified by someone else and passed on, we\nwant its recipients to know that what they have is not the original, so\nthat any problems introduced by others will not reflect on the original\nauthors\' reputations.\n\n  Finally, any free program is threatened constantly by software\npatents.  We wish to avoid the danger that redistributors of a free\nprogram will individually obtain patent licenses, in effect making the\nprogram proprietary.  To prevent this, we have made it clear that any\npatent must be licensed for everyone\'s free use or not licensed at all.\n\n  The precise terms and conditions for copying, distribution and\nmodification follow.\n\n\nGNU GENERAL PUBLIC LICENSE\nTERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION\n---------------------------------------------------------------\n\n  0. This License applies to any program or other work which contains\na notice placed by the copyright holder saying it may be distributed\nunder the terms of this General Public License.  The \"Program\", below,\nrefers to any such program or work, and a \"work based on the Program\"\nmeans either the Program or any derivative work under copyright law:\nthat is to say, a work containing the Program or a portion of it,\neither verbatim or with modifications and/or translated into another\nlanguage.  (Hereinafter, translation is included without limitation in\nthe term \"modification\".)  Each licensee is addressed as \"you\".\n\nActivities other than copying, distribution and modification are not\ncovered by this License; they are outside its scope.  The act of\nrunning the Program is not restricted, and the output from the Program\nis covered only if its contents constitute a work based on the\nProgram (independent of having been made by running the Program).\nWhether that is true depends on what the Program does.\n\n  1. You may copy and distribute verbatim copies of the Program\'s\nsource code as you receive it, in any medium, provided that you\nconspicuously and appropriately publish on each copy an appropriate\ncopyright notice and disclaimer of warranty; keep intact all the\nnotices that refer to this License and to the absence of any warranty;\nand give any other recipients of the Program a copy of this License\nalong with the Program.\n\nYou may charge a fee for the physical act of transferring a copy, and\nyou may at your option offer warranty protection in exchange for a fee.\n\n  2. You may modify your copy or copies of the Program or any portion\nof it, thus forming a work based on the Program, and copy and\ndistribute such modifications or work under the terms of Section 1\nabove, provided that you also meet all of these conditions:\n\n    a) You must cause the modified files to carry prominent notices\n    stating that you changed the files and the date of any change.\n\n    b) You must cause any work that you distribute or publish, that in\n    whole or in part contains or is derived from the Program or any\n    part thereof, to be licensed as a whole at no charge to all third\n    parties under the terms of this License.\n\n    c) If the modified program normally reads commands interactively\n    when run, you must cause it, when started running for such\n    interactive use in the most ordinary way, to print or display an\n    announcement including an appropriate copyright notice and a\n    notice that there is no warranty (or else, saying that you provide\n    a warranty) and that users may redistribute the program under\n    these conditions, and telling the user how to view a copy of this\n    License.  (Exception: if the Program itself is interactive but\n    does not normally print such an announcement, your work based on\n    the Program is not required to print an announcement.)\n\nThese requirements apply to the modified work as a whole.  If\nidentifiable sections of that work are not derived from the Program,\nand can be reasonably considered independent and separate works in\nthemselves, then this License, and its terms, do not apply to those\nsections when you distribute them as separate works.  But when you\ndistribute the same sections as part of a whole which is a work based\non the Program, the distribution of the whole must be on the terms of\nthis License, whose permissions for other licensees extend to the\nentire whole, and thus to each and every part regardless of who wrote it.\n\nThus, it is not the intent of this section to claim rights or contest\nyour rights to work written entirely by you; rather, the intent is to\nexercise the right to control the distribution of derivative or\ncollective works based on the Program.\n\nIn addition, mere aggregation of another work not based on the Program\nwith the Program (or with a work based on the Program) on a volume of\na storage or distribution medium does not bring the other work under\nthe scope of this License.\n\n  3. You may copy and distribute the Program (or a work based on it,\nunder Section 2) in object code or executable form under the terms of\nSections 1 and 2 above provided that you also do one of the following:\n\n    a) Accompany it with the complete corresponding machine-readable\n    source code, which must be distributed under the terms of Sections\n    1 and 2 above on a medium customarily used for software interchange; or,\n\n    b) Accompany it with a written offer, valid for at least three\n    years, to give any third party, for a charge no more than your\n    cost of physically performing source distribution, a complete\n    machine-readable copy of the corresponding source code, to be\n    distributed under the terms of Sections 1 and 2 above on a medium\n    customarily used for software interchange; or,\n\n    c) Accompany it with the information you received as to the offer\n    to distribute corresponding source code.  (This alternative is\n    allowed only for noncommercial distribution and only if you\n    received the program in object code or executable form with such\n    an offer, in accord with Subsection b above.)\n\nThe source code for a work means the preferred form of the work for\nmaking modifications to it.  For an executable work, complete source\ncode means all the source code for all modules it contains, plus any\nassociated interface definition files, plus the scripts used to\ncontrol compilation and installation of the executable.  However, as a\nspecial exception, the source code distributed need not include\nanything that is normally distributed (in either source or binary\nform) with the major components (compiler, kernel, and so on) of the\noperating system on which the executable runs, unless that component\nitself accompanies the executable.\n\nIf distribution of executable or object code is made by offering\naccess to copy from a designated place, then offering equivalent\naccess to copy the source code from the same place counts as\ndistribution of the source code, even though third parties are not\ncompelled to copy the source along with the object code.\n\n  4. You may not copy, modify, sublicense, or distribute the Program\nexcept as expressly provided under this License.  Any attempt\notherwise to copy, modify, sublicense or distribute the Program is\nvoid, and will automatically terminate your rights under this License.\nHowever, parties who have received copies, or rights, from you under\nthis License will not have their licenses terminated so long as such\nparties remain in full compliance.\n\n  5. You are not required to accept this License, since you have not\nsigned it.  However, nothing else grants you permission to modify or\ndistribute the Program or its derivative works.  These actions are\nprohibited by law if you do not accept this License.  Therefore, by\nmodifying or distributing the Program (or any work based on the\nProgram), you indicate your acceptance of this License to do so, and\nall its terms and conditions for copying, distributing or modifying\nthe Program or works based on it.\n\n  6. Each time you redistribute the Program (or any work based on the\nProgram), the recipient automatically receives a license from the\noriginal licensor to copy, distribute or modify the Program subject to\nthese terms and conditions.  You may not impose any further\nrestrictions on the recipients\' exercise of the rights granted herein.\nYou are not responsible for enforcing compliance by third parties to\nthis License.\n\n  7. If, as a consequence of a court judgment or allegation of patent\ninfringement or for any other reason (not limited to patent issues),\nconditions are imposed on you (whether by court order, agreement or\notherwise) that contradict the conditions of this License, they do not\nexcuse you from the conditions of this License.  If you cannot\ndistribute so as to satisfy simultaneously your obligations under this\nLicense and any other pertinent obligations, then as a consequence you\nmay not distribute the Program at all.  For example, if a patent\nlicense would not permit royalty-free redistribution of the Program by\nall those who receive copies directly or indirectly through you, then\nthe only way you could satisfy both it and this License would be to\nrefrain entirely from distribution of the Program.\n\nIf any portion of this section is held invalid or unenforceable under\nany particular circumstance, the balance of the section is intended to\napply and the section as a whole is intended to apply in other\ncircumstances.\n\nIt is not the purpose of this section to induce you to infringe any\npatents or other property right claims or to contest validity of any\nsuch claims; this section has the sole purpose of protecting the\nintegrity of the free software distribution system, which is\nimplemented by public license practices.  Many people have made\ngenerous contributions to the wide range of software distributed\nthrough that system in reliance on consistent application of that\nsystem; it is up to the author/donor to decide if he or she is willing\nto distribute software through any other system and a licensee cannot\nimpose that choice.\n\nThis section is intended to make thoroughly clear what is believed to\nbe a consequence of the rest of this License.\n\n  8. If the distribution and/or use of the Program is restricted in\ncertain countries either by patents or by copyrighted interfaces, the\noriginal copyright holder who places the Program under this License\nmay add an explicit geographical distribution limitation excluding\nthose countries, so that distribution is permitted only in or among\ncountries not thus excluded.  In such case, this License incorporates\nthe limitation as if written in the body of this License.\n\n  9. The Free Software Foundation may publish revised and/or new versions\nof the General Public License from time to time.  Such new versions will\nbe similar in spirit to the present version, but may differ in detail to\naddress new problems or concerns.\n\nEach version is given a distinguishing version number.  If the Program\nspecifies a version number of this License which applies to it and \"any\nlater version\", you have the option of following the terms and conditions\neither of that version or of any later version published by the Free\nSoftware Foundation.  If the Program does not specify a version number of\nthis License, you may choose any version ever published by the Free Software\nFoundation.\n\n  10. If you wish to incorporate parts of the Program into other free\nprograms whose distribution conditions are different, write to the author\nto ask for permission.  For software which is copyrighted by the Free\nSoftware Foundation, write to the Free Software Foundation; we sometimes\nmake exceptions for this.  Our decision will be guided by the two goals\nof preserving the free status of all derivatives of our free software and\nof promoting the sharing and reuse of software generally.\n\nNO WARRANTY\n-----------\n\n  11. BECAUSE THE PROGRAM IS LICENSED FREE OF CHARGE, THERE IS NO WARRANTY\nFOR THE PROGRAM, TO THE EXTENT PERMITTED BY APPLICABLE LAW.  EXCEPT WHEN\nOTHERWISE STATED IN WRITING THE COPYRIGHT HOLDERS AND/OR OTHER PARTIES\nPROVIDE THE PROGRAM \"AS IS\" WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESSED\nOR IMPLIED, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF\nMERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.  THE ENTIRE RISK AS\nTO THE QUALITY AND PERFORMANCE OF THE PROGRAM IS WITH YOU.  SHOULD THE\nPROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF ALL NECESSARY SERVICING,\nREPAIR OR CORRECTION.\n\n  12. IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING\nWILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MAY MODIFY AND/OR\nREDISTRIBUTE THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES,\nINCLUDING ANY GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING\nOUT OF THE USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED\nTO LOSS OF DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY\nYOU OR THIRD PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER\nPROGRAMS), EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE\nPOSSIBILITY OF SUCH DAMAGES.\n\n---------------------------\nEND OF TERMS AND CONDITIONS\";s:6:\"readme\";s:1392:\"--------------------\nMIGX\n--------------------\nVersion: 2.1.0\nAuthor: Bruno Perner <b.perner@gmx.de>\n--------------------\n\n* MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.\n* It has a configurable grid and a configurable tabbed editor-window to add and edit items.\n* Each item can have multiple fields. For each field you can use another tv-input-type.\n\nFeel free to suggest ideas/improvements/bugs on GitHub:\nhttp://github.com/Bruno17/multiItemsGridTV/issues\n\nInstallation:\n\ninstall by package-management.\nCreate a new menu:\nSystem -> Actions \n\nActions-tree:\nmigx -> right-click -> create Acton here\ncontroller: index\nnamespace: migx\nlanguage-topics: migx:default,file\n\nmenu-tree:\nComponents -> right-click -> place action here\nlexicon-key: migx\naction: migx - index\nparameters: &configs=migxconfigs||packagemanager||setup\n\nclear cache\ngo to components -> migx -> setup-tab -> setup\n\nIf you are upgrading from MIGX - versions before 2.0\ngo to tab upgrade. click upgrade.\nThis will add a new autoincrementing field MIGX_id to all your MIGX-TV-items\nThe getImageList-snippet needs this field to work correctly.\n\n\nAllways after upgrading MIGX of any Version:\ngo to components -> migx -> setup-tab -> setup\n\nthis will upgrade the migx-configs-table and add new fields, if necessary.\n\n\n\";s:9:\"changelog\";s:10646:\"Changelog for MIGX.\n\nMIGX 2.12.0\n==============\nselect db-fields from defined class and its joins for formtabs and columns\nadd categories and a category-filter to MIGX Configs\nmultiple grouping-levels for &groupingField\nhooksnippet getformnames\nadd snippet migxAutoPublish for publishing by Cronjobs\nadd beforesave - hook to update-processor\nallow string in where-property\nadd a default schema-template, used at create package\nand some bugfixes\n\nMIGX 2.11.0\n==============\ngroupingfield, preparesnippet, _total, _count, improve @CODE\nhooksnippet beforecreateform\n\nMIGX 2.10.0\n==============\nhooksnippet getcustomconfigs for importcsvmigx\nsupport layout-rows/columns in formtabs\ncontextmenu \'flat formtabs\'\nmultiupload to db, resizeOnUpload - plugin\n[packagemanager] Add Extension Package - feature\nrespect joinalias in export.php and handlepositionselector.php\npossible to use TV-value in migxresourcemediapath - snippet\n[getImageList] inherit_children_tvname\nMIGXdb add item before/after\n\nMIGX 2.9.7\n==============\nadd emtpyTpl\nfix some MIGX-grid width - issues\nimport csv to MIGX\n\nMIGX 2.9.6\n==============\nhooksnippet getcustomconfigs for export-processor\nfix missing formtabs after saving\n\nMIGX 2.9.5\n==============\ncolumn-actionbuttons also for MIGX\nexport/import MIGX-items from/into MIGX-TV\nget tinymcewrapper working\nmore config-options for combo-filter\nFix and simplify Redactor implementation to use MODx.loadRTE()\n\nMIGX 2.9.4\n==============\n[migxResourcemediapath] add context_key as path option\nbutton for \'alter fields from schema\'\nfix MIGX-grid width\ncustom grid for MIGX-TV\nrespect context-default-media-source - setting\n\nMIGX 2.9.3\n==============\nbasic support for new TinyMCE RTE\nfix assetsUrl/connectorUrl - settings\nMIGX-TV MODX multifile-uploader/autocreate items  \nMIGX-TV configurable contextmenues\n\nMIGX 2.9.2\n==============\nsome smaller fixes\n\nMIGX 2.9.1\n==============\nadd hook-snippet setting\nsome handleRelated - update - functions\ndestroy updatewindow on close\n\nMIGX 2.9\n==============\n[migxLoopCollection] allow use of foreign database\nSottwell\'s improvements on migxresourcemediapath\nnew snippet: migxGetCollectionTree\naccess to foreign database from default processors\nimprovements on multiple formtabs\nmake inline-editing for MIGX - grid possible\noption to add MIGX-items directly without modal\nlistbox-cell-editor\nmovetotop,movetobottom - buttons for MIGX-grid\ncell-editing for MIgXdb - grids\noption to add MIGXdb-items directly without modal\n[getImageList] &inheritFrom - inherit MIGX-items from parents or other resources\nsome migxredactor - fixes \n\nMIGX 2.8.1\n==============\nlets disable the \'Add Item\' - button\nnew configs gridperpage and sortconfig\nwrapperTpl for getImageList and migxLoopCollection\n\nMIGX 2.8.0\n==============\nresolve tables on install\nrender cross, also when empty string\nreusable activaterelations - processors\n[migxLoopCollection] tpl_nN\n[#154] clean TV-value, if no MIGX-items \nadditional db-storage of formtabs and fields\nget menue working in MODX 2.3\nimprove description_is_code \n\n\nMIGX 2.6.8\n==============\nsome other small fixes\nrestrictive condition by processed MIGX-tags for formfields\nFilter-Button for Reset all filters to default-value\nextend date-filter\nmake cmp main caption translatable \nMigx::prepareJoins - optional rightjoin \n\nMIGX 2.6.7\n==============\nadd date - filter \nadd handlepositionselector - processor \nadd snippet exportmigx2db\n\nMIGX 2.6.6\n==============\nfixes only\n\nMIGX 2.6.5\n==============\nfixes only\n\nMIGX 2.6.4\n==============\n[redactor-field] get and use file-properties from a redactor-inputTV\nadd renderImageFromHtml - renderer\n\nMIGX 2.6.3\n==============\nconfigurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP\n\nMIGX 2.6.2\n==============\nfix issue with imported configs-field, if not an array \n\nMIGX 2.6.1\n==============\nMake Formfields translatable\n\nMIGX 2.6\n==============\n[getImageList] output inner arrays as json-string\nadded polish translation\n[getImageList] splits, build summaries\n make grid-columns translatable, let user add custom-lexicons from custom php-config-files \n\n\nMIGX 2.5.11\n==============\nadd simple MIGXdb - validation (only required for now)\nsome fixes\n\n\nMIGX 2.5.9\n==============\nlet us create new indexes, with altered field-def from schema \noptimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240\n\n\nMIGX 2.5.8\n\n==============\nAdded \'showScreenshot\' (big image in popup) \nAdded template-field for direct template-input for renderChunk\nAdded position - selector for new MIGX - items\nFix for not removed rte-editors when using formswitcher\nsend current store-params to iframe-window\n\n\nMIGX 2.5.6\n\n==============\n\nAdd support for the modmore.com Redactor editor \nsome work on multiuploader for MIGXdb\nmore eNotice - fixes\n\n\nMIGX 2.5.2\n\n==============\nread input-options into MIGX-TV\nrespect filter in default - export.php\nfix for empty value in TV - configs not loading renderers etc.\nfix changed processaction-param after export2csv \nstopEvent() by onClick - event\n\nMIGX 2.5.1\n\n==============\nfix bug with renderChunk - renderer\n\nMIGX 2.5\n\n==============\nget different rtes working - support for tinymce, ckeditor \nsome settings for MIGXfe\ncs - lexicons, \nsome eNotice - fixes\nfix with to big integers on TV-id (set phptype to string)\nlimit MIGX-record-count\n\n\nMIGX 2.4.2\n\n==============\ncolumnButtons for the migx - grid \nlittle form-layout-mods\nadded the option to have the first formtab outside the other tabs above of them.\n\nadded the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - \nsnippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.\n\nmigxupdate for MIGXfe\ndefault-values for MIGXdb-filters\nupdate co_id in iframe-window\nadd a searchbox to MIGX-Configurator\nread configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs\n\n\nMIGX 2.4.1\n\n==============\nsome new snippets:\ngetDayliMIGXrecord\nmigxgetrelations\n\nadded beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree\nadd window-title configuration, make window-caption dynamic (its possible to use placeholders now)\nhide tabs in form, when only one tab\nadded selectposition - renderer\n\n\nMIGX 2.4.0\n\n==============\nnew renderer - switchStatusOptions\nnew renderer - renderChunk\ngetImageList - added \'contains\' and \'snippet\' - where-filters\nadd duplicate-contextmenue to MIGXdb \nnew property for getImageList: &reverse\ngive TVs in each CMP-tab a unique id\nrefresh grid after closing iframe-window\nadded tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList\nexport jsonarray-fields as separate fields in csv-export\nalias, breadcrumb and ultimateparent for migxREsourceMediaPath\nAdded TV - description - field to configuration\n\n\nMIGX 2.3.1\n\n==============\nsome eNotice - error - fixes\nadd type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41\n\nMIGX 2.3.0\n\n==============\nadd multifile - uploader, upload to MIGX - mediasource\nadd load from mediasource - button to MIGX\nadd migxResourcePath - snippet\nadd iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.\n\n\nMIGX 2.2.3\n\n==============\nconfirmation before overriding schema-files\nsome additions for childresources-management by MIGXdb\nswitch between multiple forms - configurations\nadd renderDate - renderer , thanks to Jako\nadditional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.\nadd parent-property for dynamic filter-comboboxes\nadd getliste-where for default getlist-processor\nexport formtabs as clean json in editraw-mode\n\n\nMIGX 2.2.2\n\n==============\nadd migxLoopCollection-snippet\nmove prepareJoins into a migx-method\nconfirmation before remove db-record, getcombo did not use idfield \nallow empty prefix \nadd possibility to use tables without \'deleted\' - field and default-getlist-processor\nfix Call-time pass-by-reference errors\nget tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs \nfix prefix not sended to writeSchema\ngrid add cls \'main-wrapper\' to give it a bit padding, thanks to jako\n\n\nMIGX 2.2.0\n\n==============\n\nexport/import configuration-objects as json to/from files in custom-package-directories \nnew configs: getlist - defaultsort, joins, gridload_mode (by button, auto) \ngrid-smarty-template now can be also in custom-package-directories\nreworked handling of joined objects in default update-php \nadd connected_object_id baseparam to migx-grid\nadded snippet migxLoopCollection\n\n\nMIGX 2.1.1\n\n==============\n\n  fix for migx-snippet not working with multiple calls on one page\n  resource_id as script-property for getlist-processor when used with migx-snippet\n\nMIGX 2.1.0\n\n==============\n\n  add &sort to the getImageList - snippet\n  add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager\n  make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages\n  more MIGXdb - configurations\n\n\nMIGX 2.0.1\n\n==============\n\n  more E_NOTICE - Error - fixes\n  Fix Missing Add - Item - Replacement - String \n\nMIGX 2.0.0\n\n==============\n\n- pl\n\n  fix for Revo 2.2.2\n  fix some E_NOTICE - errors\n\n- new in beta5\n\n  Configure multiple CMP - tabs\n  packagemanager ported to extjs - tab\n  added MIGX-setup/upgrade - tab\n  added configurable text and combo - filterboxes\n\n- new in beta3\n\n  This is a preview-version of MIGXdb\n  MIGXdb can now also be used as configurable CMP\n  MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP\n  Package-manager, create and edit schemas and package-tables\n\n- new:\n  better compatibility with revo 2.2\n  working with mediasources\n  introduced MIGXdb\n\n\nMIGX 1.2.0\n==============\n- new:\n  merge scriptProperties to Placeholders \n  basic compatibility for modx 2.2 \n  autoinc-field: MIGX_id\n  autoResourceFolders - functionality, autoCreate directory for each resource\n  \n  \n- fixed:\n  url-TV support\n  context-based base_path issues\n  remove remaining []\n  remove Tiny-instances when switching form\n  enter on textarea closes window\n  fireResourceFormChange for drag,remove,duplicate \n\nMIGX 1.1.0\n==============\n- new:\n  &docidVarKey\n  &processTVs\n  \n- fixed:\n  context-filepath-issue\n\nMIGX 1.0.0\n==============\n- Initial release.\";s:13:\"setup-options\";s:32:\"migx-2.12.0-pl/setup-options.php\";s:14:\"package_action\";i:0;}','MIGX','a:38:{s:2:\"id\";s:24:\"5a7b25e9bc8dd3a7748b4567\";s:7:\"package\";s:24:\"4db018def24554690c000005\";s:12:\"display_name\";s:14:\"migx-2.12.0-pl\";s:4:\"name\";s:4:\"MIGX\";s:7:\"version\";s:6:\"2.12.0\";s:13:\"version_major\";s:1:\"2\";s:13:\"version_minor\";s:2:\"12\";s:13:\"version_patch\";s:1:\"0\";s:7:\"release\";s:2:\"pl\";s:8:\"vrelease\";s:2:\"pl\";s:14:\"vrelease_index\";s:0:\"\";s:6:\"author\";s:7:\"Bruno17\";s:11:\"description\";s:676:\"<p>MIGX (multiItemsGridTv for modx) is a custom-tv-input-type for adding multiple items into one TV-value and a snippet for listing this items on your frontend.</p><p>It has a cofigurable grid and a configurable tabbed editor-window to add and edit items.</p><p>Each item can have multiple fields. For each field you can use another tv-input-type.</p><p>MIGXdb can manage (resource-related) custom-db-table-items in a TV and can help to create CMPs for custom-db-tables</p><p>See the official documentation here:&nbsp;<a href=\"http://rtfm.modx.com/display/addon/MIGX\" style=\"color: rgb(15, 112, 150); \" title=\"\" target=\"\">http://rtfm.modx.com/display/addon/MIGX</a></p><p></p>\";s:12:\"instructions\";s:5876:\"<p></p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">Installation:Install via Package Management.</p><p style=\"margin: 10px 0px 20px; padding: 0px; border-width: 0px; outline-width: 0px; font-size: 13px; vertical-align: baseline; background-color: transparent; line-height: 1.4;\">For MIGX and MIGXdb - Configuration - Management:</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \">Create a new menu:System -&gt; Actions Actions-tree:migx -&gt; right-click -&gt; create Acton herecontroller: indexnamespace: migxlanguage-topics: migx:default,filemenu-tree:Components -&gt; right-click -&gt; place action herelexicon-key: migxaction: migx - indexparameters: &amp;configs=migxconfigs||packagemanager||setupclear cachego to components -&gt; migx -&gt; setup-tab -&gt; setupIf you are upgrading from MIGX - versions before 2.0go to tab upgrade. click upgrade.This will add a new autoincrementing field MIGX_id to all your MIGX-TV-itemsThe getImageList-snippet needs this field to work correctly.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note:</b>&nbsp;Make sure to remove older versions of multiItemsGridTv and the multiitemsgridTv-namespace, if you had them tried from Github.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"><b style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; background-position: initial initial; background-repeat: initial initial; \">Note</b>: Input Options for the MIGX only work for Revolution 2.1.0-rc2 and later.</p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p><p style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 20px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; outline-width: 0px; outline-style: initial; outline-color: initial; font-size: 13px; vertical-align: baseline; background-image: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: transparent; line-height: 1.4; background-position: initial initial; background-repeat: initial initial; \"></p>\";s:9:\"changelog\";s:13083:\"<p>Changelog for MIGX.</p><p>MIGX 2.12.0</p><p>==============</p><p><ul><li>select db-fields from defined class and its joins for formtabs and columns</li><li>add categories and a category-filter to MIGX Configs</li><li>multiple grouping-levels for &amp;groupingField</li><li>hooksnippet getformnames</li><li>add snippet migxAutoPublish for publishing by Cronjobs</li><li>add beforesave - hook to update-processor</li><li>allow string in where-property</li><li>add a default schema-template, used at create package</li><li>and some bugfixes</li></ul></p><p>MIGX 2.11.0</p><p>==============</p><p></p><ul><li>groupingfield, preparesnippet, _total, _count, improve @CODE</li><li>hooksnippet beforecreateform</li></ul><p></p><p></p><p>MIGX 2.10.0</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for importcsvmigx</li><li>support layout-rows/columns in formtabs</li><li>contextmenu \'flat formtabs\'</li><li>multiupload to db, resizeOnUpload - plugin</li><li>&#91;packagemanager&#93; Add Extension Package - feature</li><li>respect joinalias in export.php and handlepositionselector.php</li><li>possible to use TV-value in migxresourcemediapath - snippet</li><li>&#91;getImageList&#93; inherit_children_tvname</li><li>MIGXdb add item before/after</li></ul><p></p><p></p><p>MIGX 2.9.7</p><p>==============</p><p></p><ul><li>add emtpyTpl</li><li>fix some MIGX-grid width - issues</li><li>import csv to MIGX</li></ul><p></p><p></p><p>MIGX 2.9.6</p><p>==============</p><p></p><ul><li>hooksnippet getcustomconfigs for export-processor</li><li>fix missing formtabs after saving</li></ul><p></p><p>MIGX 2.9.5==============</p><ul><li>fix Form tabs data being wiped after saving</li></ul><p>MIGX 2.9.5==============</p><ul><li>column-actionbuttons also for MIGX</li><li>export/import MIGX-items from/into MIGX-TV</li><li>get tinymcewrapper working</li><li>more config-options for combo-filter</li><li>Fix and simplify Redactor implementation to use MODx.loadRTE()</li></ul><p>MIGX 2.9.4==============</p><ul><li>&#91;migxResourcemediapath&#93; add context_key as path option</li><li>button for \'alter fields from schema\'</li><li>fix MIGX-grid width</li><li>custom grid for MIGX-TV</li><li>respect context-default-media-source - setting</li></ul><p></p><p>MIGX 2.9.3==============</p><ul><li>basic support for new TinyMCE RTE</li><li>fix assetsUrl/connectorUrl - settings</li><li>MIGX-TV MODX multifile-uploader/autocreate items&nbsp; </li><li>MIGX-TV configurable contextmenues</li></ul><p>MIGX 2.9.2==============</p><ul><li>some smaller fixes</li></ul><p>MIGX 2.9.1==============</p><ul><li>add hook-snippet setting</li><li>some handleRelated - update - functions</li><li>destroy updatewindow on close</li></ul><p></p><p>MIGX 2.9.0==============</p><ul><li>&#91;migxLoopCollection&#93; allow use of foreign database</li><li>Sottwell\'s improvements on migxresourcemediapath</li><li>new snippet: migxGetCollectionTree</li><li>access to foreign database from default processors</li><li>improvements on multiple formtabs</li><li>make inline-editing for MIGX - grid possible</li><li>option to add MIGX-items directly without modal</li><li>listbox-cell-editor</li><li>movetotop,movetobottom - buttons for MIGX-grid</li><li>cell-editing for MIgXdb - grids</li><li>option to add MIGXdb-items directly without modal</li><li>&#91;getImageList&#93; &amp;inheritFrom - inherit MIGX-items from parents or other resources</li><li>some migxredactor - fixes </li></ul><p></p><p>MIGX 2.8.1==============</p><ul><li>lets disable the \'Add Item\' - button</li><li>new configs gridperpage and sortconfig</li><li>wrapperTpl for getImageList and migxLoopCollection</li></ul><p>MIGX 2.8.0==============</p><ul><li>resolve tables on install</li><li>render cross, also when empty string</li><li>reusable activaterelations - processors</li><li>&#91;migxLoopCollection&#93; tpl_nN</li><li>&#91;#154&#93; clean TV-value, if no MIGX-items </li><li>additional db-storage of formtabs and fields</li><li>get menue working in MODX 2.3</li><li>improve description_is_code </li></ul><p></p><p>MIGX 2.6.8==============</p><ul><li>some other small fixes</li><li>restrictive condition by processed MIGX-tags for formfields</li><li>Filter-Button for Reset all filters to default-value</li><li>extend date-filter</li><li>make cmp main caption translatable </li><li>Migx::prepareJoins - optional rightjoin </li></ul><p></p><p>MIGX 2.6.7==============</p><ul><li>add date - filter </li><li>add handlepositionselector - processor </li><li>add snippet exportmigx2db</li></ul><p>MIGX 2.6.6==============</p><ul><li>fixes only</li></ul><p></p><p>MIGX 2.6.5==============</p><ul><li>fix bug with migxResourceMediaPath</li></ul><p>MIGX 2.6.5==============</p><ul><li>fix not working richtext-editors in MIGXdb</li><li>add emptyThrash - process to MIGXdb</li></ul><p>MIGX 2.6.4==============</p><ul><li>&#91;redactor-field&#93; get and use file-properties from a redactor-inputTV</li><li>add renderImageFromHtml - renderer</li></ul><p>MIGX 2.6.3==============</p><ul><li>configurable redactor-field with configs-configuration, make redactor work in MIGXdb - CMP</li></ul><p></p><p>MIGX 2.6.2</p><p>==============</p><ul><li>fix issue with imported configs-field, if not an array\n      </li></ul><p></p><p>MIGX 2.6.1</p><p>==============</p><ul><li>Make Formfields translatable</li></ul><p></p><p>MIGX 2.6</p><p>==============</p><ul><li>&#91;getImageList&#93; output inner arrays as json-string</li><li>added polish translation</li><li>&#91;getImageList&#93; splits, build summaries</li><li>&nbsp;make grid-columns translatable, let user add custom-lexicons from custom php-config-files </li></ul><p>MIGX 2.5.11</p><p>==============</p><ul><li>add simple MIGXdb - validation (only required for now)</li><li>some fixes</li></ul><p></p><p>MIGX 2.5.9</p><p>==============</p><ul><li>let us create new indexes, with altered field-def from schema </li><li>optimize input-option-values-handling, see:http://forums.modx.com/thread/79757/sortable-editable-list-of-checkboxes?page=4#dis-post-483240</li></ul><p></p><p>MIGX 2.5.8</p><p>==============</p><ul><li>Added \'showScreenshot\' (big image in popup) </li><li>Added template-field for direct template-input for renderChunk</li><li>Added position - selector for new MIGX - items</li><li>Fix for not removed rte-editors when using formswitcher</li><li>send current store-params to iframe-window</li></ul><p></p><p>MIGX 2.5.6</p><p>==============</p><ul><li>Add support for the modmore.com Redactor editor\n</li><li>some work on multiuploader for MIGXdb</li><li>more eNotice - fixes</li></ul><p></p><p>MIGX 2.5.2</p><p>==============</p><ul><li>read input-options into MIGX-TV</li><li>respect filter in default - export.php</li><li>fix for empty value in TV - configs not loading renderers etc.</li><li>fix changed processaction-param after export2csv </li><li>stopEvent() by onClick - event</li></ul><p></p><p>MIGX 2.5.1</p><p>==============</p><ul><li>fix bug with renderChunk - renderer</li></ul><p></p><p>MIGX 2.5</p><p>==============</p><ul><li>get different rtes working - support for tinymce, ckeditor </li><li>some settings for MIGXfe</li><li>cs - lexicons, </li><li>some eNotice - fixes</li><li>fix with to big integers on TV-id (set phptype to string)</li><li>limit MIGX-record-count</li></ul><p></p><p>MIGX 2.4.2</p><p>==============</p><ul><li>columnButtons for the migx - grid </li><li>little form-layout-mods</li><li>added the option to have the first formtab outside the other tabs above of them.</li><li>added the option to use the TV-description-field as parsed code-areas in the formtabs, modx-tags are parsed there - </li><li>snippets, chunks, output-filters can be used there. All fields of the record can be used as placeholders.</li><li>migxupdate for MIGXfe</li><li>default-values for MIGXdb-filters</li><li>update co_id in iframe-window</li><li>add a searchbox to MIGX-Configurator</li><li>read configs directly from exported configs-files from custom-packages - directory by using configname:packagename - configs</li></ul><p>MIGX 2.4.1</p><p>==============</p><p>some new snippets:</p><ul><li>getDayliMIGXrecord</li><li>migxgetrelations</li></ul><p></p><ul><li>added beta treecombo-filter-option for example to filter resources in MIGXdb by resourcetree</li><li>add window-title configuration, make window-caption dynamic (its possible to use placeholders now)</li><li>hide tabs in form, when only one tab</li><li>added selectposition - renderer</li></ul><p>MIGX 2.4.0</p><p>==============</p><ul><li>new renderer - switchStatusOptions</li><li>new renderer - renderChunk</li><li>getImageList - added \'contains\' and \'snippet\' - where-filters</li><li>add duplicate-contextmenue to MIGXdb </li><li>new property for getImageList: &amp;reverse</li><li>give TVs in each CMP-tab a unique id</li><li>refresh grid after closing iframe-window</li><li>added tpl_n{n} tplFirst tplLast tpl_n tpl_oneresult properties to getImageList</li><li>export jsonarray-fields as separate fields in csv-export</li><li>alias, breadcrumb and ultimateparent for migxREsourceMediaPath</li><li>Added TV - description - field to configuration</li></ul><p></p><p>MIGX 2.3.1</p><p>==============</p><ul><li>some eNotice - error - fixes</li><li>add type - configuration to gridcolumns, now its possible to sort also numeric on the MIGX - grid: see https://github.com/Bruno17/MIGX/issues/41</li></ul><p></p><p>MIGX 2.3.0</p><p>==============</p><ul><li>add multifile - uploader, upload to MIGX - mediasource</li><li>add load from mediasource - button to MIGX</li><li>add migxResourcePath - snippet</li><li>add iframe - support - its now possible to create chunks with snippet-calls and show the result in an iframe-window. used by multifile-uploader.</li></ul><p></p><p>MIGX 2.2.3</p><p>==============</p><ul><li>confirmation before overriding schema-files</li><li>some additions for childresources-management by MIGXdb</li><li>switch between multiple forms - configurations</li><li>add renderDate - renderer , thanks to Jako</li><li>additional send all store-baseParams when opening the form-window. This way we can have different forms depending on filters for example.</li><li>add parent-property for dynamic filter-comboboxes</li><li>add getliste-where for default getlist-processor</li><li>export formtabs as clean json in editraw-mode</li></ul><p></p><p>MIGX 2.2.2</p><p>==============</p><ul><li>add migxLoopCollection-snippet</li><li>move prepareJoins into a migx-method</li><li>confirmation before remove db-record, getcombo did not use idfield </li><li>allow empty prefix </li><li>add possibility to use tables without \'deleted\' - field and default-getlist-processor</li><li>fix Call-time pass-by-reference errors</li><li>get tinyMCE to work on richtext-TV-inputs in MIGXdb - CMPs </li><li>fix prefix not sended to writeSchema</li><li>grid add cls \'main-wrapper\' to give it a bit padding, thanks to jako</li></ul><p></p><p>MIGX 2.2.0</p><p>==============</p><ul><li>export/import configuration-objects as json to/from files in custom-package-directories </li><li>new configs: getlist - defaultsort, joins, gridload_mode (by button, auto) </li><li>grid-smarty-template now can be also in custom-package-directories</li><li>reworked handling of joined objects in default update-php </li><li>add connected_object_id baseparam to migx-grid</li><li>added snippet migxLoopCollection</li></ul><p></p><p>MIGX 2.1.1</p>\n<p>==============</p>\n<ul><li>fix for migx-snippet not working with multiple calls on one page\n      </li><li>resource_id as script-property for getlist-processor when used with migx-snippet</li></ul>\n\n      <p>MIGX 2.1.0</p><p>==============</p><ul><li>&nbsp; add &amp;sort to the getImageList - snippet</li><li>&nbsp; add new snippet \'migx\' to get items from db-tables, can use the same configurations and getList - processors as the MIGXdb - manager</li><li>&nbsp; make it possible to have config-files for grids and processors in another package-folder for easier packaging together custom - packages</li><li>&nbsp; more MIGXdb - configurations</li></ul><p>MIGX 2.0.1</p><p>==============</p><ul><li>more E_NOTICE - Error - fixes</li><li>Fix Missing Add - Item - Replacement - String </li></ul><p></p><p>MIGX 2.0.0</p><p>==============</p><p>- pl</p><ul><li>&nbsp; fix for Revo 2.2.2</li><li>&nbsp; fix some E_NOTICE - errors</li></ul><p></p><p>- new in beta5</p><ul><li>&nbsp; Configure multiple CMP - tabs</li><li>&nbsp; packagemanager ported to extjs - tab</li><li>&nbsp; added MIGX-setup/upgrade - tab</li><li>&nbsp; added configurable text and combo - filterboxes</li></ul><p></p><p>- new in beta3</p><ul><li>&nbsp; This is a preview-version of MIGXdb</li><li>&nbsp; MIGXdb can now also be used as configurable CMP</li><li>&nbsp; MIGX - configurator for tabs, columns, MIGXdb-TV and MIGXdb-CMP</li><li>&nbsp; Package-manager, create and edit schemas and package-tables</li></ul><p></p><p>- new:</p><ul><li>&nbsp; better compatibility with revo 2.2</li></ul><ul><li>&nbsp; working with mediasources</li></ul><ul><li>&nbsp; starting with MIGXdb (very dev)</li></ul>\";s:9:\"createdon\";s:24:\"2018-02-07T16:14:33+0000\";s:9:\"createdby\";s:7:\"Bruno17\";s:8:\"editedon\";s:24:\"2021-01-19T22:03:58+0000\";s:10:\"releasedon\";s:24:\"2018-02-08T13:05:06+0000\";s:9:\"downloads\";s:6:\"208803\";s:8:\"approved\";s:4:\"true\";s:7:\"audited\";s:5:\"false\";s:8:\"featured\";s:5:\"false\";s:10:\"deprecated\";s:5:\"false\";s:7:\"license\";s:5:\"GPLv2\";s:7:\"smf_url\";s:0:\"\";s:10:\"repository\";s:24:\"4d4c3fa6b2b0830da9000001\";s:8:\"supports\";s:3:\"2.2\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568\";s:9:\"signature\";s:14:\"migx-2.12.0-pl\";s:11:\"supports_db\";s:5:\"mysql\";s:16:\"minimum_supports\";s:3:\"2.2\";s:9:\"breaks_at\";s:8:\"10000000\";s:10:\"screenshot\";s:70:\"http://modx.s3.amazonaws.com/extras/4db018def24554690c000005/migx1.JPG\";s:4:\"file\";a:7:{s:2:\"id\";s:24:\"5a7b25e9bc8dd3a7748b4568\";s:7:\"version\";s:24:\"5a7b25e9bc8dd3a7748b4567\";s:8:\"filename\";s:28:\"migx-2.12.0-pl.transport.zip\";s:9:\"downloads\";s:5:\"71412\";s:6:\"lastip\";s:14:\"190.145.35.250\";s:9:\"transport\";s:4:\"true\";s:8:\"location\";s:60:\"http://modx.com/extras/download/?id=5a7b25e9bc8dd3a7748b4568\";}s:17:\"package-signature\";s:14:\"migx-2.12.0-pl\";s:10:\"categories\";s:15:\"content,gallery\";s:4:\"tags\";s:46:\"migx,multiitems,multitv,migxdb,CMP,MIGX,MIGXdb\";}',2,12,0,'pl',0);
/*!40000 ALTER TABLE `modx_transport_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_transport_providers`
--

DROP TABLE IF EXISTS `modx_transport_providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_transport_providers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `service_url` tinytext,
  `username` varchar(191) NOT NULL DEFAULT '',
  `api_key` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `priority` tinyint NOT NULL DEFAULT '10',
  `properties` mediumtext NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `api_key` (`api_key`),
  KEY `username` (`username`),
  KEY `active` (`active`),
  KEY `priority` (`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_transport_providers`
--

LOCK TABLES `modx_transport_providers` WRITE;
/*!40000 ALTER TABLE `modx_transport_providers` DISABLE KEYS */;
INSERT INTO `modx_transport_providers` VALUES (1,'modx.com','The official MODX transport provider for 3rd party components.','https://rest.modx.com/extras/','','','2020-10-22 10:02:53',NULL,1,10,'');
/*!40000 ALTER TABLE `modx_transport_providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_attributes`
--

DROP TABLE IF EXISTS `modx_user_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_attributes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `internalKey` int NOT NULL,
  `fullname` varchar(100) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `phone` varchar(100) NOT NULL DEFAULT '',
  `mobilephone` varchar(100) NOT NULL DEFAULT '',
  `blocked` tinyint unsigned NOT NULL DEFAULT '0',
  `blockeduntil` int NOT NULL DEFAULT '0',
  `blockedafter` int NOT NULL DEFAULT '0',
  `logincount` int NOT NULL DEFAULT '0',
  `lastlogin` int NOT NULL DEFAULT '0',
  `thislogin` int NOT NULL DEFAULT '0',
  `failedlogincount` int NOT NULL DEFAULT '0',
  `sessionid` varchar(100) NOT NULL DEFAULT '',
  `dob` int NOT NULL DEFAULT '0',
  `gender` int NOT NULL DEFAULT '0',
  `address` text NOT NULL,
  `country` varchar(191) NOT NULL DEFAULT '',
  `city` varchar(191) NOT NULL DEFAULT '',
  `state` varchar(25) NOT NULL DEFAULT '',
  `zip` varchar(25) NOT NULL DEFAULT '',
  `fax` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(191) NOT NULL DEFAULT '',
  `comment` text NOT NULL,
  `website` varchar(191) NOT NULL DEFAULT '',
  `extended` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `internalKey` (`internalKey`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_attributes`
--

LOCK TABLES `modx_user_attributes` WRITE;
/*!40000 ALTER TABLE `modx_user_attributes` DISABLE KEYS */;
INSERT INTO `modx_user_attributes` VALUES (1,1,'Default Admin User','admin@admin.com','','',0,0,0,2,1611096039,1611410369,0,'n4v4221e3cbojspc48bc8blbbg',0,0,'','','','','','','','','',NULL),(2,2,'','test@test.com','','',0,0,0,0,0,0,0,'',0,0,'','','','','','','','','','[]');
/*!40000 ALTER TABLE `modx_user_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_roles`
--

DROP TABLE IF EXISTS `modx_user_group_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_group_roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL,
  `description` mediumtext,
  `authority` int unsigned NOT NULL DEFAULT '9999',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `authority` (`authority`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_roles`
--

LOCK TABLES `modx_user_group_roles` WRITE;
/*!40000 ALTER TABLE `modx_user_group_roles` DISABLE KEYS */;
INSERT INTO `modx_user_group_roles` VALUES (1,'Member',NULL,9999),(2,'Super User',NULL,0);
/*!40000 ALTER TABLE `modx_user_group_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_group_settings`
--

DROP TABLE IF EXISTS `modx_user_group_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_group_settings` (
  `group` int unsigned NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL,
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`group`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_group_settings`
--

LOCK TABLES `modx_user_group_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_group_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_group_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_messages`
--

DROP TABLE IF EXISTS `modx_user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_messages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(15) NOT NULL DEFAULT '',
  `subject` varchar(191) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `sender` int NOT NULL DEFAULT '0',
  `recipient` int NOT NULL DEFAULT '0',
  `private` tinyint NOT NULL DEFAULT '0',
  `date_sent` datetime DEFAULT NULL,
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_messages`
--

LOCK TABLES `modx_user_messages` WRITE;
/*!40000 ALTER TABLE `modx_user_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_user_settings`
--

DROP TABLE IF EXISTS `modx_user_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_user_settings` (
  `user` int NOT NULL DEFAULT '0',
  `key` varchar(50) NOT NULL DEFAULT '',
  `value` text,
  `xtype` varchar(75) NOT NULL DEFAULT 'textfield',
  `namespace` varchar(40) NOT NULL DEFAULT 'core',
  `area` varchar(191) NOT NULL DEFAULT '',
  `editedon` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`user`,`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_user_settings`
--

LOCK TABLES `modx_user_settings` WRITE;
/*!40000 ALTER TABLE `modx_user_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `modx_user_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_users`
--

DROP TABLE IF EXISTS `modx_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(255) NOT NULL DEFAULT '',
  `cachepwd` varchar(255) NOT NULL DEFAULT '',
  `class_key` varchar(100) NOT NULL DEFAULT 'modUser',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `remote_key` varchar(191) DEFAULT NULL,
  `remote_data` text,
  `hash_class` varchar(100) NOT NULL DEFAULT 'hashing.modNative',
  `salt` varchar(100) NOT NULL DEFAULT '',
  `primary_group` int unsigned NOT NULL DEFAULT '0',
  `session_stale` text,
  `sudo` tinyint unsigned NOT NULL DEFAULT '0',
  `createdon` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `class_key` (`class_key`),
  KEY `remote_key` (`remote_key`),
  KEY `primary_group` (`primary_group`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_users`
--

LOCK TABLES `modx_users` WRITE;
/*!40000 ALTER TABLE `modx_users` DISABLE KEYS */;
INSERT INTO `modx_users` VALUES (1,'admin','$2y$10$fVCofr8CNPSgfh8eUCx/i.w2j30EfwhZUAP.eZT4Qhu7IAvszUfpm','','modUser',1,NULL,NULL,'hashing.modNative','201d372a74511f356cd1293028cd8188',1,NULL,1,1611095993),(2,'test','$2y$10$ovHio9Vz.Z7xZK1W4CNTY.ARnM6wL3EGOUc8GfUdMVQnUNaVhfpdi','','modUser',0,NULL,NULL,'hashing.modNative','a9fed2c6bb9e01fae92e42721a01e072',0,NULL,0,1611153426);
/*!40000 ALTER TABLE `modx_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modx_workspaces`
--

DROP TABLE IF EXISTS `modx_workspaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modx_workspaces` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) NOT NULL DEFAULT '',
  `path` varchar(191) NOT NULL DEFAULT '',
  `created` datetime NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `attributes` mediumtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `path` (`path`),
  KEY `name` (`name`),
  KEY `active` (`active`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modx_workspaces`
--

LOCK TABLES `modx_workspaces` WRITE;
/*!40000 ALTER TABLE `modx_workspaces` DISABLE KEYS */;
INSERT INTO `modx_workspaces` VALUES (1,'Default MODX workspace','{core_path}','2021-01-19 22:39:49',1,NULL);
/*!40000 ALTER TABLE `modx_workspaces` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-25 12:31:29
